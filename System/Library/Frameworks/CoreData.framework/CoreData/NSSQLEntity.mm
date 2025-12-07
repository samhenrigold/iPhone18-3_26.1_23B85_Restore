@interface NSSQLEntity
+ (void)initialize;
- (NSSQLEntity)initWithModel:(id)model entityDescription:(id)description;
- (NSSQLEntity_DerivedAttributesExtension)derivedAttributesExtension;
- (NSSQLToOne)_addVirtualToOneForToMany:(NSSQLToOne *)many withInheritedProperty:;
- (id)_generateMulticolumnUniquenessConstraints;
- (id)_sqlPropertyWithRenamingIdentifier:(id *)result;
- (id)attributeColumns;
- (id)attributes;
- (id)description;
- (id)foreignEntityKeyColumns;
- (id)foreignKeyColumns;
- (id)foreignOrderKeyColumns;
- (id)manyToManyRelationships;
- (id)toManyRelationships;
- (uint64_t)_collectFKSlots:(void *)slots error:;
- (uint64_t)_entityIsBroken:(uint64_t)broken;
- (uint64_t)_generateAttributeDerivations:(uint64_t)result;
- (uint64_t)_generateIDWithSuperEntity:(int)entity nextID:;
- (uint64_t)addPropertiesForReadOnlyFetch:(uint64_t)fetch keys:(void *)keys context:;
- (uint64_t)properties;
- (uint64_t)rtreeIndexForIndexNamed:(uint64_t)named;
- (uint64_t)sqlAttributesForCompositeAttributeName:(uint64_t)name;
- (unint64_t)virtualForeignKeyColumns;
- (void)_addColumnToFetch:(void *)result;
- (void)_addForeignOrderKeyForToOne:(void *)one entity:;
- (void)_addSubentity:(void *)result;
- (void)_generateInverseRelationshipsAndMore;
- (void)_generateProperties;
- (void)_organizeConstraints;
- (void)addDerivedAttribute:(void *)result;
- (void)copyValuesForReadOnlyFetch:(id)fetch;
- (void)dealloc;
- (void)entitySpecificPropertiesPassing:(uint64_t)passing;
- (void)indexForIndexDescription:(void *)result;
- (void)rtreeIndexes;
- (void)subhierarchyColumnMatching:(uint64_t)matching;
- (void)tempTableName;
@end

@implementation NSSQLEntity

- (id)foreignKeyColumns
{
  if (self->_fkColumns)
  {
    return self->_fkColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (unint64_t)virtualForeignKeyColumns
{
  v18 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (!atomic_load((result + 120)))
    {
      v3 = *(result + 96);
      if (v3)
      {
        if ([v3 count])
        {
          v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v5 = *(v1 + 96);
          v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v14;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v14 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = *(*(&v13 + 1) + 8 * i);
                toOneRelationship = [v10 toOneRelationship];
                if (toOneRelationship && *(toOneRelationship + 88) == 1)
                {
                  [v4 addObject:v10];
                }
              }

              v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
            }

            while (v7);
          }

          v12 = 0;
          atomic_compare_exchange_strong((v1 + 120), &v12, v4);
          if (v12)
          {
          }
        }
      }
    }

    return atomic_load((v1 + 120));
  }

  return result;
}

