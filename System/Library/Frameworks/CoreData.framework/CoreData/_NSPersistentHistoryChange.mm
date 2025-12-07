@interface _NSPersistentHistoryChange
+ (CFMutableSetRef)_updatedPropertiesForEntity:(void *)entity andData:;
+ (id)_mergeOldMask:(void *)mask andNewMask:;
+ (void)_dataMaskForEntity:(const __CFBitVector *)entity andDeltaMask:;
+ (void)_propertyDataForEntity:(void *)entity withSetOfPropertyNames:;
- (_NSPersistentHistoryChange)initWithCoder:(id)coder;
- (_NSPersistentHistoryChange)initWithDictionary:(id)dictionary andChangeObjectID:(id)d;
- (_NSPersistentHistoryChange)initWithManagedObject:(id)object;
- (id)updatedProperties;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSPersistentHistoryChange

- (id)updatedProperties
{
  columns = self->_columns;
  if (!columns)
  {
    return 0;
  }

  sqlEntity = self->_sqlEntity;
  if (!sqlEntity)
  {
    return 0;
  }

  v4 = [_NSPersistentHistoryChange _updatedPropertiesForEntity:columns andData:?];

  return v4;
}

- (void)dealloc
{
  self->_changedObjectID = 0;

  self->_tombstone = 0;
  self->_columns = 0;

  self->_sqlEntity = 0;
  self->_backingObjectID = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryChange;
  [(_NSPersistentHistoryChange *)&v3 dealloc];
}

- (_NSPersistentHistoryChange)initWithManagedObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  if (object && (v5 = *(object + 6)) != 0)
  {
    v6 = *(v5 + 16);
    v7 = objc_msgSend_valueForKey_(v6, a2, @"CHANGETYPE");
  }

  else
  {
    v6 = 0;
    v7 = objc_msgSend_valueForKey_(0, a2, @"CHANGETYPE");
  }

  if (!v7 || ![object objectID])
  {
    v16.receiver = self;
    v16.super_class = _NSPersistentHistoryChange;
    v11 = [(_NSPersistentHistoryChange *)&v16 init];
    if (!v11)
    {
      return v11;
    }

    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v13 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        if (v15)
        {
          *buf = 138412290;
          objectCopy2 = object;
LABEL_19:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _NSPersistentHistoryChange was created with an empty MO - %@\n", buf, 0xCu);
        }
      }

      else if (v15)
      {
        *buf = 138412290;
        objectCopy2 = object;
        goto LABEL_19;
      }
    }

    _NSCoreDataLog_console(1, "_NSPersistentHistoryChange was created with an empty MO - %@", object);
    objc_autoreleasePoolPop(v12);
    return v11;
  }

  v8 = [_NSPersistentHistoryChange alloc];
  objectID = [object objectID];

  return [(_NSPersistentHistoryChange *)v8 initWithDictionary:v6 andChangeObjectID:objectID];
}

