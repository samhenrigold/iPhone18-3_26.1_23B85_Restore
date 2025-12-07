uint64_t __swift_get_extra_inhabitant_index_4515Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 20);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 24);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4516Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 20);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 24);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_CompositeTypeStmt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v7 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v8 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, a4, a5, MEMORY[0x1E69E6720]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4659Tm(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 40);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4660Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 36);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 40);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_GrantRoleStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RoleSpec?, type metadata accessor for PgQuery_RoleSpec, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for PgQuery_GrantStmt(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_4854Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_4855Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for PgQuery_AlterSeqStmt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for [PgQuery_Node], type metadata accessor for PgQuery_Node, MEMORY[0x1E69E62F8]);
  if (v4 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v5 <= 0x3F)
    {
      type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_RangeVar?, type metadata accessor for PgQuery_RangeVar, MEMORY[0x1E69E6720]);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_3750Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_3751Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for PgQuery_BitString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for PgQuery_InferClause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3714Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_3715Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata completion function for PgQuery_Null(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_3590Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void type metadata completion function for PgQuery_Alias(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, a5, a6, MEMORY[0x1E69E62F8]);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for PgQuery_InlineCodeBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = type metadata accessor for UnknownStorage();
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token()
{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token;
  if (!lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_Token and conformance PgQuery_Token);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind;
  if (!lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType()
{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType;
  if (!lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GrantTargetType and conformance PgQuery_GrantTargetType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection()
{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection;
  if (!lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FetchDirection and conformance PgQuery_FetchDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind;
  if (!lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_TransactionStmtKind and conformance PgQuery_TransactionStmtKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_VariableSetKind and conformance PgQuery_VariableSetKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode()
{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode;
  if (!lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DiscardMode and conformance PgQuery_DiscardMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleStmtType and conformance PgQuery_RoleStmtType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ReindexObjectType and conformance PgQuery_ReindexObjectType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTSConfigType and conformance PgQuery_AlterTSConfigType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType;
  if (!lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ImportForeignSchemaType and conformance PgQuery_ImportForeignSchemaType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterSubscriptionType and conformance PgQuery_AlterSubscriptionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind;
  if (!lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_GroupingSetKind and conformance PgQuery_GroupingSetKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength()
{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength;
  if (!lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockClauseStrength and conformance PgQuery_LockClauseStrength);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy()
{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy;
  if (!lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LockWaitPolicy and conformance PgQuery_LockWaitPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ParamKind and conformance PgQuery_ParamKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind;
  if (!lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ParamKind and conformance PgQuery_ParamKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AggSplit and conformance PgQuery_AggSplit()
{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit;
  if (!lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AggSplit and conformance PgQuery_AggSplit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm()
{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionForm and conformance PgQuery_CoercionForm);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType()
{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolExprType and conformance PgQuery_BoolExprType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType()
{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType;
  if (!lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SubLinkType and conformance PgQuery_SubLinkType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType;
  if (!lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RowCompareType and conformance PgQuery_RowCompareType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp;
  if (!lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_MinMaxOp and conformance PgQuery_MinMaxOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp;
  if (!lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SQLValueFunctionOp and conformance PgQuery_SQLValueFunctionOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp()
{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlExprOp and conformance PgQuery_XmlExprOp);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType()
{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType;
  if (!lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_XmlOptionType and conformance PgQuery_XmlOptionType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_NullTestType and conformance PgQuery_NullTestType()
{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_NullTestType and conformance PgQuery_NullTestType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType()
{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType;
  if (!lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_BoolTestType and conformance PgQuery_BoolTestType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_JoinType and conformance PgQuery_JoinType()
{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType;
  if (!lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_JoinType and conformance PgQuery_JoinType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnConflictAction and conformance PgQuery_OnConflictAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction;
  if (!lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OnCommitAction and conformance PgQuery_OnCommitAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CmdType and conformance PgQuery_CmdType()
{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType;
  if (!lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CmdType and conformance PgQuery_CmdType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_QuerySource and conformance PgQuery_QuerySource()
{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource;
  if (!lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_QuerySource and conformance PgQuery_QuerySource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind;
  if (!lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_OverridingKind and conformance PgQuery_OverridingKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_LimitOption and conformance PgQuery_LimitOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption;
  if (!lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_LimitOption and conformance PgQuery_LimitOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SetOperation and conformance PgQuery_SetOperation()
{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation;
  if (!lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SetOperation and conformance PgQuery_SetOperation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType()
{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType;
  if (!lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RoleSpecType and conformance PgQuery_RoleSpecType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType()
{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType;
  if (!lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_AlterTableType and conformance PgQuery_AlterTableType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior()
{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior;
  if (!lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DropBehavior and conformance PgQuery_DropBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ObjectType and conformance PgQuery_ObjectType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType;
  if (!lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ObjectType and conformance PgQuery_ObjectType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption()
{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption;
  if (!lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ViewCheckOption and conformance PgQuery_ViewCheckOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext()
{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext;
  if (!lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CoercionContext and conformance PgQuery_CoercionContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind()
{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind;
  if (!lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_A_Expr_Kind and conformance PgQuery_A_Expr_Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SortByDir and conformance PgQuery_SortByDir()
{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByDir and conformance PgQuery_SortByDir);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls()
{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls;
  if (!lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_SortByNulls and conformance PgQuery_SortByNulls);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_ConstrType and conformance PgQuery_ConstrType()
{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType;
  if (!lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_ConstrType and conformance PgQuery_ConstrType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction()
{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction;
  if (!lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_DefElemAction and conformance PgQuery_DefElemAction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_RTEKind and conformance PgQuery_RTEKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind;
  if (!lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_RTEKind and conformance PgQuery_RTEKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_WCOKind and conformance PgQuery_WCOKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind;
  if (!lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_WCOKind and conformance PgQuery_WCOKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode()
{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode;
  if (!lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_FunctionParameterMode and conformance PgQuery_FunctionParameterMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize()
{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize;
  if (!lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_CTEMaterialize and conformance PgQuery_CTEMaterialize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind()
{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind;
  if (!lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind);
  }

  return result;
}

uint64_t PgQuery_PartitionRangeDatum.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = *(type metadata accessor for PgQuery_PartitionRangeDatum(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for PgQuery_PartitionRangeDatum._StorageClass(0);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    v10 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
    Node = type metadata accessor for PgQuery_Node(0);
    (*(*(Node - 8) + 56))(v9 + v10, 1, 1, Node);
    v17 = v4;
    v12 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
    *(v9 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
    v13 = *(v8 + 24);
    *(v9 + 16) = *(v8 + 16);
    *(v9 + 24) = v13;
    v14 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;

    outlined assign with copy of PgQuery_Node?(v8 + v14, v9 + v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    LODWORD(v10) = *(v8 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    *(v9 + v12) = v10;
    v5 = v17;

    *(v3 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v5)
  {
    while ((v16 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 2:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 3:
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in PgQuery_PartitionRangeDatum.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  Node = type metadata accessor for PgQuery_Node(0);
  v12 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v16 = *(a1 + 24);
    v18 = *(a1 + 16);
    v19 = v16;
    lazy protocol witness table accessor for type PgQuery_PartitionRangeDatumKind and conformance PgQuery_PartitionRangeDatumKind();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value, v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  if ((*(v12 + 48))(v10, 1, Node) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v10, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v10, v15, type metadata accessor for PgQuery_Node);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_Node);
    if (v5)
    {
      return result;
    }
  }

  result = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  if (result)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

BOOL closure #1 in static PgQuery_PartitionRangeDatum.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(Node - 8);
  MEMORY[0x1EEE9AC00](Node, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd, &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v35 - v16;
  v18 = *(a1 + 16);
  v19 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (v18 != 2)
        {
          return 0;
        }
      }

      else if (v18 != 3)
      {
        return 0;
      }
    }

    else if (v19)
    {
      if (v18 != 1)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }
  }

  else if (v18 != v19)
  {
    return 0;
  }

  v36 = v8;
  v21 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
  v22 = *(v15 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value, v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v21, &v17[v22], &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v23 = *(v5 + 48);
  if (v23(v17, 1, Node) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
    if (v23(&v17[v22], 1, Node) != 1)
    {
      v27 = v36;
      outlined init with take of PgQuery_OidList(&v17[v22], v36, type metadata accessor for PgQuery_Node);
      v28 = *(Node + 20);
      v29 = *&v12[v28];
      v30 = *(v27 + v28);

      if (v29 == v30 || (, , v31 = closure #1 in static PgQuery_Node.== infix(_:_:)(v29, v30), , , v31))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
        _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
        if (v32)
        {
          goto LABEL_25;
        }

LABEL_17:

        return 0;
      }

      outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_Node);
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
      v25 = &_s14BiomeSQLParser12PgQuery_NodeVSgMd;
      v26 = &_s14BiomeSQLParser12PgQuery_NodeVSgMR;
LABEL_16:
      _s10Foundation4UUIDVSgWOhTm_0(v17, v25, v26);
      goto LABEL_17;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Node);
LABEL_15:
    v25 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMd;
    v26 = &_s14BiomeSQLParser12PgQuery_NodeVSg_ADtMR;
    goto LABEL_16;
  }

  v24 = v23(&v17[v22], 1, Node);

  if (v24 != 1)
  {
    goto LABEL_15;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
LABEL_25:
  v33 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  v34 = *(a2 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

  return v33 == v34;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_Node@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionRangeDatum(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum, &protocol conformance descriptor for PgQuery_PartitionRangeDatum);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionRangeDatum(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum, &protocol conformance descriptor for PgQuery_PartitionRangeDatum);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionRangeDatum(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionRangeDatum and conformance PgQuery_PartitionRangeDatum, type metadata accessor for PgQuery_PartitionRangeDatum, &protocol conformance descriptor for PgQuery_PartitionRangeDatum);

  return Message.hash(into:)();
}

uint64_t PgQuery_PartitionCmd.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for PgQuery_PartitionCmd(0);
        type metadata accessor for PgQuery_RangeVar(0);
        v7 = type metadata accessor for PgQuery_RangeVar;
        v8 = &protocol conformance descriptor for PgQuery_RangeVar;
        v9 = &lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for PgQuery_PartitionCmd(0);
    type metadata accessor for PgQuery_PartitionBoundSpec(0);
    v7 = type metadata accessor for PgQuery_PartitionBoundSpec;
    v8 = &protocol conformance descriptor for PgQuery_PartitionBoundSpec;
    v9 = &lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec;
LABEL_5:
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t PgQuery_PartitionCmd.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27 - v7;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v29 = *(PartitionBoundSpec - 8);
  v30 = PartitionBoundSpec;
  MEMORY[0x1EEE9AC00](PartitionBoundSpec, v10);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v27 - v14;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v22 = *(PartitionCmd + 20);
  v31 = v4;
  outlined init with copy of PgQuery_Alias?(v4 + v22, v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v17 + 48))(v15, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    outlined init with take of PgQuery_OidList(v15, v20, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v23 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
    if (v23)
    {
      return result;
    }

    v35 = 0;
  }

  outlined init with copy of PgQuery_Alias?(v31 + *(PartitionCmd + 24), v8, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if ((*(v29 + 48))(v8, 1, v30) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v8, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  }

  else
  {
    v25 = v28;
    outlined init with take of PgQuery_OidList(v8, v28, type metadata accessor for PgQuery_PartitionBoundSpec);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionBoundSpec and conformance PgQuery_PartitionBoundSpec, type metadata accessor for PgQuery_PartitionBoundSpec, &protocol conformance descriptor for PgQuery_PartitionBoundSpec);
    v26 = v35;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_PartitionBoundSpec);
    if (v26)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t protocol witness for Message.init() in conformance PgQuery_PartitionCmd@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(a2 + v4, 1, 1, RangeVar);
  v6 = *(a1 + 24);
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v8 = *(*(PartitionBoundSpec - 8) + 56);

  return v8(a2 + v6, 1, 1, PartitionBoundSpec);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_Node@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_Node(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_PartitionCmd(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd, &protocol conformance descriptor for PgQuery_PartitionCmd);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_PartitionCmd(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd, &protocol conformance descriptor for PgQuery_PartitionCmd);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_PartitionCmd(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_PartitionCmd and conformance PgQuery_PartitionCmd, type metadata accessor for PgQuery_PartitionCmd, &protocol conformance descriptor for PgQuery_PartitionCmd);

  return Message.hash(into:)();
}

uint64_t PgQuery_VacuumRelation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for PgQuery_Node(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 1:
          type metadata accessor for PgQuery_VacuumRelation(0);
          type metadata accessor for PgQuery_RangeVar(0);
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_VacuumRelation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16 - v6;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v9 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v18 = v3;
  outlined init with copy of PgQuery_Alias?(v3 + *(VacuumRelation + 28), v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v9 + 48))(v7, 1, RangeVar) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v7, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v13 = v20;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v7, v12, type metadata accessor for PgQuery_RangeVar);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
    v13 = v20;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    if (v13)
    {
      return result;
    }
  }

  v15 = v18;
  if (!*v18 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v13))
  {
    if (!*(*(v15 + 1) + 16))
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }

    type metadata accessor for PgQuery_Node(0);
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Node and conformance PgQuery_Node, type metadata accessor for PgQuery_Node, &protocol conformance descriptor for PgQuery_Node);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (!v13)
    {
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_VacuumRelation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(*(RangeVar - 8) + 56);

  return v6(a2 + v4, 1, 1, RangeVar);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_ParseResult@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_VacuumRelation(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation, &protocol conformance descriptor for PgQuery_VacuumRelation);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_VacuumRelation(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation, &protocol conformance descriptor for PgQuery_VacuumRelation);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_VacuumRelation(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_VacuumRelation and conformance PgQuery_VacuumRelation, type metadata accessor for PgQuery_VacuumRelation, &protocol conformance descriptor for PgQuery_VacuumRelation);

  return Message.hash(into:)();
}

uint64_t PgQuery_InlineCodeBlock.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_InlineCodeBlock.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      if (*(v3 + 20) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 21) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for PgQuery_InlineCodeBlock(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_InlineCodeBlock@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_InlineCodeBlock(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock, &protocol conformance descriptor for PgQuery_InlineCodeBlock);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_InlineCodeBlock(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock, &protocol conformance descriptor for PgQuery_InlineCodeBlock);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_InlineCodeBlock(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InlineCodeBlock and conformance PgQuery_InlineCodeBlock, type metadata accessor for PgQuery_InlineCodeBlock, &protocol conformance descriptor for PgQuery_InlineCodeBlock);

  return Message.hash(into:)();
}

uint64_t PgQuery_CallContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_CallContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for PgQuery_CallContext(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_Integer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_Integer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_CallContext(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext, &protocol conformance descriptor for PgQuery_CallContext);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_CallContext(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext, &protocol conformance descriptor for PgQuery_CallContext);

  return MEMORY[0x1EEE15928](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_CallContext(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CallContext and conformance PgQuery_CallContext, type metadata accessor for PgQuery_CallContext, &protocol conformance descriptor for PgQuery_CallContext);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_CallContext(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t PgQuery_ScanToken.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token();
        }

        else
        {
          if (result != 5)
          {
            goto LABEL_5;
          }

          v6 = v3;
          lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind();
        }

        v3 = v6;
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t PgQuery_ScanToken.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 4) || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
    {
      if (PgQuery_Token.rawValue.getter(*(v3 + 8), *(v3 + 16)))
      {
        lazy protocol witness table accessor for type PgQuery_Token and conformance PgQuery_Token();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        if (!*(v3 + 24))
        {
          goto LABEL_11;
        }
      }

      else if (!*(v3 + 24))
      {
LABEL_11:
        type metadata accessor for PgQuery_ScanToken(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }

      lazy protocol witness table accessor for type PgQuery_KeywordKind and conformance PgQuery_KeywordKind();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance PgQuery_ScanToken@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance PgQuery_FetchStmt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance PgQuery_FetchStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ScanToken(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken, &protocol conformance descriptor for PgQuery_ScanToken);

  return MEMORY[0x1EEE15708](a1, a2, Scan);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance PgQuery_OverridingKind@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ScanToken(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken, &protocol conformance descriptor for PgQuery_ScanToken);

  return MEMORY[0x1EEE15928](a1, Scan);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ScanToken(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken, &protocol conformance descriptor for PgQuery_ScanToken);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [PgQuery_Token] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized PgQuery_Token.init(rawValue:)(uint64_t result)
{
  switch(result)
  {
    case 0:
      return result;
    case 37:
      result = 1;
      break;
    case 40:
      result = 2;
      break;
    case 41:
      result = 3;
      break;
    case 42:
      result = 4;
      break;
    case 43:
      result = 5;
      break;
    case 44:
      result = 6;
      break;
    case 45:
      result = 7;
      break;
    case 46:
      result = 8;
      break;
    case 47:
      result = 9;
      break;
    case 58:
      result = 10;
      break;
    case 59:
      result = 11;
      break;
    case 60:
      result = 12;
      break;
    case 61:
      result = 13;
      break;
    case 62:
      result = 14;
      break;
    case 63:
      result = 15;
      break;
    case 91:
      result = 16;
      break;
    case 92:
      result = 17;
      break;
    case 93:
      result = 18;
      break;
    case 94:
      result = 19;
      break;
    case 258:
      result = 20;
      break;
    case 259:
      result = 21;
      break;
    case 260:
      result = 22;
      break;
    case 261:
      result = 23;
      break;
    case 262:
      result = 24;
      break;
    case 263:
      result = 25;
      break;
    case 264:
      result = 26;
      break;
    case 265:
      result = 27;
      break;
    case 266:
      result = 28;
      break;
    case 267:
      result = 29;
      break;
    case 268:
      result = 30;
      break;
    case 269:
      result = 31;
      break;
    case 270:
      result = 32;
      break;
    case 271:
      result = 33;
      break;
    case 272:
      result = 34;
      break;
    case 273:
      result = 35;
      break;
    case 274:
      result = 36;
      break;
    case 275:
      result = 37;
      break;
    case 276:
      result = 38;
      break;
    case 277:
      result = 39;
      break;
    case 278:
      result = 40;
      break;
    case 279:
      result = 41;
      break;
    case 280:
      result = 42;
      break;
    case 281:
      result = 43;
      break;
    case 282:
      result = 44;
      break;
    case 283:
      result = 45;
      break;
    case 284:
      result = 46;
      break;
    case 285:
      result = 47;
      break;
    case 286:
      result = 48;
      break;
    case 287:
      result = 49;
      break;
    case 288:
      result = 50;
      break;
    case 289:
      result = 51;
      break;
    case 290:
      result = 52;
      break;
    case 291:
      result = 53;
      break;
    case 292:
      result = 54;
      break;
    case 293:
      result = 55;
      break;
    case 294:
      result = 56;
      break;
    case 295:
      result = 57;
      break;
    case 296:
      result = 58;
      break;
    case 297:
      result = 59;
      break;
    case 298:
      result = 60;
      break;
    case 299:
      result = 61;
      break;
    case 300:
      result = 62;
      break;
    case 301:
      result = 63;
      break;
    case 302:
      result = 64;
      break;
    case 303:
      result = 65;
      break;
    case 304:
      result = 66;
      break;
    case 305:
      result = 67;
      break;
    case 306:
      result = 68;
      break;
    case 307:
      result = 69;
      break;
    case 308:
      result = 70;
      break;
    case 309:
      result = 71;
      break;
    case 310:
      result = 72;
      break;
    case 311:
      result = 73;
      break;
    case 312:
      result = 74;
      break;
    case 313:
      result = 75;
      break;
    case 314:
      result = 76;
      break;
    case 315:
      result = 77;
      break;
    case 316:
      result = 78;
      break;
    case 317:
      result = 79;
      break;
    case 318:
      result = 80;
      break;
    case 319:
      result = 81;
      break;
    case 320:
      result = 82;
      break;
    case 321:
      result = 83;
      break;
    case 322:
      result = 84;
      break;
    case 323:
      result = 85;
      break;
    case 324:
      result = 86;
      break;
    case 325:
      result = 87;
      break;
    case 326:
      result = 88;
      break;
    case 327:
      result = 89;
      break;
    case 328:
      result = 90;
      break;
    case 329:
      result = 91;
      break;
    case 330:
      result = 92;
      break;
    case 331:
      result = 93;
      break;
    case 332:
      result = 94;
      break;
    case 333:
      result = 95;
      break;
    case 334:
      result = 96;
      break;
    case 335:
      result = 97;
      break;
    case 336:
      result = 98;
      break;
    case 337:
      result = 99;
      break;
    case 338:
      result = 100;
      break;
    case 339:
      result = 101;
      break;
    case 340:
      result = 102;
      break;
    case 341:
      result = 103;
      break;
    case 342:
      result = 104;
      break;
    case 343:
      result = 105;
      break;
    case 344:
      result = 106;
      break;
    case 345:
      result = 107;
      break;
    case 346:
      result = 108;
      break;
    case 347:
      result = 109;
      break;
    case 348:
      result = 110;
      break;
    case 349:
      result = 111;
      break;
    case 350:
      result = 112;
      break;
    case 351:
      result = 113;
      break;
    case 352:
      result = 114;
      break;
    case 353:
      result = 115;
      break;
    case 354:
      result = 116;
      break;
    case 355:
      result = 117;
      break;
    case 356:
      result = 118;
      break;
    case 357:
      result = 119;
      break;
    case 358:
      result = 120;
      break;
    case 359:
      result = 121;
      break;
    case 360:
      result = 122;
      break;
    case 361:
      result = 123;
      break;
    case 362:
      result = 124;
      break;
    case 363:
      result = 125;
      break;
    case 364:
      result = 126;
      break;
    case 365:
      result = 127;
      break;
    default:
      v1 = result - 366;
      result = 128;
      switch(v1)
      {
        case 0:
          return result;
        case 1:
          result = 129;
          break;
        case 2:
          result = 130;
          break;
        case 3:
          result = 131;
          break;
        case 4:
          result = 132;
          break;
        case 5:
          result = 133;
          break;
        case 6:
          result = 134;
          break;
        case 7:
          result = 135;
          break;
        case 8:
          result = 136;
          break;
        case 9:
          result = 137;
          break;
        case 10:
          result = 138;
          break;
        case 11:
          result = 139;
          break;
        case 12:
          result = 140;
          break;
        case 13:
          result = 141;
          break;
        case 14:
          result = 142;
          break;
        case 15:
          result = 143;
          break;
        case 16:
          result = 144;
          break;
        case 17:
          result = 145;
          break;
        case 18:
          result = 146;
          break;
        case 19:
          result = 147;
          break;
        case 20:
          result = 148;
          break;
        case 21:
          result = 149;
          break;
        case 22:
          result = 150;
          break;
        case 23:
          result = 151;
          break;
        case 24:
          result = 152;
          break;
        case 25:
          result = 153;
          break;
        case 26:
          result = 154;
          break;
        case 27:
          result = 155;
          break;
        case 28:
          result = 156;
          break;
        case 29:
          result = 157;
          break;
        case 30:
          result = 158;
          break;
        case 31:
          result = 159;
          break;
        case 32:
          result = 160;
          break;
        case 33:
          result = 161;
          break;
        case 34:
          result = 162;
          break;
        case 35:
          result = 163;
          break;
        case 36:
          result = 164;
          break;
        case 37:
          result = 165;
          break;
        case 38:
          result = 166;
          break;
        case 39:
          result = 167;
          break;
        case 40:
          result = 168;
          break;
        case 41:
          result = 169;
          break;
        case 42:
          result = 170;
          break;
        case 43:
          result = 171;
          break;
        case 44:
          result = 172;
          break;
        case 45:
          result = 173;
          break;
        case 46:
          result = 174;
          break;
        case 47:
          result = 175;
          break;
        case 48:
          result = 176;
          break;
        case 49:
          result = 177;
          break;
        case 50:
          result = 178;
          break;
        case 51:
          result = 179;
          break;
        case 52:
          result = 180;
          break;
        case 53:
          result = 181;
          break;
        case 54:
          result = 182;
          break;
        case 55:
          result = 183;
          break;
        case 56:
          result = 184;
          break;
        case 57:
          result = 185;
          break;
        case 58:
          result = 186;
          break;
        case 59:
          result = 187;
          break;
        case 60:
          result = 188;
          break;
        case 61:
          result = 189;
          break;
        case 62:
          result = 190;
          break;
        case 63:
          result = 191;
          break;
        default:
          result = 448;
          break;
      }

      break;
  }

  return result;
}

uint64_t specialized static PgQuery_DropTableSpaceStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for PgQuery_DropTableSpaceStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateOpFamilyStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreateOpFamilyStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReplicaIdentityStmt.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterTableSpaceOptionsStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for PgQuery_AlterTableSpaceOptionsStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterDefaultPrivilegesStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v5 = *(GrantStmt - 8);
  MEMORY[0x1EEE9AC00](GrantStmt, v6);
  v8 = &AlterDefaultPrivilegesStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &AlterDefaultPrivilegesStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &AlterDefaultPrivilegesStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  v33 = a2;
  v17 = *(AlterDefaultPrivilegesStmt + 24);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(v33 + v17, &v16[v18], &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, GrantStmt) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    if (v19(&v16[v18], 1, GrantStmt) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
      goto LABEL_7;
    }

    outlined init with take of PgQuery_OidList(&v16[v18], v8, type metadata accessor for PgQuery_GrantStmt);
    if (*v12 != *v8)
    {
      goto LABEL_9;
    }

    v24 = *(v12 + 1);
    v25 = *(v8 + 1);
    if (v8[16] == 1)
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          if (v24 != 2)
          {
            goto LABEL_9;
          }
        }

        else if (v24 != 3)
        {
          goto LABEL_9;
        }
      }

      else if (v25)
      {
        if (v24 != 1)
        {
          goto LABEL_9;
        }
      }

      else if (v24)
      {
        goto LABEL_9;
      }
    }

    else if (v24 != v25)
    {
      goto LABEL_9;
    }

    destructiveProjectEnumData for StorableValue();
    v27 = v26;
    destructiveProjectEnumData for StorableValue();
    if (v27 != v28 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 5), *(v8 + 5)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 6), *(v8 + 6)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 7), *(v8 + 7)) & 1) == 0 || v12[64] != v8[64])
    {
      goto LABEL_9;
    }

    v29 = *(v12 + 9);
    v30 = *(v8 + 9);
    if (v8[80] == 1)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          if (v29 == 1)
          {
            goto LABEL_42;
          }
        }

        else if (v29 == 2)
        {
          goto LABEL_42;
        }

LABEL_9:
        outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_GrantStmt);
LABEL_10:
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
        v21 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd;
        v22 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR;
        goto LABEL_11;
      }

      if (v29)
      {
        goto LABEL_9;
      }
    }

    else if (v29 != v30)
    {
      goto LABEL_9;
    }

LABEL_42:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_GrantStmt);
    if (v31)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_GrantStmt);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (v19(&v16[v18], 1, GrantStmt) != 1)
  {
LABEL_7:
    v21 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMd;
    v22 = &_s14BiomeSQLParser17PgQuery_GrantStmtVSg_ADtMR;
LABEL_11:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_AlterTSConfigurationStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], *(a2 + 24)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 41) == *(a2 + 41) && *(a1 + 42) == *(a2 + 42))
  {
    type metadata accessor for PgQuery_AlterTSConfigurationStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_ImportForeignSchemaStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v6 != 2)
        {
          return 0;
        }
      }

      else if (v6 != 3)
      {
        return 0;
      }
    }

    else if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[8], *(a2 + 64)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[9], *(a2 + 72)))
  {
    type metadata accessor for PgQuery_ImportForeignSchemaStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_CreateForeignServerStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[9], *(a2 + 72)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreateForeignServerStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateForeignTableStmt.== infix(_:_:)(void *a1, void *a2)
{
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v5 = *(Stmt - 8);
  MEMORY[0x1EEE9AC00](Stmt, v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  ForeignTableStmt = type metadata accessor for PgQuery_CreateForeignTableStmt(0);
  v17 = *(ForeignTableStmt + 28);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Stmt) == 1)
  {
    if (v19(&v16[v18], 1, Stmt) == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if (v19(&v16[v18], 1, Stmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
LABEL_6:
    v20 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMd;
    v21 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSg_ADtMR;
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v20, v21);
LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

  v22 = v32;
  outlined init with take of PgQuery_OidList(&v16[v18], v32, type metadata accessor for PgQuery_CreateStmt);
  v23 = *(Stmt + 20);
  v24 = *&v11[v23];
  v25 = *(v22 + v23);
  if (v24 != v25 && (, , v26 = closure #1 in static PgQuery_CreateStmt.== infix(_:_:)(v24, v25), , , (v26 & 1) == 0) || (type metadata accessor for UnknownStorage(), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_CreateStmt);
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
    v20 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd;
    v21 = &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR;
    goto LABEL_17;
  }

  outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_CreateStmt);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_CreateStmt);
LABEL_11:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v27 = v33;
  if ((*v33 != *a2 || v33[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v27[2], a2[2]) & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t specialized static PgQuery_AlterExtensionContentsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterForeignServerStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for PgQuery_AlterForeignServerStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateUserMappingStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  UserMappingStmt = type metadata accessor for PgQuery_CreateUserMappingStmt(0);
  v17 = *(UserMappingStmt + 32);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_11;
    }

    v24 = v32;
    outlined init with take of PgQuery_OidList(&v16[v18], v32, type metadata accessor for PgQuery_RoleSpec);
    v25 = *v11;
    v26 = *v24;
    if (*(v24 + 8) == 1)
    {
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v25 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v25)
        {
          goto LABEL_35;
        }
      }

      else if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_35;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_35;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_35;
    }

    v27 = *(v11 + 2) == *(v24 + 16) && *(v11 + 3) == *(v24 + 24);
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v24 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_36;
    }

LABEL_35:
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
LABEL_36:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_37;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_11:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_37:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v33;
  if ((*v33 != *a2 || v33[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v20 + 16) != *(a2 + 16) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v20[3], *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_38;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_CreatePublicationStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreatePublicationStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterTableMoveAllStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  destructiveProjectEnumData for StorableValue();
  v6 = v5;
  destructiveProjectEnumData for StorableValue();
  if (v6 != v7 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if ((a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  type metadata accessor for PgQuery_AlterTableMoveAllStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterSubscriptionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[6], *(a2 + 48)) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[7], *(a2 + 56)))
  {
    type metadata accessor for PgQuery_AlterSubscriptionStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_DropSubscriptionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = a1[3];
  v7 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v6 == v7)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v7)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 == 1)
  {
    if (v6 == 1)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v6 != 2)
  {
    return 0;
  }

LABEL_18:
  type metadata accessor for PgQuery_DropSubscriptionStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateTableSpaceStmt.== infix(_:_:)(void *a1, void *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v8 = &TableSpaceStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &TableSpaceStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &TableSpaceStmt - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v31 = v8;
  TableSpaceStmt = type metadata accessor for PgQuery_CreateTableSpaceStmt(0);
  v17 = *(TableSpaceStmt + 32);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_12;
    }

    v23 = &v16[v18];
    v24 = v31;
    outlined init with take of PgQuery_OidList(v23, v31, type metadata accessor for PgQuery_RoleSpec);
    v25 = *v12;
    v26 = *v24;
    if (*(v24 + 8) == 1)
    {
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v25 != 1)
          {
            goto LABEL_36;
          }
        }

        else if (v25)
        {
          goto LABEL_36;
        }
      }

      else if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_36;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_36;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_36;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_36;
    }

    v27 = *(v12 + 2) == *(v24 + 16) && *(v12 + 3) == *(v24 + 24);
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v24 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_5;
      }

      goto LABEL_37;
    }

LABEL_36:
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
LABEL_37:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_38;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_12:
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_38:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
LABEL_39:
    v20 = 0;
    return v20 & 1;
  }

LABEL_5:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_39;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_CreateConversionStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 40), *(a2 + 40)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreateConversionStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterUserMappingStmt.== infix(_:_:)(void *a1, void *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v32 = &AlterUserMappingStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &AlterUserMappingStmt - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &AlterUserMappingStmt - v15;
  AlterUserMappingStmt = type metadata accessor for PgQuery_AlterUserMappingStmt(0);
  v17 = *(AlterUserMappingStmt + 28);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v34 = a2;
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_10;
    }

    v25 = v32;
    outlined init with take of PgQuery_OidList(&v16[v18], v32, type metadata accessor for PgQuery_RoleSpec);
    v26 = *v11;
    v27 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          if (v26 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v26)
        {
          goto LABEL_34;
        }
      }

      else if (v27 == 2)
      {
        if (v26 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_34;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_34;
    }

    v28 = *(v11 + 2) == *(v25 + 16) && *(v11 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v25 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
      if (v29)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_35;
    }

LABEL_34:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_RoleSpec);
LABEL_35:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_36;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_10:
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v23, v24);
LABEL_37:
    v22 = 0;
    return v22 & 1;
  }

LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v21 = v33;
  v20 = v34;
  if ((*v33 != *v34 || v33[1] != v34[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v21[2], v20[2]) & 1) == 0)
  {
    goto LABEL_37;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_AlterPublicationStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (*(a2 + 48) == 1)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v6 == 1)
        {
          goto LABEL_17;
        }
      }

      else if (!v6)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 2)
    {
      if (v6 == 2)
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 3)
    {
      if (v6 == 3)
      {
        goto LABEL_17;
      }
    }

    else if (v6 == 4)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_17:
  type metadata accessor for PgQuery_AlterPublicationStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterDatabaseSetStmt.== infix(_:_:)(void *a1, void *a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v5 = *(VariableSetStmt - 8);
  MEMORY[0x1EEE9AC00](VariableSetStmt, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - v15;
  if (*a1 == *a2 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), v18 = 0, (v17 & 1) != 0))
  {
    v31 = v8;
    AlterDatabaseSetStmt = type metadata accessor for PgQuery_AlterDatabaseSetStmt(0);
    v19 = *(AlterDatabaseSetStmt + 24);
    v20 = *(v13 + 48);
    outlined init with copy of PgQuery_Alias?(a1 + v19, v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    outlined init with copy of PgQuery_Alias?(a2 + v19, &v16[v20], &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v21 = *(v5 + 48);
    if (v21(v16, 1, VariableSetStmt) == 1)
    {
      if (v21(&v16[v20], 1, VariableSetStmt) == 1)
      {
LABEL_5:
        _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v18 & 1;
      }

      goto LABEL_8;
    }

    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    if (v21(&v16[v20], 1, VariableSetStmt) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_8:
      v22 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd;
      v23 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR;
LABEL_41:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
      v18 = 0;
      return v18 & 1;
    }

    v24 = &v16[v20];
    v25 = v31;
    outlined init with take of PgQuery_OidList(v24, v31, type metadata accessor for PgQuery_VariableSetStmt);
    v26 = *v12;
    v27 = *v25;
    if (*(v25 + 8) == 1)
    {
      if (v27 <= 2)
      {
        if (v27)
        {
          if (v27 == 1)
          {
            if (v26 != 1)
            {
              goto LABEL_39;
            }
          }

          else if (v26 != 2)
          {
            goto LABEL_39;
          }
        }

        else if (v26)
        {
          goto LABEL_39;
        }
      }

      else if (v27 > 4)
      {
        if (v27 == 5)
        {
          if (v26 != 5)
          {
            goto LABEL_39;
          }
        }

        else if (v26 != 6)
        {
          goto LABEL_39;
        }
      }

      else if (v27 == 3)
      {
        if (v26 != 3)
        {
          goto LABEL_39;
        }
      }

      else if (v26 != 4)
      {
        goto LABEL_39;
      }
    }

    else if (v26 != v27)
    {
      goto LABEL_39;
    }

    v28 = *(v12 + 2) == *(v25 + 16) && *(v12 + 3) == *(v25 + 24);
    if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v25 + 32)) & 1) != 0 && v12[40] == *(v25 + 40))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_VariableSetStmt);
      if (v29)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
        goto LABEL_5;
      }

      goto LABEL_40;
    }

LABEL_39:
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_40:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_VariableSetStmt);
    v22 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd;
    v23 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR;
    goto LABEL_41;
  }

  return v18 & 1;
}

uint64_t specialized static PgQuery_DropUserMappingStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  DropUserMappingStmt = type metadata accessor for PgQuery_DropUserMappingStmt(0);
  v17 = *(DropUserMappingStmt + 28);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_10;
    }

    v24 = v32;
    outlined init with take of PgQuery_OidList(&v16[v18], v32, type metadata accessor for PgQuery_RoleSpec);
    v25 = *v11;
    v26 = *v24;
    if (*(v24 + 8) == 1)
    {
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v25 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v25)
        {
          goto LABEL_34;
        }
      }

      else if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_34;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_34;
    }

    v27 = *(v11 + 2) == *(v24 + 16) && *(v11 + 3) == *(v24 + 24);
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v24 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_35;
    }

LABEL_34:
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
LABEL_35:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_36;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_10:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
LABEL_37:
    v21 = 0;
    return v21 & 1;
  }

LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v33;
  if ((*v33 != *a2 || v33[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v20 + 16) != *(a2 + 16))
  {
    goto LABEL_37;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_CreateTransformStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v75 = *(ObjectWithArgs - 8);
  v76 = ObjectWithArgs;
  v6 = MEMORY[0x1EEE9AC00](ObjectWithArgs, v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v72 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v66 - v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v18 = MEMORY[0x1EEE9AC00](v77, v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v74 = &v66 - v22;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v24 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v25);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v66 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v66 - v34;
  if (*a1 != *a2)
  {
    goto LABEL_29;
  }

  v67 = v8;
  v68 = v20;
  TransformStmt = type metadata accessor for PgQuery_CreateTransformStmt(0);
  v37 = *(TransformStmt + 28);
  v38 = *(v32 + 48);
  v69 = a1;
  v70 = TransformStmt;
  outlined init with copy of PgQuery_Alias?(&a1[v37], v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v39 = &a2[v37];
  v40 = a2;
  outlined init with copy of PgQuery_Alias?(v39, &v35[v38], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v41 = *(v24 + 48);
  if (v41(v35, 1, TypeName) == 1)
  {
    if (v41(&v35[v38], 1, TypeName) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v35, v31, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if (v41(&v35[v38], 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_TypeName);
LABEL_14:
    v53 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v54 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
LABEL_27:
    v56 = v35;
LABEL_28:
    _s10Foundation4UUIDVSgWOhTm_0(v56, v53, v54);
LABEL_29:
    v52 = 0;
    return v52 & 1;
  }

  outlined init with take of PgQuery_OidList(&v35[v38], v27, type metadata accessor for PgQuery_TypeName);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v31, *v27) & 1) == 0 || *(v31 + 2) != *(v27 + 2) || v31[12] != v27[12] || v31[13] != v27[13] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v31 + 2), *(v27 + 2)) & 1) == 0 || *(v31 + 6) != *(v27 + 6) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v31 + 4), *(v27 + 4)) & 1) == 0 || *(v31 + 10) != *(v27 + 10))
  {
    outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v27, type metadata accessor for PgQuery_TypeName);
  if ((v55 & 1) == 0)
  {
LABEL_26:
    outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_TypeName);
    v53 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
    v54 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
    goto LABEL_27;
  }

  outlined destroy of PgQuery_OidList(v31, type metadata accessor for PgQuery_TypeName);
LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v35, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v42 = v69;
  if ((*(v69 + 1) != *(a2 + 1) || *(v69 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v43 = *(v70 + 32);
  v44 = *(v77 + 48);
  v45 = v74;
  outlined init with copy of PgQuery_Alias?(&v42[v43], v74, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(&v40[v43], v45 + v44, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v46 = v76;
  v47 = *(v75 + 48);
  if (v47(v45, 1, v76) == 1)
  {
    if (v47(v45 + v44, 1, v46) != 1)
    {
LABEL_38:
      v53 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
      v54 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
      v56 = v45;
      goto LABEL_28;
    }
  }

  else
  {
    v58 = v73;
    outlined init with copy of PgQuery_Alias?(v45, v73, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    if (v47(v45 + v44, 1, v46) == 1)
    {
LABEL_37:
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
      goto LABEL_38;
    }

    v59 = v45 + v44;
    v60 = v72;
    outlined init with take of PgQuery_OidList(v59, v72, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v58, *v60) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v58 + 8), *(v60 + 8)) & 1) == 0 || *(v58 + 16) != *(v60 + 16))
    {
      v61 = v60;
LABEL_43:
      outlined destroy of PgQuery_OidList(v61, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_44:
      outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
      v53 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
      v54 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
      v56 = v45;
      goto LABEL_28;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v64 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PgQuery_OidList(v60, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((v64 & 1) == 0)
    {
      goto LABEL_44;
    }

    outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v48 = *(v70 + 36);
  v49 = *(v77 + 48);
  v50 = v68;
  outlined init with copy of PgQuery_Alias?(&v42[v48], v68, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v51 = &v40[v48];
  v45 = v50;
  outlined init with copy of PgQuery_Alias?(v51, v50 + v49, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v47(v50, 1, v46) != 1)
  {
    v62 = v50;
    v58 = v71;
    outlined init with copy of PgQuery_Alias?(v62, v71, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    if (v47(v45 + v49, 1, v46) == 1)
    {
      goto LABEL_37;
    }

    v63 = v67;
    outlined init with take of PgQuery_OidList(v45 + v49, v67, type metadata accessor for PgQuery_ObjectWithArgs);
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v58, *v63) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v58 + 8), *(v63 + 8)) & 1) != 0 && *(v58 + 16) == *(v63 + 16))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v65 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v63, type metadata accessor for PgQuery_ObjectWithArgs);
      if (v65)
      {
        outlined destroy of PgQuery_OidList(v58, type metadata accessor for PgQuery_ObjectWithArgs);
        goto LABEL_11;
      }

      goto LABEL_44;
    }

    v61 = v63;
    goto LABEL_43;
  }

  if (v47(v50 + v49, 1, v46) != 1)
  {
    goto LABEL_38;
  }

LABEL_11:
  _s10Foundation4UUIDVSgWOhTm_0(v45, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v52 & 1;
}

uint64_t specialized static PgQuery_CreateSubscriptionStmt.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], a2[4]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RefreshMatViewStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v8 = &RefreshMatViewStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &RefreshMatViewStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &RefreshMatViewStmt - v16;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_8;
  }

  v18 = v15;
  RefreshMatViewStmt = type metadata accessor for PgQuery_RefreshMatViewStmt(0);
  v19 = *(RefreshMatViewStmt + 28);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, RangeVar) == 1)
  {
    if (v21(&v17[v27], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v22 = v27;
  if (v21(&v17[v27], 1, RangeVar) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
LABEL_7:
    _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of PgQuery_OidList(&v17[v22], v8, type metadata accessor for PgQuery_RangeVar);
  v25 = specialized static PgQuery_RangeVar.== infix(_:_:)(v12, v8);
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static PgQuery_CreateFunctionStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v5 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v6);
  v8 = &FunctionStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &FunctionStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &FunctionStmt - v16;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_24;
  }

  v18 = v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_24;
  }

  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  v19 = *(FunctionStmt + 40);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v29 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, TypeName) == 1)
  {
    if (v21(&v17[v29], 1, TypeName) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v23 = v29;
  if (v21(&v17[v29], 1, TypeName) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_10:
    v24 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v25 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
LABEL_23:
    _s10Foundation4UUIDVSgWOhTm_0(v17, v24, v25);
    goto LABEL_24;
  }

  outlined init with take of PgQuery_OidList(&v17[v23], v8, type metadata accessor for PgQuery_TypeName);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v12, *v8) & 1) == 0 || *(v12 + 2) != *(v8 + 2) || v12[12] != v8[12] || v12[13] != v8[13] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 2), *(v8 + 2)) & 1) == 0 || *(v12 + 6) != *(v8 + 6) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v8 + 4)) & 1) == 0 || *(v12 + 10) != *(v8 + 10))
  {
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_TypeName);
    goto LABEL_22;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_TypeName);
  if ((v26 & 1) == 0)
  {
LABEL_22:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
    v24 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
    v25 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
    goto LABEL_23;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_6:
  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
LABEL_24:
    v22 = 0;
    return v22 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_ExplainStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, void *a5)
{
  v9 = *(a3(0) + 20);
  v10 = *(a1 + v9);
  v11 = *(a2 + v9);
  if (v10 != v11)
  {

    v12 = closure #1 in static PgQuery_AlternativeSubPlan.== infix(_:_:)(v10, v11, a4, a5);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_TriggerTransition.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  type metadata accessor for PgQuery_TriggerTransition(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReassignOwnedStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v8 = &ReassignOwnedStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &ReassignOwnedStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &ReassignOwnedStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_34;
  }

  ReassignOwnedStmt = type metadata accessor for PgQuery_ReassignOwnedStmt(0);
  v29 = a2;
  v17 = *(ReassignOwnedStmt + 24);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v29 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_7;
    }

    outlined init with take of PgQuery_OidList(&v16[v18], v8, type metadata accessor for PgQuery_RoleSpec);
    v23 = *v12;
    v24 = *v8;
    if (v8[8] == 1)
    {
      if (v24 <= 1)
      {
        if (v24)
        {
          if (v23 != 1)
          {
            goto LABEL_31;
          }
        }

        else if (v23)
        {
          goto LABEL_31;
        }
      }

      else if (v24 == 2)
      {
        if (v23 != 2)
        {
          goto LABEL_31;
        }
      }

      else if (v24 == 3)
      {
        if (v23 != 3)
        {
          goto LABEL_31;
        }
      }

      else if (v23 != 4)
      {
        goto LABEL_31;
      }
    }

    else if (v23 != v24)
    {
      goto LABEL_31;
    }

    v25 = *(v12 + 2) == *(v8 + 2) && *(v12 + 3) == *(v8 + 3);
    if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v8 + 8))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
      if (v26)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_4;
      }

      goto LABEL_32;
    }

LABEL_31:
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
LABEL_32:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_33;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_7:
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_33:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
LABEL_34:
    v20 = 0;
    return v20 & 1;
  }

LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_CreateOpClassStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v5 = *(TypeName - 8);
  MEMORY[0x1EEE9AC00](TypeName, v6);
  v8 = &OpClassStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &OpClassStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &OpClassStmt - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v28 = v8;
  OpClassStmt = type metadata accessor for PgQuery_CreateOpClassStmt(0);
  v17 = *(OpClassStmt + 40);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, TypeName) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    if (v19(&v16[v18], 1, TypeName) != 1)
    {
      v23 = &v16[v18];
      v24 = v28;
      outlined init with take of PgQuery_OidList(v23, v28, type metadata accessor for PgQuery_TypeName);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v12, *v24) & 1) != 0 && *(v12 + 2) == *(v24 + 8) && v12[12] == *(v24 + 12) && v12[13] == *(v24 + 13) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 2), *(v24 + 16)) & 1) != 0 && *(v12 + 6) == *(v24 + 24) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v12 + 4), *(v24 + 32)) & 1) != 0 && *(v12 + 10) == *(v24 + 40))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_TypeName);
        if (v25)
        {
          outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
          goto LABEL_8;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_TypeName);
      }

      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
      v21 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
      v22 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
