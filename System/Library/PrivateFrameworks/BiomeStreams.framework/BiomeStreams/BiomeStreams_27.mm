uint64_t NameListToString(uint64_t a1, double a2)
{
  memset(v6, 0, sizeof(v6));
  initStringInfo(v6, a2);
  if (a1 && *(a1 + 4) >= 1)
  {
    v3 = **(a1 + 16);
    if (*v3 != 223)
    {
      if (*v3 != 351)
      {
        goto LABEL_14;
      }

      appendStringInfoChar(v6, 42);
      if (*(a1 + 4) < 2)
      {
        return v6[0];
      }

LABEL_8:
      v4 = 1;
      while (1)
      {
        while (1)
        {
          v3 = *(*(a1 + 16) + 8 * v4);
          appendStringInfoChar(v6, 46);
          if (*v3 != 351)
          {
            break;
          }

          appendStringInfoChar(v6, 42);
          if (++v4 >= *(a1 + 4))
          {
            return v6[0];
          }
        }

        if (*v3 != 223)
        {
          break;
        }

        appendStringInfoString(v6, *(v3 + 8));
        if (++v4 >= *(a1 + 4))
        {
          return v6[0];
        }
      }

LABEL_14:
      NameListToString_cold_1(v3);
    }

    appendStringInfoString(v6, *(v3 + 8));
    if (*(a1 + 4) >= 2)
    {
      goto LABEL_8;
    }
  }

  return v6[0];
}

void NameListToString_cold_1(_DWORD *a1)
{
  errstart(20, 0);
  errmsg_internal("unexpected node type in name list: %d", *a1);
  errfinish("src/postgres/src_backend_catalog_namespace.c", 736, "NameListToString");
  __break(1u);
}

uint64_t defGetInt32(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    defGetInt32_cold_2(a1);
  }

  if (*v1 != 221)
  {
    defGetInt32_cold_1(a1);
  }

  return v1[2];
}

void defGetInt32_cold_1(uint64_t a1)
{
  errstart(20, 0);
  errcode();
  errmsg("%s requires an integer value", *(a1 + 16));
  errfinish("src/postgres/src_backend_commands_define.c", 85, "defGetInt32");
  __break(1u);
}

void defGetInt32_cold_2(uint64_t a1)
{
  errstart(20, 0);
  errcode();
  errmsg("%s requires an integer value", *(a1 + 16));
  errfinish("src/postgres/src_backend_commands_define.c", 76, "defGetInt32");
  __break(1u);
}

int *bms_copy(int *result, double a2)
{
  if (result)
  {
    v2 = 8 * *result;
    v3 = result;
    v4 = palloc(v2 + 8, a2);

    return memcpy(v4, v3, v2 + 8);
  }

  return result;
}

BOOL bms_equal(unsigned int *a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = *a1;
    if (a2)
    {
      v3 = *a2;
      if (v2 >= *a2)
      {
        v4 = v3;
      }

      else
      {
        v4 = v2;
      }

      if (v2 <= v3)
      {
        v5 = *a2;
      }

      else
      {
        v5 = *a1;
      }

      if (v2 <= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      if (v4 >= 1)
      {
        if (v2 <= v3)
        {
          v7 = a1;
        }

        else
        {
          v7 = a2;
        }

        v8 = (v7 + 2);
        v9 = (v6 + 2);
        v10 = v4;
        do
        {
          v12 = *v8++;
          v11 = v12;
          v13 = *v9++;
          if (v11 != v13)
          {
            return 0;
          }

          --v10;
        }

        while (v10);
        if (v4 >= v5)
        {
          return 1;
        }

        goto LABEL_39;
      }

      LODWORD(v4) = 0;
      if (v5 > 0)
      {
LABEL_39:
        v28 = ~v4 + v5;
        v29 = &v6[2 * v4 + 2];
        do
        {
          v31 = *v29;
          v29 += 2;
          v30 = v31;
          result = v31 == 0;
          v21 = v28-- != 0;
          v32 = v21;
        }

        while (!v30 && (v32 & 1) != 0);
        return result;
      }

      return 1;
    }

    if (v2 < 1)
    {
      return 1;
    }

    v23 = a1 + 2;
    v24 = v2 - 1;
    do
    {
      v26 = *v23;
      v23 += 2;
      v25 = v26;
      result = v26 == 0;
      v21 = v24-- != 0;
      v27 = v21;
    }

    while (!v25 && (v27 & 1) != 0);
  }

  else
  {
    if (!a2)
    {
      return 1;
    }

    v16 = *a2;
    v14 = (a2 + 2);
    v15 = v16;
    if (v16 < 1)
    {
      return 1;
    }

    v17 = v15 - 1;
    do
    {
      v19 = *v14++;
      v18 = v19;
      result = v19 == 0;
      v21 = v17-- != 0;
      v22 = v21;
    }

    while (!v18 && (v22 & 1) != 0);
  }

  return result;
}

BOOL bms_is_empty(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *a1;
  v1 = (a1 + 2);
  v2 = v3;
  if (v3 < 1)
  {
    return 1;
  }

  v4 = v2 - 1;
  do
  {
    v6 = *v1++;
    v5 = v6;
    v7 = v6 == 0;
    v9 = v4-- != 0;
  }

  while (!v5 && v9);
  return v7;
}

uint64_t bms_free(uint64_t result)
{
  if (result)
  {
    return pfree(result);
  }

  return result;
}

uint64_t bms_num_members(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *a1;
  if (v1 >= 1)
  {
    v2 = 0;
    v3 = a1 + 2;
    do
    {
      v5 = *v3;
      v3 += 2;
      v4 = v5;
      if (v5)
      {
        v2 = pg_popcount64(v4) + v2;
      }

      --v1;
    }

    while (v1);
    return v2;
  }

  return 0;
}

uint64_t bms_first_member(_DWORD *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *a1;
  if (*a1 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  for (i = (a1 + 2); ; ++i)
  {
    v4 = *i;
    if (*i)
    {
      break;
    }

    v2 -= 64;
    if (!--v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  *i = (v4 - 1) & v4;
  return __clz(__rbit64(v4)) - v2;
}

uint64_t bms_next_member(int *a1, int a2)
{
  if (a1)
  {
    v2 = *a1;
    v3 = a2 + 64;
    if (a2 + 1 >= 0)
    {
      v3 = a2 + 1;
    }

    v4 = v3 >> 6;
    if (v4 < v2)
    {
      v5 = &a1[2 * v4];
      v6 = *(v5 + 1) & (-1 << (a2 + 1 - (v4 << 6)));
      if (v6)
      {
        return __clz(__rbit64(v6)) | (v4 << 6);
      }

      if (++v4 != v2)
      {
        v8 = (v5 + 4);
        result = 4294967294;
        while (1)
        {
          v9 = *v8++;
          v6 = v9;
          if (v9)
          {
            break;
          }

          if (v2 == ++v4)
          {
            return result;
          }
        }

        return __clz(__rbit64(v6)) | (v4 << 6);
      }
    }
  }

  return 4294967294;
}

void copyObjectImpl(int *result)
{
  if (result)
  {
    check_stack_depth();
    switch(*result)
    {
      case 9:

        _copyPlan(result, v2);
        return;
      case 10:

        _copyResult(result, v2);
        return;
      case 11:

        _copyProjectSet(result, v2);
        return;
      case 12:

        _copyModifyTable(result, v2);
        return;
      case 13:

        _copyAppend(result, v2);
        return;
      case 14:

        _copyMergeAppend(result, v2);
        return;
      case 15:

        _copyRecursiveUnion(result, v2);
        return;
      case 16:

        _copyBitmapAnd(result, v2);
        return;
      case 17:

        _copyBitmapOr(result, v2);
        return;
      case 18:

        _copyScan(result, v2);
        return;
      case 19:

        _copySeqScan(result, v2);
        return;
      case 20:

        _copySampleScan(result, v2);
        return;
      case 21:

        _copyIndexScan(result, v2);
        return;
      case 22:

        _copyIndexOnlyScan(result, v2);
        return;
      case 23:

        _copyBitmapIndexScan(result, v2);
        return;
      case 24:

        _copyBitmapHeapScan(result, v2);
        return;
      case 25:

        _copyTidScan(result, v2);
        return;
      case 26:

        _copySubqueryScan(result, v2);
        return;
      case 27:

        _copyFunctionScan(result, v2);
        return;
      case 28:

        _copyValuesScan(result, v2);
        return;
      case 29:

        _copyTableFuncScan(result, v2);
        return;
      case 30:

        _copyCteScan(result, v2);
        return;
      case 31:

        _copyNamedTuplestoreScan(result, v2);
        return;
      case 32:

        _copyWorkTableScan(result, v2);
        return;
      case 33:

        _copyForeignScan(result, v2);
        return;
      case 34:

        _copyCustomScan(result, v2);
        return;
      case 35:

        _copyJoin(result, v2);
        return;
      case 36:

        _copyNestLoop(result, v2);
        return;
      case 37:

        _copyMergeJoin(result, v2);
        return;
      case 38:

        _copyHashJoin(result, v2);
        return;
      case 39:

        _copyMaterial(result, v2);
        return;
      case 40:

        _copySort(result, v2);
        return;
      case 41:

        _copyIncrementalSort(result, v2);
        return;
      case 42:

        _copyGroup(result, v2);
        return;
      case 43:

        _copyAgg(result, v2);
        return;
      case 44:

        _copyWindowAgg(result, v2);
        return;
      case 45:

        _copyUnique(result, v2);
        return;
      case 46:

        _copyGather(result, v2);
        return;
      case 47:

        _copyGatherMerge(result, v2);
        return;
      case 48:

        _copyHash(result, v2);
        return;
      case 49:

        _copySetOp(result, v2);
        return;
      case 50:

        _copyLockRows(result, v2);
        return;
      case 51:

        _copyLimit(result, v2);
        return;
      case 52:

        _copyNestLoopParam(result, v2);
        return;
      case 53:

        _copyPlanRowMark(result, v2);
        return;
      case 54:

        _copyPartitionPruneInfo(result, v2);
        return;
      case 55:

        _copyPartitionedRelPruneInfo(result, v2);
        return;
      case 56:

        _copyPartitionPruneStepOp(result, v2);
        return;
      case 57:

        _copyPartitionPruneStepCombine(result, v2);
        return;
      case 58:
        v13 = CurrentMemoryContext(v2);
        v4 = MemoryContextAllocZero(*v13, 0xCuLL);
        v5 = 58;
        goto LABEL_239;
      case 102:

        _copyAlias(result, v2);
        return;
      case 103:

        _copyRangeVar(result, v2);
        return;
      case 104:

        _copyTableFunc(result, v2);
        return;
      case 106:

        _copyVar(result, v2);
        return;
      case 107:

        _copyConst(result, v2);
        return;
      case 108:

        _copyParam(result, v2);
        return;
      case 109:

        _copyAggref(result, v2);
        return;
      case 110:

        _copyGroupingFunc(result, v2);
        return;
      case 111:

        _copyWindowFunc(result, v2);
        return;
      case 112:

        _copySubscriptingRef(result, v2);
        return;
      case 113:

        _copyFuncExpr(result, v2);
        return;
      case 114:

        _copyNamedArgExpr(result, v2);
        return;
      case 115:

        _copyOpExpr(result, v2);
        return;
      case 116:

        _copyDistinctExpr(result, v2);
        return;
      case 117:

        _copyNullIfExpr(result, v2);
        return;
      case 118:

        _copyScalarArrayOpExpr(result, v2);
        return;
      case 119:

        _copyBoolExpr(result, v2);
        return;
      case 120:

        _copySubLink(result, v2);
        return;
      case 121:

        _copySubPlan(result, v2);
        return;
      case 122:

        _copyAlternativeSubPlan(result, v2);
        return;
      case 123:

        _copyFieldSelect(result, v2);
        return;
      case 124:

        _copyFieldStore(result, v2);
        return;
      case 125:

        _copyRelabelType(result, v2);
        return;
      case 126:

        _copyCoerceViaIO(result, v2);
        return;
      case 127:

        _copyArrayCoerceExpr(result, v2);
        return;
      case 128:

        _copyConvertRowtypeExpr(result, v2);
        return;
      case 129:

        _copyCollateExpr(result, v2);
        return;
      case 130:

        _copyCaseExpr(result, v2);
        return;
      case 131:

        _copyCaseWhen(result, v2);
        return;
      case 132:

        _copyCaseTestExpr(result, v2);
        return;
      case 133:

        _copyArrayExpr(result, v2);
        return;
      case 134:

        _copyRowExpr(result, v2);
        return;
      case 135:

        _copyRowCompareExpr(result, v2);
        return;
      case 136:

        _copyCoalesceExpr(result, v2);
        return;
      case 137:

        _copyMinMaxExpr(result, v2);
        return;
      case 138:

        _copySQLValueFunction(result, v2);
        return;
      case 139:

        _copyXmlExpr(result, v2);
        return;
      case 140:

        _copyNullTest(result, v2);
        return;
      case 141:

        _copyBooleanTest(result, v2);
        return;
      case 142:

        _copyCoerceToDomain(result, v2);
        return;
      case 143:

        _copyCoerceToDomainValue(result, v2);
        return;
      case 144:

        _copySetToDefault(result, v2);
        return;
      case 145:

        _copyCurrentOfExpr(result, v2);
        return;
      case 146:
        v3 = CurrentMemoryContext(v2);
        v4 = MemoryContextAllocZero(*v3, 0xCuLL);
        v5 = 146;
        goto LABEL_239;
      case 147:

        _copyInferenceElem(result, v2);
        return;
      case 148:

        _copyTargetEntry(result, v2);
        return;
      case 149:
        v15 = CurrentMemoryContext(v2);
        v7 = MemoryContextAllocZeroAligned(*v15, 8uLL);
        v8 = 149;
        goto LABEL_705;
      case 150:

        _copyJoinExpr(result, v2);
        return;
      case 151:

        _copyFromExpr(result, v2);
        return;
      case 152:

        _copyOnConflictExpr(result, v2);
        return;
      case 153:

        _copyIntoClause(result, v2);
        return;
      case 203:

        _copyPathKey(result, v2);
        return;
      case 205:

        _copyRestrictInfo(result, v2);
        return;
      case 207:

        _copyPlaceHolderVar(result, v2);
        return;
      case 208:

        _copySpecialJoinInfo(result, v2);
        return;
      case 209:

        _copyAppendRelInfo(result, v2);
        return;
      case 210:

        _copyPlaceHolderInfo(result, v2);
        return;
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:

        _copyValue(result, v2);
        return;
      case 226:

        list_copy_deep(result, v2);
        return;
      case 227:
      case 228:

        list_copy(result, v2);
        return;
      case 229:

        _copyExtensibleNode(result);
        return;
      case 230:

        _copyRawStmt(result, v2);
        return;
      case 231:

        _copyQuery(result, v2);
        return;
      case 232:

        _copyPlannedStmt(result, v2);
        return;
      case 233:

        _copyInsertStmt(result, v2);
        return;
      case 234:

        _copyDeleteStmt(result, v2);
        return;
      case 235:

        _copyUpdateStmt(result, v2);
        return;
      case 236:

        _copySelectStmt(result, v2);
        return;
      case 237:

        _copyAlterTableStmt(result, v2);
        return;
      case 238:

        _copyAlterTableCmd(result, v2);
        return;
      case 239:

        _copyAlterDomainStmt(result, v2);
        return;
      case 240:

        _copySetOperationStmt(result, v2);
        return;
      case 241:

        _copyGrantStmt(result, v2);
        return;
      case 242:

        _copyGrantRoleStmt(result, v2);
        return;
      case 243:

        _copyAlterDefaultPrivilegesStmt(result, v2);
        return;
      case 244:

        _copyClosePortalStmt(result, v2);
        return;
      case 245:

        _copyClusterStmt(result, v2);
        return;
      case 246:

        _copyCopyStmt(result, v2);
        return;
      case 247:

        _copyCreateStmt(result, v2);
        return;
      case 248:

        _copyDefineStmt(result, v2);
        return;
      case 249:

        _copyDropStmt(result, v2);
        return;
      case 250:

        _copyTruncateStmt(result, v2);
        return;
      case 251:

        _copyCommentStmt(result, v2);
        return;
      case 252:

        _copyFetchStmt(result, v2);
        return;
      case 253:

        _copyIndexStmt(result, v2);
        return;
      case 254:

        _copyCreateFunctionStmt(result, v2);
        return;
      case 255:

        _copyAlterFunctionStmt(result, v2);
        return;
      case 256:

        _copyDoStmt(result, v2);
        return;
      case 257:

        _copyRenameStmt(result, v2);
        return;
      case 258:

        _copyRuleStmt(result, v2);
        return;
      case 259:

        _copyNotifyStmt(result, v2);
        return;
      case 260:

        _copyListenStmt(result, v2);
        return;
      case 261:

        _copyUnlistenStmt(result, v2);
        return;
      case 262:

        _copyTransactionStmt(result, v2);
        return;
      case 263:

        _copyViewStmt(result, v2);
        return;
      case 264:

        _copyLoadStmt(result, v2);
        return;
      case 265:

        _copyCreateDomainStmt(result, v2);
        return;
      case 266:

        _copyCreatedbStmt(result, v2);
        return;
      case 267:

        _copyDropdbStmt(result, v2);
        return;
      case 268:

        _copyVacuumStmt(result, v2);
        return;
      case 269:

        _copyExplainStmt(result, v2);
        return;
      case 270:

        _copyCreateTableAsStmt(result, v2);
        return;
      case 271:

        _copyCreateSeqStmt(result, v2);
        return;
      case 272:

        _copyAlterSeqStmt(result, v2);
        return;
      case 273:

        _copyVariableSetStmt(result, v2);
        return;
      case 274:

        _copyVariableShowStmt(result, v2);
        return;
      case 275:
        v6 = CurrentMemoryContext(v2);
        v7 = MemoryContextAllocZeroAligned(*v6, 8uLL);
        v8 = 275;
LABEL_705:
        *v7 = v8;
        v7[1] = result[1];
        return;
      case 276:

        _copyCreateTrigStmt(result, v2);
        return;
      case 277:

        _copyCreatePLangStmt(result, v2);
        return;
      case 278:

        _copyCreateRoleStmt(result, v2);
        return;
      case 279:

        _copyAlterRoleStmt(result, v2);
        return;
      case 280:

        _copyDropRoleStmt(result, v2);
        return;
      case 281:

        _copyLockStmt(result, v2);
        return;
      case 282:

        _copyConstraintsSetStmt(result, v2);
        return;
      case 283:

        _copyReindexStmt(result, v2);
        return;
      case 284:
        v10 = CurrentMemoryContext(v2);
        v11 = MemoryContextAllocZero(*v10, 4uLL);
        v12 = 284;
        goto LABEL_265;
      case 285:

        _copyCreateSchemaStmt(result, v2);
        return;
      case 286:

        _copyAlterDatabaseStmt(result, v2);
        return;
      case 287:

        _copyAlterDatabaseSetStmt(result, v2);
        return;
      case 288:

        _copyAlterRoleSetStmt(result, v2);
        return;
      case 289:

        _copyCreateConversionStmt(result, v2);
        return;
      case 290:

        _copyCreateCastStmt(result, v2);
        return;
      case 291:

        _copyCreateOpClassStmt(result, v2);
        return;
      case 292:

        _copyCreateOpFamilyStmt(result, v2);
        return;
      case 293:

        _copyAlterOpFamilyStmt(result, v2);
        return;
      case 294:

        _copyPrepareStmt(result, v2);
        return;
      case 295:

        _copyExecuteStmt(result, v2);
        return;
      case 296:

        _copyDeallocateStmt(result, v2);
        return;
      case 297:

        _copyDeclareCursorStmt(result, v2);
        return;
      case 298:

        _copyCreateTableSpaceStmt(result, v2);
        return;
      case 299:

        _copyDropTableSpaceStmt(result, v2);
        return;
      case 300:

        _copyAlterObjectDependsStmt(result, v2);
        return;
      case 301:

        _copyAlterObjectSchemaStmt(result, v2);
        return;
      case 302:

        _copyAlterOwnerStmt(result, v2);
        return;
      case 303:

        _copyAlterOperatorStmt(result, v2);
        return;
      case 304:

        _copyAlterTypeStmt(result, v2);
        return;
      case 305:

        _copyDropOwnedStmt(result, v2);
        return;
      case 306:

        _copyReassignOwnedStmt(result, v2);
        return;
      case 307:

        _copyCompositeTypeStmt(result, v2);
        return;
      case 308:

        _copyCreateEnumStmt(result, v2);
        return;
      case 309:

        _copyCreateRangeStmt(result, v2);
        return;
      case 310:

        _copyAlterEnumStmt(result, v2);
        return;
      case 311:

        _copyAlterTSDictionaryStmt(result, v2);
        return;
      case 312:

        _copyAlterTSConfigurationStmt(result, v2);
        return;
      case 313:

        _copyCreateFdwStmt(result, v2);
        return;
      case 314:

        _copyAlterFdwStmt(result, v2);
        return;
      case 315:

        _copyCreateForeignServerStmt(result, v2);
        return;
      case 316:

        _copyAlterForeignServerStmt(result, v2);
        return;
      case 317:

        _copyCreateUserMappingStmt(result, v2);
        return;
      case 318:

        _copyAlterUserMappingStmt(result, v2);
        return;
      case 319:

        _copyDropUserMappingStmt(result, v2);
        return;
      case 320:

        _copyAlterTableSpaceOptionsStmt(result, v2);
        return;
      case 321:

        _copyAlterTableMoveAllStmt(result, v2);
        return;
      case 322:

        _copySecLabelStmt(result, v2);
        return;
      case 323:

        _copyCreateForeignTableStmt(result, v2);
        return;
      case 324:

        _copyImportForeignSchemaStmt(result, v2);
        return;
      case 325:

        _copyCreateExtensionStmt(result, v2);
        return;
      case 326:

        _copyAlterExtensionStmt(result, v2);
        return;
      case 327:

        _copyAlterExtensionContentsStmt(result, v2);
        return;
      case 328:

        _copyCreateEventTrigStmt(result, v2);
        return;
      case 329:

        _copyAlterEventTrigStmt(result, v2);
        return;
      case 330:

        _copyRefreshMatViewStmt(result, v2);
        return;
      case 331:

        _copyReplicaIdentityStmt(result, v2);
        return;
      case 332:

        _copyAlterSystemStmt(result, v2);
        return;
      case 333:

        _copyCreatePolicyStmt(result, v2);
        return;
      case 334:

        _copyAlterPolicyStmt(result, v2);
        return;
      case 335:

        _copyCreateTransformStmt(result, v2);
        return;
      case 336:

        _copyCreateAmStmt(result, v2);
        return;
      case 337:

        _copyCreatePublicationStmt(result, v2);
        return;
      case 338:

        _copyAlterPublicationStmt(result, v2);
        return;
      case 339:

        _copyCreateSubscriptionStmt(result, v2);
        return;
      case 340:

        _copyAlterSubscriptionStmt(result, v2);
        return;
      case 341:

        _copyDropSubscriptionStmt(result, v2);
        return;
      case 342:

        _copyCreateStatsStmt(result, v2);
        return;
      case 343:

        _copyAlterCollationStmt(result, v2);
        return;
      case 344:

        _copyCallStmt(result, v2);
        return;
      case 345:

        _copyAlterStatsStmt(result, v2);
        return;
      case 346:

        _copyAExpr(result, v2);
        return;
      case 347:

        _copyColumnRef(result, v2);
        return;
      case 348:
        v9 = CurrentMemoryContext(v2);
        v4 = MemoryContextAllocZero(*v9, 0xCuLL);
        v5 = 348;
LABEL_239:
        *v4 = v5;
        v4[1] = result[1];
        v4[2] = result[2];
        return;
      case 349:

        _copyAConst(result, v2);
        return;
      case 350:

        _copyFuncCall(result, v2);
        return;
      case 351:
        v14 = CurrentMemoryContext(v2);
        v11 = MemoryContextAllocZero(*v14, 4uLL);
        v12 = 351;
LABEL_265:
        *v11 = v12;
        break;
      case 352:

        _copyAIndices(result, v2);
        break;
      case 353:

        _copyA_Indirection(result, v2);
        break;
      case 354:

        _copyA_ArrayExpr(result, v2);
        break;
      case 355:

        _copyResTarget(result, v2);
        break;
      case 356:

        _copyMultiAssignRef(result, v2);
        break;
      case 357:

        _copyTypeCast(result, v2);
        break;
      case 358:

        _copyCollateClause(result, v2);
        break;
      case 359:

        _copySortBy(result, v2);
        break;
      case 360:

        _copyWindowDef(result, v2);
        break;
      case 361:

        _copyRangeSubselect(result, v2);
        break;
      case 362:

        _copyRangeFunction(result, v2);
        break;
      case 363:

        _copyRangeTableSample(result, v2);
        break;
      case 364:

        _copyRangeTableFunc(result, v2);
        break;
      case 365:

        _copyRangeTableFuncCol(result, v2);
        break;
      case 366:

        _copyTypeName(result, v2);
        break;
      case 367:

        _copyColumnDef(result, v2);
        break;
      case 368:

        _copyIndexElem(result, v2);
        break;
      case 369:

        _copyConstraint(result, v2);
        break;
      case 370:

        _copyDefElem(result, v2);
        break;
      case 371:

        _copyRangeTblEntry(result, v2);
        break;
      case 372:

        _copyRangeTblFunction(result, v2);
        break;
      case 373:

        _copyTableSampleClause(result, v2);
        break;
      case 374:

        _copyWithCheckOption(result, v2);
        break;
      case 375:

        _copySortGroupClause(result, v2);
        break;
      case 376:

        _copyGroupingSet(result, v2);
        break;
      case 377:

        _copyWindowClause(result, v2);
        break;
      case 378:

        _copyObjectWithArgs(result, v2);
        break;
      case 379:

        _copyAccessPriv(result, v2);
        break;
      case 380:

        _copyCreateOpClassItem(result, v2);
        break;
      case 381:

        _copyTableLikeClause(result, v2);
        break;
      case 382:

        _copyFunctionParameter(result, v2);
        break;
      case 383:

        _copyLockingClause(result, v2);
        break;
      case 384:

        _copyRowMarkClause(result, v2);
        break;
      case 385:

        _copyXmlSerialize(result, v2);
        break;
      case 386:

        _copyWithClause(result, v2);
        break;
      case 387:

        _copyInferClause(result, v2);
        break;
      case 388:

        _copyOnConflictClause(result, v2);
        break;
      case 389:

        _copyCommonTableExpr(result, v2);
        break;
      case 390:

        _copyRoleSpec(result, v2);
        break;
      case 391:

        _copyTriggerTransition(result, v2);
        break;
      case 392:

        _copyPartitionElem(result, v2);
        break;
      case 393:

        _copyPartitionSpec(result, v2);
        break;
      case 394:

        _copyPartitionBoundSpec(result, v2);
        break;
      case 395:

        _copyPartitionRangeDatum(result, v2);
        break;
      case 396:

        _copyPartitionCmd(result, v2);
        break;
      case 397:

        _copyVacuumRelation(result, v2);
        break;
      case 415:

        _copyForeignKeyCacheInfo(result, v2);
        break;
      default:
        copyObjectImpl_cold_1();
    }
  }
}

unint64_t _copyPlannedStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x88uLL);
  *v4 = 232;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 17) = *(a1 + 17);
  *(v4 + 18) = *(a1 + 18);
  *(v4 + 19) = *(a1 + 19);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 21) = *(a1 + 21);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = bms_copy(*(a1 + 80), v5);
  *(v4 + 88) = copyObjectImpl(*(a1 + 88));
  *(v4 + 96) = copyObjectImpl(*(a1 + 96));
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 132) = *(a1 + 132);
  return v4;
}

unint64_t _copyPlan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 9;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  return v4;
}

unint64_t _copyResult(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 10;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  return v4;
}

unint64_t _copyProjectSet(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 11;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  return v4;
}

unint64_t _copyModifyTable(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xF0uLL);
  *v4 = 12;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 116) = *(a1 + 116);
  *(v4 + 120) = *(a1 + 120);
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = *(a1 + 136);
  *(v4 + 140) = *(a1 + 140);
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = copyObjectImpl(*(a1 + 152));
  *(v4 + 160) = copyObjectImpl(*(a1 + 160));
  *(v4 + 168) = copyObjectImpl(*(a1 + 168));
  *(v4 + 176) = bms_copy(*(a1 + 176), v7);
  *(v4 + 184) = copyObjectImpl(*(a1 + 184));
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 196) = *(a1 + 196);
  *(v4 + 200) = copyObjectImpl(*(a1 + 200));
  *(v4 + 208) = copyObjectImpl(*(a1 + 208));
  *(v4 + 216) = copyObjectImpl(*(a1 + 216));
  *(v4 + 224) = *(a1 + 224);
  *(v4 + 232) = copyObjectImpl(*(a1 + 232));
  return v4;
}

unint64_t _copyAppend(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x88uLL);
  *v4 = 13;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = bms_copy(*(a1 + 104), v7);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = *(a1 + 120);
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  return v4;
}