- (id)foreignEntityKeyColumns
{
  if (self->_ekColumns)
  {
    return self->_ekColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (id)foreignOrderKeyColumns
{
  if (self->_fokColumns)
  {
    return self->_fokColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (id)attributeColumns
{
  if (self->_attrColumns)
  {
    return self->_attrColumns;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (void)dealloc
{
  if (self)
  {
    if (atomic_load(&self->_fetch_entity_plan))
    {
      v4 = atomic_load(&self->_fetch_entity_plan);
      _deallocateFetchEntityPlan(v4);
      atomic_store(0, &self->_fetch_entity_plan);
    }
  }

  odiousHashHackStorage = self->_odiousHashHackStorage;
  if (odiousHashHackStorage)
  {
    _PF_Leopard_CFDictionaryDestroy(odiousHashHackStorage);
    self->_odiousHashHackStorage = 0;
  }

  self->_superentity = 0;
  v6 = atomic_load(&self->_virtualFKs);

  if (self->_propertyMapping)
  {

    self->_primaryKey = 0;
    self->_propertyMapping = 0;

    self->_entityKey = 0;
  }

  self->_subentities = 0;
  self->_tableName = 0;
  self->_columnsToFetch = 0;
  self->_columnsToFetchNoSubentities = 0;
  self->_fkColumns = 0;
  self->_ekColumns = 0;
  self->_fokColumns = 0;
  self->_attrColumns = 0;
  self->_entityDescription = 0;
  self->_properties = 0;
  self->_mappingGenerator = 0;
  atomic_store(0, &self->_fetch_entity_plan);
  self->_propertyAllCache = 0;
  self->_propertiesAllToManysCache = 0;
  self->_propertyManyToManyCache = 0;
  self->_multicolumnUniquenessConstraints = 0;
  self->_uniqueProperties = 0;
  self->_rtreeIndices = 0;
  self->_derivedAttributes = 0;
  self->_derivedAttributeExtension = 0;
  self->_compositeAttributeNameToSQLProperties = 0;
  self->_model = 0;
  v7.receiver = self;
  v7.super_class = NSSQLEntity;
  [(NSStoreMapping *)&v7 dealloc];
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    qword_1ED4BE7E8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }
}

- (void)_generateProperties
{
  v148[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = result[20];
    entityDescription = [result entityDescription];
    v3 = v1[2];
    if (v3 && (*(v3 + 57) & 1) != 0)
    {
      _leopardStyleRelationshipsByName = 0;
      _leopardStyleAttributesByName = 0;
      v124 = 1;
      v128 = 1;
    }

    else
    {
      _leopardStyleAttributesByName = [entityDescription _leopardStyleAttributesByName];
      _leopardStyleRelationshipsByName = [entityDescription _leopardStyleRelationshipsByName];
      v124 = 0;
      v128 = 0;
    }

    model = [v1 model];
    if (model)
    {
      v127 = (*(model + 48) >> 1) & 1;
    }

    else
    {
      v127 = 0;
    }

    v5 = v1[20];
    v6 = 0x1EA8C5000;
    if (v5)
    {
      v1[10] = [*(v5 + 80) mutableCopy];
      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      if (v2)
      {
        v8 = v2[5];
      }

      else
      {
        v8 = 0;
      }

      v1[5] = [v7 initWithDictionary:v8];
      v9 = objc_alloc(MEMORY[0x1E695DF90]);
      if (v2)
      {
        v10 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
        v11 = v2[34];
      }

      else
      {
        v11 = 0;
        v10 = &OBJC_IVAR____NSPersistentHistoryTransaction__author;
      }

      *(v1 + v10[183]) = [v9 initWithDictionary:v11];
      if ((v128 & 1) == 0)
      {
        v12 = _PF_Leopard_CFDictionaryCreate();
        v129 = &v120;
        v1[31] = v12;
        v13 = v2[31];
        v14 = *v13;
        if (*v13 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = *v13;
        }

        if (v14 >= 0x201)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = 8 * v16;
        MEMORY[0x1EEE9AC00](v12);
        v19 = &v120 - v18;
        if (v17 >= 0x200)
        {
          v20 = 512;
        }

        else
        {
          v20 = v17;
        }

        bzero(v19, v20);
        if (v14 > 0x200)
        {
          v19 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v19, v17);
        }

        v25 = v13[1];
        if (v25 >= 1)
        {
          v26 = 0;
          v27 = v13[9];
          do
          {
            v29 = *v27++;
            v28 = v29;
            v30 = v13[8];
            v31 = v30 ^ v29;
            if (v30 != v29 && v31 != -1)
            {
              *&v19[8 * v26++] = v28;
            }

            --v25;
          }

          while (v25);
        }

        if (v14 >= 1)
        {
          v33 = v19;
          v34 = v14;
          do
          {
            v35 = *v33++;
            Value = _PF_Leopard_CFDictionaryGetValue(v13, v35);
            _PF_Leopard_CFDictionarySetValue(v1[31], v35, Value);
            --v34;
          }

          while (v34);
        }

        v6 = 0x1EA8C5000uLL;
        if (v14 >= 0x201)
        {
          NSZoneFree(0, v19);
        }
      }

      if ([objc_msgSend(v2 "foreignKeyColumns")])
      {
        v1[12] = [objc_msgSend(v2 "foreignKeyColumns")];
      }

      if ([objc_msgSend(v2 "foreignEntityKeyColumns")])
      {
        v1[11] = [objc_msgSend(v2 "foreignEntityKeyColumns")];
      }

      if ([objc_msgSend(v2 "foreignOrderKeyColumns")])
      {
        v1[13] = [objc_msgSend(v2 "foreignOrderKeyColumns")];
      }

      if ([objc_msgSend(v2 "attributeColumns")])
      {
        v1[14] = [objc_msgSend(v2 "attributeColumns")];
      }

      if (v2)
      {
        v1[16] = v2[16];
        v1[17] = v2[17];
        v1[18] = v2[18];
        v37 = *(v2 + *(v6 + 3396));
      }

      else
      {
        v37 = 0;
        v1[16] = 0;
        v1[17] = 0;
        v1[18] = 0;
      }

      v24 = v37;
    }

    else
    {
      v1[5] = objc_opt_new();
      v1[34] = objc_alloc_init(MEMORY[0x1E695DF90]);
      if ((v128 & 1) == 0)
      {
        v1[31] = _PF_Leopard_CFDictionaryCreate();
      }

      v1[9] = objc_opt_new();
      v1[10] = objc_opt_new();
      v1[12] = 0;
      v1[11] = 0;
      v1[13] = 0;
      v1[14] = 0;
      v21 = [[NSSQLEntityKey alloc] initWithEntity:v1 propertyDescription:0];
      v1[17] = v21;
      [(NSSQLEntity *)v1 _addColumnToFetch:v21];
      [v1[5] setObject:v1[17] forKey:{objc_msgSend(v1[17], "name")}];
      if ((v128 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(v1[31], [v1[17] name], v1[17]);
      }

      v22 = [[NSSQLPrimaryKey alloc] initWithEntity:v1 propertyDescription:0];
      v1[16] = v22;
      [(NSSQLEntity *)v1 _addColumnToFetch:v22];
      [v1[5] setObject:v1[16] forKey:{objc_msgSend(v1[16], "name")}];
      if ((v128 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(v1[31], [v1[16] name], v1[16]);
      }

      v23 = [[NSSQLOptLockKey alloc] initWithEntity:v1 propertyDescription:0];
      v1[18] = v23;
      [(NSSQLEntity *)v1 _addColumnToFetch:v23];
      [v1[5] setObject:v1[18] forKey:{objc_msgSend(v1[18], "name")}];
      if ((v128 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(v1[31], [v1[18] name], v1[18]);
      }

      v24 = objc_alloc_init(NSSQLStoreMappingGenerator);
    }

    *(v1 + *(v6 + 3396)) = v24;
    if (v128)
    {
      v129 = 0;
    }

    else
    {
      v129 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    if (v127)
    {
      v126 = [entityDescription _newSnowLeopardStyleDictionaryContainingPropertiesOfType:1];
      v121 = &v120;
      v38 = *(v126 + 2);
      v39 = MEMORY[0x1EEE9AC00](v126);
      v41 = (&v120 - v40);
      _PF_SnowLeopard_CFDictionaryGetValues(v39, &v120 - v40);
    }

    else
    {
      v126 = [entityDescription _newMappingForPropertiesOfRange:1];
      v38 = [v126 count];
      v121 = &v120;
      MEMORY[0x1EEE9AC00](v38);
      v41 = (&v120 - v43);
      [v126 getObjects:&v120 - v43];
    }

    if (v38)
    {
      v122 = v148;
      v123 = &v147;
      *&v42 = 138412546;
      v120 = v42;
      do
      {
        v44 = *v41;
        if (([*v41 isTransient] & 1) == 0)
        {
          if (v44 && [v44 attributeType] == 2100)
          {
            v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3052000000;
              v147 = __Block_byref_object_copy__26;
              v148[0] = __Block_byref_object_dispose__26;
              v136[0] = MEMORY[0x1E69E9820];
              v136[1] = 3221225472;
              v137 = __34__NSSQLEntity__generateProperties__block_invoke;
              v138 = &unk_1E6EC39E8;
              v142 = v44;
              v143 = buf;
              v139 = v1;
              v140 = v45;
              v144 = v124;
              v141 = v129;
              v148[1] = v136;
              elements = [v44 elements];
              name = [v44 name];
              v137(v136, elements, name);
              name2 = [v44 name];
              if (name2)
              {
                v49 = [v1[34] objectForKey:name2];
                if (v49)
                {
                  [v49 addObjectsFromArray:v45];
                }

                else
                {
                  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v45];
                  [v1[34] setObject:v58 forKey:name2];
                }
              }

              _Block_object_dispose(buf, 8);
            }

            else
            {
              LogStream = _PFLogGetLogStream(17);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                v59 = objc_opt_class();
                v60 = NSStringFromClass(v59);
                v61 = objc_opt_class();
                v62 = NSStringFromClass(v61);
                *buf = v120;
                *&buf[4] = v60;
                *&buf[12] = 2112;
                *&buf[14] = v62;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unexpected multi-column attribute description class (expected %@): %@\n", buf, 0x16u);
              }

              v53 = _PFLogGetLogStream(17);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
              {
                v54 = objc_opt_class();
                v55 = NSStringFromClass(v54);
                v56 = objc_opt_class();
                v57 = NSStringFromClass(v56);
                *buf = v120;
                *&buf[4] = v55;
                *&buf[12] = 2112;
                *&buf[14] = v57;
                _os_log_fault_impl(&dword_18565F000, v53, OS_LOG_TYPE_FAULT, "CoreData: Unexpected multi-column attribute description class (expected %@): %@", buf, 0x16u);
              }
            }
          }

          else
          {
            name3 = [v44 name];
            if (![v1[5] objectForKey:name3])
            {
              v51 = [[NSSQLAttribute alloc] initWithEntity:v1 propertyDescription:v44];
              [(NSSQLEntity *)v1 _addColumnToFetch:v51];
              [v1[5] setObject:v51 forKey:name3];
              if ((v128 & 1) == 0)
              {
                [v129 setObject:v51 forKey:name3];
              }

              if ([v44 _propertyType] == 6)
              {
                [(NSSQLEntity *)v1 addDerivedAttribute:v51];
              }
            }
          }
        }

        ++v41;
        --v38;
      }

      while (v38);
    }

    if (v127)
    {
      _PF_SnowLeopard_CFDictionaryDestroy(v126);
    }

    else
    {
    }

    if ((v128 & 1) == 0)
    {
      v64 = *_leopardStyleAttributesByName;
      if (*_leopardStyleAttributesByName >= 1)
      {
        if (v64 >= 0x201)
        {
          v65 = 1;
        }

        else
        {
          v65 = *_leopardStyleAttributesByName;
        }

        v66 = 8 * v65;
        MEMORY[0x1EEE9AC00](v63);
        v68 = &v120 - v67;
        if (v66 >= 0x200)
        {
          v69 = 512;
        }

        else
        {
          v69 = v66;
        }

        bzero(v68, v69);
        if (v64 > 0x200)
        {
          v68 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v68, v66);
        }

        v70 = _leopardStyleAttributesByName[1];
        if (v70 > 0)
        {
          v71 = 0;
          v72 = _leopardStyleAttributesByName[9];
          do
          {
            v74 = *v72++;
            v73 = v74;
            v75 = _leopardStyleAttributesByName[8];
            v76 = v75 ^ v74;
            if (v75 != v74 && v76 != -1)
            {
              *&v68[8 * v71++] = v73;
            }

            --v70;
          }

          while (v70);
        }

        v78 = 0;
        do
        {
          v79 = _PF_Leopard_CFDictionaryGetValue(_leopardStyleAttributesByName, *&v68[8 * v78]);
          if (([v79 isTransient] & 1) == 0)
          {
            name4 = [v79 name];
            v81 = [v129 objectForKey:name4];
            if (v81)
            {
              _PF_Leopard_CFDictionarySetValue(v1[31], name4, v81);
            }
          }

          ++v78;
        }

        while (v64 != v78);
        if (v64 >= 0x201)
        {
          NSZoneFree(0, v68);
        }
      }

      [v129 removeAllObjects];
    }

    if (v127)
    {
      v82 = [entityDescription _newSnowLeopardStyleDictionaryContainingPropertiesOfType:2];
      v83 = v82[2];
      v84 = MEMORY[0x1EEE9AC00](v82);
      v86 = (&v120 - v85);
      _PF_SnowLeopard_CFDictionaryGetValues(v84, &v120 - v85);
    }

    else
    {
      v82 = [entityDescription _newMappingForPropertiesOfRange:2];
      v83 = [v82 count];
      MEMORY[0x1EEE9AC00](v83);
      v86 = (&v120 - v87);
      [v82 getObjects:&v120 - v87];
    }

    for (; v83; --v83)
    {
      v88 = *v86;
      if (([*v86 isTransient] & 1) == 0)
      {
        name5 = [v88 name];
        if (![v1[5] objectForKey:name5])
        {
          if ([v88 maxCount] == 1)
          {
            v90 = [[NSSQLToOne alloc] initWithEntity:v1 propertyDescription:v88];
            foreignKey = [(NSSQLToOne *)v90 foreignKey];
            [v1[5] setObject:foreignKey forKey:{objc_msgSend(foreignKey, "name")}];
            if ((v128 & 1) == 0)
            {
              name6 = [foreignKey name];
              [v129 setObject:foreignKey forKey:name6];
            }

            [(NSSQLEntity *)v1 _addColumnToFetch:foreignKey];
            if (!v90)
            {
              goto LABEL_138;
            }

            foreignEntityKey = v90->_foreignEntityKey;
            if (foreignEntityKey)
            {
              [v1[5] setObject:foreignEntityKey forKey:{-[NSSQLForeignEntityKey name](v90->_foreignEntityKey, "name")}];
              if ((v128 & 1) == 0)
              {
                name7 = [(NSSQLForeignEntityKey *)foreignEntityKey name];
                [v129 setObject:foreignEntityKey forKey:name7];
              }

              [(NSSQLEntity *)v1 _addColumnToFetch:?];
            }
          }

          else
          {
            inverseRelationship = [v88 inverseRelationship];
            if (!inverseRelationship || (v96 = [inverseRelationship maxCount], v97 = off_1E6EC0BA8, v96 == 1))
            {
              v97 = off_1E6EC0BB0;
            }

            v90 = [objc_alloc(*v97) initWithEntity:v1 propertyDescription:v88];
            if (!v90)
            {
              goto LABEL_138;
            }
          }

          [v1[5] setObject:v90 forKey:name5];
          if ((v128 & 1) == 0)
          {
            [v129 setObject:v90 forKey:name5];
          }
        }
      }

LABEL_138:
      ++v86;
    }

    if (v127)
    {
      _PF_SnowLeopard_CFDictionaryDestroy(v82);
    }

    else
    {
    }

    if ((v128 & 1) == 0)
    {
      v99 = *_leopardStyleRelationshipsByName;
      if (*_leopardStyleRelationshipsByName >= 1)
      {
        MEMORY[0x1EEE9AC00](v98);
        v101 = &v120 - v100;
        if (v99 > 0x200)
        {
          v101 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v120 - v100, 8 * v99);
        }

        v102 = _leopardStyleRelationshipsByName[1];
        if (v102 > 0)
        {
          v103 = 0;
          v104 = _leopardStyleRelationshipsByName[9];
          do
          {
            v106 = *v104++;
            v105 = v106;
            v107 = _leopardStyleRelationshipsByName[8];
            v108 = v107 ^ v106;
            if (v107 != v106 && v108 != -1)
            {
              *&v101[8 * v103++] = v105;
            }

            --v102;
          }

          while (v102);
        }

        v110 = 0;
        do
        {
          v111 = _PF_Leopard_CFDictionaryGetValue(_leopardStyleRelationshipsByName, *&v101[8 * v110]);
          if (([v111 isTransient] & 1) == 0)
          {
            name8 = [v111 name];
            v113 = [v129 objectForKey:name8];
            if (v113)
            {
              if ([v111 maxCount] == 1)
              {
                foreignKey2 = [v113 foreignKey];
                _PF_Leopard_CFDictionarySetValue(v1[31], [foreignKey2 name], foreignKey2);
                v115 = v113[9];
                if (v115)
                {
                  _PF_Leopard_CFDictionarySetValue(v1[31], [v113[9] name], v115);
                }
              }

              _PF_Leopard_CFDictionarySetValue(v1[31], [v113 name], v113);
            }
          }

          ++v110;
        }

        while (v99 != v110);
        if (v99 >= 0x201)
        {
          NSZoneFree(0, v101);
        }
      }

      _PF_Leopard_CFDictionaryDestroy(_leopardStyleRelationshipsByName);
      _PF_Leopard_CFDictionaryDestroy(_leopardStyleAttributesByName);
    }

    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v116 = v1[19];
    result = [v116 countByEnumeratingWithState:&v132 objects:v145 count:16];
    v117 = result;
    if (result)
    {
      v118 = *v133;
      do
      {
        v119 = 0;
        do
        {
          if (*v133 != v118)
          {
            objc_enumerationMutation(v116);
          }

          [(NSSQLEntity *)*(*(&v132 + 1) + 8 * v119) _generateProperties];
          v119 = (v119 + 1);
        }

        while (v117 != v119);
        result = [v116 countByEnumeratingWithState:&v132 objects:v145 count:16];
        v117 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_generateInverseRelationshipsAndMore
{
  v133 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    model = [result model];
    if (model && (*(model + 48) & 1) != 0)
    {
      array = [MEMORY[0x1E695DF70] array];
      v22 = array;
      v23 = v1[31];
      v24 = *v23;
      if (*v23 >= 1)
      {
        if (v24 >= 0x201)
        {
          v25 = 1;
        }

        else
        {
          v25 = *v23;
        }

        v26 = 8 * v25;
        MEMORY[0x1EEE9AC00](array);
        v28 = &v116 - v27;
        if (v26 >= 0x200)
        {
          v29 = 512;
        }

        else
        {
          v29 = v26;
        }

        bzero(v28, v29);
        if (v24 > 0x200)
        {
          v28 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v28, v26);
        }

        v39 = v1[31];
        v40 = v39[1];
        if (v40 > 0)
        {
          v41 = 0;
          v42 = v39[9];
          do
          {
            v44 = *v42++;
            v43 = v44;
            v45 = v39[8];
            v46 = v45 ^ v44;
            if (v45 != v44 && v46 != -1)
            {
              *&v28[8 * v41++] = v43;
            }

            --v40;
          }

          while (v40);
        }

        v48 = 0;
        do
        {
          [v22 addObject:{_PF_Leopard_CFDictionaryGetValue(v1[31], *&v28[8 * v48++])}];
        }

        while (v24 != v48);
        if (v24 >= 0x201)
        {
          NSZoneFree(0, v28);
        }
      }

      goto LABEL_136;
    }

    model2 = [v1 model];
    if (model2 && (*(model2 + 48) & 2) != 0)
    {
      v30 = [v1[5] count];
      if (v30 >= 1)
      {
        v31 = PF_Tiger_CFDictionaryCreate(0, v30, 1);
        v32 = v31;
        v117 = &v116;
        v33 = v30 & 0x7FFFFFFF;
        if (v33 >= 0x201)
        {
          v34 = 1;
        }

        else
        {
          v34 = v30 & 0x7FFFFFFF;
        }

        v35 = 8 * v34;
        MEMORY[0x1EEE9AC00](v31);
        v37 = &v116 - v36;
        if (v35 >= 0x200)
        {
          v38 = 512;
        }

        else
        {
          v38 = v35;
        }

        bzero(v37, v38);
        v116 = v33;
        if (v33 > 0x200)
        {
          v37 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v37, v35);
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v55 = v1[5];
        v56 = [v55 countByEnumeratingWithState:&v126 objects:v132 count:{16, v116}];
        if (v56)
        {
          v57 = v56;
          v58 = *v127;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v127 != v58)
              {
                objc_enumerationMutation(v55);
              }

              PF_Tiger_CFDictionarySetValue(v32, *(*(&v126 + 1) + 8 * i), [v1[5] objectForKey:*(*(&v126 + 1) + 8 * i)]);
            }

            v57 = [v55 countByEnumeratingWithState:&v126 objects:v132 count:16];
          }

          while (v57);
        }

        PF_Tiger_CFDictionaryGetKeysAndValues(v32, 0, v37);
        v60 = v116;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:v116];
        PF_Tiger_CFDictionaryDestroy(v32);
        if (v60 < 0x201)
        {
          goto LABEL_136;
        }

        v61 = v37;
LABEL_106:
        NSZoneFree(0, v61);
        goto LABEL_136;
      }
    }

    else
    {
      v4 = v1[2];
      if (v4 && *(v4 + 57) == 1)
      {
        v5 = [(NSSQLModel *)v4 _precomputedKeyOrderForEntity:v1];
        v6 = [v1[5] count];
        v7 = _PF_Leopard_CFDictionaryCreate();
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v8 = [v5 countByEnumeratingWithState:&v122 objects:v131 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v123;
          do
          {
            v11 = 0;
            do
            {
              if (*v123 != v10)
              {
                objc_enumerationMutation(v5);
              }

              v12 = *(*(&v122 + 1) + 8 * v11);
              v13 = [v1[5] objectForKey:v12];
              if (v13)
              {
                _PF_Leopard_CFDictionarySetValue(v7, v12, v13);
              }

              ++v11;
            }

            while (v9 != v11);
            v8 = [v5 countByEnumeratingWithState:&v122 objects:v131 count:16];
            v9 = v8;
          }

          while (v8);
        }

        v14 = *v7;
        if (*v7 < 1)
        {
          v22 = NSArray_EmptyArray;
        }

        else
        {
          v117 = &v116;
          if (v14 >= 0x201)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          v16 = 8 * v15;
          MEMORY[0x1EEE9AC00](v8);
          v18 = &v116 - v17;
          if (v16 >= 0x200)
          {
            v19 = 512;
          }

          else
          {
            v19 = v16;
          }

          bzero(v18, v19);
          if (v14 > 0x200)
          {
            v20 = NSAllocateScannedUncollectable();
            v18 = v20;
          }

          else
          {
            bzero(v18, v16);
          }

          v84 = v6;
          if (v6 << 32)
          {
            v85 = v6;
          }

          else
          {
            v85 = 1;
          }

          if (v6 >= 0x201)
          {
            v86 = 1;
          }

          else
          {
            v86 = v85;
          }

          v87 = 8 * v86;
          MEMORY[0x1EEE9AC00](v20);
          v89 = &v116 - v88;
          if (v87 >= 0x200)
          {
            v90 = 512;
          }

          else
          {
            v90 = v87;
          }

          bzero(v89, v90);
          if (v6 > 0x200)
          {
            v89 = NSAllocateScannedUncollectable();
          }

          else
          {
            bzero(v89, v87);
          }

          v91 = PF_Tiger_CFDictionaryCreate(0, v6, 1);
          v92 = v7[1];
          if (v92 > 0)
          {
            v93 = 0;
            v94 = v7[9];
            do
            {
              v96 = *v94++;
              v95 = v96;
              v97 = v7[8];
              v98 = v97 ^ v96;
              if (v97 != v96 && v98 != -1)
              {
                *&v18[8 * v93++] = v95;
              }

              --v92;
            }

            while (v92);
          }

          v100 = 0;
          do
          {
            v101 = *&v18[8 * v100];
            Value = _PF_Leopard_CFDictionaryGetValue(v7, v101);
            PF_Tiger_CFDictionarySetValue(v91, v101, Value);
            ++v100;
          }

          while (v14 != v100);
          PF_Tiger_CFDictionaryGetKeysAndValues(v91, 0, v89);
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:v84];
          PF_Tiger_CFDictionaryDestroy(v91);
          if (v84 >= 0x201)
          {
            NSZoneFree(0, v89);
          }

          if (v14 >= 0x201)
          {
            NSZoneFree(0, v18);
          }
        }

        _PF_Leopard_CFDictionaryDestroy(v7);
        goto LABEL_136;
      }

      v49 = *v1[31];
      if (v49 >= 1)
      {
        v117 = &v116;
        if (v49 >= 0x201)
        {
          v50 = 1;
        }

        else
        {
          v50 = v49;
        }

        v51 = 8 * v50;
        MEMORY[0x1EEE9AC00](v4);
        v53 = &v116 - v52;
        if (v51 >= 0x200)
        {
          v54 = 512;
        }

        else
        {
          v54 = v51;
        }

        bzero(v53, v54);
        if (v49 > 0x200)
        {
          v53 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v53, v51);
        }

        v62 = v1[31];
        v63 = v62[1];
        if (v63 >= 1)
        {
          v64 = 0;
          v65 = v62[9];
          do
          {
            v67 = *v65++;
            v66 = v67;
            v68 = v62[8];
            v69 = v68 ^ v67;
            if (v68 != v67 && v69 != -1)
            {
              *&v53[8 * v64++] = v66;
            }

            --v63;
          }

          while (v63);
        }

        v71 = [v1[5] count];
        v72 = PF_Tiger_CFDictionaryCreate(0, v71, 1);
        v73 = v72;
        v74 = v71;
        if (v71 << 32)
        {
          v75 = v71;
        }

        else
        {
          v75 = 1;
        }

        if (v71 >= 0x201)
        {
          v76 = 1;
        }

        else
        {
          v76 = v75;
        }

        v77 = 8 * v76;
        MEMORY[0x1EEE9AC00](v72);
        v79 = &v116 - v78;
        if (v77 >= 0x200)
        {
          v80 = 512;
        }

        else
        {
          v80 = v77;
        }

        bzero(v79, v80);
        if (v74 > 0x200)
        {
          v79 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v79, v77);
        }

        for (j = 0; j != v49; ++j)
        {
          v82 = *&v53[8 * j];
          v83 = _PF_Leopard_CFDictionaryGetValue(v1[31], v82);
          PF_Tiger_CFDictionarySetValue(v73, v82, v83);
        }

        PF_Tiger_CFDictionaryGetKeysAndValues(v73, 0, v79);
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:v74];
        PF_Tiger_CFDictionaryDestroy(v73);
        if (v74 >= 0x201)
        {
          NSZoneFree(0, v79);
        }

        if (v49 < 0x201)
        {
          goto LABEL_136;
        }

        v61 = v53;
        goto LABEL_106;
      }
    }

    v22 = NSArray_EmptyArray;
