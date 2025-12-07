void _PFFaultHandlerPreconnectRelationship(int a1, id **a2, void *a3, void *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = _PFEntityForManagedObject(a2);
  v8 = [a3 entity];
  v9 = [a3 _entitysReferenceID];
  v10 = [a3 isToMany];
  if (v7 != v8)
  {
    v9 = [v7 _offsetRelationshipIndex:v9 fromSuperEntity:v8 andIsToMany:v10];
  }

  v11 = _kvcPropertysPrimitiveSetters(v7);
  v12 = *(v11 + 8 * v9);
  v13 = *(a2 + 4);
  if ((v13 & 0x38000) == 0x8000)
  {
    v14 = a2[6];
    if (v14)
    {
      v15 = 0;
      if ((v13 & 0x2000) == 0 && *v14)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_msgSend(a3, "name"), 0}];
        v15 = v11;
      }
    }

    else
    {
      v15 = 0;
    }

    _PFFaultHandlerFulfillPartialFault(v11, a2, a2[4], 0, NSArray_EmptyArray, v15, MEMORY[0x1E695E0F0]);

    v13 = *(a2 + 4);
  }

  v16 = *(a2 + 5);
  if (v16)
  {
    v17 = a2 + v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = &v17[-((v13 >> 22) & 0x3FC)];
  v19 = v18[v9 >> 3];
  v20 = 1 << (v9 & 7);
  if ((v20 & v19) == 0)
  {
    v18[v9 >> 3] = v19 | v20;
    if (v10)
    {
      [a3 isOrdered];
    }

    else
    {
      if ((a2[2] & 0x80) != 0 || !a2[4])
      {
        return;
      }

      if (!a4)
      {
        v22 = a2;
        v23 = v9;
        v24 = 0;
        goto LABEL_19;
      }
    }

    v22 = a2;
    v23 = v9;
    v24 = a4;
LABEL_19:
    _PF_Handler_Primitive_SetProperty(v22, v23, v24, 0, v12);
    return;
  }

  if (*(_kvcPropertysPrimitiveGetters(v7) + 8 * v9))
  {
    v21 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(a2[3], v9);
  }

  v25 = v21;
  if (v10)
  {
    if (v21)
    {
      if ([v21 isFault])
      {
        [v25 willReadWithContents:a4];
      }

      return;
    }

    v26 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_42;
    }

    v30 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v32 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v30)
    {
      if (v32)
      {
LABEL_41:
        *buf = 138412546;
        v34 = [a3 name];
        v35 = 2112;
        v36 = [a2 objectID];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: During prefetching, materialized to-many relationship '%@' on object %@ was null\n", buf, 0x16u);
      }
    }

    else if (v32)
    {
      goto LABEL_41;
    }

LABEL_42:
    _NSCoreDataLog_console(1, "During prefetching, materialized to-many relationship '%@' on object %@ was null", [a3 name], objc_msgSend(a2, "objectID"));
LABEL_46:
    objc_autoreleasePoolPop(v26);
    __break(1u);
    return;
  }

  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v27 = _pflogging_catastrophic_mode;
        v28 = _PFLogGetLogStream(1);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
        if (v27)
        {
          if (v29)
          {
LABEL_44:
            *buf = 138412802;
            v34 = [a3 name];
            v35 = 2112;
            v36 = [a2 objectID];
            v37 = 2112;
            v38 = v25;
            _os_log_error_impl(&dword_18565F000, v28, OS_LOG_TYPE_ERROR, "CoreData: error: During prefetching, materialized to-one relationship '%@' on object %@ was not a managed object but instead %@\n", buf, 0x20u);
          }
        }

        else if (v29)
        {
          goto LABEL_44;
        }
      }

      _NSCoreDataLog_console(1, "During prefetching, materialized to-one relationship '%@' on object %@ was not a managed object but instead %@", [a3 name], objc_msgSend(a2, "objectID"), v25);
      goto LABEL_46;
    }
  }
}

void _PFFaultHandlerFulfillPartialFault(int a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = a2[4];
  if ((v7 & 0x38000) == 0x8000)
  {
    a2[4] = v7 | 0x18000;
    v12 = *(a2 + 5);
    v13 = _PFEntityForManagedObject(a2);
    v14 = v13;
    if (v13)
    {
      v15 = v13[14];
    }

    else
    {
      v15 = 0;
    }

    v75 = _kvcPropertysPrimitiveSetters(v13);
    v16 = *(a2 + 6);
    if (v16 && *v16)
    {
      v17 = 0;
      v18 = 1;
      if (a6)
      {
        v19 = a2[4];
        if ((v19 & 0x2000) == 0)
        {
          if (a3)
          {
            ++*(a3 + 46);
          }

          a2[4] = v19 | 0x1000;
          [a2 _willChangeValuesForKeys:a6];
          v18 = 0;
          v17 = a6;
        }
      }
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }

    v68 = v18;
    v67 = v17;
    v69 = a3;
    v20 = _PFCDSnapshotClassForEntity(v14);
    v21 = *(a2 + 3);
    if (v21)
    {
    }

    v22 = [(_CDSnapshot *)[v20 alloc] initWithObjectID:v12];
    snapshot_initialize_all_null(v22);
    *(a2 + 3) = v22;
    v23 = a2[5];
    if (v23)
    {
      v24 = a2 + v23;
    }

    else
    {
      v24 = 0;
    }

    v73 = &v24[-4 * *(a2 + 19)];
    v25 = *v15;
    v26 = v15[1] + *v15;
    if (*v15 < v26)
    {
      v27 = v26 - 1;
      v28 = v25 >> 3;
      v29 = v27 >> 3;
      v30 = 0xFFu >> (8 - (v25 & 7));
      if (v27 >> 3 == v25 >> 3)
      {
        v31 = (510 << (v27 & 7)) | v30;
        v29 = v28;
      }

      else
      {
        v32 = &v73[v28];
        *v32 &= v30;
        if (v28 + 1 < v29)
        {
          bzero(v32 + 1, (v29 - v28 - 2) + 1);
        }

        v31 = 510 << (v27 & 7);
      }

      v73[v29] &= v31;
    }

    v34 = v15[12];
    v33 = v15[13];
    if (v34 < v33 + v34)
    {
      do
      {
        _PF_CopyOnWrite_Snapshot(a2);
        if (*(v75 + 8 * v34))
        {
          _NSSetUsingKeyValueSetter();
        }

        else
        {
          snapshot_set_value_as_object(*(a2 + 3), v34, _CD_ScalarNull);
        }

        ++v34;
        --v33;
      }

      while (v33);
    }

    v74 = a2;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v35 = [a5 countByEnumeratingWithState:&v80 objects:v85 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v81;
      v38 = 1;
      v70 = a4;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v81 != v37)
          {
            objc_enumerationMutation(a5);
          }

          v40 = *(*(&v80 + 1) + 8 * i);
          v41 = [v40 _entitysReferenceID];
          if (v41 < 0)
          {
            ++v38;
          }

          else
          {
            v42 = v41;
            v43 = [v40 entity];
            if (v14 != v43)
            {
              v42 = [v14 _offsetRelationshipIndex:v42 fromSuperEntity:v43 andIsToMany:{objc_msgSend(v40, "_isToManyRelationship")}];
            }

            if (a4)
            {
              v44 = *(a4 + 8 * v38++);
            }

            else
            {
              v44 = 0;
            }

            v45 = v15[6];
            v47 = v42 >= v45;
            v46 = v42 - v45;
            v47 = !v47 || v46 >= v15[7];
            if (v47)
            {
              v48 = v15[12];
              v47 = v42 >= v48;
              v49 = v42 - v48;
              if (v47 && v49 < v15[13])
              {
                v51 = *(v75 + 8 * v42);
                _PF_CopyOnWrite_Snapshot(v74);
                if (v51)
                {
                  _NSSetUsingKeyValueSetter();
                }

                else
                {
                  snapshot_set_value_as_object(*(v74 + 3), v42, v44);
                }

                a4 = v70;
                if (!v44)
                {
                  v73[v42 >> 3] |= 1 << (v42 & 7);
                }
              }
            }

            else
            {
              v52 = *(v75 + 8 * v42);
              _PF_CopyOnWrite_Snapshot(v74);
              if (v52)
              {
                _NSSetUsingKeyValueSetter();
              }

              else
              {
                snapshot_set_value_as_object(*(v74 + 3), v42, v44);
              }

              v73[v42 >> 3] |= 1 << (v42 & 7);
              a4 = v70;
            }
          }
        }

        v36 = [a5 countByEnumeratingWithState:&v80 objects:v85 count:16];
      }

      while (v36);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v53 = [a7 countByEnumeratingWithState:&v76 objects:v84 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v77;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v77 != v55)
          {
            objc_enumerationMutation(a7);
          }

          v57 = *(*(&v76 + 1) + 8 * j);
          v58 = [v57 _entitysReferenceID];
          if ((v58 & 0x8000000000000000) == 0)
          {
            v59 = v58;
            v60 = [v57 entity];
            if (v14 != v60)
            {
              v59 = [v14 _offsetRelationshipIndex:v59 fromSuperEntity:v60 andIsToMany:{objc_msgSend(v57, "_isToManyRelationship")}];
            }

            v61 = v15[10];
            v47 = v59 >= v61;
            v62 = v59 - v61;
            if (v47 && v62 < v15[11])
            {
              if ([v57 _propertyType] == 7)
              {
                v64 = [v57 _buildDefaultValue];
              }

              else
              {
                v64 = [v57 defaultValue];
              }

              v65 = v64;
              v66 = *(v75 + 8 * v59);
              _PF_CopyOnWrite_Snapshot(v74);
              if (v66)
              {
                _NSSetUsingKeyValueSetter();
              }

              else
              {
                snapshot_set_value_as_object(*(v74 + 3), v59, v65);
              }

              v73[v59 >> 3] |= 1 << (v59 & 7);
            }
          }
        }

        v54 = [a7 countByEnumeratingWithState:&v76 objects:v84 count:16];
      }

      while (v54);
    }

    v74[4] = v74[4] & 0xFFFC7FFF | 0x28000;
    if ((v68 & 1) == 0)
    {
      [v74 _didChangeValuesForKeys:v67];
      v74[4] &= ~0x1000u;
      if (v69)
      {
        --*(v69 + 46);
      }
    }
  }
}

void *_PF_Handler_Primitive_SetProperty(id **a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_setValue_forKey_);
  }

  _PF_CopyOnWrite_Snapshot(a1);
  if (a5)
  {
    result = _NSSetUsingKeyValueSetter();
  }

  else
  {
    result = snapshot_set_value_as_object(a1[3], a2, a3);
  }

  v10 = *(a1 + 5);
  if (v10)
  {
    v11 = a1 + v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = &v11[-4 * *(a1 + 19)];
  v12[a2 >> 3] |= 1 << (a2 & 7);
  return result;
}

void *_rawSQLForToManyFaultStatement(void *a1, int a2, int a3)
{
  v6 = [a1 sqlString];
  v7 = [v6 rangeOfString:@" FROM " options:6];
  v9 = v8;
  v10 = [v6 rangeOfString:@" WHERE " options:6];
  v12 = stripEmptyStringsFromArray([objc_msgSend(v6 substringWithRange:{v7 + 1, v10 - v7 + v11 - 2), "componentsSeparatedByString:", @" "}]);
  if ([v12 count] < 4)
  {
    v13 = &stru_1EF3F1768;
  }

  else
  {
    v13 = [objc_msgSend(v12 objectAtIndex:{2), "stringByAppendingString:", @"."}];
  }

  if ([v12 count] < 6)
  {
    v15 = [MEMORY[0x1E696AD60] stringWithString:{objc_msgSend(v6, "substringFromIndex:", v7 + v9)}];
  }

  else
  {
    v14 = [v12 subarrayWithRange:{6, objc_msgSend(v12, "count") - 7}];
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], [v12 objectAtIndex:4], objc_msgSend(v12, "objectAtIndex:", 5), objc_msgSend(v12, "objectAtIndex:", 1), objc_msgSend(v12, "objectAtIndex:", 2), objc_msgSend(v14, "componentsJoinedByString:", @" "), objc_msgSend(v6, "substringFromIndex:", v10));
  }

  v16 = v15;
  v17 = [a1 entity];
  if (!v17 || (v18 = *(v17 + 152)) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    goto LABEL_13;
  }

  v19 = [v18 count];
  v20 = MEMORY[0x1E696AEC0];
  if (!v19)
  {
LABEL_13:
    v21 = objc_msgSend_stringWithFormat_(v20, v13, @"Z_PK", v27, v28);
    goto LABEL_15;
  }

  if (a3)
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Z_PK", v13, @"Z_ENT");
  }

  else
  {
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"Z_ENT", v13, @"Z_PK");
  }

LABEL_15:
  [v16 insertString:v21 atIndex:0];
  if (a2 && [objc_msgSend(a1 "bindVariables")])
  {
    v22 = [v16 componentsSeparatedByString:@" ?"];
    v16 = [MEMORY[0x1E696AD60] stringWithCapacity:{objc_msgSend(v16, "length")}];
    v23 = [v22 count];
    v24 = v23 - 1;
    if (v23 != 1)
    {
      v25 = 0;
      do
      {
        [v16 appendString:{objc_msgSend(v22, "objectAtIndex:", v25)}];
        [v16 appendFormat:@" %qi", objc_msgSend(objc_msgSend(objc_msgSend(a1, "bindVariables"), "objectAtIndex:", v25++), "int64")];
      }

      while (v24 != v25);
    }

    [v16 appendString:{objc_msgSend(v22, "objectAtIndex:", v24)}];
  }

  return v16;
}

void *stripEmptyStringsFromArray(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 length])
        {
          [v2 addObject:v7];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return v2;
}

uint64_t internalBlockToNSManagedObjectContextPerform(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v4 = *(StatusReg + 712);
  v5 = a1[3];
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = _PF_Threading_Debugging_level < 2;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      dispatch_assert_queue_V2(v6);
    }

    if (v4 != v1)
    {
      do
      {
        v8 = atomic_load((v5 + 8));
      }

      while (!_PF_actor_set_owner(v8, v5, v1));
      goto LABEL_11;
    }

    v8 = 0;
  }

  else
  {
    v8 = 0;
    if (v4 != v1)
    {
LABEL_11:
      v9 = 0;
      *(StatusReg + 712) = v1;
      goto LABEL_14;
    }
  }

  v9 = 1;
LABEL_14:
  result = (*(v2 + 16))(v2);
  if ((v9 & 1) == 0)
  {
    *(StatusReg + 712) = v4;
    result = _PF_actor_set_owner(v1, v5, v8);
    if (v5)
    {
      v11 = result;
    }

    else
    {
      v11 = 1;
    }

    if ((v11 & 1) == 0)
    {
      do
      {
        v12 = atomic_load((v5 + 8));
        result = _PF_actor_set_owner(v12, v5, v8);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void sub_1856B7190(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

unint64_t sortRawRowsForOrderedFaulting(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [objc_msgSend(*a1 valueAtIndex:{1), "longLongValue"}];
  v4 = [objc_msgSend(v2 valueAtIndex:{1), "longLongValue"}];
  return (v3 > v4) - (v3 < v4);
}

uint64_t _sharedIMPL_pvfk_core_i(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  result = _pvfk_header(a1, a3);
  if (result)
  {
    v6 = *(a1 + 24);
    Class = object_getClass(v6);
    return *&v6[*(object_getIndexedIvars(Class) + v3 + 19)];
  }

  return result;
}

void _faultBatchAtIndex(uint64_t a1, unsigned int a2, int a3)
{
  v152[1] = *MEMORY[0x1E69E9840];
  v3 = a2 / *(a1 + 48);
  v4 = v3 >> 5;
  if ((*(*(a1 + 24) + 4 * (v3 >> 5)) & (1 << ~v3)) != 0)
  {
    return;
  }

  v6 = a1;
  v82 = 1 << ~v3;
  context = objc_autoreleasePoolPush();
  v7 = *(v6 + 48);
  v8 = v7 * v3;
  v9 = v8 + v7;
  v10 = *(v6 + 12);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = [*(v6 + 16) _objectsPointer];
  if (a3)
  {
    v13 = *(v6 + 64);
    v14 = *(v6 + 56);
    v15 = *(v14 + 4 * v13);
    *(v14 + 4 * v13) = v3;
    v16 = v15 == -1 || v15 == v3;
    v17 = v16;
    v81 = v17;
    if (!v16)
    {
      _releaseStaleBatch(v6, v15);
    }

    *(v6 + 64) = (v13 + 1) % ((*(v6 + 64) >> 9) & 0x7FFu);
  }

  else
  {
    v81 = 1;
  }

  v18 = *(v6 + 40);
  v19 = [objc_msgSend(objc_msgSend(v18 "entity")];
  v20 = [v18 resultType];
  v21 = v20 == 2 && v19 != 16000;
  v93 = v19;
  if (v19 == 16000 && v20 != 2)
  {
    [v18 setResultType:2];
    v21 = 0;
  }

  v23 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
  v89 = v11;
  v90 = v12;
  v92 = v18;
  v85 = v21;
  if (([v18 includesPropertyValues] & 1) != 0 || objc_msgSend(objc_msgSend(v18, "relationshipKeyPathsForPrefetching"), "count") || (v24 = objc_msgSend(objc_msgSend(v18, "propertiesToFetch"), "count")) != 0)
  {
    v25 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:objc_msgSend(*(v6 + 16) count:{"_objectsPointer") + 8 * v8, (v11 - v8)}];
    v151 = @"batch";
    v152[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v25];
    [v18 setSubstitutionVariables:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v152, &v151, 1)}];
    v26 = [v25 count];

    v111 = 0;
    v86 = v8;
    if (v93 == 16000 && ([*(v6 + 32) _allowAncillaryEntities] & 1) == 0)
    {
      v27 = v4;
      v28 = 1;
      [*(v6 + 32) _setAllowAncillaryEntities:1];
    }

    else
    {
      v27 = v4;
      v28 = 0;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = [*(v6 + 32) executeFetchRequest:v92 error:&v111];
    v149 = @"batch";
    v150 = [MEMORY[0x1E696ABC8] expressionForConstantValue:NSArray_EmptyArray];
    v23 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
    [v92 setSubstitutionVariables:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v150, &v149, 1)}];
    v31 = v30;
    v32 = v111;
    objc_autoreleasePoolPop(v29);
    v33 = v30;
    v34 = v30;
    v35 = v111;
    if (v28)
    {
      [*(v6 + 32) _setAllowAncillaryEntities:0];
    }

    v4 = v27;
    if (v33)
    {
      v8 = v86;
      v18 = v92;
      v24 = v33;
      goto LABEL_41;
    }

    v36 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    v8 = v86;
    v18 = v92;
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_40;
    }

    v37 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v39 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v37)
    {
      v11 = v89;
      if (v39)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v11 = v89;
      if (v39)
      {
LABEL_125:
        v78 = v111;
        v79 = [v111 userInfo];
        *buf = 138412546;
        *&buf[4] = v78;
        v11 = v89;
        *&buf[12] = 2112;
        *&buf[14] = v79;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: batched fetch array received an error %@ with userInfo %@\n", buf, 0x16u);
      }
    }

LABEL_40:
    _NSCoreDataLog_console(1, "batched fetch array received an error %@ with userInfo %@", v111, [v111 userInfo]);
    objc_autoreleasePoolPop(v36);
    v24 = 0;
    v12 = v90;
    goto LABEL_41;
  }

  v26 = 0;
  v111 = 0;
LABEL_41:
  v91 = v24;
  if ([v24 count] <= v26)
  {
    goto LABEL_48;
  }

  v40 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v41 = _pflogging_catastrophic_mode;
    v42 = _PFLogGetLogStream(1);
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (v41)
    {
      v12 = v90;
      if (v43)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v12 = v90;
      if (v43)
      {
LABEL_124:
        v77 = [v91 count];
        *buf = 67109634;
        *&buf[4] = v26;
        *&buf[8] = 1024;
        *&buf[10] = v77;
        *&buf[14] = 2112;
        *&buf[16] = v91;
        _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error:  batched fetch request asked to fetch %d objects but received %d objects as %@\n", buf, 0x18u);
      }
    }
  }

  _NSCoreDataLog_console(1, " batched fetch request asked to fetch %d objects but received %d objects as %@", v26, [v91 count], v91);
  objc_autoreleasePoolPop(v40);
  v11 = v89;
LABEL_48:
  v148 = 0u;
  v147 = 0u;
  v146 = 0u;
  v145 = 0u;
  v144 = 0u;
  v143 = 0u;
  v142 = 0u;
  v141 = 0u;
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v137 = 0u;
  v136 = 0u;
  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v126 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v119 = 0u;
  memset(buf, 0, sizeof(buf));
  v44 = _PFStackAllocatorCreate(buf, 1024);
  memset(&keyCallBacks, 0, 24);
  *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
  keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
  v45 = v93 == 16000 || v21;
  v96 = @"self";
  if (v45 == 1)
  {
    v46 = objc_msgSend_valueForKey_([v18 propertiesToFetch]);
    v47 = @"self";
    if (![v46 containsObject:@"self"])
    {
      v47 = @"objectID";
    }

    v96 = v47;
  }

  v48 = v91;
  v49 = [v91 count];
  v84 = v4;
  if (!v49)
  {
    goto LABEL_74;
  }

  v50 = CFDictionaryCreateMutable(v44, [v91 count], &keyCallBacks, 0);
  if (v45)
  {
    v108 = 0uLL;
    v109 = 0uLL;
    v106 = 0uLL;
    v107 = 0uLL;
    v51 = [v91 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v107;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v107 != v53)
          {
            objc_enumerationMutation(v91);
          }

          CFDictionaryAddValue(v50, [*(*(&v106 + 1) + 8 * i) objectForKey:v96], *(*(&v106 + 1) + 8 * i));
        }

        v52 = [v91 countByEnumeratingWithState:&v106 objects:v117 count:16];
      }

      while (v52);
