@interface _PFResultObject
- (__CFString)stringFromPtr:(void *)ptr;
- (__CFString)taggedStringFromPtr:(__CFString *)result withLength:(char *)__s;
- (id)keyEnumerator;
- (id)objectForKey:(id)key;
- (id)valueAtIndex:(unint64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation _PFResultObject

- (id)valueAtIndex:(unint64_t)index
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  parent_buffer = self->_parent_buffer;
  resultSet = parent_buffer->_resultSet;
  var7 = resultSet->var7;
  if ((*&var7 & 0x10) != 0)
  {
    if ((*&var7 & 0x40) != 0)
    {
      v38 = @"%@: backing buffer has been purged";
    }

    else
    {
      if ((*&var7 & 0x20) == 0)
      {
        goto LABEL_2;
      }

      v38 = @"%@: backing buffer can be purged";
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{v38, _NSMethodExceptionProem()}];
    goto LABEL_36;
  }

LABEL_2:
  metadata = parent_buffer->_metadata;
  mapping = [(NSKnownKeysDictionary *)metadata mapping];
  if ([(NSKnownKeysMappingStrategy *)mapping length]<= index)
  {
    goto LABEL_36;
  }

  v11 = self + 1;
  v12 = *(&self[1].super.super.isa + index);
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = 0;
  if (index)
  {
    v14 = self + 1;
    indexCopy = index;
    do
    {
      isa = v14->super.super.isa;
      v14 = (v14 + 8);
      v13 += isa;
      --indexCopy;
    }

    while (indexCopy);
  }

  v99 = [(NSKnownKeysMappingStrategy *)mapping length];
  propertyDescription = [(NSKnownKeysDictionary *)metadata valueAtIndex:index];
  if (index >= 6 && self->_sql_entity_id == 16001)
  {
    if (self[1]._primary_key)
    {
      v18 = vaddvq_s64(vaddq_s64(*&self[1]._cd_rc, *&self[1].super.super.isa));
      v19 = *((&v11->super.super.isa + 8 * [(NSKnownKeysMappingStrategy *)mapping length]+ v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v20 = self->_parent_buffer;
      v97 = v12;
      v98 = v5;
      if (v20 && (weakRequestStore = v20->_weakRequestStore) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&weakRequestStore->_object);
      }

      else
      {
        WeakRetained = 0;
      }

      v23 = [objc_msgSend(WeakRetained "model")];
      v24 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v23];
      v25 = [objc_msgSend(objc_msgSend(propertyDescription "name")];
      if (v25 < [v24 count])
      {
        v26 = [v24 objectAtIndexedSubscript:v25];
        if (v23)
        {
          v27 = [*(v23 + 40) objectForKey:v26];
        }

        else
        {
          v27 = 0;
        }

        propertyDescription = [v27 propertyDescription];
      }

      v12 = v97;
      v5 = v98;
      goto LABEL_18;
    }

LABEL_36:
    objc_autoreleasePoolPop(v5);
    return 0;
  }

LABEL_18:
  v28 = ((&v11->super.super.isa + 8 * v99 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  _propertyType = [propertyDescription _propertyType];
  if (_propertyType > 4)
  {
    if (_propertyType == 5)
    {
      expressionResultType = [propertyDescription expressionResultType];
      if (!expressionResultType)
      {
        [propertyDescription expression];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_21;
        }

        goto LABEL_112;
      }

LABEL_45:
      if (expressionResultType > 799)
      {
        if (expressionResultType <= 1199)
        {
          if (expressionResultType <= 999)
          {
            if (expressionResultType != 800)
            {
              if (expressionResultType != 900)
              {
                goto LABEL_113;
              }

              v45 = CFDateCreate(0, *v28);
LABEL_146:
              v71 = v45;
              goto LABEL_151;
            }

            goto LABEL_64;
          }

          if (expressionResultType != 1000 && expressionResultType != 1100)
          {
LABEL_113:
            v67 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v68 = _pflogging_catastrophic_mode;
              LogStream = _PFLogGetLogStream(1);
              v70 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
              if (v68)
              {
                if (v70)
                {
                  *buf = 134217984;
                  *&buf[4] = expressionResultType;
LABEL_163:
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported type for buffer allocated dictionary: %lu\n", buf, 0xCu);
                }
              }

              else if (v70)
              {
                *buf = 134217984;
                *&buf[4] = expressionResultType;
                goto LABEL_163;
              }
            }

            _NSCoreDataLog_console(1, "Unsupported type for buffer allocated dictionary: %lu", expressionResultType);
            objc_autoreleasePoolPop(v67);
            goto LABEL_119;
          }

LABEL_76:
          if (!*v28)
          {
            v47 = objc_opt_class();
            object_setClass(v28, v47);
          }

          [v28 setParentObject:self];
          if (expressionResultType > 1799)
          {
            if (expressionResultType == 1800)
            {
              v45 = [_PFRoutines retainedDecodeValue:v28 forTransformableAttribute:propertyDescription];
              goto LABEL_146;
            }

            *buf = 0;
            v63 = self->_parent_buffer;
            if (v63 && (v64 = v63->_weakRequestStore) != 0)
            {
              v65 = objc_loadWeakRetained(&v64->_object);
            }

            else
            {
              v65 = 0;
            }

            v66 = [propertyDescription decode:v28 withRegistry:objc_msgSend(objc_msgSend(v65 error:{"persistentStoreCoordinator"), "codableAdapterRegistry"), buf}];
          }

          else
          {
            if (expressionResultType != 1000)
            {
              if ([v28 length] != 16)
              {
LABEL_119:
                v71 = 0;
                goto LABEL_151;
              }

              v45 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v28, "bytes")}];
              goto LABEL_146;
            }

            if (([propertyDescription _isFileBackedFuture] & 1) == 0 && (!objc_msgSend(propertyDescription, "_storeBinaryDataExternally") || (*&resultSet->var7 & 2) != 0))
            {
              v45 = v28;
              goto LABEL_146;
            }

            v75 = self->_parent_buffer;
            if (v75 && (v76 = v75->_weakRequestStore) != 0)
            {
              v65 = objc_loadWeakRetained(&v76->_object);
            }

            else
            {
              v65 = 0;
            }

            if (*[v28 bytes] == 1)
            {
              v77 = [_PFExternalReferenceData alloc];
              bytes = [v28 bytes];
              v79 = [v28 length];
              if (v65)
              {
                v80 = (*(v65 + 50) >> 2) & 7;
              }

              else
              {
                v80 = 0;
              }

              v81 = v77;
              v82 = bytes;
              v83 = 0;
              v84 = 0;
            }

            else
            {
              if (*[v28 bytes] == 3)
              {
                v88 = [_NSDataFileBackedFuture alloc];
                v66 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v88, "initWithStoreMetadata:directory:", v28, [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(v65 isDirectory:{"fileBackedFuturesDirectory"), 1}]);
                goto LABEL_167;
              }

              bytes2 = [v28 bytes];
              v90 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
              v91 = [objc_msgSend(v65 "externalDataReferencesDirectory")];
              if (v65)
              {
                if (!atomic_load(v65 + 21))
                {
                  [v65 externalDataReferencesDirectory];
                }

                v93 = atomic_load(v65 + 22);
              }

              else
              {
                v93 = 0;
              }

              v94 = [v93 stringByAppendingPathComponent:v90];
              if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
              {
                v66 = v28;
                goto LABEL_167;
              }

              v95 = [_PFExternalReferenceData alloc];
              bytes3 = [v28 bytes];
              v79 = [v28 length];
              if (v65)
              {
                v80 = (*(v65 + 50) >> 2) & 7;
              }

              else
              {
                v80 = 0;
              }

              v81 = v95;
              v82 = bytes3;
              v83 = v91;
              v84 = v94;
            }

            v66 = [(_PFExternalReferenceData *)v81 initWithStoreBytes:v82 length:v79 externalLocation:v83 safeguardLocation:v84 protectionLevel:v80];
          }

LABEL_167:
          v71 = v66;

          goto LABEL_151;
        }

        if (expressionResultType > 1999)
        {
          if (expressionResultType == 2000)
          {
            goto LABEL_21;
          }

          if (expressionResultType != 2200)
          {
            goto LABEL_113;
          }

          goto LABEL_76;
        }

        if (expressionResultType != 1200)
        {
          if (expressionResultType != 1800)
          {
            goto LABEL_113;
          }

          goto LABEL_76;
        }

        if (v12 > 0x1F)
        {
          v74 = [(_PFResultObject *)self stringFromPtr:v28];
        }

        else
        {
          v74 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
        }

        v85 = v74;
        v86 = MEMORY[0x1E695DFF8];
LABEL_142:
        v45 = [[v86 alloc] initWithString:v85];
        goto LABEL_146;
      }

      if (expressionResultType <= 399)
      {
        if (expressionResultType == 100 || expressionResultType == 200)
        {
LABEL_64:
          v46 = [MEMORY[0x1E696AD98] numberWithInt:*v28];
          goto LABEL_122;
        }

        if (expressionResultType != 300)
        {
          goto LABEL_113;
        }

        v46 = [MEMORY[0x1E696AD98] numberWithLongLong:*v28];
      }

      else
      {
        if (expressionResultType <= 599)
        {
          if (expressionResultType == 400)
          {
            if (v12 > 0x1F)
            {
              v73 = [(_PFResultObject *)self stringFromPtr:v28];
            }

            else
            {
              v73 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
            }

            v85 = v73;
            v86 = MEMORY[0x1E696AB90];
            goto LABEL_142;
          }

          if (expressionResultType != 500)
          {
            goto LABEL_113;
          }

LABEL_104:
          v46 = [MEMORY[0x1E696AD98] numberWithDouble:*v28];
          goto LABEL_122;
        }

        if (expressionResultType == 600)
        {
          goto LABEL_104;
        }

        if (expressionResultType != 700)
        {
          goto LABEL_113;
        }

        if (v12 > 0x1F)
        {
          v46 = [(_PFResultObject *)self stringFromPtr:v28];
        }

        else
        {
          v46 = [_PFResultObject taggedStringFromPtr:v28 withLength:?];
        }
      }