LABEL_136:
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    result = [v22 countByEnumeratingWithState:&v118 objects:v130 count:16];
    if (!result)
    {
      return result;
    }

    v103 = result;
    v104 = *v119;
    do
    {
      v105 = 0;
      do
      {
        if (*v119 != v104)
        {
          objc_enumerationMutation(v22);
        }

        v106 = *(*(&v118 + 1) + 8 * v105);
        if (v106)
        {
          v107 = *(v106 + 24);
          if ((v107 - 7) <= 2)
          {
            if (*(v106 + 56))
            {
              if (v107 == 7 && *(v106 + 80))
              {
                goto LABEL_152;
              }
            }

            else
            {
              v108 = [objc_msgSend(v106 "propertyDescription")];
              if (v108)
              {
                if (*(v106 + 24) == 9)
                {
                  goto LABEL_156;
                }

                destinationEntity = [v106 destinationEntity];
                name = [v108 name];
                if (destinationEntity)
                {
                  v111 = [*(destinationEntity + 40) objectForKey:name];
                }

                else
                {
                  v111 = 0;
                }

                [(NSSQLRelationship *)v106 _setInverseRelationship:v111];
                if (*(v106 + 24) == 7)
                {
LABEL_152:
                  [(NSSQLEntity *)v1 _addForeignOrderKeyForToOne:v106 entity:v1];
                  goto LABEL_159;
                }

                if ([v111 entity] == v1)
                {
                  [v111 isToMany];
                }
              }

              else
              {
                if ([v106 isToMany])
                {
                  v112 = -[NSSQLEntity _addVirtualToOneForToMany:withInheritedProperty:]([v106 destinationEntity], v106, 0);
                  [(NSSQLRelationship *)v106 _setInverseRelationship:v112];
                  goto LABEL_159;
                }

                if (*(v106 + 24) == 9)
                {
LABEL_156:
                  destinationEntity2 = [v106 destinationEntity];
                  name2 = [v108 name];
                  if (destinationEntity2)
                  {
                    v115 = [*(destinationEntity2 + 40) objectForKey:name2];
                  }

                  else
                  {
                    v115 = 0;
                  }

                  [(NSSQLManyToMany *)v106 _setInverseManyToMany:v115];
                }
              }
            }
          }
        }

LABEL_159:
        v105 = v105 + 1;
      }

      while (v103 != v105);
      result = [v22 countByEnumeratingWithState:&v118 objects:v130 count:16];
      v103 = result;
    }

    while (result);
  }

  return result;
}

