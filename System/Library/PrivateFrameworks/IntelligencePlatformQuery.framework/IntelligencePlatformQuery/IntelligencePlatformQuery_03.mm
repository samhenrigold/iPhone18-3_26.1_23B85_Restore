uint64_t PgQuery_ParseResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for PgQuery_RawStmt(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_ParseResult(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ParseResult(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ParseResult and conformance PgQuery_ParseResult, type metadata accessor for PgQuery_ParseResult, &protocol conformance descriptor for PgQuery_ParseResult);

  return Message.hash(into:)();
}

uint64_t PgQuery_ParseResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      a4(0);
      lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(a5, a6, a7);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t PgQuery_ScanResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for PgQuery_ScanToken(0), lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanToken and conformance PgQuery_ScanToken, type metadata accessor for PgQuery_ScanToken, &protocol conformance descriptor for PgQuery_ScanToken), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for PgQuery_ScanResult(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance PgQuery_ScanResult(uint64_t a1, uint64_t a2)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);

  return MEMORY[0x28217E230](a1, a2, Scan);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PgQuery_ScanResult(uint64_t a1)
{
  Scan = lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);

  return MEMORY[0x28217E428](a1, Scan);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PgQuery_ScanResult(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScanResult and conformance PgQuery_ScanResult, type metadata accessor for PgQuery_ScanResult, &protocol conformance descriptor for PgQuery_ScanResult);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PgQuery_ParseResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (*a1 != *a2 || ((a5)(*(a1 + 8), *(a2 + 8), a3, a4) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for defaultInstance()
{
  type metadata accessor for PgQuery_Node._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  v2 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  static PgQuery_Node._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_Var._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__vartypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varlevelsup) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varnosyn) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__varattnosyn) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser11PgQuery_VarP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_Var._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_Param._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramkind;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramtypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__paramcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser13PgQuery_ParamP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_Param._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_GroupingFunc._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refs) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__agglevelsup) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_GroupingFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_GroupingFunc._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SubscriptingRef._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refcontainertype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refelemtype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__reftypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refcollid) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refupperindexpr) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__reflowerindexpr) = v4;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refexpr, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_SubscriptingRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__refassgnexpr, 1, 1, Node);
  static PgQuery_SubscriptingRef._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_NamedArgExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v5 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__name);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argnumber) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_NamedArgExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NamedArgExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_OpExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_OpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_OpExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_DistinctExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_DistinctExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_DistinctExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_NullIfExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opresulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opretset) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_NullIfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NullIfExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ScalarArrayOpExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfuncid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOr) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_ScalarArrayOpExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ScalarArrayOpExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_BoolExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLop;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_BoolExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_BoolExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SubLink._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkType;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subLinkID) = 0;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__testexpr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__operName) = MEMORY[0x277D84F90];
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subselect, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_SubLinkP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SubLink._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_FieldSelect._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnum) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_FieldSelectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  static PgQuery_FieldSelect._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_FieldStore._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newvals) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fieldnums) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_FieldStoreP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  static PgQuery_FieldStore._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RelabelType._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relabelformat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_RelabelTypeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RelabelType._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CoerceViaIO._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CoerceViaIOP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceViaIO._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ArrayCoerceExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elemexpr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coerceformat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_ArrayCoerceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ArrayCoerceExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ConvertRowtypeExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__convertformat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser26PgQuery_ConvertRowtypeExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ConvertRowtypeExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CollateExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collOid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CollateExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CollateExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CaseExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casetype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__casecollid) = 0;
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defresult, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CaseExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CaseWhen._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__result, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CaseWhenP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CaseWhen._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CaseTestExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CaseTestExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  static PgQuery_CaseTestExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ArrayExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayTypeid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arrayCollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elementTypeid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__elements) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__multidims) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ArrayExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_ArrayExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RowExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowTypeid) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowFormat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colnames) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RowExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RowExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RowCompareExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rctype;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opnos) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opfamilies) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollids) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__largs) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RowCompareExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rargs) = v5;
  static PgQuery_RowCompareExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CoalesceExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescetype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coalescecollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_CoalesceExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoalesceExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_MinMaxExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxtype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__minmaxcollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inputcollid) = 0;
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_MinMaxExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_MinMaxExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SQLValueFunction._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__op;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__type) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SQLValueFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SQLValueFunction._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_NullTest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nulltesttype;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argisrow) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_NullTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_NullTest._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_BooleanTest._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__BOOLtesttype;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_BooleanTestP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_BooleanTest._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CoerceToDomain._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttype) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resulttypmod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resultcollid) = 0;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coercionformat;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CoerceToDomainP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceToDomain._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CoerceToDomainValue._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_CoerceToDomainValueP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CoerceToDomainValue._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SetToDefault._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeMod) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SetToDefaultP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SetToDefault._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CurrentOfExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cvarno) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CurrentOfExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cursorParam) = 0;
  static PgQuery_CurrentOfExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_NextValueExpr._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__seqid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_NextValueExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeID) = 0;
  static PgQuery_NextValueExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_InferenceElem._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infercollid) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_InferenceElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inferopclass) = 0;
  static PgQuery_InferenceElem._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_TargetEntry._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__xpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resno) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resname);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ressortgroupref) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigtbl) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resorigcol) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_TargetEntryP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__resjunk) = 0;
  static PgQuery_TargetEntry._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_JoinExpr._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x277D84F90];
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals, 1, 1, Node);
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v0 + v4, 1, 1, Alias);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_JoinExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rtindex) = 0;
  static PgQuery_JoinExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_FromExpr._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FromExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__quals;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  static PgQuery_FromExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_OnConflictExpr._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arbiterWhere;
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(*(Node - 8) + 56);
  v4(v0 + v2, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraint) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictSet) = v1;
  result = (v4)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictWhere, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelIndex) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_OnConflictExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__exclRelTlist) = v1;
  static PgQuery_OnConflictExpr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_IntoClause._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rel;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colNames) = MEMORY[0x277D84F90];
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__accessMethod);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v3;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onCommit;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__tableSpaceName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__viewQuery;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v7, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_IntoClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__skipData) = 0;
  static PgQuery_IntoClause._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RawStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmt;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLocation) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_RawStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__stmtLen) = 0;
  static PgQuery_RawStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_InsertStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cols) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__selectStmt;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__onConflictClause;
  v7 = type metadata accessor for PgQuery_OnConflictClause(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v3;
  v8 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v9 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v11 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_InsertStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__override;
  *v11 = 0;
  *(v11 + 8) = 1;
  static PgQuery_InsertStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_DeleteStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__usingClause) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v3;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_DeleteStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v7 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  static PgQuery_DeleteStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_UpdateStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__fromClause) = v3;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__returningList) = v3;
  v6 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_UpdateStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withClause;
  v7 = type metadata accessor for PgQuery_WithClause(0);
  result = (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  static PgQuery_UpdateStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterTableCmd._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  (*(*(RoleSpec - 8) + 56))(v0 + v1, 1, 1, RoleSpec);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v3, 1, 1, Node);
  v6 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_AlterTableCmdP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_AlterTableCmd._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterDomainStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = v1;
  *(v0 + 5) = 0;
  *(v0 + 6) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__def;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v0[v2], 1, 1, Node);
  v5 = &v0[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior];
  *v5 = 0;
  v5[8] = 1;
  v0[OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk] = 0;
  static PgQuery_AlterDomainStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SetOperationStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__larg;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rarg, 1, 1, Node);
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypes) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colTypmods) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colCollations) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_SetOperationStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__groupClauses) = v5;
  static PgQuery_SetOperationStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CopyStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v0 + v3, 1, 1, Node);
  v6 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__attlist) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isFrom) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isProgram) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__filename);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v6;
  result = (v5)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CopyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause, 1, 1, Node);
  static PgQuery_CopyStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CommentStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_CommentStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__comment);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  static PgQuery_CommentStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RenameStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v3, 1, 1, Node);
  v6 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subname);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newname);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__behavior;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser18PgQuery_RenameStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_RenameStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RuleStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rulename);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__event;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__instead) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__actions) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_RuleStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  static PgQuery_RuleStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ViewStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__view;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aliases) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__replace) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__options) = v3;
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_ViewStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheckOption;
  *v7 = 0;
  *(v7 + 8) = 1;
  static PgQuery_ViewStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CreateDomainStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v2, 1, 1, TypeName);
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collClause;
  CollateClause = type metadata accessor for PgQuery_CollateClause(0);
  result = (*(*(CollateClause - 8) + 56))(v0 + v4, 1, 1, CollateClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreateDomainStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__constraints) = v1;
  static PgQuery_CreateDomainStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CreateTableAsStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__into;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  result = (*(*(IntoClause - 8) + 56))(v0 + v3, 1, 1, IntoClause);
  v6 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relkind;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isSelectInto) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_CreateTableAsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ifNotExists) = 0;
  static PgQuery_CreateTableAsStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CreateCastStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sourcetype;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  v3 = *(*(TypeName - 8) + 56);
  v3(v0 + v1, 1, 1, TypeName);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targettype, 1, 1, TypeName);
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__func;
  ObjectWithArgs = type metadata accessor for PgQuery_ObjectWithArgs(0);
  result = (*(*(ObjectWithArgs - 8) + 56))(v0 + v4, 1, 1, ObjectWithArgs);
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__context;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_CreateCastStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__inout) = 0;
  static PgQuery_CreateCastStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_PrepareStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_PrepareStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v0[v1], 1, 1, Node);
  static PgQuery_PrepareStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_DeclareCursorStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_DeclareCursorStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__query;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  static PgQuery_DeclareCursorStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterObjectDependsStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v0 + v3, 1, 1, Node);
  result = (v5)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__extname, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser30PgQuery_AlterObjectDependsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__remove) = 0;
  static PgQuery_AlterObjectDependsStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterObjectSchemaStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v3, 1, 1, Node);
  v6 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newschema);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser29PgQuery_AlterObjectSchemaStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__missingOk) = 0;
  static PgQuery_AlterObjectSchemaStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterOwnerStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v3, 1, 1, Node);
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_AlterOwnerStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__newowner;
  RoleSpec = type metadata accessor for PgQuery_RoleSpec(0);
  result = (*(*(RoleSpec - 8) + 56))(v0 + v5, 1, 1, RoleSpec);
  static PgQuery_AlterOwnerStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SecLabelStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__provider);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_SecLabelStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__label);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  static PgQuery_SecLabelStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterExtensionContentsStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser34PgQuery_AlterExtensionContentsStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__object;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  static PgQuery_AlterExtensionContentsStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CreatePolicyStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  v3 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cmdName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__permissive) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v6 = *(*(Node - 8) + 56);
  v6(v0 + v4, 1, 1, Node);
  result = (v6)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_CreatePolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  static PgQuery_CreatePolicyStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_AlterPolicyStmt._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__table;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  (*(*(RangeVar - 8) + 56))(v0 + v1, 1, 1, RangeVar);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__roles) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v0 + v3, 1, 1, Node);
  result = (v5)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_AlterPolicyStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__withCheck, 1, 1, Node);
  static PgQuery_AlterPolicyStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CallStmt._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccall;
  v2 = type metadata accessor for PgQuery_FuncCall(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_CallStmtP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  result = (*(*(FuncExpr - 8) + 56))(v0 + v3, 1, 1, FuncExpr);
  static PgQuery_CallStmt._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_A_Expr._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rexpr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_A_ExprP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_A_Expr._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_A_Const._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_A_ConstP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_A_Const._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_FuncCall._StorageClass(0);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 2) = MEMORY[0x277D84F90];
  *(v0 + 3) = v1;
  *(v0 + 4) = v1;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggFilter;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(&v0[v2], 1, 1, Node);
  v0[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggWithinGroup] = 0;
  v0[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggStar] = 0;
  v0[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__aggDistinct] = 0;
  v0[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcVariadic] = 0;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__over;
  WindowDef = type metadata accessor for PgQuery_WindowDef(0);
  result = (*(*(WindowDef - 8) + 56))(&v0[v4], 1, 1, WindowDef);
  *&v0[OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_FuncCallP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_FuncCall._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_A_Indices._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__lidx;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_A_IndicesP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__uidx, 1, 1, Node);
  static PgQuery_A_Indices._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_ResTarget._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__val;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v0[v1], 1, 1, Node);
  *&v0[OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_ResTargetP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_ResTarget._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_MultiAssignRef._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__source;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colno) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_MultiAssignRefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ncolumns) = 0;
  static PgQuery_MultiAssignRef._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_TypeCast._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  result = (*(*(TypeName - 8) + 56))(v0 + v3, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser16PgQuery_TypeCastP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_TypeCast._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_CollateClause._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collname) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_CollateClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_CollateClause._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_SortBy._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyDir;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__sortbyNulls;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__useOp) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser14PgQuery_SortByP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_SortBy._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_WindowDef._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  v2 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__startOffset;
  Node = type metadata accessor for PgQuery_Node(0);
  v4 = *(*(Node - 8) + 56);
  v4(v0 + v2, 1, 1, Node);
  result = (v4)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__endOffset, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_WindowDefP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_WindowDef._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RangeSubselect._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__subquery;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeSubselectP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v0 + v3, 1, 1, Alias);
  static PgQuery_RangeSubselect._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RangeTableSample._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__relation;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__method) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__args) = v4;
  result = (v3)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTableSampleP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableSample._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RangeTableFunc._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__docexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v3 = *(*(Node - 8) + 56);
  v3(v0 + v1, 1, 1, Node);
  v3(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__rowexpr, 1, 1, Node);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__namespaces) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__columns) = v4;
  v5 = OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__alias;
  Alias = type metadata accessor for PgQuery_Alias(0);
  result = (*(*(Alias - 8) + 56))(v0 + v5, 1, 1, Alias);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser22PgQuery_RangeTableFuncP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableFunc._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RangeTableFuncCol._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v1, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__forOrdinality) = 0;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__isNotNull) = 0;
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__colexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  v5 = *(*(Node - 8) + 56);
  v5(v0 + v3, 1, 1, Node);
  result = (v5)(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__coldefexpr, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_RangeTableFuncColP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_RangeTableFuncCol._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_IndexElem._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__indexcolname);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v5;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclassopts) = v5;
  v6 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__ordering;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser17PgQuery_IndexElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__nullsOrdering;
  *v7 = 0;
  *(v7 + 8) = 1;
  static PgQuery_IndexElem._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_DefElem._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  *(v0 + 5) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__arg;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(&v0[v1], 1, 1, Node);
  v4 = &v0[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defaction];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtCV14BiomeSQLParser15PgQuery_DefElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location] = 0;
  static PgQuery_DefElem._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_RangeTblFunction._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcount) = 0;
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolnames) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypes) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccoltypmods) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funccolcollations) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_RangeTblFunctionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__funcparams) = v4;
  static PgQuery_RangeTblFunction._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_TableSampleClause._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_TableSampleClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__repeatable;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  static PgQuery_TableSampleClause._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_WithCheckOption._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__qual;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser23PgQuery_WithCheckOptionP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__cascaded) = 0;
  static PgQuery_WithCheckOption._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_FunctionParameter._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__argType;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  (*(*(TypeName - 8) + 56))(v0 + v1, 1, 1, TypeName);
  v3 = v0 + OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__mode;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = OBJC_IVAR____TtCV14BiomeSQLParser25PgQuery_FunctionParameterP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__defexpr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v4, 1, 1, Node);
  static PgQuery_FunctionParameter._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_XmlSerialize._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__typeName;
  TypeName = type metadata accessor for PgQuery_TypeName(0);
  result = (*(*(TypeName - 8) + 56))(v0 + v3, 1, 1, TypeName);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser20PgQuery_XmlSerializeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_XmlSerialize._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_InferClause._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = (v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__conname);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser19PgQuery_InferClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_InferClause._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_OnConflictClause._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__infer;
  InferClause = type metadata accessor for PgQuery_InferClause(0);
  (*(*(InferClause - 8) + 56))(v0 + v1, 1, 1, InferClause);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__targetList) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__whereClause;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v3, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser24PgQuery_OnConflictClauseP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_OnConflictClause._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_PartitionElem._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__expr;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  v4 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__collation) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__opclass) = v4;
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser21PgQuery_PartitionElemP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_PartitionElem._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for PgQuery_PartitionRangeDatum._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__value;
  Node = type metadata accessor for PgQuery_Node(0);
  result = (*(*(Node - 8) + 56))(v0 + v1, 1, 1, Node);
  *(v0 + OBJC_IVAR____TtCV14BiomeSQLParser27PgQuery_PartitionRangeDatumP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__location) = 0;
  static PgQuery_PartitionRangeDatum._StorageClass.defaultInstance = v0;
  return result;
}