LABEL_122:
      v71 = v46;
      goto LABEL_150;
    }

    if (_propertyType != 6)
    {
LABEL_40:
      v41 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v42 = _pflogging_catastrophic_mode;
        v43 = _PFLogGetLogStream(1);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
        if (v42)
        {
          if (v44)
          {
            *buf = 138412290;
            *&buf[4] = propertyDescription;
LABEL_165:
            _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Unsupported property type: %@\n", buf, 0xCu);
          }
        }

        else if (v44)
        {
          *buf = 138412290;
          *&buf[4] = propertyDescription;
          goto LABEL_165;
        }
      }

      _NSCoreDataLog_console(1, "Unsupported property type: %@", propertyDescription);
      objc_autoreleasePoolPop(v41);
LABEL_112:
      expressionResultType = 0;
      goto LABEL_113;
    }

LABEL_39:
    expressionResultType = [propertyDescription attributeType];
    goto LABEL_45;
  }

  if (_propertyType == 2)
  {
    goto LABEL_39;
  }

  if (_propertyType != 4)
  {
    goto LABEL_40;
  }

LABEL_21:
  v30 = *v28;
  v31 = *(v28 + 1);
  if (*v28)
  {
    v32 = v31 == 0;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    goto LABEL_149;
  }

  v33 = self->_parent_buffer;
  if (v33 && (v34 = v33->_weakRequestStore) != 0)
  {
    v35 = objc_loadWeakRetained(&v34->_object);
  }

  else
  {
    v35 = 0;
  }

  if (v30 < 16000)
  {
    v36 = [objc_msgSend(v35 "model")];
    if (!v36)
    {
      goto LABEL_100;
    }

    v37 = v36;
LABEL_121:
    v72 = [v35 objectIDFactoryForSQLEntity:v37];

    v46 = [[v72 alloc] initWithPK64:v31];
    goto LABEL_122;
  }

  ancillarySQLModels = [v35 ancillarySQLModels];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v49 = [ancillarySQLModels countByEnumeratingWithState:&v100 objects:buf count:16];
  if (!v49)
  {
    goto LABEL_96;
  }

  v50 = v49;
  v51 = *v101;
  do
  {
    v52 = 0;
    do
    {
      if (*v101 != v51)
      {
        objc_enumerationMutation(ancillarySQLModels);
      }

      v53 = [ancillarySQLModels objectForKey:*(*(&v100 + 1) + 8 * v52)];
      if (v53)
      {
        if (v30 <= v53[15])
        {
          goto LABEL_92;
        }

        v54 = v53[16];
      }

      else
      {
        v54 = 0;
      }

      if (v30 <= v54)
      {
        v55 = [v53 entityForID:v30];
        if (v55)
        {
          v37 = v55;
          goto LABEL_121;
        }
      }

LABEL_92:
      ++v52;
    }

    while (v50 != v52);
    v56 = [ancillarySQLModels countByEnumeratingWithState:&v100 objects:buf count:16];
    v50 = v56;
  }

  while (v56);