LABEL_26:
      _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
LABEL_27:
      v20 = 0;
      return v20 & 1;
    }

    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_TypeName);
LABEL_13:
    v21 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v22 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    goto LABEL_26;
  }

  if (v19(&v16[v18], 1, TypeName) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_27;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_CreateOpClassItem.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v55 = *(TypeName - 8);
  v56 = TypeName;
  MEMORY[0x1EEE9AC00](TypeName, v5);
  v53 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v54 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - v12;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v15 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v50 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v50 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  v50 = v13;
  OpClassItem = type metadata accessor for PgQuery_CreateOpClassItem(0);
  v57 = a2;
  v28 = *(OpClassItem + 36);
  v29 = *(v23 + 48);
  v51 = OpClassItem;
  v52 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v28, v26, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v30 = v57 + v28;
  v31 = v57;
  outlined init with copy of PgQuery_Alias?(v30, &v26[v29], &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v32 = *(v15 + 48);
  if (v32(v26, 1, ObjectWithArgs) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v26, v22, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
    if (v32(&v26[v29], 1, ObjectWithArgs) != 1)
    {
      outlined init with take of PgQuery_OidList(&v26[v29], v18, type metadata accessor for PgQuery_ObjectWithArgs);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v22, *v18) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v22 + 1), *(v18 + 1)) & 1) != 0 && v22[16] == v18[16])
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v44 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_ObjectWithArgs);
        if (v44)
        {
          outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_ObjectWithArgs);
          goto LABEL_4;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_ObjectWithArgs);
      }

      outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_ObjectWithArgs);
      v40 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
      v41 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