LABEL_72:
      v11 = v89;
      v12 = v90;
    }
  }

  else
  {
    v104 = 0uLL;
    v105 = 0uLL;
    v102 = 0uLL;
    v103 = 0uLL;
    v55 = [v91 countByEnumeratingWithState:&v102 objects:v116 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v103;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v103 != v57)
          {
            objc_enumerationMutation(v91);
          }

          CFDictionaryAddValue(v50, [*(*(&v102 + 1) + 8 * j) objectID], *(*(&v102 + 1) + 8 * j));
        }

        v56 = [v91 countByEnumeratingWithState:&v102 objects:v116 count:16];
      }

      while (v56);
      goto LABEL_72;
    }
  }

  v49 = v50;
  v4 = v84;
LABEL_74:
  if (v11 > v8)
  {
    v59 = 0;
    theDict = v49;
    while (1)
    {
      v95 = v59;
      v60 = *(v12 + 8 * v8);
      if (v21)
      {
        v61 = *(v12 + 8 * v8);
        if (!v49 || (Value = CFDictionaryGetValue(theDict, *(v12 + 8 * v8))) == 0)
        {
          if ([v48 count] <= v95)
          {
            v114[0] = v96;
            v114[1] = @"isDeleted";
            v115[0] = v60;
            v115[1] = MEMORY[0x1E695E118];
            Value = [MEMORY[0x1E695DF20] dictionaryWithObjects:v115 forKeys:v114 count:2];
          }

          else
          {
            Value = [v48 objectAtIndexedSubscript:?];
          }

          if (!Value)
          {
            goto LABEL_106;
          }
        }

        goto LABEL_105;
      }

      if (v93 == 16000)
      {
        break;
      }

      if (!v49 || (Value = CFDictionaryGetValue(v49, *(v12 + 8 * v8))) == 0)
      {
        Value = [*(v6 + v23[37]) objectWithID:v60];
      }

      v61 = v60;
      Value[4] |= 0x4000u;
LABEL_105:
      *(v12 + 8 * v8) = Value;
LABEL_106:

      ++v8;
      v49 = theDict;
      v59 = v95 + 1;
      if (v8 >= v11)
      {
        goto LABEL_115;
      }
    }

    if (!v49 || (v63 = CFDictionaryGetValue(v49, *(v12 + 8 * v8)), (v64 = v63) == 0))
    {
      v63 = [*(v6 + v23[37]) objectWithID:v60];
      v64 = v63;
      if (v63)
      {
        v88 = v60;
        v97 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(objc_msgSend(v92, "propertiesToFetch"), "count")}];
        v63 = [objc_msgSend(objc_msgSend(v64 "entity")];
        if (v63)
        {
          v113[0] = @"AUTHORTS";
          v113[1] = @"BUNDLEIDTS";
          v113[2] = @"CONTEXTNAMETS";
          v113[3] = @"PROCESSIDTS";
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:4];
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v66 = [v92 propertiesToFetch];
          v63 = [v66 countByEnumeratingWithState:&v98 objects:v112 count:16];
          if (v63)
          {
            v67 = v63;
            v87 = v8;
            v80 = v6;
            v68 = *v99;
            while (1)
            {
              v69 = 0;
              do
              {
                if (*v99 != v68)
                {
                  objc_enumerationMutation(v66);
                }

                v70 = *(*(&v98 + 1) + 8 * v69);
                v71 = objc_autoreleasePoolPush();
                v72 = [v65 containsObject:{objc_msgSend(v70, "name")}];
                [v70 name];
                v73 = objc_msgSend_valueForKey_(v64);
                v74 = v73;
                if (!v72)
                {
                  if (!v73)
                  {
                    goto LABEL_96;
                  }

LABEL_95:
                  [v97 setValue:v74 forKey:{objc_msgSend(v70, "name")}];
                  goto LABEL_96;
                }

                v74 = objc_msgSend_valueForKey_(v73);
                if (v74)
                {
                  goto LABEL_95;
                }

LABEL_96:
                objc_autoreleasePoolPop(v71);
                v69 = v69 + 1;
              }

              while (v67 != v69);
              v63 = [v66 countByEnumeratingWithState:&v98 objects:v112 count:16];
              v67 = v63;
              if (!v63)
              {
                v64 = v97;
                v6 = v80;
                v4 = v84;
                v8 = v87;
                v11 = v89;
                v12 = v90;
                v23 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
                goto LABEL_109;
              }
            }
          }

          v64 = v97;
          v12 = v90;
LABEL_109:
          v21 = v85;
        }

        v60 = v88;
      }
    }

    v61 = v60;
    v75 = ancillaryModelObjectBlock_block_invoke(v63, v92, *(v6 + v23[37]), v64, v60);
    v48 = v91;
    if (v75)
    {
      v76 = v75;
      *(v12 + 8 * v8) = v75;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v6 transaction])
        {
          -[_NSPersistentHistoryChange _setTransaction:](v76, "_setTransaction:", [v6 transaction]);
        }
      }
    }

    goto LABEL_106;
  }

LABEL_115:
  if (*&buf[24])
  {
    if (v49)
    {
      CFRelease(v49);
    }
  }

  else
  {
    *&buf[8] = *buf;
  }

  *(*(v6 + 24) + 4 * v4) |= v82;
  if (((v81 | _MergedGlobals_41) & 1) == 0)
  {
    [(NSManagedObjectContext *)*(v6 + v23[37]) _processReferenceQueue:?];
  }

  objc_autoreleasePoolPop(context);
}

void sub_1856B85F8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856B85D4);
  }

  JUMPOUT(0x1856B85A0);
}

uint64_t _kvcPropertysPublicRelationshipMutators(unint64_t *a1)
{
  result = *(a1[19] + 40);
  if (!result)
  {
    v3 = a1[13];
    v4 = [v3 keys];
    v5 = [v3 length];
    v6 = PF_CALLOC_OBJECT_ARRAY(v5);
    v8 = _PFFastEntityClass(a1, v7);
    Superclass = class_getSuperclass(v8);
    v10 = a1[14];
    v11 = objc_opt_class();
    if (v5 && Superclass != v11)
    {
      v12 = 0;
      while (1)
      {
        v13 = v10[14];
        if (v13 <= v12 && v12 - v13 < v10[15])
        {
          break;
        }

        v15 = v10[22];
        if (v15 <= v12 && v12 - v15 < v10[23])
        {
          break;
        }

        v17 = v10[16];
        v18 = v17 > v12 || v12 - v17 >= v10[17];
        if (!v18 || (v19 = v10[24], v19 <= v12) && v12 - v19 < v10[25])
        {
          v20 = _NSFaultingMutableOrderedSetMutationMethods;
          goto LABEL_24;
        }

LABEL_26:
        if (v5 == ++v12)
        {
          goto LABEL_27;
        }
      }

      v20 = _NSFaultingMutableSetMutationMethods;
LABEL_24:
      v21 = [(__objc2_class *)v20 _createMutationMethodsForClass:Superclass forKey:*(v4 + 8 * v12)];
      if (v21)
      {
        v6[v12] = v21;
      }

      goto LABEL_26;
    }

LABEL_27:
    v22 = 0;
    atomic_compare_exchange_strong((a1[19] + 40), &v22, v6);
    if (v22)
    {
      if (v5)
      {
        v23 = v6;
        do
        {
          v24 = *v23++;

          --v5;
        }

        while (v5);
      }

      PF_FREE_OBJECT_ARRAY(v6);
    }

    return *(a1[19] + 40);
  }

  return result;
}

void _PF_ManagedObject_WillChangeValueForKeywithSetMutation(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = a1[4];
  if ((v12 & 0x40) != 0)
  {
    if (a6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      _PF_Handler_WillAccess_Property(a1, sel_willAccessValueForKey_, a6);
    }
  }

  else
  {
    [a1 willAccessValueForKey:a3];
  }

  if ((*(a1 + 17) & 0x80) != 0)
  {
    [_insertion_fault_handler fulfillFault:a1 withContext:*(a1 + 4) forIndex:a6];
    if ((v12 & 0x1000) != 0)
    {
LABEL_6:
      if ((v12 & 0x2000) != 0)
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else if ((v12 & 0x1000) != 0)
  {
    goto LABEL_6;
  }

  if (a6 != 0x7FFFFFFFFFFFFFFFLL || (v12 & 0x400000) == 0)
  {
    _PFFastMOCObjectWillChange(*(a1 + 4), a1);
  }

  a1[4] |= 0x800u;
  if ((v12 & 0x2000) == 0)
  {
LABEL_7:
    v13 = off_1ED4BE9C8;

    v13(a1, a2, a3, a4, a5);
  }
}

_DWORD *_PF_ManagedObject_DidChangeValueForKeywithSetMutation(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = result[4];
  if ((v5 & 0x2000) != 0)
  {
    if ((v5 & 0x1000) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4[4] &= ~0x800u;
    if ((v5 & 0x40) != 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = _NSObjectDidChangeForKeywithSetMutationImp(result, a2, a3);
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 0x40) != 0)
  {
    return result;
  }

LABEL_7:

  return [v4 didAccessValueForKey:a3];
}

unsigned int *___sharedIMPL_setvfk_core_c_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithChar:*(a1 + 48)];

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);
    v4 = *(a1 + 48);
    Class = object_getClass(v3);
    result = object_getIndexedIvars(Class);
    *(v3 + (v2 >> 3) + 28) &= ~(1 << (v2 & 7));
    *(v3 + result[v2 + 19]) = v4;
  }

  return result;
}

void *_sharedIMPL_setvfk_core_i(void *a1, uint64_t a2, int a3, unint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___sharedIMPL_setvfk_core_i_block_invoke;
  v5[3] = &unk_1E6EC22A0;
  v5[4] = a1;
  v5[5] = a4;
  v6 = a3;
  return _sharedIMPL_setvfk_core_scalar(a1, a4, v5);
}

unsigned int *___sharedIMPL_setvfk_core_i_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);
    v4 = *(a1 + 48);
    Class = object_getClass(v3);
    result = object_getIndexedIvars(Class);
    v3[(v2 >> 3) + 28] &= ~(1 << (v2 & 7));
    *&v3[result[v2 + 19]] = v4;
  }

  return result;
}

_DWORD *_sharedIMPL_addSet_core(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [*(_PFEntityForManagedObject(a1)[12] + 24 + 8 * a4) name];
  v8 = a1[4];
  if ((v8 & 0x200000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeywithSetMutation(a1, sel_willChangeValueForKey_withSetMutation_usingObjects_, v7, 1, a3, a4);
  }

  else
  {
    [a1 willChangeValueForKey:v7 withSetMutation:1 usingObjects:a3];
  }

  _sharedIMPL_pvfk_core(a1, v9, a4);
  [v10 unionSet:a3];
  if ((v8 & 0x200000) != 0)
  {

    return _PF_ManagedObject_DidChangeValueForKeywithSetMutation(a1, sel_didChangeValueForKey_withSetMutation_usingObjects_, v7);
  }

  else
  {

    return [a1 didChangeValueForKey:v7 withSetMutation:1 usingObjects:a3];
  }
}

void *_sharedIMPL_setvfk_core_c(void *a1, uint64_t a2, char a3, unint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___sharedIMPL_setvfk_core_c_block_invoke;
  v5[3] = &unk_1E6EC2250;
  v5[4] = a1;
  v5[5] = a4;
  v6 = a3;
  return _sharedIMPL_setvfk_core_scalar(a1, a4, v5);
}

uint64_t _resolveValidationMethods(unint64_t *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = a1[13];
  v3 = [v2 keys];
  v4 = [v2 length];
  v18[0] = PF_CALLOC_OBJECT_ARRAY(v4);
  v6 = _PFFastEntityClass(a1, v5);
  Superclass = class_getSuperclass(v6);
  if (v4)
  {
    v8 = Superclass;
    v9 = v18[0];
    do
    {
      v10 = *v3;
      v11 = [*v3 length];
      v12 = MEMORY[0x1EEE9AC00](v11);
      v14 = v18 - v13;
      CFStringGetCString(v10, v18 - v13, v12 + 1, 0x8000100u);
      if (v11)
      {
        *v14 = __toupper(*v14);
      }

      *v9++ = _PFKeyValueMethodForPattern(v8, "validate%s:error:", v14);
      ++v3;
      --v4;
    }

    while (v4);
  }

  v15 = 0;
  v16 = v18[0];
  atomic_compare_exchange_strong((a1[19] + 32), &v15, v18[0]);
  if (v15)
  {
    PF_FREE_OBJECT_ARRAY(v16);
  }

  return *(a1[19] + 32);
}

Method _PFKeyValueMethodForPattern(void *a1, char *__s, const char *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  strlen(__s);
  v6 = strlen(a3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  snprintf(v12 - v7, v9 + 1, __s, a3, a3);
  if (([a1 _classShouldAlwaysRegisterSelectorNamed:v8] & 1) != 0 || BYTE2(dword_1ED4BEEC8) != 1)
  {
    v10 = sel_registerName(v8);
  }

  else
  {
    v10 = sel_lookUpByName();
  }

  return class_getInstanceMethod(a1, v10);
}

void snapshot_set_null(char *a1, unsigned int a2)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] |= 1 << (a2 & 7);
  v6 = *(IndexedIvars + a2 + 19);
  v7 = *(IndexedIvars[7] + a2);
  if (v7 > 3)
  {
    if (v7 == 4 || v7 == 5)
    {
      *&a1[v6] = 0;
      return;
    }

    if (v7 == 6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    switch(v7)
    {
      case 1u:
        a1[v6] = 0;
        return;
      case 2u:
        *&a1[v6] = 0;
        return;
      case 3u:
LABEL_5:
        *&a1[v6] = 0;
        return;
    }
  }

  v8 = *&a1[v6];
  *&a1[v6] = 0;
  if (v8)
  {
  }
}

id static NSManagedObjectContext.willSaveObjectsNotification.getter(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_1856B97A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _sharedIMPL_pvfk_core_s(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (_pvfk_header(a1, a3))
  {
    v5 = *(a1 + 24);
    Class = object_getClass(v5);
    return *&v5[*(object_getIndexedIvars(Class) + v3 + 19)];
  }

  else
  {
    return 0;
  }
}

void sub_1856B9A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSManagedObjectContext.fetch<A>(_:)(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v3 = [v2 executeRequest:a1 error:v11];
  v4 = v11[0];
  if (!v3)
  {
    v10 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v10;
  }

  v5 = v3;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v4;
  result = [v6 finalResult];
  if (result)
  {
    v9 = result;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1856BB22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initCoreSpotlightCSSearchableIndex()
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_33);
  }

  result = objc_getClass("CSSearchableIndex");
  qword_1ED4BEBA8 = result;
  getCoreSpotlightCSSearchableIndexClass = CoreSpotlightCSSearchableIndexFunction;
  return result;
}

void __LoadCoreSpotlight_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  LoadCoreSpotlight_frameworkLibrary = dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 2);
  if (!LoadCoreSpotlight_frameworkLibrary && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v0 = 136315138;
    v1 = dlerror();
    _os_log_fault_impl(&dword_18565F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "### Failed to Soft Link: /System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight\n%s", &v0, 0xCu);
  }
}

void sub_1856BB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initCoreSpotlightCSPrivateSearchableIndex()
{
  if (_MergedGlobals_89 != -1)
  {
    dispatch_once(&_MergedGlobals_89, &__block_literal_global_33);
  }

  result = objc_getClass("CSPrivateSearchableIndex");
  qword_1ED4BEBB0 = result;
  getCoreSpotlightCSPrivateSearchableIndexClass = CoreSpotlightCSPrivateSearchableIndexFunction;
  return result;
}

void sub_1856BBE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sortRawRowsForPrefetching(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a1 + 8);
  v4 = *(*a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return -1;
  }

  if (!*(a3 + 1))
  {
    return 0;
  }

  v6 = *(a3 + 2);
  v7 = *(*a1 + 8 * v6);
  v8 = *(*a2 + 8 * v6);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 >= v8)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

IMP generateAccessor(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = block;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v4 = &__block_descriptor_48_e8__16__0_8l;
    v5 = __generateAccessor_block_invoke;
  }

  else
  {
    v3 = v7;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v4 = &__block_descriptor_48_e11__24__0_8_16l;
    v5 = __generateAccessor_block_invoke_2;
  }

  v3[2] = v5;
  v3[3] = v4;
  v3[4] = a1;
  v3[5] = a2;
  return imp_implementationWithBlock(v3);
}

id _newObjectIDSetsForRequest(void *a1, void *a2, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = a1[3];
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  v7 = [a1 fetchStatement];
  v72 = a3;
  v62 = a1;
  v65 = [v7 entity];
  if (a1)
  {
    v61 = a1[14];
  }

  else
  {
    v61 = 0;
  }

  v8 = [a2 sortedArrayUsingFunction:compareObjectIDsByPKs context:0];
  v9 = _rawSQLForToManyFaultStatement(v7, 1, 1);
  v10 = [MEMORY[0x1E696AD60] string];
  v11 = [v9 rangeOfString:@" FROM " options:6];
  v12 = [v9 rangeOfString:@" WHERE " options:6];
  v70 = v13;
  v14 = stripEmptyStringsFromArray([objc_msgSend(v9 substringToIndex:{v11), "componentsSeparatedByString:", @" "}]);
  v15 = stripEmptyStringsFromArray([objc_msgSend(v9 substringFromIndex:{v12), "componentsSeparatedByString:", @" "}]);
  v16 = objc_msgSend(objc_msgSend(v15, "objectAtIndex:", 1), "stringByReplacingOccurrencesOfString:withString:", @"("), &stru_1EF3F1768;
  v17 = [v14 count];
  [v10 appendString:{objc_msgSend(v14, "objectAtIndex:", 0)}];
  [v10 appendFormat:@" %@, %@", objc_msgSend(objc_msgSend(v14, "objectAtIndex:", 1), "stringByReplacingOccurrencesOfString:withString:", @", ", &stru_1EF3F1768), v16];
  if (v17 >= 3)
  {
    [v10 appendFormat:@", %@", objc_msgSend(v14, "objectAtIndex:", 2)];
  }

  v18 = v72;
  if (v72)
  {
    [v10 appendFormat:@", %@.%@", objc_msgSend(objc_msgSend(v16, "componentsSeparatedByString:", @".", "objectAtIndex:", 0), v72];
  }

  [v10 appendString:{objc_msgSend(v9, "substringWithRange:", v11, &v70[v12 - v11])}];
  objc_msgSend(v10, "appendFormat:", @"%@ IN("), v16;
  v19 = [v8 count];
  v20 = v19 - 1;
  if (v19 != 1)
  {
    v21 = 0;
    do
    {
      [v10 appendFormat:@"%qu, ", objc_msgSend(objc_msgSend(v8, "objectAtIndex:", v21++), "_referenceData64")];
    }

    while (v20 != v21);
  }

  [v10 appendFormat:@"%qu "], objc_msgSend(objc_msgSend(v8, "objectAtIndex:", v20), "_referenceData64"));
  v22 = [v15 count];
  if (v22 >= 5)
  {
    v23 = v22;
    [v10 appendString:@"AND "];
    if ([objc_msgSend(v15 objectAtIndex:{v23 - 1), "hasSuffix:", @""}]))
    {
      objc_msgSend(v10, "appendString:", @"(");
    }

    if (v23 != 5)
    {
      for (i = 5; i != v23; ++i)
      {
        [v10 appendString:{objc_msgSend(v15, "objectAtIndex:", i)}];
        [v10 appendString:@" "];
      }
    }
  }

  v25 = [(NSSQLiteConnection *)v71 copyRawIntegerRowsForSQL:v10];
  v26 = v65;
  [(NSSQLiteConnection *)v71 endFetchAndRecycleStatement:?];
  if (v65)
  {
    v27 = *(v65 + 152);
    v28 = 2;
    if (v27)
    {
      v29 = [v27 count];
      v30 = v29 != 0;
      if (v29)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v28 = 2;
  }

  v73 = v30;
  v74 = v72 != 0;
  v75 = v28;
  if (v25)
  {
    Count = CFArrayGetCount(v25);
    if (Count < 2)
    {
      v67 = NSArray_EmptyArray;
LABEL_66:
      CFRelease(v25);
      return v67;
    }

    v66 = v30;
    v58[1] = v58;
    v32 = MEMORY[0x1EEE9AC00](Count);
    v35 = v58 - v33;
    v59 = v32;
    v60 = v25;
    v69 = v34;
    if (v32 >= 0x202)
    {
      v36 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v58 - v33, 8 * v34);
      v36 = v35;
    }

    v37 = v18 != 0;
    v77.location = 1;
    v77.length = v69;
    v68 = v36;
    CFArrayGetValues(v60, v77, v36);
    CFMergeSortArray();
    v38 = objc_alloc(MEMORY[0x1E695DF70]);
    v39 = [v8 count];
    v40 = 2;
    if (v18)
    {
      v40 = 3;
    }

    v67 = [v38 initWithCapacity:v39 * v40];
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (v37)
    {
      v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v70 = 0;
    }

    if (v62)
    {
      v42 = [v62[1] objectIDFactoryForSQLEntity:v26];
      if (v26)
      {
LABEL_38:
        v64 = *(v26 + 184);
        goto LABEL_39;
      }
    }

    else
    {
      v42 = 0;
      if (v26)
      {
        goto LABEL_38;
      }
    }

    v64 = 0;
LABEL_39:
    v65 = 0;
    v43 = 0;
    v44 = 0;
    v71 = 0;
    v45 = -1;
    v63 = 8 * v28;
    do
    {
      v46 = v68[v44];
      if (v66)
      {
        v47 = v46[2];
        if (v64 != v47)
        {
          v48 = v62 == 0;
          v49 = _sqlEntityForEntityID(v61, v46[2]);
          if (v48)
          {
            v42 = 0;
          }

          else
          {
            v42 = [v62[1] objectIDFactoryForSQLEntity:v49];
          }

          v64 = v47;
        }
      }

      v50 = [[v42 alloc] initWithPK64:*v46];
      v51 = v46[1];
      v52 = v45;
      if (v51 != v71)
      {
        v52 = v45;
        do
        {
          v43 = [v8 objectAtIndex:++v52];
        }

        while (v51 != [v43 _referenceData64]);
        v71 = v51;
      }

      if (v45 != v52)
      {
        if ([v41 count])
        {
          v53 = v72 != 0;
          [v67 addObject:v65];
          [v67 addObject:v41];
          if (v53)
          {
            [v67 addObject:v70];

            v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        v65 = v43;
      }

      v54 = v72 != 0;
      [v41 addObject:v50];
      if (v54)
      {
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:LODWORD(v46[v63 / 8])];
        [v70 addObject:v55];
      }

      ++v44;
      v45 = v52;
    }

    while (v44 != v69);
    if ([v41 count])
    {
      v56 = v72 != 0;
      [v67 addObject:v65];
      [v67 addObject:v41];

      if (v56)
      {
        [v67 addObject:v70];
      }
    }

    if (v59 >= 0x202)
    {
      NSZoneFree(0, v68);
    }

    v25 = v60;
    goto LABEL_66;
  }

  return 0;
}

