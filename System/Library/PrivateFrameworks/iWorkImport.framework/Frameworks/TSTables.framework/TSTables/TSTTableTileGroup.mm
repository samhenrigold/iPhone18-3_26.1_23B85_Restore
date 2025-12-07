@interface TSTTableTileGroup
+ (TSTTableTileGroup)groupWithStartingTileID:(unint64_t)d;
- (TSTTableTileGroup)init;
- (TSTTableTileGroup)initWithStartingTileID:(unint64_t)d;
- (id)_tileForLazyReference:(id)reference;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (void)enumerateLoadedTilesWithBlock:(id)block;
- (void)enumerateReferencesWithBlock:(id)block;
- (void)enumerateTilesWithBlock:(id)block;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
- (void)setReference:(id)reference forTileID:(unint64_t)d;
@end

@implementation TSTTableTileGroup

+ (TSTTableTileGroup)groupWithStartingTileID:(unint64_t)d
{
  v4 = [self alloc];
  v7 = objc_msgSend_initWithStartingTileID_(v4, v5, d, v6);

  return v7;
}

- (TSTTableTileGroup)initWithStartingTileID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = TSTTableTileGroup;
  result = [(TSTTableTileGroup *)&v5 init];
  if (result)
  {
    result->_startingTileID = d;
  }

  return result;
}

- (TSTTableTileGroup)init
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableTileGroup init]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v8, v4, v7, 47, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10, v11);
  v12 = MEMORY[0x277CBEAD8];
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%s: %s", v14, "Do not call method", "[TSTTableTileGroup init]");
  v17 = objc_msgSend_exceptionWithName_reason_userInfo_(v12, v16, *MEMORY[0x277CBE658], v15, 0);
  v18 = v17;

  objc_exception_throw(v17);
}

- (void)setReference:(id)reference forTileID:(unint64_t)d
{
  referenceCopy = reference;
  v7 = &self->super.isa + sub_2213CF1FC(d, self->_startingTileID);
  v8 = v7[257];
  v7[257] = referenceCopy;
  v10 = referenceCopy;

  v9 = v7[1];
  v7[1] = 0;
}

- (id)_tileForLazyReference:(id)reference
{
  referenceCopy = reference;
  objc_sync_enter(referenceCopy);
  v70 = 0;
  v7 = objc_msgSend_objectAndReturnError_(referenceCopy, v5, &v70, v6);
  v8 = v70;
  v11 = v8;
  if (!v7 || v8)
  {
    if (!v8)
    {
      v57 = MEMORY[0x277D81150];
      v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableTileGroup _tileForLazyReference:]", v10);
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v60);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 63, 0, "invalid nil value for '%{public}s'", "error");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v19 = objc_msgSend_domain(v11, v16, v17, v18);
    v23 = objc_msgSend_code(v11, v20, v21, v22);
    isRecoverable = objc_msgSend_tsp_isRecoverable(v11, v24, v25, v26);
    v31 = objc_msgSend_tsp_hintsDescription(v11, v28, v29, v30);
    v32 = v31;
    v33 = &stru_2834BADA0;
    if (isRecoverable)
    {
      v33 = @"recoverable=YES, ";
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Failed to load a lazy table tile in TSTTableTileGroup: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", "[TSTTableTileGroup _tileForLazyReference:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", 64, self, v15, v19, v23, v33, v31, v11);

    v34 = MEMORY[0x277D81150];
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "[TSTTableTileGroup _tileForLazyReference:]", v36);
    v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileGroup.mm", v39);
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v69 = objc_msgSend_domain(v11, v43, v44, v45);
    v68 = objc_msgSend_code(v11, v46, v47, v48);
    v67 = objc_msgSend_tsp_isRecoverable(v11, v49, v50, v51);
    v66 = objc_msgSend_tsp_hintsDescription(v11, v52, v53, v54);
    if (v67)
    {
      v56 = @"recoverable=YES, ";
    }

    else
    {
      v56 = &stru_2834BADA0;
    }

    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v55, v37, v40, 64, 1, "Failed to load a lazy table tile in TSTTableTileGroup: %@ with error: errorClass=%{public}@, domain=%{public}@, code=%zd, %{public}@hints=%{public}@ (%@) ", self, v42, v69, v68, v56, v66, v11);

    TSUCrashBreakpoint();
    abort();
  }

  objc_opt_class();
  v12 = TSUCheckedDynamicCast();

  objc_sync_exit(referenceCopy);

  return v12;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v4 = sub_2213CF1FC(subscript, self->_startingTileID);
  tiles = self->_tiles;
  v8 = self->_tiles[v4];
  if (v8)
  {
    goto LABEL_4;
  }

  v9 = v4;
  v10 = self->_references[v4];
  if (v10)
  {
    v11 = objc_msgSend__tileForLazyReference_(self, v5, v10, v6);
    v12 = tiles[v9];
    tiles[v9] = v11;

    v8 = tiles[v9];
LABEL_4:
    v13 = v8;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  objectCopy = object;
  v7 = (&self->super.isa + sub_2213CF1FC(subscript, self->_startingTileID));
  objc_storeStrong(v7 + 1, object);
  v10 = objc_msgSend_referenceForObject_(MEMORY[0x277D80868], v8, objectCopy, v9);
  objc_msgSend_setKeepObjectInMemory_(v10, v11, 1, v12);
  v13 = v7[257];
  v7[257] = v10;
}

- (void)enumerateTilesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = (&self->super.isa + v5);
    v9 = v6[1];
    if (!v9)
    {
      if (!v6[257])
      {
        v9 = 0;
        goto LABEL_4;
      }

      v9 = objc_msgSend_objectAtIndexedSubscript_(self, v7, v5 + self->_startingTileID, v8);
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    v10 = 0;
    blockCopy[2](blockCopy, v9, v5 + self->_startingTileID, &v10);
    if (v10)
    {
      break;
    }

LABEL_4:

    if (++v5 == 256)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
}

- (void)enumerateLoadedTilesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = self->_tiles[v5];
    if (v6)
    {
      v7 = 0;
      blockCopy[2](blockCopy, v6, v5 + self->_startingTileID, &v7);
      if (v7)
      {
        break;
      }
    }

    if (++v5 == 256)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

- (void)enumerateReferencesWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  while (1)
  {
    v6 = self->_references[v5];
    if (v6)
    {
      v7 = 0;
      blockCopy[2](blockCopy, v6, v5 + self->_startingTileID, &v7);
      if (v7)
      {
        break;
      }
    }

    if (++v5 == 256)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
}

@end