- (id)_generateMulticolumnUniquenessConstraints
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    rootEntity = [result rootEntity];
    if (rootEntity)
    {
      v15 = *(rootEntity + 216);
    }

    else
    {
      v15 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    entityDescription = [v1 entityDescription];
    if (entityDescription)
    {
      v4 = *(entityDescription + 128);
      if (!v4 || (v5 = *(v4 + 24)) == 0)
      {
        v5 = NSArray_EmptyArray;
      }
    }

    else
    {
      v5 = 0;
    }

    result = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (result)
    {
      v6 = result;
      obj = v5;
      v17 = *v23;
      do
      {
        v7 = 0;
        do
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v22 + 1) + 8 * v7);
          if ([v8 count] >= 2)
          {
            v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v15 addObject:v9];

            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v19;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v19 != v12)
                  {
                    objc_enumerationMutation(v8);
                  }

                  v14 = [v1[5] objectForKey:*(*(&v18 + 1) + 8 * i)];
                  [v14 setConstrained:1];
                  [v9 addObject:v14];
                }

                v11 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v11);
            }
          }

          v7 = (v7 + 1);
        }

        while (v7 != v6);
        result = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (id)attributes
{
  while (self)
  {
    selfCopy = self;
    self = *(self + 21);
    if (self == selfCopy)
    {
      return selfCopy[9];
    }
  }

  return self;
}