void sub_1856BCD0C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1856BCD60);
}

void sub_1856BCD14(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1856BC8ACLL);
    }

    objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856BCD4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856BCD24);
  }

  _Unwind_Resume(a1);
}

uint64_t compareObjectIDsByPKs(void *a1, void *a2)
{
  v3 = [a1 _referenceData64];
  v4 = [a2 _referenceData64];
  v5 = -1;
  if (v3 >= v4)
  {
    v5 = 1;
  }

  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t isTypeEncodingObject(char *a1)
{
  v1 = *a1;
  if (v1 == 64)
  {
    return 1;
  }

  if (v1 != 94)
  {
    return 0;
  }

  v2 = a1[1];
  if (v2 == 35)
  {
    return 1;
  }

  if (v2 != 123)
  {
    return 0;
  }

  result = strchr(a1, 61);
  if (result)
  {
    return *(result + 1) == 35;
  }

  return result;
}

CFComparisonResult _NSCoreDataDoStringCompare(int a1, const UniChar *a2, int a3, const UniChar *a4, CFStringCompareFlags a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = _PFStackAllocatorCreate(&v17, 1024);
  v11 = a1 >> 1;
  v12 = *MEMORY[0x1E695E498];
  v13 = CFStringCreateWithCharactersNoCopy(v10, a2, v11, *MEMORY[0x1E695E498]);
  v14 = CFStringCreateWithCharactersNoCopy(v10, a4, a3 >> 1, v12);
  v50.location = 0;
  v50.length = v11;
  v15 = CFStringCompareWithOptions(v13, v14, v50, a5);
  if (*(&v18 + 1))
  {
    if (v13)
    {
      CFRelease(v13);
    }

    if (v14)
    {
      CFRelease(v14);
    }
  }

  return v15;
}

id static NSCoreDataCoreSpotlightDelegate.indexDidUpdateNotification.getter()
{
  if (one-time initialization token for indexDidUpdateNotification != -1)
  {
    swift_once();
  }

  v1 = static NSCoreDataCoreSpotlightDelegate.indexDidUpdateNotification;

  return v1;
}

uint64_t one-time initialization function for indexDidUpdateNotification()
{
  result = MEMORY[0x1865F8600](0xD000000000000039, 0x800000018592F0A0);
  static NSCoreDataCoreSpotlightDelegate.indexDidUpdateNotification = result;
  return result;
}

BOOL isScalarTypeForKVCSetter(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_opt_isKindOfClass())
  {
    v2 = [a1 ivar];
    if (v2)
    {
      v3 = *ivar_getTypeEncoding(v2);
      return v3 == 58 || (v3 - 65) < 0x35;
    }
  }

  else if (objc_opt_isKindOfClass())
  {
    v4 = [a1 method];
    if (v4)
    {
      method_getArgumentType(v4, 2u, dst, 0x20uLL);
      v3 = dst[0];
      return v3 == 58 || (v3 - 65) < 0x35;
    }
  }

  v3 = 0;
  return v3 == 58 || (v3 - 65) < 0x35;
}

void *_sharedIMPL_setvfk_core_s(void *a1, uint64_t a2, __int16 a3, unint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___sharedIMPL_setvfk_core_s_block_invoke;
  v5[3] = &unk_1E6EC2278;
  v5[4] = a1;
  v5[5] = a4;
  v6 = a3;
  return _sharedIMPL_setvfk_core_scalar(a1, a4, v5);
}

unsigned int *___sharedIMPL_setvfk_core_s_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithShort:*(a1 + 48)];

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 24);
    v4 = *(a1 + 48);
    Class = object_getClass(v3);
    result = object_getIndexedIvars(Class);
    v3[(v2 >> 3) + 28] &= ~(1 << (v2 & 7));
    *&v3[result[v2 + 19]] = v4;
  }

  return result;
}

uint64_t one-time initialization function for didSaveObjectsNotification()
{
  result = MEMORY[0x1865F8600](0xD00000000000002BLL, 0x800000018592EFB0);
  static NSManagedObjectContext.didSaveObjectsNotification = result;
  return result;
}

uint64_t NSManagedObjectContext.perform<A>(schedule:_:)()
{
  if (*(v0 + 376) == 1)
  {
    v1 = 0;
    v2 = 0;
    v3 = *(v0[31] - 8);
    goto LABEL_8;
  }

  v36 = v0[32];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = swift_allocBox();
  v3 = *(v4 - 8);
  v33 = v3;
  v35 = v8;
  (*(v3 + 56))(v8, 1, 1, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v34 = (v9 + 16);
  v2 = swift_allocObject();
  v2[2] = v4;
  v2[3] = v6;
  v2[4] = v5;
  v2[5] = v7;
  v2[6] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in NSManagedObjectContext.perform<A>(schedule:_:);
  *(v10 + 24) = v2;
  v0[20] = thunk for @callee_guaranteed @Sendable () -> ()partial apply;
  v0[21] = v10;
  v0[16] = MEMORY[0x1E69E9820];
  v0[17] = 1107296256;
  v0[18] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[19] = &block_descriptor_23;
  v11 = _Block_copy(v0 + 16);

  v12 = [v36 _performImmediate_];
  _Block_release(v11);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {

    v1 = partial apply for closure #1 in NSManagedObjectContext.perform<A>(schedule:_:);
LABEL_8:
    v0[41] = v1;
    v0[42] = v2;
    v26 = v0[38];
    v0[43] = v3;
    (*(v3 + 56))(v26, 1, 1);
    v13 = NSManagedObjectContext.perform<A>(schedule:_:);
    v14 = 0;
    v15 = 0;

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v16 = v0[40];
  v17 = v0[33];
  v18 = v0[34];
  swift_beginAccess();
  v19 = *(v18 + 16);
  v19(v16, v35, v17);
  swift_beginAccess();
  v20 = *v34;
  v21 = v0[40];
  if (!*v34)
  {
    v27 = v0[39];
    v28 = v0[31];
    v19(v27, v0[40], v0[33]);
    v13 = (*(v33 + 48))(v27, 1, v28);
    if (v13 != 1)
    {
      v29 = v0[39];
      v30 = v0[31];
      v31 = v0[28];
      (*(v0[34] + 8))(v0[40], v0[33]);
      (*(v33 + 32))(v31, v29, v30);

      v25 = v0[1];
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  v22 = v0[33];
  v23 = v0[34];
  swift_willThrow();
  v24 = v20;
  (*(v23 + 8))(v21, v22);

  v25 = v0[1];
LABEL_13:

  return v25();
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[36];
  v6 = v0[32];
  v7 = v1[30];
  v8 = v1[31];
  v9 = v1[29];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = NSManagedObjectContext.perform<A>(schedule:_:);
  v10 = swift_continuation_init();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v10;
  v1[14] = partial apply for closure #1 in closure #1 in NSManagedObjectContext._rethrowsHelper_perform_enqueued<A>(_:rescue:);
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v1[13] = &block_descriptor_9_0;
  v12 = _Block_copy(v4);

  [v6 performBlock_];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  v16 = *(v6 + 8);
  v17 = v0[31];
  v16(v4, v7);
  v1(v4, v3, v7);
  (*(v6 + 16))(v5, v4, v7);
  result = (*(v2 + 48))(v5, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[42];
    v10 = v0[43];
    v11 = v0[41];
    v12 = v0[35];
    v13 = v0[31];
    v14 = v0[28];
    v16(v0[38], v0[33]);
    (*(v10 + 32))(v14, v12, v13);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v11, v9);

    v15 = v0[1];

    return v15();
  }

  return result;
}

uint64_t sub_1856BDE2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1856BDE64()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void _NSCoreDataStringCompareWithFlags(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 != 5)
  {

    sqlite3_result_error(a1, "NSCoreDataStringCompare: incorrect number of arguments", 1);
    return;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = sqlite3_value_text(*a3);
  v6 = sqlite3_value_text(a3[1]);
  if (!v5 || (v7 = v6) == 0)
  {

    sqlite3_result_int(a1, 0);
    return;
  }

  v8 = _PFStackAllocatorCreate(&v23, 1024);
  v9 = sqlite3_value_int(a3[2]);
  v10 = sqlite3_value_int(a3[3]);
  v11 = sqlite3_value_int(a3[4]);
  v12 = strlen(v5);
  v13 = *MEMORY[0x1E695E498];
  v14 = CFStringCreateWithBytesNoCopy(v8, v5, v12, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v15 = strlen(v7);
  v16 = CFStringCreateWithBytesNoCopy(v8, v7, v15, 0x8000100u, 0, v13);
  if (v11)
  {
    v17 = [MEMORY[0x1E696AE18] retainedLocale];
  }

  else
  {
    v17 = 0;
  }

  v57.length = CFStringGetLength(v14);
  v57.location = 0;
  v18 = CFStringCompareWithOptionsAndLocale(v14, v16, v57, v10, v17);
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v21 = v18 >= 2;
      goto LABEL_26;
    }

    if (v9 != 5)
    {
      if (v9 == 6)
      {
        v20 = v18 != kCFCompareEqualTo;
LABEL_33:
        v22 = 1;
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    v19 = v18 == kCFCompareGreaterThan;
LABEL_30:
    v20 = v19;
    goto LABEL_33;
  }

  switch(v9)
  {
    case 1:
      v19 = v18 == kCFCompareLessThan;
      goto LABEL_30;
    case 2:
      v21 = (v18 + 1) >= 2;
LABEL_26:
      v20 = !v21;
      goto LABEL_33;
    case 3:
      v19 = v18 == kCFCompareEqualTo;
      goto LABEL_30;
  }

LABEL_24:
  sqlite3_result_error(a1, "NSCoreDataStringCompare: unknown operation type", 1);
  v22 = 0;
  v20 = 0;
LABEL_34:
  if (v17)
  {
    CFRelease(v17);
  }

  if (!*(&v24 + 1))
  {
    *(&v23 + 1) = v23;
    if (!v22)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v22)
  {
LABEL_42:
    sqlite3_result_int(a1, v20);
  }
}

uint64_t sub_1856BE36C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t NSManagedObjectContext.perform<A>(schedule:_:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 248) = a5;
  *(v6 + 256) = v5;
  *(v6 + 232) = a3;
  *(v6 + 240) = a4;
  *(v6 + 224) = a1;
  v8 = type metadata accessor for Optional();
  *(v6 + 264) = v8;
  *(v6 + 272) = *(v8 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 376) = *a2;

  return MEMORY[0x1EEE6DFA0](NSManagedObjectContext.perform<A>(schedule:_:), 0, 0);
}

uint64_t _sharedIMPL_vfk_core(id **a1, uint64_t a2, unint64_t a3)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_valueForKey_);
  }

  v5 = *(a1 + 4);
  v6 = _PFEntityForManagedObject(a1);
  v7 = *(*(*(v6[12] + 16) + 40) + 8 * a3);
  v8 = *(_kvcPropertysPrimitiveGetters(v6) + 8 * a3);
  if ((v5 & 0x40) != 0)
  {
    v9 = *(a1 + 4);
    if ((v9 & 0x4000) != 0)
    {
      v22 = a1;
      v9 = a1[2] & 0xFFFFBFFF;
      *(a1 + 4) = v9;
    }
  }

  else
  {
    [a1 willAccessValueForKey:v7];
    v9 = *(a1 + 4);
  }

  v10 = *(a1 + 5);
  if (v10)
  {
    v11 = a1 + v10;
  }

  else
  {
    v11 = 0;
  }

  if (((v11[(a3 >> 3) - ((v9 >> 22) & 0x3FC)] >> (a3 & 7)) & 1) == 0)
  {
    _PF_FulfillDeferredFault(a1, a3);
  }

  v12 = a1[3];
  if (!v12)
  {
    v14 = 0;
    v15 = *(a1 + 4);
    if ((v15 & 0x38000) == 0x10000 || (v15 & 0x80) != 0)
    {
      return v14;
    }

    v16 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v17 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v19 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v17)
      {
        if (v19)
        {
          v24 = 0;
          v20 = &v24;
LABEL_27:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: NULL _cd_rawData but the object is not being turned into a fault\n", v20, 2u);
        }
      }

      else if (v19)
      {
        LOWORD(v23) = 0;
        v20 = &v23;
        goto LABEL_27;
      }
    }

    _NSCoreDataLog_console(1, "NULL _cd_rawData but the object is not being turned into a fault", v23);
    objc_autoreleasePoolPop(v16);
    return 0;
  }

  if (v8)
  {
    v13 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(v12, a3);
  }

  v14 = v13;
  if ((v5 & 0x40) == 0)
  {
    [a1 didAccessValueForKey:v7];
  }

  return v14;
}

_NSPersistentHistoryChange *ancillaryModelObjectBlock_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if ([@"TRANSACTION" isEqualToString:{objc_msgSend(a2, "entityName")}])
  {
    v9 = [[_NSPersistentHistoryTransaction alloc] initWithDictionary:a4 andObjectID:a5];
    if (![objc_msgSend(a2 "relationshipKeyPathsForPrefetching")] || !v9)
    {
      return v9;
    }

    v10 = [NSPersistentHistoryChangeRequest alloc];
    v40[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a5, "_referenceData64")}];
    v11 = -[NSPersistentHistoryChangeRequest initWithTransactionIDs:](v10, "initWithTransactionIDs:", [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1]);
    -[NSPersistentHistoryChangeRequest setFetchBatchSize:](v11, "setFetchBatchSize:", [a2 fetchLimit]);
    if ([objc_msgSend(a2 "affectedStores")])
    {
      -[NSPersistentStoreRequest setAffectedStores:](v11, "setAffectedStores:", [a2 affectedStores]);
    }

    v12 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v35 = 0;
    v13 = [objc_msgSend(a3 executeRequest:v11 error:{&v35), "result"}];
    if (v13)
    {
      if (v35)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = v35;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Batched persistent history request returned a result AND an error %@\n", buf, 0xCu);
        }

        v15 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v39 = v35;
          _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Batched persistent history request returned a result AND an error %@", buf, 0xCu);
        }
      }

      if ([v13 count])
      {
        [v13 _setTransaction:v9];
        [(_NSPersistentHistoryTransaction *)v9 _setChanges:v13];
      }

      [v12 drain];
      v16 = 0;
      return v9;
    }

    v26 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      if (_pflogging_catastrophic_mode)
      {
        v27 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 138412290;
        v39 = v11;
      }

      else
      {
        v27 = _PFLogGetLogStream(1);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 138412290;
        v39 = v11;
      }

      _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: Batched history request: %@ encountered an error\n", buf, 0xCu);
    }

LABEL_41:
    _NSCoreDataLog_console(1, "Batched history request: %@ encountered an error", v11);
    objc_autoreleasePoolPop(v26);
    v28 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_48;
    }

    if (_pflogging_catastrophic_mode)
    {
      v29 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 138412290;
      v39 = v35;
    }

    else
    {
      v29 = _PFLogGetLogStream(1);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      *buf = 138412290;
      v39 = v35;
    }

    _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error:  \t error: %@\n", buf, 0xCu);
LABEL_48:
    _NSCoreDataLog_console(1, " \t error: %@", v35);
    objc_autoreleasePoolPop(v28);
    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v35;
      _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: fault: Batched history request encountered error %@\n", buf, 0xCu);
    }

    v31 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v39 = v35;
      _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Batched history request encountered error %@", buf, 0xCu);
    }

    v32 = [v35 code];
    v36 = *MEMORY[0x1E696AA08];
    v37 = v35;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v34 = [_NSCoreDataException exceptionWithName:v32 code:@"Batched persistent history request encountered an error" reason:v33 userInfo:?];
    -[_NSCoreDataException _setDomain:](v34, [v35 domain]);
    objc_exception_throw(v34);
  }

  if (![@"CHANGE" isEqualToString:{objc_msgSend(a2, "entityName")}])
  {
    v20 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v21 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = [a2 entityName];
          _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Error attempted to convert unknown Ancillary Entity: %@\n", buf, 0xCu);
        }
      }

      else
      {
        v22 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = [a2 entityName];
          _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_INFO, "CoreData: debug: Error attempted to convert unknown Ancillary Entity: %@\n", buf, 0xCu);
        }
      }
    }

    v23 = _pflogging_catastrophic_mode == 0;
    v24 = [a2 entityName];
    v25 = 9;
    if (!v23)
    {
      v25 = 1;
    }

    _NSCoreDataLog_console(v25, "Error attempted to convert unknown Ancillary Entity: %@", v24);
    objc_autoreleasePoolPop(v20);
    return 0;
  }

  v17 = [a4 isNSDictionary];
  v18 = [_NSPersistentHistoryChange alloc];
  if (v17)
  {

    return [(_NSPersistentHistoryChange *)v18 initWithDictionary:a4 andChangeObjectID:a5];
  }

  else
  {

    return [(_NSPersistentHistoryChange *)v18 initWithManagedObject:a4];
  }
}

void sub_1856BF75C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 != 2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1856BF1E0);
  }

  v3 = objc_begin_catch(exception_object);

  v4 = v3;
  objc_exception_rethrow();
}

void sub_1856BF804(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856BF7CCLL);
  }

  JUMPOUT(0x1856BF7A4);
}

uint64_t NSManagedObjectContext.perform<A>(schedule:_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 352) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = NSManagedObjectContext.perform<A>(schedule:_:);
  }

  else
  {
    v6 = v2[36];
    v5 = v2[37];
    v7 = v2[33];
    v8 = v2[34];
    v9 = *(v8 + 32);
    v2[45] = v9;
    v2[46] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v5, v6, v7);
    v4 = NSManagedObjectContext.perform<A>(schedule:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v1[41];
  v3 = v1[42];
  v4 = v1[38];
  v5 = v1[33];
  v6 = v1[34];
  swift_willThrow();
  (*(v6 + 8))(v4, v5);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v2, v3);

  v7 = v1[1];

  return v7();
}

IMP generateAccessorType(int a1, uint64_t a2, int a3)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  if (a1)
  {
    v3 = __generateAccessor_block_invoke_2;
    v4 = a3 == 0;
    v5 = _sharedIMPL_setvfk_core;
    v6 = _sharedIMPL_setPvfk_core;
    v7 = &__block_descriptor_48_e11__24__0_8_16l;
  }

  else
  {
    v3 = __generateAccessor_block_invoke;
    v4 = a3 == 0;
    v5 = _sharedIMPL_vfk_core;
    v6 = _sharedIMPL_pvfk_core;
    v7 = &__block_descriptor_48_e8__16__0_8l;
  }

  v10[2] = v3;
  v10[3] = v7;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v10[4] = v8;
  v10[5] = a2;
  return imp_implementationWithBlock(v10);
}