void type metadata completion function for PgQuery_Node._StorageClass(uint64_t a1)
{
  type metadata accessor for PgQuery_Node.OneOf_Node?(319, &lazy cache variable for type metadata for PgQuery_Node.OneOf_Node?, type metadata accessor for PgQuery_Node.OneOf_Node, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for PgQuery_Node(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = *(v3 + v7);
    type metadata accessor for PgQuery_Node._StorageClass(0);
    v10 = swift_allocObject();
    v17 = a2;
    v11 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    v12 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
    (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
    v13 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
    outlined destroy of URL?(v10 + v11, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v14 = v10 + v11;
    a2 = v17;
    outlined init with copy of PgQuery_Alias?(v16 + v13, v14, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);

    *(v3 + v7) = v10;
    v9 = v10;
  }

  return closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(v9, a1, a2, a3);
}

uint64_t closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 2:
        closure #2 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 3:
        closure #3 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 4:
        closure #4 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 5:
        closure #5 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 6:
        closure #6 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 7:
        closure #7 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 8:
        closure #8 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 9:
        closure #9 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 10:
        closure #10 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 11:
        closure #11 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 12:
        closure #12 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 13:
        closure #13 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 14:
        closure #14 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 15:
        closure #15 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 16:
        closure #16 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 17:
        closure #17 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 18:
        closure #18 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 19:
        closure #19 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 20:
        closure #20 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 21:
        closure #21 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 22:
        closure #22 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 23:
        closure #23 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 24:
        closure #24 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 25:
        closure #25 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 26:
        closure #26 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 27:
        closure #27 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 28:
        closure #28 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 29:
        closure #29 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 30:
        closure #30 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 31:
        closure #31 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 32:
        closure #32 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 33:
        closure #33 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 34:
        closure #34 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 35:
        closure #35 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 36:
        closure #36 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 37:
        closure #37 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 38:
        closure #38 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 39:
        closure #39 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 40:
        closure #40 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 41:
        closure #41 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 42:
        closure #42 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 43:
        closure #43 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 44:
        closure #44 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 45:
        closure #45 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 46:
        closure #46 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 47:
        closure #47 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 48:
        closure #48 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 49:
        closure #49 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 50:
        closure #50 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 51:
        closure #51 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 52:
        closure #52 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 53:
        closure #53 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 54:
        closure #54 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 55:
        closure #55 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 56:
        closure #56 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 57:
        closure #57 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 58:
        closure #58 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 59:
        closure #59 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 60:
        closure #60 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 61:
        closure #61 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 62:
        closure #62 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 63:
        closure #63 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      case 64:
        closure #64 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
        break;
      default:
        switch(result)
        {
          case 65:
            closure #65 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 66:
            closure #66 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 67:
            closure #67 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 68:
            closure #68 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 69:
            closure #69 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 70:
            closure #70 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 71:
            closure #71 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 72:
            closure #72 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 73:
            closure #73 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 74:
            closure #74 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 75:
            closure #75 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 76:
            closure #76 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 77:
            closure #77 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 78:
            closure #78 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 79:
            closure #79 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 80:
            closure #80 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 81:
            closure #81 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 82:
            closure #82 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 83:
            closure #83 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 84:
            closure #84 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 85:
            closure #85 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 86:
            closure #86 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 87:
            closure #87 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 88:
            closure #88 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 89:
            closure #89 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 90:
            closure #90 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 91:
            closure #91 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 92:
            closure #92 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 93:
            closure #93 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 94:
            closure #94 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 95:
            closure #95 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 96:
            closure #96 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 97:
            closure #97 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 98:
            closure #98 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 99:
            closure #99 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 100:
            closure #100 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 101:
            closure #101 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 102:
            closure #102 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 103:
            closure #103 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 104:
            closure #104 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 105:
            closure #105 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 106:
            closure #106 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 107:
            closure #107 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 108:
            closure #108 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 109:
            closure #109 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 110:
            closure #110 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 111:
            closure #111 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 112:
            closure #112 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 113:
            closure #113 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 114:
            closure #114 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 115:
            closure #115 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 116:
            closure #116 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 117:
            closure #117 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 118:
            closure #118 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 119:
            closure #119 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 120:
            closure #120 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 121:
            closure #121 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 122:
            closure #122 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 123:
            closure #123 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 124:
            closure #124 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 125:
            closure #125 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 126:
            closure #126 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 127:
            closure #127 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          case 128:
            closure #128 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
            break;
          default:
            switch(result)
            {
              case 129:
                closure #129 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 130:
                closure #130 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 131:
                closure #131 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 132:
                closure #132 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 133:
                closure #133 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 134:
                closure #134 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 135:
                closure #135 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 136:
                closure #136 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 137:
                closure #137 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 138:
                closure #138 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 139:
                closure #139 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 140:
                closure #140 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 141:
                closure #141 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 142:
                closure #142 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 143:
                closure #143 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 144:
                closure #144 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 145:
                closure #145 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 146:
                closure #146 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 147:
                closure #147 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 148:
                closure #148 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 149:
                closure #149 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 150:
                closure #150 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 151:
                closure #151 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 152:
                closure #152 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 153:
                closure #153 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 154:
                closure #154 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 155:
                closure #155 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 156:
                closure #156 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 157:
                closure #157 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 158:
                closure #158 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 159:
                closure #159 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 160:
                closure #160 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 161:
                closure #161 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 162:
                closure #162 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 163:
                closure #163 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 164:
                closure #164 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 165:
                closure #165 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 166:
                closure #166 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 167:
                closure #167 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 168:
                closure #168 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 169:
                closure #169 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 170:
                closure #170 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 171:
                closure #171 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 172:
                closure #172 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 173:
                closure #173 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 174:
                closure #174 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 175:
                closure #175 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 176:
                closure #176 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 177:
                closure #177 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 178:
                closure #178 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 179:
                closure #179 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 180:
                closure #180 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 181:
                closure #181 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 182:
                closure #182 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 183:
                closure #183 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 184:
                closure #184 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 185:
                closure #185 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 186:
                closure #186 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 187:
                closure #187 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 188:
                closure #188 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 189:
                closure #189 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 190:
                closure #190 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 191:
                closure #191 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              case 192:
                closure #192 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                break;
              default:
                switch(result)
                {
                  case 193:
                    closure #193 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 194:
                    closure #194 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 195:
                    closure #195 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 196:
                    closure #196 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 197:
                    closure #197 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 198:
                    closure #198 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 199:
                    closure #199 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 200:
                    closure #200 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 201:
                    closure #201 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 202:
                    closure #202 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 203:
                    closure #203 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 204:
                    closure #204 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 205:
                    closure #205 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 206:
                    closure #206 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 207:
                    closure #207 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 208:
                    closure #208 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 209:
                    closure #209 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 210:
                    closure #210 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 211:
                    closure #211 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 212:
                    closure #212 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 213:
                    closure #213 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 214:
                    closure #214 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 215:
                    closure #215 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 216:
                    closure #216 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 217:
                    closure #217 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 218:
                    closure #218 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 219:
                    closure #219 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 220:
                    closure #220 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 221:
                    closure #221 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 222:
                    closure #222 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 223:
                    closure #223 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 224:
                    closure #224 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 225:
                    closure #225 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 226:
                    closure #226 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 227:
                    closure #227 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  case 228:
                    closure #228 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(a1, a2, a3, a4);
                    break;
                  default:
                    continue;
                }

                break;
            }

            break;
        }

        break;
    }
  }
}

uint64_t closure #1 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Alias = type metadata accessor for PgQuery_Alias(0);
  v6 = *(Alias - 8);
  v7 = MEMORY[0x28223BE20](Alias);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Alias;
  v26 = Alias;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }

    else
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
      v31 = v42;
      outlined init with take of PgQuery_OidList(v17, v42, type metadata accessor for PgQuery_Alias);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Alias);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Alias and conformance PgQuery_Alias, type metadata accessor for PgQuery_Alias, &protocol conformance descriptor for PgQuery_Alias);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
  }

  else
  {
    v35 = v43;
    outlined init with take of PgQuery_OidList(v32, v43, type metadata accessor for PgQuery_Alias);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_AliasVSgMd, &_s14BiomeSQLParser13PgQuery_AliasVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Alias);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #2 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeVar = type metadata accessor for PgQuery_RangeVar(0);
  v6 = *(RangeVar - 8);
  v7 = MEMORY[0x28223BE20](RangeVar);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeVar;
  v26 = RangeVar;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeVar);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeVar);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeVar and conformance PgQuery_RangeVar, type metadata accessor for PgQuery_RangeVar, &protocol conformance descriptor for PgQuery_RangeVar);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeVar);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMd, &_s14BiomeSQLParser16PgQuery_RangeVarVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeVar);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #3 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TableFunc = type metadata accessor for PgQuery_TableFunc(0);
  v6 = *(TableFunc - 8);
  v7 = MEMORY[0x28223BE20](TableFunc);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TableFunc;
  v26 = TableFunc;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TableFunc);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TableFunc);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TableFunc and conformance PgQuery_TableFunc, type metadata accessor for PgQuery_TableFunc, &protocol conformance descriptor for PgQuery_TableFunc);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TableFunc);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMd, &_s14BiomeSQLParser17PgQuery_TableFuncVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TableFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #4 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Expr = type metadata accessor for PgQuery_Expr(0);
  v6 = *(Expr - 8);
  v7 = MEMORY[0x28223BE20](Expr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Expr;
  v26 = Expr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Expr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Expr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Expr and conformance PgQuery_Expr, type metadata accessor for PgQuery_Expr, &protocol conformance descriptor for PgQuery_Expr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Expr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser12PgQuery_ExprVSgMd, &_s14BiomeSQLParser12PgQuery_ExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Expr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #5 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Var = type metadata accessor for PgQuery_Var(0);
  v6 = *(Var - 8);
  v7 = MEMORY[0x28223BE20](Var);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Var;
  v26 = Var;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Var);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Var);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Var and conformance PgQuery_Var, type metadata accessor for PgQuery_Var, &protocol conformance descriptor for PgQuery_Var);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Var);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser11PgQuery_VarVSgMd, &_s14BiomeSQLParser11PgQuery_VarVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Var);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #6 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Param = type metadata accessor for PgQuery_Param(0);
  v6 = *(Param - 8);
  v7 = MEMORY[0x28223BE20](Param);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Param;
  v26 = Param;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Param);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Param);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Param and conformance PgQuery_Param, type metadata accessor for PgQuery_Param, &protocol conformance descriptor for PgQuery_Param);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Param);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser13PgQuery_ParamVSgMd, &_s14BiomeSQLParser13PgQuery_ParamVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Param);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #7 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Aggref = type metadata accessor for PgQuery_Aggref(0);
  v6 = *(Aggref - 8);
  v7 = MEMORY[0x28223BE20](Aggref);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Aggref;
  v26 = Aggref;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Aggref);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Aggref);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Aggref and conformance PgQuery_Aggref, type metadata accessor for PgQuery_Aggref, &protocol conformance descriptor for PgQuery_Aggref);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Aggref);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_AggrefVSgMd, &_s14BiomeSQLParser14PgQuery_AggrefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Aggref);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #8 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  GroupingFunc = type metadata accessor for PgQuery_GroupingFunc(0);
  v6 = *(GroupingFunc - 8);
  v7 = MEMORY[0x28223BE20](GroupingFunc);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = GroupingFunc;
  v26 = GroupingFunc;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_GroupingFunc);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_GroupingFunc);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GroupingFunc and conformance PgQuery_GroupingFunc, type metadata accessor for PgQuery_GroupingFunc, &protocol conformance descriptor for PgQuery_GroupingFunc);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_GroupingFunc);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMd, &_s14BiomeSQLParser20PgQuery_GroupingFuncVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_GroupingFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #9 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  WindowFunc = type metadata accessor for PgQuery_WindowFunc(0);
  v6 = *(WindowFunc - 8);
  v7 = MEMORY[0x28223BE20](WindowFunc);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = WindowFunc;
  v26 = WindowFunc;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_WindowFunc);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_WindowFunc);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_WindowFunc and conformance PgQuery_WindowFunc, type metadata accessor for PgQuery_WindowFunc, &protocol conformance descriptor for PgQuery_WindowFunc);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_WindowFunc);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMd, &_s14BiomeSQLParser18PgQuery_WindowFuncVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_WindowFunc);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #10 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SubscriptingRef = type metadata accessor for PgQuery_SubscriptingRef(0);
  v6 = *(SubscriptingRef - 8);
  v7 = MEMORY[0x28223BE20](SubscriptingRef);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SubscriptingRef;
  v26 = SubscriptingRef;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SubscriptingRef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SubscriptingRef);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubscriptingRef and conformance PgQuery_SubscriptingRef, type metadata accessor for PgQuery_SubscriptingRef, &protocol conformance descriptor for PgQuery_SubscriptingRef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SubscriptingRef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMd, &_s14BiomeSQLParser23PgQuery_SubscriptingRefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SubscriptingRef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #11 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FuncExpr = type metadata accessor for PgQuery_FuncExpr(0);
  v6 = *(FuncExpr - 8);
  v7 = MEMORY[0x28223BE20](FuncExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FuncExpr;
  v26 = FuncExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FuncExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FuncExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FuncExpr and conformance PgQuery_FuncExpr, type metadata accessor for PgQuery_FuncExpr, &protocol conformance descriptor for PgQuery_FuncExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FuncExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMd, &_s14BiomeSQLParser16PgQuery_FuncExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FuncExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #12 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  NamedArgExpr = type metadata accessor for PgQuery_NamedArgExpr(0);
  v6 = *(NamedArgExpr - 8);
  v7 = MEMORY[0x28223BE20](NamedArgExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = NamedArgExpr;
  v26 = NamedArgExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_NamedArgExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_NamedArgExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NamedArgExpr and conformance PgQuery_NamedArgExpr, type metadata accessor for PgQuery_NamedArgExpr, &protocol conformance descriptor for PgQuery_NamedArgExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_NamedArgExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMd, &_s14BiomeSQLParser20PgQuery_NamedArgExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_NamedArgExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #13 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  OpExpr = type metadata accessor for PgQuery_OpExpr(0);
  v6 = *(OpExpr - 8);
  v7 = MEMORY[0x28223BE20](OpExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = OpExpr;
  v26 = OpExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_OpExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_OpExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OpExpr and conformance PgQuery_OpExpr, type metadata accessor for PgQuery_OpExpr, &protocol conformance descriptor for PgQuery_OpExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_OpExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser14PgQuery_OpExprVSgMd, &_s14BiomeSQLParser14PgQuery_OpExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_OpExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #14 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DistinctExpr = type metadata accessor for PgQuery_DistinctExpr(0);
  v6 = *(DistinctExpr - 8);
  v7 = MEMORY[0x28223BE20](DistinctExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DistinctExpr;
  v26 = DistinctExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DistinctExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DistinctExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DistinctExpr and conformance PgQuery_DistinctExpr, type metadata accessor for PgQuery_DistinctExpr, &protocol conformance descriptor for PgQuery_DistinctExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DistinctExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMd, &_s14BiomeSQLParser20PgQuery_DistinctExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DistinctExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #15 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  NullIfExpr = type metadata accessor for PgQuery_NullIfExpr(0);
  v6 = *(NullIfExpr - 8);
  v7 = MEMORY[0x28223BE20](NullIfExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = NullIfExpr;
  v26 = NullIfExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_NullIfExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_NullIfExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullIfExpr and conformance PgQuery_NullIfExpr, type metadata accessor for PgQuery_NullIfExpr, &protocol conformance descriptor for PgQuery_NullIfExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_NullIfExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMd, &_s14BiomeSQLParser18PgQuery_NullIfExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_NullIfExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #16 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ScalarArrayOpExpr = type metadata accessor for PgQuery_ScalarArrayOpExpr(0);
  v6 = *(ScalarArrayOpExpr - 8);
  v7 = MEMORY[0x28223BE20](ScalarArrayOpExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ScalarArrayOpExpr;
  v26 = ScalarArrayOpExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ScalarArrayOpExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ScalarArrayOpExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ScalarArrayOpExpr and conformance PgQuery_ScalarArrayOpExpr, type metadata accessor for PgQuery_ScalarArrayOpExpr, &protocol conformance descriptor for PgQuery_ScalarArrayOpExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMd, &_s14BiomeSQLParser25PgQuery_ScalarArrayOpExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ScalarArrayOpExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #17 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  BoolExpr = type metadata accessor for PgQuery_BoolExpr(0);
  v6 = *(BoolExpr - 8);
  v7 = MEMORY[0x28223BE20](BoolExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = BoolExpr;
  v26 = BoolExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_BoolExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_BoolExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BoolExpr and conformance PgQuery_BoolExpr, type metadata accessor for PgQuery_BoolExpr, &protocol conformance descriptor for PgQuery_BoolExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_BoolExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMd, &_s14BiomeSQLParser16PgQuery_BoolExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_BoolExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #18 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SubLink = type metadata accessor for PgQuery_SubLink(0);
  v6 = *(SubLink - 8);
  v7 = MEMORY[0x28223BE20](SubLink);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SubLink;
  v26 = SubLink;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SubLink);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SubLink);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubLink and conformance PgQuery_SubLink, type metadata accessor for PgQuery_SubLink, &protocol conformance descriptor for PgQuery_SubLink);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SubLink);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMd, &_s14BiomeSQLParser15PgQuery_SubLinkVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SubLink);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #19 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SubPlan = type metadata accessor for PgQuery_SubPlan(0);
  v6 = *(SubPlan - 8);
  v7 = MEMORY[0x28223BE20](SubPlan);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SubPlan;
  v26 = SubPlan;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SubPlan);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SubPlan);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SubPlan and conformance PgQuery_SubPlan, type metadata accessor for PgQuery_SubPlan, &protocol conformance descriptor for PgQuery_SubPlan);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SubPlan);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMd, &_s14BiomeSQLParser15PgQuery_SubPlanVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SubPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #20 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlternativeSubPlan = type metadata accessor for PgQuery_AlternativeSubPlan(0);
  v6 = *(AlternativeSubPlan - 8);
  v7 = MEMORY[0x28223BE20](AlternativeSubPlan);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlternativeSubPlan;
  v26 = AlternativeSubPlan;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlternativeSubPlan);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlternativeSubPlan);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlternativeSubPlan and conformance PgQuery_AlternativeSubPlan, type metadata accessor for PgQuery_AlternativeSubPlan, &protocol conformance descriptor for PgQuery_AlternativeSubPlan);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlternativeSubPlan);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMd, &_s14BiomeSQLParser26PgQuery_AlternativeSubPlanVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlternativeSubPlan);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #21 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FieldSelect = type metadata accessor for PgQuery_FieldSelect(0);
  v6 = *(FieldSelect - 8);
  v7 = MEMORY[0x28223BE20](FieldSelect);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FieldSelect;
  v26 = FieldSelect;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FieldSelect);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FieldSelect);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldSelect and conformance PgQuery_FieldSelect, type metadata accessor for PgQuery_FieldSelect, &protocol conformance descriptor for PgQuery_FieldSelect);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FieldSelect);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMd, &_s14BiomeSQLParser19PgQuery_FieldSelectVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FieldSelect);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #22 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FieldStore = type metadata accessor for PgQuery_FieldStore(0);
  v6 = *(FieldStore - 8);
  v7 = MEMORY[0x28223BE20](FieldStore);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FieldStore;
  v26 = FieldStore;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FieldStore);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FieldStore);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FieldStore and conformance PgQuery_FieldStore, type metadata accessor for PgQuery_FieldStore, &protocol conformance descriptor for PgQuery_FieldStore);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FieldStore);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMd, &_s14BiomeSQLParser18PgQuery_FieldStoreVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FieldStore);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #23 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RelabelType = type metadata accessor for PgQuery_RelabelType(0);
  v6 = *(RelabelType - 8);
  v7 = MEMORY[0x28223BE20](RelabelType);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RelabelType;
  v26 = RelabelType;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RelabelType);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RelabelType);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RelabelType and conformance PgQuery_RelabelType, type metadata accessor for PgQuery_RelabelType, &protocol conformance descriptor for PgQuery_RelabelType);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RelabelType);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMd, &_s14BiomeSQLParser19PgQuery_RelabelTypeVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RelabelType);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #24 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CoerceViaIO = type metadata accessor for PgQuery_CoerceViaIO(0);
  v6 = *(CoerceViaIO - 8);
  v7 = MEMORY[0x28223BE20](CoerceViaIO);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CoerceViaIO;
  v26 = CoerceViaIO;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CoerceViaIO);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CoerceViaIO);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceViaIO and conformance PgQuery_CoerceViaIO, type metadata accessor for PgQuery_CoerceViaIO, &protocol conformance descriptor for PgQuery_CoerceViaIO);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CoerceViaIO);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMd, &_s14BiomeSQLParser19PgQuery_CoerceViaIOVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CoerceViaIO);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #25 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ArrayCoerceExpr = type metadata accessor for PgQuery_ArrayCoerceExpr(0);
  v6 = *(ArrayCoerceExpr - 8);
  v7 = MEMORY[0x28223BE20](ArrayCoerceExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ArrayCoerceExpr;
  v26 = ArrayCoerceExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ArrayCoerceExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ArrayCoerceExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayCoerceExpr and conformance PgQuery_ArrayCoerceExpr, type metadata accessor for PgQuery_ArrayCoerceExpr, &protocol conformance descriptor for PgQuery_ArrayCoerceExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ArrayCoerceExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMd, &_s14BiomeSQLParser23PgQuery_ArrayCoerceExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ArrayCoerceExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #26 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ConvertRowtypeExpr = type metadata accessor for PgQuery_ConvertRowtypeExpr(0);
  v6 = *(ConvertRowtypeExpr - 8);
  v7 = MEMORY[0x28223BE20](ConvertRowtypeExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ConvertRowtypeExpr;
  v26 = ConvertRowtypeExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ConvertRowtypeExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ConvertRowtypeExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ConvertRowtypeExpr and conformance PgQuery_ConvertRowtypeExpr, type metadata accessor for PgQuery_ConvertRowtypeExpr, &protocol conformance descriptor for PgQuery_ConvertRowtypeExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMd, &_s14BiomeSQLParser26PgQuery_ConvertRowtypeExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ConvertRowtypeExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #27 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CollateExpr = type metadata accessor for PgQuery_CollateExpr(0);
  v6 = *(CollateExpr - 8);
  v7 = MEMORY[0x28223BE20](CollateExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CollateExpr;
  v26 = CollateExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CollateExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CollateExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CollateExpr and conformance PgQuery_CollateExpr, type metadata accessor for PgQuery_CollateExpr, &protocol conformance descriptor for PgQuery_CollateExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CollateExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMd, &_s14BiomeSQLParser19PgQuery_CollateExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CollateExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #28 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CaseExpr = type metadata accessor for PgQuery_CaseExpr(0);
  v6 = *(CaseExpr - 8);
  v7 = MEMORY[0x28223BE20](CaseExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CaseExpr;
  v26 = CaseExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CaseExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CaseExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseExpr and conformance PgQuery_CaseExpr, type metadata accessor for PgQuery_CaseExpr, &protocol conformance descriptor for PgQuery_CaseExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CaseExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMd, &_s14BiomeSQLParser16PgQuery_CaseExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CaseExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #29 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CaseWhen = type metadata accessor for PgQuery_CaseWhen(0);
  v6 = *(CaseWhen - 8);
  v7 = MEMORY[0x28223BE20](CaseWhen);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CaseWhen;
  v26 = CaseWhen;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CaseWhen);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CaseWhen);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseWhen and conformance PgQuery_CaseWhen, type metadata accessor for PgQuery_CaseWhen, &protocol conformance descriptor for PgQuery_CaseWhen);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CaseWhen);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMd, &_s14BiomeSQLParser16PgQuery_CaseWhenVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CaseWhen);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #30 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CaseTestExpr = type metadata accessor for PgQuery_CaseTestExpr(0);
  v6 = *(CaseTestExpr - 8);
  v7 = MEMORY[0x28223BE20](CaseTestExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CaseTestExpr;
  v26 = CaseTestExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CaseTestExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CaseTestExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CaseTestExpr and conformance PgQuery_CaseTestExpr, type metadata accessor for PgQuery_CaseTestExpr, &protocol conformance descriptor for PgQuery_CaseTestExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CaseTestExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMd, &_s14BiomeSQLParser20PgQuery_CaseTestExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CaseTestExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #31 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ArrayExpr = type metadata accessor for PgQuery_ArrayExpr(0);
  v6 = *(ArrayExpr - 8);
  v7 = MEMORY[0x28223BE20](ArrayExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ArrayExpr;
  v26 = ArrayExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ArrayExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ArrayExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ArrayExpr and conformance PgQuery_ArrayExpr, type metadata accessor for PgQuery_ArrayExpr, &protocol conformance descriptor for PgQuery_ArrayExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ArrayExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMd, &_s14BiomeSQLParser17PgQuery_ArrayExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ArrayExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #32 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RowExpr = type metadata accessor for PgQuery_RowExpr(0);
  v6 = *(RowExpr - 8);
  v7 = MEMORY[0x28223BE20](RowExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RowExpr;
  v26 = RowExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RowExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RowExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowExpr and conformance PgQuery_RowExpr, type metadata accessor for PgQuery_RowExpr, &protocol conformance descriptor for PgQuery_RowExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RowExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RowExprVSgMd, &_s14BiomeSQLParser15PgQuery_RowExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RowExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #33 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RowCompareExpr = type metadata accessor for PgQuery_RowCompareExpr(0);
  v6 = *(RowCompareExpr - 8);
  v7 = MEMORY[0x28223BE20](RowCompareExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RowCompareExpr;
  v26 = RowCompareExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RowCompareExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RowCompareExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RowCompareExpr and conformance PgQuery_RowCompareExpr, type metadata accessor for PgQuery_RowCompareExpr, &protocol conformance descriptor for PgQuery_RowCompareExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RowCompareExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMd, &_s14BiomeSQLParser22PgQuery_RowCompareExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RowCompareExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #34 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CoalesceExpr = type metadata accessor for PgQuery_CoalesceExpr(0);
  v6 = *(CoalesceExpr - 8);
  v7 = MEMORY[0x28223BE20](CoalesceExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CoalesceExpr;
  v26 = CoalesceExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CoalesceExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CoalesceExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoalesceExpr and conformance PgQuery_CoalesceExpr, type metadata accessor for PgQuery_CoalesceExpr, &protocol conformance descriptor for PgQuery_CoalesceExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CoalesceExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMd, &_s14BiomeSQLParser20PgQuery_CoalesceExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CoalesceExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #35 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  MinMaxExpr = type metadata accessor for PgQuery_MinMaxExpr(0);
  v6 = *(MinMaxExpr - 8);
  v7 = MEMORY[0x28223BE20](MinMaxExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = MinMaxExpr;
  v26 = MinMaxExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_MinMaxExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_MinMaxExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_MinMaxExpr and conformance PgQuery_MinMaxExpr, type metadata accessor for PgQuery_MinMaxExpr, &protocol conformance descriptor for PgQuery_MinMaxExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_MinMaxExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMd, &_s14BiomeSQLParser18PgQuery_MinMaxExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_MinMaxExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #36 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SQLValueFunction = type metadata accessor for PgQuery_SQLValueFunction(0);
  v6 = *(SQLValueFunction - 8);
  v7 = MEMORY[0x28223BE20](SQLValueFunction);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SQLValueFunction;
  v26 = SQLValueFunction;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SQLValueFunction);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SQLValueFunction);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SQLValueFunction and conformance PgQuery_SQLValueFunction, type metadata accessor for PgQuery_SQLValueFunction, &protocol conformance descriptor for PgQuery_SQLValueFunction);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SQLValueFunction);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMd, &_s14BiomeSQLParser24PgQuery_SQLValueFunctionVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SQLValueFunction);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #37 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  XmlExpr = type metadata accessor for PgQuery_XmlExpr(0);
  v6 = *(XmlExpr - 8);
  v7 = MEMORY[0x28223BE20](XmlExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = XmlExpr;
  v26 = XmlExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_XmlExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_XmlExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_XmlExpr and conformance PgQuery_XmlExpr, type metadata accessor for PgQuery_XmlExpr, &protocol conformance descriptor for PgQuery_XmlExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_XmlExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMd, &_s14BiomeSQLParser15PgQuery_XmlExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_XmlExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #38 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  NullTest = type metadata accessor for PgQuery_NullTest(0);
  v6 = *(NullTest - 8);
  v7 = MEMORY[0x28223BE20](NullTest);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = NullTest;
  v26 = NullTest;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_NullTest);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_NullTest);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NullTest and conformance PgQuery_NullTest, type metadata accessor for PgQuery_NullTest, &protocol conformance descriptor for PgQuery_NullTest);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_NullTest);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_NullTestVSgMd, &_s14BiomeSQLParser16PgQuery_NullTestVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_NullTest);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #39 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  BooleanTest = type metadata accessor for PgQuery_BooleanTest(0);
  v6 = *(BooleanTest - 8);
  v7 = MEMORY[0x28223BE20](BooleanTest);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = BooleanTest;
  v26 = BooleanTest;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_BooleanTest);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_BooleanTest);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_BooleanTest and conformance PgQuery_BooleanTest, type metadata accessor for PgQuery_BooleanTest, &protocol conformance descriptor for PgQuery_BooleanTest);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_BooleanTest);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMd, &_s14BiomeSQLParser19PgQuery_BooleanTestVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_BooleanTest);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #40 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CoerceToDomain = type metadata accessor for PgQuery_CoerceToDomain(0);
  v6 = *(CoerceToDomain - 8);
  v7 = MEMORY[0x28223BE20](CoerceToDomain);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CoerceToDomain;
  v26 = CoerceToDomain;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CoerceToDomain);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CoerceToDomain);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomain and conformance PgQuery_CoerceToDomain, type metadata accessor for PgQuery_CoerceToDomain, &protocol conformance descriptor for PgQuery_CoerceToDomain);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CoerceToDomain);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMd, &_s14BiomeSQLParser22PgQuery_CoerceToDomainVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CoerceToDomain);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #41 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CoerceToDomainValue = type metadata accessor for PgQuery_CoerceToDomainValue(0);
  v6 = *(CoerceToDomainValue - 8);
  v7 = MEMORY[0x28223BE20](CoerceToDomainValue);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CoerceToDomainValue;
  v26 = CoerceToDomainValue;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CoerceToDomainValue);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CoerceToDomainValue);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CoerceToDomainValue and conformance PgQuery_CoerceToDomainValue, type metadata accessor for PgQuery_CoerceToDomainValue, &protocol conformance descriptor for PgQuery_CoerceToDomainValue);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CoerceToDomainValue);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMd, &_s14BiomeSQLParser27PgQuery_CoerceToDomainValueVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CoerceToDomainValue);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #42 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SetToDefault = type metadata accessor for PgQuery_SetToDefault(0);
  v6 = *(SetToDefault - 8);
  v7 = MEMORY[0x28223BE20](SetToDefault);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SetToDefault;
  v26 = SetToDefault;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SetToDefault);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SetToDefault);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetToDefault and conformance PgQuery_SetToDefault, type metadata accessor for PgQuery_SetToDefault, &protocol conformance descriptor for PgQuery_SetToDefault);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SetToDefault);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMd, &_s14BiomeSQLParser20PgQuery_SetToDefaultVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SetToDefault);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #43 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CurrentOfExpr = type metadata accessor for PgQuery_CurrentOfExpr(0);
  v6 = *(CurrentOfExpr - 8);
  v7 = MEMORY[0x28223BE20](CurrentOfExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CurrentOfExpr;
  v26 = CurrentOfExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CurrentOfExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CurrentOfExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CurrentOfExpr and conformance PgQuery_CurrentOfExpr, type metadata accessor for PgQuery_CurrentOfExpr, &protocol conformance descriptor for PgQuery_CurrentOfExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CurrentOfExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMd, &_s14BiomeSQLParser21PgQuery_CurrentOfExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CurrentOfExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #44 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  NextValueExpr = type metadata accessor for PgQuery_NextValueExpr(0);
  v6 = *(NextValueExpr - 8);
  v7 = MEMORY[0x28223BE20](NextValueExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = NextValueExpr;
  v26 = NextValueExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_NextValueExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_NextValueExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_NextValueExpr and conformance PgQuery_NextValueExpr, type metadata accessor for PgQuery_NextValueExpr, &protocol conformance descriptor for PgQuery_NextValueExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_NextValueExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMd, &_s14BiomeSQLParser21PgQuery_NextValueExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_NextValueExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #45 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  InferenceElem = type metadata accessor for PgQuery_InferenceElem(0);
  v6 = *(InferenceElem - 8);
  v7 = MEMORY[0x28223BE20](InferenceElem);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = InferenceElem;
  v26 = InferenceElem;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_InferenceElem);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_InferenceElem);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InferenceElem and conformance PgQuery_InferenceElem, type metadata accessor for PgQuery_InferenceElem, &protocol conformance descriptor for PgQuery_InferenceElem);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_InferenceElem);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMd, &_s14BiomeSQLParser21PgQuery_InferenceElemVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_InferenceElem);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #46 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TargetEntry = type metadata accessor for PgQuery_TargetEntry(0);
  v6 = *(TargetEntry - 8);
  v7 = MEMORY[0x28223BE20](TargetEntry);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TargetEntry;
  v26 = TargetEntry;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 45)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TargetEntry);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TargetEntry);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TargetEntry and conformance PgQuery_TargetEntry, type metadata accessor for PgQuery_TargetEntry, &protocol conformance descriptor for PgQuery_TargetEntry);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TargetEntry);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMd, &_s14BiomeSQLParser19PgQuery_TargetEntryVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TargetEntry);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #47 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RangeTblRef = type metadata accessor for PgQuery_RangeTblRef(0);
  v6 = *(RangeTblRef - 8);
  v7 = MEMORY[0x28223BE20](RangeTblRef);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RangeTblRef;
  v26 = RangeTblRef;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 46)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RangeTblRef);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RangeTblRef);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RangeTblRef and conformance PgQuery_RangeTblRef, type metadata accessor for PgQuery_RangeTblRef, &protocol conformance descriptor for PgQuery_RangeTblRef);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RangeTblRef);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMd, &_s14BiomeSQLParser19PgQuery_RangeTblRefVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RangeTblRef);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #48 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  JoinExpr = type metadata accessor for PgQuery_JoinExpr(0);
  v6 = *(JoinExpr - 8);
  v7 = MEMORY[0x28223BE20](JoinExpr);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = JoinExpr;
  v26 = JoinExpr;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 47)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_JoinExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_JoinExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_JoinExpr and conformance PgQuery_JoinExpr, type metadata accessor for PgQuery_JoinExpr, &protocol conformance descriptor for PgQuery_JoinExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_JoinExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMd, &_s14BiomeSQLParser16PgQuery_JoinExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_JoinExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #49 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_FromExpr(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 48)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FromExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FromExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FromExpr and conformance PgQuery_FromExpr, type metadata accessor for PgQuery_FromExpr, &protocol conformance descriptor for PgQuery_FromExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FromExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_FromExprVSgMd, &_s14BiomeSQLParser16PgQuery_FromExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FromExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #50 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_OnConflictExpr(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 49)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_OnConflictExpr);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_OnConflictExpr);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_OnConflictExpr and conformance PgQuery_OnConflictExpr, type metadata accessor for PgQuery_OnConflictExpr, &protocol conformance descriptor for PgQuery_OnConflictExpr);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_OnConflictExpr);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMd, &_s14BiomeSQLParser22PgQuery_OnConflictExprVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_OnConflictExpr);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #51 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  IntoClause = type metadata accessor for PgQuery_IntoClause(0);
  v6 = *(IntoClause - 8);
  v7 = MEMORY[0x28223BE20](IntoClause);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = IntoClause;
  v26 = IntoClause;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 50)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_IntoClause);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_IntoClause);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IntoClause and conformance PgQuery_IntoClause, type metadata accessor for PgQuery_IntoClause, &protocol conformance descriptor for PgQuery_IntoClause);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_IntoClause);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMd, &_s14BiomeSQLParser18PgQuery_IntoClauseVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_IntoClause);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #52 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  RawStmt = type metadata accessor for PgQuery_RawStmt(0);
  v6 = *(RawStmt - 8);
  v7 = MEMORY[0x28223BE20](RawStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = RawStmt;
  v26 = RawStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 51)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_RawStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_RawStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_RawStmt and conformance PgQuery_RawStmt, type metadata accessor for PgQuery_RawStmt, &protocol conformance descriptor for PgQuery_RawStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_RawStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMd, &_s14BiomeSQLParser15PgQuery_RawStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_RawStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #53 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Query = type metadata accessor for PgQuery_Query(0);
  v6 = *(Query - 8);
  v7 = MEMORY[0x28223BE20](Query);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Query;
  v26 = Query;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 52)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_Query);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_Query);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_Query and conformance PgQuery_Query, type metadata accessor for PgQuery_Query, &protocol conformance descriptor for PgQuery_Query);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_Query);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser08PgQuery_D0VSgMd, &_s14BiomeSQLParser08PgQuery_D0VSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_Query);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #54 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  InsertStmt = type metadata accessor for PgQuery_InsertStmt(0);
  v6 = *(InsertStmt - 8);
  v7 = MEMORY[0x28223BE20](InsertStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = InsertStmt;
  v26 = InsertStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 53)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_InsertStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_InsertStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_InsertStmt and conformance PgQuery_InsertStmt, type metadata accessor for PgQuery_InsertStmt, &protocol conformance descriptor for PgQuery_InsertStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_InsertStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMd, &_s14BiomeSQLParser18PgQuery_InsertStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_InsertStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #55 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  v5 = type metadata accessor for PgQuery_DeleteStmt(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 54)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DeleteStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DeleteStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DeleteStmt and conformance PgQuery_DeleteStmt, type metadata accessor for PgQuery_DeleteStmt, &protocol conformance descriptor for PgQuery_DeleteStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DeleteStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DeleteStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DeleteStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #56 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  UpdateStmt = type metadata accessor for PgQuery_UpdateStmt(0);
  v6 = *(UpdateStmt - 8);
  v7 = MEMORY[0x28223BE20](UpdateStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = UpdateStmt;
  v26 = UpdateStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 55)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_UpdateStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_UpdateStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_UpdateStmt and conformance PgQuery_UpdateStmt, type metadata accessor for PgQuery_UpdateStmt, &protocol conformance descriptor for PgQuery_UpdateStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_UpdateStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_UpdateStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_UpdateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #57 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SelectStmt = type metadata accessor for PgQuery_SelectStmt(0);
  v6 = *(SelectStmt - 8);
  v7 = MEMORY[0x28223BE20](SelectStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SelectStmt;
  v26 = SelectStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 56)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SelectStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SelectStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SelectStmt and conformance PgQuery_SelectStmt, type metadata accessor for PgQuery_SelectStmt, &protocol conformance descriptor for PgQuery_SelectStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SelectStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMd, &_s14BiomeSQLParser18PgQuery_SelectStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SelectStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #58 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTableStmt = type metadata accessor for PgQuery_AlterTableStmt(0);
  v6 = *(AlterTableStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterTableStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTableStmt;
  v26 = AlterTableStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 57)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTableStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTableStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableStmt and conformance PgQuery_AlterTableStmt, type metadata accessor for PgQuery_AlterTableStmt, &protocol conformance descriptor for PgQuery_AlterTableStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTableStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMd, &_s14BiomeSQLParser22PgQuery_AlterTableStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTableStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #59 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterTableCmd = type metadata accessor for PgQuery_AlterTableCmd(0);
  v6 = *(AlterTableCmd - 8);
  v7 = MEMORY[0x28223BE20](AlterTableCmd);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterTableCmd;
  v26 = AlterTableCmd;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 58)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterTableCmd);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterTableCmd);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterTableCmd and conformance PgQuery_AlterTableCmd, type metadata accessor for PgQuery_AlterTableCmd, &protocol conformance descriptor for PgQuery_AlterTableCmd);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterTableCmd);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMd, &_s14BiomeSQLParser21PgQuery_AlterTableCmdVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterTableCmd);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #60 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterDomainStmt = type metadata accessor for PgQuery_AlterDomainStmt(0);
  v6 = *(AlterDomainStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterDomainStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterDomainStmt;
  v26 = AlterDomainStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 59)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterDomainStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterDomainStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDomainStmt and conformance PgQuery_AlterDomainStmt, type metadata accessor for PgQuery_AlterDomainStmt, &protocol conformance descriptor for PgQuery_AlterDomainStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterDomainStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMd, &_s14BiomeSQLParser23PgQuery_AlterDomainStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterDomainStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #61 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  SetOperationStmt = type metadata accessor for PgQuery_SetOperationStmt(0);
  v6 = *(SetOperationStmt - 8);
  v7 = MEMORY[0x28223BE20](SetOperationStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = SetOperationStmt;
  v26 = SetOperationStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 60)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_SetOperationStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_SetOperationStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_SetOperationStmt and conformance PgQuery_SetOperationStmt, type metadata accessor for PgQuery_SetOperationStmt, &protocol conformance descriptor for PgQuery_SetOperationStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_SetOperationStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMd, &_s14BiomeSQLParser24PgQuery_SetOperationStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_SetOperationStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #62 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  GrantStmt = type metadata accessor for PgQuery_GrantStmt(0);
  v6 = *(GrantStmt - 8);
  v7 = MEMORY[0x28223BE20](GrantStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = GrantStmt;
  v26 = GrantStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 61)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_GrantStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_GrantStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantStmt and conformance PgQuery_GrantStmt, type metadata accessor for PgQuery_GrantStmt, &protocol conformance descriptor for PgQuery_GrantStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_GrantStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMd, &_s14BiomeSQLParser17PgQuery_GrantStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_GrantStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #63 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  GrantRoleStmt = type metadata accessor for PgQuery_GrantRoleStmt(0);
  v6 = *(GrantRoleStmt - 8);
  v7 = MEMORY[0x28223BE20](GrantRoleStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = GrantRoleStmt;
  v26 = GrantRoleStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 62)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_GrantRoleStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_GrantRoleStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_GrantRoleStmt and conformance PgQuery_GrantRoleStmt, type metadata accessor for PgQuery_GrantRoleStmt, &protocol conformance descriptor for PgQuery_GrantRoleStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_GrantRoleStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMd, &_s14BiomeSQLParser21PgQuery_GrantRoleStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_GrantRoleStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #64 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  AlterDefaultPrivilegesStmt = type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt(0);
  v6 = *(AlterDefaultPrivilegesStmt - 8);
  v7 = MEMORY[0x28223BE20](AlterDefaultPrivilegesStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = AlterDefaultPrivilegesStmt;
  v26 = AlterDefaultPrivilegesStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 63)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_AlterDefaultPrivilegesStmt and conformance PgQuery_AlterDefaultPrivilegesStmt, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt, &protocol conformance descriptor for PgQuery_AlterDefaultPrivilegesStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMd, &_s14BiomeSQLParser34PgQuery_AlterDefaultPrivilegesStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_AlterDefaultPrivilegesStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #65 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ClosePortalStmt = type metadata accessor for PgQuery_ClosePortalStmt(0);
  v6 = *(ClosePortalStmt - 8);
  v7 = MEMORY[0x28223BE20](ClosePortalStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ClosePortalStmt;
  v26 = ClosePortalStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 64)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ClosePortalStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ClosePortalStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClosePortalStmt and conformance PgQuery_ClosePortalStmt, type metadata accessor for PgQuery_ClosePortalStmt, &protocol conformance descriptor for PgQuery_ClosePortalStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ClosePortalStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMd, &_s14BiomeSQLParser23PgQuery_ClosePortalStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ClosePortalStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #66 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  ClusterStmt = type metadata accessor for PgQuery_ClusterStmt(0);
  v6 = *(ClusterStmt - 8);
  v7 = MEMORY[0x28223BE20](ClusterStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = ClusterStmt;
  v26 = ClusterStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 65)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_ClusterStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_ClusterStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_ClusterStmt and conformance PgQuery_ClusterStmt, type metadata accessor for PgQuery_ClusterStmt, &protocol conformance descriptor for PgQuery_ClusterStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_ClusterStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMd, &_s14BiomeSQLParser19PgQuery_ClusterStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_ClusterStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #67 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CopyStmt = type metadata accessor for PgQuery_CopyStmt(0);
  v6 = *(CopyStmt - 8);
  v7 = MEMORY[0x28223BE20](CopyStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CopyStmt;
  v26 = CopyStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 66)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CopyStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CopyStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CopyStmt and conformance PgQuery_CopyStmt, type metadata accessor for PgQuery_CopyStmt, &protocol conformance descriptor for PgQuery_CopyStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CopyStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMd, &_s14BiomeSQLParser16PgQuery_CopyStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CopyStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #68 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Stmt = type metadata accessor for PgQuery_CreateStmt(0);
  v6 = *(Stmt - 8);
  v7 = MEMORY[0x28223BE20](Stmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Stmt;
  v26 = Stmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 67)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateStmt and conformance PgQuery_CreateStmt, type metadata accessor for PgQuery_CreateStmt, &protocol conformance descriptor for PgQuery_CreateStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMd, &_s14BiomeSQLParser18PgQuery_CreateStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #69 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DefineStmt = type metadata accessor for PgQuery_DefineStmt(0);
  v6 = *(DefineStmt - 8);
  v7 = MEMORY[0x28223BE20](DefineStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DefineStmt;
  v26 = DefineStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 68)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DefineStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DefineStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DefineStmt and conformance PgQuery_DefineStmt, type metadata accessor for PgQuery_DefineStmt, &protocol conformance descriptor for PgQuery_DefineStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DefineStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMd, &_s14BiomeSQLParser18PgQuery_DefineStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DefineStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #70 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  DropStmt = type metadata accessor for PgQuery_DropStmt(0);
  v6 = *(DropStmt - 8);
  v7 = MEMORY[0x28223BE20](DropStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = DropStmt;
  v26 = DropStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 69)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_DropStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_DropStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_DropStmt and conformance PgQuery_DropStmt, type metadata accessor for PgQuery_DropStmt, &protocol conformance descriptor for PgQuery_DropStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_DropStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMd, &_s14BiomeSQLParser16PgQuery_DropStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_DropStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #71 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  TruncateStmt = type metadata accessor for PgQuery_TruncateStmt(0);
  v6 = *(TruncateStmt - 8);
  v7 = MEMORY[0x28223BE20](TruncateStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = TruncateStmt;
  v26 = TruncateStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 70)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_TruncateStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_TruncateStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_TruncateStmt and conformance PgQuery_TruncateStmt, type metadata accessor for PgQuery_TruncateStmt, &protocol conformance descriptor for PgQuery_TruncateStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_TruncateStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMd, &_s14BiomeSQLParser20PgQuery_TruncateStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_TruncateStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #72 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  CommentStmt = type metadata accessor for PgQuery_CommentStmt(0);
  v6 = *(CommentStmt - 8);
  v7 = MEMORY[0x28223BE20](CommentStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = CommentStmt;
  v26 = CommentStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 71)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CommentStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CommentStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CommentStmt and conformance PgQuery_CommentStmt, type metadata accessor for PgQuery_CommentStmt, &protocol conformance descriptor for PgQuery_CommentStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CommentStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMd, &_s14BiomeSQLParser19PgQuery_CommentStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CommentStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #73 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  Stmt = type metadata accessor for PgQuery_FetchStmt(0);
  v6 = *(Stmt - 8);
  v7 = MEMORY[0x28223BE20](Stmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = Stmt;
  v26 = Stmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 72)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_FetchStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_FetchStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_FetchStmt and conformance PgQuery_FetchStmt, type metadata accessor for PgQuery_FetchStmt, &protocol conformance descriptor for PgQuery_FetchStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_FetchStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMd, &_s14BiomeSQLParser17PgQuery_FetchStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_FetchStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #74 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  IndexStmt = type metadata accessor for PgQuery_IndexStmt(0);
  v6 = *(IndexStmt - 8);
  v7 = MEMORY[0x28223BE20](IndexStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = IndexStmt;
  v26 = IndexStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 73)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_IndexStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_IndexStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_IndexStmt and conformance PgQuery_IndexStmt, type metadata accessor for PgQuery_IndexStmt, &protocol conformance descriptor for PgQuery_IndexStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_IndexStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMd, &_s14BiomeSQLParser17PgQuery_IndexStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_IndexStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}