unint64_t _copyMergeAppend(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA8uLL);
  *v4 = 14;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = bms_copy(*(a1 + 104), v7);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  v8 = *(a1 + 120);
  *(v4 + 120) = v8;
  v9 = 2 * v8;
  v11 = palloc(2 * v8, v10);
  *(v4 + 128) = v11;
  memcpy(v11, *(a1 + 128), v9);
  v12 = 4 * *(a1 + 120);
  v14 = palloc(v12, v13);
  *(v4 + 136) = v14;
  memcpy(v14, *(a1 + 136), v12);
  v15 = 4 * *(a1 + 120);
  v17 = palloc(v15, v16);
  *(v4 + 144) = v17;
  memcpy(v17, *(a1 + 144), v15);
  v18 = *(a1 + 120);
  v20 = palloc(v18, v19);
  *(v4 + 152) = v20;
  memcpy(v20, *(a1 + 152), v18);
  *(v4 + 160) = copyObjectImpl(*(a1 + 160));
  return v4;
}

unint64_t _copyRecursiveUnion(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x90uLL);
  *v4 = 15;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  v8 = *(a1 + 108);
  *(v4 + 108) = v8;
  if (v8 >= 1)
  {
    v9 = 2 * v8;
    v10 = palloc(2 * v8, v7);
    *(v4 + 112) = v10;
    memcpy(v10, *(a1 + 112), v9);
    v11 = 4 * *(a1 + 108);
    v13 = palloc(v11, v12);
    *(v4 + 120) = v13;
    memcpy(v13, *(a1 + 120), v11);
    v14 = 4 * *(a1 + 108);
    v16 = palloc(v14, v15);
    *(v4 + 128) = v16;
    memcpy(v16, *(a1 + 128), v14);
  }

  *(v4 + 136) = *(a1 + 136);
  return v4;
}

unint64_t _copyBitmapAnd(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 16;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  return v4;
}

unint64_t _copyBitmapOr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 17;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 18;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  return v4;
}

unint64_t _copyGather(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x80uLL);
  *v4 = 46;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 113) = *(a1 + 113);
  *(v4 + 120) = bms_copy(*(a1 + 120), v7);
  return v4;
}

unint64_t _copyGatherMerge(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA0uLL);
  *v4 = 47;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  v7 = *(a1 + 112);
  *(v4 + 112) = v7;
  v8 = 2 * v7;
  v10 = palloc(2 * v7, v9);
  *(v4 + 120) = v10;
  memcpy(v10, *(a1 + 120), v8);
  v11 = 4 * *(a1 + 112);
  v13 = palloc(v11, v12);
  *(v4 + 128) = v13;
  memcpy(v13, *(a1 + 128), v11);
  v14 = 4 * *(a1 + 112);
  v16 = palloc(v14, v15);
  *(v4 + 136) = v16;
  memcpy(v16, *(a1 + 136), v14);
  v17 = *(a1 + 112);
  v19 = palloc(v17, v18);
  *(v4 + 144) = v19;
  memcpy(v19, *(a1 + 144), v17);
  *(v4 + 152) = bms_copy(*(a1 + 152), v20);
  return v4;
}

unint64_t _copySeqScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 19;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  return v4;
}

unint64_t _copySampleScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 20;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyIndexScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA8uLL);
  *v4 = 21;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = copyObjectImpl(*(a1 + 152));
  *(v4 + 160) = *(a1 + 160);
  return v4;
}

unint64_t _copyIndexOnlyScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 22;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = *(a1 + 144);
  return v4;
}

unint64_t _copyBitmapIndexScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x88uLL);
  *v4 = 23;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 116) = *(a1 + 116);
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  return v4;
}

unint64_t _copyBitmapHeapScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 24;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyTidScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 25;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copySubqueryScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 26;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyFunctionScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x80uLL);
  *v4 = 27;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = *(a1 + 120);
  return v4;
}

unint64_t _copyTableFuncScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 29;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyValuesScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 28;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyCteScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 30;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 116) = *(a1 + 116);
  return v4;
}

unint64_t _copyNamedTuplestoreScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 31;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  v8 = *(a1 + 112);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 112) = v8;
  return v4;
}

unint64_t _copyWorkTableScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 32;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  return v4;
}

unint64_t _copyForeignScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA8uLL);
  *v4 = 33;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 116) = *(a1 + 116);
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = bms_copy(*(a1 + 152), v7);
  *(v4 + 160) = *(a1 + 160);
  return v4;
}

unint64_t _copyCustomScan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA8uLL);
  *v4 = 34;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = bms_copy(*(a1 + 152), v7);
  *(v4 + 160) = *(a1 + 160);
  return v4;
}

unint64_t _copyJoin(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 35;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyNestLoop(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x80uLL);
  *v4 = 36;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  return v4;
}

unint64_t _copyMergeJoin(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA8uLL);
  *v4 = 37;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = *(a1 + 120);
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  v8 = *(a1 + 128);
  if (v8)
  {
    v9 = *(v8 + 4);
    if (v9 >= 1)
    {
      v10 = palloc(4 * v9, v7);
      *(v4 + 136) = v10;
      memcpy(v10, *(a1 + 136), 4 * v9);
      v12 = palloc(4 * v9, v11);
      *(v4 + 144) = v12;
      memcpy(v12, *(a1 + 144), 4 * v9);
      v14 = palloc(4 * v9, v13);
      *(v4 + 152) = v14;
      memcpy(v14, *(a1 + 152), 4 * v9);
      v16 = palloc(v9, v15);
      *(v4 + 160) = v16;
      memcpy(v16, *(a1 + 160), v9);
    }
  }

  return v4;
}

unint64_t _copyHashJoin(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 38;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  return v4;
}

unint64_t _copyMaterial(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 39;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  return v4;
}

_DWORD *_copySort(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x90uLL);
  *v4 = 40;
  CopySortFields(a1, v4);
  return v4;
}

_DWORD *_copyIncrementalSort(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 41;
  CopySortFields(a1, v4);
  v4[36] = *(a1 + 144);
  return v4;
}

unint64_t _copyGroup(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x88uLL);
  *v4 = 42;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  v7 = *(a1 + 104);
  *(v4 + 104) = v7;
  v8 = 2 * v7;
  v10 = palloc(2 * v7, v9);
  *(v4 + 112) = v10;
  memcpy(v10, *(a1 + 112), v8);
  v11 = 4 * *(a1 + 104);
  v13 = palloc(v11, v12);
  *(v4 + 120) = v13;
  memcpy(v13, *(a1 + 120), v11);
  v14 = 4 * *(a1 + 104);
  v16 = palloc(v14, v15);
  *(v4 + 128) = v16;
  memcpy(v16, *(a1 + 128), v14);
  return v4;
}

unint64_t _copyAgg(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xB8uLL);
  *v4 = 43;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  v8 = *(a1 + 112);
  *(v4 + 112) = v8;
  if (v8 >= 1)
  {
    v9 = 2 * v8;
    v10 = palloc(2 * v8, v7);
    *(v4 + 120) = v10;
    memcpy(v10, *(a1 + 120), v9);
    v11 = 4 * *(a1 + 112);
    v13 = palloc(v11, v12);
    *(v4 + 128) = v13;
    memcpy(v13, *(a1 + 128), v11);
    v14 = 4 * *(a1 + 112);
    v16 = palloc(v14, v15);
    *(v4 + 136) = v16;
    memcpy(v16, *(a1 + 136), v14);
  }

  *(v4 + 144) = *(a1 + 144);
  *(v4 + 152) = *(a1 + 152);
  *(v4 + 160) = bms_copy(*(a1 + 160), v7);
  *(v4 + 168) = copyObjectImpl(*(a1 + 168));
  *(v4 + 176) = copyObjectImpl(*(a1 + 176));
  return v4;
}

unint64_t _copyWindowAgg(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xD0uLL);
  *v4 = 44;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  v8 = *(a1 + 108);
  *(v4 + 108) = v8;
  if (v8 >= 1)
  {
    v9 = 2 * v8;
    v10 = palloc(2 * v8, v7);
    *(v4 + 112) = v10;
    memcpy(v10, *(a1 + 112), v9);
    v11 = 4 * *(a1 + 108);
    v13 = palloc(v11, v12);
    *(v4 + 120) = v13;
    memcpy(v13, *(a1 + 120), v11);
    v14 = 4 * *(a1 + 108);
    v16 = palloc(v14, v15);
    *(v4 + 128) = v16;
    memcpy(v16, *(a1 + 128), v14);
  }

  v17 = *(a1 + 136);
  *(v4 + 136) = v17;
  if (v17 >= 1)
  {
    v18 = 2 * v17;
    v19 = palloc(2 * v17, v7);
    *(v4 + 144) = v19;
    memcpy(v19, *(a1 + 144), v18);
    v20 = 4 * *(a1 + 136);
    v22 = palloc(v20, v21);
    *(v4 + 152) = v22;
    memcpy(v22, *(a1 + 152), v20);
    v23 = 4 * *(a1 + 136);
    v25 = palloc(v23, v24);
    *(v4 + 160) = v25;
    memcpy(v25, *(a1 + 160), v23);
  }

  *(v4 + 168) = *(a1 + 168);
  *(v4 + 176) = copyObjectImpl(*(a1 + 176));
  *(v4 + 184) = copyObjectImpl(*(a1 + 184));
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 196) = *(a1 + 196);
  *(v4 + 200) = *(a1 + 200);
  *(v4 + 204) = *(a1 + 204);
  *(v4 + 205) = *(a1 + 205);
  return v4;
}

unint64_t _copyUnique(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x88uLL);
  *v4 = 45;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  v7 = *(a1 + 104);
  *(v4 + 104) = v7;
  v8 = 2 * v7;
  v10 = palloc(2 * v7, v9);
  *(v4 + 112) = v10;
  memcpy(v10, *(a1 + 112), v8);
  v11 = 4 * *(a1 + 104);
  v13 = palloc(v11, v12);
  *(v4 + 120) = v13;
  memcpy(v13, *(a1 + 120), v11);
  v14 = 4 * *(a1 + 104);
  v16 = palloc(v14, v15);
  *(v4 + 128) = v16;
  memcpy(v16, *(a1 + 128), v14);
  return v4;
}

unint64_t _copyHash(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x80uLL);
  *v4 = 48;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 116) = *(a1 + 116);
  *(v4 + 118) = *(a1 + 118);
  *(v4 + 120) = *(a1 + 120);
  return v4;
}

unint64_t _copySetOp(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xA0uLL);
  *v4 = 49;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 108) = *(a1 + 108);
  v7 = *(a1 + 112);
  *(v4 + 112) = v7;
  v8 = 2 * v7;
  v10 = palloc(2 * v7, v9);
  *(v4 + 120) = v10;
  memcpy(v10, *(a1 + 120), v8);
  v11 = 4 * *(a1 + 112);
  v13 = palloc(v11, v12);
  *(v4 + 128) = v13;
  memcpy(v13, *(a1 + 128), v11);
  v14 = 4 * *(a1 + 112);
  v16 = palloc(v14, v15);
  *(v4 + 136) = v16;
  memcpy(v16, *(a1 + 136), v14);
  *(v4 + 144) = *(a1 + 144);
  *(v4 + 148) = *(a1 + 148);
  *(v4 + 152) = *(a1 + 152);
  return v4;
}

unint64_t _copyLockRows(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 50;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  *(v4 + 112) = *(a1 + 112);
  return v4;
}

unint64_t _copyLimit(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 51;
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 37) = *(a1 + 37);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = bms_copy(*(a1 + 96), v6);
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = *(a1 + 120);
  v7 = *(a1 + 124);
  *(v4 + 124) = v7;
  v8 = 2 * v7;
  v10 = palloc(2 * v7, v9);
  *(v4 + 128) = v10;
  memcpy(v10, *(a1 + 128), v8);
  v11 = 4 * *(a1 + 124);
  v13 = palloc(v11, v12);
  *(v4 + 136) = v13;
  memcpy(v13, *(a1 + 136), v11);
  v14 = 4 * *(a1 + 124);
  v16 = palloc(v14, v15);
  *(v4 + 144) = v16;
  memcpy(v16, *(a1 + 144), v14);
  return v4;
}

unint64_t _copyNestLoopParam(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 52;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyPlanRowMark(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x24uLL);
  *result = 53;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  *(result + 12) = *(a1 + 12);
  *(result + 16) = *(a1 + 16);
  *(result + 20) = *(a1 + 20);
  *(result + 24) = *(a1 + 24);
  *(result + 28) = *(a1 + 28);
  *(result + 32) = *(a1 + 32);
  return result;
}

unint64_t _copyPartitionPruneInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 54;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = bms_copy(*(a1 + 16), v5);
  return v4;
}

unint64_t _copyPartitionedRelPruneInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x48uLL);
  *v4 = 55;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = bms_copy(*(a1 + 8), v5);
  v6 = *(a1 + 16);
  *(v4 + 16) = v6;
  v7 = 4 * v6;
  v9 = palloc(4 * v6, v8);
  *(v4 + 24) = v9;
  memcpy(v9, *(a1 + 24), v7);
  v10 = 4 * *(a1 + 16);
  v12 = palloc(v10, v11);
  *(v4 + 32) = v12;
  memcpy(v12, *(a1 + 32), v10);
  v13 = 4 * *(a1 + 16);
  v15 = palloc(v13, v14);
  *(v4 + 40) = v15;
  memcpy(v15, *(a1 + 40), v13);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = bms_copy(*(a1 + 64), v16);
  return v4;
}

unint64_t _copyPartitionPruneStepOp(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 56;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = bms_copy(*(a1 + 32), v5);
  return v4;
}

unint64_t _copyPartitionPruneStepCombine(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 57;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlias(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 102;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyRangeVar(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 103;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v5);
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 33) = *(a1 + 33);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyTableFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 104;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = bms_copy(*(a1 + 88), v5);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 100) = *(a1 + 100);
  return v4;
}

unint64_t _copyIntoClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x48uLL);
  *v4 = 153;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 48) = v8;
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = *(a1 + 64);
  return v4;
}

unint64_t _copyVar(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *result = 106;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  *(result + 12) = *(a1 + 12);
  *(result + 16) = *(a1 + 16);
  *(result + 20) = *(a1 + 20);
  *(result + 24) = *(a1 + 24);
  *(result + 28) = *(a1 + 28);
  *(result + 32) = *(a1 + 32);
  *(result + 36) = *(a1 + 36);
  return result;
}

unint64_t _copyConst(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *result = 107;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  *(result + 12) = *(a1 + 12);
  v6 = *(a1 + 16);
  *(result + 16) = v6;
  if ((*(a1 + 33) & 1) != 0 || *(a1 + 32) == 1)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    v8 = result;
    v7 = datumCopy(*(a1 + 24), 0, v6, v5);
    result = v8;
  }

  *(result + 24) = v7;
  *(result + 32) = *(a1 + 32);
  *(result + 33) = *(a1 + 33);
  *(result + 36) = *(a1 + 36);
  return result;
}

_DWORD *_copyParam(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x1CuLL);
  *result = 108;
  result[1] = a1[1];
  result[2] = a1[2];
  result[3] = a1[3];
  result[4] = a1[4];
  result[5] = a1[5];
  result[6] = a1[6];
  return result;
}

unint64_t _copyAggref(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 109;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 73) = *(a1 + 73);
  *(v4 + 74) = *(a1 + 74);
  *(v4 + 76) = *(a1 + 76);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 84) = *(a1 + 84);
  return v4;
}

unint64_t _copyGroupingFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 110;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  return v4;
}

unint64_t _copyWindowFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 111;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 45) = *(a1 + 45);
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copySubscriptingRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 112;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  return v4;
}

unint64_t _copyFuncExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 113;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 13) = *(a1 + 13);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyNamedArgExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 114;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyOpExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 115;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyDistinctExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 116;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyNullIfExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 117;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyScalarArrayOpExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 118;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyBoolExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 119;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copySubLink(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 120;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copySubPlan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x60uLL);
  *v4 = 121;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 32) = v6;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 52) = *(a1 + 52);
  *(v4 + 53) = *(a1 + 53);
  *(v4 + 54) = *(a1 + 54);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 88) = *(a1 + 88);
  return v4;
}

unint64_t _copyAlternativeSubPlan(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 122;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyFieldSelect(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 123;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyFieldStore(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 124;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyRelabelType(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 125;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyCoerceViaIO(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 126;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyArrayCoerceExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 127;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyConvertRowtypeExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 128;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyCollateExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 129;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyCaseExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 130;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyCaseWhen(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 131;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

_DWORD *_copyCaseTestExpr(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 132;
  result[1] = a1[1];
  result[2] = a1[2];
  result[3] = a1[3];
  return result;
}

unint64_t _copyArrayExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 133;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyRowExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 134;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyRowCompareExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 135;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  return v4;
}

unint64_t _copyCoalesceExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 136;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyMinMaxExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 137;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

_DWORD *_copySQLValueFunction(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 138;
  result[1] = a1[1];
  result[2] = a1[2];
  result[3] = a1[3];
  result[4] = a1[4];
  return result;
}

unint64_t _copyXmlExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 139;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 52) = *(a1 + 52);
  return v4;
}

unint64_t _copyNullTest(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 140;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyBooleanTest(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 141;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyCoerceToDomain(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 142;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

_DWORD *_copyCoerceToDomainValue(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 143;
  result[1] = a1[1];
  result[2] = a1[2];
  result[3] = a1[3];
  result[4] = a1[4];
  return result;
}

_DWORD *_copySetToDefault(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 144;
  result[1] = a1[1];
  result[2] = a1[2];
  result[3] = a1[3];
  result[4] = a1[4];
  return result;
}

unint64_t _copyCurrentOfExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 145;
  *(result + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  return result;
}

unint64_t _copyInferenceElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 147;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyTargetEntry(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 148;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 42) = *(a1 + 42);
  return v4;
}

unint64_t _copyJoinExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 150;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = *(a1 + 56);
  return v4;
}

unint64_t _copyFromExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 151;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyOnConflictExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 152;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  return v4;
}

unint64_t _copyPathKey(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 203;
  *(result + 8) = *(a1 + 8);
  *(result + 16) = *(a1 + 16);
  *(result + 20) = *(a1 + 20);
  *(result + 24) = *(a1 + 24);
  return result;
}

unint64_t _copyRestrictInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xD8uLL);
  *v4 = 205;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 17) = *(a1 + 17);
  *(v4 + 18) = *(a1 + 18);
  *(v4 + 19) = *(a1 + 19);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = bms_copy(*(a1 + 32), v5);
  *(v4 + 40) = bms_copy(*(a1 + 40), v6);
  *(v4 + 48) = bms_copy(*(a1 + 48), v7);
  *(v4 + 56) = bms_copy(*(a1 + 56), v8);
  *(v4 + 64) = bms_copy(*(a1 + 64), v9);
  *(v4 + 72) = bms_copy(*(a1 + 72), v10);
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 112) = *(a1 + 112);
  *(v4 + 120) = *(a1 + 120);
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = *(a1 + 136);
  *(v4 + 144) = *(a1 + 144);
  *(v4 + 152) = *(a1 + 152);
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 168) = 0;
  *(v4 + 176) = *(a1 + 176);
  *(v4 + 180) = *(a1 + 180);
  *(v4 + 184) = *(a1 + 184);
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 200) = *(a1 + 200);
  *(v4 + 208) = *(a1 + 208);
  return v4;
}

unint64_t _copyPlaceHolderVar(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 207;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = bms_copy(*(a1 + 16), v5);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copySpecialJoinInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 208;
  *(v4 + 8) = bms_copy(*(a1 + 8), v5);
  *(v4 + 16) = bms_copy(*(a1 + 16), v6);
  *(v4 + 24) = bms_copy(*(a1 + 24), v7);
  *(v4 + 32) = bms_copy(*(a1 + 32), v8);
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 45) = *(a1 + 45);
  *(v4 + 46) = *(a1 + 46);
  *(v4 + 47) = *(a1 + 47);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  return v4;
}

unint64_t _copyAppendRelInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 209;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  v5 = *(a1 + 32);
  *(v4 + 32) = v5;
  v6 = 2 * v5;
  v8 = palloc(2 * v5, v7);
  *(v4 + 40) = v8;
  memcpy(v8, *(a1 + 40), v6);
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyPlaceHolderInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 210;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = bms_copy(*(a1 + 16), v5);
  *(v4 + 24) = bms_copy(*(a1 + 24), v6);
  *(v4 + 32) = bms_copy(*(a1 + 32), v7);
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

_DWORD *_copyValue(_DWORD *a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 220;
  v6 = *a1;
  *result = *a1;
  if ((v6 - 222) >= 3)
  {
    if (v6 != 225)
    {
      if (v6 != 221)
      {
        _copyValue_cold_1();
      }

      result[2] = a1[2];
    }
  }

  else
  {
    v7 = *(a1 + 1);
    if (v7)
    {
      v8 = result;
      v7 = pstrdup(v7, v5);
      result = v8;
    }

    *(result + 1) = v7;
  }

  return result;
}

unint64_t _copyExtensibleNode(uint64_t a1)
{
  ExtensibleNodeMethods = GetExtensibleNodeMethods(*(a1 + 8), 0);
  v4 = *CurrentMemoryContext(v3);
  if (v5 > 0x400 || v6 != 0)
  {
    v8 = MemoryContextAllocZero(v4, v5);
    *v8 = 229;
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = MemoryContextAllocZeroAligned(v4, v5);
  *v8 = 229;
  v10 = *(a1 + 8);
  if (v10)
  {
LABEL_8:
    v10 = pstrdup(v10, v9);
  }

LABEL_9:
  *(v8 + 8) = v10;
  (*(ExtensibleNodeMethods + 16))(v8, a1);
  return v8;
}

unint64_t _copyQuery(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xE0uLL);
  *v4 = 231;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 45) = *(a1 + 45);
  *(v4 + 46) = *(a1 + 46);
  *(v4 + 47) = *(a1 + 47);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 49) = *(a1 + 49);
  *(v4 + 50) = *(a1 + 50);
  *(v4 + 51) = *(a1 + 51);
  *(v4 + 52) = *(a1 + 52);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 96) = copyObjectImpl(*(a1 + 96));
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = copyObjectImpl(*(a1 + 152));
  *(v4 + 160) = copyObjectImpl(*(a1 + 160));
  *(v4 + 168) = copyObjectImpl(*(a1 + 168));
  *(v4 + 176) = *(a1 + 176);
  *(v4 + 184) = copyObjectImpl(*(a1 + 184));
  *(v4 + 192) = copyObjectImpl(*(a1 + 192));
  *(v4 + 200) = copyObjectImpl(*(a1 + 200));
  *(v4 + 208) = copyObjectImpl(*(a1 + 208));
  *(v4 + 216) = *(a1 + 216);
  *(v4 + 220) = *(a1 + 220);
  return v4;
}

unint64_t _copyRawStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 230;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyInsertStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 233;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = *(a1 + 56);
  return v4;
}

unint64_t _copyDeleteStmt(int **a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 234;
  *(v4 + 8) = copyObjectImpl(a1[1]);
  *(v4 + 16) = copyObjectImpl(a1[2]);
  *(v4 + 24) = copyObjectImpl(a1[3]);
  *(v4 + 32) = copyObjectImpl(a1[4]);
  *(v4 + 40) = copyObjectImpl(a1[5]);
  return v4;
}

unint64_t _copyUpdateStmt(int **a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 235;
  *(v4 + 8) = copyObjectImpl(a1[1]);
  *(v4 + 16) = copyObjectImpl(a1[2]);
  *(v4 + 24) = copyObjectImpl(a1[3]);
  *(v4 + 32) = copyObjectImpl(a1[4]);
  *(v4 + 40) = copyObjectImpl(a1[5]);
  *(v4 + 48) = copyObjectImpl(a1[6]);
  return v4;
}

unint64_t _copySelectStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x98uLL);
  *v4 = 236;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = copyObjectImpl(*(a1 + 88));
  *(v4 + 96) = copyObjectImpl(*(a1 + 96));
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = *(a1 + 128);
  *(v4 + 132) = *(a1 + 132);
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  return v4;
}

unint64_t _copySetOperationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 240;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  return v4;
}

unint64_t _copyAlterTableStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 237;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyAlterTableCmd(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 238;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  return v4;
}

unint64_t _copyAlterCollationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 343;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyAlterDomainStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 239;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  return v4;
}

unint64_t _copyGrantStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 241;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  return v4;
}

unint64_t _copyGrantRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 242;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 25) = *(a1 + 25);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyAlterDefaultPrivilegesStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 243;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyDeclareCursorStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 297;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyClosePortalStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 244;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyCallStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 344;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyClusterStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 245;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyCopyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 246;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 33) = *(a1 + 33);
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 40) = v6;
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  return v4;
}

_DWORD *_copyCreateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x68uLL);
  *v4 = 247;
  CopyCreateStmtFields(a1, v4);
  return v4;
}

unint64_t _copyTableLikeClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 381;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyDefineStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 248;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 41) = *(a1 + 41);
  return v4;
}

unint64_t _copyDropStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 249;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 25) = *(a1 + 25);
  return v4;
}

unint64_t _copyTruncateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 250;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyCommentStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 251;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  return v4;
}

unint64_t _copySecLabelStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 322;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 24) = v7;
  return v4;
}

unint64_t _copyFetchStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 252;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 16), v5);
    result = v7;
  }

  *(result + 16) = v6;
  *(result + 24) = *(a1 + 24);
  return result;
}

unint64_t _copyIndexStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 253;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 24) = v8;
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = pstrdup(v9, v7);
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  v11 = *(a1 + 80);
  if (v11)
  {
    v11 = pstrdup(v11, v10);
  }

  *(v4 + 80) = v11;
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 92) = *(a1 + 92);
  *(v4 + 96) = *(a1 + 96);
  *(v4 + 100) = *(a1 + 100);
  *(v4 + 104) = *(a1 + 104);
  *(v4 + 105) = *(a1 + 105);
  *(v4 + 106) = *(a1 + 106);
  *(v4 + 107) = *(a1 + 107);
  *(v4 + 108) = *(a1 + 108);
  *(v4 + 109) = *(a1 + 109);
  *(v4 + 110) = *(a1 + 110);
  *(v4 + 111) = *(a1 + 111);
  *(v4 + 112) = *(a1 + 112);
  return v4;
}

unint64_t _copyCreateStatsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 342;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 40) = v6;
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyAlterStatsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 345;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyCreateFunctionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 254;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 5) = *(a1 + 5);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyFunctionParameter(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 382;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyAlterFunctionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 255;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyDoStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 256;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyRenameStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 257;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 32) = v6;
  v7 = *(a1 + 40);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 40) = v7;
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 52) = *(a1 + 52);
  return v4;
}

unint64_t _copyAlterObjectDependsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 300;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyAlterObjectSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 301;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyAlterOwnerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 302;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyAlterOperatorStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 303;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterTypeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 304;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyRuleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 258;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyNotifyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 259;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  return v4;
}

unint64_t _copyListenStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 260;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyUnlistenStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 261;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyTransactionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 262;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyCompositeTypeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 307;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyCreateEnumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 308;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyCreateRangeStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 309;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterEnumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 310;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 24) = v7;
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = pstrdup(v8, v5);
  }

  *(v4 + 32) = v8;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 41) = *(a1 + 41);
  return v4;
}

unint64_t _copyViewStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 263;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyLoadStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 264;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyCreateDomainStmt(int **a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 265;
  *(v4 + 8) = copyObjectImpl(a1[1]);
  *(v4 + 16) = copyObjectImpl(a1[2]);
  *(v4 + 24) = copyObjectImpl(a1[3]);
  *(v4 + 32) = copyObjectImpl(a1[4]);
  return v4;
}

unint64_t _copyCreateOpClassStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 291;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyCreateOpClassItem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 380;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  return v4;
}

unint64_t _copyCreateOpFamilyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 292;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  return v4;
}

unint64_t _copyAlterOpFamilyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 293;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyCreatedbStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 266;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterDatabaseStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 286;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterDatabaseSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 287;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyDropdbStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 267;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyVacuumStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 268;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyVacuumRelation(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 397;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyExplainStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 269;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyCreateTableAsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 270;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 29) = *(a1 + 29);
  return v4;
}

unint64_t _copyRefreshMatViewStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 330;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 5) = *(a1 + 5);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyReplicaIdentityStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 331;
  *(result + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyAlterSystemStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *v4 = 332;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  return v4;
}

unint64_t _copyCreateSeqStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 271;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 29) = *(a1 + 29);
  return v4;
}

unint64_t _copyAlterSeqStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 272;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 25) = *(a1 + 25);
  return v4;
}

unint64_t _copyVariableSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 273;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyVariableShowStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 274;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyCreateTableSpaceStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 298;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyDropTableSpaceStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 299;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  return result;
}

unint64_t _copyAlterTableSpaceOptionsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 320;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyAlterTableMoveAllStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 321;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 32) = v8;
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyCreateExtensionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 325;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyAlterExtensionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 326;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterExtensionContentsStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 327;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyCreateFdwStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 313;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyAlterFdwStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 314;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyCreateForeignServerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 315;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v5);
  }

  *(v4 + 24) = v8;
  v9 = *(a1 + 32);
  if (v9)
  {
    v9 = pstrdup(v9, v5);
  }

  *(v4 + 32) = v9;
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  return v4;
}

unint64_t _copyAlterForeignServerStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 316;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyCreateUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 317;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyAlterUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 318;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyDropUserMappingStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 319;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyCreateForeignTableStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x78uLL);
  *v4 = 323;
  CopyCreateStmtFields(a1, v4);
  v6 = *(a1 + 104);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 104) = v6;
  *(v4 + 112) = copyObjectImpl(*(a1 + 112));
  return v4;
}

unint64_t _copyImportForeignSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 324;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v5);
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  return v4;
}

unint64_t _copyCreateTransformStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 335;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyCreateAmStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 336;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyCreateTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x60uLL);
  *v4 = 276;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 42) = *(a1 + 42);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 81) = *(a1 + 81);
  *(v4 + 88) = copyObjectImpl(*(a1 + 88));
  return v4;
}

unint64_t _copyCreateEventTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 328;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyAlterEventTrigStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 329;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  return result;
}

unint64_t _copyCreatePLangStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 277;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyCreateRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 278;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 279;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyAlterRoleSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 288;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyDropRoleStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 280;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyLockStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 281;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyConstraintsSetStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 282;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyReindexStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 283;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  return v4;
}

unint64_t _copyCreateSchemaStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 285;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyCreateConversionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 289;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  v6 = *(a1 + 16);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 16) = v6;
  v7 = *(a1 + 24);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyCreateCastStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 290;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  return v4;
}

unint64_t _copyPrepareStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 294;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyExecuteStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 295;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyDeallocateStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 296;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(v6, v5);
    result = v7;
  }

  *(result + 8) = v6;
  return result;
}

unint64_t _copyDropOwnedStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 305;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyReassignOwnedStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 306;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterTSDictionaryStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 311;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyAlterTSConfigurationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 312;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 33) = *(a1 + 33);
  *(v4 + 34) = *(a1 + 34);
  return v4;
}

unint64_t _copyCreatePolicyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 333;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  return v4;
}

unint64_t _copyAlterPolicyStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 334;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  return v4;
}

unint64_t _copyCreatePublicationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 337;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyAlterPublicationStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 338;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  return v4;
}

unint64_t _copyCreateSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 339;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyAlterSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 340;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  return v4;
}

unint64_t _copyDropSubscriptionStmt(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 341;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  *(result + 20) = *(a1 + 20);
  return result;
}

unint64_t _copyAExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 346;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyColumnRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 347;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyAConst(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *result = 349;
  v6 = *(a1 + 8);
  *(result + 8) = v6;
  if ((v6 - 222) < 3)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v8 = result;
      v7 = pstrdup(*(a1 + 16), v5);
      result = v8;
    }

    *(result + 16) = v7;
    goto LABEL_5;
  }

  if (v6 == 225)
  {
LABEL_5:
    *(result + 24) = *(a1 + 24);
    return result;
  }

  if (v6 != 221)
  {
    _copyAConst_cold_1();
  }

  *(result + 16) = *(a1 + 16);
  *(result + 24) = *(a1 + 24);
  return result;
}

unint64_t _copyFuncCall(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 350;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 41) = *(a1 + 41);
  *(v4 + 42) = *(a1 + 42);
  *(v4 + 43) = *(a1 + 43);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = *(a1 + 56);
  return v4;
}

unint64_t _copyAIndices(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 352;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyA_Indirection(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 353;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyA_ArrayExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 354;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyResTarget(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 355;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyMultiAssignRef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 356;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyTypeCast(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 357;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyCollateClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 358;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copySortBy(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 359;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyWindowDef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x48uLL);
  *v4 = 360;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = *(a1 + 64);
  return v4;
}

unint64_t _copyRangeSubselect(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 361;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyRangeFunction(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 362;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 5) = *(a1 + 5);
  *(v4 + 6) = *(a1 + 6);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  return v4;
}

unint64_t _copyRangeTableSample(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 363;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyRangeTableFunc(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 364;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyRangeTableFuncCol(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 365;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 25) = *(a1 + 25);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyTypeName(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *v4 = 366;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 21) = *(a1 + 21);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  return v4;
}

unint64_t _copyIndexElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 368;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v8 = *(a1 + 24);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 24) = v8;
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = *(a1 + 56);
  *(v4 + 60) = *(a1 + 60);
  return v4;
}

unint64_t _copyColumnDef(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x70uLL);
  *v4 = 367;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 28) = *(a1 + 28);
  *(v4 + 29) = *(a1 + 29);
  *(v4 + 30) = *(a1 + 30);
  *(v4 + 31) = *(a1 + 31);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 88) = copyObjectImpl(*(a1 + 88));
  *(v4 + 96) = copyObjectImpl(*(a1 + 96));
  *(v4 + 104) = *(a1 + 104);
  return v4;
}

unint64_t _copyConstraint(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xB0uLL);
  *v4 = 369;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 17) = *(a1 + 17);
  *(v4 + 20) = *(a1 + 20);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  v8 = *(a1 + 40);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 40) = v8;
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  v10 = *(a1 + 88);
  if (v10)
  {
    v10 = pstrdup(v10, v9);
  }

  *(v4 + 88) = v10;
  v11 = *(a1 + 96);
  if (v11)
  {
    v11 = pstrdup(v11, v9);
  }

  *(v4 + 96) = v11;
  *(v4 + 104) = *(a1 + 104);
  v12 = *(a1 + 112);
  if (v12)
  {
    v12 = pstrdup(v12, v9);
  }

  *(v4 + 112) = v12;
  *(v4 + 120) = copyObjectImpl(*(a1 + 120));
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  *(v4 + 152) = *(a1 + 152);
  *(v4 + 153) = *(a1 + 153);
  *(v4 + 154) = *(a1 + 154);
  *(v4 + 160) = copyObjectImpl(*(a1 + 160));
  *(v4 + 168) = *(a1 + 168);
  *(v4 + 172) = *(a1 + 172);
  *(v4 + 173) = *(a1 + 173);
  return v4;
}

unint64_t _copyDefElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 370;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 36) = *(a1 + 36);
  return v4;
}

unint64_t _copyLockingClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 383;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyRangeTblEntry(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0xF0uLL);
  *v4 = 371;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  *(v4 + 88) = *(a1 + 88);
  *(v4 + 96) = copyObjectImpl(*(a1 + 96));
  *(v4 + 104) = copyObjectImpl(*(a1 + 104));
  v6 = *(a1 + 112);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 112) = v6;
  *(v4 + 120) = *(a1 + 120);
  *(v4 + 124) = *(a1 + 124);
  *(v4 + 128) = copyObjectImpl(*(a1 + 128));
  *(v4 + 136) = copyObjectImpl(*(a1 + 136));
  *(v4 + 144) = copyObjectImpl(*(a1 + 144));
  v8 = *(a1 + 152);
  if (v8)
  {
    v8 = pstrdup(v8, v7);
  }

  *(v4 + 152) = v8;
  *(v4 + 160) = *(a1 + 160);
  *(v4 + 168) = copyObjectImpl(*(a1 + 168));
  *(v4 + 176) = copyObjectImpl(*(a1 + 176));
  *(v4 + 184) = *(a1 + 184);
  *(v4 + 185) = *(a1 + 185);
  *(v4 + 186) = *(a1 + 186);
  *(v4 + 188) = *(a1 + 188);
  *(v4 + 192) = *(a1 + 192);
  *(v4 + 200) = bms_copy(*(a1 + 200), v9);
  *(v4 + 208) = bms_copy(*(a1 + 208), v10);
  *(v4 + 216) = bms_copy(*(a1 + 216), v11);
  *(v4 + 224) = bms_copy(*(a1 + 224), v12);
  *(v4 + 232) = copyObjectImpl(*(a1 + 232));
  return v4;
}

unint64_t _copyRangeTblFunction(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x40uLL);
  *v4 = 372;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = copyObjectImpl(*(a1 + 40));
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = bms_copy(*(a1 + 56), v5);
  return v4;
}

unint64_t _copyTableSampleClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 373;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyWithCheckOption(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 374;
  *(v4 + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copySortGroupClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 375;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  *(result + 12) = *(a1 + 12);
  *(result + 16) = *(a1 + 16);
  *(result + 17) = *(a1 + 17);
  return result;
}

unint64_t _copyGroupingSet(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 376;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyWindowClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 377;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v7 = pstrdup(v7, v5);
  }

  *(v4 + 16) = v7;
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 48) = copyObjectImpl(*(a1 + 48));
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = *(a1 + 64);
  *(v4 + 68) = *(a1 + 68);
  *(v4 + 72) = *(a1 + 72);
  *(v4 + 76) = *(a1 + 76);
  *(v4 + 77) = *(a1 + 77);
  *(v4 + 80) = *(a1 + 80);
  *(v4 + 84) = *(a1 + 84);
  return v4;
}

unint64_t _copyRowMarkClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZero(*v3, 0x14uLL);
  *result = 384;
  *(result + 4) = *(a1 + 4);
  *(result + 8) = *(a1 + 8);
  *(result + 12) = *(a1 + 12);
  *(result + 16) = *(a1 + 16);
  return result;
}

unint64_t _copyWithClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 386;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  *(v4 + 20) = *(a1 + 20);
  return v4;
}

unint64_t _copyInferClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 387;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  v6 = *(a1 + 24);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 24) = v6;
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyOnConflictClause(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x28uLL);
  *v4 = 388;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

unint64_t _copyCommonTableExpr(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x58uLL);
  *v4 = 389;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  *(v4 + 44) = *(a1 + 44);
  *(v4 + 48) = *(a1 + 48);
  *(v4 + 56) = copyObjectImpl(*(a1 + 56));
  *(v4 + 64) = copyObjectImpl(*(a1 + 64));
  *(v4 + 72) = copyObjectImpl(*(a1 + 72));
  *(v4 + 80) = copyObjectImpl(*(a1 + 80));
  return v4;
}

unint64_t _copyObjectWithArgs(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 378;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyAccessPriv(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 379;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

unint64_t _copyXmlSerialize(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 385;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyRoleSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 390;
  *(result + 4) = *(a1 + 4);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  return result;
}

unint64_t _copyTriggerTransition(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *result = 391;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = result;
    v6 = pstrdup(*(a1 + 8), v5);
    result = v7;
  }

  *(result + 8) = v6;
  *(result + 16) = *(a1 + 16);
  *(result + 17) = *(a1 + 17);
  return result;
}

unint64_t _copyPartitionElem(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 392;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyPartitionSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x20uLL);
  *v4 = 393;
  v6 = *(a1 + 8);
  if (v6)
  {
    v6 = pstrdup(v6, v5);
  }

  *(v4 + 8) = v6;
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = *(a1 + 24);
  return v4;
}

unint64_t _copyPartitionBoundSpec(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x30uLL);
  *v4 = 394;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 5) = *(a1 + 5);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  *(v4 + 24) = copyObjectImpl(*(a1 + 24));
  *(v4 + 32) = copyObjectImpl(*(a1 + 32));
  *(v4 + 40) = *(a1 + 40);
  return v4;
}

unint64_t _copyPartitionRangeDatum(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 395;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = *(a1 + 16);
  return v4;
}

unint64_t _copyPartitionCmd(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZeroAligned(*v3, 0x18uLL);
  *v4 = 396;
  *(v4 + 8) = copyObjectImpl(*(a1 + 8));
  *(v4 + 16) = copyObjectImpl(*(a1 + 16));
  return v4;
}

__n128 _copyForeignKeyCacheInfo(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  v4 = MemoryContextAllocZero(*v3, 0x114uLL);
  *v4 = 415;
  *(v4 + 4) = *(a1 + 4);
  *(v4 + 8) = *(a1 + 8);
  *(v4 + 12) = *(a1 + 12);
  *(v4 + 16) = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 36);
  v7 = *(a1 + 52);
  *(v4 + 68) = *(a1 + 68);
  *(v4 + 52) = v7;
  *(v4 + 36) = v6;
  *(v4 + 20) = v5;
  v8 = *(a1 + 132);
  v9 = *(a1 + 116);
  v10 = *(a1 + 100);
  *(v4 + 84) = *(a1 + 84);
  *(v4 + 100) = v10;
  *(v4 + 116) = v9;
  *(v4 + 132) = v8;
  v11 = *(a1 + 196);
  v12 = *(a1 + 180);
  v13 = *(a1 + 164);
  *(v4 + 148) = *(a1 + 148);
  *(v4 + 164) = v13;
  *(v4 + 180) = v12;
  *(v4 + 196) = v11;
  result = *(a1 + 228);
  v15 = *(a1 + 244);
  v16 = *(a1 + 260);
  *(v4 + 212) = *(a1 + 212);
  *(v4 + 260) = v16;
  *(v4 + 244) = v15;
  *(v4 + 228) = result;
  return result;
}

void *CopySortFields(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 37) = *(a1 + 37);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = copyObjectImpl(*(a1 + 48));
  *(a2 + 56) = copyObjectImpl(*(a1 + 56));
  *(a2 + 64) = copyObjectImpl(*(a1 + 64));
  *(a2 + 72) = copyObjectImpl(*(a1 + 72));
  *(a2 + 80) = copyObjectImpl(*(a1 + 80));
  *(a2 + 88) = bms_copy(*(a1 + 88), v4);
  *(a2 + 96) = bms_copy(*(a1 + 96), v5);
  v6 = *(a1 + 104);
  *(a2 + 104) = v6;
  v7 = 2 * v6;
  v9 = palloc(2 * v6, v8);
  *(a2 + 112) = v9;
  memcpy(v9, *(a1 + 112), v7);
  v10 = 4 * *(a1 + 104);
  v12 = palloc(v10, v11);
  *(a2 + 120) = v12;
  memcpy(v12, *(a1 + 120), v10);
  v13 = 4 * *(a1 + 104);
  v15 = palloc(v13, v14);
  *(a2 + 128) = v15;
  memcpy(v15, *(a1 + 128), v13);
  v16 = *(a1 + 104);
  v18 = palloc(v16, v17);
  *(a2 + 136) = v18;
  v19 = *(a1 + 136);

  return memcpy(v18, v19, v16);
}

const char *CopyCreateStmtFields(uint64_t a1, uint64_t a2)
{
  *(a2 + 8) = copyObjectImpl(*(a1 + 8));
  *(a2 + 16) = copyObjectImpl(*(a1 + 16));
  *(a2 + 24) = copyObjectImpl(*(a1 + 24));
  *(a2 + 40) = copyObjectImpl(*(a1 + 40));
  *(a2 + 32) = copyObjectImpl(*(a1 + 32));
  *(a2 + 48) = copyObjectImpl(*(a1 + 48));
  *(a2 + 56) = copyObjectImpl(*(a1 + 56));
  *(a2 + 64) = copyObjectImpl(*(a1 + 64));
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v5)
  {
    v5 = pstrdup(v5, v4);
  }

  *(a2 + 80) = v5;
  result = *(a1 + 88);
  if (result)
  {
    result = pstrdup(result, v4);
  }

  *(a2 + 88) = result;
  *(a2 + 96) = *(a1 + 96);
  return result;
}

void copyObjectImpl_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_copyfuncs.c", 6007, "copyObjectImpl");
  __break(1u);
}

void _copyValue_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_copyfuncs.c", 5080, "_copyValue");
  __break(1u);
}

void _copyAConst_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_copyfuncs.c", 2957, "_copyAConst");
  __break(1u);
}

uint64_t equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  while (2)
  {
    result = 0;
    if (v3 && v2)
    {
      if (*v3 == *v2)
      {
        check_stack_depth();
        result = 1;
        switch(*v3)
        {
          case 0x66:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x67:

            return _equalRangeVar(v3, v2);
          case 0x68:

            return _equalTableFunc(v3, v2);
          case 0x6A:

            return _equalVar(v3, v2);
          case 0x6B:

            return _equalConst(v3, v2);
          case 0x6C:

            return _equalParam(v3, v2);
          case 0x6D:

            return _equalAggref(v3, v2);
          case 0x6E:
            result = equal(*(v3 + 8), *(v2 + 8));
            if (result)
            {
              return *(v3 + 32) == *(v2 + 32);
            }

            return result;
          case 0x6F:

            return _equalWindowFunc(v3, v2);
          case 0x70:

            return _equalSubscriptingRef(v3, v2);
          case 0x71:

            return _equalFuncExpr(v3, v2);
          case 0x72:
            v5 = v3;
            v6 = v2;

            return _equalNamedArgExpr(v5, v6);
          case 0x73:
            v9 = v3;
            v10 = v2;

            return _equalOpExpr(v9, v10);
          case 0x74:
            v9 = v3;
            v10 = v2;

            return _equalOpExpr(v9, v10);
          case 0x75:
            v9 = v3;
            v10 = v2;

            return _equalOpExpr(v9, v10);
          case 0x76:

            return _equalScalarArrayOpExpr(v3, v2);
          case 0x77:
          case 0x178:
          case 0x18B:
            if (*(v3 + 4) == *(v2 + 4))
            {
              goto LABEL_8;
            }

            return 0;
          case 0x78:
            v33 = v3;
            v34 = v2;

            return _equalSubLink(v33, v34);
          case 0x79:

            return _equalSubPlan(v3, v2);
          case 0x7A:
          case 0x100:
          case 0x14C:
          case 0x157:
          case 0x15B:
          case 0x162:
LABEL_8:
            v3 = *(v3 + 8);
            v2 = *(v2 + 8);
            if (v3 == v2)
            {
              return result;
            }

            continue;
          case 0x7B:

            return _equalFieldSelect(v3, v2);
          case 0x7C:

            return _equalFieldStore(v3, v2);
          case 0x7D:
            v51 = v3;
            v52 = v2;

            return _equalRelabelType(v51, v52);
          case 0x7E:
            v19 = v3;
            v20 = v2;

            return _equalCoerceViaIO(v19, v20);
          case 0x7F:

            return _equalArrayCoerceExpr(v3, v2);
          case 0x80:
          case 0x81:
          case 0x8D:
          case 0x131:
            result = equal(*(v3 + 8), *(v2 + 8));
            if (result)
            {
              return *(v3 + 16) == *(v2 + 16);
            }

            return result;
          case 0x82:
            v33 = v3;
            v34 = v2;

            return _equalSubLink(v33, v34);
          case 0x83:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x84:
          case 0x8A:
          case 0x90:
            if (*(v3 + 4) != *(v2 + 4))
            {
              return 0;
            }

            if (*(v3 + 8) == *(v2 + 8))
            {
              return *(v3 + 12) == *(v2 + 12);
            }

            return 0;
          case 0x85:

            return _equalArrayExpr(v3, v2);
          case 0x86:
            v7 = v3;
            v8 = v2;

            return _equalRowExpr(v7, v8);
          case 0x87:

            return _equalRowCompareExpr(v3, v2);
          case 0x88:

            return _equalCoalesceExpr(v3, v2);
          case 0x89:

            return _equalMinMaxExpr(v3, v2);
          case 0x8B:

            return _equalXmlExpr(v3, v2);
          case 0x8C:
            v21 = v3;
            v22 = v2;

            return _equalNullTest(v21, v22);
          case 0x8E:
            v51 = v3;
            v52 = v2;

            return _equalRelabelType(v51, v52);
          case 0x8F:
            if (*(v3 + 4) != *(v2 + 4) || *(v3 + 8) != *(v2 + 8))
            {
              return 0;
            }

            return *(v3 + 12) == *(v2 + 12);
          case 0x91:

            return _equalCurrentOfExpr(v3, v2);
          case 0x92:
            if (*(v3 + 4) != *(v2 + 4))
            {
              return 0;
            }

            return *(v3 + 8) == *(v2 + 8);
          case 0x93:
            v19 = v3;
            v20 = v2;

            return _equalCoerceViaIO(v19, v20);
          case 0x94:

            return _equalTargetEntry(v3, v2);
          case 0x95:
          case 0x113:
          case 0x15C:
            return *(v3 + 4) == *(v2 + 4);
          case 0x96:

            return _equalJoinExpr(v3, v2);
          case 0x97:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x98:

            return _equalOnConflictExpr(v3, v2);
          case 0x99:

            return _equalIntoClause(v3, v2);
          case 0xCB:
            if (*(v3 + 8) != *(v2 + 8))
            {
              return 0;
            }

            if (*(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20))
            {
              return 0;
            }

            return *(v3 + 24) == *(v2 + 24);
          case 0xCD:

            return _equalRestrictInfo(v3, v2);
          case 0xCF:
            if (*(v3 + 24) != *(v2 + 24))
            {
              return 0;
            }

            return *(v3 + 28) == *(v2 + 28);
          case 0xD0:

            return _equalSpecialJoinInfo(v3, v2);
          case 0xD1:

            return _equalAppendRelInfo(v3, v2);
          case 0xD2:

            return _equalPlaceHolderInfo(v3, v2);
          case 0xDD:
          case 0xDE:
          case 0xDF:
          case 0xE0:
          case 0xE1:

            return _equalValue(v3, v2);
          case 0xE2:
          case 0xE3:
          case 0xE4:

            return _equalList(v3, v2);
          case 0xE5:

            return _equalExtensibleNode(v3, v2);
          case 0xE6:
            result = equal(*(v3 + 8), *(v2 + 8));
            if (result)
            {
              return *(v3 + 20) == *(v2 + 20);
            }

            return result;
          case 0xE7:

            return _equalQuery(v3, v2);
          case 0xE9:

            return _equalInsertStmt(v3, v2);
          case 0xEA:

            return _equalDeleteStmt(v3, v2);
          case 0xEB:

            return _equalUpdateStmt(v3, v2);
          case 0xEC:

            return _equalSelectStmt(v3, v2);
          case 0xED:

            return _equalAlterTableStmt(v3, v2);
          case 0xEE:

            return _equalAlterTableCmd(v3, v2);
          case 0xEF:

            return _equalAlterDomainStmt(v3, v2);
          case 0xF0:

            return _equalSetOperationStmt(v3, v2);
          case 0xF1:

            return _equalGrantStmt(v3, v2);
          case 0xF2:

            return _equalGrantRoleStmt(v3, v2);
          case 0xF3:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0xF4:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0xF5:
            v5 = v3;
            v6 = v2;

            return _equalNamedArgExpr(v5, v6);
          case 0xF6:

            return _equalCopyStmt(v3, v2);
          case 0xF7:

            return _equalCreateStmt(v3, v2);
          case 0xF8:

            return _equalDefineStmt(v3, v2);
          case 0xF9:

            return _equalDropStmt(v3, v2);
          case 0xFA:

            return _equalTruncateStmt(v3, v2);
          case 0xFB:

            return _equalCommentStmt(v3, v2);
          case 0xFC:

            return _equalFetchStmt(v3, v2);
          case 0xFD:

            return _equalIndexStmt(v3, v2);
          case 0xFE:

            return _equalCreateFunctionStmt(v3, v2);
          case 0xFF:
            v49 = v3;
            v50 = v2;

            return _equalAlterFunctionStmt(v49, v50);
          case 0x101:

            return _equalRenameStmt(v3, v2);
          case 0x102:

            return _equalRuleStmt(v3, v2);
          case 0x103:

            return _equalNotifyStmt(v3, v2);
          case 0x104:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0x105:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0x106:

            return _equalTransactionStmt(v3, v2);
          case 0x107:

            return _equalViewStmt(v3, v2);
          case 0x108:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0x109:
            v45 = v3;
            v46 = v2;

            return _equalCreateDomainStmt(v45, v46);
          case 0x10A:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x10B:
            v43 = v3;
            v44 = v2;

            return _equalDropdbStmt(v43, v44);
          case 0x10C:
            v13 = v3;
            v14 = v2;

            return _equalVacuumStmt(v13, v14);
          case 0x10D:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x10E:
            v47 = v3;
            v48 = v2;

            return _equalCreateTableAsStmt(v47, v48);
          case 0x10F:
            v47 = v3;
            v48 = v2;

            return _equalCreateTableAsStmt(v47, v48);
          case 0x110:

            return _equalAlterSeqStmt(v3, v2);
          case 0x111:

            return _equalVariableSetStmt(v3, v2);
          case 0x112:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0x114:

            return _equalCreateTrigStmt(v3, v2);
          case 0x115:

            return _equalCreatePLangStmt(v3, v2);
          case 0x116:

            return _equalCreateRoleStmt(v3, v2);
          case 0x117:

            return _equalAlterRoleStmt(v3, v2);
          case 0x118:
          case 0x11A:
          case 0x182:
            result = equal(*(v3 + 8), *(v2 + 8));
            if (result)
            {
              return *(v3 + 16) == *(v2 + 16);
            }

            return result;
          case 0x119:
            v21 = v3;
            v22 = v2;

            return _equalNullTest(v21, v22);
          case 0x11B:

            return _equalReindexStmt(v3, v2);
          case 0x11C:
          case 0x15F:
            return result;
          case 0x11D:
            v41 = v3;
            v42 = v2;

            return _equalCreateSchemaStmt(v41, v42);
          case 0x11E:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x11F:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x120:
            v15 = v3;
            v16 = v2;

            return _equalAlterUserMappingStmt(v15, v16);
          case 0x121:

            return _equalCreateConversionStmt(v3, v2);
          case 0x122:

            return _equalCreateCastStmt(v3, v2);
          case 0x123:

            return _equalCreateOpClassStmt(v3, v2);
          case 0x124:

            return _equalCreateOpFamilyStmt(v3, v2);
          case 0x125:
            v17 = v3;
            v18 = v2;

            return _equalAlterOpFamilyStmt(v17, v18);
          case 0x126:
            v37 = v3;
            v38 = v2;

            return _equalCreateFdwStmt(v37, v38);
          case 0x127:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x128:
            v23 = *(v3 + 8);
            v24 = v2;

            return _equalClosePortalStmt(v23, v24);
          case 0x129:

            return _equalDeclareCursorStmt(v3, v2);
          case 0x12A:

            return _equalCreateTableSpaceStmt(v3, v2);
          case 0x12B:
            v35 = v3;
            v36 = v2;

            return _equalDropTableSpaceStmt(v35, v36);
          case 0x12C:

            return _equalAlterObjectDependsStmt(v3, v2);
          case 0x12D:

            return _equalAlterObjectSchemaStmt(v3, v2);
          case 0x12E:
            v25 = v3;
            v26 = v2;

            return _equalAlterOwnerStmt(v25, v26);
          case 0x12F:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x130:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x132:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x133:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x134:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x135:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x136:

            return _equalAlterEnumStmt(v3, v2);
          case 0x137:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x138:

            return _equalAlterTSConfigurationStmt(v3, v2);
          case 0x139:
            v37 = v3;
            v38 = v2;

            return _equalCreateFdwStmt(v37, v38);
          case 0x13A:
            v37 = v3;
            v38 = v2;

            return _equalCreateFdwStmt(v37, v38);
          case 0x13B:

            return _equalCreateForeignServerStmt(v3, v2);
          case 0x13C:

            return _equalAlterForeignServerStmt(v3, v2);
          case 0x13D:
            v17 = v3;
            v18 = v2;

            return _equalAlterOpFamilyStmt(v17, v18);
          case 0x13E:
            v15 = v3;
            v16 = v2;

            return _equalAlterUserMappingStmt(v15, v16);
          case 0x13F:

            return _equalDropUserMappingStmt(v3, v2);
          case 0x140:
            v29 = v3;
            v30 = v2;

            return _equalAlterTableSpaceOptionsStmt(v29, v30);
          case 0x141:

            return _equalAlterTableMoveAllStmt(v3, v2);
          case 0x142:

            return _equalSecLabelStmt(v3, v2);
          case 0x143:

            return _equalCreateForeignTableStmt(v3, v2);
          case 0x144:

            return _equalImportForeignSchemaStmt(v3, v2);
          case 0x145:
            v43 = v3;
            v44 = v2;

            return _equalDropdbStmt(v43, v44);
          case 0x146:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x147:

            return _equalAlterExtensionContentsStmt(v3, v2);
          case 0x148:
            v27 = v3;
            v28 = v2;

            return _equalCreateEventTrigStmt(v27, v28);
          case 0x149:
            v35 = v3;
            v36 = v2;

            return _equalDropTableSpaceStmt(v35, v36);
          case 0x14A:

            return _equalRefreshMatViewStmt(v3, v2);
          case 0x14B:

            return _equalReplicaIdentityStmt(v3, v2);
          case 0x14D:

            return _equalCreatePolicyStmt(v3, v2);
          case 0x14E:

            return _equalAlterPolicyStmt(v3, v2);
          case 0x14F:

            return _equalCreateTransformStmt(v3, v2);
          case 0x150:
            v29 = v3;
            v30 = v2;

            return _equalAlterTableSpaceOptionsStmt(v29, v30);
          case 0x151:
            v41 = v3;
            v42 = v2;

            return _equalCreateSchemaStmt(v41, v42);
          case 0x152:

            return _equalAlterPublicationStmt(v3, v2);
          case 0x153:
            v27 = v3;
            v28 = v2;

            return _equalCreateEventTrigStmt(v27, v28);
          case 0x154:

            return _equalAlterSubscriptionStmt(v3, v2);
          case 0x155:

            return _equalDropSubscriptionStmt(v3, v2);
          case 0x156:

            return _equalCreateStatsStmt(v3, v2);
          case 0x158:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x159:
            v21 = v3;
            v22 = v2;

            return _equalNullTest(v21, v22);
          case 0x15A:
            v25 = v3;
            v26 = v2;

            return _equalAlterOwnerStmt(v25, v26);
          case 0x15D:
            v3 += 8;
            v2 += 8;
            if (v3 == v2)
            {
              return result;
            }

            continue;
          case 0x15E:

            return _equalFuncCall(v3, v2);
          case 0x160:
            v39 = v3;
            v40 = v2;

            return _equalAIndices(v39, v40);
          case 0x161:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x163:
            v37 = v3;
            v38 = v2;

            return _equalCreateFdwStmt(v37, v38);
          case 0x164:
            v19 = v3;
            v20 = v2;

            return _equalCoerceViaIO(v19, v20);
          case 0x165:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x166:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x167:

            return _equalSortBy(v3, v2);
          case 0x168:

            return _equalWindowDef(v3, v2);
          case 0x169:
            v39 = v3;
            v40 = v2;

            return _equalAIndices(v39, v40);
          case 0x16A:

            return _equalRangeFunction(v3, v2);
          case 0x16B:
            v45 = v3;
            v46 = v2;

            return _equalCreateDomainStmt(v45, v46);
          case 0x16C:

            return _equalRangeTableFunc(v3, v2);
          case 0x16D:

            return _equalRangeTableFuncCol(v3, v2);
          case 0x16E:

            return _equalTypeName(v3, v2);
          case 0x16F:

            return _equalColumnDef(v3, v2);
          case 0x170:

            return _equalIndexElem(v3, v2);
          case 0x171:

            return _equalConstraint(v3, v2);
          case 0x172:

            return _equalDefElem(v3, v2);
          case 0x173:

            return _equalRangeTblEntry(v3, v2);
          case 0x174:

            return _equalRangeTblFunction(v3, v2);
          case 0x175:
            v49 = v3;
            v50 = v2;

            return _equalAlterFunctionStmt(v49, v50);
          case 0x176:

            return _equalWithCheckOption(v3, v2);
          case 0x177:

            return _equalSortGroupClause(v3, v2);
          case 0x179:

            return _equalWindowClause(v3, v2);
          case 0x17A:
            v13 = v3;
            v14 = v2;

            return _equalVacuumStmt(v13, v14);
          case 0x17B:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x17C:

            return _equalCreateOpClassItem(v3, v2);
          case 0x17D:
            v19 = v3;
            v20 = v2;

            return _equalCoerceViaIO(v19, v20);
          case 0x17E:

            return _equalFunctionParameter(v3, v2);
          case 0x17F:
            v19 = v3;
            v20 = v2;

            return _equalCoerceViaIO(v19, v20);
          case 0x180:
            if (*(v3 + 4) != *(v2 + 4) || *(v3 + 8) != *(v2 + 8))
            {
              return 0;
            }

            if (*(v3 + 12) == *(v2 + 12))
            {
              return *(v3 + 16) == *(v2 + 16);
            }

            break;
          case 0x181:
            v49 = v3;
            v50 = v2;

            return _equalAlterFunctionStmt(v49, v50);
          case 0x183:

            return _equalInferClause(v3, v2);
          case 0x184:
            v25 = v3;
            v26 = v2;

            return _equalAlterOwnerStmt(v25, v26);
          case 0x185:

            return _equalCommonTableExpr(v3, v2);
          case 0x186:

            return _equalRoleSpec(v3, v2);
          case 0x187:

            return _equalTriggerTransition(v3, v2);
          case 0x188:

            return _equalPartitionElem(v3, v2);
          case 0x189:
            v31 = v3;
            v32 = v2;

            return _equalAlias(v31, v32);
          case 0x18A:

            return _equalPartitionBoundSpec(v3, v2);
          case 0x18C:
            v11 = v3;
            v12 = v2;

            return _equalCaseWhen(v11, v12);
          case 0x18D:
            v7 = v3;
            v8 = v2;

            return _equalRowExpr(v7, v8);
          default:
            equal_cold_1();
        }
      }

      return 0;
    }

    return result;
  }
}