- (void)_organizeConstraints
{
  v33 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = [*(self + 216) count];
    if (!*(self + 160) && v2 != 0)
    {
      v4 = v2;
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v2];
      keyCallBacks.version = *MEMORY[0x1E695E9D8];
      *&keyCallBacks.retain = *(MEMORY[0x1E695E9D8] + 8);
      v6 = *(MEMORY[0x1E695E9D8] + 24);
      keyCallBacks.equal = 0;
      keyCallBacks.hash = 0;
      keyCallBacks.copyDescription = v6;
      v19 = v4;
      v7 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v4, &keyCallBacks, MEMORY[0x1E695E9E8]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      selfCopy = self;
      obj = *(self + 216);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = [*(*(&v26 + 1) + 8 * i) sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"name", 1))}];
            v13 = [objc_msgSend_valueForKey_(v12) componentsJoinedByString:@"_"];
            [v5 addObject:v13];
            CFDictionaryAddValue(v7, v13, v12);
          }

          v9 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v9);
      }

      [v5 sortUsingComparator:&__block_literal_global_44];
      v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v19];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v15 = [v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v5);
            }

            [v14 addObject:{CFDictionaryGetValue(v7, *(*(&v22 + 1) + 8 * j))}];
          }

          v16 = [v5 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v16);
      }

      *(selfCopy + 216) = v14;
      CFRelease(v7);
    }
  }
}

- (void)tempTableName
{
  if (result)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"TEMP_CD%@", result[4]);
  }

  return result;
}

- (NSSQLEntity_DerivedAttributesExtension)derivedAttributesExtension
{
  if (result)
  {
    v1 = result;
    result = result[6]._triggerSQL;
    if (!result)
    {
      result = [[NSSQLEntity_DerivedAttributesExtension alloc] initWithEntity:v1];
      v1[6]._triggerSQL = result;
    }
  }

  return result;
}

- (id)toManyRelationships
{
  v16 = *MEMORY[0x1E69E9840];
  propertiesAllToManysCache = self->_propertiesAllToManysCache;
  if (!propertiesAllToManysCache)
  {
    propertiesAllToManysCache = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    properties = [(NSSQLEntity *)self properties];
    v5 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(properties);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if ([v9 isToMany])
          {
            CFArrayAppendValue(propertiesAllToManysCache, v9);
          }
        }

        v6 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_propertiesAllToManysCache = propertiesAllToManysCache;
  }

  return propertiesAllToManysCache;
}

- (id)manyToManyRelationships
{
  v16 = *MEMORY[0x1E69E9840];
  propertyManyToManyCache = self->_propertyManyToManyCache;
  if (!propertyManyToManyCache)
  {
    propertyManyToManyCache = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    properties = [(NSSQLEntity *)self properties];
    v5 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(properties);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (v9 && v9[24] == 9)
          {
            CFArrayAppendValue(propertyManyToManyCache, v9);
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [properties countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    self->_propertyManyToManyCache = propertyManyToManyCache;
  }

  return propertyManyToManyCache;
}

- (uint64_t)properties
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = *(result + 48);
    if (!result)
    {
      allValues = [*(v1 + 40) allValues];
      v3 = [allValues count];
      v4 = MEMORY[0x1EEE9AC00](v3);
      v7 = (v9 - v6);
      if (v4 > 0x200)
      {
        v7 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v9 - v6, 8 * v5);
      }

      [allValues getObjects:v7 range:{0, v3}];
      v8 = CFArrayCreate(*MEMORY[0x1E695E480], v7, v3, 0);
      if (v3 >= 0x201)
      {
        NSZoneFree(0, v7);
      }

      *(v1 + 48) = v8;
      return *(v1 + 48);
    }
  }

  return result;
}

void *__34__NSSQLEntity__generateProperties__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        if ([v9 isNSArray])
        {
          v10 = *(*(*(*(a1 + 64) + 8) + 40) + 16);
LABEL_10:
          v10();
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = *(*(*(a1 + 64) + 8) + 40);
          [v9 elements];
          objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, [v9 name]);
          v10 = *(v11 + 16);
          goto LABEL_10;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v9 name];
          v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a3, v12);
          if (![*(*(a1 + 32) + 40) objectForKey:v13])
          {
            v14 = [[NSSQLAttribute alloc] initWithEntity:*(a1 + 32) propertyDescription:v9];
            [(NSSQLEntity *)*(a1 + 32) _addColumnToFetch:v14];
            [*(a1 + 40) addObject:v14];
            [*(*(a1 + 32) + 40) setObject:v14 forKey:v13];
            if ((*(a1 + 72) & 1) == 0)
            {
              [*(a1 + 48) setObject:v14 forKey:v13];
            }

            if ([*(a1 + 56) _propertyType] == 6)
            {
              [(NSSQLEntity *)*(a1 + 32) addDerivedAttribute:v14];
            }

            _PF_Leopard_CFDictionarySetValue(*(*(a1 + 32) + 248), v13, v14);
          }
        }

LABEL_11:
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (NSSQLEntity)initWithModel:(id)model entityDescription:(id)description
{
  v36 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = NSSQLEntity;
  v6 = [(NSSQLEntity *)&v25 init];
  if (v6)
  {
    v7 = +[NSSQLStoreMappingGenerator defaultMappingGenerator];
    if (model)
    {
      v8 = *(model + 15) >> 7 > 0x7Cu;
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 4) = [(NSSQLStoreMappingGenerator *)v7 generateTableName:description isAncillary:v8];
    *(v6 + 3) = description;
    *(v6 + 2) = model;
    atomic_store(0, v6 + 28);
    *(v6 + 12) = *(*(description + 14) + 96);
    *(v6 + 70) = *(v6 + 70) & 0xFFFFFFFE | [(NSEntityDescription *)description _hasAttributesWithExternalDataReferences];
    if ([(NSEntityDescription *)description _hasAttributesWithFileBackedFutures])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 70) = *(v6 + 70) & 0xFFFFFFFD | v9;
    if (![description superentity])
    {
      *(v6 + 27) = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(v6 + 26) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if ([description indexes] && objc_msgSend(objc_msgSend(description, "indexes"), "count"))
    {
      v24 = *(v6 + 29);
      if (!v24)
      {
        v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(v6 + 29) = v24;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v10 = v6;
      indexes = [*(v6 + 3) indexes];
      v12 = [indexes countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(indexes);
            }

            v16 = *(*(&v30 + 1) + 8 * i);
            if ([objc_msgSend(v16 "elements")] && objc_msgSend(objc_msgSend(objc_msgSend(v16, "elements"), "firstObject"), "collationType") == 1)
            {
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              elements = [v16 elements];
              v18 = [elements countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v27;
LABEL_22:
                v21 = 0;
                while (1)
                {
                  if (*v27 != v20)
                  {
                    objc_enumerationMutation(elements);
                  }

                  if ([objc_msgSend(*(*(&v26 + 1) + 8 * v21) "property")])
                  {
                    break;
                  }

                  if (v19 == ++v21)
                  {
                    v19 = [elements countByEnumeratingWithState:&v26 objects:v34 count:16];
                    if (v19)
                    {
                      goto LABEL_22;
                    }

                    goto LABEL_28;
                  }
                }
              }

              else
              {
LABEL_28:
                v22 = [[NSSQLRTreeIndex alloc] initForIndexDescription:v16 sqlEntity:v10];
                [v24 setObject:v22 forKey:{objc_msgSend(v16, "name")}];
              }
            }
          }

          v13 = [indexes countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v13);
      }

      return v10;
    }
  }

  return v6;
}