uint64_t PFVectorEqual(const __CFBitVector *a1, const __CFBitVector *a2)
{
  Count = CFBitVectorGetCount(a1);
  if (Count == CFBitVectorGetCount(a2))
  {
    if (Count < 1)
    {
      return 1;
    }

    v5 = 0;
    while (1)
    {
      BitAtIndex = CFBitVectorGetBitAtIndex(a1, v5);
      if (BitAtIndex != CFBitVectorGetBitAtIndex(a2, v5))
      {
        break;
      }

      if (Count == ++v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t one-time initialization function for didMergeChangesObjectIDsNotification()
{
  result = MEMORY[0x1865F8600](0xD00000000000003ALL, 0x800000018592EF00);
  static NSManagedObjectContext.didMergeChangesObjectIDsNotification = result;
  return result;
}

id _rawRowDataForXPCRequest(uint64_t a1)
{
  v84[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([*(*(a1 + 136) + 8) allocationType] != 3 && objc_msgSend(*(*(a1 + 136) + 8), "allocationType"))
  {
    *(*(a1 + 136) + 72) |= 0x20u;
    v3 = [a1 request];
    if (*(a1 + 120))
    {
      v4 = v3;
      v5 = [a1 fetchStatement];
      if (v5 && (*(v5 + 40) & 1) == 0)
      {
        v20 = [a1 fetchStatement];
        v21 = *(a1 + 201);
        v22 = *(a1 + 136);
        v23 = *(a1 + 24);
        if (+[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSXPCStoreServer debugDefault])
        {
          Current = CFAbsoluteTimeGetCurrent();
          v25 = 1;
        }

        else
        {
          v25 = 0;
          Current = 0.0;
        }

        v78 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        if (v25)
        {
          v26 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = [v20 sqlString];
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch statement: '%@'\n", buf, 0xCu);
              }
            }

            else
            {
              v58 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *&buf[4] = [v20 sqlString];
                _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: sql connection fetch statement: '%@'\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v59 = [v20 sqlString];
            v60 = 1;
          }

          else
          {
            v59 = [v20 sqlString];
            v60 = 8;
          }

          _NSCoreDataLog_console(v60, "sql connection fetch statement: '%@'", v59);
          objc_autoreleasePoolPop(v26);
        }

        [(NSSQLiteConnection *)v23 selectRowsWithStatement:v20 cached:v21];
        v61 = CFAbsoluteTimeGetCurrent();
        Initialize = 0;
        v63 = 0;
        if (v25)
        {
          v64 = v61 - Current;
        }

        else
        {
          v64 = 0.0;
        }

        do
        {
          if (!Initialize)
          {
            Initialize = bufferResultSetAllocateInitialize(v63, v22);
            Initialize[1] = v61;
            *Initialize = 0;
            *(Initialize + 10) |= 2u;
          }

          *(v22 + 16) = 0x7FFFFFFF;
          v65 = 0.0;
          if (v25)
          {
            v65 = CFAbsoluteTimeGetCurrent();
          }

          [(NSSQLiteConnection *)v23 fetchBufferResultSet:v22 usingFetchPlan:?];
          v66 = *(Initialize + 8);
          if (v66)
          {
            v67 = *(Initialize + 6);
            v63 = 80;
            do
            {
              v68 = *v67++;
              v63 += v68[1] + 4 * *v68;
              --v66;
            }

            while (v66);
          }

          else
          {
            v63 = 80;
          }

          v69 = *(Initialize + 10);
          if (v25)
          {
            v64 = v64 + CFAbsoluteTimeGetCurrent() - v65;
          }
        }

        while ((v69 & 1) == 0);
        [(NSSQLiteConnection *)v23 endFetchAndRecycleStatement:v21];
        v70 = _prepareLargeDictionaryResults(Initialize, a1, 1);
        v84[0] = v70;
        v71 = _prepareBufferedDictionaryResult([MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1], a1);

        v41 = v71;
        if (v25)
        {
          v72 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              v73 = _PFLogGetLogStream(1);
              if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = v64;
                _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
              }
            }

            else
            {
              v74 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v64;
                _os_log_impl(&dword_18565F000, v74, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: sql connection fetch time: %.4fs\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v75 = 1;
          }

          else
          {
            v75 = 8;
          }

          _NSCoreDataLog_console(v75, "sql connection fetch time: %.4fs", v64);
          objc_autoreleasePoolPop(v72);
        }

        [v78 drain];
        [0 drain];
        goto LABEL_75;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v6 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v7 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = v4;
              _os_log_error_impl(&dword_18565F000, v7, OS_LOG_TYPE_ERROR, "CoreData: error: logically false fetch request %@ short circuits.\n", buf, 0xCu);
            }
          }

          else
          {
            v39 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v4;
              _os_log_impl(&dword_18565F000, v39, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: logically false fetch request %@ short circuits.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v40 = 1;
        }

        else
        {
          v40 = 8;
        }

        _NSCoreDataLog_console(v40, "logically false fetch request %@ short circuits.", v4);
        objc_autoreleasePoolPop(v6);
      }
    }

    v41 = 0;
LABEL_75:
    *buf = 1;
    [v2 appendBytes:buf length:8];
    resultSet = 0;
    if ([(_PFResultArray *)v41 count]&& v41)
    {
      resultSet = v41->_resultSet;
    }

    v84[0] = 0;
    v81 = 2882400171;
    [v2 appendBytes:&v81 length:8];
    if (resultSet && resultSet->var0)
    {
      [v2 appendBytes:resultSet length:4];
      [v2 appendBytes:v84 length:4];
      var2 = resultSet->var2;
      [v2 appendBytes:&var2 length:8];
      [v2 appendBytes:*resultSet->var9 length:var2];
    }

    else
    {
      [v2 appendBytes:v84 length:4];
    }

    if (v41)
    {
    }

    return v2;
  }

  *(*(a1 + 136) + 72) |= 0x20u;
  v8 = [a1 request];
  if (*(a1 + 120))
  {
    v9 = v8;
    v10 = [a1 fetchStatement];
    if (v10 && (*(v10 + 40) & 1) == 0)
    {
      v13 = [a1 fetchStatement];
      v76 = *(a1 + 201);
      v14 = *(a1 + 136);
      v15 = *(a1 + 24);
      if (+[NSSQLCore debugDefault](NSSQLCore, "debugDefault") > 0 || +[NSXPCStoreServer debugDefault])
      {
        v16 = CFAbsoluteTimeGetCurrent();
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v16 = 0.0;
      }

      v77 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v19 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = [v13 sqlString];
              _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch statement: '%@'\n", buf, 0xCu);
            }
          }

          else
          {
            v44 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = [v13 sqlString];
              _os_log_impl(&dword_18565F000, v44, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: sql connection fetch statement: '%@'\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v45 = [v13 sqlString];
          v46 = 1;
        }

        else
        {
          v45 = [v13 sqlString];
          v46 = 8;
        }

        _NSCoreDataLog_console(v46, "sql connection fetch statement: '%@'", v45);
        objc_autoreleasePoolPop(v18);
      }

      [(NSSQLiteConnection *)v15 selectRowsWithStatement:v13 cached:v76];
      v47 = CFAbsoluteTimeGetCurrent();
      v30 = 0;
      v48 = 0;
      if (v17)
      {
        v49 = v47 - v16;
      }

      else
      {
        v49 = 0.0;
      }

      do
      {
        if (v30)
        {
          fetchResultSetDeallocate(v30);
        }

        v30 = fetchResultSetAllocateInitialize(v48, (*(v14 + 72) >> 5) & 1);
        *(v30 + 1) = v47;
        *v30 = 0;
        *(v14 + 16) = 0x7FFFFFFF;
        v50 = 0.0;
        if (v17)
        {
          v50 = CFAbsoluteTimeGetCurrent();
        }

        [(NSSQLiteConnection *)v15 fetchResultSet:v30 usingFetchPlan:v14];
        v51 = v30[12];
        v53 = v30[4];
        v52 = v30[5];
        if (v17)
        {
          v49 = v49 + CFAbsoluteTimeGetCurrent() - v50;
        }

        v48 = v52 * v53;
      }

      while ((v51 & 1) == 0);
      [(NSSQLiteConnection *)v15 endFetchAndRecycleStatement:v76];
      if (v17)
      {
        v54 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v55 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              *&buf[4] = v49;
              _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: error: sql connection fetch time: %.4fs\n", buf, 0xCu);
            }
          }

          else
          {
            v56 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v49;
              _os_log_impl(&dword_18565F000, v56, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: sql connection fetch time: %.4fs\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v57 = 1;
        }

        else
        {
          v57 = 8;
        }

        _NSCoreDataLog_console(v57, "sql connection fetch time: %.4fs", v49);
        objc_autoreleasePoolPop(v54);
      }

      [v77 drain];
      [0 drain];
      goto LABEL_46;
    }

    if (+[NSXPCStoreServer debugDefault])
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v12 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: error: logically false fetch request %@ short circuits.\n", buf, 0xCu);
          }
        }

        else
        {
          v28 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: logically false fetch request %@ short circuits.\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v29 = 1;
      }

      else
      {
        v29 = 8;
      }

      _NSCoreDataLog_console(v29, "logically false fetch request %@ short circuits.", v9);
      objc_autoreleasePoolPop(v11);
    }
  }

  v30 = 0;
LABEL_46:
  *buf = 1;
  [v2 appendBytes:buf length:8];
  v84[0] = 0;
  var2 = 2882400171;
  [v2 appendBytes:&var2 length:8];
  if (v30 && *v30)
  {
    [v2 appendBytes:v30 length:4];
    [v2 appendBytes:v30 + 5 length:4];
    [v2 appendBytes:&var2 length:8];
    v82 = *v30;
    [v2 appendBytes:&v82 length:4];
    v82 = v30[1];
    [v2 appendBytes:&v82 length:4];
    v81 = *(v30 + 1);
    [v2 appendBytes:&v81 length:8];
    v82 = v30[4];
    [v2 appendBytes:&v82 length:4];
    v82 = v30[5];
    [v2 appendBytes:&v82 length:4];
    v82 = v30[6];
    [v2 appendBytes:&v82 length:4];
    v82 = v30[7];
    [v2 appendBytes:&v82 length:4];
    v81 = *(v30 + 4);
    [v2 appendBytes:&v81 length:8];
    v81 = *(v30 + 5);
    [v2 appendBytes:&v81 length:8];
    v82 = v30[12];
    [v2 appendBytes:&v82 length:4];
    [v2 appendBytes:v84 length:4];
    [v2 appendBytes:v84 length:8];
    [v2 appendBytes:v84 length:8];
    [v2 appendBytes:v84 length:8];
    [v2 appendBytes:v84 length:8];
    [v2 appendBytes:v84 length:8];
    v31 = [v2 length];
    if ((((v31 + 7) & 0xFFFFFFF8) - v31) >= 1)
    {
      [v2 appendBytes:v84 length:?];
    }

    v32 = v30[5];
    if (v32)
    {
      v33 = v30[5];
      do
      {
        [v2 appendBytes:v84 length:8];
        --v33;
      }

      while (v33);
      [v2 appendBytes:&var2 length:8];
      v34 = 0;
      do
      {
        v79 = *(*(v30 + 9) + v34);
        [v2 appendBytes:&v79 length:8];
        v34 += 8;
      }

      while (8 * v32 != v34);
      v35 = [v2 length];
      v36 = v32;
      do
      {
        [v2 appendBytes:v84 length:8];
        --v36;
      }

      while (v36);
      for (i = 0; i != v32; ++i)
      {
        v38 = [v2 length];
        if ((((v38 + 7) & 0xFFFFFFF8) - v38) >= 1)
        {
          [v2 appendBytes:v84 length:?];
        }

        v79 = [v2 length];
        [v2 replaceBytesInRange:v35 withBytes:{8, &v79}];
        [v2 appendBytes:*(*(v30 + 8) + 8 * i) length:*(*(v30 + 9) + 8 * i)];
        v35 += 8;
      }
    }

    else
    {
      [v2 appendBytes:&var2 length:8];
      [v2 length];
    }
  }

  else
  {
    [v2 appendBytes:v84 length:4];
  }

  if (v30)
  {
    fetchResultSetDeallocate(v30);
  }

  return v2;
}

void sub_1856C1890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int buf, uint64_t a18)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exception_object);
      JUMPOUT(0x1856C1858);
    }

    v18 = objc_begin_catch(exception_object);
    v19 = v18;
    objc_exception_throw(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1856C1A9C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856C1A64);
  }

  JUMPOUT(0x1856C1F1CLL);
}

void sub_1856C1AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1856C1F1CLL);
  }

  JUMPOUT(0x1856C1B2CLL);
}

void sub_1856C1AC4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856C1ACCLL);
  }

  JUMPOUT(0x1856C1F1CLL);
}

void sub_1856C1B14(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856C1ADCLL);
  }

  JUMPOUT(0x1856C1F1CLL);
}

void sub_1856C1B24(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856C1B30);
  }

  JUMPOUT(0x1856C1F1CLL);
}

void sub_1856C1ED0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856C1F08);
  }

  JUMPOUT(0x1856C1F1CLL);
}

void *bufferResultSetIngestRow(uint64_t a1, const void *a2, size_t a3)
{
  v4 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v6 = (a3 & 7) + a3;
  v7 = *(a1 + 16);
  v8 = v7 >> 1;
  v9 = v6 + 8;
  v10 = *(a1 + 72);
  v11 = *(a1 + 64);
  v12 = v10 - v11;
  if (v6 >= v7 >> 1)
  {
    v13 = v6 + 8;
  }

  else
  {
    v13 = (a3 & 7) + a3;
  }

  v14 = 4 * *v11;
  v15 = v14 + 4;
  if (v6 < v7 >> 1 && v7 - v12 >= v6 + v15)
  {
    v19 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_43;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    v20 = v13 + v14;
    if (v7 <= v13 + v14)
    {
      v21 = a2;
      v22 = v20 + v7;
    }

    else if (v7 <= 0x7EFF81 || v20 >= 0x7EFF81)
    {
      v21 = a2;
      v22 = 2 * v7;
    }

    else
    {
      v21 = a2;
      v22 = v7 + 8322945;
    }

    v30 = getpagesize();
    v31 = (v22 + v30 - 1) / v30 * v30;
    address = 0;
    v32 = MEMORY[0x1E69E9A60];
    if (!vm_allocate(*MEMORY[0x1E69E9A60], &address, v31, 754974721) || (v33 = v13 + v15 + *(a1 + 16), v34 = vm_allocate(*v32, &address, v33, 754974721), !v34))
    {
      vm_copy(*v32, *(a1 + 64), *(a1 + 16), address);
      MEMORY[0x1865FAA50](*v32, *(a1 + 64), *(a1 + 16));
      v35 = address;
      *(a1 + 64) = address;
      *(*(a1 + 48) + 8 * (*(a1 + 32) - 1)) = v35;
      v11 = *(a1 + 64);
      v19 = v11 + v12;
      *(a1 + 72) = v11 + v12;
      *a1 = *v11;
      *(a1 + 16) = v31;
      v4 = v21;
      goto LABEL_43;
    }

    v67 = v34;
    v68 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v69 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v71 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        if (v71)
        {
LABEL_97:
          *buf = 134218240;
          v82 = v33;
          v83 = 1024;
          v84 = v67;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: *** vm_allocate(size=%lld) failed (error code=%d)\n\n", buf, 0x12u);
        }
      }

      else if (v71)
      {
        goto LABEL_97;
      }
    }

    _NSCoreDataLog_console(1, "*** vm_allocate(size=%lld) failed (error code=%d)\n", v33, v67);
    objc_autoreleasePoolPop(v68);
    v74 = *MEMORY[0x1E695D930];
    v79 = @"VMErrorCode";
    v80 = [MEMORY[0x1E696AD98] numberWithInt:v67];
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v66 = @"Unable to allocate VM Memory";
    v65 = v74;
    goto LABEL_106;
  }

  memcpy(v10, *(a1 + 56), v14);
  *(*(a1 + 64) + 4) = v12;
  bzero(*(a1 + 56), v14);
  v16 = v6 >= v8 && v12 == 8;
  if (v16 && v13 > *(a1 + 16))
  {
    v17 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v17 = malloc_default_zone();
    }

    v18 = malloc_type_zone_realloc(v17, *(a1 + 64), v13 + 8, 0x432FB4A9uLL);
    *(a1 + 64) = v18;
    *(*(a1 + 48) + 8 * (*(a1 + 32) - 1)) = v18;
    v11 = *(a1 + 64);
    *(a1 + 72) = v11;
    if (v11)
    {
      *v11 = 0;
      v19 = (v11 + 2);
      *(a1 + 72) = v11 + 2;
      goto LABEL_43;
    }

    v76 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v82 = v13 + 8;
      _os_log_error_impl(&dword_18565F000, v76, OS_LOG_TYPE_ERROR, "CoreData: fault: PF_REALLOC failed to allocate buffer to %ld bytes\n", buf, 0xCu);
    }

    v73 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
LABEL_104:
      v65 = *MEMORY[0x1E695DA18];
      v66 = @"realloc failed";
      goto LABEL_105;
    }

    *buf = 134217984;
    v82 = v13 + 8;
LABEL_103:
    _os_log_fault_impl(&dword_18565F000, v73, OS_LOG_TYPE_FAULT, "CoreData: PF_REALLOC failed to allocate buffer to %ld bytes", buf, 0xCu);
    goto LABEL_104;
  }

  v23 = v4;
  v24 = *(a1 + 32);
  *(a1 + 32) = v24 + 1;
  if (v6 < v8)
  {
    v9 = *(a1 + 16);
  }

  v25 = *(a1 + 24);
  if (v24 + 1 >= v25)
  {
    v26 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v26 = malloc_default_zone();
    }

    v27 = malloc_type_zone_realloc(v26, *(a1 + 48), 8 * (v25 + 512), 0x80040B8603338uLL);
    if (!v27)
    {
      v72 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v82 = 8 * (v25 + 512);
        _os_log_error_impl(&dword_18565F000, v72, OS_LOG_TYPE_ERROR, "CoreData: fault: PF_REALLOC failed to allocate buffer to %ld bytes\n", buf, 0xCu);
      }

      v73 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_104;
      }

      *buf = 134217984;
      v82 = 8 * (v25 + 512);
      goto LABEL_103;
    }

    *(a1 + 48) = v27;
    v27[v25 + 511] = 0;
    *(a1 + 24) = v25 + 512;
  }

  v28 = _PF_Private_Malloc_Zone;
  if ((*(a1 + 40) & 4) != 0)
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v28 = malloc_default_zone();
    }

    v29 = malloc_type_zone_calloc(v28, 1uLL, v9, 0xBE1EBE54uLL);
  }

  else
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v28 = malloc_default_zone();
    }

    v29 = malloc_type_zone_malloc(v28, v9, 0xB8F40CAEuLL);
  }

  *(a1 + 64) = v29;
  *(*(a1 + 48) + 8 * v24) = v29;
  v11 = *(a1 + 64);
  *(a1 + 72) = v11;
  if (!v11)
  {
    v62 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v82 = v9;
      _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: fault: PF_MALLOC failed to allocate buffer to %ld bytes\n", buf, 0xCu);
    }

    v63 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_87;
    }

    *buf = 134217984;
    v82 = v9;
LABEL_86:
    _os_log_fault_impl(&dword_18565F000, v63, OS_LOG_TYPE_FAULT, "CoreData: PF_MALLOC failed to allocate buffer to %ld bytes", buf, 0xCu);
LABEL_87:
    v65 = *MEMORY[0x1E695DA18];
    v66 = @"malloc failed";
LABEL_105:
    v75 = 0;
LABEL_106:
    v77 = [_NSCoreDataException exceptionWithName:v65 code:134183 reason:v66 userInfo:v75];
    objc_exception_throw(v77);
  }

  *v11 = 0;
  v19 = (v11 + 2);
  *(a1 + 72) = v11 + 2;
  *(a1 + 36) = v24;
  v4 = v23;
LABEL_43:
  v36 = *(a1 + 28);
  if (*v11 < v36)
  {
    goto LABEL_60;
  }

  if ((*(a1 + 40) & 8) != 0)
  {
    v39 = v36 + 0x4000;
    address = 0;
    v40 = MEMORY[0x1E69E9A60];
    v41 = vm_allocate(*MEMORY[0x1E69E9A60], &address, 4 * v39, 754974721);
    if (!v41)
    {
LABEL_59:
      vm_copy(*v40, *(a1 + 56), 4 * *(a1 + 28), address);
      MEMORY[0x1865FAA50](*v40, *(a1 + 56), 4 * *(a1 + 28));
      v52 = address;
      *(a1 + 56) = address;
      *(v52 + 4 * v39 - 4) = 0;
      *(a1 + 28) = v39;
      v19 = *(a1 + 72);
      goto LABEL_60;
    }

    v42 = v41;
    v43 = v4;
    v44 = objc_autoreleasePoolPush();
    _pflogInitialize(2);
    IsLogEnabled = _NSCoreDataIsLogEnabled(2);
    v46 = &unk_1EA8C8000;
    if (IsLogEnabled && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v47 = _PFLogGetLogStream(1);
        v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v46 = &unk_1EA8C8000;
        if (v48)
        {
          *buf = 134218240;
          v82 = v39;
          v83 = 1024;
          v84 = v42;
          v49 = "CoreData: error: *** vm_allocate(size=%lld) failed (error code=%d)\n\n";
LABEL_77:
          _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, v49, buf, 0x12u);
          v46 = &unk_1EA8C8000;
        }
      }

      else
      {
        v47 = _PFLogGetLogStream(2);
        v50 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        v46 = &unk_1EA8C8000;
        if (v50)
        {
          *buf = 134218240;
          v82 = v39;
          v83 = 1024;
          v84 = v42;
          v49 = "CoreData: warning: *** vm_allocate(size=%lld) failed (error code=%d)\n\n";
          goto LABEL_77;
        }
      }
    }

    if (v46[530])
    {
      v51 = 1;
    }

    else
    {
      v51 = 2;
    }

    _NSCoreDataLog_console(v51, "*** vm_allocate(size=%lld) failed (error code=%d)\n", v39, v42);
    objc_autoreleasePoolPop(v44);
    v4 = v43;
    goto LABEL_59;
  }

  v37 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v37 = malloc_default_zone();
  }

  v38 = malloc_type_zone_realloc(v37, *(a1 + 56), 4 * (v36 + 512), 0x100004052888210uLL);
  *(a1 + 56) = v38;
  v38[v36 + 511] = 0;
  *(a1 + 28) = v36 + 512;