uint64_t _equalAlias(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);

  return equal(v7, v8);
}

uint64_t _equalRangeVar(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (!v7 || strcmp(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v9 || strcmp(v8, v9))
  {
    return 0;
  }

LABEL_16:
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);

  return equal(v10, v11);
}

uint64_t _equalTableFunc(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        result = equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          result = equal(*(a1 + 40), *(a2 + 40));
          if (result)
          {
            result = equal(*(a1 + 48), *(a2 + 48));
            if (result)
            {
              result = equal(*(a1 + 56), *(a2 + 56));
              if (result)
              {
                result = equal(*(a1 + 64), *(a2 + 64));
                if (result)
                {
                  result = equal(*(a1 + 72), *(a2 + 72));
                  if (result)
                  {
                    result = equal(*(a1 + 80), *(a2 + 80));
                    if (result)
                    {
                      result = bms_equal(*(a1 + 88), *(a2 + 88));
                      if (result)
                      {
                        return *(a1 + 96) == *(a2 + 96);
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

  return result;
}

uint64_t _equalIntoClause(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = *(a2 + 24);
      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        if (strcmp(v5, v6))
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      result = equal(*(a1 + 32), *(a2 + 32));
      if (!result)
      {
        return result;
      }

      if (*(a1 + 40) != *(a2 + 40))
      {
        return 0;
      }

      v7 = *(a1 + 48);
      v8 = *(a2 + 48);
      if (v7)
      {
        if (!v8 || strcmp(v7, v8))
        {
          return 0;
        }

        goto LABEL_15;
      }

      if (!v8)
      {
LABEL_15:
        result = equal(*(a1 + 56), *(a2 + 56));
        if (result)
        {
          return *(a1 + 64) == *(a2 + 64);
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

BOOL _equalConst(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 32);
  if (v3 != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 33);
  if (v4 != *(a2 + 33) || (v3 & 1) != 0)
  {
    return v4 == *(a2 + 33);
  }

  else
  {
    return datumIsEqual(*(a1 + 24), *(a2 + 24), v4, v2);
  }
}

uint64_t _equalAggref(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = equal(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      result = equal(*(a1 + 40), *(a2 + 40));
      if (result)
      {
        result = equal(*(a1 + 48), *(a2 + 48));
        if (result)
        {
          result = equal(*(a1 + 56), *(a2 + 56));
          if (result)
          {
            result = equal(*(a1 + 64), *(a2 + 64));
            if (result)
            {
              if (*(a1 + 72) == *(a2 + 72) && *(a1 + 73) == *(a2 + 73) && *(a1 + 74) == *(a2 + 74))
              {
                return *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80);
              }

              else
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _equalWindowFunc(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = equal(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      if (*(a1 + 40) == *(a2 + 40))
      {
        return *(a1 + 44) == *(a2 + 44) && *(a1 + 45) == *(a2 + 45);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _equalSubscriptingRef(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);

  return equal(v4, v5);
}

uint64_t _equalFuncExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 13) == *(a2 + 13) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24))
  {
    return equal(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalNamedArgExpr(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        if (strcmp(v5, v6))
        {
          return 0;
        }

        return *(a1 + 24) == *(a2 + 24);
      }
    }

    else if (!v6)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    return 0;
  }

  return result;
}

uint64_t _equalOpExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && ((v2 = *(a1 + 8), (v3 = *(a2 + 8)) != 0) ? (v4 = v2 == 0) : (v4 = 1), !v4 ? (v5 = v2 == v3) : (v5 = 1), v5 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24)))
  {
    return equal(*(a1 + 32), *(a2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalScalarArrayOpExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && ((v2 = *(a1 + 8), (v3 = *(a2 + 8)) != 0) ? (v4 = v2 == 0) : (v4 = 1), !v4 ? (v5 = v2 == v3) : (v5 = 1), v5 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16)))
  {
    return equal(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalSubLink(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return equal(v4, v5);
}

uint64_t _equalSubPlan(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      if (*(a1 + 24) == *(a2 + 24))
      {
        v5 = *(a1 + 32);
        v6 = *(a2 + 32);
        if (v5)
        {
          if (!v6 || strcmp(v5, v6))
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }

        if (*(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 53) != *(a2 + 53) || *(a1 + 54) != *(a2 + 54))
        {
          return 0;
        }

        result = equal(*(a1 + 56), *(a2 + 56));
        if (result)
        {
          result = equal(*(a1 + 64), *(a2 + 64));
          if (result)
          {
            result = equal(*(a1 + 72), *(a2 + 72));
            if (result)
            {
              if (*(a1 + 80) != *(a2 + 80))
              {
                return 0;
              }

              return *(a1 + 88) == *(a2 + 88);
            }
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _equalFieldSelect(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

uint64_t _equalFieldStore(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        return *(a1 + 32) == *(a2 + 32);
      }
    }
  }

  return result;
}

uint64_t _equalRelabelType(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t _equalCoerceViaIO(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

uint64_t _equalArrayCoerceExpr(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32);
    }
  }

  return result;
}

uint64_t _equalCaseWhen(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);

    return equal(v5, v6);
  }

  return result;
}

uint64_t _equalArrayExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t _equalRowExpr(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);

  return equal(v4, v5);
}

uint64_t _equalRowCompareExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);

  return equal(v4, v5);
}

uint64_t _equalCoalesceExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8))
  {
    return equal(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalMinMaxExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    return equal(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalXmlExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        if (*(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44))
        {
          return *(a1 + 48) == *(a2 + 48);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _equalNullTest(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

BOOL _equalCurrentOfExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    v6 = strcmp(v2, v3);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

uint64_t _equalTargetEntry(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a1 + 24);
      v6 = *(a2 + 24);
      if (v5)
      {
        if (v6)
        {
          if (strcmp(v5, v6))
          {
            return 0;
          }

          goto LABEL_9;
        }
      }

      else if (!v6)
      {
LABEL_9:
        if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40))
        {
          return *(a1 + 42) == *(a2 + 42);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _equalOnConflictExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return equal(v4, v5);
}

uint64_t _equalJoinExpr(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        result = equal(*(a1 + 40), *(a2 + 40));
        if (result)
        {
          result = equal(*(a1 + 48), *(a2 + 48));
          if (result)
          {
            return *(a1 + 56) == *(a2 + 56);
          }
        }
      }
    }
  }

  return result;
}

BOOL _equalRestrictInfo(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 24) != *(a2 + 24) || !bms_equal(*(a1 + 40), *(a2 + 40)) || !bms_equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return bms_equal(v4, v5);
}

uint64_t _equalSpecialJoinInfo(uint64_t a1, uint64_t a2)
{
  if (!bms_equal(*(a1 + 8), *(a2 + 8)) || !bms_equal(*(a1 + 16), *(a2 + 16)) || !bms_equal(*(a1 + 24), *(a2 + 24)) || !bms_equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 45) != *(a2 + 45) || *(a1 + 46) != *(a2 + 46) || *(a1 + 47) != *(a2 + 47) || !equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return equal(v4, v5);
}

uint64_t _equalAppendRelInfo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    v5 = *(a1 + 32);
    return v5 == *(a2 + 32) && !memcmp(*(a1 + 40), *(a2 + 40), 2 * v5) && *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

uint64_t _equalPlaceHolderInfo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = bms_equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = bms_equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        result = bms_equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          return *(a1 + 40) == *(a2 + 40);
        }
      }
    }
  }

  return result;
}

uint64_t _equalList(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a1[1];
  if (v5 != *(a2 + 4))
  {
    return 0;
  }

  switch(v2)
  {
    case 226:
      v15 = 0;
      v16 = 0;
      do
      {
        if (v16 >= a1[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = (*(a1 + 2) + v15);
        }

        result = 1;
        if (v16 >= *(a2 + 4))
        {
          break;
        }

        if (!v17)
        {
          break;
        }

        v18 = (*(a2 + 16) + v15);
        if (!v18)
        {
          break;
        }

        v19 = equal(*v17, *v18);
        result = 0;
        ++v16;
        v15 += 8;
      }

      while ((v19 & 1) != 0);
      break;
    case 227:
      v11 = 0;
      v12 = 0;
      do
      {
        if (v12 >= v5)
        {
          v13 = 0;
        }

        else
        {
          v13 = (*(a1 + 2) + v11);
        }

        ++v12;
        result = 1;
        if ((v5 & ~(v5 >> 31)) + 1 == v12)
        {
          break;
        }

        if (!v13)
        {
          break;
        }

        v14 = (*(a2 + 16) + v11);
        if (!v14)
        {
          break;
        }

        result = 0;
        v11 += 8;
      }

      while (*v13 == *v14);
      break;
    case 228:
      v6 = 0;
      v7 = 0;
      do
      {
        if (v7 >= v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = (*(a1 + 2) + v6);
        }

        ++v7;
        result = 1;
        if ((v5 & ~(v5 >> 31)) + 1 == v7)
        {
          break;
        }

        if (!v8)
        {
          break;
        }

        v10 = (*(a2 + 16) + v6);
        if (!v10)
        {
          break;
        }

        result = 0;
        v6 += 8;
      }

      while (*v8 == *v10);
      break;
    default:
      _equalList_cold_1();
  }

  return result;
}

BOOL _equalValue(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((v2 - 222) >= 3)
  {
    if (v2 != 225)
    {
      if (v2 != 221)
      {
        _equalValue_cold_1();
      }

      if (a1[2] != a2[2])
      {
        return 0;
      }
    }

    return 1;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3)
  {
    return v4 && !strcmp(v3, v4);
  }

  return !v4;
}

uint64_t _equalExtensibleNode(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(*(a1 + 8), v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(GetExtensibleNodeMethods(v4, 0) + 24);

  return v7(a1, a2);
}

uint64_t _equalQuery(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  result = equal(*(a1 + 32), *(a2 + 32));
  if (result)
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }

    if (*(a1 + 44) != *(a2 + 44) || *(a1 + 45) != *(a2 + 45) || *(a1 + 46) != *(a2 + 46) || *(a1 + 47) != *(a2 + 47) || *(a1 + 48) != *(a2 + 48) || *(a1 + 49) != *(a2 + 49) || *(a1 + 50) != *(a2 + 50) || *(a1 + 51) != *(a2 + 51) || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }

    result = equal(*(a1 + 56), *(a2 + 56));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 64), *(a2 + 64));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 72), *(a2 + 72));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 80), *(a2 + 80));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }

    result = equal(*(a1 + 96), *(a2 + 96));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 104), *(a2 + 104));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 112), *(a2 + 112));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 120), *(a2 + 120));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 128), *(a2 + 128));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 136), *(a2 + 136));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 144), *(a2 + 144));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 152), *(a2 + 152));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 160), *(a2 + 160));
    if (!result)
    {
      return result;
    }

    result = equal(*(a1 + 168), *(a2 + 168));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }

    result = equal(*(a1 + 184), *(a2 + 184));
    if (result)
    {
      result = equal(*(a1 + 192), *(a2 + 192));
      if (result)
      {
        result = equal(*(a1 + 200), *(a2 + 200));
        if (result)
        {
          result = equal(*(a1 + 208), *(a2 + 208));
          if (result)
          {
            return *(a1 + 220) == *(a2 + 220);
          }
        }
      }
    }
  }

  return result;
}

uint64_t _equalInsertStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        result = equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          result = equal(*(a1 + 40), *(a2 + 40));
          if (result)
          {
            result = equal(*(a1 + 48), *(a2 + 48));
            if (result)
            {
              return *(a1 + 56) == *(a2 + 56);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _equalDeleteStmt(uint64_t *a1, uint64_t *a2)
{
  if (!equal(a1[1], a2[1]) || !equal(a1[2], a2[2]) || !equal(a1[3], a2[3]) || !equal(a1[4], a2[4]))
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];

  return equal(v4, v5);
}

uint64_t _equalUpdateStmt(uint64_t *a1, uint64_t *a2)
{
  if (!equal(a1[1], a2[1]) || !equal(a1[2], a2[2]) || !equal(a1[3], a2[3]) || !equal(a1[4], a2[4]) || !equal(a1[5], a2[5]))
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return equal(v4, v5);
}

uint64_t _equalSelectStmt(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)) || !equal(*(a1 + 48), *(a2 + 48)) || !equal(*(a1 + 56), *(a2 + 56)) || !equal(*(a1 + 64), *(a2 + 64)) || !equal(*(a1 + 72), *(a2 + 72)) || !equal(*(a1 + 80), *(a2 + 80)) || !equal(*(a1 + 88), *(a2 + 88)) || !equal(*(a1 + 96), *(a2 + 96)) || *(a1 + 104) != *(a2 + 104) || !equal(*(a1 + 112), *(a2 + 112)) || !equal(*(a1 + 120), *(a2 + 120)) || *(a1 + 128) != *(a2 + 128) || *(a1 + 132) != *(a2 + 132) || !equal(*(a1 + 136), *(a2 + 136)))
  {
    return 0;
  }

  v4 = *(a1 + 144);
  v5 = *(a2 + 144);

  return equal(v4, v5);
}

uint64_t _equalSetOperationStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)) || !equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return equal(v4, v5);
}

uint64_t _equalAlterTableStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28);
    }
  }

  return result;
}

uint64_t _equalAlterTableCmd(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!v2)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = a2;
  v5 = strcmp(*(a1 + 8), *(a2 + 8));
  a2 = v4;
  v6 = v5;
  a1 = v3;
  if (v6)
  {
    return 0;
  }

LABEL_7:
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = equal(*(v8 + 32), *(v9 + 32));
    if (result)
    {
      if (*(v8 + 40) == *(v9 + 40))
      {
        return *(v8 + 44) == *(v9 + 44);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _equalAlterDomainStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (!v5)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (strcmp(v5, v6))
  {
    return 0;
  }

LABEL_9:
  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    if (*(a1 + 32) == *(a2 + 32))
    {
      return *(a1 + 36) == *(a2 + 36);
    }

    return 0;
  }

  return result;
}

uint64_t _equalGrantStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        return *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44);
      }
    }
  }

  return result;
}

uint64_t _equalGrantRoleStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      if (*(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25))
      {
        result = equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          return *(a1 + 40) == *(a2 + 40);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _equalDeclareCursorStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);

  return equal(v6, v7);
}

uint64_t _equalClosePortalStmt(const char *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (a1 && v2)
  {
    if (strcmp(a1, v2))
    {
      return 0;
    }
  }

  else if (v2 != a1)
  {
    return 0;
  }

  return 1;
}

uint64_t _equalCopyStmt(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);

  return equal(v6, v7);
}

uint64_t _equalCreateStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        result = equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          result = equal(*(a1 + 40), *(a2 + 40));
          if (result)
          {
            result = equal(*(a1 + 48), *(a2 + 48));
            if (result)
            {
              result = equal(*(a1 + 56), *(a2 + 56));
              if (result)
              {
                result = equal(*(a1 + 64), *(a2 + 64));
                if (result)
                {
                  if (*(a1 + 72) == *(a2 + 72))
                  {
                    v5 = *(a1 + 80);
                    v6 = *(a2 + 80);
                    if (v5)
                    {
                      if (!v6 || strcmp(v5, v6))
                      {
                        return 0;
                      }
                    }

                    else if (v6)
                    {
                      return 0;
                    }

                    v7 = *(a1 + 88);
                    v8 = *(a2 + 88);
                    if (v7)
                    {
                      if (!v8 || strcmp(v7, v8))
                      {
                        return 0;
                      }

                      return *(a1 + 96) == *(a2 + 96);
                    }

                    if (!v8)
                    {
                      return *(a1 + 96) == *(a2 + 96);
                    }

                    return 0;
                  }

                  return 0;
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

uint64_t _equalDefineStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        return *(a1 + 40) == *(a2 + 40) && *(a1 + 41) == *(a2 + 41);
      }
    }
  }

  return result;
}

uint64_t _equalDropStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25);
  }

  return result;
}

uint64_t _equalTruncateStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    return *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

uint64_t _equalCommentStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        return !strcmp(v5, v6);
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _equalSecLabelStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (!v6)
      {
        return 0;
      }

      if (strcmp(v5, v6))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7)
    {
      return v8 && !strcmp(v7, v8);
    }

    return !v8;
  }

  return result;
}

BOOL _equalFetchStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    v6 = strcmp(v2, v3);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  return *(a1 + 24) == *(a2 + 24);
}

uint64_t _equalIndexStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7)
    {
      if (!v8 || strcmp(v7, v8))
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    v9 = *(a1 + 32);
    v10 = *(a2 + 32);
    if (v9)
    {
      if (!v10 || strcmp(v9, v10))
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    result = equal(*(a1 + 40), *(a2 + 40));
    if (result)
    {
      result = equal(*(a1 + 48), *(a2 + 48));
      if (result)
      {
        result = equal(*(a1 + 56), *(a2 + 56));
        if (result)
        {
          result = equal(*(a1 + 64), *(a2 + 64));
          if (result)
          {
            result = equal(*(a1 + 72), *(a2 + 72));
            if (result)
            {
              v11 = *(a1 + 80);
              v12 = *(a2 + 80);
              if (v11)
              {
                if (!v12 || strcmp(v11, v12))
                {
                  return 0;
                }
              }

              else if (v12)
              {
                return 0;
              }

              if (*(a1 + 88) == *(a2 + 88) && *(a1 + 92) == *(a2 + 92) && *(a1 + 96) == *(a2 + 96) && *(a1 + 100) == *(a2 + 100) && *(a1 + 104) == *(a2 + 104) && *(a1 + 105) == *(a2 + 105) && *(a1 + 106) == *(a2 + 106) && *(a1 + 107) == *(a2 + 107) && *(a1 + 108) == *(a2 + 108) && *(a1 + 109) == *(a2 + 109) && *(a1 + 110) == *(a2 + 110) && *(a1 + 111) == *(a2 + 111))
              {
                return *(a1 + 112) == *(a2 + 112);
              }

              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _equalCreateStatsStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        result = equal(*(a1 + 32), *(a2 + 32));
        if (result)
        {
          v5 = *(a1 + 40);
          v6 = *(a2 + 40);
          if (!v5)
          {
            if (v6)
            {
              return 0;
            }

            return *(a1 + 48) == *(a2 + 48);
          }

          if (v6)
          {
            if (strcmp(v5, v6))
            {
              return 0;
            }

            return *(a1 + 48) == *(a2 + 48);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _equalCreateFunctionStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return equal(v4, v5);
}

uint64_t _equalFunctionParameter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);

  return equal(v6, v7);
}

uint64_t _equalAlterFunctionStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);

  return equal(v4, v5);
}

uint64_t _equalRenameStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      v5 = *(a1 + 32);
      v6 = *(a2 + 32);
      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        v7 = strcmp(v5, v6);
        v8 = a2;
        v9 = a1;
        if (v7)
        {
          return 0;
        }
      }

      else
      {
        v9 = a1;
        v8 = a2;
        if (v6)
        {
          return 0;
        }
      }

      v10 = *(v9 + 40);
      v11 = *(v8 + 40);
      if (v10)
      {
        if (!v11)
        {
          return 0;
        }

        v12 = strcmp(v10, v11);
        v8 = a2;
        v9 = a1;
        if (v12)
        {
          return 0;
        }

        return *(v9 + 48) == *(v8 + 48) && *(v9 + 52) == *(v8 + 52);
      }

      if (!v11)
      {
        return *(v9 + 48) == *(v8 + 48) && *(v9 + 52) == *(v8 + 52);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _equalAlterObjectDependsStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        return *(a1 + 32) == *(a2 + 32);
      }
    }
  }

  return result;
}

uint64_t _equalAlterObjectSchemaStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      v5 = *(a1 + 24);
      v6 = *(a2 + 24);
      if (v5)
      {
        if (v6)
        {
          if (strcmp(v5, v6))
          {
            return 0;
          }

          return *(a1 + 32) == *(a2 + 32);
        }
      }

      else if (!v6)
      {
        return *(a1 + 32) == *(a2 + 32);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _equalAlterOwnerStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);

  return equal(v4, v5);
}

uint64_t _equalRuleStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (!v6)
      {
        return 0;
      }

      if (strcmp(v5, v6))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    result = equal(*(a1 + 24), *(a2 + 24));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36))
    {
      result = equal(*(a1 + 40), *(a2 + 40));
      if (result)
      {
        return *(a1 + 48) == *(a2 + 48);
      }

      return result;
    }

    return 0;
  }

  return result;
}

BOOL _equalNotifyStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (!v6)
  {
    return !v7;
  }

  return v7 && !strcmp(v6, v7);
}

uint64_t _equalTransactionStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (!v6)
      {
        return 0;
      }

      if (strcmp(v5, v6))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7)
    {
      if (!v8 || strcmp(v7, v8))
      {
        return 0;
      }

      return *(a1 + 32) == *(a2 + 32);
    }

    if (!v8)
    {
      return *(a1 + 32) == *(a2 + 32);
    }

    return 0;
  }

  return result;
}

uint64_t _equalAlterEnumStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (!v6)
      {
        return 0;
      }

      if (strcmp(v5, v6))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7)
    {
      if (!v8 || strcmp(v7, v8))
      {
        return 0;
      }
    }

    else if (v8)
    {
      return 0;
    }

    v9 = *(a1 + 32);
    v10 = *(a2 + 32);
    if (v9)
    {
      if (v10 && !strcmp(v9, v10))
      {
LABEL_18:
        if (*(a1 + 40) == *(a2 + 40))
        {
          return *(a1 + 41) == *(a2 + 41);
        }
      }
    }

    else if (!v10)
    {
      goto LABEL_18;
    }

    return 0;
  }

  return result;
}

uint64_t _equalViewStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        if (*(a1 + 32) == *(a2 + 32))
        {
          result = equal(*(a1 + 40), *(a2 + 40));
          if (result)
          {
            return *(a1 + 48) == *(a2 + 48);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _equalCreateDomainStmt(uint64_t *a1, uint64_t *a2)
{
  if (!equal(a1[1], a2[1]) || !equal(a1[2], a2[2]) || !equal(a1[3], a2[3]))
  {
    return 0;
  }

  v4 = a1[4];
  v5 = a2[4];

  return equal(v4, v5);
}

uint64_t _equalCreateOpClassStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (!result)
  {
    return result;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (v6)
    {
      if (strcmp(v5, v6))
      {
        return 0;
      }

      goto LABEL_9;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_9:
  result = equal(*(a1 + 32), *(a2 + 32));
  if (result)
  {
    result = equal(*(a1 + 40), *(a2 + 40));
    if (result)
    {
      return *(a1 + 48) == *(a2 + 48);
    }
  }

  return result;
}

uint64_t _equalCreateOpClassItem(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);

  return equal(v4, v5);
}

uint64_t _equalCreateOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        return !strcmp(v5, v6);
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _equalAlterOpFamilyStmt(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);

  return equal(v6, v7);
}

uint64_t _equalDropdbStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);

  return equal(v6, v7);
}

uint64_t _equalVacuumStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24);
    }
  }

  return result;
}

uint64_t _equalCreateTableAsStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 29) == *(a2 + 29);
    }
  }

  return result;
}

uint64_t _equalRefreshMatViewStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5))
  {
    return equal(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t _equalReplicaIdentityStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3 || strcmp(v2, v3))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

uint64_t _equalAlterSeqStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25);
    }
  }

  return result;
}

uint64_t _equalVariableSetStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v2)
    {
      v3 = a1;
      v4 = a2;
      v5 = strcmp(*(a1 + 8), *(a2 + 8));
      a2 = v4;
      v6 = v5;
      a1 = v3;
      if (v6)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 0;
  }

  if (v2)
  {
    return 0;
  }

LABEL_8:
  v8 = a1;
  v9 = a2;
  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(v8 + 24) == *(v9 + 24);
  }

  return result;
}

uint64_t _equalCreateTableSpaceStmt(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(a1[2], a2[2]))
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7 || strcmp(v6, v7))
  {
    return 0;
  }

LABEL_12:
  v9 = a1[4];
  v10 = a2[4];

  return equal(v9, v10);
}

BOOL _equalDropTableSpaceStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

uint64_t _equalAlterTableSpaceOptionsStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5)
    {
      if (strcmp(v4, v5))
      {
        return 0;
      }

      goto LABEL_7;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_7:
  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t _equalAlterTableMoveAllStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    if (v7)
    {
      if (!v8 || strcmp(v7, v8))
      {
        return 0;
      }

      return *(a1 + 40) == *(a2 + 40);
    }

    if (!v8)
    {
      return *(a1 + 40) == *(a2 + 40);
    }

    return 0;
  }

  return result;
}

uint64_t _equalAlterExtensionContentsStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);

  return equal(v6, v7);
}