uint64_t closure #75 in closure #1 in PgQuery_Node.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v48 = a2;
  v49 = a3;
  FunctionStmt = type metadata accessor for PgQuery_CreateFunctionStmt(0);
  v6 = *(FunctionStmt - 8);
  v7 = MEMORY[0x28223BE20](FunctionStmt);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PgQuery_Node.OneOf_Node(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v45 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - v23;
  v44 = v6;
  v25 = *(v6 + 56);
  v47 = FunctionStmt;
  v26 = FunctionStmt;
  v27 = v25;
  v25(&v38 - v23, 1, 1, v26);
  v41 = a1;
  v39 = OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node;
  outlined init with copy of PgQuery_Alias?(a1 + OBJC_IVAR____TtCV14BiomeSQLParser12PgQuery_NodeP33_A784F7F2ED97E043416F18646CF1BF1713_StorageClass__node, v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
  v40 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    outlined destroy of URL?(v12, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    v29 = v47;
    v30 = v13;
  }

  else
  {
    outlined init with take of PgQuery_OidList(v12, v19, type metadata accessor for PgQuery_Node.OneOf_Node);
    outlined init with take of PgQuery_OidList(v19, v17, type metadata accessor for PgQuery_Node.OneOf_Node);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 74)
    {
      outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
      v31 = v43;
      outlined init with take of PgQuery_OidList(v17, v43, type metadata accessor for PgQuery_CreateFunctionStmt);
      outlined init with take of PgQuery_OidList(v31, v24, type metadata accessor for PgQuery_CreateFunctionStmt);
      v29 = v47;
      v27(v24, 0, 1, v47);
    }

    else
    {
      outlined destroy of PgQuery_OidList(v17, type metadata accessor for PgQuery_Node.OneOf_Node);
      v29 = v47;
    }
  }

  v32 = v45;
  lazy protocol witness table accessor for type PgQuery_ScanToken and conformance PgQuery_ScanToken(&lazy protocol witness table cache variable for type PgQuery_CreateFunctionStmt and conformance PgQuery_CreateFunctionStmt, type metadata accessor for PgQuery_CreateFunctionStmt, &protocol conformance descriptor for PgQuery_CreateFunctionStmt);
  v33 = v46;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v33)
  {
    return outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  }

  outlined init with copy of PgQuery_Alias?(v24, v32, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  if ((*(v44 + 48))(v32, 1, v29) == 1)
  {
    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
    return outlined destroy of URL?(v32, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
  }

  else
  {
    v35 = v42;
    outlined init with take of PgQuery_OidList(v32, v42, type metadata accessor for PgQuery_CreateFunctionStmt);
    if (v28 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of URL?(v24, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMd, &_s14BiomeSQLParser26PgQuery_CreateFunctionStmtVSgMR);
    v36 = v41;
    v37 = v39;
    outlined destroy of URL?(v41 + v39, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMd, &_s14BiomeSQLParser12PgQuery_NodeV06OneOf_E0OSgMR);
    outlined init with take of PgQuery_OidList(v35, v36 + v37, type metadata accessor for PgQuery_CreateFunctionStmt);
    swift_storeEnumTagMultiPayload();
    return (*(v40 + 56))(v36 + v37, 0, 1, v30);
  }
}