LABEL_60:
  result = memcpy(v19, v4, a3);
  *(a1 + 72) += a3;
  v54 = *(a1 + 64);
  *(*(a1 + 56) + 4 * (*v54)++) = a3;
  ++*a1;
  if (v6 >= v8 && (*(a1 + 40) & 8) == 0)
  {
    v54[1] = a3 + 8;
    v55 = *(a1 + 32);
    *(a1 + 32) = v55 + 1;
    v56 = *(a1 + 16);
    v57 = *(a1 + 24);
    if (v55 + 1 >= v57)
    {
      v58 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v58 = malloc_default_zone();
      }

      v59 = malloc_type_zone_realloc(v58, *(a1 + 48), 8 * (v57 + 512), 0x80040B8603338uLL);
      *(a1 + 48) = v59;
      v59[v57 + 511] = 0;
      *(a1 + 24) = v57 + 512;
    }

    v60 = _PF_Private_Malloc_Zone;
    if ((*(a1 + 40) & 4) != 0)
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v60 = malloc_default_zone();
      }

      result = malloc_type_zone_calloc(v60, 1uLL, v56, 0xF69EB0BEuLL);
    }

    else
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v60 = malloc_default_zone();
      }

      result = malloc_type_zone_malloc(v60, v56, 0x539883BBuLL);
    }

    *(a1 + 64) = result;
    *(*(a1 + 48) + 8 * v55) = result;
    v61 = *(a1 + 64);
    *(a1 + 72) = v61;
    if (v61)
    {
      *v61 = 0;
      *(a1 + 72) = v61 + 1;
      *(a1 + 36) = v55;
      return result;
    }

    v64 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v82 = v56;
      _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: fault: PF_MALLOC failed to allocate buffer to %ld bytes\n", buf, 0xCu);
    }

    v63 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_87;
    }

    *buf = 134217984;
    v82 = v56;
    goto LABEL_86;
  }

  return result;
}

uint64_t _writeInt32IntoData(void *a1, unsigned int a2)
{
  v4 = [a1 length];
  if ((((v4 + 3) & 0xFFFFFFFC) - v4) >= 1)
  {
    v7 = 0;
    [a1 appendBytes:&v7 length:?];
  }

  v6 = bswap32(a2);
  return [a1 appendBytes:&v6 length:4];
}

uint64_t _writeInt16IntoData(void *a1, unsigned int a2)
{
  v4 = [a1 length];
  if ((((v4 + 1) & 0xFFFFFFFE) - v4) >= 1)
  {
    v7 = 0;
    [a1 appendBytes:&v7 length:?];
  }

  v6 = __rev16(a2);
  return [a1 appendBytes:&v6 length:2];
}

void _writeStringIntoData(void *a1, void *a2, void *a3)
{
  v10 = 0;
  v6 = [a2 length];
  if ((((v6 + 3) & 0xFFFFFFFC) - v6) >= 1)
  {
    [a2 appendBytes:&v10 length:?];
  }

  v7 = 2 * [a1 length];
  v9 = bswap32(v7);
  [a2 appendBytes:&v9 length:4];
  [a2 appendBytes:&v10 length:4];
  if (v7)
  {
    v8 = a3;
    if (v7 >= 0x400)
    {
      v8 = malloc_type_malloc(v7 | 1, 0x462CABFEuLL);
    }

    [a1 getCharacters:v8];
    [a2 appendBytes:v8 length:v7];
    if (v8 != a3)
    {
      free(v8);
    }
  }
}

uint64_t _writeInt64IntoData(void *a1, unint64_t a2)
{
  v4 = [a1 length];
  if ((((v4 + 7) & 0xFFFFFFF8) - v4) >= 1)
  {
    v6 = 0;
    [a1 appendBytes:&v6 length:?];
  }

  v6 = bswap64(a2);
  return [a1 appendBytes:&v6 length:8];
}

double _sharedIMPL_pvfk_core_f(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (!_pvfk_header(a1, a3))
  {
    return 0.0;
  }

  v5 = *(a1 + 24);
  Class = object_getClass(v5);
  LODWORD(result) = *&v5[*(object_getIndexedIvars(Class) + v3 + 19)];
  return result;
}

uint64_t _prepareObjectIDsOnBackgroundThread(uint64_t a1)
{
  v61[129] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
  }

  v5 = v2[1];
  v52 = v2[2];
  v6 = v2[3];
  PF_FREE_OBJECT_ARRAY(v2);
  *(a1 + 24) = 0;
  if (v3)
  {
    v58 = [*(v3 + 8) objectIDFactoryForSQLEntity:*(v4 + 40)];
    v50 = *(v3 + 112);
  }

  else
  {
    v58 = 0;
    v50 = 0;
  }

  v55 = *(v4 + 72);
  memset(v61, 0, 512);
  v60 = 1;
  v56 = v55 & 0x1C;
  v47 = v5;
  v48 = a1;
  v46 = v6;
  if (v56 == 4)
  {
    v51 = 0;
    v53 = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v8 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
    }

    v9 = malloc_type_zone_calloc(v8, 5uLL, 8uLL, 0x100004000313F17uLL);
    *v9 = v3;
    v9[1] = Mutable;
    v53 = Mutable;
    v9[2] = v52;
    v9[3] = &v60;
    v9[4] = 0;
    v51 = [[_PFTask alloc] initWithFunction:_prepareFaultsOnBackgroundThread withArgument:v9 andPriority:2];
  }

  v10 = 0;
  v49 = v3;
LABEL_11:
  v12 = v47;
  v11 = v48;
  v13 = v46;
  do
  {
    while (1)
    {
      pthread_mutex_lock((v11 + 32));
      do
      {
        v14 = [v12 count];
        v15 = v14;
        if (v14 >= 1)
        {
          if (v14 >= 0x80)
          {
            v20 = 128;
          }

          else
          {
            v20 = v14;
          }

          [v12 getObjects:v61 range:{0, v20}];
          if (v15 > 0x7F)
          {
            [v12 removeObjectsInRange:{0, v20}];
          }

          else
          {
            [v12 removeAllObjects];
          }

          atomic_load(v13);
          v21 = pthread_mutex_unlock((v11 + 32));
          v22 = 0;
          v57 = v20;
          while (1)
          {
            v59 = &v46;
            v23 = v61[v22];
            v24 = *(v23 + 4) <= 0x40000000u ? *(v23 + 4) : 0;
            MEMORY[0x1EEE9AC00](v21);
            v27 = &v46 - v26;
            if (v24 > 0x200)
            {
              v27 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(&v46 - v26, 8 * v25);
            }

            v28 = v27 ? v24 : 0;
            v29 = **(v23 + 64);
            if (v55)
            {
              break;
            }

            if (v28 == [v58 allocateBatch:v27 count:v28])
            {
              goto LABEL_48;
            }

            v28 = 0;
LABEL_58:
            v39 = [[_PFArray alloc] initWithObjects:v27 count:v28 andFlags:30];
            v40 = v24 >= 0x201;
            v41 = v57;
            if (v40)
            {
              NSZoneFree(0, v27);
            }

            fetchResultSetDeallocate(v23);
            if (v56 == 4)
            {
              [v52 addObject:v39];
            }

            else
            {
              v42 = v51;
              pthread_mutex_lock(&v51->lock);
              CFRetain(v39);
              CFArrayAppendValue(v53, v39);
              pthread_mutex_unlock(&v42->lock);
              pthread_cond_signal(&v42->condition);
            }

            if (++v22 == v41)
            {
              goto LABEL_11;
            }
          }

          v30 = _sqlEntityForEntityID(v50, *(v29 + 8));
          v31 = v58;
          if (v30 != v10)
          {
            v31 = 0;
          }

          if (v3)
          {
            v32 = v30;
            if (v30 != v10)
            {
              v31 = [*(v3 + 8) objectIDFactoryForSQLEntity:v30];
            }
          }

          else
          {
            v32 = v30;
          }

          v58 = v31;
          [v31 allocateBatch:v27 count:v28];
          v10 = v32;
LABEL_48:
          if (v28 >= 1)
          {
            v54 = v10;
            for (i = 0; i != v28; ++i)
            {
                ;
              }

              v34 = *&v27[8 * i];
              v35 = _PFSetPrimaryKey(v34, *(v29 + 24));
              if (v34 != v35)
              {
                v36 = v35;

                *&v27[8 * i] = v36;
              }

              v37 = *(v29 + 4);
              if ((v37 & 0x80000000) != 0)
              {
                break;
              }

              v38 = *(*(v23 + 64) + 8 * v37);
              if (!v38)
              {
                break;
              }

              v29 = v38 + *(v29 + 16);
            }

            v10 = v54;
            v3 = v49;
          }

          goto LABEL_58;
        }

        v16 = atomic_load(v13);
        if (v16)
        {
          pthread_cond_wait((v11 + 96), (v11 + 32));
        }

        v17 = atomic_load(v13);
      }

      while ((v17 & 1) != 0);
      v18 = atomic_load(v13);
      if (!v15 && (v18 & 1) == 0)
      {
        break;
      }

      pthread_mutex_unlock((v11 + 32));
    }

    v19 = [v12 count];
    pthread_mutex_unlock((v11 + 32));
  }

  while (v19);
  v43 = v53;
  if (v56 != 4)
  {
    atomic_store(0, &v60);
    __dmb(0xBu);
    v44 = v51;
    pthread_mutex_lock(&v51->lock);
    if (!v44->isFinishedFlag)
    {
      pthread_cond_signal(&v44->condition);
      while (!v44->isFinishedFlag)
      {
        pthread_cond_wait(&v44->condition, &v44->lock);
      }
    }

    pthread_mutex_unlock(&v44->lock);

    if (v43)
    {
      CFRelease(v43);
    }
  }

  return 0;
}

uint64_t _NSCoreDataIsOSLogEnabled(uint64_t a1)
{
  _pflogInitialize(a1);
  LODWORD(result) = _NSCoreDataIsLogEnabled(a1);
  if (_pflogging_enable_oslog > 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t _sharedIMPL_pvfk_core_i2q(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (!_pvfk_header(a1, a3))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  Class = object_getClass(v5);
  return *&v5[*(object_getIndexedIvars(Class) + v3 + 19)];
}

id protocol witness for ObservableObject.objectWillChange.getter in conformance NSManagedObject@<X0>(uint64_t *a1@<X8>)
{
  result = NSManagedObject.objectWillChange.getter();
  *a1 = result;
  return result;
}

id NSManagedObject.objectWillChange.getter()
{
  if ([v0 bindableObjectPublisher])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v4);
  }

  else
  {
    memset(v4, 0, sizeof(v4));
    outlined destroy of Any?(v4);
    type metadata accessor for ObservableObjectPublisher();
    swift_allocObject();
    [v0 setBindableObjectPublisher_];
  }

  result = [v0 bindableObjectPublisher];
  if (result)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v3, v4);
    type metadata accessor for ObservableObjectPublisher();
    swift_dynamicCast();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void _sharedIMPL_addObjectToSet_core(_DWORD *a1, uint64_t a2, void *a3, unint64_t a4)
{
  values = a3;
  v6 = [*(_PFEntityForManagedObject(a1)[12] + 24 + 8 * a4) name];
  v7 = a1[4];
  v8 = CFSetCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9F8]);
  if ((v7 & 0x200000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeywithSetMutation(a1, sel_willChangeValueForKey_withSetMutation_usingObjects_, v6, 1, v8, a4);
  }

  else
  {
    [a1 willChangeValueForKey:v6 withSetMutation:1 usingObjects:v8];
  }

  _sharedIMPL_pvfk_core(a1, v9, a4);
  [v10 addObject:values];
  if ((v7 & 0x200000) != 0)
  {
    _PF_ManagedObject_DidChangeValueForKeywithSetMutation(a1, sel_didChangeValueForKey_withSetMutation_usingObjects_, v6);
    if (!v8)
    {
      return;
    }

    goto LABEL_8;
  }

  [a1 didChangeValueForKey:v6 withSetMutation:1 usingObjects:v8];
  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }
}

unsigned int *snapshot_set_double(char *a1, unsigned int a2, double a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] &= ~(1 << (a2 & 7));
  *&a1[result[a2 + 19]] = a3;
  return result;
}

unsigned int *snapshot_set_int8(void *a1, unsigned int a2, char a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  *(a1 + (a2 >> 3) + 28) &= ~(1 << (a2 & 7));
  *(a1 + result[a2 + 19]) = a3;
  return result;
}

unsigned int *snapshot_set_int64(char *a1, unsigned int a2, uint64_t a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] &= ~(1 << (a2 & 7));
  *&a1[result[a2 + 19]] = a3;
  return result;
}

unsigned int *snapshot_set_int16(char *a1, unsigned int a2, __int16 a3)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  a1[(a2 >> 3) + 28] &= ~(1 << (a2 & 7));
  *&a1[result[a2 + 19]] = a3;
  return result;
}

uint64_t one-time initialization function for didSaveObjectIDsNotification()
{
  result = MEMORY[0x1865F8600](0xD000000000000032, 0x800000018592EF40);
  static NSManagedObjectContext.didSaveObjectIDsNotification = result;
  return result;
}

void _releaseStaleBatch(uint64_t a1, unsigned int a2)
{
  v2 = a2 >> 5;
  v3 = 1 << ~a2;
  if ((*(*(a1 + 24) + 4 * (a2 >> 5)) & v3) != 0)
  {
    v5 = *(a1 + 48);
    v6 = v5 * a2;
    v7 = v5 * a2 + v5;
    if (v7 >= *(a1 + 12))
    {
      v8 = *(a1 + 12);
    }

    else
    {
      v8 = v7;
    }

    v9 = [*(a1 + 16) _objectsPointer];
    v10 = v8 - v6;
    if (v8 > v6)
    {
      v11 = (v9 + 8 * v6);
      do
      {
        v12 = *v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectID];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v13 = [v12 _backingObjectID];
          }

          else
          {
            v13 = [v12 objectForKey:@"objectID"];
          }
        }

        v14 = v13;
        v15 = v13;
        *v11++ = v14;

        --v10;
      }

      while (v10);
    }

    *(*(a1 + 24) + 4 * v2) &= ~v3;
  }
}

BOOL _objectIDEntityAffectsResults(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 8) entity];
  v5 = *(a1 + 72);
  v6 = [*(a1 + 8) affectedStores];
  result = 0;
  if (!v6 || [v6 indexOfObjectIdenticalTo:{objc_msgSend(a2, "persistentStore")}] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [a2 entity];
    if (v7 == v4 || (v5 & 0x20) != 0 && ([v4 _subentitiesIncludes:v7] & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

Class initCloudKitCKScheduler()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKScheduler");
  qword_1ED4BECB0 = result;
  getCloudKitCKSchedulerClass[0] = CloudKitCKSchedulerFunction;
  return result;
}

void __LoadCloudKit_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  _MergedGlobals_92 = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
  if (!_MergedGlobals_92 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v0 = 136315138;
    v1 = dlerror();
    _os_log_fault_impl(&dword_18565F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "### Failed to Soft Link: /System/Library/Frameworks/CloudKit.framework/CloudKit\n%s", &v0, 0xCu);
  }
}

Class initCloudKitCKNotificationListener()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKNotificationListener");
  qword_1ED4BECC0 = result;
  getCloudKitCKNotificationListenerClass[0] = CloudKitCKNotificationListenerFunction;
  return result;
}

Class initCloudKitCKRecordZoneID()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKRecordZoneID");
  qword_1ED4BEC18 = result;
  getCloudKitCKRecordZoneIDClass[0] = CloudKitCKRecordZoneIDFunction;
  return result;
}

uint64_t initCloudKitCKCurrentUserDefaultName()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKCurrentUserDefaultName");
  qword_1ED4BED00 = result;
  getCloudKitCKCurrentUserDefaultName = CKCurrentUserDefaultNameCloudKitFunction;
  return result;
}

Class initCloudKitCKRecord()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKRecord");
  qword_1ED4BEC20 = result;
  getCloudKitCKRecordClass[0] = CloudKitCKRecordFunction;
  return result;
}

uint64_t __PFCloudKitLoggingGetStream()
{
  if (_MergedGlobals_91 != -1)
  {
    dispatch_once(&_MergedGlobals_91, &__block_literal_global_35);
  }

  return qword_1ED4BEBE8;
}

_DWORD *_sharedIMPL_removeSet_core(_DWORD *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = [*(_PFEntityForManagedObject(a1)[12] + 24 + 8 * a4) name];
  v8 = a1[4];
  if ((v8 & 0x200000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeywithSetMutation(a1, sel_willChangeValueForKey_withSetMutation_usingObjects_, v7, 2, a3, a4);
  }

  else
  {
    [a1 willChangeValueForKey:v7 withSetMutation:2 usingObjects:a3];
  }

  _sharedIMPL_pvfk_core(a1, v9, a4);
  [v10 minusSet:a3];
  if ((v8 & 0x200000) != 0)
  {

    return _PF_ManagedObject_DidChangeValueForKeywithSetMutation(a1, sel_didChangeValueForKey_withSetMutation_usingObjects_, v7);
  }

  else
  {

    return [a1 didChangeValueForKey:v7 withSetMutation:2 usingObjects:a3];
  }
}

Class initCloudKitCKServerChangeToken()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKServerChangeToken");
  qword_1ED4BEC90 = result;
  getCloudKitCKServerChangeTokenClass = CloudKitCKServerChangeTokenFunction;
  return result;
}

uint64_t initCloudKitCKAccountChangedNotification()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKAccountChangedNotification");
  qword_1ED4BED20 = result;
  getCloudKitCKAccountChangedNotification = CKAccountChangedNotificationCloudKitFunction;
  return result;
}

uint64_t initCloudKitCKIdentityUpdateNotification()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKIdentityUpdateNotification");
  qword_1ED4BED28 = result;
  getCloudKitCKIdentityUpdateNotification[0] = CKIdentityUpdateNotificationCloudKitFunction;
  return result;
}

Class initCloudKitCKOperationConfiguration()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKOperationConfiguration");
  qword_1ED4BECA8 = result;
  getCloudKitCKOperationConfigurationClass = CloudKitCKOperationConfigurationFunction;
  return result;
}

Class initCloudKitCKQueryCursor()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKQueryCursor");
  qword_1ED4BECF0 = result;
  getCloudKitCKQueryCursorClass = CloudKitCKQueryCursorFunction;
  return result;
}

void sub_1856C92AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1856C94DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856D642C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    os_unfair_lock_unlock((v2 + *(v3 + 3256)));
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

Class initCloudKitCKShare()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKShare");
  qword_1ED4BECC8 = result;
  getCloudKitCKShareClass = CloudKitCKShareFunction;
  return result;
}

Class initCloudKitCKRecordID()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKRecordID");
  qword_1ED4BEC28 = result;
  getCloudKitCKRecordIDClass = CloudKitCKRecordIDFunction;
  return result;
}

Class initCloudKitCKNotificationInfo()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKNotificationInfo");
  qword_1ED4BEC98 = result;
  getCloudKitCKNotificationInfoClass = CloudKitCKNotificationInfoFunction;
  return result;
}

void sub_1856D7484()
{
  if (v0)
  {
    JUMPOUT(0x1856D748CLL);
  }

  JUMPOUT(0x1856D7490);
}

Class initCloudKitCKContainer()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = objc_getClass("CKContainer");
  qword_1ED4BEC00 = result;
  getCloudKitCKContainerClass[0] = CloudKitCKContainerFunction;
  return result;
}

uint64_t initCloudKitCKErrorDomain()
{
  if (qword_1ED4BEBF8 != -1)
  {
    dispatch_once(&qword_1ED4BEBF8, &__block_literal_global_36);
  }

  result = *dlsym(_MergedGlobals_92, "CKErrorDomain");
  qword_1ED4BED08 = result;
  getCloudKitCKErrorDomain = CKErrorDomainCloudKitFunction;
  return result;
}