uint64_t _equalCreateFdwStmt(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(a1[2], a2[2]))
  {
    return 0;
  }

  v6 = a1[3];
  v7 = a2[3];

  return equal(v6, v7);
}

uint64_t _equalCreateForeignServerStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (!v7 || strcmp(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (v8)
  {
    if (!v9 || strcmp(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a2 + 32);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v11 || strcmp(v10, v11))
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v12 = *(a1 + 48);
  v13 = *(a2 + 48);

  return equal(v12, v13);
}

uint64_t _equalAlterForeignServerStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v8 || strcmp(v7, v8))
  {
    return 0;
  }

LABEL_12:
  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t _equalAlterUserMappingStmt(uint64_t *a1, uint64_t *a2)
{
  if (!equal(a1[1], a2[1]))
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];

  return equal(v7, v8);
}

uint64_t _equalDropUserMappingStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        if (strcmp(v5, v6))
        {
          return 0;
        }

        return *(a1 + 24) == *(a2 + 24);
      }
    }

    else if (!v6)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    return 0;
  }

  return result;
}

uint64_t _equalCreateForeignTableStmt(uint64_t a1, uint64_t a2)
{
  if (!_equalCreateStmt(a1, a2))
  {
    return 0;
  }

  v4 = *(a1 + 104);
  v5 = *(a2 + 104);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 112);
  v8 = *(a2 + 112);

  return equal(v7, v8);
}

uint64_t _equalImportForeignSchemaStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v6)
  {
    if (!v7 || strcmp(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (!v9 || strcmp(v8, v9))
  {
    return 0;
  }

LABEL_16:
  if (*(a1 + 32) != *(a2 + 32) || !equal(*(a1 + 40), *(a2 + 40)))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v11 = *(a2 + 48);

  return equal(v10, v11);
}

uint64_t _equalCreateTransformStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 24), *(a2 + 24)))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);

  return equal(v6, v7);
}

uint64_t _equalCreateTrigStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 40) != *(a2 + 40) || *(a1 + 42) != *(a2 + 42) || *(a1 + 44) != *(a2 + 44) || !equal(*(a1 + 48), *(a2 + 48)) || !equal(*(a1 + 56), *(a2 + 56)) || *(a1 + 64) != *(a2 + 64) || !equal(*(a1 + 72), *(a2 + 72)) || *(a1 + 80) != *(a2 + 80) || *(a1 + 81) != *(a2 + 81))
  {
    return 0;
  }

  v6 = *(a1 + 88);
  v7 = *(a2 + 88);

  return equal(v6, v7);
}

uint64_t _equalCreateEventTrigStmt(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || strcmp(v6, v7))
  {
    return 0;
  }

LABEL_11:
  if (!equal(a1[3], a2[3]))
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];

  return equal(v8, v9);
}

uint64_t _equalCreatePLangStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5)
    {
      if (strcmp(v4, v5))
      {
        return 0;
      }

      goto LABEL_9;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_9:
  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        return *(a1 + 40) == *(a2 + 40);
      }
    }
  }

  return result;
}

uint64_t _equalCreateRoleStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = a1;
    v6 = a2;
    v7 = strcmp(v3, v4);
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);

  return equal(v10, v11);
}

uint64_t _equalAlterRoleStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      return *(a1 + 24) == *(a2 + 24);
    }
  }

  return result;
}

uint64_t _equalReindexStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (v6)
      {
        if (strcmp(v5, v6))
        {
          return 0;
        }

        goto LABEL_10;
      }
    }

    else if (!v6)
    {
LABEL_10:
      if (*(a1 + 24) == *(a2 + 24))
      {
        return *(a1 + 28) == *(a2 + 28);
      }
    }

    return 0;
  }

  return result;
}

uint64_t _equalCreateSchemaStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (v5)
    {
      if (strcmp(v4, v5))
      {
        return 0;
      }

      goto LABEL_7;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_7:
  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      return *(a1 + 32) == *(a2 + 32);
    }
  }

  return result;
}

uint64_t _equalCreateConversionStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      if (!v6)
      {
        return 0;
      }

      if (strcmp(v5, v6))
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    if (v7)
    {
      if (!v8 || strcmp(v7, v8))
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (!v8)
    {
LABEL_13:
      result = equal(*(a1 + 32), *(a2 + 32));
      if (result)
      {
        return *(a1 + 40) == *(a2 + 40);
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t _equalCreateCastStmt(uint64_t a1, uint64_t a2)
{
  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        return *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36);
      }
    }
  }

  return result;
}

uint64_t _equalAlterTSConfigurationStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  result = equal(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    result = equal(*(a1 + 16), *(a2 + 16));
    if (result)
    {
      result = equal(*(a1 + 24), *(a2 + 24));
      if (result)
      {
        if (*(a1 + 32) == *(a2 + 32))
        {
          return *(a1 + 33) == *(a2 + 33) && *(a1 + 34) == *(a2 + 34);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _equalCreatePolicyStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7 || strcmp(v6, v7))
  {
    return 0;
  }

LABEL_12:
  if (*(a1 + 32) != *(a2 + 32) || !equal(*(a1 + 40), *(a2 + 40)) || !equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);

  return equal(v8, v9);
}

uint64_t _equalAlterPolicyStmt(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(a1[2], a2[2]) || !equal(a1[3], a2[3]) || !equal(a1[4], a2[4]))
  {
    return 0;
  }

  v6 = a1[5];
  v7 = a2[5];

  return equal(v6, v7);
}

uint64_t _equalAlterPublicationStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    result = equal(*(a1 + 24), *(a2 + 24));
    if (result)
    {
      if (*(a1 + 32) == *(a2 + 32))
      {
        return *(a1 + 36) == *(a2 + 36);
      }

      return 0;
    }
  }

  return result;
}

uint64_t _equalAlterSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = strcmp(*(a1 + 8), *(a2 + 8));
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  v10 = strcmp(*(a1 + 16), *(a2 + 16));
  a2 = v9;
  v11 = v10;
  a1 = v8;
  if (v11)
  {
    return 0;
  }

LABEL_12:
  v12 = a1;
  v13 = a2;
  if (!equal(*(a1 + 24), *(a2 + 24)))
  {
    return 0;
  }

  v14 = *(v12 + 32);
  v15 = *(v13 + 32);

  return equal(v14, v15);
}

BOOL _equalDropSubscriptionStmt(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 20) == *(a2 + 20);
  }

  return 0;
}

uint64_t _equalFuncCall(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 40) != *(a2 + 40) || *(a1 + 41) != *(a2 + 41) || *(a1 + 42) != *(a2 + 42) || *(a1 + 43) != *(a2 + 43))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);

  return equal(v4, v5);
}

uint64_t _equalAIndices(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);

  return equal(v4, v5);
}

uint64_t _equalSortBy(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);

  return equal(v4, v5);
}

uint64_t _equalWindowDef(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v7 || strcmp(v6, v7))
  {
    return 0;
  }

LABEL_11:
  if (!equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 40) != *(a2 + 40) || !equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);

  return equal(v8, v9);
}

uint64_t _equalRangeFunction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);

  return equal(v4, v5);
}

uint64_t _equalRangeTableFunc(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || !equal(*(a1 + 8), *(a2 + 8)) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);

  return equal(v4, v5);
}

uint64_t _equalRangeTableFuncCol(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24) || *(a1 + 25) != *(a2 + 25) || !equal(*(a1 + 32), *(a2 + 32)))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);

  return equal(v6, v7);
}

uint64_t _equalTypeName(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 21) != *(a2 + 21) || !equal(*(a1 + 24), *(a2 + 24)) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a2 + 40);

  return equal(v4, v5);
}