LABEL_96:
  v57 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *v104 = 134217984;
    v105 = v30;
    _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown ancillary entityID - %lld\n", v104, 0xCu);
  }

  v58 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
  {
    *v104 = 134217984;
    v105 = v30;
    _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, "CoreData: Unknown ancillary entityID - %lld", v104, 0xCu);
  }

LABEL_100:

  v59 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v60 = _pflogging_catastrophic_mode;
    v61 = _PFLogGetLogStream(1);
    v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
    if (v60)
    {
      if (v62)
      {
        *v104 = 0;
        goto LABEL_169;
      }
    }

    else if (v62)
    {
      *v104 = 0;
LABEL_169:
      _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error: BufferAllocations Result Object has an invalid Object ID\n", v104, 2u);
    }
  }

  _NSCoreDataLog_console(1, "BufferAllocations Result Object has an invalid Object ID");
  objc_autoreleasePoolPop(v59);
LABEL_149:
  v71 = 0;
LABEL_150:
  v87 = v71;
LABEL_151:
  objc_autoreleasePoolPop(v5);
  return v71;
}

- (__CFString)taggedStringFromPtr:(__CFString *)result withLength:(char *)__s
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  result = *__s;
  if (*__s == -1)
  {
    result = [(_PFResultObject *)v2 stringFromPtr:?];
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(*(v2->info + 24) + 40) & 2) != 0)
  {
    v3 = strlen(__s);
    if (v3 > 7)
    {
      v5 = 0;
    }

    else
    {
      v4 = v3;
      v11 = 0;
      __memmove_chk();
      v5 = (8 * v4) | (v11 << 7) | 0x8000000000000002;
      v8 = *MEMORY[0x1E69E5910] ^ v5;
      if ((~v8 & 0xC000000000000007) != 0)
      {
        v5 = v8 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v8 & 7));
      }
    }

    result = v5;
  }

  if (!result)
  {
LABEL_11:
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected tagged string result\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Unexpected tagged string result", v9, 2u);
    }

    return 0;
  }

  return result;
}