- (void)entitySpecificPropertiesPassing:(uint64_t)passing
{
  v19 = *MEMORY[0x1E69E9840];
  if (!passing)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [*(passing + 40) allValues];
  v5 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ((*(a2 + 16))(a2, [v9 propertyType]))
        {
          v10 = *(passing + 160);
          name = [v9 name];
          if (!v10 || ![*(v10 + 40) objectForKey:name])
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)subhierarchyColumnMatching:(uint64_t)matching
{
  v18 = *MEMORY[0x1E69E9840];
  if (!matching)
  {
    return 0;
  }

  v4 = [*(matching + 40) objectForKey:{objc_msgSend(a2, "name")}];
  if (!v4 || (v5 = v4, [v4 propertyType] != 1) || !objc_msgSend(objc_msgSend(a2, "propertyDescription"), "_isSchemaEqual:", objc_msgSend(v5, "propertyDescription")) || (objc_msgSend(objc_msgSend(a2, "columnName"), "isEqual:", objc_msgSend(v5, "columnName")) & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = *(matching + 152);
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(NSSQLEntity *)*(*(&v13 + 1) + 8 * v10) subhierarchyColumnMatching:a2];
          if (v11)
          {
            return v11;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    return 0;
  }

  return v5;
}

- (void)_addSubentity:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[19];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3[19] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

- (id)_sqlPropertyWithRenamingIdentifier:(id *)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    propertiesByName = [result[3] propertiesByName];
    if ([objc_msgSend(objc_msgSend(propertiesByName objectForKey:{a2), "renamingIdentifier"), "isEqualToString:", a2}])
    {
      v5 = v3[5];

      return [v5 objectForKey:a2];
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      allValues = [propertiesByName allValues];
      result = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v12;
        while (2)
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            v10 = *(*(&v11 + 1) + 8 * v9);
            if ([objc_msgSend(v10 "renamingIdentifier")])
            {
              return [v3[5] objectForKey:{objc_msgSend(v10, "name")}];
            }

            v9 = (v9 + 1);
          }

          while (v7 != v9);
          result = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
          v7 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

- (void)_addColumnToFetch:(void *)result
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = result;
  v4 = result[21];
  if (v4)
  {
    v5 = [*(v4 + 72) count];
    [*(v4 + 72) addObject:a2];
    a2[13] = v5;
  }

  propertyType = [a2 propertyType];
  if (propertyType > 3)
  {
    if (propertyType == 4)
    {
      v7 = &OBJC_IVAR___NSSQLEntity__ekColumns;
    }

    else
    {
      if (propertyType != 10)
      {
        goto LABEL_18;
      }

      v7 = &OBJC_IVAR___NSSQLEntity__fokColumns;
    }

LABEL_14:
    v8 = *(v3 + *v7);
    if (v8 || (v8 = objc_opt_new(), (*(v3 + *v7) = v8) != 0))
    {
      v9 = [v8 count];
      [v8 addObject:a2];
      if (a2[14] == -1)
      {
        a2[14] = v9;
      }
    }

    goto LABEL_18;
  }

  if (propertyType == 1)
  {
    v7 = &OBJC_IVAR___NSSQLEntity__attrColumns;
    goto LABEL_14;
  }

  if (propertyType == 3)
  {
    v7 = &OBJC_IVAR___NSSQLEntity__fkColumns;
    goto LABEL_14;
  }

LABEL_18:
  result = v3[10];
  if (result)
  {
    v10 = a2[13];
    if ([result count] < v10)
    {
      do
      {
        v11 = [v3[10] count];
        objc_opt_self();
        os_unfair_lock_lock_with_options();
        v12 = [qword_1ED4BE7E8 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
        if (!v12)
        {
          v13 = [[NSSQLColumn alloc] initWithColumnName:@"0" sqlType:1];
          v12 = v13;
          if (v13)
          {
            *&v13->super._flags &= ~1u;
            v13->super._fetchIndex = v11;
          }

          [qword_1ED4BE7E8 setObject:v13 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v11)}];
        }

        os_unfair_lock_unlock(&_MergedGlobals_91);
        [v3[10] addObject:v12];
      }

      while ([v3[10] count] < v10);
    }

    v14 = v3[10];

    return [v14 addObject:a2];
  }

  return result;
}

- (void)_addForeignOrderKeyForToOne:(void *)one entity:
{
  v18 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v5 = result;
  result = [a2 sourceEntity];
  if (!a2)
  {
    return result;
  }

  v6 = a2[10];
  if (!v6)
  {
    return result;
  }

  v7 = result;
  result = [v5[5] objectForKey:{objc_msgSend(a2[10], "name")}];
  if (result)
  {
    return result;
  }

  [v5[5] setObject:v6 forKey:{objc_msgSend(v6, "name")}];
  v8 = v5[31];
  if (v8)
  {
    _PF_Leopard_CFDictionarySetValue(v8, [v6 name], v6);
  }

  if (v7 != one)
  {
    v9 = v5[13];
    if (!v9)
    {
      v9 = objc_opt_new();
      v5[13] = v9;
    }

    [v9 addObject:v6];
    if (!one)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [(NSSQLEntity *)v5 _addColumnToFetch:v6];
  if (one)
  {
LABEL_11:
    one = one[19];
  }

LABEL_12:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [one countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(one);
        }

        [(NSSQLEntity *)*(*(&v13 + 1) + 8 * v12) _addForeignOrderKeyForToOne:a2 entity:*(*(&v13 + 1) + 8 * v12)];
        v12 = (v12 + 1);
      }

      while (v10 != v12);
      result = [one countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

- (NSSQLToOne)_addVirtualToOneForToMany:(NSSQLToOne *)many withInheritedProperty:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  manyCopy = many;
  v6 = *(self + 16);
  if (v6)
  {
    v7 = *(v6 + 57);
    if (many)
    {
      v8 = 0;
      goto LABEL_7;
    }

    *(v6 + 58) = 1;
    v9 = v7;
    goto LABEL_6;
  }

  v9 = 0;
  v8 = 0;
  v7 = 0;
  if (!many)
  {
LABEL_6:
    manyCopy = [[NSSQLToOne alloc] initWithEntity:self inverseToMany:a2];
    v8 = 1;
    v7 = v9;
  }

LABEL_7:
  foreignKey = [(NSSQLToOne *)manyCopy foreignKey];
  [*(self + 40) setObject:foreignKey forKey:{objc_msgSend(foreignKey, "name")}];
  if ((v7 & 1) == 0)
  {
    _PF_Leopard_CFDictionarySetValue(*(self + 248), [foreignKey name], foreignKey);
  }

  if (v8)
  {
    [(NSSQLEntity *)self _addColumnToFetch:foreignKey];
  }

  else
  {
    v11 = *(self + 96);
    if (!v11)
    {
      v11 = objc_opt_new();
      *(self + 96) = v11;
    }

    [v11 addObject:foreignKey];
  }

  if (manyCopy)
  {
    foreignEntityKey = manyCopy->_foreignEntityKey;
    if (foreignEntityKey)
    {
      [*(self + 40) setObject:foreignEntityKey forKey:{-[NSSQLForeignEntityKey name](manyCopy->_foreignEntityKey, "name")}];
      if ((v7 & 1) == 0)
      {
        _PF_Leopard_CFDictionarySetValue(*(self + 248), [(NSSQLForeignEntityKey *)foreignEntityKey name], foreignEntityKey);
      }

      if (v8)
      {
        [(NSSQLEntity *)self _addColumnToFetch:?];
      }

      else
      {
        v13 = *(self + 88);
        if (!v13)
        {
          v13 = objc_opt_new();
          *(self + 88) = v13;
        }

        [v13 addObject:foreignEntityKey];
      }
    }
  }

  [*(self + 40) setObject:manyCopy forKey:{-[NSSQLRelationship name](manyCopy, "name")}];
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_25;
    }

LABEL_28:
    [(NSSQLRelationship *)manyCopy _setInverseRelationship:a2];

    if (!manyCopy)
    {
      goto LABEL_37;
    }

LABEL_29:
    foreignOrderKey = manyCopy->_foreignOrderKey;
    if (foreignOrderKey)
    {
      [*(self + 40) setObject:foreignOrderKey forKey:{-[NSSQLForeignOrderKey name](manyCopy->_foreignOrderKey, "name")}];
      v15 = *(self + 248);
      if (v15)
      {
        _PF_Leopard_CFDictionarySetValue(v15, [(NSSQLForeignOrderKey *)foreignOrderKey name], foreignOrderKey);
      }

      if (v8)
      {
        [(NSSQLEntity *)self _addColumnToFetch:?];
      }

      else
      {
        v16 = *(self + 104);
        if (!v16)
        {
          v16 = objc_opt_new();
          *(self + 104) = v16;
        }

        [v16 addObject:foreignOrderKey];
      }
    }

    goto LABEL_37;
  }

  _PF_Leopard_CFDictionarySetValue(*(self + 248), [(NSSQLRelationship *)manyCopy name], manyCopy);
  if (v8)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (manyCopy)
  {
    goto LABEL_29;
  }

LABEL_37:
  v17 = *(self + 152);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(NSSQLEntity *)*(*(&v23 + 1) + 8 * i) _addVirtualToOneForToMany:a2 withInheritedProperty:manyCopy];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v19);
  }

  return manyCopy;
}

- (void)addDerivedAttribute:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[32];
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v3[32] = v4;
    }

    return [v4 addObject:a2];
  }

  return result;
}

- (uint64_t)_generateIDWithSuperEntity:(int)entity nextID:
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  entityDescription = [self entityDescription];
  if (a2)
  {
    *(self + 168) = [a2 rootEntity];
    *(self + 160) = a2;
    [(NSSQLEntity *)a2 _addSubentity:self];
  }

  else
  {
    *(self + 168) = self;
  }

  *(self + 184) = entity;
  model = [self model];
  if (model)
  {
    [*(model + 32) addObject:self];
    CFRetain(self);
  }

  v8 = (entity + 1);
  _sortedSubentities = [(NSEntityDescription *)entityDescription _sortedSubentities];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [_sortedSubentities countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(_sortedSubentities);
        }

        v8 = -[NSSQLEntity _generateIDWithSuperEntity:nextID:]([*(self + 16) entityNamed:{objc_msgSend(*(*(&v15 + 1) + 8 * v13++), "name")}], self, v8);
      }

      while (v11 != v13);
      v11 = [_sortedSubentities countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  *(self + 188) = v8 - 1;
  return v8;
}

- (uint64_t)_collectFKSlots:(void *)slots error:
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AD50]);
  foreignKeyColumns = [*(self + 160) foreignKeyColumns];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  v8 = *(self + 96);
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        slot = [v13 slot];
        if ([a2 containsIndex:slot] && (objc_msgSend(foreignKeyColumns, "containsObject:", v13) & 1) == 0)
        {
          if (slots)
          {
            *slots = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(objc_msgSend(v13, "toOneRelationship"), "propertyDescription"), @"relationship"}];
          }

          goto LABEL_22;
        }

        [v6 addIndex:slot];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [v6 addIndexes:a2];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *(selfCopy + 152);
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
LABEL_13:
    v19 = 0;
    while (1)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(v15);
      }

      if (([(NSSQLEntity *)*(*(&v23 + 1) + 8 * v19) _collectFKSlots:v6 error:slots]& 1) != 0)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        v20 = 0;
        if (v17)
        {
          goto LABEL_13;
        }

        goto LABEL_23;
      }
    }

LABEL_22:
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

LABEL_23:

  return v20;
}

- (uint64_t)_entityIsBroken:(uint64_t)broken
{
  if (!broken || *(broken + 168) != broken)
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [(NSSQLEntity *)broken _collectFKSlots:v5 error:a2];

  return v6;
}

- (uint64_t)_generateAttributeDerivations:(uint64_t)result
{
  v108 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v4 = *(result + 256);
  v5 = [v4 countByEnumeratingWithState:&v74 objects:v107 count:16];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = MEMORY[0x1E695E0F0];
  v8 = *v75;
  v9 = 0x1E695D000uLL;
LABEL_4:
  v10 = 0;
  while (1)
  {
    if (*v75 != v8)
    {
      objc_enumerationMutation(v4);
    }

    v68 = v10;
    v11 = *(*(&v74 + 1) + 8 * v10);
    v12 = [*(v9 + 4008) set];
    propertyDescription = [v11 propertyDescription];
    v73 = 0;
    v14 = [objc_msgSend(propertyDescription "derivationExpression")];
    if (!v14)
    {
      v41 = *MEMORY[0x1E695D940];
      v42 = *MEMORY[0x1E696AA08];
      v105[0] = @"derived attribute";
      v105[1] = v42;
      v106[0] = propertyDescription;
      v106[1] = v73;
      v43 = [MEMORY[0x1E695DF30] exceptionWithName:v41 reason:@"Invalid keypaths found in derived attribute (derivationExpression)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v106, v105, 2)}];
      v44 = *MEMORY[0x1E696A250];
      v103 = @"NSUnderlyingException";
      v104 = v43;
      v45 = [MEMORY[0x1E696ABC0] errorWithDomain:v44 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v104, &v103, 1)}];
      if (v45)
      {
        goto LABEL_66;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v101 = 1024;
        v102 = 1523;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      *buf = 136315394;
      v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
      v101 = 1024;
      v102 = 1523;
      goto LABEL_54;
    }

    [v12 addObjectsFromArray:{objc_msgSend(v14, "allObjects")}];
    if (![propertyDescription filteringPredicate])
    {
      goto LABEL_11;
    }

    v15 = [objc_msgSend(propertyDescription "filteringPredicate")];
    if (!v15)
    {
      v51 = *MEMORY[0x1E695D940];
      v52 = *MEMORY[0x1E696AA08];
      v97[0] = @"derived attribute";
      v97[1] = v52;
      v98[0] = propertyDescription;
      v98[1] = v73;
      v53 = [MEMORY[0x1E695DF30] exceptionWithName:v51 reason:@"Invalid keypaths found in derived attribute (filteringPredicate)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v98, v97, 2)}];
      v54 = *MEMORY[0x1E696A250];
      v95 = @"NSUnderlyingException";
      v96 = v53;
      v45 = [MEMORY[0x1E696ABC0] errorWithDomain:v54 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v96, &v95, 1)}];
      if (v45)
      {
LABEL_66:
        if (a2)
        {
          *a2 = v45;
        }

        return 0;
      }

      v55 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v101 = 1024;
        v102 = 1532;
        _os_log_error_impl(&dword_18565F000, v55, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      *buf = 136315394;
      v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
      v101 = 1024;
      v102 = 1532;
LABEL_54:
      _os_log_fault_impl(&dword_18565F000, v36, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      return 0;
    }

    [v12 addObjectsFromArray:{objc_msgSend(v15, "allObjects")}];
LABEL_11:
    if (![v12 count])
    {
      derivedAttributesExtension = [(NSSQLEntity *)v3 derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)&derivedAttributesExtension->super.isa addDerivationKeypath:v7 forAttribute:v11];
      goto LABEL_38;
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v66 = [v12 countByEnumeratingWithState:&v69 objects:v94 count:16];
    if (v66)
    {
      break;
    }

LABEL_38:
    v10 = v68 + 1;
    if (v68 + 1 == v6)
    {
      v6 = [v4 countByEnumeratingWithState:&v74 objects:v107 count:16];
      result = 1;
      if (!v6)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  v67 = *v70;
  v62 = v4;
  v63 = a2;
  v64 = propertyDescription;
  v65 = v3;
  v60 = v8;
  v61 = v6;
  while (2)
  {
    v16 = 0;
LABEL_15:
    if (*v70 != v67)
    {
      objc_enumerationMutation(v12);
    }

    v17 = [*(*(&v69 + 1) + 8 * v16) componentsSeparatedByString:@"."];
    v18 = [v17 count];
    if (!v18)
    {
LABEL_34:
      if (++v16 == v66)
      {
        v29 = [v12 countByEnumeratingWithState:&v69 objects:v94 count:16];
        v4 = v62;
        a2 = v63;
        v3 = v65;
        v8 = v60;
        v6 = v61;
        v7 = MEMORY[0x1E695E0F0];
        v9 = 0x1E695D000;
        v66 = v29;
        if (!v29)
        {
          goto LABEL_38;
        }

        continue;
      }

      goto LABEL_15;
    }

    break;
  }

  v19 = v18;
  v20 = 0;
  v21 = v18 - 1;
  destinationEntity = v65;
  while (1)
  {
    v23 = [v17 objectAtIndexedSubscript:v20];
    if ([v23 hasPrefix:@"@"])
    {
      break;
    }

    if (!destinationEntity || (v24 = [(objc_class *)destinationEntity[1].super.isa objectForKey:v23]) == 0)
    {
      v31 = *MEMORY[0x1E695D940];
      v88[0] = @"derived attribute";
      v88[1] = @"component";
      v89[0] = v64;
      v89[1] = v23;
      v32 = [MEMORY[0x1E695DF30] exceptionWithName:v31 reason:@"Invalid keypaths found in derived attribute (can't find keypath component)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v89, v88, 2)}];
      v33 = *MEMORY[0x1E696A250];
      v86 = @"NSUnderlyingException";
      v87 = v32;
      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v33 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v87, &v86, 1)}];
      if (!v34)
      {
        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v101 = 1024;
          v102 = 1565;
          _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v36 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v101 = 1024;
          v102 = 1565;
          goto LABEL_54;
        }

        return 0;
      }

LABEL_48:
      if (v63)
      {
        *v63 = v34;
      }

      return 0;
    }

    v25 = v24;
    v26 = [objc_msgSend(v24 "propertyDescription")];
    if (v26 == 6)
    {
      v37 = *MEMORY[0x1E695D940];
      v84 = @"derived attribute";
      v85 = v64;
      v38 = [MEMORY[0x1E695DF30] exceptionWithName:v37 reason:@"Invalid keypaths found in derived attribute (derived attribute found in dependency chain)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v85, &v84, 1)}];
      v39 = *MEMORY[0x1E696A250];
      v82 = @"NSUnderlyingException";
      v83 = v38;
      v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v39 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v83, &v82, 1)}];
      if (v34)
      {
        goto LABEL_48;
      }

      v40 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v101 = 1024;
        v102 = 1572;
        _os_log_error_impl(&dword_18565F000, v40, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v36 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
        v101 = 1024;
        v102 = 1572;
        goto LABEL_54;
      }

      return 0;
    }

    if (v21 == v20)
    {
      derivedAttributesExtension2 = [(NSSQLEntity *)destinationEntity derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)&derivedAttributesExtension2->super.isa addDerivationKeypath:v17 forAttribute:v11];
    }

    else if (v26 == 2)
    {
      if (([objc_msgSend(v17 objectAtIndexedSubscript:{v20 + 1), "hasPrefix:", @"@"}] & 1) == 0)
      {
        v47 = *MEMORY[0x1E695D940];
        v80 = @"derived attribute";
        v81 = v64;
        v48 = [MEMORY[0x1E695DF30] exceptionWithName:v47 reason:@"Invalid keypaths found in derived attribute (non-terminal attribute not followed by a function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v81, &v80, 1)}];
        v49 = *MEMORY[0x1E696A250];
        v78 = @"NSUnderlyingException";
        v79 = v48;
        v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v49 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v79, &v78, 1)}];
        if (v34)
        {
          goto LABEL_48;
        }

        v50 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v101 = 1024;
          v102 = 1585;
          _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v36 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
          v101 = 1024;
          v102 = 1585;
          goto LABEL_54;
        }

        return 0;
      }
    }

    else if (v26 == 4)
    {
      destinationEntity = [v25 destinationEntity];
    }

    if (v19 == ++v20)
    {
      goto LABEL_34;
    }
  }

  if ([@"@count" caseInsensitiveCompare:v23])
  {
    if (destinationEntity)
    {
      derivedAttributesExtension3 = [(NSSQLEntity *)destinationEntity derivedAttributesExtension];
      [(NSSQLEntity_DerivedAttributesExtension *)&derivedAttributesExtension3->super.isa addDerivationKeypath:v17 forAttribute:v11];
    }

    goto LABEL_34;
  }

  v56 = *MEMORY[0x1E695D940];
  v92 = @"derived attribute";
  v93 = v64;
  v57 = [MEMORY[0x1E695DF30] exceptionWithName:v56 reason:@"Invalid keypaths found in derived attribute (unsupported function)" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v93, &v92, 1)}];
  v58 = *MEMORY[0x1E696A250];
  v90 = @"NSUnderlyingException";
  v91 = v57;
  v34 = [MEMORY[0x1E696ABC0] errorWithDomain:v58 code:134097 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v91, &v90, 1)}];
  if (v34)
  {
    goto LABEL_48;
  }

  v59 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
    v101 = 1024;
    v102 = 1554;
    _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v36 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v100 = "/Library/Caches/com.apple.xbs/Sources/Persistence/sqlcore/NSSQLEntity.m";
    v101 = 1024;
    v102 = 1554;
    goto LABEL_54;
  }

  return 0;
}