LABEL_18:
      v42 = v26;
LABEL_19:
      _s10Foundation4UUIDVSgWOhTm_0(v42, v40, v41);
LABEL_20:
      v39 = 0;
      return v39 & 1;
    }

    outlined destroy of PgQuery_OidList(v22, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_12:
    v40 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v41 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
    goto LABEL_18;
  }

  if (v32(&v26[v29], 1, ObjectWithArgs) != 1)
  {
    goto LABEL_12;
  }

LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v26, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v33 = v52;
  if (v52[1] != v31[1] || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v52 + 1), *(v31 + 1)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v33 + 2), *(v31 + 2)) & 1) == 0)
  {
    goto LABEL_20;
  }

  v34 = v50;
  v35 = *(v51 + 40);
  v36 = *(v10 + 48);
  outlined init with copy of PgQuery_Alias?(v33 + v35, v50, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  outlined init with copy of PgQuery_Alias?(v57 + v35, v34 + v36, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  v37 = v56;
  v38 = *(v55 + 48);
  if (v38(v34, 1, v56) != 1)
  {
    v45 = v54;
    outlined init with copy of PgQuery_Alias?(v34, v54, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
    v46 = v34;
    if (v38(v34 + v36, 1, v37) != 1)
    {
      v47 = v34 + v36;
      v48 = v53;
      outlined init with take of PgQuery_OidList(v47, v53, type metadata accessor for PgQuery_TypeName);
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v45, *v48) & 1) != 0 && *(v45 + 8) == *(v48 + 8) && *(v45 + 12) == *(v48 + 12) && *(v45 + 13) == *(v48 + 13) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v45 + 16), *(v48 + 16)) & 1) != 0 && *(v45 + 24) == *(v48 + 24) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v45 + 32), *(v48 + 32)) & 1) != 0 && *(v45 + 40) == *(v48 + 40))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
        if (v49)
        {
          outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TypeName);
          v34 = v46;
          goto LABEL_9;
        }
      }

      else
      {
        outlined destroy of PgQuery_OidList(v48, type metadata accessor for PgQuery_TypeName);
      }

      outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TypeName);
      v40 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd;
      v41 = &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR;
      v42 = v46;
      goto LABEL_19;
    }

    outlined destroy of PgQuery_OidList(v45, type metadata accessor for PgQuery_TypeName);
    goto LABEL_26;
  }

  if (v38(v34 + v36, 1, v37) != 1)
  {
LABEL_26:
    v40 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMd;
    v41 = &_s14BiomeSQLParser16PgQuery_TypeNameVSg_ADtMR;
    v42 = v34;
    goto LABEL_19;
  }

LABEL_9:
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMd, &_s14BiomeSQLParser16PgQuery_TypeNameVSgMR);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v39 & 1;
}

uint64_t specialized static PgQuery_CompositeTypeStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  CompositeTypeStmt = type metadata accessor for PgQuery_CompositeTypeStmt(0);
  v17 = *(CompositeTypeStmt + 24);
  v18 = *(v13 + 56);
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if (v19(&v16[v18], 1, RangeVar) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
LABEL_10:
    v22 = 0;
    return v22 & 1;
  }

  v20 = v26;
  outlined init with take of PgQuery_OidList(&v16[v18], v26, type metadata accessor for PgQuery_RangeVar);
  v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
  outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v27, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_AlterOperatorStmt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v5 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v26 - v15;
  AlterOperatorStmt = type metadata accessor for PgQuery_AlterOperatorStmt(0);
  v17 = *(AlterOperatorStmt + 24);
  v18 = *(v13 + 56);
  v29 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, ObjectWithArgs) == 1)
  {
    if (v19(&v16[v18], 1, ObjectWithArgs) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_7;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v19(&v16[v18], 1, ObjectWithArgs) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_7:
    v21 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v22 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_13:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
    goto LABEL_14;
  }

  v23 = v28;
  outlined init with take of PgQuery_OidList(&v16[v18], v28, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v11, *v23) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v11 + 1), *(v23 + 8)) & 1) == 0 || v11[16] != *(v23 + 16))
  {
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_12:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
    v21 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v22 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((v25 & 1) == 0)
  {
    goto LABEL_12;
  }

  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v29, *a2) & 1) == 0)
  {
LABEL_14:
    v20 = 0;
    return v20 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_AlterOpFamilyStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PgQuery_AlterOpFamilyStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterFunctionStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  v5 = *(ObjectWithArgs - 8);
  MEMORY[0x1EEE9AC00](ObjectWithArgs, v6);
  v29 = &AlterFunctionStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &AlterFunctionStmt - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &AlterFunctionStmt - v14;
  destructiveProjectEnumData for StorableValue();
  v17 = v16;
  destructiveProjectEnumData for StorableValue();
  if (v17 != v18)
  {
    goto LABEL_15;
  }

  AlterFunctionStmt = type metadata accessor for PgQuery_AlterFunctionStmt(0);
  v19 = *(AlterFunctionStmt + 28);
  v20 = *(v12 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v19, v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v19, &v15[v20], &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  v21 = *(v5 + 48);
  if (v21(v15, 1, ObjectWithArgs) == 1)
  {
    if (v21(&v15[v20], 1, ObjectWithArgs) == 1)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  outlined init with copy of PgQuery_Alias?(v15, v11, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if (v21(&v15[v20], 1, ObjectWithArgs) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_8:
    v23 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMd;
    v24 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSg_ADtMR;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v15, v23, v24);
    goto LABEL_15;
  }

  v25 = v29;
  outlined init with take of PgQuery_OidList(&v15[v20], v29, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v11, *v25) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v11 + 1), *(v25 + 8)) & 1) == 0 || v11[16] != *(v25 + 16))
  {
    outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_13:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
    v23 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd;
    v24 = &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v25, type metadata accessor for PgQuery_ObjectWithArgs);
  if ((v27 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_ObjectWithArgs);
LABEL_4:
  _s10Foundation4UUIDVSgWOhTm_0(v15, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMd, &_s14BiomeSQLParser22PgQuery_ObjectWithArgsVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
LABEL_15:
    v22 = 0;
    return v22 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_CreateSchemaStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v8 = &SchemaStmt - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &SchemaStmt - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &SchemaStmt - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_37;
  }

  v31 = v8;
  SchemaStmt = type metadata accessor for PgQuery_CreateSchemaStmt(0);
  v17 = *(SchemaStmt + 32);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_10;
    }

    v23 = &v16[v18];
    v24 = v31;
    outlined init with take of PgQuery_OidList(v23, v31, type metadata accessor for PgQuery_RoleSpec);
    v25 = *v12;
    v26 = *v24;
    if (*(v24 + 8) == 1)
    {
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v25 != 1)
          {
            goto LABEL_34;
          }
        }

        else if (v25)
        {
          goto LABEL_34;
        }
      }

      else if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_34;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_34;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_34;
    }

    v27 = *(v12 + 2) == *(v24 + 16) && *(v12 + 3) == *(v24 + 24);
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v12 + 8) == *(v24 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_5;
      }

      goto LABEL_35;
    }

LABEL_34:
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
LABEL_35:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_36;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_10:
    v21 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_36:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
LABEL_37:
    v20 = 0;
    return v20 & 1;
  }

LABEL_5:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_37;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_AlterRoleSetStmt.== infix(_:_:)(void *a1, void *a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v54 = *(VariableSetStmt - 8);
  MEMORY[0x1EEE9AC00](VariableSetStmt, v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v52 = &v51 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v53, v9);
  v57 = &v51 - v10;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v12 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v13);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v51 - v22;
  AlterRoleSetStmt = type metadata accessor for PgQuery_AlterRoleSetStmt(0);
  v24 = *(AlterRoleSetStmt + 24);
  v25 = *(v20 + 56);
  v59 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v24, v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v60 = a2;
  outlined init with copy of PgQuery_Alias?(a2 + v24, &v23[v25], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v26 = *(v12 + 48);
  if (v26(v23, 1, RoleSpec) == 1)
  {
    if (v26(&v23[v25], 1, RoleSpec) == 1)
    {
      goto LABEL_3;
    }

    goto LABEL_11;
  }

  outlined init with copy of PgQuery_Alias?(v23, v18, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v26(&v23[v25], 1, RoleSpec) == 1)
  {
    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
LABEL_11:
    v36 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v37 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_52:
    v44 = v23;
    goto LABEL_53;
  }

  v38 = &v23[v25];
  v39 = v58;
  outlined init with take of PgQuery_OidList(v38, v58, type metadata accessor for PgQuery_RoleSpec);
  v40 = *v18;
  v41 = *v39;
  if (*(v39 + 8) != 1)
  {
    if (v40 == v41)
    {
      goto LABEL_19;
    }

LABEL_50:
    outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_RoleSpec);
    goto LABEL_51;
  }

  if (v41 <= 1)
  {
    if (v41)
    {
      if (v40 == 1)
      {
        goto LABEL_19;
      }
    }

    else if (!v40)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

  if (v41 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_50;
    }
  }

  else if (v41 == 3)
  {
    if (v40 != 3)
    {
      goto LABEL_50;
    }
  }

  else if (v40 != 4)
  {
    goto LABEL_50;
  }

LABEL_19:
  if ((*(v18 + 2) != *(v39 + 16) || *(v18 + 3) != *(v39 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v18 + 8) != *(v39 + 32))
  {
    goto LABEL_50;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v39, type metadata accessor for PgQuery_RoleSpec);
  if ((v42 & 1) == 0)
  {
LABEL_51:
    outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
    v36 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v37 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_52;
  }

  outlined destroy of PgQuery_OidList(v18, type metadata accessor for PgQuery_RoleSpec);
LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v23, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v28 = v59;
  v27 = v60;
  if (*v59 == *v60 && v59[1] == v60[1] || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), v30 = 0, (v29 & 1) != 0))
  {
    v31 = *(AlterRoleSetStmt + 28);
    v32 = *(v53 + 48);
    v33 = v57;
    outlined init with copy of PgQuery_Alias?(v28 + v31, v57, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    outlined init with copy of PgQuery_Alias?(v27 + v31, v33 + v32, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    v34 = *(v54 + 48);
    v35 = VariableSetStmt;
    if (v34(v33, 1, VariableSetStmt) == 1)
    {
      if (v34(v33 + v32, 1, v35) == 1)
      {
LABEL_8:
        _s10Foundation4UUIDVSgWOhTm_0(v33, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v30 & 1;
      }

      goto LABEL_27;
    }

    v43 = v52;
    outlined init with copy of PgQuery_Alias?(v33, v52, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
    if (v34(v33 + v32, 1, v35) == 1)
    {
      outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_27:
      v36 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd;
      v37 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR;
      v44 = v33;
LABEL_53:
      _s10Foundation4UUIDVSgWOhTm_0(v44, v36, v37);
      v30 = 0;
      return v30 & 1;
    }

    v45 = v33 + v32;
    v46 = v51;
    outlined init with take of PgQuery_OidList(v45, v51, type metadata accessor for PgQuery_VariableSetStmt);
    v47 = *v43;
    v48 = *v46;
    if (*(v46 + 8) == 1)
    {
      if (v48 <= 2)
      {
        if (v48)
        {
          if (v48 == 1)
          {
            if (v47 != 1)
            {
              goto LABEL_69;
            }
          }

          else if (v47 != 2)
          {
            goto LABEL_69;
          }
        }

        else if (v47)
        {
          goto LABEL_69;
        }
      }

      else if (v48 > 4)
      {
        if (v48 == 5)
        {
          if (v47 != 5)
          {
            goto LABEL_69;
          }
        }

        else if (v47 != 6)
        {
          goto LABEL_69;
        }
      }

      else if (v48 == 3)
      {
        if (v47 != 3)
        {
          goto LABEL_69;
        }
      }

      else if (v47 != 4)
      {
        goto LABEL_69;
      }
    }

    else if (v47 != v48)
    {
      goto LABEL_69;
    }

    if (*(v43 + 16) == *(v46 + 16) && *(v43 + 24) == *(v46 + 24) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v43 + 32), *(v46 + 32)) & 1) != 0 && *(v43 + 40) == *(v46 + 40))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_VariableSetStmt);
      if (v49)
      {
        outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_VariableSetStmt);
        goto LABEL_8;
      }

      goto LABEL_70;
    }

LABEL_69:
    outlined destroy of PgQuery_OidList(v46, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_70:
    outlined destroy of PgQuery_OidList(v43, type metadata accessor for PgQuery_VariableSetStmt);
    v36 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd;
    v37 = &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR;
    v44 = v33;
    goto LABEL_53;
  }

  return v30 & 1;
}

uint64_t specialized static PgQuery_TransactionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 4)
    {
      if (v5 <= 1)
      {
        if (v5)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4)
        {
          return 0;
        }
      }

      else if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v4 != 4)
      {
        return 0;
      }
    }

    else if (v5 > 7)
    {
      if (v5 == 8)
      {
        if (v4 != 8)
        {
          return 0;
        }
      }

      else if (v5 == 9)
      {
        if (v4 != 9)
        {
          return 0;
        }
      }

      else if (v4 != 10)
      {
        return 0;
      }
    }

    else if (v5 == 5)
    {
      if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5 == 6)
    {
      if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 56) == *(a2 + 56))
  {
    type metadata accessor for PgQuery_TransactionStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_TableLikeClause.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  TableLikeClause = type metadata accessor for PgQuery_TableLikeClause(0);
  v17 = *(TableLikeClause + 28);
  v18 = *(v13 + 56);
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v26;
      outlined init with take of PgQuery_OidList(&v16[v18], v26, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v22 = 0;
      return v22 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  if (*v27 != *a2 || v27[1] != a2[1])
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_SortGroupClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13))
  {
    return 0;
  }

  type metadata accessor for PgQuery_SortGroupClause(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_InlineCodeBlock.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 4) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  type metadata accessor for PgQuery_InlineCodeBlock(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateStatsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreateStatsStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreatePLangStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 3), *(a2 + 3)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || a1[48] != a2[48])
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreatePLangStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_VariableSetStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          if (v4 != 1)
          {
            return 0;
          }
        }

        else if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 > 4)
    {
      if (v5 == 5)
      {
        if (v4 != 5)
        {
          return 0;
        }
      }

      else if (v4 != 6)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    type metadata accessor for PgQuery_VariableSetStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterSystemStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  VariableSetStmt = type metadata accessor for PgQuery_VariableSetStmt(0);
  v5 = *(VariableSetStmt - 8);
  MEMORY[0x1EEE9AC00](VariableSetStmt, v6);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = (v24 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for PgQuery_AlterSystemStmt(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, VariableSetStmt) == 1)
  {
    if (v19(&v16[v18], 1, VariableSetStmt) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
LABEL_9:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if (v19(&v16[v18], 1, VariableSetStmt) == 1)
  {
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_VariableSetStmt);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSg_ADtMR);
    goto LABEL_7;
  }

  v21 = v24[0];
  outlined init with take of PgQuery_OidList(&v16[v18], v24[0], type metadata accessor for PgQuery_VariableSetStmt);
  v22 = specialized static PgQuery_VariableSetStmt.== infix(_:_:)(v11, v21);
  outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_VariableSetStmt);
  outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_VariableSetStmt);
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMd, &_s14BiomeSQLParser23PgQuery_VariableSetStmtVSgMR);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_VacuumRelation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v24 - v15;
  VacuumRelation = type metadata accessor for PgQuery_VacuumRelation(0);
  v17 = *(VacuumRelation + 28);
  v18 = *(v13 + 56);
  v27 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v26;
      outlined init with take of PgQuery_OidList(&v16[v18], v26, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      v22 = 0;
      return v22 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  if (*v27 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(v27 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_RawStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, void *a5, void *a6)
{
  v11 = *(a3(0) + 20);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != v13)
  {

    v14 = closure #1 in static PgQuery_NextValueExpr.== infix(_:_:)(v12, v13, a4, a5, a6);

    if (!v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateRoleStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)))
  {
    type metadata accessor for PgQuery_CreateRoleStmt(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterTableStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - v15;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v17 = *(AlterTableStmt + 32);
  v18 = *(v13 + 56);
  v31 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v21 = v30;
      outlined init with take of PgQuery_OidList(&v16[v18], v30, type metadata accessor for PgQuery_RangeVar);
      v22 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v21);
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_11:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = v31;
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v31, *a2))
      {
        destructiveProjectEnumData for StorableValue();
        v25 = v24;
        destructiveProjectEnumData for StorableValue();
        if (v25 == v26 && *(v23 + 17) == *(a2 + 17))
        {
          type metadata accessor for UnknownStorage();
          lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          v20 = dispatch thunk of static Equatable.== infix(_:_:)();
          return v20 & 1;
        }
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_RowMarkClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 33) == *(a2 + 33))
  {
    type metadata accessor for PgQuery_RowMarkClause(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_RangeFunction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v5 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v6);
  v8 = (&RangeFunction - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&RangeFunction - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &RangeFunction - v16;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2))
  {
    goto LABEL_22;
  }

  if (a1[2] != a2[2])
  {
    goto LABEL_22;
  }

  v18 = v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    goto LABEL_22;
  }

  RangeFunction = type metadata accessor for PgQuery_RangeFunction(0);
  v19 = *(RangeFunction + 40);
  v20 = *(v18 + 48);
  outlined init with copy of PgQuery_Alias?(&a1[v19], v17, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v30 = v20;
  outlined init with copy of PgQuery_Alias?(&a2[v19], &v17[v20], &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v21 = *(v5 + 48);
  if (v21(v17, 1, Alias) == 1)
  {
    if (v21(&v17[v30], 1, Alias) == 1)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  outlined init with copy of PgQuery_Alias?(v17, v12, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v23 = v30;
  if (v21(&v17[v30], 1, Alias) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_10:
    v24 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v25 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_21:
    _s10Foundation4UUIDVSgWOhTm_0(v17, v24, v25);
    goto LABEL_22;
  }

  outlined init with take of PgQuery_OidList(&v17[v23], v8, type metadata accessor for PgQuery_Alias);
  v26 = *v12 == *v8 && v12[1] == v8[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v12[2], v8[2]) & 1) == 0)
  {
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Alias);
    goto LABEL_20;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_Alias);
  if ((v27 & 1) == 0)
  {
LABEL_20:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
    v24 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v25 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_21;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_6:
  _s10Foundation4UUIDVSgWOhTm_0(v17, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v22 & 1;
}

uint64_t specialized static PgQuery_PartitionSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) == 0 || *(a1 + 6) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for PgQuery_PartitionSpec(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_LockingClause.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[3];
  v7 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v6 != v7)
    {
      return 0;
    }

LABEL_19:
    type metadata accessor for PgQuery_LockingClause(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      if (v6 != 2)
      {
        return 0;
      }
    }

    else if (v6 != 3)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (v7)
  {
    if (v6 != 1)
    {
      return 0;
    }

    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t specialized static PgQuery_InferenceElem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PgQuery_InferenceElem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(v5, v6, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid, &OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_GrantRoleStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    goto LABEL_45;
  }

  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  v17 = *(GrantRoleStmt + 40);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = a2 + v17;
  v20 = v18;
  outlined init with copy of PgQuery_Alias?(v19, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v21 = *(v5 + 48);
  if (v21(v16, 1, RoleSpec) == 1)
  {
    if (v21(&v16[v20], 1, RoleSpec) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  if (v21(&v16[v20], 1, RoleSpec) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
LABEL_14:
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_44:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v24, v25);
    goto LABEL_45;
  }

  outlined init with take of PgQuery_OidList(&v16[v20], v8, type metadata accessor for PgQuery_RoleSpec);
  v26 = *v12;
  v27 = *v8;
  if (v8[8] != 1)
  {
    if (v26 == v27)
    {
      goto LABEL_24;
    }

LABEL_42:
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
    goto LABEL_43;
  }

  if (v27 <= 1)
  {
    if (v27)
    {
      if (v26 == 1)
      {
        goto LABEL_24;
      }
    }

    else if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_42;
  }

  if (v27 == 2)
  {
    if (v26 != 2)
    {
      goto LABEL_42;
    }
  }

  else if (v27 == 3)
  {
    if (v26 != 3)
    {
      goto LABEL_42;
    }
  }

  else if (v26 != 4)
  {
    goto LABEL_42;
  }

LABEL_24:
  if ((*(v12 + 2) != *(v8 + 2) || *(v12 + 3) != *(v8 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v12 + 8) != *(v8 + 8))
  {
    goto LABEL_42;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RoleSpec);
  if ((v28 & 1) == 0)
  {
LABEL_43:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
    v24 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v25 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_44;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RoleSpec);
LABEL_7:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v22 == v23)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  if (v23 == 1)
  {
    if (v22 == 1)
    {
      goto LABEL_36;
    }

LABEL_45:
    v29 = 0;
    return v29 & 1;
  }

  if (v22 != 2)
  {
    goto LABEL_45;
  }

LABEL_36:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v29 & 1;
}

uint64_t specialized static PgQuery_DropOwnedStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_8:
      type metadata accessor for PgQuery_DropOwnedStmt(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static PgQuery_CreateSeqStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  SeqStmt = type metadata accessor for PgQuery_CreateSeqStmt(0);
  v17 = *(SeqStmt + 36);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v27;
      outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v22 = v28;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v28, *a2) & 1) != 0 && *(v22 + 2) == *(a2 + 8) && *(v22 + 12) == *(a2 + 12) && *(v22 + 13) == *(a2 + 13))
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v23 & 1;
  }

LABEL_12:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static PgQuery_AlterRoleStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  v5 = *(RoleSpec - 8);
  MEMORY[0x1EEE9AC00](RoleSpec, v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v30 - v15;
  AlterRoleStmt = type metadata accessor for PgQuery_AlterRoleStmt(0);
  v17 = *(AlterRoleStmt + 28);
  v18 = *(v13 + 56);
  v33 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RoleSpec) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
    if (v19(&v16[v18], 1, RoleSpec) == 1)
    {
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
      goto LABEL_8;
    }

    v24 = v32;
    outlined init with take of PgQuery_OidList(&v16[v18], v32, type metadata accessor for PgQuery_RoleSpec);
    v25 = *v11;
    v26 = *v24;
    if (*(v24 + 8) == 1)
    {
      if (v26 <= 1)
      {
        if (v26)
        {
          if (v25 != 1)
          {
            goto LABEL_32;
          }
        }

        else if (v25)
        {
          goto LABEL_32;
        }
      }

      else if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_32;
        }
      }

      else if (v26 == 3)
      {
        if (v25 != 3)
        {
          goto LABEL_32;
        }
      }

      else if (v25 != 4)
      {
        goto LABEL_32;
      }
    }

    else if (v25 != v26)
    {
      goto LABEL_32;
    }

    v27 = *(v11 + 2) == *(v24 + 16) && *(v11 + 3) == *(v24 + 24);
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(v11 + 8) == *(v24 + 32))
    {
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
      if (v28)
      {
        outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
        goto LABEL_3;
      }

      goto LABEL_33;
    }

LABEL_32:
    outlined destroy of PgQuery_OidList(v24, type metadata accessor for PgQuery_RoleSpec);
LABEL_33:
    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RoleSpec);
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR;
    goto LABEL_34;
  }

  if (v19(&v16[v18], 1, RoleSpec) != 1)
  {
LABEL_8:
    v22 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMd;
    v23 = &_s14BiomeSQLParser16PgQuery_RoleSpecVSg_ADtMR;
LABEL_34:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v22, v23);
LABEL_35:
    v21 = 0;
    return v21 & 1;
  }

LABEL_3:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMd, &_s14BiomeSQLParser16PgQuery_RoleSpecVSgMR);
  v20 = v33;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v33, *a2) & 1) == 0 || *(v20 + 2) != *(a2 + 8))
  {
    goto LABEL_35;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t specialized static PgQuery_AlterEnumStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57))
  {
    return 0;
  }

  type metadata accessor for PgQuery_AlterEnumStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_TruncateStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v5 == v6)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v6)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v5 == 1)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_14:
  type metadata accessor for PgQuery_TruncateStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_PartitionCmd.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  PartitionBoundSpec = type metadata accessor for PgQuery_PartitionBoundSpec(0);
  v48 = *(PartitionBoundSpec - 8);
  v49 = PartitionBoundSpec;
  MEMORY[0x1EEE9AC00](PartitionBoundSpec, v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = (&v43 - v8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v47, v9);
  v50 = &v43 - v10;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v12 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v43 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v43 - v23;
  PartitionCmd = type metadata accessor for PgQuery_PartitionCmd(0);
  v25 = *(PartitionCmd + 20);
  v26 = *(v21 + 56);
  v51 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v25, v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(v52 + v25, &v24[v26], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v27 = *(v12 + 48);
  if (v27(v24, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v24, v19, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v27(&v24[v26], 1, RangeVar) != 1)
    {
      outlined init with take of PgQuery_OidList(&v24[v26], v15, type metadata accessor for PgQuery_RangeVar);
      v31 = specialized static PgQuery_RangeVar.== infix(_:_:)(v19, v15);
      outlined destroy of PgQuery_OidList(v15, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of PgQuery_OidList(v19, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    v28 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd;
    v29 = &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR;
    v30 = v24;
LABEL_14:
    _s10Foundation4UUIDVSgWOhTm_0(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v24[v26], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v32 = *(PartitionCmd + 24);
  v33 = *(v47 + 48);
  v34 = v50;
  outlined init with copy of PgQuery_Alias?(v51 + v32, v50, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  outlined init with copy of PgQuery_Alias?(v52 + v32, v34 + v33, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  v35 = v49;
  v36 = *(v48 + 48);
  if (v36(v34, 1, v49) == 1)
  {
    if (v36(v34 + v33, 1, v35) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v38 & 1;
    }

    goto LABEL_13;
  }

  v37 = v45;
  outlined init with copy of PgQuery_Alias?(v34, v45, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v36(v34 + v33, 1, v35) == 1)
  {
    outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
LABEL_13:
    v28 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMd;
    v29 = &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSg_ADtMR;
    v30 = v34;
    goto LABEL_14;
  }

  v40 = v34 + v33;
  v41 = v44;
  outlined init with take of PgQuery_OidList(v40, v44, type metadata accessor for PgQuery_PartitionBoundSpec);
  v42 = specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(v37, v41);
  outlined destroy of PgQuery_OidList(v41, type metadata accessor for PgQuery_PartitionBoundSpec);
  outlined destroy of PgQuery_OidList(v37, type metadata accessor for PgQuery_PartitionBoundSpec);
  _s10Foundation4UUIDVSgWOhTm_0(v34, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMd, &_s14BiomeSQLParser26PgQuery_PartitionBoundSpecVSgMR);
  if (v42)
  {
    goto LABEL_18;
  }

LABEL_15:
  v38 = 0;
  return v38 & 1;
}

uint64_t specialized static PgQuery_CreateAmStmt.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3] == a2[3] && a1[4] == a2[4];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PgQuery_CreateAmStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_AlterSeqStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  AlterSeqStmt = type metadata accessor for PgQuery_AlterSeqStmt(0);
  v17 = *(AlterSeqStmt + 32);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) == 1)
  {
    if (v19(&v16[v18], 1, RangeVar) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      goto LABEL_8;
    }
  }

  else
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v21 = v27;
      outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
      v22 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v21);
      outlined destroy of PgQuery_OidList(v21, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if ((v22 & 1) == 0)
      {
LABEL_11:
        v20 = 0;
        return v20 & 1;
      }

LABEL_8:
      v23 = v28;
      if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*v28, *a2) & 1) != 0 && *(v23 + 8) == *(a2 + 8) && *(v23 + 9) == *(a2 + 9))
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v20 & 1;
      }

      goto LABEL_11;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static PgQuery_CreateFdwStmt.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ReindexStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v18 > 2)
    {
      if (v18 == 3)
      {
        if (v17 != 3)
        {
          goto LABEL_32;
        }
      }

      else if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_32;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_32;
      }
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        if (v17 != 1)
        {
          goto LABEL_32;
        }
      }

      else if (v17 != 2)
      {
        goto LABEL_32;
      }
    }

    else if (v17)
    {
      goto LABEL_32;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_32;
  }

  ReindexStmt = type metadata accessor for PgQuery_ReindexStmt(0);
  v20 = *(ReindexStmt + 36);
  v21 = a1;
  v22 = *(v13 + 48);
  v28 = ReindexStmt;
  v29 = v21;
  outlined init with copy of PgQuery_Alias?(v21 + v20, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v20, &v16[v22], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v23 = *(v5 + 48);
  if (v23(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v23(&v16[v22], 1, RangeVar) == 1)
    {
      outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
      goto LABEL_17;
    }

    outlined init with take of PgQuery_OidList(&v16[v22], v8, type metadata accessor for PgQuery_RangeVar);
    v24 = specialized static PgQuery_RangeVar.== infix(_:_:)(v12, v8);
    outlined destroy of PgQuery_OidList(v8, type metadata accessor for PgQuery_RangeVar);
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_RangeVar);
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_32:
    v26 = 0;
    return v26 & 1;
  }

  if (v23(&v16[v22], 1, RangeVar) != 1)
  {
LABEL_17:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_32;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_19:
  v25 = v29;
  if ((v29[2] != *(a2 + 16) || v29[3] != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v25 + 8) != *(a2 + 32) || *(v25 + 36) != *(a2 + 36))
  {
    goto LABEL_32;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t specialized static PgQuery_GroupingSet.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], *(a2 + 16)) & 1) != 0 && *(a1 + 6) == *(a2 + 24))
  {
    type metadata accessor for PgQuery_GroupingSet(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_DiscardStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v3 == 3)
      {
        if (v2 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 4)
      {
        return 0;
      }

LABEL_8:
      type metadata accessor for PgQuery_DiscardStmt(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static PgQuery_CollateExpr.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PgQuery_CollateExpr(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static PgQuery_CollateExpr.== infix(_:_:)(v5, v6, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid, &OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ClusterStmt.== infix(_:_:)(void *a1, uint64_t a2)
{
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v5 = *(RangeVar - 8);
  MEMORY[0x1EEE9AC00](RangeVar, v6);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v25 - v15;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  v17 = *(ClusterStmt + 28);
  v18 = *(v13 + 56);
  v28 = a1;
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, RangeVar) != 1)
  {
    outlined init with copy of PgQuery_Alias?(v16, v11, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    if (v19(&v16[v18], 1, RangeVar) != 1)
    {
      v20 = v27;
      outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_RangeVar);
      v21 = specialized static PgQuery_RangeVar.== infix(_:_:)(v11, v20);
      outlined destroy of PgQuery_OidList(v20, type metadata accessor for PgQuery_RangeVar);
      outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
      _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v23 = 0;
      return v23 & 1;
    }

    outlined destroy of PgQuery_OidList(v11, type metadata accessor for PgQuery_RangeVar);
LABEL_6:
    _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSg_ADtMR);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, RangeVar) != 1)
  {
    goto LABEL_6;
  }

  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
LABEL_8:
  v22 = v28;
  if ((*v28 != *a2 || v28[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v22 + 4) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v23 & 1;
}

uint64_t specialized static PgQuery_WithClause.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for PgQuery_WithClause(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ObjectWithArgs.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_CreateExtensionStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[3], *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_DefineStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  destructiveProjectEnumData for StorableValue();
  v5 = v4;
  destructiveProjectEnumData for StorableValue();
  if (v5 != v6 || *(a1 + 9) != *(a2 + 9) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 24), *(a2 + 24)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41))
  {
    return 0;
  }

  type metadata accessor for PgQuery_DefineStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_PartitionBoundSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 5) != *(a2 + 20) || *(a1 + 6) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[4], *(a2 + 32)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[5], *(a2 + 40)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[6], *(a2 + 48)) & 1) == 0 || *(a1 + 14) != *(a2 + 56))
  {
    return 0;
  }

  type metadata accessor for PgQuery_PartitionBoundSpec(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_ScanToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v6 = PgQuery_Token.rawValue.getter(*(a1 + 8), *(a1 + 16));
  if (v6 != PgQuery_Token.rawValue.getter(v2, v3))
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (*(a2 + 32) == 1)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else if (v8 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else if (v7 != 4)
      {
        return 0;
      }

LABEL_11:
      type metadata accessor for PgQuery_ScanToken(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (v8)
    {
      if (v7 != 1)
      {
        return 0;
      }

      goto LABEL_11;
    }

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else if (v7 == v8)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t specialized static PgQuery_GrantStmt.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (a2[16] == 1)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v5 != 2)
        {
          return 0;
        }
      }

      else if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  destructiveProjectEnumData for StorableValue();
  v8 = v7;
  destructiveProjectEnumData for StorableValue();
  if (v8 != v9 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 5), *(a2 + 5)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 6), *(a2 + 6)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 7), *(a2 + 7)) & 1) == 0 || a1[64] != a2[64])
  {
    return 0;
  }

  v10 = *(a1 + 9);
  v11 = *(a2 + 9);
  if (a2[80] != 1)
  {
    if (v10 == v11)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v11 == 1)
  {
    if (v10 == 1)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v10 != 2)
  {
    return 0;
  }

LABEL_31:
  type metadata accessor for PgQuery_GrantStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_FetchStmt.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2)
      {
        return 0;
      }
    }

    else if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v3 == 3)
    {
      if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v2 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16))
  {
    v4 = a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32);
    if (v4 || (v5 = a1, v6 = a2, v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v6, v8 = v7, a1 = v5, (v8 & 1) != 0))
    {
      if (*(a1 + 40) == *(a2 + 40))
      {
        type metadata accessor for PgQuery_FetchStmt(0);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
      }
    }
  }

  return 0;
}

uint64_t specialized static PgQuery_TypeName.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 13) != *(a2 + 13) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  type metadata accessor for PgQuery_TypeName(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RoleSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 8) == *(a2 + 32))
  {
    type metadata accessor for PgQuery_RoleSpec(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static PgQuery_AlterStatsStmt.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_DropStmt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  destructiveProjectEnumData for StorableValue();
  v5 = v4;
  destructiveProjectEnumData for StorableValue();
  if (v5 != v6)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (*(a2 + 32) != 1)
  {
    if (v7 != v8)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 != 1)
  {
    if (v7 == 2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v7 != 1)
  {
    return 0;
  }

LABEL_13:
  if (*(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34))
  {
    return 0;
  }

  type metadata accessor for PgQuery_DropStmt(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static PgQuery_RangeVar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  Alias = type metadata accessor for PgQuery_Alias(0);
  v5 = *(Alias - 8);
  MEMORY[0x1EEE9AC00](Alias, v6);
  v8 = &RangeVar - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&RangeVar - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd, &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &RangeVar - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 48) != *(a2 + 48) || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

  v27 = v8;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v17 = *(RangeVar + 44);
  v18 = *(v13 + 48);
  outlined init with copy of PgQuery_Alias?(a1 + v17, v16, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  outlined init with copy of PgQuery_Alias?(a2 + v17, &v16[v18], &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, Alias) == 1)
  {
    if (v19(&v16[v18], 1, Alias) == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  outlined init with copy of PgQuery_Alias?(v16, v12, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (v19(&v16[v18], 1, Alias) == 1)
  {
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_19:
    v21 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMd;
    v22 = &_s14BiomeSQLParser13PgQuery_AliasVSg_ADtMR;
LABEL_28:
    _s10Foundation4UUIDVSgWOhTm_0(v16, v21, v22);
    goto LABEL_29;
  }

  v23 = v27;
  outlined init with take of PgQuery_OidList(&v16[v18], v27, type metadata accessor for PgQuery_Alias);
  if ((*v12 != *v23 || v12[1] != v23[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(v12[2], v23[2]) & 1) == 0)
  {
    outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Alias);
    goto LABEL_27;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of PgQuery_OidList(v23, type metadata accessor for PgQuery_Alias);
  if ((v24 & 1) == 0)
  {
LABEL_27:
    outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
    v21 = &_s14BiomeSQLParser13PgQuery_AliasVSgMd;
    v22 = &_s14BiomeSQLParser13PgQuery_AliasVSgMR;
    goto LABEL_28;
  }

  outlined destroy of PgQuery_OidList(v12, type metadata accessor for PgQuery_Alias);
LABEL_15:
  _s10Foundation4UUIDVSgWOhTm_0(v16, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if (*(a1 + 72) != *(a2 + 72))
  {
LABEL_29:
    v20 = 0;
    return v20 & 1;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t specialized static PgQuery_AccessPriv.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ14BiomeSQLParser12PgQuery_NodeV_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  a3(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of PgQuery_Node.OneOf_Node(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PgQuery_OidList(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PgQuery_OidList(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized PgQuery_TableFunc._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v3;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v1 + v4, 1, 1, Node);
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr;
  v6(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, 1, 1, Node);
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) = v3;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes) = v3;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods) = v3;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations) = v3;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs) = v3;
  v16 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs) = v3;
  v17 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls) = v3;
  v19 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol) = 0;
  v18 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 24) = *(a1 + 24);
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;

  outlined assign with copy of PgQuery_Node?(a1 + v12, v1 + v14, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, v1 + v7, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames);

  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypes);

  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coltypmods);

  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colcollations);

  *(v1 + v15) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexprs);

  *(v1 + v16) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexprs);

  *(v1 + v17) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__notnulls);

  *(v1 + v19) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordinalitycol);
  *(v1 + v18) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_TableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_Var._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  v15 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v14 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno) = 0;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno) = 0;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn) = 0;
  v11 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn) = 0;
  v12 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v15, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  *(v1 + v14) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno);
  *(v1 + v5) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno);
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn);
  *(v1 + v11) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn);
  *(v1 + v12) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}

uint64_t specialized PgQuery_Param._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v1 + v3, 1, 1, Node);
  v5 = v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid) = 0;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype) = 0;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod) = 0;
  v9 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid) = 0;
  v10 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location;
  *(v1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  outlined assign with copy of PgQuery_Node?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr, v1 + v3, &_s14BiomeSQLParser12PgQuery_NodeVSgMd, &_s14BiomeSQLParser12PgQuery_NodeVSgMR);
  v11 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind + 8);
  *v5 = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind);
  *(v5 + 8) = v11;
  *(v1 + v6) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid);
  *(v1 + v7) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype);
  *(v1 + v8) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod);
  *(v1 + v9) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid);
  *(v1 + v10) = *(a1 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location);
  return v1;
}