uint64_t _rollbackTransactionForSaveRequest(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    v3 = a1[12];
    if (v2 && *(v2 + 40) == 1)
    {
      [(NSSQLiteConnection *)v2 rollbackTransaction];
    }

    v4 = a1[1];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = MEMORY[0x1E696AD80];
  v6 = MEMORY[0x1E695DF20];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:4];
  if (!v3)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v10 = 0;
    goto LABEL_15;
  }

  v8 = atomic_load((v3 + 144));
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v10 = *(v3 + 8);
  if (!v10)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [v10 persistentStoreRequest];
  v11 = *(v3 + 8);
  if (v11)
  {
    v11 = *(v11 + 32);
  }

LABEL_10:
  v12 = [v5 notificationWithName:@"_NSSQLCoreTransactionStateChangeNotification" object:v4 userInfo:{objc_msgSend(v6, "dictionaryWithObjectsAndKeys:", v7, @"_NSSQLCoreTransactionType", v9, @"_NSSQLCoreTransientSequenceNumber", v10, @"_NSSQLCoreActiveSaveRequest", v11, @"_NSSQLCoreActiveSavingContext", a1, @"requestContext", 0)}];
  v13 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v13 postNotification:v12];
}

BOOL ___performExhaustiveUniquenessConflictDetectionForSaveRequest_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 entity];

  return [(NSEntityDescription *)v2 _hasUniqueProperties];
}

id _performExhaustiveUniquenessConflictDetectionForSaveRequest(uint64_t a1, void *a2)
{
  v2 = a1;
  v234 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 96);
  }

  v132 = [(NSSQLSavePlan *)a1 newObjectsForUniquenessConflictDetectionGivenReportedFailures:a2];
  obj = [_PFRoutines _rootEntityGroupsForObjects:v132 passingBlock:&__block_literal_global_34];
  v133 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v192 = v2;
  if (v2)
  {
    v137 = *(v2 + 24);
    v149 = *(v2 + 32);
    v3 = [*(v2 + 8) model];
    v153 = *(v2 + 8);
    v155 = v3;
  }

  else
  {
    v153 = 0;
    v155 = 0;
    v137 = 0;
    v149 = 0;
  }

  v186 = [MEMORY[0x1E695DF70] array];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v145 = [obj countByEnumeratingWithState:&v197 objects:v232 count:16];
  if (v145)
  {
    v143 = *v198;
LABEL_7:
    v157 = 0;
    while (1)
    {
      if (*v198 != v143)
      {
        objc_enumerationMutation(obj);
      }

      v159 = *(*(&v197 + 1) + 8 * v157);
      v151 = objc_autoreleasePoolPush();
      v4 = [objc_msgSend(v159 "lastObject")];
      if (v4)
      {
        if (atomic_load((v4 + 124)))
        {
          v6 = *(v4 + 72);
        }

        else
        {
          do
          {
            v6 = v4;
            v4 = [v4 superentity];
          }

          while (v4);
        }
      }

      else
      {
        v6 = 0;
      }

      v172 = _sqlCoreLookupSQLEntityForEntityDescription(v153, v6);
      v165 = [objc_msgSend(v6 "subentities")];
      if (v172)
      {
        v7 = v172[26];
      }

      else
      {
        v7 = 0;
      }

      v188 = v7;
      if (![v7 count])
      {
        goto LABEL_123;
      }

      v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v9 = [NSSQLiteAdapter generateStatementForCheckingUniqueProperties:v188 onObjects:v159 usingSQLCore:v153];
      v10 = v9;
      [v8 drain];
      v11 = v9;
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v13 = v12;
      if (!v172)
      {
        break;
      }

      [v12 addObject:v172[16]];
      if (v165)
      {
        v14 = v172[17];
LABEL_20:
        [v13 addObject:v14];
      }

LABEL_21:
      v161 = [v13 count];
      v226 = 0u;
      v227 = 0u;
      *v224 = 0u;
      v225 = 0u;
      v15 = [v188 countByEnumeratingWithState:v224 objects:v231 count:16];
      if (v15)
      {
        v16 = *v225;
        do
        {
          v17 = 0;
          v18 = v188;
          do
          {
            if (*v225 != v16)
            {
              objc_enumerationMutation(v18);
              v18 = v188;
            }

            v19 = *(*&v224[8] + 8 * v17);
            if (v19)
            {
              v20 = *(v19 + 24);
              if (v20 == 7 || v20 == 1)
              {
                [v13 addObject:?];
                v18 = v188;
              }
            }

            ++v17;
          }

          while (v15 != v17);
          v15 = [v18 countByEnumeratingWithState:v224 objects:v231 count:16];
        }

        while (v15);
      }

      v163 = [(NSSQLiteConnection *)v137 executeAttributeUniquenessCheckSQLStatement:v9 returningColumns:v13];

      v22 = [v163 count];
      v147 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (!v22)
      {
        goto LABEL_122;
      }

      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v139 = [v159 countByEnumeratingWithState:&v220 objects:v230 count:16];
      if (!v139)
      {
        goto LABEL_122;
      }

      v134 = *v221;
LABEL_38:
      v141 = 0;
LABEL_39:
      if (*v221 != v134)
      {
        objc_enumerationMutation(v159);
      }

      v190 = *(*(&v220 + 1) + 8 * v141);
      v184 = _sqlCoreLookupSQLEntityForEntityDescription(v153, [v190 entity]);
      v218 = 0u;
      v219 = 0u;
      v216 = 0u;
      v217 = 0u;
      v174 = [v163 countByEnumeratingWithState:&v216 objects:&v212 count:16];
      if (v174)
      {
        v168 = *v217;
        while (1)
        {
          v177 = 0;
          do
          {
            if (*v217 != v168)
            {
              objc_enumerationMutation(v163);
            }

            v179 = *(*(&v216 + 1) + 8 * v177);
            context = objc_autoreleasePoolPush();
            v182 = [MEMORY[0x1E695DF70] array];
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v23 = [v188 countByEnumeratingWithState:&v201 objects:v233 count:16];
            if (v23)
            {
              v24 = *v202;
              v25 = v161;
              do
              {
                v26 = 0;
                do
                {
                  if (*v202 != v24)
                  {
                    objc_enumerationMutation(v188);
                  }

                  v27 = *(*(&v201 + 1) + 8 * v26);
                  if (![-[NSSQLEntity properties](v184) containsObject:v27])
                  {
                    goto LABEL_75;
                  }

                  if (v27)
                  {
                    v28 = v27;
                    if (*(v27 + 24) == 7)
                    {
                      v28 = [v27 propertyDescription];
                    }
                  }

                  else
                  {
                    v28 = 0;
                  }

                  [v28 name];
                  v29 = objc_msgSend_valueForKey_(v190);
                  if ([v29 isNSString])
                  {
                    v29 = [_PFRoutines sanitize:v29];
                  }

                  if (!v27)
                  {
                    goto LABEL_61;
                  }

                  v30 = *(v27 + 24);
                  if (v30 == 7)
                  {
                    v34 = [v179 objectAtIndex:v25];
                    if ([v34 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
                    {
                      goto LABEL_75;
                    }

                    v35 = [v27 destinationEntity];
                    if (*(v27 + 72))
                    {
                      v36 = [v179 objectAtIndex:++v25];
                      if (v192)
                      {
                        sqlCore = v192->super._sqlCore;
                      }

                      else
                      {
                        sqlCore = 0;
                      }

                      v35 = -[NSSQLModel entityForID:](-[NSSQLCore model](sqlCore, "model"), "entityForID:", [v36 longValue]);
                    }

                    v38 = v35;
                    v39 = [v34 longLongValue];
                    if (v192)
                    {
                      v40 = [(NSSQLCore *)v192->super._sqlCore newObjectIDForEntity:v38 pk:v39];
                    }

                    else
                    {
                      v40 = 0;
                    }

                    v31 = v40;
                    v29 = [v29 objectID];
                    goto LABEL_74;
                  }

                  if (v30 == 1)
                  {
                    v31 = [v179 objectAtIndex:v25];
                  }

                  else
                  {
LABEL_61:
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v229 = v27;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported unique attribute type: %@\n", buf, 0xCu);
                    }

                    v33 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      v229 = v27;
                      _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Unsupported unique attribute type: %@", buf, 0xCu);
                    }

                    v31 = 0;
                  }

LABEL_74:
                  if ([v31 isEqual:v29])
                  {
                    [v182 addObject:{objc_msgSend(v27, "name")}];
                    goto LABEL_83;
                  }

LABEL_75:
                  ++v25;
                  ++v26;
                }

                while (v23 != v26);
                v41 = [v188 countByEnumeratingWithState:&v201 objects:v233 count:16];
                v23 = v41;
              }

              while (v41);
            }

LABEL_83:
            if ([v182 count])
            {
              v42 = [v190 objectID];
              v43 = [objc_msgSend(v179 objectAtIndex:{0), "unsignedIntegerValue"}];
              v44 = v172;
              if (v165)
              {
                v44 = _sqlEntityForEntityID(v155, [objc_msgSend(v179 objectAtIndex:{1), "unsignedIntegerValue"}]);
              }

              if (v192)
              {
                v180 = [(NSSQLCore *)v192->super._sqlCore newObjectIDForEntity:v44 pk:v43];
                v45 = [v42 isEqual:v180];
              }

              else
              {
                v180 = 0;
                v45 = [v42 isEqual:0];
              }

              if ((v45 & 1) == 0)
              {
                v170 = faultRowWithObjectID(v180, v192);
                if (v170)
                {
                  v46 = [v149 objectWithID:v180];
                  if ([v190 isInserted])
                  {
                    v47 = 0;
                  }

                  else
                  {
                    v48 = faultRowWithObjectID(v42, v192);
                    v49 = v48;
                    if (v48)
                    {
                      v47 = _newObjectGraphStyleForSQLRow(v48, v190);
                    }

                    else
                    {
                      v47 = 0;
                      v186 = 0;
                    }
                  }

                  if (v186)
                  {
                    v50 = _newObjectGraphStyleForSQLRow(v170, v46);
                    v195 = 0u;
                    v196 = 0u;
                    v193 = 0u;
                    v194 = 0u;
                    v51 = [v182 countByEnumeratingWithState:&v193 objects:&v208 count:16];
                    if (v51)
                    {
                      v52 = *v194;
                      do
                      {
                        for (i = 0; i != v51; ++i)
                        {
                          if (*v194 != v52)
                          {
                            objc_enumerationMutation(v182);
                          }

                          v54 = *(*(&v193 + 1) + 8 * i);
                          v55 = [NSConstraintConflict alloc];
                          v207 = v54;
                          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v207 count:1];
                          v206 = v190;
                          v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v206 count:1];
                          v58 = v47;
                          if (!v47)
                          {
                            v58 = [MEMORY[0x1E695DFB0] null];
                          }

                          v205 = v58;
                          v59 = -[NSConstraintConflict initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:](v55, "initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:", v56, v46, v50, v57, [MEMORY[0x1E695DEC8] arrayWithObjects:&v205 count:1]);
                          [v186 addObject:v59];
                        }

                        v51 = [v182 countByEnumeratingWithState:&v193 objects:&v208 count:16];
                      }

                      while (v51);
                    }
                  }
                }

                else
                {
                  v186 = 0;
                }
              }
            }

            objc_autoreleasePoolPop(context);
            if (!v186)
            {
              goto LABEL_121;
            }

            ++v177;
          }

          while (v177 != v174);
          v60 = [v163 countByEnumeratingWithState:&v216 objects:&v212 count:16];
          v174 = v60;
          if (!v60)
          {
LABEL_118:
            if (++v141 == v139)
            {
              v139 = [v159 countByEnumeratingWithState:&v220 objects:v230 count:16];
              if (!v139)
              {
                goto LABEL_122;
              }

              goto LABEL_38;
            }

            goto LABEL_39;
          }
        }
      }

      if (v186)
      {
        goto LABEL_118;
      }

LABEL_121:
      v186 = 0;
LABEL_122:
      [v147 drain];
LABEL_123:
      objc_autoreleasePoolPop(v151);
      if (!v186)
      {
        v186 = 0;
        goto LABEL_133;
      }

      if (++v157 == v145)
      {
        v61 = [obj countByEnumeratingWithState:&v197 objects:v232 count:16];
        v145 = v61;
        if (!v61)
        {
          goto LABEL_133;
        }

        goto LABEL_7;
      }
    }

    [v12 addObject:0];
    if (!v165)
    {
      goto LABEL_21;
    }

    v14 = 0;
    goto LABEL_20;
  }

LABEL_133:
  v154 = v186;
  [v133 drain];
  if (v192)
  {
    if (v192->super._error)
    {

      goto LABEL_136;
    }

    v135 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    connection = v192->super._connection;
    v169 = v192->super._context;
    contexta = [(NSSQLCore *)v192->super._sqlCore model];
    v158 = v192->super._sqlCore;
  }

  else
  {
    v135 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    contexta = 0;
    connection = 0;
    v169 = 0;
    v158 = 0;
  }

  v171 = [MEMORY[0x1E695DF70] array];
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v144 = [obj countByEnumeratingWithState:&v212 objects:v233 count:16];
  if (!v144)
  {
    goto LABEL_252;
  }

  v140 = *v213;
  do
  {
    v142 = 0;
    do
    {
      if (*v213 != v140)
      {
        objc_enumerationMutation(obj);
      }

      v162 = *(*(&v212 + 1) + 8 * v142);
      v138 = objc_autoreleasePoolPush();
      v64 = [objc_msgSend(v162 "lastObject")];
      if (v64)
      {
        if (atomic_load((v64 + 124)))
        {
          v66 = *(v64 + 72);
        }

        else
        {
          do
          {
            v66 = v64;
            v64 = [v64 superentity];
          }

          while (v64);
        }
      }

      else
      {
        v66 = 0;
      }

      v183 = _sqlCoreLookupSQLEntityForEntityDescription(v158, v66);
      v181 = [objc_msgSend(v66 "subentities")];
      if (v183)
      {
        v67 = v183[27];
      }

      else
      {
        v67 = 0;
      }

      v210 = 0u;
      v211 = 0u;
      v208 = 0u;
      v209 = 0u;
      v146 = v67;
      v156 = [v67 countByEnumeratingWithState:&v208 objects:v232 count:16];
      if (v156)
      {
        v152 = *v209;
        do
        {
          v68 = 0;
          do
          {
            if (*v209 != v152)
            {
              v69 = v68;
              objc_enumerationMutation(v146);
              v68 = v69;
            }

            v160 = v68;
            v191 = *(*(&v208 + 1) + 8 * v68);
            v70 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            v71 = [NSSQLiteAdapter generateStatementForCheckingMulticolumnConstraint:v191 onObjects:v162 usingSQLCore:v158];
            v72 = v71;
            [v70 drain];
            v73 = v71;
            if (!v71)
            {
              goto LABEL_242;
            }

            v150 = objc_alloc_init(MEMORY[0x1E696AAC8]);
            v74 = [v191 count];
            v173 = objc_msgSend_valueForKey_(v191);
            v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v76 = v75;
            if (!v183)
            {
              [v75 addObject:0];
              if (!v181)
              {
                goto LABEL_160;
              }

              v77 = 0;
              goto LABEL_159;
            }

            [v75 addObject:v183[16]];
            if (v181)
            {
              v77 = v183[17];
LABEL_159:
              [v76 addObject:v77];
            }

LABEL_160:
            v178 = [v76 count];
            v203 = 0u;
            v204 = 0u;
            v201 = 0u;
            v202 = 0u;
            v78 = [v191 countByEnumeratingWithState:&v201 objects:v231 count:16];
            if (v78)
            {
              v79 = *v202;
              do
              {
                for (j = 0; j != v78; ++j)
                {
                  if (*v202 != v79)
                  {
                    objc_enumerationMutation(v191);
                  }

                  v81 = *(*(&v201 + 1) + 8 * j);
                  if (v81)
                  {
                    v82 = *(v81 + 24);
                    if (v82 == 7 || v82 == 1)
                    {
                      [v76 addObject:?];
                    }
                  }
                }

                v78 = [v191 countByEnumeratingWithState:&v201 objects:v231 count:16];
              }

              while (v78);
            }

            v189 = [(NSSQLiteConnection *)connection executeMulticolumnUniquenessCheckSQLStatement:v71 returningColumns:v76];

            v185 = [v189 count];
            if ([v189 count])
            {
              v199 = 0u;
              v200 = 0u;
              v197 = 0u;
              v198 = 0u;
              v166 = [v162 countByEnumeratingWithState:&v197 objects:v230 count:16];
              if (v166)
              {
                v164 = *v198;
                do
                {
                  for (k = 0; k != v166; ++k)
                  {
                    if (*v198 != v164)
                    {
                      objc_enumerationMutation(v162);
                    }

                    if (v185)
                    {
                      v84 = 0;
                      v85 = *(*(&v197 + 1) + 8 * k);
                      while (1)
                      {
                        v187 = objc_autoreleasePoolPush();
                        v86 = [v189 objectAtIndex:v84];
                        if (v74)
                        {
                          break;
                        }

LABEL_211:
                        v104 = [objc_msgSend(objc_msgSend(v189 objectAtIndex:{v84), "objectAtIndex:", 0), "unsignedIntegerValue"}];
                        v105 = v183;
                        if (v181)
                        {
                          v105 = _sqlEntityForEntityID(contexta, [objc_msgSend(objc_msgSend(v189 objectAtIndex:{v84), "objectAtIndex:", 1), "unsignedIntegerValue"}]);
                        }

                        if (v192)
                        {
                          v106 = [(NSSQLCore *)v192->super._sqlCore newObjectIDForEntity:v105 pk:v104];
                        }

                        else
                        {
                          v106 = 0;
                        }

                        v107 = [v85 objectID];
                        if (([v107 isEqual:v106] & 1) == 0)
                        {
                          v108 = [(NSSQLStoreRequestContext *)v192 createNestedObjectFaultContextForObjectWithID:v106];
                          v109 = v108;
                          if (v108)
                          {
                            v108->_forConflictAnalysis = 1;
                          }

                          if (v192)
                          {
                            v110 = v192->super._connection;
                          }

                          else
                          {
                            v110 = 0;
                          }

                          [(NSSQLStoreRequestContext *)v108 setConnection:v110];
                          [(NSSQLStoreRequestContext *)&v109->super.super.isa setQueryGenerationToken:?];
                          v111 = _executeObjectFaultRequest(v109);
                          [(NSSQLStoreRequestContext *)v109 setConnection:?];

                          if ([v85 isInserted])
                          {
                            v112 = 0;
                          }

                          else
                          {
                            v113 = [(NSSQLStoreRequestContext *)v192 createNestedObjectFaultContextForObjectWithID:v107];
                            v114 = v113;
                            if (v113)
                            {
                              v113->_forConflictAnalysis = 1;
                            }

                            if (v192)
                            {
                              v115 = v192->super._connection;
                            }

                            else
                            {
                              v115 = 0;
                            }

                            [(NSSQLStoreRequestContext *)v113 setConnection:v115];
                            [(NSSQLStoreRequestContext *)&v114->super.super.isa setQueryGenerationToken:?];
                            v112 = _executeObjectFaultRequest(v114);
                            [(NSSQLStoreRequestContext *)v114 setConnection:?];
                          }

                          v116 = [(NSManagedObjectContext *)v169 objectWithID:v106];
                          v117 = _newObjectGraphStyleForSQLRow(v111, v116);
                          if ([v85 isInserted])
                          {
                            v118 = 0;
                          }

                          else
                          {
                            v118 = _newObjectGraphStyleForSQLRow(v112, v85);
                          }

                          v119 = [NSConstraintConflict alloc];
                          *&v220 = v85;
                          v120 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v220 count:1];
                          v121 = v118;
                          if (!v118)
                          {
                            v121 = [MEMORY[0x1E695DFB0] null];
                          }

                          *&v216 = v121;
                          v122 = -[NSConstraintConflict initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:](v119, "initWithConstraint:databaseObject:databaseSnapshot:conflictingObjects:conflictingSnapshots:", v173, v116, v117, v120, [MEMORY[0x1E695DEC8] arrayWithObjects:&v216 count:1]);
                          [v171 addObject:v122];
                        }

LABEL_234:
                        objc_autoreleasePoolPop(v187);
                        if (++v84 == v185)
                        {
                          goto LABEL_239;
                        }
                      }

                      v87 = v86;
                      v88 = 0;
                      v89 = v178;
                      while (2)
                      {
                        v90 = [v191 objectAtIndex:v88];
                        v91 = v90;
                        if (v90)
                        {
                          if (v90[24] == 7)
                          {
                            v90 = [v90 propertyDescription];
                          }
                        }

                        else
                        {
                          v90 = 0;
                        }

                        [v90 name];
                        v92 = objc_msgSend_valueForKey_(v85);
                        if ([v92 isNSString])
                        {
                          v92 = [_PFRoutines sanitize:v92];
                        }

                        if (!v91)
                        {
                          goto LABEL_193;
                        }

                        v93 = v91[24];
                        if (v93 == 7)
                        {
                          v97 = [v87 objectAtIndex:v89];
                          v98 = [v91 destinationEntity];
                          if (*(v91 + 9))
                          {
                            v99 = [v87 objectAtIndex:++v89];
                            if (v192)
                            {
                              v100 = v192->super._sqlCore;
                            }

                            else
                            {
                              v100 = 0;
                            }

                            v98 = -[NSSQLModel entityForID:](-[NSSQLCore model](v100, "model"), "entityForID:", [v99 longValue]);
                          }

                          v101 = v98;
                          v102 = [v97 longLongValue];
                          if (v192)
                          {
                            v103 = [(NSSQLCore *)v192->super._sqlCore newObjectIDForEntity:v101 pk:v102];
                          }

                          else
                          {
                            v103 = 0;
                          }

                          v94 = v103;
                          v92 = [v92 objectID];
                        }

                        else
                        {
                          if (v93 == 1)
                          {
                            v94 = [v87 objectAtIndex:v89];
                            goto LABEL_205;
                          }

LABEL_193:
                          v95 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                          {
                            *v224 = 138412290;
                            *&v224[4] = v91;
                            _os_log_error_impl(&dword_18565F000, v95, OS_LOG_TYPE_ERROR, "CoreData: fault: Unsupported unique attribute type: %@\n", v224, 0xCu);
                          }

                          v96 = _PFLogGetLogStream(17);
                          if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
                          {
                            *v224 = 138412290;
                            *&v224[4] = v91;
                            _os_log_fault_impl(&dword_18565F000, v96, OS_LOG_TYPE_FAULT, "CoreData: Unsupported unique attribute type: %@", v224, 0xCu);
                          }

                          v94 = 0;
                        }

LABEL_205:
                        if (![v92 isEqual:v94])
                        {
                          goto LABEL_234;
                        }

                        ++v89;
                        if (v74 == ++v88)
                        {
                          goto LABEL_211;
                        }

                        continue;
                      }
                    }

LABEL_239:
                    ;
                  }

                  v166 = [v162 countByEnumeratingWithState:&v197 objects:v230 count:16];
                }

                while (v166);
              }
            }

LABEL_242:
            v68 = v160 + 1;
          }

          while (v160 + 1 != v156);
          v123 = [v146 countByEnumeratingWithState:&v208 objects:v232 count:16];
          v156 = v123;
        }

        while (v123);
      }

      objc_autoreleasePoolPop(v138);
      ++v142;
    }

    while (v142 != v144);
    v124 = [obj countByEnumeratingWithState:&v212 objects:v233 count:16];
    v144 = v124;
  }

  while (v124);