- (uint64_t)sqlAttributesForCompositeAttributeName:(uint64_t)name
{
  if (!name)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v2 = [*(name + 272) objectForKey:a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = MEMORY[0x1E695DEC8];

  return [v4 arrayWithArray:v3];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  name = [(NSSQLEntity *)self name];
  if (self)
  {
    v6 = objc_msgSend_stringWithFormat_(v4, name, self->_entityID);
  }

  else
  {
    v6 = objc_msgSend_stringWithFormat_(v4, name, 0);
  }

  v7 = v6;
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)copyValuesForReadOnlyFetch:(id)fetch
{
  self->_model = [fetch model];
  self->_entityDescription = [fetch entityDescription];
  self->_tableName = [objc_msgSend(fetch "tableName")];
  v5 = objc_alloc_init(NSSQLPrimaryKey);
  self->_primaryKey = v5;
  if (fetch)
  {
    v6 = *(fetch + 16);
  }

  else
  {
    v6 = 0;
  }

  [(NSSQLPrimaryKey *)v5 copyValuesForReadOnlyFetch:v6];
  v7 = objc_alloc_init(NSSQLEntityKey);
  self->_entityKey = v7;
  if (fetch)
  {
    [(NSSQLColumn *)v7 copyValuesForReadOnlyFetch:*(fetch + 17)];
    self->_entityID = *(fetch + 46);
    v8 = *(fetch + 47);
  }

  else
  {
    [(NSSQLColumn *)v7 copyValuesForReadOnlyFetch:0];
    v8 = 0;
    self->_entityID = 0;
  }

  self->_subentityMaxID = v8;
  self->_columnsToFetch = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_attrColumns = 0;
  self->_ekColumns = 0;
  self->_fokColumns = 0;
  self->_fkColumns = 0;
  self->_properties = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_rootEntity = self;
  self->_propertyMapping = [MEMORY[0x1E695DFB0] null];
}

- (uint64_t)addPropertiesForReadOnlyFetch:(uint64_t)fetch keys:(void *)keys context:
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = result;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if (v11)
          {
            v11[2] = v6;
          }

          propertyType = [v11 propertyType];
          if (propertyType == 7)
          {
            [*(v6 + 40) setObject:v11 forKey:{objc_msgSend(v11, "name")}];
            if (v11)
            {
              v13 = v11[9];
              if (v13)
              {
                *(v13 + 16) = v6;
                [(NSSQLEntity *)v6 _addColumnToFetch:v13];
              }
            }

            foreignKey = [v11 foreignKey];
            if (foreignKey)
            {
              *(foreignKey + 16) = v6;
            }

            [(NSSQLEntity *)v6 _addColumnToFetch:foreignKey];
          }

          else
          {
            if (propertyType != 1)
            {
              [keys setObject:objc_msgSend(MEMORY[0x1E695DF30] forKey:{"exceptionWithName:reason:userInfo:", *MEMORY[0x1E695D930], objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], objc_msgSend(v11, "name")), 0), @"NSUnderlyingException"}];
              return 0;
            }

            [(NSSQLEntity *)v6 _addColumnToFetch:v11];
            [*(v6 + 40) setObject:v11 forKey:{objc_msgSend(v11, "name")}];
          }
        }

        v8 = [a2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    *(v6 + 240) = [[NSKnownKeysMappingStrategy alloc] initForKeys:fetch];
    return 1;
  }

  return result;
}

- (void)rtreeIndexes
{
  if (result)
  {
    v1 = result;
    result = result[29];
    if (!result)
    {
      result = objc_alloc_init(MEMORY[0x1E695DF90]);
      v1[29] = result;
    }
  }

  return result;
}

- (void)indexForIndexDescription:(void *)result
{
  if (result)
  {
    v3 = result;
    if (a2 && [a2[2] count] && !objc_msgSend(objc_msgSend(a2[2], "firstObject"), "collationType"))
    {
      v6 = [(NSSQLIndex *)[NSSQLBinaryIndex alloc] initForIndexDescription:a2 sqlEntity:v3];

      return v6;
    }

    else
    {
      v4 = v3[29];
      name = [a2 name];

      return [v4 objectForKey:name];
    }
  }

  return result;
}

- (uint64_t)rtreeIndexForIndexNamed:(uint64_t)named
{
  if (!named)
  {
    return 0;
  }

  v3 = *(named + 232);
  if (a2)
  {

    return [v3 objectForKey:a2];
  }

  if ([v3 count] != 1)
  {
    return 0;
  }

  allValues = [*(named + 232) allValues];

  return [allValues firstObject];
}

uint64_t __61__NSSQLEntity_DerivedAttributesExtension__generateTriggerSQL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [NSSQLDerivedAttributeSQLGenerator generateSQLForDerivedAttribute:a2 keypaths:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 objectAtIndexedSubscript:{0, 0}];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1 + 32) + 24) addObject:*(*(&v14 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v10 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 32));
  [v10 addObjectsFromArray:{objc_msgSend_valueForKey_(objc_msgSend(v4, "objectAtIndexedSubscript:", 1))}];
  v11 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 32));
  [v11 addObjectsFromArray:{objc_msgSend_valueForKey_(objc_msgSend(v4, "objectAtIndexedSubscript:", 1))}];
  v12 = objc_msgSend_valueForKey_(*(*(a1 + 32) + 32));
  return [v12 addObjectsFromArray:{objc_msgSend_valueForKey_(objc_msgSend(v4, "objectAtIndexedSubscript:", 1))}];
}

@end