- (_NSPersistentHistoryChange)initWithDictionary:(id)dictionary andChangeObjectID:(id)d
{
  dictionaryCopy = dictionary;
  v134 = *MEMORY[0x1E69E9840];
  v7 = [dictionary count];
  if (!d || !v7)
  {
    v121.receiver = self;
    v121.super_class = _NSPersistentHistoryChange;
    v39 = [(_NSPersistentHistoryChange *)&v121 init];
    if (!v39)
    {
      return v39;
    }

    v40 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v41 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v43 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v43)
        {
          *buf = 0;
LABEL_138:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: _NSPersistentHistoryChange was created with an empty changeDictionary or changeObjectID\n", buf, 2u);
        }
      }

      else if (v43)
      {
        *buf = 0;
        goto LABEL_138;
      }
    }

    _NSCoreDataLog_console(1, "_NSPersistentHistoryChange was created with an empty changeDictionary or changeObjectID");
    objc_autoreleasePoolPop(v40);
    return v39;
  }

  _referenceData64 = [d _referenceData64];
  unsignedIntegerValue = [objc_msgSend_valueForKey_(dictionaryCopy) unsignedIntegerValue];
  v10 = objc_msgSend_valueForKey_(dictionaryCopy);
  unsignedLongValue = [objc_msgSend_valueForKey_(dictionaryCopy) unsignedLongValue];
  longLongValue = [objc_msgSend_valueForKey_(dictionaryCopy) longLongValue];
  persistentStore = [d persistentStore];
  v115 = persistentStore;
  if (!persistentStore || (unsignedLongValue ? (v14 = longLongValue < 1) : (v14 = 1), v14))
  {
    v44 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      model = [(__CFString *)v115 model];
      if (model)
      {
        model = model[4];
      }

      v62 = objc_msgSend_valueForKey_(model);
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = @"<null>";
      }

      model2 = [(__CFString *)v115 model];
      if (model2)
      {
        model2 = model2[4];
      }

      v65 = objc_msgSend_valueForKey_(model2);
      *buf = 138413570;
      if (v65)
      {
        v66 = v65;
      }

      else
      {
        v66 = @"<null>";
      }

      v67 = v115;
      v123 = 0;
      if (!v115)
      {
        v67 = @"<null>";
      }

      v124 = 2048;
      v125 = unsignedLongValue;
      v126 = 2048;
      v127 = longLongValue;
      v128 = 2112;
      v129 = v63;
      v130 = 2112;
      v131 = v66;
      v132 = 2112;
      v133 = v67;
      _os_log_error_impl(&dword_18565F000, v44, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpectedly nil entry in: entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
    }

    v45 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
    {
      model3 = [(__CFString *)v115 model];
      if (model3)
      {
        model3 = model3[4];
      }

      v47 = objc_msgSend_valueForKey_(model3);
      if (v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = @"<null>";
      }

      model4 = [(__CFString *)v115 model];
      if (model4)
      {
        model4 = model4[4];
      }

      v50 = objc_msgSend_valueForKey_(model4);
      *buf = 138413570;
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v51 = @"<null>";
      }

      v52 = v115;
      v123 = 0;
      if (!v115)
      {
        v52 = @"<null>";
      }

      v124 = 2048;
      v125 = unsignedLongValue;
      v126 = 2048;
      v127 = longLongValue;
      v128 = 2112;
      v129 = v48;
      v130 = 2112;
      v131 = v51;
      v132 = 2112;
      v133 = v52;
      _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: Unexpectedly nil entry in: entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
    }
  }

  else
  {
    v15 = persistentStore;
    v16 = [-[__CFString model](persistentStore "model")];
    if (v16)
    {
      v116 = v16;
      v114 = [(__CFString *)v15 newObjectIDForEntity:v16 pk:longLongValue];
      if (!v114)
      {
        v17 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          model5 = [(__CFString *)v15 model];
          if (model5)
          {
            model5 = model5[4];
          }

          v95 = objc_msgSend_valueForKey_(model5);
          if (v95)
          {
            v96 = v95;
          }

          else
          {
            v96 = @"<null>";
          }

          model6 = [(__CFString *)v115 model];
          if (model6)
          {
            model6 = model6[4];
          }

          v98 = objc_msgSend_valueForKey_(model6);
          *buf = 138413570;
          if (v98)
          {
            v99 = v98;
          }

          else
          {
            v99 = @"<null>";
          }

          v123 = v116;
          v124 = 2048;
          v125 = unsignedLongValue;
          v126 = 2048;
          v127 = longLongValue;
          v128 = 2112;
          v129 = v96;
          v130 = 2112;
          v131 = v99;
          v132 = 2112;
          v15 = v115;
          v133 = v115;
          _os_log_error_impl(&dword_18565F000, v17, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected change - objectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
        }

        v18 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          model7 = [(__CFString *)v15 model];
          if (model7)
          {
            model7 = model7[4];
          }

          v101 = objc_msgSend_valueForKey_(model7);
          if (v101)
          {
            v102 = v101;
          }

          else
          {
            v102 = @"<null>";
          }

          model8 = [(__CFString *)v115 model];
          if (model8)
          {
            model8 = model8[4];
          }

          v104 = objc_msgSend_valueForKey_(model8);
          *buf = 138413570;
          if (v104)
          {
            v105 = v104;
          }

          else
          {
            v105 = @"<null>";
          }

          v123 = v116;
          v124 = 2048;
          v125 = unsignedLongValue;
          v126 = 2048;
          v127 = longLongValue;
          v128 = 2112;
          v129 = v102;
          v130 = 2112;
          v131 = v105;
          v132 = 2112;
          v133 = v115;
          _os_log_fault_impl(&dword_18565F000, v18, OS_LOG_TYPE_FAULT, "CoreData: Unexpected change - objectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
        }
      }

      if (unsignedIntegerValue == 2)
      {
        v19 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v116];
        if ([v19 count])
        {
          v110 = unsignedLongValue;
          v111 = longLongValue;
          v106 = _referenceData64;
          selfCopy = self;
          v108 = v10;
          dCopy = d;
          v117 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
          if ([v19 count])
          {
            v20 = 0;
            v21 = @"TOMBSTONE";
            v22 = 0x1E696A000uLL;
            do
            {
              context = objc_autoreleasePoolPush();
              v23 = objc_msgSend_stringWithFormat_(*(v22 + 3776), v21, v20);
              v24 = [dictionaryCopy objectForKey:v23];
              if (v24 != NSKeyValueCoding_NullValue)
              {
                v118 = [dictionaryCopy objectForKey:v23];
                if (v118)
                {
                  v25 = byte_1ED4BEECF;
                  v26 = [v19 objectAtIndexedSubscript:v20];
                  v27 = v26;
                  if (v25 == 1 && (v28 = [v26 containsString:@"."], v29 = objc_msgSend(v19, "objectAtIndexedSubscript:", v20), v27 = v29, v28))
                  {
                    v30 = [v29 componentsSeparatedByString:@"."];
                    if ([v30 count])
                    {
                      v31 = 0;
                      v32 = v117;
                      do
                      {
                        v33 = objc_autoreleasePoolPush();
                        v34 = [v30 objectAtIndex:v31];
                        if (v31 == [v30 count] - 1)
                        {
                          [v32 setObject:v118 forKey:v34];
                        }

                        else
                        {
                          if (![v32 objectForKey:v34])
                          {
                            v35 = v21;
                            v36 = dictionaryCopy;
                            v37 = v19;
                            v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
                            [v32 setObject:v38 forKey:v34];

                            v19 = v37;
                            dictionaryCopy = v36;
                            v21 = v35;
                            v22 = 0x1E696A000;
                          }

                          v32 = [v32 objectForKey:v34];
                        }

                        objc_autoreleasePoolPop(v33);
                        ++v31;
                      }

                      while ([v30 count] > v31);
                    }
                  }

                  else
                  {
                    [v117 setObject:v118 forKey:v27];
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              ++v20;
            }

            while (v20 < [v19 count]);
          }

          if (![v117 count])
          {

            v117 = 0;
          }

          v10 = v108;
          d = dCopy;
          _referenceData64 = v106;
          self = selfCopy;
          unsignedIntegerValue = 2;
          unsignedLongValue = v110;
          longLongValue = v111;
        }

        else
        {
          v117 = 0;
        }

        v56 = v114;

        v55 = 1;
      }

      else
      {
        v117 = 0;
        v55 = 1;
        v56 = v114;
      }

      goto LABEL_58;
    }

    v53 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      model9 = [(__CFString *)v15 model];
      if (model9)
      {
        model9 = model9[4];
      }

      v83 = objc_msgSend_valueForKey_(model9);
      if (v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = @"<null>";
      }

      model10 = [(__CFString *)v115 model];
      if (model10)
      {
        model10 = model10[4];
      }

      v86 = objc_msgSend_valueForKey_(model10);
      *buf = 134218754;
      if (v86)
      {
        v87 = v86;
      }

      else
      {
        v87 = @"<null>";
      }

      v123 = unsignedLongValue;
      v124 = 2112;
      v125 = v84;
      v126 = 2112;
      v127 = v87;
      v128 = 2112;
      v15 = v115;
      v129 = v115;
      _os_log_error_impl(&dword_18565F000, v53, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected change - entity ID (%ld) not found in model - %@ - %@, store - %@\n", buf, 0x2Au);
    }

    v54 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      model11 = [(__CFString *)v15 model];
      if (model11)
      {
        model11 = model11[4];
      }

      v89 = objc_msgSend_valueForKey_(model11);
      if (v89)
      {
        v90 = v89;
      }

      else
      {
        v90 = @"<null>";
      }

      model12 = [(__CFString *)v115 model];
      if (model12)
      {
        model12 = model12[4];
      }

      v92 = objc_msgSend_valueForKey_(model12);
      *buf = 134218754;
      if (v92)
      {
        v93 = v92;
      }

      else
      {
        v93 = @"<null>";
      }

      v123 = unsignedLongValue;
      v124 = 2112;
      v125 = v90;
      v126 = 2112;
      v127 = v93;
      v128 = 2112;
      v129 = v115;
      _os_log_fault_impl(&dword_18565F000, v54, OS_LOG_TYPE_FAULT, "CoreData: Unexpected change - entity ID (%ld) not found in model - %@ - %@, store - %@", buf, 0x2Au);
      v55 = 0;
      v116 = 0;
      v117 = 0;
      goto LABEL_57;
    }
  }

  v55 = 0;
  v116 = 0;
  v117 = 0;
LABEL_57:
  v56 = 0;
LABEL_58:
  if (!objc_opt_class())
  {
    v57 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      model13 = [(__CFString *)v115 model];
      v112 = longLongValue;
      if (model13)
      {
        model13 = model13[4];
      }

      v69 = objc_msgSend_valueForKey_(model13);
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = @"<null>";
      }

      model14 = [(__CFString *)v115 model];
      if (model14)
      {
        model14 = model14[4];
      }

      v72 = objc_msgSend_valueForKey_(model14);
      *buf = 138413570;
      if (v72)
      {
        v73 = v72;
      }

      else
      {
        v73 = @"<null>";
      }

      v74 = v115;
      v123 = v116;
      if (!v115)
      {
        v74 = @"<null>";
      }

      v124 = 2048;
      v125 = unsignedLongValue;
      v126 = 2048;
      v127 = v112;
      v128 = 2112;
      v129 = v70;
      longLongValue = v112;
      v130 = 2112;
      v131 = v73;
      v132 = 2112;
      v133 = v74;
      _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpectedly corrupt changedObjectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@\n", buf, 0x3Eu);
    }

    v58 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
    {
      model15 = [(__CFString *)v115 model];
      v113 = longLongValue;
      if (model15)
      {
        model15 = model15[4];
      }

      v76 = objc_msgSend_valueForKey_(model15);
      if (v76)
      {
        v77 = v76;
      }

      else
      {
        v77 = @"<null>";
      }

      model16 = [(__CFString *)v115 model];
      if (model16)
      {
        model16 = model16[4];
      }

      v79 = objc_msgSend_valueForKey_(model16);
      *buf = 138413570;
      if (v79)
      {
        v80 = v79;
      }

      else
      {
        v80 = @"<null>";
      }

      v81 = v115;
      v123 = v116;
      if (!v115)
      {
        v81 = @"<null>";
      }

      v124 = 2048;
      v125 = unsignedLongValue;
      v126 = 2048;
      v127 = v113;
      v128 = 2112;
      v129 = v77;
      v130 = 2112;
      v131 = v80;
      v132 = 2112;
      v133 = v81;
      _os_log_fault_impl(&dword_18565F000, v58, OS_LOG_TYPE_FAULT, "CoreData: Unexpectedly corrupt changedObjectID failed for entity - %@, entityID - %ld,  pk - %lld,  model - %@ - %@, store - %@", buf, 0x3Eu);
    }
  }

  v120.receiver = self;
  v120.super_class = _NSPersistentHistoryChange;
  v59 = [(_NSPersistentHistoryChange *)&v120 init];
  v39 = v59;
  if (v59)
  {
    v59->_changeID = _referenceData64;
    v59->_changedObjectID = v56;
    v39->_changeType = unsignedIntegerValue;
    if (v117)
    {
      v39->_tombstone = v117;
    }

    if (v10)
    {
      v39->_columns = v10;
    }

    if (v55)
    {
      v39->_sqlEntity = v116;
    }

    v39->_backingObjectID = d;
  }

  return v39;
}

- (_NSPersistentHistoryChange)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _NSPersistentHistoryChange;
  v4 = [(_NSPersistentHistoryChange *)&v8 init];
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v4->_changedObjectID = [coder decodeObjectOfClasses:+[_PFRoutines xpcStoreArchiverObjectIDClassesForSecureCoding](_PFRoutines) forKey:@"NSPersistentHistoryChangeObjectID"];
    v4->_changeID = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryChangeID", "longLongValue"}];
    v4->_changeType = [objc_msgSend(coder decodeObjectOfClass:objc_opt_class() forKey:{@"NSPersistentHistoryChangeType", "integerValue"}];
    v4->_tombstone = [coder decodeObjectOfClasses:+[_PFRoutines attributeClassesForSecureCoding](_PFRoutines) forKey:@"NSPersistentHistoryChangeTombstone"];
    v4->_columns = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPersistentHistoryChangeColumn"];
    changedObjectID = v4->_changedObjectID;
    if (changedObjectID)
    {
      v4->_sqlEntity = _sqlEntityForEntityDescription([(NSPersistentStore *)[(NSManagedObjectID *)changedObjectID persistentStore] model], [(NSManagedObjectID *)v4->_changedObjectID entity]);
    }

    objc_autoreleasePoolPop(v5);
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_autoreleasePoolPush();
  [coder encodeObject:self->_changedObjectID forKey:@"NSPersistentHistoryChangeObjectID"];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_changeID), @"NSPersistentHistoryChangeID"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", self->_changeType), @"NSPersistentHistoryChangeType"}];
  [coder encodeObject:self->_tombstone forKey:@"NSPersistentHistoryChangeTombstone"];
  [coder encodeObject:self->_transaction forKey:@"NSPersistentHistoryChangeTransaction"];
  [coder encodeObject:self->_columns forKey:@"NSPersistentHistoryChangeColumn"];

  objc_autoreleasePoolPop(v5);
}

+ (CFMutableSetRef)_updatedPropertiesForEntity:(void *)entity andData:
{
  v97 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v64 = attributeColumns;
  v11 = [attributeColumns count];
  v12 = [foreignOrderKeyColumns count];
  v13 = [foreignEntityKeyColumns count];
  v14 = [foreignKeyColumns count];
  v65 = toManyRelationships;
  v15 = [toManyRelationships count];
  v66 = manyToManyRelationships;
  v16 = v12 + v11 + v13 + v14 + v15 + [manyToManyRelationships count];
  if (v16 > 8 * [entity length])
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v18 = CFBitVectorCreate(0, [entity bytes], v16);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v19 = [foreignKeyColumns countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v88;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v88 != v22)
        {
          objc_enumerationMutation(foreignKeyColumns);
        }

        v24 = *(*(&v87 + 1) + 8 * i);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          toOneRelationship = [v24 toOneRelationship];
          if (toOneRelationship)
          {
            propertyDescription = [toOneRelationship propertyDescription];
            if (propertyDescription)
            {
              [(__CFSet *)Mutable addObject:propertyDescription];
            }
          }
        }

        ++v21;
      }

      v20 = [foreignKeyColumns countByEnumeratingWithState:&v87 objects:v96 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v27 = [foreignEntityKeyColumns countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v84;
    v30 = v64;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v84 != v29)
        {
          objc_enumerationMutation(foreignEntityKeyColumns);
        }

        v32 = *(*(&v83 + 1) + 8 * j);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          toOneRelationship2 = [v32 toOneRelationship];
          if (toOneRelationship2)
          {
            propertyDescription2 = [toOneRelationship2 propertyDescription];
            if (propertyDescription2)
            {
              [(__CFSet *)Mutable addObject:propertyDescription2];
            }
          }
        }

        ++v21;
      }

      v28 = [foreignEntityKeyColumns countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v28);
  }

  else
  {
    v30 = v64;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v35 = [foreignOrderKeyColumns countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v80;
    v38 = v65;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v80 != v37)
        {
          objc_enumerationMutation(foreignOrderKeyColumns);
        }

        v40 = *(*(&v79 + 1) + 8 * k);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          toOneRelationship3 = [v40 toOneRelationship];
          if (toOneRelationship3)
          {
            propertyDescription3 = [toOneRelationship3 propertyDescription];
            if (propertyDescription3)
            {
              [(__CFSet *)Mutable addObject:propertyDescription3];
            }
          }
        }

        ++v21;
      }

      v36 = [foreignOrderKeyColumns countByEnumeratingWithState:&v79 objects:v94 count:16];
    }

    while (v36);
  }

  else
  {
    v38 = v65;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v43 = [v30 countByEnumeratingWithState:&v75 objects:v93 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v76;
    v46 = v66;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v76 != v45)
        {
          objc_enumerationMutation(v30);
        }

        v48 = *(*(&v75 + 1) + 8 * m);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          -[__CFSet addObject:](Mutable, "addObject:", [v48 attributeDescription]);
        }

        ++v21;
      }

      v44 = [v30 countByEnumeratingWithState:&v75 objects:v93 count:16];
    }

    while (v44);
  }

  else
  {
    v46 = v66;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v49 = [v38 countByEnumeratingWithState:&v71 objects:v92 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v72;
    do
    {
      v52 = 0;
      do
      {
        if (*v72 != v51)
        {
          objc_enumerationMutation(v38);
        }

        v53 = *(*(&v71 + 1) + 8 * v52);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          if (v53)
          {
            propertyDescription4 = [v53 propertyDescription];
          }

          else
          {
            propertyDescription4 = 0;
          }

          [(__CFSet *)Mutable addObject:propertyDescription4];
        }

        ++v21;
        ++v52;
      }

      while (v50 != v52);
      v55 = [v38 countByEnumeratingWithState:&v71 objects:v92 count:16];
      v50 = v55;
    }

    while (v55);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v56 = [v46 countByEnumeratingWithState:&v67 objects:v91 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v68;
    do
    {
      v59 = 0;
      do
      {
        if (*v68 != v58)
        {
          objc_enumerationMutation(v46);
        }

        v60 = *(*(&v67 + 1) + 8 * v59);
        if (CFBitVectorGetBitAtIndex(v18, v21))
        {
          if (v60)
          {
            propertyDescription5 = [v60 propertyDescription];
          }

          else
          {
            propertyDescription5 = 0;
          }

          [(__CFSet *)Mutable addObject:propertyDescription5];
        }

        ++v21;
        ++v59;
      }

      while (v57 != v59);
      v62 = [v46 countByEnumeratingWithState:&v67 objects:v91 count:16];
      v57 = v62;
    }

    while (v62);
  }

  CFRelease(v18);
  return Mutable;
}

+ (void)_propertyDataForEntity:(void *)entity withSetOfPropertyNames:
{
  v87 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v55 = attributeColumns;
  v11 = [attributeColumns count];
  v54 = foreignOrderKeyColumns;
  v12 = [foreignOrderKeyColumns count] + v11;
  v53 = foreignEntityKeyColumns;
  v13 = [foreignEntityKeyColumns count];
  v14 = v12 + v13 + [foreignKeyColumns count];
  v56 = toManyRelationships;
  v15 = [toManyRelationships count];
  v52 = manyToManyRelationships;
  v16 = [manyToManyRelationships count];
  v51 = v14 + v15 + v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  bzero(&v51 - v17, v19);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v20 = [foreignKeyColumns countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v78;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v78 != v23)
        {
          objc_enumerationMutation(foreignKeyColumns);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v77 + 1) + 8 * i), "toOneRelationship", v51), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v21 = [foreignKeyColumns countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v25 = [v53 countByEnumeratingWithState:&v73 objects:v85 count:{16, v51}];
  if (v25)
  {
    v26 = v25;
    v27 = *v74;
    v28 = v52;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v74 != v27)
        {
          objc_enumerationMutation(v53);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v73 + 1) + 8 * j), "toOneRelationship"), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v26 = [v53 countByEnumeratingWithState:&v73 objects:v85 count:16];
    }

    while (v26);
  }

  else
  {
    v28 = v52;
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v30 = [v54 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v70;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v70 != v32)
        {
          objc_enumerationMutation(v54);
        }

        if ([entity containsObject:{objc_msgSend(objc_msgSend(*(*(&v69 + 1) + 8 * k), "toOneRelationship"), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v31 = [v54 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v31);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v34 = [v55 countByEnumeratingWithState:&v65 objects:v83 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v66;
    do
    {
      for (m = 0; m != v35; ++m)
      {
        if (*v66 != v36)
        {
          objc_enumerationMutation(v55);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v65 + 1) + 8 * m), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v35 = [v55 countByEnumeratingWithState:&v65 objects:v83 count:16];
    }

    while (v35);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v38 = [v56 countByEnumeratingWithState:&v61 objects:v82 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (n = 0; n != v39; ++n)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(v56);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v61 + 1) + 8 * n), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v39 = [v56 countByEnumeratingWithState:&v61 objects:v82 count:16];
    }

    while (v39);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v42 = [v28 countByEnumeratingWithState:&v57 objects:v81 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v58;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v58 != v44)
        {
          objc_enumerationMutation(v28);
        }

        if ([entity containsObject:{objc_msgSend(*(*(&v57 + 1) + 8 * ii), "name")}])
        {
          v18[v22 >> 3] |= 1 << (~v22 & 7);
        }

        ++v22;
      }

      v43 = [v28 countByEnumeratingWithState:&v57 objects:v81 count:16];
    }

    while (v43);
  }

  v46 = v51;
  v47 = CFBitVectorCreate(0, v18, v51);
  v48 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(v46 + 7) >> 3];
  mutableBytes = [v48 mutableBytes];
  v88.location = 0;
  v88.length = v46;
  CFBitVectorGetBits(v47, v88, mutableBytes);
  CFRelease(v47);
  return v48;
}

+ (void)_dataMaskForEntity:(const __CFBitVector *)entity andDeltaMask:
{
  v31[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  foreignKeyColumns = [a2 foreignKeyColumns];
  foreignEntityKeyColumns = [a2 foreignEntityKeyColumns];
  foreignOrderKeyColumns = [a2 foreignOrderKeyColumns];
  attributeColumns = [a2 attributeColumns];
  toManyRelationships = [a2 toManyRelationships];
  manyToManyRelationships = [a2 manyToManyRelationships];
  v11 = [attributeColumns count];
  v12 = [foreignOrderKeyColumns count] + v11;
  v13 = [foreignEntityKeyColumns count];
  v14 = v12 + v13 + [foreignKeyColumns count];
  v15 = [toManyRelationships count];
  v16 = [manyToManyRelationships count];
  v17 = v14 + v15 + v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v31 - v18;
  bzero(v31 - v18, v20);
  Count = CFBitVectorGetCount(entity);
  v22 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v23 = Count;
  v24 = 0;
  v25 = 0;
  do
  {
    while (CFBitVectorGetBitAtIndex(entity, v24))
    {
      v25 = 1;
      v19[v24 >> 3] |= 1 << (~v24 & 7);
      if (v22 == v24++)
      {
        goto LABEL_10;
      }
    }

    ++v24;
  }

  while (v23 != v24);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v27 = CFBitVectorCreate(0, v19, v17);
  v28 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(v17 + 7) >> 3];
  mutableBytes = [v28 mutableBytes];
  v32.location = 0;
  v32.length = v17;
  CFBitVectorGetBits(v27, v32, mutableBytes);
  CFRelease(v27);
  return v28;
}

+ (id)_mergeOldMask:(void *)mask andNewMask:
{
  objc_opt_self();
  bytes = [a2 bytes];
  bytes2 = [mask bytes];
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if ([a2 length])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if ([mask length] <= v8)
      {
        break;
      }

      v12 = *(bytes2 + v8) | *(bytes + v8);
      [v7 appendBytes:&v12 length:1];
      v8 = v9;
    }

    while ([a2 length] > v9++);
  }

  return v7;
}

@end