LABEL_252:
  v125 = v171;
  [v135 drain];
  if (!v192 || !v192->super._error)
  {
    v126 = v154;
    if (v154 && (v127 = [v154 count], v126 = v154, v127))
    {
      if (v125)
      {
        v128 = [v125 count];
        v126 = v154;
        if (v128)
        {
          v129 = v154;
          v62 = [v154 mutableCopy];
          [v62 addObjectsFromArray:v125];
          v130 = v62;
          goto LABEL_263;
        }
      }

      v129 = v126;
      v131 = v126;
    }

    else
    {
      v129 = v126;
      v131 = v125;
    }

    v62 = v131;
LABEL_263:

    if (v132)
    {
    }

    return v62;
  }

LABEL_136:
  return 0;
}

void sub_1856D92F8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1856D9304);
}

id faultRowWithObjectID(uint64_t a1, NSSQLObjectFaultRequestContext *a2)
{
  v3 = [(NSSQLStoreRequestContext *)a2 createNestedObjectFaultContextForObjectWithID:a1];
  v4 = v3;
  if (v3)
  {
    v3->_forConflictAnalysis = 1;
  }

  if (a2)
  {
    connection = a2->super._connection;
  }

  else
  {
    connection = 0;
  }

  [(NSSQLStoreRequestContext *)v3 setConnection:?];
  v7 = _executeNewRowValuesForObjectFaultRequest(v4);
  if (!v7)
  {
    if (v4)
    {
      error = v4->super._error;
      if (a2)
      {
LABEL_8:
        objc_setProperty_nonatomic(a2, v6, error, 40);
        v7 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      error = 0;
      if (a2)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

LABEL_9:
  [(NSSQLStoreRequestContext *)v4 setConnection:?];

  return v7;
}

NSKnownKeysDictionary *_newObjectGraphStyleForSQLRow(void *a1, void *a2)
{
  if (a1)
  {
    v5 = [a2 entity];
    v6 = [a2 managedObjectContext];
    if (a2)
    {
      v7 = _insertion_fault_handler;
    }

    else
    {
      v7 = 0;
    }

    v8 = [NSKnownKeysDictionary alloc];
    if (v5)
    {
      v9 = *(v5 + 104);
    }

    else
    {
      v9 = 0;
    }

    v12 = [(NSKnownKeysDictionary *)v8 initWithSearchStrategy:v9];
    v13 = [(NSKnownKeysDictionary *)v12 values];
    v14 = [a1 knownKeyValuesPointer];
    v34 = v12;
    v15 = [(NSKnownKeysMappingStrategy *)[(NSKnownKeysDictionary *)v12 mapping] keys];
    v16 = [MEMORY[0x1E695DFB0] null];
    v17 = *(v5 + 112);
    v18 = v17[6];
    v19 = v17[7];
    if (v18 < v19 + v18)
    {
      v32 = v15;
      v33 = v13;
      v20 = (v13 + 8 * v18);
      v21 = v15 + 8 * v18;
      v22 = (v14 + 8 * v18);
      do
      {
        if (v14)
        {
          v23 = *v22;
        }

        else
        {
          v23 = objc_msgSend_valueForKey_(a1);
        }

        v24 = v16;
        if (v23)
        {
          v24 = v23;
        }

        *v20++ = v24;
        v21 += 8;
        ++v22;
        --v19;
      }

      while (v19);
      v17 = *(v5 + 112);
      v15 = v32;
      v13 = v33;
    }

    v25 = v17[12];
    v26 = v17[13];
    if (v25 < v26 + v25)
    {
      v27 = (v13 + 8 * v25);
      v28 = v15 + 8 * v25;
      v29 = (v14 + 8 * v25);
      do
      {
        if (v14)
        {
          v30 = *v29;
        }

        else
        {
          v30 = objc_msgSend_valueForKey_(a1);
        }

        v31 = v16;
        if (v30)
        {
          if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
          {
            v31 = v30;
          }

          else
          {
            v31 = [NSManagedObjectContext _retainedObjectWithID:v6 optionalHandler:v30 withInlineStorage:v7];
          }
        }

        *v27++ = v31;
        v28 += 8;
        ++v29;
        --v26;
      }

      while (v26);
    }

    return v34;
  }

  else
  {
    v10 = MEMORY[0x1E695DF20];

    return objc_alloc_init(v10);
  }
}

void _NSPersistentHistoryBatchDeleteUpdateTrigger(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v5 = sqlite3_user_data(a1);
  v6 = sqlite3_value_int64(*a3);
  v7 = sqlite3_value_text(a3[1]);
  v8 = _sqlCoreLookupSQLEntityForEntityID([objc_msgSend(v5 "adapter")], v6);
  v9 = +[_NSPersistentHistoryChange _propertyDataForEntity:withSetOfPropertyNames:](_NSPersistentHistoryChange, v8, [MEMORY[0x1E695DFD8] setWithObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v7)}]);
  v10 = [v9 length];
  v11 = sqlite3_malloc(v10);
  if (!v11)
  {
    sqlite3_result_error(a1, "NSPersistentHistoryBatchDeleteUpdateTrigger: malloc failure", 1);
  }

  [v9 getBytes:v11 length:v10];

  v12 = MEMORY[0x1E69E59A0];

  sqlite3_result_blob(a1, v11, v10, v12);
}

const void *_sqlCoreLookupSQLEntityForEntityID(void *a1, unint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = _sqlEntityForEntityID([a1 model], a2);
  if (!v4)
  {
    v5 = [a1 ancillarySQLModels];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = _sqlEntityForEntityID([v5 objectForKey:*(*(&v12 + 1) + 8 * i)], a2);
          if (v10)
          {
            v4 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
LABEL_12:
  }

  return v4;
}

id NSManagedObjectContext.count<A>(for:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  result = [v1 countForFetchRequest:a1 error:v6];
  v3 = v6[0];
  if (v6[0])
  {
    v4 = result;
    swift_willThrow();
    v5 = v3;
    return v4;
  }

  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributeDescription.AttributeType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1856DA824()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_1856DA85C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 expressionResultType];
  *a2 = result;
  return result;
}

uint64_t sub_1856DA8A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1856DA8F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1856DA92C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1856DA9C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1856DAA18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_1856DAA30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attributeType];
  *a2 = result;
  return result;
}

uint64_t DefaultCodableAdapterFactory.name.getter()
{
  v0 = sub_1856DAA04();

  return v0;
}

NSManagedObjectID_optional __swiftcall NSPersistentStoreCoordinator.managedObjectID(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = static String._copying(_:)(countAndFlagsBits, object);
    v8 = v7;

    object = v8;
    if ((v8 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v12[0] = countAndFlagsBits;
    v12[1] = object & 0xFFFFFFFFFFFFFFLL;
    v6 = [v1 managedObjectIDFromUTF8String:v12 length:HIBYTE(object) & 0xF];
    goto LABEL_8;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((countAndFlagsBits & 0x1000000000000000) != 0)
  {
    v4 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
    v5 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
    if (!v11)
    {
      __break(1u);
      goto LABEL_12;
    }

    v4 = v11;
    v5 = v10;
  }

  v6 = [v1 managedObjectIDFromUTF8String:v4 length:v5];
LABEL_8:
  v9 = v6;

  v11 = v9;
LABEL_12:
  result.is_nil = v10;
  result.value.super.isa = v11;
  return result;
}

id NSPersistentStoreCoordinator.addPersistentStore(type:configuration:at:options:)(void *a1, uint64_t a2, void *a3, uint64_t a4, Class isa)
{
  v6 = v5;
  v18[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1865F8600](*a1, a1[1]);
  if (a3)
  {
    a3 = MEMORY[0x1865F8600](a2, a3);
  }

  URL._bridgeToObjectiveC()(v10);
  v13 = v12;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v18[0] = 0;
  v14 = [v6 addPersistentStoreWithType:v11 configuration:a3 URL:v13 options:isa error:v18];

  if (v14)
  {
    v15 = v18[0];
  }

  else
  {
    v16 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v14;
}

void static NSPersistentStoreCoordinator.registerStoreClass(_:type:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = swift_getObjCClassFromMetadata();
  v6 = MEMORY[0x1865F8600](v2, v3);
  [v5 registerStoreClass:ObjCClassFromMetadata forStoreType:v6];
}

id static NSPersistentStoreCoordinator.metadataForPersistentStore(type:at:options:)(void *a1, uint64_t a2, Class isa)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1865F8600](*a1, a1[1]);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v13[0] = 0;
  v8 = [swift_getObjCClassFromMetadata() metadataForPersistentStoreOfType:v4 URL:v7 options:isa error:v13];

  v9 = v13[0];
  if (v8)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v9;
  }

  else
  {
    v10 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v10;
}

id static NSPersistentStoreCoordinator.setMetadata(_:type:at:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, Class isa)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[1];
  if (a1)
  {
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  v8 = MEMORY[0x1865F8600](v5, v6);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v15[0] = 0;
  v12 = [swift_getObjCClassFromMetadata() setMetadata:v7.super.isa forPersistentStoreOfType:v8 URL:v11 options:isa error:v15];

  if (v12)
  {
    return v15[0];
  }

  v14 = v15[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id NSPersistentStoreCoordinator.migratePersistentStore(_:to:options:type:)(uint64_t a1, uint64_t a2, Class isa, uint64_t *a4)
{
  v5 = v4;
  v18 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v9 = a4[1];
  URL._bridgeToObjectiveC()(v18);
  v11 = v10;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v12 = MEMORY[0x1865F8600](v8, v9);
  v17 = 0;
  v13 = [v5 migratePersistentStore:a1 toURL:v11 options:isa withType:v12 error:&v17];

  if (v13)
  {
    v14 = v17;
  }

  else
  {
    v15 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v13;
}

id NSPersistentStoreCoordinator.destroyPersistentStore(at:type:options:)(uint64_t a1, uint64_t *a2, Class isa)
{
  v4 = v3;
  v15 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = a2[1];
  URL._bridgeToObjectiveC()(v15);
  v9 = v8;
  v10 = MEMORY[0x1865F8600](v6, v7);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14 = 0;
  v11 = [v4 destroyPersistentStoreAtURL:v9 withType:v10 options:isa error:&v14];

  if (v11)
  {
    return v14;
  }

  v13 = v14;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id NSPersistentStoreCoordinator.replacePersistentStore(at:destinationOptions:withPersistentStoreFrom:sourceOptions:type:)(uint64_t a1, Class isa, uint64_t a3, Class a4, uint64_t *a5)
{
  v6 = v5;
  v21 = *MEMORY[0x1E69E9840];
  v9 = *a5;
  v10 = a5[1];
  URL._bridgeToObjectiveC()(v21);
  v13 = v12;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  URL._bridgeToObjectiveC()(v11);
  v15 = v14;
  if (a4)
  {
    a4 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v16 = MEMORY[0x1865F8600](v9, v10);
  v20 = 0;
  v17 = [v6 replacePersistentStoreAtURL:v13 destinationOptions:isa withPersistentStoreFromURL:v15 sourceOptions:a4 storeType:v16 error:&v20];

  if (v17)
  {
    return v20;
  }

  v19 = v20;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t closure #1 in closure #1 in NSPersistentStoreCoordinator._rethrowsHelper_performAndWait<A>(fn:execute:rescue:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a5 - 8) + 56))(v12, 0, 1, a5);
  return (*(v9 + 40))(a1, v12, v8);
}

uint64_t closure #1 in closure #1 in NSPersistentStoreCoordinator._rethrowsHelper_perform<A>(_:rescue:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a1;
  v32 = type metadata accessor for Optional();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v26 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 56);
  v18 = v17(&v26 - v14, 1, 1, a4);
  v31(v18);
  v31 = v10;
  v19 = v32;
  v27 = *(v5 + 8);
  v28 = v5 + 8;
  v27(v15, v32);
  v17(v13, 0, 1, a4);
  v20 = v13;
  v21 = *(v5 + 32);
  v21(v15, v20, v19);
  v22 = v29;
  (*(v5 + 16))(v29, v15, v19);
  result = (*(v16 + 48))(v22, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v31;
    (*(v16 + 32))(v31, v22, a4);
    v17(v24, 0, 1, a4);
    v25 = v32;
    v21(*(*(v30 + 64) + 40), v24, v32);
    swift_continuation_throwingResume();
    return (v27)(v15, v25);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

uint64_t NSPersistentStoreCoordinator.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = *(a3 - 8);
  (*(v14 + 56))(&v20 - v12, 1, 1, a3);
  v30 = 0;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;
  v24 = a3;
  v25 = v13;
  v26 = partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error);
  v27 = v15;
  v28 = &v30;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in closure #1 in NSPersistentStoreCoordinator._rethrowsHelper_performAndWait<A>(fn:execute:rescue:);
  *(v16 + 24) = &v23;
  aBlock[4] = partial apply for thunk for @callee_guaranteed @Sendable () -> ();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v22 performBlockAndWait_];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v30)
  {
    swift_willThrow();
    return (*(v8 + 8))(v13, v7);
  }

  (*(v8 + 16))(v11, v13, v7);
  result = (*(v14 + 48))(v11, 1, a3);
  if (result == 1)
  {
    goto LABEL_10;
  }

  (*(v8 + 8))(v13, v7);
  return (*(v14 + 32))(v21, v11, a3);
}

uint64_t NSPersistentStoreCoordinator.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = type metadata accessor for Optional();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](NSPersistentStoreCoordinator.perform<A>(_:), 0, 0);
}

uint64_t NSPersistentStoreCoordinator.perform<A>(_:)()
{
  v1 = v0[26];
  v2 = *(v0[19] - 8);
  v0[27] = v2;
  (*(v2 + 56))(v1, 1, 1);

  return MEMORY[0x1EEE6DFA0](NSPersistentStoreCoordinator.perform<A>(_:), 0, 0);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[24];
  v6 = v0[20];
  v7 = v1[18];
  v8 = v1[19];
  v9 = v1[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = NSPersistentStoreCoordinator.perform<A>(_:);
  v10 = swift_continuation_init();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v10;
  v1[14] = partial apply for closure #1 in closure #1 in NSPersistentStoreCoordinator._rethrowsHelper_perform<A>(_:rescue:);
  v1[15] = v11;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v1[13] = &block_descriptor_9;
  v12 = _Block_copy(v4);

  [v6 performBlock_];
  _Block_release(v12);

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[21];
  v14 = *(v6 + 8);
  v15 = v0[19];
  v14(v2, v7);
  v1(v2, v4, v7);
  (*(v6 + 16))(v5, v2, v7);
  result = (*(v3 + 48))(v5, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[27];
    v10 = v0[23];
    v11 = v0[19];
    v12 = v0[16];
    v14(v0[26], v0[21]);
    (*(v9 + 32))(v12, v10, v11);

    v13 = v0[1];

    return v13();
  }

  return result;
}

uint64_t NSPersistentStoreCoordinator.perform<A>(_:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 224) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = NSPersistentStoreCoordinator.perform<A>(_:);
  }

  else
  {
    v6 = v2[24];
    v5 = v2[25];
    v7 = v2[21];
    v8 = v2[22];
    v9 = *(v8 + 32);
    v2[29] = v9;
    v2[30] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v5, v6, v7);
    v4 = NSPersistentStoreCoordinator.perform<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v2 = v1[26];
  v3 = v1[21];
  v4 = v1[22];
  swift_willThrow();
  (*(v4 + 8))(v2, v3);

  v5 = v1[1];

  return v5();
}

void NSPersistentStoreCoordinator.register<A>(_:forName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = [v7 codableAdapterRegistry];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCoreDataCodableAdapterRegistry();
  swift_dynamicCast();
  v14 = v17;
  v16[3] = type metadata accessor for DefaultCodableAdapterFactory(0, a4, a5, a6);
  v16[4] = &protocol witness table for DefaultCodableAdapterFactory<A>;
  v16[0] = a2;
  v16[1] = a3;
  v15 = *&v17[OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock];
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v15 + 24));
  partial apply for closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
  __swift_destroy_boxed_opaque_existential_1(v16);
}

void NSPersistentStoreCoordinator.register<A, B>(_:configurationProvider:forName:)(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _UNKNOWN **a9, uint64_t a10)
{
  v11 = v10;
  v18 = [v11 codableAdapterRegistry];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCoreDataCodableAdapterRegistry();
  swift_dynamicCast();
  v19 = v27;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v24 = type metadata accessor for DefaultCodableWithConfigurationAdapterFactory(0, &v21);
  v25 = &protocol witness table for DefaultCodableWithConfigurationAdapterFactory<A, B>;
  v21 = a3;
  v22 = a4;
  v20 = *&v19[OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock];
  swift_bridgeObjectRetain_n();
  os_unfair_lock_lock((v20 + 24));
  closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)partial apply((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));
  __swift_destroy_boxed_opaque_existential_1(&v21);
}

void NSPersistentStoreCoordinator.register(adapter:)(void *a1)
{
  v3 = [v1 codableAdapterRegistry];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCoreDataCodableAdapterRegistry();
  swift_dynamicCast();
  v4 = v12;
  v9 = *(a1 + 3);
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  v11 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  v8 = *&v4[OBJC_IVAR___NSCoreDataCodableAdapterRegistry__lock];
  os_unfair_lock_lock((v8 + 24));
  closure #1 in NSCoreDataCodableAdapterRegistry.register(adapter:)partial apply((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSExceptionName(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSExceptionName(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSExceptionName@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1865F8600](v2);

  *a1 = v3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSManagedObjectContextConcurrencyType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F8820](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSManagedObjectContextConcurrencyType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865F8820](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSExceptionName@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1865F8600](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSExceptionName@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSExceptionName(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSManagedObjectContextConcurrencyType and conformance NSManagedObjectContextConcurrencyType(&lazy protocol witness table cache variable for type NSExceptionName and conformance NSExceptionName, type metadata accessor for NSExceptionName, &protocol conformance descriptor for NSExceptionName);
  v3 = lazy protocol witness table accessor for type NSManagedObjectContextConcurrencyType and conformance NSManagedObjectContextConcurrencyType(&lazy protocol witness table cache variable for type NSExceptionName and conformance NSExceptionName, type metadata accessor for NSExceptionName, &protocol conformance descriptor for NSExceptionName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSExceptionName()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1865F86B0](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSExceptionName(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSExceptionName(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSExceptionName(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1865F8680](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for NSExceptionName(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSManagedObjectContextConcurrencyType and conformance NSManagedObjectContextConcurrencyType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id NSMigrationManager.migrateStore(from:type:options:mapping:to:type:options:)(uint64_t a1, uint64_t *a2, Class isa, uint64_t a4, uint64_t a5, uint64_t *a6, Class a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v9 = a2[1];
  v11 = *a6;
  v12 = a6[1];
  URL._bridgeToObjectiveC()(v26);
  v14 = v13;
  v16 = MEMORY[0x1865F8600](v10, v9);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  URL._bridgeToObjectiveC()(v15);
  v18 = v17;
  v19 = MEMORY[0x1865F8600](v11, v12);
  if (a7)
  {
    a7 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v25 = 0;
  v20 = [v23 migrateStoreFromURL:v14 type:v16 options:isa withMappingModel:a4 toDestinationURL:v18 destinationType:v19 destinationOptions:a7 error:&v25];

  if (v20)
  {
    return v25;
  }

  v22 = v25;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id NSExpressionDescription.resultType.getter@<X0>(void *a1@<X8>)
{
  result = [v1 expressionResultType];
  *a1 = result;
  return result;
}

id (*NSExpressionDescription.resultType.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 expressionResultType];
  return NSExpressionDescription.resultType.modify;
}

NSLightweightMigrationStage __swiftcall NSLightweightMigrationStage.init(_:)(Swift::OpaquePointer a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithVersionChecksums_];

  v7 = v3;
  result._subsequentStage = v6;
  result._versionChecksums = v5;
  result.super._label = v4;
  result.super.super.isa = v7;
  return result;
}

char *NSManagedObjectContext.fetch(_:)(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v2 = [v1 executeRequest:a1 error:v11];
  v3 = v11[0];
  if (!v2)
  {
    v10 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v3;
  }

  v4 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v6 = v3;
  result = [v5 finalResult];
  if (result)
  {
    v8 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSFetchRequestResult_pMd, &_sSo20NSFetchRequestResult_pMR);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = specialized _arrayForceCast<A, B>(_:)(v9);

    return v3;
  }

  __break(1u);
  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x1865F8770](a1);
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((v1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1865F8730](i, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSFetchRequestResult_pMd, &_sSo20NSFetchRequestResult_pMR);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = v1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20NSFetchRequestResult_pMd, &_sSo20NSFetchRequestResult_pMR);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        outlined init with take of Any(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for willSaveObjectsNotification()
{
  result = MEMORY[0x1865F8600](0xD00000000000002CLL, 0x800000018592EFE0);
  static NSManagedObjectContext.willSaveObjectsNotification = result;
  return result;
}

uint64_t one-time initialization function for didChangeObjectsNotification()
{
  result = MEMORY[0x1865F8600](0xD00000000000002DLL, 0x800000018592EF80);
  static NSManagedObjectContext.didChangeObjectsNotification = result;
  return result;
}

uint64_t NSManagedObjectContext.NotificationKey.init(rawValue:)@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of NSManagedObjectContext.NotificationKey.init(rawValue:), v3);

  v7 = 12;
  if (v5 < 0xC)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t NSManagedObjectContext.NotificationKey.rawValue.getter()
{
  v1 = 0x6164696C61766E69;
  v2 = *v0;
  if (v2 > 5)
  {
    v6 = 0xD000000000000013;
    if (v2 != 10)
    {
      v6 = 0xD000000000000015;
    }

    if (v2 == 9)
    {
      v6 = 0xD000000000000011;
    }

    if (v2 == 7)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (v2 != 6)
    {
      v1 = v7;
    }

    if (*v0 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0x64657461647075;
    v4 = 0x646574656C6564;
    if (v2 != 4)
    {
      v4 = 0x6568736572666572;
    }

    if (v2 != 3)
    {
      v3 = v4;
    }

    if (v2 != 1)
    {
      v1 = 0x6465747265736E69;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000012;
    }

    if (*v0 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSManagedObjectContext.NotificationKey()
{
  v0 = NSManagedObjectContext.NotificationKey.rawValue.getter();
  v2 = v1;
  if (v0 == NSManagedObjectContext.NotificationKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSManagedObjectContext.NotificationKey()
{
  Hasher.init(_seed:)();
  NSManagedObjectContext.NotificationKey.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSManagedObjectContext.NotificationKey(uint64_t a1)
{
  NSManagedObjectContext.NotificationKey.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSManagedObjectContext.NotificationKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  NSManagedObjectContext.NotificationKey.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSManagedObjectContext.NotificationKey@<X0>(uint64_t *a1@<X8>)
{
  result = NSManagedObjectContext.NotificationKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int NSManagedObjectContext.ScheduledTaskType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F8820](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSManagedObjectContext.ScheduledTaskType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F8820](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSManagedObjectContext.ScheduledTaskType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1865F8820](v2);
  return Hasher._finalize()();
}

id NSManagedObjectContext.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithConcurrencyType_];
}

uint64_t closure #1 in closure #1 in NSManagedObjectContext._rethrowsHelper_performAndWait<A>(fn:execute:rescue:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a5 - 8) + 56))(v12, 0, 1, a5);
  return (*(v9 + 40))(a1, v12, v8);
}

uint64_t closure #1 in closure #1 in NSManagedObjectContext._rethrowsHelper_perform_enqueued<A>(_:rescue:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a1;
  v32 = type metadata accessor for Optional();
  v5 = *(v32 - 8);
  v6 = MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v26 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 56);
  v18 = v17(&v26 - v14, 1, 1, a4);
  v31(v18);
  v31 = v10;
  v19 = v32;
  v27 = *(v5 + 8);
  v28 = v5 + 8;
  v27(v15, v32);
  v17(v13, 0, 1, a4);
  v20 = v13;
  v21 = *(v5 + 32);
  v21(v15, v20, v19);
  v22 = v29;
  (*(v5 + 16))(v29, v15, v19);
  result = (*(v16 + 48))(v22, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = v31;
    (*(v16 + 32))(v31, v22, a4);
    v17(v24, 0, 1, a4);
    v25 = v32;
    v21(*(*(v30 + 64) + 40), v24, v32);
    swift_continuation_throwingResume();
    return (v27)(v15, v25);
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t closure #1 in NSManagedObjectContext.perform<A>(schedule:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-v10];
  v12 = swift_projectBox();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;

  partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)();
  (*(*(a5 - 8) + 56))(v11, 0, 1, a5);
  swift_beginAccess();
  (*(v9 + 40))(v12, v11, v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSManagedObjectContext.NotificationKey and conformance NSManagedObjectContext.NotificationKey()
{
  result = lazy protocol witness table cache variable for type NSManagedObjectContext.NotificationKey and conformance NSManagedObjectContext.NotificationKey;
  if (!lazy protocol witness table cache variable for type NSManagedObjectContext.NotificationKey and conformance NSManagedObjectContext.NotificationKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSManagedObjectContext.NotificationKey and conformance NSManagedObjectContext.NotificationKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSManagedObjectContext.ConcurrencyType and conformance NSManagedObjectContext.ConcurrencyType()
{
  result = lazy protocol witness table cache variable for type NSManagedObjectContext.ConcurrencyType and conformance NSManagedObjectContext.ConcurrencyType;
  if (!lazy protocol witness table cache variable for type NSManagedObjectContext.ConcurrencyType and conformance NSManagedObjectContext.ConcurrencyType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSManagedObjectContext.ConcurrencyType and conformance NSManagedObjectContext.ConcurrencyType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSManagedObjectContext.ScheduledTaskType and conformance NSManagedObjectContext.ScheduledTaskType()
{
  result = lazy protocol witness table cache variable for type NSManagedObjectContext.ScheduledTaskType and conformance NSManagedObjectContext.ScheduledTaskType;
  if (!lazy protocol witness table cache variable for type NSManagedObjectContext.ScheduledTaskType and conformance NSManagedObjectContext.ScheduledTaskType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSManagedObjectContext.ScheduledTaskType and conformance NSManagedObjectContext.ScheduledTaskType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NSManagedObjectContext.NotificationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NSManagedObjectContext.NotificationKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NSManagedObjectContext.ConcurrencyType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSManagedObjectContext.ConcurrencyType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NSManagedObjectContext.ScheduledTaskType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NSManagedObjectContext.ScheduledTaskType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double CocoaError.validationObject.getter@<D0>(_OWORD *a2@<X8>)
{
  return CocoaError.validationObject.getter(a2);
}

{
  type metadata accessor for CocoaError();
  lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  v3 = _BridgedStoredNSError.userInfo.getter();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v6, a2);

  return result;
}

unint64_t lazy protocol witness table accessor for type CocoaError and conformance CocoaError()
{
  result = lazy protocol witness table cache variable for type CocoaError and conformance CocoaError;
  if (!lazy protocol witness table cache variable for type CocoaError and conformance CocoaError)
  {
    type metadata accessor for CocoaError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CocoaError and conformance CocoaError);
  }

  return result;
}

uint64_t CocoaError.validationKey.getter()
{
  type metadata accessor for CocoaError();
  lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  outlined init with copy of Any(*(v0 + 56) + 32 * v3, v8);

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t CocoaError.validationPredicate.getter()
{
  type metadata accessor for CocoaError();
  lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  v0 = _BridgedStoredNSError.userInfo.getter();
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Any(*(v0 + 56) + 32 * v3, v8);

  type metadata accessor for NSPredicate();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t CocoaError.affectedStores.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  type metadata accessor for CocoaError();
  lazy protocol witness table accessor for type CocoaError and conformance CocoaError();
  v5 = _BridgedStoredNSError.userInfo.getter();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v5 + 16))
  {

    goto LABEL_7;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v8, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t type metadata accessor for NSPredicate()
{
  result = lazy cache variable for type metadata for NSPredicate;
  if (!lazy cache variable for type metadata for NSPredicate)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSPredicate);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id _PFExampleClass.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for _PFExampleClass();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t NSPersistentStore.StoreType.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NSPersistentStore.StoreType.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NSPersistentStore.StoreType.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSPersistentStore.StoreType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSPersistentStore.StoreType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSPersistentStore.StoreType(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance NSPersistentStore.StoreType@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NSPersistentStore.StoreType@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t one-time initialization function for sqlite()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSPersistentStore.StoreType.sqlite = result;
  unk_1EA8C69B0 = v1;
  return result;
}

uint64_t one-time initialization function for binary()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSPersistentStore.StoreType.binary = result;
  unk_1EA8C6B80 = v1;
  return result;
}

uint64_t one-time initialization function for inMemory()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSPersistentStore.StoreType.inMemory = result;
  unk_1EA8C6B90 = v1;
  return result;
}

uint64_t one-time initialization function for xpc()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static NSPersistentStore.StoreType.xpc = result;
  unk_1EA8C6BA0 = v1;
  return result;
}

uint64_t static NSPersistentStore.StoreType.sqlite.getter@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;
}

unint64_t lazy protocol witness table accessor for type NSPersistentStore.StoreType and conformance NSPersistentStore.StoreType()
{
  result = lazy protocol witness table cache variable for type NSPersistentStore.StoreType and conformance NSPersistentStore.StoreType;
  if (!lazy protocol witness table cache variable for type NSPersistentStore.StoreType and conformance NSPersistentStore.StoreType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSPersistentStore.StoreType and conformance NSPersistentStore.StoreType);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NSPersistentStore.StoreType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NSPersistentStore.StoreType(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id NSFetchRequest.__allocating_init(entityName:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x1865F8600](a1, a2);

  v6 = [v4 initWithEntityName_];

  return v6;
}

double NSManagedObject.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = MEMORY[0x1865F8600]();
  v4 = [v1 valueForKey_];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double key path getter for NSManagedObject.subscript(_:) : NSManagedObject@<D0>(void **a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  v5 = MEMORY[0x1865F8600](*a2, a2[1]);
  v6 = [v4 valueForKey_];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t key path setter for NSManagedObject.subscript(_:) : NSManagedObject(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  outlined init with copy of Any?(a1, v6);

  return NSManagedObject.subscript.setter(v6, v4, v3);
}

uint64_t NSManagedObject.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v19);
  v7 = v20;
  if (!v20)
  {
    v14 = 0;
    goto LABEL_7;
  }

  v18 = a2;
  v8 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v17[2] = v17;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = *(v9 + 16);
  v12(v17 - v11);
  result = _swift_isClassOrObjCExistentialType();
  if ((result & 1) == 0)
  {
    v17[1] = v17;
    MEMORY[0x1EEE9AC00](result);
    (v12)(v17 - v11, v17 - v11, v7);
    v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    (*(v9 + 8))(v17 - v11, v7);
    goto LABEL_5;
  }

  if (v10 == 8)
  {
    v14 = *(v17 - v11);
    v15 = *(v9 + 8);
    swift_unknownObjectRetain();
    v15(v17 - v11, v7);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v19);
    a2 = v18;
LABEL_7:
    v16 = MEMORY[0x1865F8600](a2, a3);

    [v3 setValue:v14 forKey:v16];
    swift_unknownObjectRelease();

    return outlined destroy of Any?(a1);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*NSManagedObject.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = v4;
  v8[8] = a2;
  v10 = MEMORY[0x1865F8600](a2, a3);
  v11 = [v4 valueForKey_];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  *v9 = v13;
  v9[1] = v14;
  return NSManagedObject.subscript.modify;
}

void NSManagedObject.subscript.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    outlined init with copy of Any?(*a1, v2 + 32);

    NSManagedObject.subscript.setter(v2 + 32, v4, v3);
    outlined destroy of Any?(v2);
  }

  else
  {

    NSManagedObject.subscript.setter(v2, v4, v3);
  }

  free(v2);
}

void __swiftcall NSCustomMigrationStage.init(migratingFrom:to:)(NSCustomMigrationStage *__return_ptr retstr, NSManagedObjectModelReference *migratingFrom, NSManagedObjectModelReference *to)
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCurrentModelReference:migratingFrom nextModelReference:to];
}

uint64_t (*NSCustomMigrationStage.willMigrateHandler.getter())(uint64_t a1, uint64_t a2)
{
  result = [v0 willMigrateHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    *(v4 + 24) = v3;
    return closure #1 in NSCustomMigrationStage.willMigrateHandler.getterpartial apply;
  }

  return result;
}

uint64_t (*key path getter for NSCustomMigrationStage.willMigrateHandler : NSCustomMigrationStage@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 willMigrateHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)partial apply;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    *(result + 2) = closure #1 in NSCustomMigrationStage.willMigrateHandler.getterpartial apply;
    *(result + 3) = v6;
    v7 = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage) -> (@error @owned Error)partial apply;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

id key path setter for NSCustomMigrationStage.willMigrateHandler : NSCustomMigrationStage(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = thunk for @escaping @callee_guaranteed (@in_guaranteed NSStagedMigrationManager, @in_guaranteed NSCustomMigrationStage) -> (@out (), @error @owned Error)partial apply;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  _sxq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySo24NSStagedMigrationManagerCSo08NSCustomC5StageCytIsegnnrzo_SgWOy(v1, v2);
  return NSCustomMigrationStage.willMigrateHandler.setter(v4, v3);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a3;
  LOBYTE(a4) = v7(v8, v9, a4);

  return a4 & 1;
}

void (*NSCustomMigrationStage.willMigrateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 willMigrateHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v6 = swift_allocObject();
    v6[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)partial apply;
    v6[3] = v8;
    v9 = closure #1 in NSCustomMigrationStage.willMigrateHandler.getterpartial apply;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 48) = v9;
  *(v5 + 56) = v6;
  return NSCustomMigrationStage.willMigrateHandler.modify;
}

void NSCustomMigrationStage.willMigrateHandler.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 64);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = closure #1 in NSCustomMigrationStage.willMigrateHandler.setterpartial apply;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
      v2[3] = &block_descriptor_13;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setWillMigrateHandler_];
      _Block_release(v7);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v3, v5);
    }

    else
    {
      [*(*a1 + 64) setWillMigrateHandler_];
    }

    v11 = v2[6];
    v12 = v2[7];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = closure #1 in NSCustomMigrationStage.willMigrateHandler.setterpartial apply;
    v2[5] = v9;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    v2[3] = &block_descriptor_20;
    v10 = _Block_copy(v2);

    [v4 setWillMigrateHandler_];
    _Block_release(v10);
    v11 = v3;
    v12 = v8;
LABEL_8:
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v11, v12);
    goto LABEL_9;
  }

  [*(*a1 + 64) setWillMigrateHandler_];
LABEL_9:

  free(v2);
}

uint64_t (*NSCustomMigrationStage.didMigrateHandler.getter())(uint64_t a1, uint64_t a2)
{
  result = [v0 didMigrateHandler];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)partial apply;
    *(v4 + 24) = v3;
    return partial apply for closure #1 in NSCustomMigrationStage.didMigrateHandler.getter;
  }

  return result;
}

uint64_t (*key path getter for NSCustomMigrationStage.didMigrateHandler : NSCustomMigrationStage@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = [*a1 didMigrateHandler];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)partial apply;
    *(v6 + 24) = v5;
    result = swift_allocObject();
    *(result + 2) = closure #1 in NSCustomMigrationStage.willMigrateHandler.getterpartial apply;
    *(result + 3) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage) -> (@error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

id key path setter for NSCustomMigrationStage.didMigrateHandler : NSCustomMigrationStage(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed NSStagedMigrationManager, @in_guaranteed NSCustomMigrationStage) -> (@out (), @error @owned Error);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  _sxq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySo24NSStagedMigrationManagerCSo08NSCustomC5StageCytIsegnnrzo_SgWOy(v1, v2);
  return NSCustomMigrationStage.didMigrateHandler.setter(v4, v3);
}

id NSCustomMigrationStage.willMigrateHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = v6;
  if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v17[4] = a4;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    v17[3] = a5;
    v14 = _Block_copy(v17);

    [v8 *a6];
    _Block_release(v14);
    return outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(a1, a2);
  }

  else
  {
    v16 = *a6;

    return [v6 v16];
  }
}

void (*NSCustomMigrationStage.didMigrateHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 didMigrateHandler];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v6 = swift_allocObject();
    v6[2] = thunk for @escaping @callee_unowned @convention(block) (@unowned NSStagedMigrationManager, @unowned NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool)partial apply;
    v6[3] = v8;
    v9 = closure #1 in NSCustomMigrationStage.willMigrateHandler.getterpartial apply;
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 48) = v9;
  *(v5 + 56) = v6;
  return NSCustomMigrationStage.didMigrateHandler.modify;
}

void NSCustomMigrationStage.didMigrateHandler.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 64);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = closure #1 in NSCustomMigrationStage.willMigrateHandler.setterpartial apply;
      v2[5] = v6;
      *v2 = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
      v2[3] = &block_descriptor_49;
      v7 = _Block_copy(v2);
      swift_retain_n();

      [v4 setDidMigrateHandler_];
      _Block_release(v7);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v3, v5);
    }

    else
    {
      [*(*a1 + 64) setDidMigrateHandler_];
    }

    v11 = v2[6];
    v12 = v2[7];
    goto LABEL_8;
  }

  if (v3)
  {
    v8 = v2[7];
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v2[4] = closure #1 in NSCustomMigrationStage.willMigrateHandler.setterpartial apply;
    v2[5] = v9;
    *v2 = MEMORY[0x1E69E9820];
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed NSStagedMigrationManager, @guaranteed NSCustomMigrationStage, @unowned AutoreleasingUnsafeMutablePointer<NSError?>?) -> (@unowned Bool);
    v2[3] = &block_descriptor_56;
    v10 = _Block_copy(v2);

    [v4 setDidMigrateHandler_];
    _Block_release(v10);
    v11 = v3;
    v12 = v8;
LABEL_8:
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> ())?(v11, v12);
    goto LABEL_9;
  }

  [*(*a1 + 64) setDidMigrateHandler_];
LABEL_9:

  free(v2);
}

uint64_t _sxq_q0_s5Error_pRi_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lySo24NSStagedMigrationManagerCSo08NSCustomC5StageCytIsegnnrzo_SgWOy(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed NSStagedMigrationManager, @in_guaranteed NSCustomMigrationStage) -> (@out (), @error @owned Error)(uint64_t a1, uint64_t a2)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed NSStagedMigrationManager, @in_guaranteed NSCustomMigrationStage) -> (@out (), @error @owned Error)(a1, a2);
}

{
  v5 = a2;
  v3 = *(v2 + 16);
  v6 = a1;
  return v3(&v6, &v5);
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

void static NSPersistentContainer.defaultDirectoryURL.getter()
{
  v0 = [swift_getObjCClassFromMetadata() defaultDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t NSPersistentContainer.performBackgroundTask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Optional();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](NSPersistentContainer.performBackgroundTask<A>(_:), 0, 0);
}

uint64_t NSPersistentContainer.performBackgroundTask<A>(_:)()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v3 - 8);
  *(v0 + 96) = v6;
  v8 = v6 + 56;
  v7 = *(v6 + 56);
  *(v0 + 104) = v7;
  *(v0 + 112) = v8 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v3);
  v9 = [v2 newBackgroundContext];
  *(v0 + 120) = v9;
  v10 = swift_allocObject();
  *(v0 + 128) = v10;
  v10[2] = v3;
  v10[3] = v5;
  v10[4] = v4;
  v10[5] = v9;
  *(v0 + 152) = 0;

  v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = NSPersistentContainer.performBackgroundTask<A>(_:);
  v12 = *(v0 + 80);
  v13 = *(v0 + 40);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v12, (v0 + 152), partial apply for closure #1 in NSPersistentContainer._rethrowsHelper_performTask<A>(execute:rescue:), v10, v13);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = NSPersistentContainer.performBackgroundTask<A>(_:);
  }

  else
  {
    v2 = NSPersistentContainer.performBackgroundTask<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  v17 = *(v7 + 8);
  v17(v2, v6);
  v1(v4, 0, 1, v8);
  (*(v7 + 32))(v2, v4, v6);
  (*(v7 + 16))(v5, v2, v6);
  result = (*(v3 + 48))(v5, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);

    v17(v10, v13);
    (*(v11 + 32))(v15, v12, v14);

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}