- (__CFString)stringFromPtr:(void *)ptr
{
  if (!ptr)
  {
    return 0;
  }

  v2 = a2;
  if (*a2 != -1)
  {
    if (!*a2)
    {
      v4 = objc_opt_class();
      object_setClass(v2, v4);
    }

    v2[1] = ptr;
    return v2;
  }

  v6 = +[_PFResultUniString bufferOffset];
  v7 = *(v2 + 4);
  v2[1] = ptr;
  ptrCopy = ptr;
  v9 = CFStringCreateWithBytesNoCopy(0, v2 + v6, v7, 0x8000100u, 0, +[_PFResultUniString cfDeallocator]);

  return v9;
}

- (id)objectForKey:(id)key
{
  parent_buffer = self->_parent_buffer;
  if (parent_buffer)
  {
    metadata = parent_buffer->_metadata;
  }

  else
  {
    metadata = 0;
  }

  v6 = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)metadata mapping] indexForKey:key];

  return [(_PFResultObject *)self valueAtIndex:v6];
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (self)
  {
    selfCopy = self;
    if (!state->var0)
    {
      state->var2 = self;
    }

    state->var1 = objects;
    v9 = *(self + 8);
    if (v9)
    {
      v10 = *(v9 + 40);
    }

    else
    {
      v10 = 0;
    }

    mapping = [v10 mapping];
    v12 = [mapping length];
    keys = [mapping keys];
    self = 0;
    var0 = state->var0;
    if (count && var0 < v12)
    {
      self = 0;
      do
      {
        if (*(selfCopy + 40 + 8 * var0))
        {
          objects[self++] = *(keys + 8 * var0);
        }

        ++var0;
      }

      while (var0 < v12 && self < count);
    }

    state->var0 = var0;
  }

  return self;
}

- (id)keyEnumerator
{
  v3 = [_PFResultObjectKeyEnumerator alloc];
  parent_buffer = self->_parent_buffer;
  if (parent_buffer)
  {
    metadata = parent_buffer->_metadata;
  }

  else
  {
    metadata = 0;
  }

  keys = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)metadata mapping] keys];
  v7 = self->_parent_buffer;
  if (v7)
  {
    v8 = v7->_metadata;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_PFResultObjectKeyEnumerator *)v3 initWithArray:keys forTarget:self withReferenceValues:&self[1] andRange:0, [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)v8 mapping] length]];

  return v9;
}

@end