uint64_t _equalIndexElem(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = equal(*(a1 + 16), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8 || strcmp(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  result = equal(*(a1 + 32), *(a2 + 32));
  if (result)
  {
    result = equal(*(a1 + 40), *(a2 + 40));
    if (result)
    {
      result = equal(*(a1 + 48), *(a2 + 48));
      if (result)
      {
        if (*(a1 + 56) == *(a2 + 56))
        {
          return *(a1 + 60) == *(a2 + 60);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _equalColumnDef(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 29) != *(a2 + 29) || *(a1 + 30) != *(a2 + 30) || *(a1 + 31) != *(a2 + 31) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)) || *(a1 + 48) != *(a2 + 48) || !equal(*(a1 + 56), *(a2 + 56)) || *(a1 + 64) != *(a2 + 64) || !equal(*(a1 + 72), *(a2 + 72)) || *(a1 + 80) != *(a2 + 80) || !equal(*(a1 + 88), *(a2 + 88)))
  {
    return 0;
  }

  v6 = *(a1 + 96);
  v7 = *(a2 + 96);

  return equal(v6, v7);
}

uint64_t _equalConstraint(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = strcmp(*(a1 + 8), *(a2 + 8));
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  result = equal(*(a1 + 32), *(a2 + 32));
  if (result)
  {
    v10 = *(v8 + 40);
    v11 = *(v9 + 40);
    if (v10)
    {
      if (!v11)
      {
        return 0;
      }

      v12 = strcmp(v10, v11);
      v13 = v9;
      v14 = v8;
      if (v12)
      {
        return 0;
      }
    }

    else
    {
      v14 = v8;
      v13 = v9;
      if (v11)
      {
        return 0;
      }
    }

    if (*(v14 + 48) != *(v13 + 48))
    {
      return 0;
    }

    result = equal(*(v14 + 56), *(v13 + 56));
    if (result)
    {
      result = equal(*(v8 + 64), *(v9 + 64));
      if (result)
      {
        result = equal(*(v8 + 72), *(v9 + 72));
        if (result)
        {
          result = equal(*(v8 + 80), *(v9 + 80));
          if (result)
          {
            v15 = *(v8 + 88);
            v16 = *(v9 + 88);
            if (v15)
            {
              if (!v16 || strcmp(v15, v16))
              {
                return 0;
              }
            }

            else if (v16)
            {
              return 0;
            }

            v17 = *(v8 + 96);
            v18 = *(v9 + 96);
            if (v17)
            {
              if (!v18 || strcmp(v17, v18))
              {
                return 0;
              }
            }

            else if (v18)
            {
              return 0;
            }

            if (*(v8 + 104) != *(v9 + 104))
            {
              return 0;
            }

            v19 = *(v8 + 112);
            v20 = *(v9 + 112);
            if (v19)
            {
              if (!v20 || strcmp(v19, v20))
              {
                return 0;
              }
            }

            else if (v20)
            {
              return 0;
            }

            result = equal(*(v8 + 120), *(v9 + 120));
            if (result)
            {
              result = equal(*(v8 + 128), *(v9 + 128));
              if (result)
              {
                result = equal(*(v8 + 136), *(v9 + 136));
                if (result)
                {
                  result = equal(*(v8 + 144), *(v9 + 144));
                  if (result)
                  {
                    if (*(v8 + 152) != *(v9 + 152) || *(v8 + 153) != *(v9 + 153) || *(v8 + 154) != *(v9 + 154))
                    {
                      return 0;
                    }

                    result = equal(*(v8 + 160), *(v9 + 160));
                    if (result)
                    {
                      if (*(v8 + 168) == *(v9 + 168) && *(v8 + 172) == *(v9 + 172))
                      {
                        return *(v8 + 173) == *(v9 + 173);
                      }

                      return 0;
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

  return result;
}

uint64_t _equalDefElem(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!v8 || strcmp(v7, v8))
  {
    return 0;
  }

LABEL_12:
  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t _equalRangeTblEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || !equal(*(a1 + 56), *(a2 + 56)) || !equal(*(a1 + 64), *(a2 + 64)) || !equal(*(a1 + 72), *(a2 + 72)) || !equal(*(a1 + 80), *(a2 + 80)) || *(a1 + 88) != *(a2 + 88) || !equal(*(a1 + 96), *(a2 + 96)) || !equal(*(a1 + 104), *(a2 + 104)))
  {
    return 0;
  }

  v4 = *(a1 + 112);
  v5 = *(a2 + 112);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = strcmp(v4, v5);
    v7 = a2;
    v8 = a1;
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = a2;
    v8 = a1;
    if (v5)
    {
      return 0;
    }
  }

  if (*(v8 + 120) != *(v7 + 120) || *(v8 + 124) != *(v7 + 124) || !equal(*(v8 + 128), *(v7 + 128)) || !equal(*(a1 + 136), *(a2 + 136)) || !equal(*(a1 + 144), *(a2 + 144)))
  {
    return 0;
  }

  v9 = *(a1 + 152);
  v10 = *(a2 + 152);
  if (!v9)
  {
    v12 = a2;
    v13 = a1;
    if (!v10)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = strcmp(v9, v10);
  v12 = a2;
  v13 = a1;
  if (v11)
  {
    return 0;
  }

LABEL_32:
  if (*(v13 + 160) != *(v12 + 160) || !equal(*(v13 + 168), *(v12 + 168)) || !equal(*(a1 + 176), *(a2 + 176)) || *(a1 + 184) != *(a2 + 184) || *(a1 + 185) != *(a2 + 185) || *(a1 + 186) != *(a2 + 186) || *(a1 + 188) != *(a2 + 188) || *(a1 + 192) != *(a2 + 192) || !bms_equal(*(a1 + 200), *(a2 + 200)) || !bms_equal(*(a1 + 208), *(a2 + 208)) || !bms_equal(*(a1 + 216), *(a2 + 216)) || !bms_equal(*(a1 + 224), *(a2 + 224)))
  {
    return 0;
  }

  v14 = *(a1 + 232);
  v15 = *(a2 + 232);

  return equal(v14, v15);
}

BOOL _equalRangeTblFunction(uint64_t a1, uint64_t a2)
{
  if (!equal(*(a1 + 8), *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || !equal(*(a1 + 24), *(a2 + 24)) || !equal(*(a1 + 32), *(a2 + 32)) || !equal(*(a1 + 40), *(a2 + 40)) || !equal(*(a1 + 48), *(a2 + 48)))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(a2 + 56);

  return bms_equal(v4, v5);
}

uint64_t _equalWithCheckOption(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!v2)
    {
      return 0;
    }

    v3 = a1;
    v4 = a2;
    v5 = strcmp(*(a1 + 8), *(a2 + 8));
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if (v6)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1;
  v10 = a2;
  v11 = strcmp(*(a1 + 16), *(a2 + 16));
  a2 = v10;
  v12 = v11;
  a1 = v9;
  if (v12)
  {
    return 0;
  }

LABEL_13:
  v13 = a1;
  v14 = a2;
  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return *(v13 + 32) == *(v14 + 32);
  }

  return result;
}

uint64_t _equalWindowClause(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    if (strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7)
  {
    if (!v8 || strcmp(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  result = equal(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    result = equal(*(a1 + 32), *(a2 + 32));
    if (result)
    {
      if (*(a1 + 40) != *(a2 + 40))
      {
        return 0;
      }

      result = equal(*(a1 + 48), *(a2 + 48));
      if (result)
      {
        result = equal(*(a1 + 56), *(a2 + 56));
        if (result)
        {
          if (*(a1 + 64) == *(a2 + 64) && *(a1 + 68) == *(a2 + 68) && *(a1 + 72) == *(a2 + 72) && *(a1 + 76) == *(a2 + 76) && *(a1 + 77) == *(a2 + 77) && *(a1 + 80) == *(a2 + 80))
          {
            return *(a1 + 84) == *(a2 + 84);
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _equalInferClause(uint64_t *a1, uint64_t *a2)
{
  result = equal(a1[1], a2[1]);
  if (result)
  {
    result = equal(a1[2], a2[2]);
    if (result)
    {
      v5 = a1[3];
      v6 = a2[3];
      if (v5)
      {
        if (v6)
        {
          return !strcmp(v5, v6);
        }
      }

      else if (!v6)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _equalCommonTableExpr(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(*(a1 + 16), *(a2 + 16)) || *(a1 + 24) != *(a2 + 24) || !equal(*(a1 + 32), *(a2 + 32)) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || !equal(*(a1 + 56), *(a2 + 56)) || !equal(*(a1 + 64), *(a2 + 64)) || !equal(*(a1 + 72), *(a2 + 72)))
  {
    return 0;
  }

  v6 = *(a1 + 80);
  v7 = *(a2 + 80);

  return equal(v6, v7);
}

uint64_t _equalRoleSpec(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3 || strcmp(v2, v3))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  return 1;
}

BOOL _equalTriggerTransition(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    return *(a1 + 17) == *(a2 + 17);
  }

  return 0;
}

uint64_t _equalPartitionElem(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || strcmp(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!equal(a1[2], a2[2]) || !equal(a1[3], a2[3]))
  {
    return 0;
  }

  v6 = a1[4];
  v7 = a2[4];

  return equal(v6, v7);
}

uint64_t _equalPartitionBoundSpec(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || !equal(*(a1 + 16), *(a2 + 16)) || !equal(*(a1 + 24), *(a2 + 24)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);

  return equal(v4, v5);
}

void equal_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_equalfuncs.c", 3997, "equal");
  __break(1u);
}

void _equalList_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized list node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_equalfuncs.c", 3218, "_equalList");
  __break(1u);
}

void _equalValue_cold_1()
{
  OUTLINED_FUNCTION_0_25();
  errmsg_internal("unrecognized node type: %d", *v0);
  errfinish("src/postgres/src_backend_nodes_equalfuncs.c", 3254, "_equalValue");
  __break(1u);
}

uint64_t GetExtensibleNodeMethods(const char *a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    GetExtensibleNodeMethods_cold_1(a1);
  }

  return 0;
}

void GetExtensibleNodeMethods_cold_1(const char *a1)
{
  errstart(20, 0);
  errcode();
  errmsg("ExtensibleNodeMethods %s was not registered", a1);
  errfinish("src/postgres/src_backend_nodes_extensible.c", 78, "GetExtensibleNodeEntry");
  __break(1u);
}

double list_make1_impl(int a1, uint64_t a2, double a3)
{
  v5 = palloc(0x40uLL, a3);
  *v5 = a1;
  *&result = 0x500000001;
  *(v5 + 4) = 0x500000001;
  *(v5 + 24) = a2;
  *(v5 + 16) = v5 + 24;
  return result;
}

double list_make2_impl(int a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = palloc(0x40uLL, a4);
  *v7 = a1;
  *&result = 0x500000002;
  *(v7 + 4) = 0x500000002;
  *(v7 + 24) = a2;
  *(v7 + 16) = v7 + 24;
  *(v7 + 32) = a3;
  return result;
}

double list_make3_impl(int a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = palloc(0x40uLL, a5);
  *v9 = a1;
  *&result = 0x500000003;
  *(v9 + 4) = 0x500000003;
  *(v9 + 24) = a2;
  *(v9 + 16) = v9 + 24;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  return result;
}

double list_make4_impl(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = palloc(0x40uLL, a6);
  *v11 = a1;
  *&result = 0x500000004;
  *(v11 + 24) = a2;
  *(v11 + 4) = 0x500000004;
  *(v11 + 16) = v11 + 24;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  return result;
}

uint64_t lappend(uint64_t result, uint64_t a2, double a3)
{
  if (result)
  {
    v4 = *(result + 4);
    if (v4 >= *(result + 8))
    {
      if (v4 + 1 > 16)
      {
        v5 = v4 + 1;
      }

      else
      {
        v5 = 16;
      }

      v6 = 1 << -__clz(v5);
      if ((v5 & (v5 - 1)) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = v5;
      }

      v8 = (result + 24);
      if (*(result + 16) == result + 24)
      {
        v11 = result;
        v12 = MemoryContextAlloc(*(result - 8), 8 * v7);
        *(v11 + 16) = v12;
        memcpy(v12, v8, 8 * *(v11 + 4));
        result = v11;
      }

      else
      {
        v9 = result;
        v10 = repalloc(*(result + 16), 8 * v7);
        result = v9;
        *(v9 + 16) = v10;
      }

      *(result + 8) = v7;
      v4 = *(result + 4);
    }

    *(result + 4) = v4 + 1;
    *(*(result + 16) + 8 * v4) = a2;
  }

  else
  {
    result = palloc(0x40uLL, a3);
    *result = 0x1000000E2;
    *(result + 8) = 5;
    *(result + 16) = result + 24;
    *(result + 24) = a2;
  }

  return result;
}

uint64_t lcons(uint64_t a1, uint64_t a2, double a3)
{
  if (a2)
  {
    v5 = *(a2 + 4);
    if (v5 >= *(a2 + 8))
    {
      if (v5 + 1 > 16)
      {
        v6 = v5 + 1;
      }

      else
      {
        v6 = 16;
      }

      v7 = 1 << -__clz(v6);
      if ((v6 & (v6 - 1)) != 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      v9 = *(a2 + 16);
      if (v9 == a2 + 24)
      {
        v11 = MemoryContextAlloc(*(a2 - 8), 8 * v8);
        *(a2 + 16) = v11;
        memcpy(v11, (a2 + 24), 8 * *(a2 + 4));
      }

      else
      {
        *(a2 + 16) = repalloc(v9, 8 * v8);
      }

      *(a2 + 8) = v8;
      v5 = *(a2 + 4);
    }

    memmove((*(a2 + 16) + 8), *(a2 + 16), 8 * v5);
    ++*(a2 + 4);
    **(a2 + 16) = a1;
    return a2;
  }

  else
  {
    result = palloc(0x40uLL, a3);
    *result = 0x1000000E2;
    *(result + 8) = 5;
    *(result + 16) = result + 24;
    *(result + 24) = a1;
  }

  return result;
}

uint64_t list_concat(uint64_t a1, const void **a2, double a3)
{
  if (!a1)
  {
    if (!a2)
    {
      return 0;
    }

    v12 = *a2;
    v13 = *(a2 + 1);
    v14 = v13 + 3;
    if (v13 + 3 <= 8)
    {
      v14 = 8;
    }

    v15 = 1 << -__clz(v14);
    if ((v14 & (v14 - 1)) != 0)
    {
      v14 = v15;
    }

    v16 = v14 - 3;
    v17 = a2;
    v3 = palloc(8 * (v14 - 3) + 24, a3);
    *v3 = v12;
    *(v3 + 4) = v13;
    *(v3 + 8) = v16;
    *(v3 + 16) = v3 + 24;
    memcpy((v3 + 24), v17[2], 8 * v13);
    return v3;
  }

  v3 = a1;
  if (!a2)
  {
    return v3;
  }

  v4 = *(a2 + 1);
  v5 = *(a1 + 4);
  v6 = v4 + v5;
  if (v4 + v5 > *(a1 + 8))
  {
    v7 = a2;
    if (v6 <= 16)
    {
      v8 = 16;
    }

    else
    {
      v8 = v4 + v5;
    }

    v9 = 1 << -__clz(v8);
    if ((v8 & (v8 - 1)) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    v11 = *(a1 + 16);
    if (v11 == v3 + 24)
    {
      v19 = MemoryContextAlloc(*(v3 - 8), 8 * v10);
      *(v3 + 16) = v19;
      memcpy(v19, (v3 + 24), 8 * *(v3 + 4));
    }

    else
    {
      *(v3 + 16) = repalloc(v11, 8 * v10);
    }

    *(v3 + 8) = v10;
    v5 = *(v3 + 4);
    a2 = v7;
    v4 = *(v7 + 1);
  }

  memcpy((*(v3 + 16) + 8 * v5), a2[2], 8 * v4);
  *(v3 + 4) = v6;
  return v3;
}

uint64_t list_copy(const void **a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v3 + 3;
  if (v3 + 3 <= 8)
  {
    v4 = 8;
  }

  v5 = 1 << -__clz(v4);
  if ((v4 & (v4 - 1)) != 0)
  {
    v4 = v5;
  }

  v6 = v4 - 3;
  v8 = palloc(8 * (v4 - 3) + 24, a2);
  *v8 = v2;
  *(v8 + 4) = v3;
  *(v8 + 8) = v6;
  *(v8 + 16) = v8 + 24;
  memcpy((v8 + 24), a1[2], 8 * v3);
  return v8;
}

uint64_t list_truncate(uint64_t result, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  if (result)
  {
    if (*(result + 4) > a2)
    {
      *(result + 4) = a2;
    }
  }

  return result;
}

uint64_t list_delete_nth_cell(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 16);
  if (v2 == 1)
  {
    if (v3 != a1 + 24)
    {
      v4 = a1;
      pfree(*(a1 + 16));
      a1 = v4;
    }

    pfree(a1);
    return 0;
  }

  else
  {
    v6 = a1;
    memmove((v3 + 8 * a2), (v3 + 8 * (a2 + 1)), 8 * (v2 + ~a2));
    result = v6;
    --*(v6 + 4);
  }

  return result;
}

uint64_t list_free(uint64_t result)
{
  if (result)
  {
    v2 = *(result + 16);
    if (v2 != result + 24)
    {
      v3 = result;
      pfree(v2);
      result = v3;
    }

    return pfree(result);
  }

  return result;
}

uint64_t list_delete_cell(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  if (v3 == 1)
  {
    if (v2 != a1 + 24)
    {
      v4 = a1;
      pfree(*(a1 + 16));
      a1 = v4;
    }

    pfree(a1);
    return 0;
  }

  else
  {
    v6 = a1;
    memmove((v2 + 8 * ((a2 - v2) >> 3)), (v2 + 8 * ((((a2 - v2) << 29) + 0x100000000) >> 32)), 8 * (v3 + ~((a2 - v2) >> 3)));
    result = v6;
    --*(v6 + 4);
  }

  return result;
}

_DWORD *list_copy_tail(_DWORD *result, int a2, double a3)
{
  if (result)
  {
    v3 = a2 & ~(a2 >> 31);
    v4 = result[1];
    v5 = v4 - v3;
    if (v4 <= v3)
    {
      return 0;
    }

    else
    {
      v6 = *result;
      v7 = v5 + 3;
      if (v5 + 3 <= 8)
      {
        v7 = 8;
      }

      v8 = 1 << -__clz(v7);
      if ((v7 & (v7 - 1)) != 0)
      {
        v7 = v8;
      }

      v9 = v7 - 3;
      v10 = result;
      v11 = palloc(8 * (v7 - 3) + 24, a3);
      *v11 = v6;
      *(v11 + 4) = v5;
      *(v11 + 8) = v9;
      *(v11 + 16) = v11 + 24;
      memcpy((v11 + 24), (*(v10 + 2) + 8 * v3), 8 * v5);
      return v11;
    }
  }

  return result;
}

uint64_t list_copy_deep(int *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  v4 = a1[1];
  v5 = v4 + 3;
  if (v4 + 3 <= 8)
  {
    v5 = 8;
  }

  v6 = 1 << -__clz(v5);
  if ((v5 & (v5 - 1)) != 0)
  {
    v5 = v6;
  }

  v7 = v5 - 3;
  v8 = palloc(8 * (v5 - 3) + 24, a2);
  *v8 = v3;
  *(v8 + 4) = v4;
  *(v8 + 8) = v7;
  *(v8 + 16) = v8 + 24;
  if (v4 >= 1)
  {
    v9 = 0;
    do
    {
      *(*(v8 + 16) + 8 * v9) = copyObjectImpl(*(*(a1 + 2) + 8 * v9));
      ++v9;
    }

    while (v9 < *(v8 + 4));
  }

  return v8;
}

unint64_t makeA_Expr(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v11 = CurrentMemoryContext(a6);
  result = MemoryContextAllocZeroAligned(*v11, 0x28uLL);
  *result = 346;
  *(result + 4) = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  return result;
}

unint64_t makeSimpleA_Expr(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6)
{
  v11 = CurrentMemoryContext(a6);
  v12 = MemoryContextAllocZeroAligned(*v11, 0x28uLL);
  *v12 = 346;
  *(v12 + 4) = a1;
  String = makeString(a2, v13);
  list_make1_impl(226, String, v15);
  *(v12 + 8) = v16;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  return v12;
}

unint64_t makeBoolExpr(int a1, uint64_t a2, int a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x18uLL);
  *result = 119;
  *(result + 4) = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

unint64_t makeAlias(const char *a1, uint64_t a2, double a3)
{
  v5 = CurrentMemoryContext(a3);
  v6 = MemoryContextAllocZeroAligned(*v5, 0x18uLL);
  *v6 = 102;
  *(v6 + 8) = pstrdup(a1, v7);
  *(v6 + 16) = a2;
  return v6;
}

unint64_t makeRangeVar(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x38uLL);
  *result = 103;
  *(result + 8) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 28673;
  *(result + 40) = 0;
  *(result + 48) = a3;
  return result;
}

unint64_t makeTypeName(uint64_t a1, double a2)
{
  String = makeString(a1, a2);
  v4 = list_make1_impl(226, String, v3);
  v6 = v5;
  v7 = CurrentMemoryContext(v4);
  result = MemoryContextAllocZeroAligned(*v7, 0x38uLL);
  *result = 366;
  *(result + 8) = v6;
  *(result + 24) = 0;
  *(result + 32) = -1;
  *(result + 48) = -1;
  return result;
}

unint64_t makeTypeNameFromNameList(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x38uLL);
  *result = 366;
  *(result + 8) = a1;
  *(result + 24) = 0;
  *(result + 32) = -1;
  *(result + 48) = -1;
  return result;
}

unint64_t makeDefElem(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x28uLL);
  *result = 370;
  *(result + 8) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = a3;
  return result;
}

unint64_t makeDefElemExtended(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v11 = CurrentMemoryContext(a6);
  result = MemoryContextAllocZeroAligned(*v11, 0x28uLL);
  *result = 370;
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 36) = a5;
  return result;
}

unint64_t makeFuncCall(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x40uLL);
  *result = 350;
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 48) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 56) = a3;
  return result;
}

unint64_t makeGroupingSet(int a1, uint64_t a2, int a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x18uLL);
  *result = 376;
  *(result + 4) = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

unint64_t makeVacuumRelation(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v7, 0x20uLL);
  *result = 397;
  *(result + 8) = a1;
  *(result + 16) = a2;
  *(result + 24) = a3;
  return result;
}

uint64_t exprLocation(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    result = 0xFFFFFFFFLL;
    while (2)
    {
      v3 = 8;
      switch(*v1)
      {
        case 0x67:
        case 0x6F:
        case 0x16E:
          return *(v1 + 48);
        case 0x68:
          return *(v1 + 100);
        case 0x6A:
        case 0x6B:
        case 0x6E:
          return *(v1 + 36);
        case 0x6C:
        case 0x83:
        case 0x88:
        case 0x15D:
        case 0x181:
        case 0x189:
          return *(v1 + 24);
        case 0x6D:
          return *(v1 + 84);
        case 0x70:
          v3 = 40;
          goto LABEL_4;
        case 0x71:
        case 0x73:
        case 0x74:
        case 0x75:
          v4 = *(v1 + 40);
          goto LABEL_13;
        case 0x72:
        case 0x7E:
          v4 = *(v1 + 28);
          goto LABEL_62;
        case 0x76:
          v4 = *(v1 + 32);
          v5 = *(v1 + 24);
          goto LABEL_63;
        case 0x77:
          v4 = *(v1 + 16);
          goto LABEL_62;
        case 0x78:
          v16 = exprLocation(*(v1 + 16));
          v17 = *(v1 + 40);
          if (v16 >= v17)
          {
            v18 = *(v1 + 40);
          }

          else
          {
            v18 = v16;
          }

          if (v17 < 0)
          {
            v18 = v16;
          }

          if (v16 >= 0)
          {
            return v18;
          }

          else
          {
            return v17;
          }

        case 0x7B:
        case 0x7C:
        case 0x81:
        case 0x93:
        case 0x94:
        case 0x99:
        case 0xCF:
        case 0x164:
        case 0x166:
        case 0x167:
          goto LABEL_4;
        case 0x7D:
        case 0x8E:
          v4 = *(v1 + 32);
          goto LABEL_62;
        case 0x7F:
          v4 = *(v1 + 40);
          goto LABEL_62;
        case 0x80:
        case 0x8C:
          v4 = *(v1 + 24);
          goto LABEL_62;
        case 0x82:
        case 0x16B:
        case 0x185:
        case 0x188:
        case 0x18A:
          return *(v1 + 40);
        case 0x85:
          return *(v1 + 28);
        case 0x86:
        case 0x89:
        case 0x163:
        case 0x183:
        case 0x184:
          return *(v1 + 32);
        case 0x87:
          v3 = 32;
          goto LABEL_4;
        case 0x8A:
        case 0x8F:
        case 0x90:
        case 0x15B:
        case 0x162:
        case 0x178:
        case 0x18B:
          return *(v1 + 16);
        case 0x8B:
          v4 = *(v1 + 52);
LABEL_13:
          v5 = *(v1 + 32);
          goto LABEL_63;
        case 0x8D:
          v4 = *(v1 + 20);
LABEL_62:
          v5 = *(v1 + 8);
          goto LABEL_63;
        case 0xE2:
          v11 = *(v1 + 4);
          if (v11 < 1)
          {
            return 0xFFFFFFFFLL;
          }

          v12 = *(v1 + 16);
          v13 = v11 - 1;
          do
          {
            v14 = v13;
            v15 = *v12++;
            result = exprLocation(v15);
            if ((result & 0x80000000) == 0)
            {
              break;
            }

            v13 = v14 - 1;
          }

          while (v14);
          return result;
        case 0x15A:
          v4 = *(v1 + 32);
          v5 = *(v1 + 16);
          goto LABEL_63;
        case 0x15C:
          return *(v1 + 8);
        case 0x15E:
          v4 = *(v1 + 56);
          v5 = *(v1 + 16);
LABEL_63:
          LODWORD(result) = exprLocation(v5);
          if (v4 >= result)
          {
            v19 = result;
          }

          else
          {
            v19 = v4;
          }

          if (result < 0)
          {
            v19 = v4;
          }

          if (v4 >= 0)
          {
            return v19;
          }

          else
          {
            return result;
          }

        case 0x165:
          v6 = exprLocation(*(v1 + 8));
          v7 = *(*(v1 + 16) + 48);
          if (v6 >= v7)
          {
            v8 = *(*(v1 + 16) + 48);
          }

          else
          {
            v8 = v6;
          }

          if (v7 < 0)
          {
            v8 = v6;
          }

          if (v6 >= 0)
          {
            v7 = v8;
          }

          v9 = *(v1 + 24);
          if (v7 >= v9)
          {
            v10 = *(v1 + 24);
          }

          else
          {
            v10 = v7;
          }

          if (v9 < 0)
          {
            v10 = v7;
          }

          if (v7 >= 0)
          {
            return v10;
          }

          else
          {
            return v9;
          }

        case 0x168:
          return *(v1 + 64);
        case 0x16F:
          return *(v1 + 104);
        case 0x171:
        case 0x182:
          return *(v1 + 20);
        case 0x17E:
          v3 = 16;
LABEL_4:
          v1 = *(v1 + v3);
          if (v1)
          {
            continue;
          }

          return 0xFFFFFFFFLL;
        default:
          return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t raw_expression_tree_walker(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if (result)
  {
    v4 = result;
    check_stack_depth();
    switch(*v4)
    {
      case 0x66:
      case 0x8A:
      case 0x90:
      case 0x91:
      case 0xDD:
      case 0xDE:
      case 0xDF:
      case 0xE0:
      case 0xE1:
      case 0x15B:
      case 0x15C:
      case 0x15D:
      case 0x15F:
        return 0;
      case 0x67:
        v5 = *(v4 + 40);
        goto LABEL_6;
      case 0x6E:
      case 0x72:
      case 0x86:
      case 0x8C:
      case 0x8D:
      case 0x162:
      case 0x164:
      case 0x166:
      case 0x167:
      case 0x178:
      case 0x17F:
      case 0x182:
        v5 = *(v4 + 8);
        goto LABEL_6;
      case 0x77:
        return (a2(*(v4 + 8), a3) & 1) != 0;
      case 0x78:
      case 0x8B:
        if (a2(*(v4 + 16), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 32), a3) & 1) != 0;
      case 0x82:
        if (a2(*(v4 + 16), a3))
        {
          return 1;
        }

        v6 = *(v4 + 24);
        if (!v6 || *(v6 + 4) < 1)
        {
          return (a2(*(v4 + 32), a3) & 1) != 0;
        }

        v7 = 0;
        while (1)
        {
          v8 = *(*(v6 + 16) + 8 * v7);
          if (a2(*(v8 + 8), a3) & 1) != 0 || (a2(*(v8 + 16), a3))
          {
            break;
          }

          if (++v7 >= *(v6 + 4))
          {
            return (a2(*(v4 + 32), a3) & 1) != 0;
          }
        }

        return 1;
      case 0x88:
        v5 = *(v4 + 16);
        goto LABEL_6;
      case 0x89:
        v5 = *(v4 + 24);
        goto LABEL_6;
      case 0x96:
        if ((a2(*(v4 + 16), a3) & 1) == 0 && (a2(*(v4 + 24), a3) & 1) == 0)
        {
          goto LABEL_37;
        }

        return 1;
      case 0x99:
        if ((a2(*(v4 + 8), a3) & 1) == 0)
        {
          return (a2(*(v4 + 56), a3) & 1) != 0;
        }

        return 1;
      case 0xE2:
        if (*(v4 + 4) < 1)
        {
          return 0;
        }

        v9 = 0;
        break;
      case 0xE9:
      case 0xEB:
        if (a2(*(v4 + 8), a3) & 1) != 0 || (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 24), a3) & 1) != 0 || (a2(*(v4 + 32), a3))
        {
          return 1;
        }

LABEL_37:
        if ((a2(*(v4 + 40), a3) & 1) == 0)
        {
          return (a2(*(v4 + 48), a3) & 1) != 0;
        }

        return 1;
      case 0xEA:
      case 0x16C:
        if ((a2(*(v4 + 8), a3) & 1) == 0 && (a2(*(v4 + 16), a3) & 1) == 0 && (a2(*(v4 + 24), a3) & 1) == 0)
        {
          goto LABEL_15;
        }

        return 1;
      case 0xEC:
        return (a2(*(v4 + 8), a3) & 1) != 0 || (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 24), a3) & 1) != 0 || (a2(*(v4 + 32), a3) & 1) != 0 || (a2(*(v4 + 40), a3) & 1) != 0 || (a2(*(v4 + 48), a3) & 1) != 0 || (a2(*(v4 + 56), a3) & 1) != 0 || (a2(*(v4 + 64), a3) & 1) != 0 || (a2(*(v4 + 72), a3) & 1) != 0 || (a2(*(v4 + 80), a3) & 1) != 0 || (a2(*(v4 + 88), a3) & 1) != 0 || (a2(*(v4 + 96), a3) & 1) != 0 || (a2(*(v4 + 112), a3) & 1) != 0 || (a2(*(v4 + 120), a3) & 1) != 0 || (a2(*(v4 + 136), a3) & 1) != 0 || (a2(*(v4 + 144), a3) & 1) != 0;
      case 0x15A:
      case 0x163:
        return (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 24), a3) & 1) != 0;
      case 0x15E:
        if (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 24), a3) & 1) != 0 || (a2(*(v4 + 32), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 48), a3) & 1) != 0;
      case 0x160:
      case 0x161:
      case 0x165:
      case 0x169:
      case 0x181:
      case 0x183:
        if ((a2(*(v4 + 8), a3) & 1) == 0)
        {
          return (a2(*(v4 + 16), a3) & 1) != 0;
        }

        return 1;
      case 0x168:
        if (a2(*(v4 + 24), a3) & 1) != 0 || (a2(*(v4 + 32), a3) & 1) != 0 || (a2(*(v4 + 48), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 56), a3) & 1) != 0;
      case 0x16A:
      case 0x184:
        if (a2(*(v4 + 8), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 24), a3) & 1) != 0;
      case 0x16B:
        if (a2(*(v4 + 8), a3) & 1) != 0 || (a2(*(v4 + 24), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 32), a3) & 1) != 0;
      case 0x16D:
LABEL_15:
        if ((a2(*(v4 + 32), a3) & 1) == 0)
        {
          return (a2(*(v4 + 40), a3) & 1) != 0;
        }

        return 1;
      case 0x16E:
        if (a2(*(v4 + 24), a3))
        {
          return 1;
        }

        return (a2(*(v4 + 40), a3) & 1) != 0;
      case 0x16F:
        return (a2(*(v4 + 16), a3) & 1) != 0 || (a2(*(v4 + 32), a3) & 1) != 0 || (a2(*(v4 + 72), a3) & 1) != 0;
      case 0x170:
        return (a2(*(v4 + 16), a3) & 1) != 0;
      case 0x185:
        v5 = *(v4 + 32);
LABEL_6:

        return a2(v5, a3);
      default:
        raw_expression_tree_walker_cold_1(v4);
    }

    while ((a2(*(*(v4 + 16) + 8 * v9), a3) & 1) == 0)
    {
      if (++v9 >= *(v4 + 4))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

void raw_expression_tree_walker_cold_1(_DWORD *a1)
{
  errstart(20, 0);
  errmsg_internal("unrecognized node type: %d", *a1);
  errfinish("src/postgres/src_backend_nodes_nodeFuncs.c", 1340, "raw_expression_tree_walker");
  __break(1u);
}

_DWORD *makeInteger(int a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 221;
  result[2] = a1;
  return result;
}

unint64_t makeFloat(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 222;
  *(result + 8) = a1;
  return result;
}

unint64_t makeString(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 223;
  *(result + 8) = a1;
  return result;
}

unint64_t makeBitString(uint64_t a1, double a2)
{
  v3 = CurrentMemoryContext(a2);
  result = MemoryContextAllocZeroAligned(*v3, 0x10uLL);
  *result = 224;
  *(result + 8) = a1;
  return result;
}

_DWORD *makeAConst(double a1, uint64_t a2, int a3)
{
  v4 = *CurrentMemoryContext(a1);
  if (v6 == 221)
  {
    v9 = *(v5 + 8);
    result = MemoryContextAllocZeroAligned(v4, 0x20uLL);
    *result = 349;
    result[2] = 221;
    result[4] = v9;
    result[6] = a3;
  }

  else
  {
    v7 = *(v5 + 8);
    if (v6 == 222)
    {
      result = MemoryContextAllocZeroAligned(v4, 0x20uLL);
      *result = 349;
      result[2] = 222;
    }

    else
    {
      result = MemoryContextAllocZeroAligned(v4, 0x20uLL);
      *result = 349;
      result[2] = 223;
    }

    *(result + 2) = v7;
    result[6] = a3;
  }

  return result;
}

uint64_t processCASbits(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, uint64_t a8)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if ((result & 0xA) != 0)
  {
    if (!a4)
    {
      processCASbits_cold_1();
    }

    *a4 = 1;
  }

  if ((result & 8) != 0)
  {
    if (!a5)
    {
      processCASbits_cold_2();
    }

    *a5 = 1;
  }

  if ((result & 0x10) != 0)
  {
    if (!a6)
    {
      processCASbits_cold_3();
    }

    *a6 = 1;
  }

  if ((result & 0x20) != 0)
  {
    if (!a7)
    {
      processCASbits_cold_4();
    }

    *a7 = 1;
  }

  return result;
}

unint64_t makeRangeVarFromAnyName(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2;
  v6 = CurrentMemoryContext(a4);
  result = MemoryContextAllocZeroAligned(*v6, 0x38uLL);
  *result = 103;
  if (!a1)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 4);
  if (v8 == 3)
  {
    *(result + 8) = *(**(a1 + 16) + 8);
    *(result + 16) = *(*(*(a1 + 16) + 8) + 8);
    v9 = *(a1 + 16) + 16;
    goto LABEL_8;
  }

  if (v8 == 2)
  {
    *(result + 8) = 0;
    *(result + 16) = *(**(a1 + 16) + 8);
    v9 = *(a1 + 16) + 8;
    goto LABEL_8;
  }

  if (v8 != 1)
  {
LABEL_9:
    makeRangeVarFromAnyName_cold_1();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  v9 = *(a1 + 16);
LABEL_8:
  *(result + 24) = *(*v9 + 8);
  *(result + 33) = 112;
  *(result + 48) = v4;
  return result;
}

uint64_t SplitColQualList(uint64_t result, uint64_t *a2, int **a3, uint64_t a4)
{
  *a3 = 0;
  if (result)
  {
    v6 = 0;
    while (v6 < *(result + 4))
    {
      v7 = (*(result + 16) + 8 * v6);
      v8 = **v7;
      if (v8 == 358)
      {
        if (*a3)
        {
          SplitColQualList_cold_1();
        }

        *a3 = *v7;
        result = list_delete_cell(result, v7);
        if (!result)
        {
          break;
        }
      }

      else
      {
        if (v8 != 369)
        {
          SplitColQualList_cold_2(*v7);
        }

        ++v6;
      }
    }
  }

  *a2 = result;
  return result;
}

uint64_t mergeTableFuncParameters(uint64_t a1, const void **a2, double a3)
{
  if (a1)
  {
    v3 = *(a1 + 4);
    if (v3 >= 1)
    {
      v4 = *(a1 + 16);
      do
      {
        v5 = *(*v4 + 24);
        if (v5 != 105 && v5 != 118)
        {
          mergeTableFuncParameters_cold_1();
        }

        v4 += 8;
        --v3;
      }

      while (v3);
    }
  }

  return list_concat(a1, a2, a3);
}

void TableFuncTypeName(uint64_t a1, double a2)
{
  if (a1 && *(a1 + 4) == 1)
  {
    copyObjectImpl(*(**(a1 + 16) + 16));
    *(v2 + 20) = 1;
  }

  else
  {
    String = makeString("pg_catalog", a2);
    v5 = makeString("record", v4);
    v7 = list_make2_impl(226, String, v5, v6);
    *(makeTypeNameFromNameList(v8, v7) + 20) = 1;
  }
}

uint64_t extractArgTypes(uint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 4);
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      result = 0;
      do
      {
        v5 = *(*(v2 + 16) + 8 * v4);
        v6 = *(v5 + 24);
        if (v6 != 111 && v6 != 116)
        {
          result = lappend(result, *(v5 + 16), a2);
          v3 = *(v2 + 4);
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }

  return result;
}

uint64_t check_func_name(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 4);
    if (v2 >= 1)
    {
      v3 = *(result + 16);
      do
      {
        if (**v3 != 223)
        {
          scanner_yyerror("syntax error", a2);
        }

        ++v3;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

double makeOrderedSetArgs(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2;
  v6 = *(a1 + 16);
  v7 = *(a1 + 4);
  v8 = *(v6 + 8 * (v7 - 1));
  if (*(v8 + 24) == 118)
  {
    v9 = **(a2 + 16);
    if (*(a2 + 4) != 1 || *(v9 + 24) != 118 || !equal(*(v8 + 16), *(v9 + 16)))
    {
      makeOrderedSetArgs_cold_1();
    }

    v4 = 0;
    v7 = *(a1 + 4);
  }

  Integer = makeInteger(v7, a4);
  v12 = list_concat(a1, v4, v11);

  return list_make2_impl(226, v12, Integer, v13);
}

unint64_t makeRecursiveViewSelect(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = CurrentMemoryContext(a4);
  v27 = MemoryContextAllocZeroAligned(*v7, 0x98uLL);
  *v27 = 236;
  v8 = MemoryContextAllocZeroAligned(*v7, 0x18uLL);
  *v8 = 386;
  v9 = MemoryContextAllocZeroAligned(*v7, 0x58uLL);
  *v9 = 389;
  *(v9 + 8) = a1;
  *(v9 + 16) = a2;
  *(v9 + 24) = 0;
  *(v9 + 32) = a3;
  *(v9 + 40) = -1;
  *(v8 + 16) = 1;
  v11 = list_make1_impl(226, v9, v10);
  *(v8 + 8) = v12;
  *(v8 + 20) = -1;
  if (a2 && *(a2 + 4) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(a2 + 16);
      v16 = MemoryContextAllocZeroAligned(*v7, 0x28uLL);
      *v16 = 355;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      v17 = *(*(v15 + 8 * v13) + 8);
      v18 = MemoryContextAllocZeroAligned(*v7, 0x18uLL);
      *v18 = 347;
      *(v18 + 16) = -1;
      String = makeString(v17, v19);
      *(v18 + 8) = lcons(String, 0, v21);
      *(v16 + 24) = v18;
      *(v16 + 32) = -1;
      v14 = lappend(v14, v16, v22);
      ++v13;
    }

    while (v13 < *(a2 + 4));
  }

  else
  {
    v14 = 0;
  }

  *(v27 + 120) = v8;
  *(v27 + 24) = v14;
  RangeVar = makeRangeVar(0, a1, -1, v11);
  list_make1_impl(226, RangeVar, v24);
  *(v27 + 32) = v25;
  return v27;
}

uint64_t check_indirection(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(result + 4);
    if (v2 >= 1)
    {
      v3 = *(result + 16);
      v4 = v3 + 8 * v2;
      v5 = v3 + 8;
      do
      {
        if (**(v5 - 8) == 351 && v5 != 0 && v5 < v4)
        {
          scanner_yyerror("improper use of *", a2);
        }

        v5 += 8;
        --v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t insertSelectOptions(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  if (a2)
  {
    if (*(a1 + 80))
    {
      insertSelectOptions_cold_1();
    }

    *(a1 + 80) = a2;
  }

  result = list_concat(*(a1 + 112), a3, a7);
  *(a1 + 112) = result;
  if (a4)
  {
    if (*a4)
    {
      if (*(a1 + 88))
      {
        insertSelectOptions_cold_2();
      }

      *(a1 + 88) = *a4;
    }

    v11 = *(a4 + 8);
    if (v11)
    {
      if (*(a1 + 96))
      {
        insertSelectOptions_cold_3();
      }

      *(a1 + 96) = v11;
    }

    v12 = *(a4 + 16);
    if (v12)
    {
      if (*(a1 + 104))
      {
        insertSelectOptions_cold_4();
      }

      if (v12 == 2 && !*(a1 + 80))
      {
        insertSelectOptions_cold_5();
      }

      *(a1 + 104) = v12;
    }
  }

  if (a5)
  {
    if (*(a1 + 120))
    {
      insertSelectOptions_cold_6();
    }

    *(a1 + 120) = a5;
  }

  return result;
}

_DWORD *doNegate(_DWORD *result, int a2, double a3)
{
  v3 = result;
  if (*result != 349)
  {
LABEL_5:

    return makeSimpleA_Expr(0, "-", 0, result, a2, a3);
  }

  result[6] = a2;
  v4 = result[2];
  if (v4 != 222)
  {
    if (v4 == 221)
    {
      result[4] = -result[4];
      return result;
    }

    goto LABEL_5;
  }

  v5 = *(result + 2);
  if (*v5 == 43)
  {
    ++v5;
  }

  if (*v5 == 45)
  {
    *(result + 2) = v5 + 1;
  }

  else
  {
    *(result + 2) = psprintf("-%s", v5);
    return v3;
  }

  return result;
}

unint64_t SystemTypeName(uint64_t a1, double a2)
{
  String = makeString("pg_catalog", a2);
  v5 = makeString(a1, v4);
  v8 = list_make2_impl(226, String, v5, v6);

  return makeTypeNameFromNameList(v7, v8);
}

double SystemFuncName(uint64_t a1, double a2)
{
  String = makeString("pg_catalog", a2);
  v5 = makeString(a1, v4);

  return list_make2_impl(226, String, v5, v6);
}

uint64_t makeInterval_or_AExprOp(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if (a1 && *a1 == 347 && !strcmp(*(**(*(a1 + 8) + 16) + 8), "interval"))
  {
    String = makeString("pg_catalog", a4);
    v14 = makeString("interval", v13);
    v16 = list_make2_impl(226, String, v14, v15);
    TypeNameFromNameList = makeTypeNameFromNameList(v17, v16);
    *(TypeNameFromNameList + 48) = *(a1 + 16);
    v20 = CurrentMemoryContext(v19);
    v21 = v20;
    if (a2)
    {
      v22 = MemoryContextAllocZeroAligned(*v20, 0x20uLL);
      *v22 = 349;
      v22[2] = 221;
      v22[4] = 0;
      v22[6] = -1;
      list_make1_impl(226, v22, v23);
      *(TypeNameFromNameList + 24) = v24;
    }

    v25 = MemoryContextAllocZero(*v21, 0xCuLL);
    *v25 = 348;
    *(v25 + 8) = a3;
    result = MemoryContextAllocZeroAligned(*v21, 0x20uLL);
    *result = 357;
    *(result + 8) = v25;
    *(result + 16) = TypeNameFromNameList;
    *(result + 24) = -1;
  }

  else
  {
    v7 = makeString("?", a4);
    v10 = list_make1_impl(226, v7, v8);

    return makeA_Expr(0, v9, a1, a2, a3, v10);
  }

  return result;
}

unint64_t makeAndExpr(_DWORD *a1, uint64_t a2, int a3, double a4)
{
  v5 = a1;
  v6 = *a1;
  if (*a1 == 346)
  {
    while (v5[1] == 15)
    {
      v5 = *(v5 + 2);
      v6 = *v5;
      if (*v5 != 346)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (v6 == 119 && !v5[1])
    {
      *(v5 + 1) = lappend(*(v5 + 1), a2, a4);
      return v5;
    }
  }

  v8 = list_make2_impl(226, a1, a2, a4);

  return makeBoolExpr(0, v7, a3, v8);
}

unint64_t makeOrExpr(_DWORD *a1, uint64_t a2, int a3, double a4)
{
  v5 = a1;
  v6 = *a1;
  if (*a1 == 346)
  {
    while (v5[1] == 15)
    {
      v5 = *(v5 + 2);
      v6 = *v5;
      if (*v5 != 346)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (v6 == 119 && v5[1] == 1)
    {
      *(v5 + 1) = lappend(*(v5 + 1), a2, a4);
      return v5;
    }
  }

  v9 = list_make2_impl(226, a1, a2, a4);

  return makeBoolExpr(1, v8, a3, v9);
}

unint64_t makeNotExpr(uint64_t a1, int a2, double a3)
{
  v5 = list_make1_impl(226, a1, a3);

  return makeBoolExpr(2, v4, a2, v5);
}

unint64_t makeBoolAConst(int a1, int a2, double a3)
{
  v5 = CurrentMemoryContext(a3);
  v6 = MemoryContextAllocZeroAligned(*v5, 0x20uLL);
  v8 = v6;
  *v6 = 349;
  *(v6 + 8) = 223;
  v9 = "f";
  if (a1)
  {
    v9 = "t";
  }

  *(v6 + 16) = v9;
  *(v6 + 24) = a2;
  String = makeString("pg_catalog", v7);
  v12 = makeString("BOOL", v11);
  v14 = list_make2_impl(226, String, v12, v13);
  TypeNameFromNameList = makeTypeNameFromNameList(v15, v14);
  result = MemoryContextAllocZeroAligned(*v5, 0x20uLL);
  *result = 357;
  *(result + 8) = v8;
  *(result + 16) = TypeNameFromNameList;
  *(result + 24) = -1;
  return result;
}

unint64_t makeColumnRef(uint64_t a1, uint64_t a2, int a3, double a4, uint64_t a5)
{
  v9 = CurrentMemoryContext(a4);
  v10 = MemoryContextAllocZeroAligned(*v9, 0x18uLL);
  *v10 = 347;
  *(v10 + 16) = a3;
  if (!a2 || (v12 = *(a2 + 4), v12 < 1))
  {
LABEL_10:
    String = makeString(a1, v11);
    v21 = lcons(String, a2, v20);
    result = v10;
    v10 = v21;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = *(a2 + 16);
  v15 = v14 + 8 * v12;
  v16 = v14 + 8;
  v17 = -v12;
  while (1)
  {
    v18 = **(v16 - 8);
    if (v18 != 351)
    {
      break;
    }

    if (v16 && v16 < v15)
    {
      goto LABEL_9;
    }

LABEL_5:
    --v13;
    v16 += 8;
    if (v17 == v13)
    {
      goto LABEL_10;
    }
  }

  if (v18 != 352)
  {
    goto LABEL_5;
  }

  v23 = MemoryContextAllocZeroAligned(*v9, 0x18uLL);
  *v23 = 353;
  if (v13)
  {
    v25 = list_copy_tail(a2, -v13, v24);
    if (v25)
    {
      v26 = v25[1];
      if (v26 >= 1)
      {
        v27 = *(v25 + 2);
        v28 = v27 + 8 * v26;
        v29 = v27 + 8;
        do
        {
          v30 = **(v29 - 8) != 351 || v29 == 0;
          if (!v30 && v29 < v28)
          {
            goto LABEL_9;
          }

          v29 += 8;
        }

        while (--v26);
      }
    }

    *(v23 + 16) = v25;
    v32 = list_truncate(a2, -v13);
    v34 = makeString(a1, v33);
    v36 = lcons(v34, v32, v35);
    result = v23;
    *(v10 + 8) = v36;
  }

  else
  {
    v37 = makeString(a1, v24);
    list_make1_impl(226, v37, v38);
    *(v10 + 8) = v39;
    v40 = *(a2 + 4);
    result = v23;
    if (v40 >= 1)
    {
      v41 = *(a2 + 16);
      v42 = v41 + 8 * v40;
      v43 = v41 + 8;
      while (1)
      {
        v44 = **(v43 - 8) != 351 || v43 == 0;
        if (!v44 && v43 < v42)
        {
          break;
        }

        v43 += 8;
        if (!--v40)
        {
          goto LABEL_37;
        }
      }

LABEL_9:
      scanner_yyerror("improper use of *", a5);
    }

LABEL_37:
    *(v23 + 16) = a2;
  }

LABEL_11:
  *(result + 8) = v10;
  return result;
}

void base_yyparse_cold_1()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("type modifier cannot have parameter name");
  scanner_errposition(*(v1 + 28), v0);
  errfinish("gram.y", 15251, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_2()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("type modifier cannot have ORDER BY");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 15257, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_3()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("type modifier cannot have parameter name");
  scanner_errposition(*(v1 + 28), v0);
  errfinish("gram.y", 15212, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_4()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("type modifier cannot have ORDER BY");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 15218, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  String = makeString(*(v1 - 1), v3);
  v6 = lcons(String, *v1, v5);
  v8 = NameListToString(v6, v7);
  errmsg("improper qualified name (too many dotted names): %s", v8);
  scanner_errposition(*(v2 - 4), v0);
  errfinish("gram.y", 15112, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_6()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame start cannot be UNBOUNDED FOLLOWING");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 14535, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_7()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame end cannot be UNBOUNDED PRECEDING");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 14540, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_8()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame starting from following row cannot have preceding rows");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 14553, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_9()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame starting from current row cannot have preceding rows");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 14546, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_10()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame start cannot be UNBOUNDED FOLLOWING");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 14512, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_11()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_9_7();
  errmsg("frame starting from following row cannot end with current row");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 14517, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_12()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("cannot use multiple ORDER BY clauses with WITHIN GROUP");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 14036, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_13()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("cannot use VARIADIC with WITHIN GROUP");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 14046, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_14()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("cannot use DISTINCT with WITHIN GROUP");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 14041, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_15()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("UNIQUE predicate is not yet implemented");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 13654, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_16()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("wrong number of parameters on right side of OVERLAPS expression");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 13479, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_17()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("wrong number of parameters on left side of OVERLAPS expression");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 13474, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_18()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("precision for type float must be less than 54 bits");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12978, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_19()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("precision for type float must be at least 1 bit");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12969, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_20()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("unrecognized column option %s", *(v0 + 16));
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 12716, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_21()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  errmsg("conflicting or redundant NULL / NOT NULL declarations for column %s", *(v0 + 8));
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 12706, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_22()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("only one PATH value per column is allowed");
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 12697, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_23()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("only one DEFAULT value is allowed");
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 12688, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_24()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("VALUES in FROM must have an alias");
  errhint("For example, FROM (VALUES ...) [AS] foo.");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12229, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_25()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("subquery in FROM must have an alias");
  errhint("For example, FROM (SELECT ...) [AS] foo.");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12235, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_26()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("VALUES in FROM must have an alias");
  errhint("For example, FROM (VALUES ...) [AS] foo.");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12204, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_27()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("subquery in FROM must have an alias");
  errhint("For example, FROM (SELECT ...) [AS] foo.");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 12210, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_28()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("LIMIT #,# syntax is not supported");
  errhint("Use separate LIMIT and OFFSET clauses.");
  scanner_errposition(*(v1 - 12), v0);
  errfinish("gram.y", 11877, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_29()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_11_4();
  errmsg("%s cannot be used as a role name here", "CURRENT_USER");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 15355, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_30()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_11_4();
  errmsg("%s cannot be used as a role name here", "SESSION_USER");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 15348, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_31()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_11_4();
  errmsg("role name %s is reserved", "public");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 15341, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_32()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_11_4();
  errmsg("role name %s is reserved", "none");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 15379, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_33()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("WITH CHECK OPTION not supported on recursive views");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 10268, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_34()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("WITH CHECK OPTION not supported on recursive views");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 10250, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_35()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("missing argument");
  errhint("Use NONE to denote the missing argument of a unary operator.");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 8321, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_36()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("aggregates cannot have output arguments");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 7928, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_37()
{
  OUTLINED_FUNCTION_3_15();
  errcode();
  errmsg("CREATE ASSERTION is not yet implemented");
  errfinish("gram.y", 5792, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_38()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("conflicting constraint properties");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 5697, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_39()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("constraint declared INITIALLY DEFERRED must be DEFERRABLE");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 5690, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_40()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  errmsg("unrecognized row security option %s", *v0);
  errhint("Only PERMISSIVE or RESTRICTIVE policies are supported currently.");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 5436, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_41()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("CREATE EXTENSION ... FROM is no longer supported");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 4609, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_42()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("MATCH PARTIAL not yet implemented");
  OUTLINED_FUNCTION_6_6();
  errfinish("gram.y", 3915, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_43()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("for a generated column, GENERATED ALWAYS must be specified");
  scanner_errposition(*(v1 - 20), v0);
  errfinish("gram.y", 3648, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_44()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("STDIN/STDOUT not allowed with PROGRAM");
  scanner_errposition(*(v1 - 16), v0);
  errfinish("gram.y", 3096, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_45()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("WHERE clause not allowed with COPY TO");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 3069, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_46()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("STDIN/STDOUT not allowed with PROGRAM");
  scanner_errposition(*(v1 - 12), v0);
  errfinish("gram.y", 3063, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_47()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("unrecognized hash partition bound specification %s", *(v0 + 16));
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 2851, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_48()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("remainder for hash partition provided more than once");
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 2843, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_49()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("modulus for hash partition provided more than once");
  OUTLINED_FUNCTION_8_7();
  errfinish("gram.y", 2834, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_50()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  errmsg("remainder for hash partition must be specified");
  errfinish("gram.y", 2861, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_51()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  errmsg("modulus for hash partition must be specified");
  errfinish("gram.y", 2857, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_52()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  errmsg("sequence option %s not supported here", *(*v0 + 16));
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 2805, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_53()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("column number must be in range from 1 to %d", 0x7FFF);
  scanner_errposition(*(v1 - 12), v0);
  errfinish("gram.y", 2273, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_54()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("time zone interval must be HOUR or HOUR TO MINUTE");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 1738, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_55()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("current database cannot be changed");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 1554, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_56()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("CREATE SCHEMA IF NOT EXISTS cannot include schema elements");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 1408, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_57()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("CREATE SCHEMA IF NOT EXISTS cannot include schema elements");
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 1393, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_58()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  errmsg("unrecognized role option %s", *v0);
  OUTLINED_FUNCTION_5_8();
  errfinish("gram.y", 1146, "base_yyparse");
  __break(1u);
}

void base_yyparse_cold_59()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("UNENCRYPTED PASSWORD is no longer supported");
  errhint("Remove UNENCRYPTED to store the password in encrypted form instead.");
  OUTLINED_FUNCTION_7_8();
  errfinish("gram.y", 1084, "base_yyparse");
  __break(1u);
}

void processCASbits_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  errcode();
  errmsg("%s constraints cannot be marked DEFERRABLE", v0);
  OUTLINED_FUNCTION_10_8();
  errfinish("gram.y", 16750, "processCASbits");
  __break(1u);
}

void processCASbits_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  errcode();
  errmsg("%s constraints cannot be marked DEFERRABLE", v0);
  OUTLINED_FUNCTION_10_8();
  errfinish("gram.y", 16763, "processCASbits");
  __break(1u);
}

void processCASbits_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  errcode();
  errmsg("%s constraints cannot be marked NOT VALID", v0);
  OUTLINED_FUNCTION_10_8();
  errfinish("gram.y", 16776, "processCASbits");
  __break(1u);
}

void processCASbits_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  errcode();
  errmsg("%s constraints cannot be marked NO INHERIT", v0);
  OUTLINED_FUNCTION_10_8();
  errfinish("gram.y", 16789, "processCASbits");
  __break(1u);
}

void makeRangeVarFromAnyName_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_4_11();
  v2 = NameListToString(v0, v1);
  errmsg("improper qualified name (too many dotted names): %s", v2);
  OUTLINED_FUNCTION_10_8();
  errfinish("gram.y", 16675, "makeRangeVarFromAnyName");
  __break(1u);
}

void SplitColQualList_cold_1()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple COLLATE clauses not allowed");
  scanner_errposition(*(v1 + 24), v0);
  errfinish("gram.y", 16711, "SplitColQualList");
  __break(1u);
}

void SplitColQualList_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_3_15();
  errmsg_internal("unexpected node type %d", *a1);
  errfinish("gram.y", 16715, "SplitColQualList");
  __break(1u);
}

void mergeTableFuncParameters_cold_1()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  errmsg("OUT and INOUT arguments aren't allowed in TABLE functions");
  errfinish("gram.y", 16614, "mergeTableFuncParameters");
  __break(1u);
}

void makeOrderedSetArgs_cold_1()
{
  OUTLINED_FUNCTION_0_26();
  errcode();
  errmsg("an ordered-set aggregate with a VARIADIC direct argument must have one VARIADIC aggregated argument of the same data type");
  v2 = exprLocation(v1);
  scanner_errposition(v2, v0);
  errfinish("gram.y", 16333, "makeOrderedSetArgs");
  __break(1u);
}

void insertSelectOptions_cold_1()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple ORDER BY clauses not allowed");
  v2 = exprLocation(v1);
  scanner_errposition(v2, v0);
  errfinish("gram.y", 16370, "insertSelectOptions");
  __break(1u);
}

void insertSelectOptions_cold_2()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple OFFSET clauses not allowed");
  v2 = exprLocation(*v1);
  scanner_errposition(v2, v0);
  errfinish("gram.y", 16381, "insertSelectOptions");
  __break(1u);
}

void insertSelectOptions_cold_3()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple LIMIT clauses not allowed");
  v2 = exprLocation(*v1);
  scanner_errposition(v2, v0);
  errfinish("gram.y", 16390, "insertSelectOptions");
  __break(1u);
}

void insertSelectOptions_cold_4()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple limit options not allowed");
  errfinish("gram.y", 16398, "insertSelectOptions");
  __break(1u);
}

void insertSelectOptions_cold_5()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_4_11();
  errmsg("WITH TIES cannot be specified without ORDER BY clause");
  errfinish("gram.y", 16402, "insertSelectOptions");
  __break(1u);
}

void insertSelectOptions_cold_6()
{
  OUTLINED_FUNCTION_0_26();
  OUTLINED_FUNCTION_4_11();
  errmsg("multiple WITH clauses not allowed");
  v2 = exprLocation(v1);
  scanner_errposition(v2, v0);
  errfinish("gram.y", 16411, "insertSelectOptions");
  __break(1u);
}

uint64_t raw_parser(const char *a1)
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  v1 = scanner_init(a1, v4, &ScanKeywords, &ScanKeywordTokens);
  BYTE8(v5) = 0;
  parser_init(v4);
  v2 = base_yyparse(v1);
  scanner_finish(v1);
  if (v2)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t base_yylex(const char **a1, unsigned int *a2, uint64_t *a3, double a4)
{
  do
  {
    while (1)
    {
      v8 = *a3;
      if (*(*a3 + 88) == 1)
      {
        break;
      }

      result = core_yylex(a1, a2, a3, a4);
      if ((result - 275) >= 2)
      {
        goto LABEL_5;
      }
    }

    result = *(v8 + 92);
    *a1 = *(v8 + 96);
    *a2 = *(v8 + 104);
    **(v8 + 112) = *(v8 + 120);
    *(v8 + 88) = 0;
  }

  while ((result - 275) < 2);
LABEL_5:
  if (result <= 519)
  {
    if (result != 259 && result != 262)
    {
      return result;
    }

    v9 = result;
    v10 = strlen((*v8 + *a2));
  }

  else
  {
    switch(result)
    {
      case 0x208:
        v9 = result;
        v10 = 3;
        break;
      case 0x20F:
        v9 = result;
        v10 = 5;
        break;
      case 0x2C2:
        v9 = result;
        v10 = 4;
        break;
      default:
        return result;
    }
  }

  *(v8 + 112) = *v8 + *a2 + v10;
  v11 = *a2;
  v12 = core_yylex((v8 + 96), a2, a3, a4);
  *(v8 + 92) = v12;
  *(v8 + 104) = *a2;
  *a2 = v11;
  v14 = *(v8 + 112);
  *(v8 + 120) = *v14;
  *v14 = 0;
  *(v8 + 88) = 1;
  result = v9;
  if (v9 <= 519)
  {
    if (v9 != 259 && v9 != 262)
    {
      return result;
    }

    v15 = v9;
    if (v12 == 675)
    {
      v16 = *a2;
      **(v8 + 112) = *(v8 + 120);
      if (core_yylex((v8 + 96), a2, a3, v13) != 261)
      {
        scanner_yyerror("UESCAPE must be followed by a simple string literal", a3);
      }

      v17 = *(v8 + 96);
      if (strlen(v17) != 1 || (v18 = *v17, (*(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x10000) != 0) || (v18 <= 0x2B ? (v19 = ((1 << v18) & 0x88400000000) == 0) : (v19 = 1), !v19 || scanner_isspace(v18)))
      {
        scanner_yyerror("invalid Unicode escape character", a3);
      }

      *a2 = v16;
      str_udeescape(*a1, *v17, v16, a3);
      *a1 = v20;
      *(v8 + 88) = 0;
      if (v15 != 259)
      {
        return 261;
      }
    }

    else
    {
      str_udeescape(*a1, 0x5Cu, *a2, a3);
      *a1 = v24;
      if (v9 != 259)
      {
        return 261;
      }
    }

    v25 = *a1;
    v26 = strlen(v25);
    truncate_identifier(v25, v26, 1);
    return 258;
  }

  switch(v9)
  {
    case 0x2C2:
      v21 = v12 == 542 || v12 == 661;
      v22 = 706;
      v23 = 729;
      goto LABEL_47;
    case 0x20F:
      v21 = v12 == 477 || v12 == 415;
      v22 = 527;
      v23 = 728;
LABEL_47:
      if (v21)
      {
        return v23;
      }

      else
      {
        return v22;
      }

    case 0x208:
      if ((v12 - 442) <= 0x2A && ((1 << (v12 + 70)) & 0x40000000021) != 0 || v12 == 627 || v12 == 306)
      {
        return 727;
      }

      else
      {
        return 520;
      }
  }

  return result;
}

void str_udeescape(const char *a1, unsigned __int8 a2, int a3, void **a4)
{
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v8 = strlen(a1) + 17;
  v10 = palloc(v8, v9);
  v11 = v10;
  v12 = *a1;
  if (!*a1)
  {
    v17 = v10;
LABEL_102:
    *v17 = 0;
    return;
  }

  LODWORD(v13) = 0;
  v14 = a2;
  v45 = a3 + 3;
  v15 = MEMORY[0x1E69E9830];
  v16 = a1;
  v17 = v10;
  do
  {
    while (1)
    {
      v19 = &v17[-v11];
      if (&v17[-v11] > v8 - 17)
      {
        v8 *= 2;
        v11 = repalloc(v11, v8);
        v17 = &v19[v11];
        v12 = *v16;
      }

      if (v12 == v14)
      {
        break;
      }

      if (v13)
      {
        goto LABEL_116;
      }

      *v17++ = v12;
      v21 = *++v16;
      v12 = v21;
      if (!v21)
      {
        goto LABEL_102;
      }
    }

    setup_scanner_errposition_callback(v46, a4, v45 + v16 - a1);
    v20 = *(v16 + 1);
    if (v20 == v14)
    {
      if (v13)
      {
        goto LABEL_116;
      }

      *v17++ = v14;
      v18 = 2;
      goto LABEL_4;
    }

    if ((*(v15 + 4 * v20 + 60) & 0x10000) == 0 || (v22 = *(v16 + 2), (*(v15 + 4 * *(v16 + 2) + 60) & 0x10000) == 0) || (v23 = *(v16 + 3), (*(v15 + 4 * *(v16 + 3) + 60) & 0x10000) == 0) || (v24 = *(v16 + 4), (*(v15 + 4 * *(v16 + 4) + 60) & 0x10000) == 0))
    {
      if (v20 != 43 || (v25 = *(v16 + 2), (*(v15 + 4 * *(v16 + 2) + 60) & 0x10000) == 0) || (v26 = *(v16 + 3), (*(v15 + 4 * *(v16 + 3) + 60) & 0x10000) == 0) || (v27 = *(v16 + 4), (*(v15 + 4 * *(v16 + 4) + 60) & 0x10000) == 0) || (v28 = *(v16 + 5), (*(v15 + 4 * *(v16 + 5) + 60) & 0x10000) == 0) || (v29 = *(v16 + 6), (*(v15 + 4 * *(v16 + 6) + 60) & 0x10000) == 0) || (v30 = *(v16 + 7), (*(v15 + 4 * *(v16 + 7) + 60) & 0x10000) == 0))
      {
        str_udeescape_cold_13();
      }

      if ((v25 - 48) >= 0xA)
      {
        if ((v25 - 97) >= 6)
        {
          if ((v25 - 65) >= 6)
          {
            str_udeescape_cold_1();
          }

          v31 = -55;
          if ((v26 - 48) >= 0xA)
          {
LABEL_34:
            if ((v26 - 97) >= 6)
            {
              if ((v26 - 65) >= 6)
              {
                str_udeescape_cold_1();
              }

              v32 = -55;
              if ((v27 - 48) < 0xA)
              {
LABEL_36:
                v33 = -48;
                if ((v28 - 48) >= 0xA)
                {
                  goto LABEL_46;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v32 = -87;
              if ((v27 - 48) < 0xA)
              {
                goto LABEL_36;
              }
            }

LABEL_40:
            if ((v27 - 97) >= 6)
            {
              if ((v27 - 65) >= 6)
              {
                str_udeescape_cold_1();
              }

              v33 = -55;
              if ((v28 - 48) >= 0xA)
              {
LABEL_46:
                if ((v28 - 97) >= 6)
                {
                  if ((v28 - 65) >= 6)
                  {
                    str_udeescape_cold_1();
                  }

                  v34 = -55;
                  if ((v29 - 48) < 0xA)
                  {
LABEL_48:
                    v35 = -48;
                    if ((v30 - 48) >= 0xA)
                    {
LABEL_57:
                      if ((v30 - 97) >= 6)
                      {
                        if ((v30 - 65) >= 6)
                        {
                          str_udeescape_cold_1();
                        }

                        v36 = -55;
                      }

                      else
                      {
                        v36 = -87;
                      }

                      goto LABEL_61;
                    }

LABEL_54:
                    v36 = -48;
LABEL_61:
                    v37 = (v36 + v30 + ((v31 + v25) << 20) + ((v32 + v26) << 16) + ((v33 + v27) << 12) + ((v34 + v28) << 8) + 16 * (v35 + v29));
                    if ((v37 - 1) >= 0x10FFFF)
                    {
                      str_udeescape_cold_5();
                    }

                    v38 = v37 & 0x1FFC00;
                    if (v13)
                    {
                      if (v38 != 56320)
                      {
                        goto LABEL_116;
                      }

                      v13 = (v37 & 0x3FF | ((v13 & 0x3FF) << 10)) + 0x10000;
                    }

                    else
                    {
                      v13 = v37;
                      if (v38 == 56320)
                      {
                        goto LABEL_116;
                      }
                    }

                    if (v13 >> 10 != 54)
                    {
                      pg_unicode_to_server(v13, v17);
                      LODWORD(v13) = 0;
                      v17 += strlen(v17);
                    }

                    v18 = 8;
                    goto LABEL_4;
                  }
                }

                else
                {
                  v34 = -87;
                  if ((v29 - 48) < 0xA)
                  {
                    goto LABEL_48;
                  }
                }

LABEL_52:
                if ((v29 - 97) >= 6)
                {
                  if ((v29 - 65) >= 6)
                  {
                    str_udeescape_cold_1();
                  }

                  v35 = -55;
                  if ((v30 - 48) >= 0xA)
                  {
                    goto LABEL_57;
                  }
                }

                else
                {
                  v35 = -87;
                  if ((v30 - 48) >= 0xA)
                  {
                    goto LABEL_57;
                  }
                }

                goto LABEL_54;
              }
            }

            else
            {
              v33 = -87;
              if ((v28 - 48) >= 0xA)
              {
                goto LABEL_46;
              }
            }

LABEL_42:
            v34 = -48;
            if ((v29 - 48) < 0xA)
            {
              goto LABEL_48;
            }

            goto LABEL_52;
          }
        }

        else
        {
          v31 = -87;
          if ((v26 - 48) >= 0xA)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        v31 = -48;
        if ((v26 - 48) >= 0xA)
        {
          goto LABEL_34;
        }
      }

      v32 = -48;
      if ((v27 - 48) < 0xA)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    if ((v20 - 48) >= 0xA)
    {
      if ((v20 - 97) >= 6)
      {
        if ((v20 - 65) >= 6)
        {
          str_udeescape_cold_1();
        }

        v39 = -55;
        if ((v22 - 48) < 0xA)
        {
LABEL_73:
          v40 = -48;
          if ((v23 - 48) < 0xA)
          {
            goto LABEL_79;
          }

          goto LABEL_83;
        }
      }

      else
      {
        v39 = -87;
        if ((v22 - 48) < 0xA)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
      v39 = -48;
      if ((v22 - 48) < 0xA)
      {
        goto LABEL_73;
      }
    }

    if ((v22 - 97) >= 6)
    {
      if ((v22 - 65) >= 6)
      {
        str_udeescape_cold_1();
      }

      v40 = -55;
      if ((v23 - 48) < 0xA)
      {
LABEL_79:
        v41 = -48;
        if ((v24 - 48) >= 0xA)
        {
          goto LABEL_88;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v40 = -87;
      if ((v23 - 48) < 0xA)
      {
        goto LABEL_79;
      }
    }

LABEL_83:
    if ((v23 - 97) >= 6)
    {
      if ((v23 - 65) >= 6)
      {
        str_udeescape_cold_1();
      }

      v41 = -55;
      if ((v24 - 48) >= 0xA)
      {
LABEL_88:
        if ((v24 - 97) >= 6)
        {
          if ((v24 - 65) >= 6)
          {
            str_udeescape_cold_1();
          }

          v42 = -55;
        }

        else
        {
          v42 = -87;
        }

        goto LABEL_92;
      }
    }

    else
    {
      v41 = -87;
      if ((v24 - 48) >= 0xA)
      {
        goto LABEL_88;
      }
    }

LABEL_85:
    v42 = -48;
LABEL_92:
    v43 = (v42 + v24 + ((v39 + v20) << 12) + ((v40 + v22) << 8) + 16 * (v41 + v23));
    if ((v43 - 1) >= 0x10FFFF)
    {
      str_udeescape_cold_5();
    }

    v44 = v43 & 0x1FFC00;
    if (v13)
    {
      if (v44 != 56320)
      {
        goto LABEL_116;
      }

      v13 = (v43 & 0x3FF | ((v13 & 0x3FF) << 10)) + 0x10000;
    }

    else
    {
      v13 = v43;
      if (v44 == 56320)
      {
        goto LABEL_116;
      }
    }

    if (v13 >> 10 != 54)
    {
      pg_unicode_to_server(v13, v17);
      LODWORD(v13) = 0;
      v17 += strlen(v17);
    }

    v18 = 5;
LABEL_4:
    v16 += v18;
    cancel_scanner_errposition_callback();
    v12 = *v16;
  }

  while (*v16);
  if (!v13)
  {
    goto LABEL_102;
  }

LABEL_116:
  errstart(20, 0);
  errcode();
  errmsg("invalid Unicode surrogate pair");
  scanner_errposition((v45 + v16 - a1), a4);
  errfinish("src/postgres/src_backend_parser_parser.c", 495, "str_udeescape");
  __break(1u);
}

void str_udeescape_cold_1()
{
  OUTLINED_FUNCTION_3_15();
  errmsg_internal("invalid hexadecimal digit");
  errfinish("src/postgres/src_backend_parser_parser.c", 306, "hexval");
  __break(1u);
}

void str_udeescape_cold_5()
{
  OUTLINED_FUNCTION_3_15();
  errcode();
  errmsg("invalid Unicode escape value");
  errfinish("src/postgres/src_backend_parser_parser.c", 317, "check_unicode_value");
  __break(1u);
}

void str_udeescape_cold_13()
{
  OUTLINED_FUNCTION_3_15();
  errcode();
  errmsg("invalid Unicode escape");
  errhint("Unicode escapes must be \\XXXX or \\+XXXXXX.");
  errfinish("src/postgres/src_backend_parser_parser.c", 465, "str_udeescape");
  __break(1u);
}

uint64_t core_yylex(void *a1, void *a2, void **a3, double a4)
{
  a3[19] = a1;
  a3[20] = a2;
  if (!*(a3 + 20))
  {
    *(a3 + 20) = 1;
    if (*(a3 + 21))
    {
      if (a3[1])
      {
        goto LABEL_4;
      }
    }

    else
    {
      *(a3 + 21) = 1;
      if (a3[1])
      {
LABEL_4:
        if (a3[2])
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    a3[1] = *MEMORY[0x1E69E9850];
    if (a3[2])
    {
LABEL_5:
      v5 = a3[5];
      if (v5)
      {
LABEL_6:
        v6 = a3[3];
        v7 = v5[v6];
        if (v7)
        {
LABEL_16:
          a3[7] = *(v7 + 32);
          v13 = *(v5[v6] + 16);
          a3[9] = v13;
          a3[17] = v13;
          a3[1] = *v5[v6];
          *(a3 + 48) = *v13;
          goto LABEL_17;
        }

        v8 = a3[4];
        if (v6 < v8 - 1)
        {
LABEL_15:
          a3[5][a3[3]] = core_yy_create_buffer(a3[1], 0x4000, a3, a4);
          v5 = a3[5];
          v6 = a3[3];
          v7 = v5[v6];
          goto LABEL_16;
        }

        v9 = v8 + 1;
        v10 = repalloc(v5, 8 * (v8 + 1));
        a3[5] = v10;
        if (v10)
        {
          v11 = &v10[a3[4]];
          a4 = 0.0;
          v11[2] = 0u;
          v11[3] = 0u;
          *v11 = 0u;
          v11[1] = 0u;
          a3[4] = v9;
          goto LABEL_15;
        }

LABEL_395:
        fprintf_to_ereport("out of dynamic memory in core_yyensure_buffer_stack()");
      }

LABEL_13:
      v12 = palloc(8uLL, a4);
      a3[5] = v12;
      if (v12)
      {
        *v12 = 0;
        a4 = 0.0;
        *(a3 + 3) = xmmword_184D2A680;
        goto LABEL_15;
      }

      goto LABEL_395;
    }

LABEL_12:
    a3[2] = *MEMORY[0x1E69E9858];
    v5 = a3[5];
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_17:
  started = yy_start_state_list();
  while (2)
  {
    v16 = a3[9];
    v17 = *(a3 + 48);
    *v16 = v17;
    v18 = *(started + 8 * *(a3 + 21));
    v19 = v16;
    v20 = (v18 + 4 * v17);
    if (*v20 == v17)
    {
      do
      {
LABEL_19:
        v18 += 4 * v20[1];
        v21 = *(v19 + 1);
        v19 = (v19 + 1);
        v20 = (v18 + 4 * v21);
      }

      while (*v20 == v21);
    }

LABEL_20:
    v22 = *(v18 - 2);
    a3[17] = v16;
    a3[8] = (v19 - v16);
    *(a3 + 48) = *v19;
    *v19 = 0;
    a3[9] = v19;
    v23 = v22 - 1;
LABEL_21:
    switch(v23)
    {
      case 0u:
      case 5u:
      case 6u:
      case 7u:
        continue;
      case 1u:
        *a3[20] = *(a3 + 34) - **a3;
        return 275;
      case 2u:
        *a3[20] = *(a3 + 34) - **a3;
        *(*a3 + 15) = 0;
        *(a3 + 21) = 5;
        goto LABEL_182;
      case 3u:
        ++*(*a3 + 15);
LABEL_182:
        *v19 = *(a3 + 48);
        a3[17] = v16;
        a3[8] = 2;
        a3[9] = (v16 + 2);
        *(a3 + 48) = *(v16 + 2);
        *(v16 + 2) = 0;
        a3[9] = (v16 + 2);
        continue;
      case 4u:
        v121 = *a3;
        v122 = *(*a3 + 15);
        if (v122 <= 0)
        {
          *(a3 + 21) = 1;
          v121[21] = *(a3 + 34) - *v121 + *(a3 + 16);
          return 276;
        }

        v121[15] = v122 - 1;
        continue;
      case 8u:
        *a3[20] = *(a3 + 34) - **a3;
        *(a3 + 21) = 3;
        *(*a3 + 12) = 0;
        v112 = *a3;
        v103 = *(*a3 + 12);
        v113 = *(*a3 + 13);
        if (v103 + 1 >= v113)
        {
          *(v112 + 52) = 2 * v113;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v112 = *a3;
          v103 = *(*a3 + 12);
        }

        v105 = *(v112 + 40);
        v106 = 98;
        goto LABEL_190;
      case 9u:
      case 0xAu:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 < v92)
        {
          goto LABEL_186;
        }

        do
        {
          *(v91 + 52) = 2 * v92;
          v91 = *a3;
          v92 = *(*a3 + 13);
        }

        while (*(*a3 + 12) + v90 >= v92);
        goto LABEL_185;
      case 0xBu:
        *a3[20] = *(a3 + 34) - **a3;
        *(a3 + 21) = 9;
        *(*a3 + 12) = 0;
        v123 = *a3;
        v103 = *(*a3 + 12);
        v124 = *(*a3 + 13);
        if (v103 + 1 >= v124)
        {
          *(v123 + 52) = 2 * v124;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v123 = *a3;
          v103 = *(*a3 + 12);
        }

        v105 = *(v123 + 40);
        v106 = 120;
        goto LABEL_190;
      case 0xCu:
        *a3[20] = *(a3 + 34) - **a3;
        *v19 = *(a3 + 48);
        a3[17] = v16;
        a3[8] = 1;
        a3[9] = (v16 + 1);
        *(a3 + 48) = *(v16 + 1);
        *(v16 + 1) = 0;
        a3[9] = (v16 + 1);
        v173 = ScanKeywordLookup("nchar", (*a3)[2]);
        if ((v173 & 0x80000000) == 0)
        {
          goto LABEL_306;
        }

        v175 = pstrdup("n", v174);
        goto LABEL_313;
      case 0xDu:
        *(*a3 + 80) = 1;
        *(*a3 + 81) = 0;
        *a3[20] = *(a3 + 34) - **a3;
        v109 = *a3;
        if (*(*a3 + 37))
        {
          v110 = 11;
        }

        else
        {
          v110 = 15;
        }

        goto LABEL_194;
      case 0xEu:
        *(*a3 + 80) = 0;
        *(*a3 + 81) = 0;
        *a3[20] = *(a3 + 34) - **a3;
        v107 = 15;
        goto LABEL_178;
      case 0xFu:
        *a3[20] = *(a3 + 34) - **a3;
        v109 = *a3;
        if ((*(*a3 + 37) & 1) == 0)
        {
          core_yylex_cold_3();
        }

        v110 = 21;
LABEL_194:
        *(a3 + 21) = v110;
        *(v109 + 48) = 0;
        continue;
      case 0x10u:
        *(*a3 + 14) = (*(a3 + 21) - 1) / 2;
        *(a3 + 21) = 13;
        continue;
      case 0x11u:
        *(a3 + 21) = (2 * *(*a3 + 14)) | 1;
        continue;
      case 0x12u:
      case 0x13u:
      case 0x49u:
        *v19 = *(a3 + 48);
        a3[17] = v16;
        a3[8] = 0;
        a3[9] = v16;
        *(a3 + 48) = *v16;
        *v16 = 0;
        a3[9] = v16;
        *(a3 + 21) = 1;
        v140 = *a3;
        v141 = *(*a3 + 14);
        if (v141 <= 4)
        {
          if (v141 == 1)
          {
            *a3[19] = litbufdup(a3, *&v15);
            *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
            return 263;
          }

          if (v141 == 4)
          {
            *a3[19] = litbufdup(a3, *&v15);
            *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
            return 264;
          }
        }

        else
        {
          if (v141 == 5 || v141 == 7)
          {
            if (*(v140 + 81) == 1)
            {
              pg_verifymbstr();
              v140 = *a3;
            }

            v143 = *(v140 + 48);
            v144 = palloc(v143 + 1, *&v15);
            memcpy(v144, (*a3)[5], v143);
            *(v144 + v143) = 0;
            *a3[19] = v144;
            goto LABEL_247;
          }

          if (v141 == 10)
          {
            *a3[19] = litbufdup(a3, *&v15);
            *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
            return 262;
          }
        }

        scanner_yyerror("unhandled previous state in xqs", a3);
      case 0x14u:
        v114 = *a3;
        v103 = *(*a3 + 12);
        v115 = *(*a3 + 13);
        if (v103 + 1 >= v115)
        {
          *(v114 + 52) = 2 * v115;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v114 = *a3;
          v103 = *(*a3 + 12);
        }

        v105 = *(v114 + 40);
        v106 = 39;
        goto LABEL_190;
      case 0x15u:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 < v92)
        {
          goto LABEL_186;
        }

        do
        {
          *(v91 + 52) = 2 * v92;
          v91 = *a3;
          v92 = *(*a3 + 13);
        }

        while (*(*a3 + 12) + v90 >= v92);
        goto LABEL_185;
      case 0x16u:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 < v92)
        {
          goto LABEL_186;
        }

        do
        {
          *(v91 + 52) = 2 * v92;
          v91 = *a3;
          v92 = *(*a3 + 13);
        }

        while (*(*a3 + 12) + v90 >= v92);
        goto LABEL_185;
      case 0x17u:
        v118 = strtoul(a3[17] + 2, 0, 16);
        if (*(*a3 + 80) == 1 && *(*a3 + 36) == 1)
        {
          v119 = v118;
          v120 = errstart(19, 0);
          v118 = v119;
          if (v120)
          {
            errcode();
            errmsg("nonstandard use of escape in a string literal");
            errhint("Use the escape string syntax for escapes, e.g., E'\\r\\n'.");
            scanner_errposition(*a3[20], a3);
            errfinish("scan.l", 1454, "check_escape_warning");
            v118 = v119;
          }
        }

        *(*a3 + 80) = 0;
        *(*a3 + 18) = *a3[20];
        *a3[20] = *(a3 + 34) - **a3;
        if ((v118 & 0xFFFFFC00) == 0xD800)
        {
          *(*a3 + 19) = v118;
          *(a3 + 21) = 23;
        }

        else
        {
          if ((v118 & 0xFFFFFC00) == 0xDC00)
          {
LABEL_382:
            scanner_yyerror("invalid Unicode surrogate pair", a3);
          }

          addunicode(v118, a3);
        }

        *a3[20] = *(*a3 + 18);
        continue;
      case 0x18u:
        v111 = strtoul(a3[17] + 2, 0, 16);
        *(*a3 + 18) = *a3[20];
        *a3[20] = *(a3 + 34) - **a3;
        if (v111 >> 10 != 55)
        {
          goto LABEL_382;
        }

        addunicode((v111 & 0x3FF | ((*(*a3 + 19) & 0x3FF) << 10)) + 0x10000, a3);
        *a3[20] = *(*a3 + 18);
        *(a3 + 21) = 15;
        continue;
      case 0x19u:
      case 0x1Au:
      case 0x4Eu:
        *a3[20] = *(a3 + 34) - **a3;
        goto LABEL_382;
      case 0x1Bu:
        core_yylex_cold_2(a3 + 34, a3, a3 + 20);
      case 0x1Cu:
        if (*(a3[17] + 1) != 39)
        {
          goto LABEL_212;
        }

        v108 = *(*a3 + 8);
        if (v108 == 2)
        {
          if (pg_get_client_encoding() >= 35 && pg_get_client_encoding() <= 41)
          {
LABEL_400:
            core_yylex_cold_1();
          }
        }

        else if (!v108)
        {
          goto LABEL_400;
        }

LABEL_212:
        v130 = *(a3[17] + 1);
        v131 = *a3;
        if (v130 == 92)
        {
          if (*(*a3 + 80) && *(v131 + 36) == 1 && errstart(19, 0))
          {
            errcode();
            errmsg("nonstandard use of \\\\ in a string literal");
            errhint("Use the escape string syntax for backslashes, e.g., E'\\\\'.");
            v135 = *a3[20];
            if ((v135 & 0x80000000) == 0)
            {
              pg_mbstrlen_with_len(**a3, v135);
              errposition();
            }

            v133 = "check_string_escape_warning";
            v134 = 1439;
            goto LABEL_232;
          }
        }

        else if (v130 == 39)
        {
          if (*(*a3 + 80) && *(v131 + 36) == 1 && errstart(19, 0))
          {
            errcode();
            errmsg("nonstandard use of \\' in a string literal");
            errhint("Use '' to write quotes in strings, or use the escape string syntax (E'...').");
            v132 = *a3[20];
            if ((v132 & 0x80000000) == 0)
            {
              pg_mbstrlen_with_len(**a3, v132);
              errposition();
            }

            v133 = "check_string_escape_warning";
            v134 = 1429;
LABEL_232:
            errfinish("scan.l", v134, v133);
          }
        }

        else if (*(*a3 + 80) && *(v131 + 36) == 1 && errstart(19, 0))
        {
          errcode();
          errmsg("nonstandard use of escape in a string literal");
          errhint("Use the escape string syntax for escapes, e.g., E'\\r\\n'.");
          v136 = *a3[20];
          if ((v136 & 0x80000000) == 0)
          {
            pg_mbstrlen_with_len(**a3, v136);
            errposition();
          }

          v133 = "check_escape_warning";
          v134 = 1454;
          goto LABEL_232;
        }

        *(*a3 + 80) = 0;
        v137 = *(a3[17] + 1);
        HIDWORD(v139) = v137 - 98;
        LODWORD(v139) = v137 - 98;
        v138 = v139 >> 1;
        if (v138 < 0xA && ((0x345u >> v138) & 1) != 0)
        {
          v85 = byte_184DCFEF4[v138];
        }

        else
        {
          v85 = *(a3[17] + 1);
          if (v137 <= 0)
          {
            *(*a3 + 81) = 1;
          }
        }

LABEL_123:
        v86 = *a3;
        v87 = *(*a3 + 12);
        v88 = *(*a3 + 13);
        if (v87 + 1 >= v88)
        {
          *(v86 + 52) = 2 * v88;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v86 = *a3;
          v87 = *(*a3 + 12);
        }

        *(*(v86 + 40) + v87) = v85;
LABEL_191:
        ++*(*a3 + 12);
        continue;
      case 0x1Du:
        v116 = a3[17] + 1;
        v117 = 8;
        goto LABEL_197;
      case 0x1Eu:
        v116 = a3[17] + 2;
        v117 = 16;
LABEL_197:
        v125 = strtoul(v116, 0, v117);
        if (*(*a3 + 80) == 1 && *(*a3 + 36) == 1 && errstart(19, 0))
        {
          errcode();
          errmsg("nonstandard use of escape in a string literal");
          errhint("Use the escape string syntax for escapes, e.g., E'\\r\\n'.");
          scanner_errposition(*a3[20], a3);
          errfinish("scan.l", 1454, "check_escape_warning");
        }

        *(*a3 + 80) = 0;
        v126 = *a3;
        v127 = *(*a3 + 12);
        v128 = *(*a3 + 13);
        if (v127 + 1 >= v128)
        {
          *(v126 + 52) = 2 * v128;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v126 = *a3;
          v127 = *(*a3 + 12);
        }

        *(*(v126 + 40) + v127) = v125;
        ++*(*a3 + 12);
        if (v125)
        {
          v129 = (v125 & 0x80) == 0;
        }

        else
        {
          v129 = 0;
        }

        if (!v129)
        {
          *(*a3 + 81) = 1;
        }

        continue;
      case 0x1Fu:
      case 0x25u:
        v85 = *a3[17];
        goto LABEL_123;
      case 0x20u:
        *a3[20] = *(a3 + 34) - **a3;
        (*a3)[8] = pstrdup(a3[17], *&v15);
        v107 = 17;
        goto LABEL_178;
      case 0x21u:
        *a3[20] = *(a3 + 34) - **a3;
        *v19 = *(a3 + 48);
        a3[17] = v16;
        a3[8] = 1;
        a3[9] = (v16 + 1);
        *(a3 + 48) = *(v16 + 1);
        *(v16 + 1) = 0;
        a3[9] = (v16 + 1);
        return *a3[17];
      case 0x22u:
        v94 = a3[17];
        v95 = *a3;
        v96 = (*a3)[8];
        if (!strcmp(v94, v96))
        {
          pfree(v96);
          (*a3)[8] = 0;
          *(a3 + 21) = 1;
          *a3[19] = litbufdup(a3, v188);
LABEL_247:
          *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
          return 261;
        }

        v97 = *(a3 + 16) - 1;
        v99 = *(v95 + 48);
        v98 = *(v95 + 52);
        if (v97 + v99 >= v98)
        {
          do
          {
            *(v95 + 52) = 2 * v98;
            v95 = *a3;
            v98 = *(*a3 + 13);
          }

          while (*(*a3 + 12) + v97 >= v98);
          (*a3)[5] = repalloc(*(v95 + 40), v98);
          v95 = *a3;
          v99 = *(*a3 + 12);
        }

        memcpy((*(v95 + 40) + v99), v94, v97);
        *(*a3 + 12) += v97;
        v100 = *(a3 + 16);
        *v19 = *(a3 + 48);
        v101 = (v100 - 1);
        a3[17] = v16;
        a3[8] = v101;
        a3[9] = (v101 + v16);
        *(a3 + 48) = *(v101 + v16);
        *(v101 + v16) = 0;
        a3[9] = (v101 + v16);
        continue;
      case 0x23u:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 < v92)
        {
          goto LABEL_186;
        }

        do
        {
          *(v91 + 52) = 2 * v92;
          v91 = *a3;
          v92 = *(*a3 + 13);
        }

        while (*(*a3 + 12) + v90 >= v92);
        goto LABEL_185;
      case 0x24u:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 < v92)
        {
          goto LABEL_186;
        }

        do
        {
          *(v91 + 52) = 2 * v92;
          v91 = *a3;
          v92 = *(*a3 + 13);
        }

        while (*(*a3 + 12) + v90 >= v92);
        goto LABEL_185;
      case 0x26u:
        *a3[20] = *(a3 + 34) - **a3;
        v107 = 7;
        goto LABEL_178;
      case 0x27u:
        *a3[20] = *(a3 + 34) - **a3;
        v107 = 19;
LABEL_178:
        *(a3 + 21) = v107;
        *(*a3 + 12) = 0;
        continue;
      case 0x28u:
        *(a3 + 21) = 1;
        v153 = *(*a3 + 12);
        if (!v153)
        {
          goto LABEL_396;
        }

        v154 = palloc(v153 + 1, *&v15);
        memcpy(v154, (*a3)[5], v153);
        v154[v153] = 0;
        v155 = *(*a3 + 12);
        if (v155 >= 64)
        {
          truncate_identifier(v154, v155, 1);
        }

        *a3[19] = v154;
        goto LABEL_314;
      case 0x29u:
        *(a3 + 21) = 1;
        v156 = *(*a3 + 12);
        if (!v156)
        {
LABEL_396:
          scanner_yyerror("zero-length delimited identifier", a3);
        }

        v157 = palloc(v156 + 1, *&v15);
        memcpy(v157, (*a3)[5], v156);
        *(v157 + v156) = 0;
        *a3[19] = v157;
        *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
        return 259;
      case 0x2Au:
        v102 = *a3;
        v103 = *(*a3 + 12);
        v104 = *(*a3 + 13);
        if (v103 + 1 >= v104)
        {
          *(v102 + 52) = 2 * v104;
          (*a3)[5] = repalloc((*a3)[5], *(*a3 + 13));
          v102 = *a3;
          v103 = *(*a3 + 12);
        }

        v105 = *(v102 + 40);
        v106 = 34;
LABEL_190:
        *(v105 + v103) = v106;
        goto LABEL_191;
      case 0x2Bu:
        v89 = a3[17];
        v90 = a3[8];
        v91 = *a3;
        v93 = *(*a3 + 12);
        v92 = *(*a3 + 13);
        if (v93 + v90 >= v92)
        {
          do
          {
            *(v91 + 52) = 2 * v92;
            v91 = *a3;
            v92 = *(*a3 + 13);
          }

          while (*(*a3 + 12) + v90 >= v92);
LABEL_185:
          (*a3)[5] = repalloc(*(v91 + 40), v92);
          v91 = *a3;
          v93 = *(*a3 + 12);
        }

LABEL_186:
        memcpy((*(v91 + 40) + v93), v89, v90);
        *(*a3 + 12) += v90;
        continue;
      case 0x2Cu:
        *a3[20] = *(a3 + 34) - **a3;
        *v19 = *(a3 + 48);
        a3[17] = v16;
        a3[8] = 1;
        a3[9] = (v16 + 1);
        *(a3 + 48) = *(v16 + 1);
        *(v16 + 1) = 0;
        a3[9] = (v16 + 1);
        goto LABEL_312;
      case 0x2Du:
        return *(a3[17] + 1);
      case 0x2Eu:
        *a3[20] = *(a3 + 34) - **a3;
        return 268;
      case 0x2Fu:
        *a3[20] = *(a3 + 34) - **a3;
        return 269;
      case 0x30u:
        *a3[20] = *(a3 + 34) - **a3;
        return 270;
      case 0x31u:
        *a3[20] = *(a3 + 34) - **a3;
        return 271;
      case 0x32u:
        *a3[20] = *(a3 + 34) - **a3;
        return 272;
      case 0x33u:
        *a3[20] = *(a3 + 34) - **a3;
        return 273;
      case 0x34u:
      case 0x35u:
        *a3[20] = *(a3 + 34) - **a3;
        return 274;
      case 0x36u:
      case 0x40u:
        *a3[20] = *(a3 + 34) - **a3;
        return *a3[17];
      case 0x37u:
        v158 = a3[8];
        v159 = a3[17];
          result = v197;
          if (v198)
          {
            return result;
          }

          v199 = v196;
        }

        else
        {
LABEL_360:
          if (v165 > 63)
          {
            scanner_yyerror("operator too long", a3);
          }

          v199 = a3[17];
        }

LABEL_362:
        *a3[19] = pstrdup(v199, v194);
        return 265;
      case 0x38u:
        *a3[20] = *(a3 + 34) - **a3;
        *a3[19] = atol(a3[17] + 1);
        return 267;
      case 0x39u:
        goto LABEL_298;
      case 0x3Au:
      case 0x3Cu:
        *a3[20] = *(a3 + 34) - **a3;
        *a3[19] = pstrdup(a3[17], *&v15);
        return 260;
      case 0x3Bu:
      case 0x3Eu:
        v146 = *(a3 + 16);
        *v19 = *(a3 + 48);
        v147 = (v146 - 2);
        a3[17] = v16;
        a3[8] = v147;
        a3[9] = (v147 + v16);
        *(a3 + 48) = *(v147 + v16);
        *(v147 + v16) = 0;
        a3[9] = (v147 + v16);
        *a3[20] = *(a3 + 34) - **a3;
        v148 = a3[17];
        v149 = a3[19];
        v202 = 0;
        *__error() = 0;
        v150 = strtoint(v148, &v202, 10);
        if (*v202 || (v152 = v150, *__error() == 34))
        {
          *v149 = pstrdup(v148, v151);
          return 260;
        }

        else
        {
          *v149 = v152;
          return 266;
        }

      case 0x3Du:
        v176 = *(a3 + 16);
        *v19 = *(a3 + 48);
        v177 = (v176 - 1);
        a3[17] = v16;
        a3[8] = v177;
        a3[9] = (v177 + v16);
        *(a3 + 48) = *(v177 + v16);
        *(v177 + v16) = 0;
        a3[9] = (v177 + v16);
LABEL_298:
        *a3[20] = *(a3 + 34) - **a3;
        v178 = a3[17];
        v179 = a3[19];
        v202 = 0;
        *__error() = 0;
        v180 = strtoint(v178, &v202, 10);
        if (*v202 || (v182 = v180, *__error() == 34))
        {
          *v179 = pstrdup(v178, v181);
          return 260;
        }

        else
        {
          *v179 = v182;
          return 266;
        }

      case 0x3Fu:
        v183 = pstrdup(a3[17], *&v15);
        v184 = v183;
        *a3[20] = *(a3 + 34) - **a3;
        v185 = a3[8] - 1;
        if (v185[a3[17]] == 63)
        {
          v185[v183] = 0;
        }

        v173 = ScanKeywordLookup(v183, (*a3)[2]);
        if ((v173 & 0x80000000) != 0)
        {
LABEL_312:
          v175 = downcase_truncate_identifier(a3[17], *(a3 + 16), 1, *&v15);
LABEL_313:
          *a3[19] = v175;
LABEL_314:
          *(*a3 + 21) = *(a3 + 34) - **a3 + *(a3 + 16);
          return 258;
        }

        else
        {
          v186 = a3[8] - 1;
          if (!v186[v184])
          {
            *v19 = *(a3 + 48);
            v187 = (v16 + v186);
            a3[17] = v16;
            a3[8] = v186;
            a3[9] = v187;
            *(a3 + 48) = *v187;
            *v187 = 0;
            a3[9] = v187;
          }

LABEL_306:
          *a3[19] = *(*a3)[2] + *(*((*a3)[2] + 8) + 2 * v173);
          return *((*a3)[3] + 2 * v173);
        }

      case 0x41u:
        fprintf_to_ereport("flex scanner jammed");
      case 0x42u:
        v24 = a3[17];
        *v19 = *(a3 + 48);
        v25 = a3[5];
        v26 = a3[3];
        v27 = v25[v26];
        if (!*(v27 + 64))
        {
          a3[7] = *(v27 + 32);
          *v25[v26] = a3[1];
          *(a3[5][a3[3]] + 64) = 1;
          v25 = a3[5];
          v26 = a3[3];
          v27 = v25[v26];
        }

        v28 = a3[9];
        v29 = *(v27 + 8);
        v30 = a3[7];
        if (v28 <= v30 + v29)
        {
          v16 = a3[17];
          v76 = ~v24 + v19;
          v19 = (v16 + v76);
          a3[9] = (v16 + v76);
          v18 = *(started + 8 * *(a3 + 21));
          if (v16 < (v16 + v76))
          {
            v77 = v16;
            do
            {
              v79 = *v77++;
              v78 = v79;
              if (!v79)
              {
                v78 = 256;
              }

              v18 += 4 * *(v18 + 4 * v78 + 2);
              --v76;
            }

            while (v76);
          }

          v80 = v18 + 4 * *(v18 + 1026);
          if (*(v18 + 1024) != 256 || v80 == 0)
          {
            goto LABEL_20;
          }

          v19 = (v19 + 1);
          a3[9] = v19;
          v18 = v80;
          goto LABEL_120;
        }

        if (v28 > v30 + v29 + 1)
        {
          fprintf_to_ereport("fatal flex scanner internal error--end of buffer missed");
        }

        v31 = a3[17];
        v32 = v28 - v31;
        if (!*(v27 + 60))
        {
          if (v32 != 1)
          {
            goto LABEL_99;
          }

LABEL_94:
          *(a3 + 22) = 0;
          a3[9] = v31;
          v23 = (*(a3 + 21) - 1) / 2 + 67;
          if (v23 > 0x4E)
          {
LABEL_392:
            fprintf_to_ereport("fatal flex scanner internal error--no action found");
          }

          goto LABEL_21;
        }

        v33 = v32 - 1;
        if (v32 - 1 < 1)
        {
          goto LABEL_48;
        }

        LODWORD(v34) = 0;
        v35 = (v28 - v31 - 2);
        if (v35 < 7)
        {
          v36 = a3[17];
          goto LABEL_44;
        }

        v36 = a3[17];
        if ((v29 - v31) < 0x20)
        {
          goto LABEL_44;
        }

        v37 = v35 + 1;
        if (v35 >= 0x1F)
        {
          v38 = v37 & 0x1FFFFFFE0;
          v39 = (v31 + 2);
          v40 = v29 + 16;
          v41 = v37 & 0x1FFFFFFE0;
          do
          {
            v15 = *(v39 - 1);
            v42 = *v39;
            *(v40 - 1) = v15;
            *v40 = v42;
            v39 += 2;
            v40 += 2;
            v41 -= 32;
          }

          while (v41);
          if (v37 == v38)
          {
            goto LABEL_47;
          }

          if ((v37 & 0x18) == 0)
          {
            v36 = v31 + v38;
            v29 += v38;
            LODWORD(v34) = v37 & 0xFFFFFFE0;
LABEL_44:
            v48 = v34 + v31 - v28 + 1;
            do
            {
              v49 = *v36++;
              *v29++ = v49;
            }

            while (!__CFADD__(v48++, 1));
            goto LABEL_47;
          }
        }

        else
        {
          v38 = 0;
        }

        v34 = v37 & 0x1FFFFFFF8;
        v43 = &v29[v37 & 0x1FFFFFFF8];
        v36 = v31 + (v37 & 0x1FFFFFFF8);
        v44 = (v31 + v38);
        v45 = &v29[v38];
        v46 = v38 - (v37 & 0x1FFFFFFF8);
        do
        {
          v47 = *v44++;
          *&v15 = v47;
          *v45++ = v47;
          v46 += 8;
        }

        while (v46);
        v29 = v43;
        if (v37 != v34)
        {
          goto LABEL_44;
        }

LABEL_47:
        v25 = a3[5];
        v26 = a3[3];
        v27 = v25[v26];
LABEL_48:
        if (*(v27 + 64) == 2)
        {
          a3[7] = 0;
          *(v25[v26] + 32) = 0;
          if (a3[7])
          {
            goto LABEL_50;
          }
        }

        else
        {
          v52 = ~v33;
          v53 = *(v27 + 24);
          v54 = v53 + v52;
          if (!(v53 + v52))
          {
            v59 = a3[9];
            while (*(v27 + 40))
            {
              v61 = *(v27 + 8);
              v62 = 2 * v53;
              v63 = v53 | (v53 >> 3);
              if (v62)
              {
                v63 = v62;
              }

              *(v27 + 24) = v63;
              if (v61)
              {
                v60 = repalloc(v61, v63 + 2);
                *(v27 + 8) = v60;
                if (!v60)
                {
                  goto LABEL_380;
                }
              }

              else
              {
                v60 = palloc(v63 + 2, *&v15);
                *(v27 + 8) = v60;
                if (!v60)
                {
                  goto LABEL_380;
                }
              }

              v59 = (v60 + v59 - v61);
              a3[9] = v59;
              v27 = a3[5][a3[3]];
              v53 = *(v27 + 24);
              v54 = v53 + v52;
              if (v53 + v52)
              {
                goto LABEL_52;
              }
            }

            *(v27 + 8) = 0;
LABEL_380:
            fprintf_to_ereport("fatal error - scanner input buffer overflow");
          }

LABEL_52:
          if (v54 >= 0x2000)
          {
            v55 = 0x2000;
          }

          else
          {
            v55 = v54;
          }

          if (*(v27 + 44))
          {
            v56 = 0;
            while (1)
            {
              v57 = getc(a3[1]);
              if (v57 == -1 || v57 == 10)
              {
                break;
              }

              *(v56 + *(a3[5][a3[3]] + 8) + v33) = v57;
              v56 = (v56 + 1);
              if (v55 == v56)
              {
                v56 = v55;
                break;
              }
            }

            if (v57 == -1)
            {
              if (ferror(a3[1]))
              {
LABEL_393:
                fprintf_to_ereport("input in flex scanner failed");
              }
            }

            else if (v57 == 10)
            {
              *(v56 + *(a3[5][a3[3]] + 8) + v33) = 10;
              v56 = (v56 + 1);
            }

            a3[7] = v56;
          }

          else
          {
            *__error() = 0;
            while (1)
            {
              v64 = fread((*(a3[5][a3[3]] + 8) + v33), 1uLL, v55, a3[1]);
              a3[7] = v64;
              if (v64)
              {
                v56 = v64;
                goto LABEL_83;
              }

              if (!ferror(a3[1]))
              {
                break;
              }

              if (*__error() != 4)
              {
                goto LABEL_393;
              }

              *__error() = 0;
              clearerr(a3[1]);
            }

            v56 = 0;
          }

LABEL_83:
          *(a3[5][a3[3]] + 32) = v56;
          if (a3[7])
          {
LABEL_50:
            v51 = 0;
            goto LABEL_87;
          }
        }

        if (v33)
        {
          v51 = 2;
          *(a3[5][a3[3]] + 64) = 2;
        }

        else
        {
          core_yyrestart(a3[1], a3, *&v15);
          v51 = 1;
        }

LABEL_87:
        v65 = a3[7];
        v66 = (v65 + v33);
        v67 = a3[5];
        v68 = a3[3];
        v69 = v67[v68];
        if (v66 > *(v69 + 24))
        {
          v70 = *(v69 + 8);
          if (v70)
          {
            v71 = repalloc(v70, v66 + (v65 >> 1));
          }

          else
          {
            v71 = palloc(v66 + (v65 >> 1), *&v15);
          }

          *(a3[5][a3[3]] + 8) = v71;
          v67 = a3[5];
          v68 = a3[3];
          if (!*(v67[v68] + 8))
          {
            fprintf_to_ereport("out of dynamic memory in yy_get_next_buffer()");
          }

          v66 = (a3[7] + v33);
        }

        a3[7] = v66;
        *(v66 + *(v67[v68] + 8)) = 0;
        *(a3[7] + *(a3[5][a3[3]] + 8) + 1) = 0;
        v72 = a3[5];
        v73 = a3[3];
        v31 = *(v72[v73] + 8);
        a3[17] = v31;
        if (v51 == 1)
        {
          goto LABEL_94;
        }

        if (v51)
        {
          v29 = *(v72[v73] + 8);
          v30 = a3[7];
LABEL_99:
          v16 = v31;
          v19 = (v30 + v29);
          a3[9] = (v30 + v29);
          v18 = *(started + 8 * *(a3 + 21));
          if (v31 < v19)
          {
            do
            {
              v75 = *v31;
              v31 = (v31 + 1);
              v74 = v75;
              if (!v75)
              {
                v74 = 256;
              }

              v18 += 4 * *(v18 + 4 * v74 + 2);
            }

            while (v31 != v19);
          }

          goto LABEL_20;
        }

        v82 = ~v24 + v19;
        v19 = (v31 + v82);
        a3[9] = (v31 + v82);
        v18 = *(started + 8 * *(a3 + 21));
        if (v31 < (v31 + v82))
        {
          v83 = 0;
          do
          {
            v84 = *(v31 + v83);
            if (!*(v31 + v83))
            {
              v84 = 256;
            }

            v18 += 4 * *(v18 + 4 * v84 + 2);
            ++v83;
          }

          while (v82 != v83);
        }

        v16 = v31;
LABEL_120:
        v20 = (v18 + 4 * *v19);
        if (*v20 != *v19)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      case 0x43u:
        result = 0;
        *a3[20] = *(a3 + 34) - **a3;
        return result;
      case 0x44u:
        scanner_yyerror("unterminated bit string literal", a3);
      case 0x45u: