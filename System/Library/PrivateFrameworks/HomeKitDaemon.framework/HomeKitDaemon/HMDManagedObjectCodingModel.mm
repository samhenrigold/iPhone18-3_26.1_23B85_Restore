@interface HMDManagedObjectCodingModel
- (BOOL)_prepareRelatedObject:(uint64_t)object ofManagedObject:(void *)managedObject relationship:(uint64_t)relationship byReference:(uint64_t)reference context:;
- (BOOL)_processDeferredBlocks:(id *)blocks context:;
- (BOOL)encodeRootObject:(id)object withWriter:(id)writer changes:(id)changes conditions:(id)conditions userContext:(id)context;
- (BOOL)isRelevantChanges:(id)changes withRootObject:(id)object conditions:(id)conditions userContext:(id)context;
- (BOOL)updateRootObject:(id)object fromReader:(id)reader;
- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntity:(id)entity;
- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntity:(id)entity options:(unint64_t)options;
- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntityName:(id)name;
- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntityName:(id)name options:(unint64_t)options;
- (id)_decodeManagedObjectWithDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type candidates:(uint64_t)candidates context:(uint64_t)context orEmplaceWithBlock:;
- (id)_decodeManagedObjectWithDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type context:(uint64_t)context lookupBlock:(uint64_t)block emplaceBlock:;
- (id)_managedObjectWithDescription:(void *)description matchingKeyAttributes:(uint64_t)attributes context:;
- (id)_readKeyAttributesWithDescription:(void *)description typeID:(int)d byReference:(id *)reference context:;
- (id)_readValueForAttribute:(void *)attribute context:(id *)context;
- (id)codingKeyForProperty:(uint64_t)property;
- (id)codingKeyForPropertyName:(uint64_t)name;
- (id)decodeRootObjectFromReader:(id)reader;
- (id)descriptionForAttribute:(id)attribute;
- (id)descriptionForDestinationOfRelationship:(id)relationship;
- (id)descriptionForEntity:(id)entity;
- (id)descriptionForManagedObject:(id)object;
- (id)descriptionForRelationship:(id)relationship;
- (id)insertOrUpdateRootObjectInContext:(id)context fromReader:(id)reader;
- (id)mutableCodingKeyTableForProperties:(uint64_t)properties;
- (id)reverseLookupTableForCodingKeyTable:(void *)table;
- (id)subentityOfDescription:(id)description withTypeID:(id)d;
- (id)typeIdForEntity:(uint64_t)entity;
- (uint64_t)_conditionallyEncodeChildObject:(void *)object withDescription:(void *)description forRelationship:(uint64_t)relationship byReference:(int)reference useDynamicType:(uint64_t)type context:;
- (uint64_t)_managedObject:(uint64_t)object withDescription:(void *)description matchesKeyAttributes:;
- (uint64_t)contextualizeConditions:(void *)conditions forManagedObject:(uint64_t)object userContext:;
- (uint64_t)includeModeForProperty:(uint64_t)property withDefault:;
- (void)_buildPredicateAtoms:(void *)atoms withDescription:(uint64_t)description keyPathPrefix:(void *)prefix values:;
- (void)_encodeAttribute:(void *)attribute ofManagedObject:(uint64_t)object context:;
- (void)_encodeKeyAttributesOfManagedObject:(void *)object withDescription:(uint64_t)description typeID:(int)d byReference:(id *)reference context:;
- (void)_encodeManagedObject:(void *)object withDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type context:;
- (void)_encodeRelationship:(void *)relationship ofManagedObject:(uint64_t)object context:;
- (void)_encodeValue:(void *)value forAttribute:(void *)attribute context:;
@end

@implementation HMDManagedObjectCodingModel

- (id)subentityOfDescription:(id)description withTypeID:(id)d
{
  concreteSubentitiesByTypeID = [description concreteSubentitiesByTypeID];
  v7 = [concreteSubentitiesByTypeID objectForKeyedSubscript:d];

  if (v7)
  {
    descriptions = self->_descriptions;
    name = [v7 name];
    v10 = [(NSDictionary *)descriptions objectForKeyedSubscript:name];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionForDestinationOfRelationship:(id)relationship
{
  relationship = [relationship relationship];
  destinationEntity = [relationship destinationEntity];
  v6 = [(HMDManagedObjectCodingModel *)self descriptionForEntity:destinationEntity];

  return v6;
}

- (id)descriptionForRelationship:(id)relationship
{
  descriptions = self->_descriptions;
  entity = [relationship entity];
  name = [entity name];
  v7 = [(NSDictionary *)descriptions objectForKeyedSubscript:name];
  v8 = [v7 descriptionForRelationship:relationship];

  return v8;
}

- (id)descriptionForAttribute:(id)attribute
{
  descriptions = self->_descriptions;
  entity = [attribute entity];
  name = [entity name];
  v7 = [(NSDictionary *)descriptions objectForKeyedSubscript:name];
  v8 = [v7 descriptionForAttribute:attribute];

  return v8;
}

- (id)descriptionForManagedObject:(id)object
{
  descriptions = self->_descriptions;
  entity = [object entity];
  name = [entity name];
  v6 = [(NSDictionary *)descriptions objectForKeyedSubscript:name];

  return v6;
}

- (id)descriptionForEntity:(id)entity
{
  descriptions = self->_descriptions;
  name = [entity name];
  v5 = [(NSDictionary *)descriptions objectForKeyedSubscript:name];

  return v5;
}

- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntity:(id)entity options:(unint64_t)options
{
  v179 = *MEMORY[0x277D85DE8];
  if (!model)
  {
    _HMFPreconditionFailure();
    goto LABEL_108;
  }

  if (!namespace)
  {
LABEL_108:
    _HMFPreconditionFailure();
LABEL_109:
    _HMFPreconditionFailure();
LABEL_110:
    [v142 name];
    objc_claimAutoreleasedReturnValue();
    _HMFPreconditionFailureWithFormat();
LABEL_113:
    __break(1u);
  }

  if (!entity)
  {
    goto LABEL_109;
  }

  v158.receiver = self;
  v158.super_class = HMDManagedObjectCodingModel;
  v9 = [(HMDManagedObjectCodingModel *)&v158 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, model);
    v10->_options = options;
    v11 = [namespace stringByAppendingString:@"TypeID"];
    typeIDConfigKey = v10->_typeIDConfigKey;
    v10->_typeIDConfigKey = v11;

    v13 = [namespace stringByAppendingString:@"KeyAttributes"];
    keyAttributesConfigKey = v10->_keyAttributesConfigKey;
    v10->_keyAttributesConfigKey = v13;

    v15 = [namespace stringByAppendingString:@"RefContext"];
    refContextConfigKey = v10->_refContextConfigKey;
    v10->_refContextConfigKey = v15;

    v17 = [namespace stringByAppendingString:@"Include"];
    includeConfigKey = v10->_includeConfigKey;
    v10->_includeConfigKey = v17;

    v19 = [namespace stringByAppendingString:@"Key"];
    codingKeyConfigKey = v10->_codingKeyConfigKey;
    v10->_codingKeyConfigKey = v19;

    v21 = [namespace stringByAppendingFormat:@"Transformer"];
    transformerConfigKey = v10->_transformerConfigKey;
    v10->_transformerConfigKey = v21;

    v23 = [namespace stringByAppendingString:@"Inline"];
    inlineConfigKey = v10->_inlineConfigKey;
    v10->_inlineConfigKey = v23;

    v25 = [namespace stringByAppendingString:@"Conditional"];
    conditionalConfigKey = v10->_conditionalConfigKey;
    v10->_conditionalConfigKey = v25;

    v27 = [namespace stringByAppendingString:@"ContextualizeConditions:userContext:"];
    v28 = NSSelectorFromString(v27);
    p_contextualizeConditionsSelector = &v10->_contextualizeConditionsSelector;
    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v10->_contextualizeConditionsSelector = v29;

    v30 = [namespace stringByAppendingString:@"AttributeValueForKey:userContext:"];
    v31 = NSSelectorFromString(v30);
    p_attributeValueForKeySelector = &v10->_attributeValueForKeySelector;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v10->_attributeValueForKeySelector = v32;

    v33 = objc_alloc_init(MEMORY[0x277CBEB40]);
    conditions = v10->_conditions;
    v10->_conditions = v33;

    v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = [MEMORY[0x277CBEB18] arrayWithObject:entity];
    if ([v35 count])
    {
      while (1)
      {
        obj = [v35 lastObject];
        [v35 removeLastObject];
        name = [obj name];
        v36 = [v141 objectForKeyedSubscript:name];

        if (!v36)
        {
          break;
        }

LABEL_100:

        if (![v35 count])
        {
          goto LABEL_101;
        }
      }

      v37 = [HMDEntityCodingDescription alloc];
      if (!v37 || (v159.receiver = v37, v159.super_class = HMDEntityCodingDescription, v38 = [(HMDManagedObjectCodingModel *)&v159 init], (v143 = v38) == 0))
      {
        v48 = 0;
LABEL_80:
        v115 = v48;
        [v141 setObject:? forKeyedSubscript:?];
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
        concreteSubentitiesByTypeID = [(HMDManagedObjectCodingModel *)v115 concreteSubentitiesByTypeID];
        allValues = [concreteSubentitiesByTypeID allValues];

        v118 = [allValues countByEnumeratingWithState:&v154 objects:v171 count:16];
        if (v118)
        {
          v119 = *v155;
          do
          {
            for (i = 0; i != v118; ++i)
            {
              if (*v155 != v119)
              {
                objc_enumerationMutation(allValues);
              }

              if (*(*(&v154 + 1) + 8 * i) != obj)
              {
                [v35 addObject:?];
              }
            }

            v118 = [allValues countByEnumeratingWithState:&v154 objects:v171 count:16];
          }

          while (v118);
        }

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        relationshipsByCodingKey = [(HMDManagedObjectCodingModel *)v115 relationshipsByCodingKey];
        allValues2 = [relationshipsByCodingKey allValues];

        v123 = [allValues2 countByEnumeratingWithState:&v150 objects:v170 count:16];
        if (v123)
        {
          v124 = *v151;
          do
          {
            for (j = 0; j != v123; ++j)
            {
              if (*v151 != v124)
              {
                objc_enumerationMutation(allValues2);
              }

              v126 = *(*(&v150 + 1) + 8 * j);
              relationship = [v126 relationship];
              destinationEntity = [relationship destinationEntity];
              [v35 addObject:destinationEntity];

              if (!v10->_hasAnyReferenceRelationships && [v126 isReference])
              {
                v10->_hasAnyReferenceRelationships = 1;
              }
            }

            v123 = [allValues2 countByEnumeratingWithState:&v150 objects:v170 count:16];
          }

          while (v123);
        }

        goto LABEL_100;
      }

      objc_storeStrong(&v38->_model, obj);
      v39 = [(HMDManagedObjectCodingModel *)v10 typeIdForEntity:?];
      options = v143->_options;
      v143->_options = v39;

      v41 = v10->_keyAttributesConfigKey;
      v42 = obj;
      v142 = v42;
      if (v42)
      {
        v139 = v41;
        v43 = v42;
        do
        {
          userInfo = [v43 userInfo];
          v45 = [userInfo objectForKeyedSubscript:v10->_keyAttributesConfigKey];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v46 = v45;
          }

          else
          {
            v46 = 0;
          }

          v147 = v46;

          superentity = [v43 superentity];

          v43 = superentity;
        }

        while (superentity && !v147);
        if (v147)
        {
          firstObject = [v147 componentsSeparatedByString:{@", "}];
          goto LABEL_28;
        }

        v41 = v139;
      }

      else
      {
        superentity = 0;
      }

      uniquenessConstraints = [v142 uniquenessConstraints];
      firstObject = [uniquenessConstraints firstObject];

      v147 = 0;
      v139 = @"unique constraint";
LABEL_28:
      if (![firstObject count])
      {
        goto LABEL_110;
      }

      attributesByName = [v142 attributesByName];
      v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(firstObject, "count")}];
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v52 = firstObject;
      v53 = [v52 countByEnumeratingWithState:&v160 objects:buf count:16];
      if (v53)
      {
        v54 = *v161;
        do
        {
          for (k = 0; k != v53; ++k)
          {
            if (*v161 != v54)
            {
              objc_enumerationMutation(v52);
            }

            v56 = [attributesByName objectForKeyedSubscript:*(*(&v160 + 1) + 8 * k)];
            v57 = v56;
            if (!v56)
            {
              goto LABEL_110;
            }

            if ([v56 isOptional])
            {
              [v142 name];
              objc_claimAutoreleasedReturnValue();
              [v57 name];
              objc_claimAutoreleasedReturnValue();
              _HMFPreconditionFailureWithFormat();
              goto LABEL_113;
            }

            [v51 addObject:v57];
          }

          v53 = [v52 countByEnumeratingWithState:&v160 objects:buf count:16];
        }

        while (v53);
      }

      v58 = objc_msgSend_copy(v51);
      v59 = [(HMDManagedObjectCodingModel *)v10 mutableCodingKeyTableForProperties:v58];
      v60 = objc_msgSend_copy(v59);
      v61 = *&v143->_hasAnyReferenceRelationships;
      *&v143->_hasAnyReferenceRelationships = v60;

      [*&v143->_hasAnyReferenceRelationships enumerateKeysAndObjectsUsingBlock:&__block_literal_global_64822];
      attributesByName2 = [v142 attributesByName];
      allValues3 = [attributesByName2 allValues];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __57__HMDManagedObjectCodingModel_syncedAttributesForEntity___block_invoke;
      v173 = &unk_2786751A8;
      v174 = v10;
      v148 = [allValues3 hmf_objectsPassingTest:buf];

      v64 = [(HMDManagedObjectCodingModel *)v10 mutableCodingKeyTableForProperties:v148];
      allKeys = [*&v143->_hasAnyReferenceRelationships allKeys];
      [v64 removeObjectsForKeys:allKeys];

      v66 = objc_msgSend_copy(v64);
      v67 = v143->_typeIDConfigKey;
      v143->_typeIDConfigKey = v66;

      v68 = [HMDManagedObjectCodingModel reverseLookupTableForCodingKeyTable:?];
      v69 = v143->_keyAttributesConfigKey;
      v143->_keyAttributesConfigKey = v68;

      relationshipsByName = [v142 relationshipsByName];
      allValues4 = [relationshipsByName allValues];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __60__HMDManagedObjectCodingModel_syncedRelationshipsForEntity___block_invoke;
      v173 = &unk_2786751D0;
      v174 = v10;
      v175 = v142;
      v146 = [allValues4 hmf_objectsPassingTest:buf];

      v72 = [(HMDManagedObjectCodingModel *)v10 mutableCodingKeyTableForProperties:v146];
      v73 = objc_msgSend_copy(v72);
      v74 = v143->_refContextConfigKey;
      v143->_refContextConfigKey = v73;

      v75 = [HMDManagedObjectCodingModel reverseLookupTableForCodingKeyTable:?];
      v76 = v143->_includeConfigKey;
      v143->_includeConfigKey = v75;

      relationshipsByName2 = [v142 relationshipsByName];
      allValues5 = [relationshipsByName2 allValues];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __60__HMDManagedObjectCodingModel_parentRelationshipsForEntity___block_invoke;
      v173 = &unk_2786751D0;
      v174 = v10;
      v175 = v142;
      v79 = [allValues5 hmf_objectsPassingTest:buf];

      v80 = v143->_codingKeyConfigKey;
      v143->_codingKeyConfigKey = v79;

      v81 = objc_alloc_init(MEMORY[0x277CBEB38]);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __68__HMDManagedObjectCodingModel_concreteSubentitiesByTypeIDForEntity___block_invoke;
      v173 = &unk_278675158;
      v174 = v10;
      v175 = v81;
      v176 = v142;
      v82 = v81;
      [v142 hmd_recursivelyEnumerateSubentitiesUsingBlock:buf];
      v83 = objc_msgSend_copy(v82);

      if ([v83 count] > 1 || objc_msgSend(v142, "isAbstract"))
      {
        v84 = v83;
      }

      else
      {
        v84 = 0;
      }

      objc_storeStrong(&v143->_transformerConfigKey, v84);
      userInfo2 = [v142 userInfo];
      v86 = [userInfo2 objectForKeyedSubscript:v10->_refContextConfigKey];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v87 = v86;
      }

      else
      {
        v87 = 0;
      }

      v88 = v87;

      if (v88)
      {
        *&v160 = 0;
        *(&v160 + 1) = &v160;
        *&v161 = 0x3032000000;
        *(&v161 + 1) = __Block_byref_object_copy__64831;
        *&v162 = __Block_byref_object_dispose__64832;
        *(&v162 + 1) = 0;
        v89 = [(NSDictionary *)v88 rangeOfString:@"="];
        v90 = v89;
        if (v89 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!v89 || v89 + 1 >= [(NSDictionary *)v88 length])
          {
            goto LABEL_110;
          }

          v91 = [(NSDictionary *)v88 substringToIndex:v90];
          v92 = *(*(&v160 + 1) + 40);
          *(*(&v160 + 1) + 40) = v91;

          v86 = [(NSDictionary *)v88 substringFromIndex:v90 + 1];
        }

        v164 = 0;
        v165 = &v164;
        v166 = 0x3032000000;
        v167 = __Block_byref_object_copy__64831;
        v168 = __Block_byref_object_dispose__64832;
        v93 = v142;
        v169 = v93;
        v94 = [(NSDictionary *)v86 componentsSeparatedByString:@"."];
        v95 = [v94 count];
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __76__HMDManagedObjectCodingModel_refContextCodingKey_keyPath_entity_forEntity___block_invoke;
        v173 = &unk_278675180;
        v174 = v10;
        v175 = v93;
        v176 = &v164;
        v177 = &v160;
        v178 = v95 - 1;
        [v94 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
        objc_storeStrong(&v143->_root, *(*(&v160 + 1) + 40));
        descriptions = v143->_descriptions;
        v143->_descriptions = v86;
        v97 = v86;

        objc_storeStrong(&v143->_conditions, v165[5]);
        _Block_object_dispose(&v164, 8);

        _Block_object_dispose(&v160, 8);
        v98 = [*&v143->_hasAnyReferenceRelationships objectForKeyedSubscript:v143->_root];
        LOBYTE(v97) = v98 == 0;

        if ((v97 & 1) == 0)
        {
          [v93 name];
          objc_claimAutoreleasedReturnValue();
          _HMFPreconditionFailureWithFormat();
          goto LABEL_113;
        }
      }

      managedObjectClassName = [v142 managedObjectClassName];
      v100 = NSClassFromString(managedObjectClassName);

      if (*p_contextualizeConditionsSelector)
      {
        v101 = *p_contextualizeConditionsSelector;
      }

      else
      {
        v101 = 0;
      }

      if (([(objc_class *)v100 instancesRespondToSelector:v101]& 1) == 0)
      {
        v102 = *p_contextualizeConditionsSelector ? *p_contextualizeConditionsSelector : 0;
        if (!class_addMethod(v100, v102, defaultContextualizeIMP, "v@:@@"))
        {
          v103 = objc_autoreleasePoolPush();
          v104 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v105 = HMFGetLogIdentifier();
            if (*p_contextualizeConditionsSelector)
            {
              v106 = *p_contextualizeConditionsSelector;
            }

            else
            {
              v106 = 0;
            }

            v107 = NSStringFromSelector(v106);
            *buf = 138543874;
            *&buf[4] = v105;
            *&buf[12] = 2114;
            *&buf[14] = v100;
            *&buf[22] = 2114;
            v173 = v107;
            _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_ERROR, "%{public}@Failed to add default [%{public}@ %{public}@] implementation", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v103);
        }
      }

      if (*p_attributeValueForKeySelector)
      {
        v108 = *p_attributeValueForKeySelector;
      }

      else
      {
        v108 = 0;
      }

      if (([(objc_class *)v100 instancesRespondToSelector:v108]& 1) == 0)
      {
        v109 = *p_attributeValueForKeySelector ? *p_attributeValueForKeySelector : 0;
        if (!class_addMethod(v100, v109, defaultAttributeValueForKeyIMP, "@@:@@"))
        {
          v110 = objc_autoreleasePoolPush();
          v111 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            v112 = HMFGetLogIdentifier();
            if (*p_attributeValueForKeySelector)
            {
              v113 = *p_attributeValueForKeySelector;
            }

            else
            {
              v113 = 0;
            }

            v114 = NSStringFromSelector(v113);
            *buf = 138543874;
            *&buf[4] = v112;
            *&buf[12] = 2114;
            *&buf[14] = v100;
            *&buf[22] = 2114;
            v173 = v114;
            _os_log_impl(&dword_229538000, v111, OS_LOG_TYPE_ERROR, "%{public}@Failed to add default [%{public}@ %{public}@] implementation", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v110);
        }
      }

      v48 = v143;
      goto LABEL_80;
    }

LABEL_101:
    name2 = [entity name];
    v130 = [v141 objectForKeyedSubscript:name2];
    root = v10->_root;
    v10->_root = v130;

    v132 = objc_msgSend_copy(v141);
    v133 = v10->_descriptions;
    v10->_descriptions = v132;

    v134 = [(NSOrderedSet *)v10->_conditions count];
    v135 = v10->_conditions;
    if (v134)
    {
      v134 = objc_msgSend_copy(v135);
      v135 = v10->_conditions;
    }

    v10->_conditions = v134;
  }

  return v10;
}

- (id)typeIdForEntity:(uint64_t)entity
{
  if (entity)
  {
    userInfo = [a2 userInfo];
    v5 = [userInfo objectForKeyedSubscript:*(entity + 56)];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      name = v5;
    }

    else
    {
      name = [a2 name];
    }

    v9 = name;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mutableCodingKeyTableForProperties:(uint64_t)properties
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a2, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a2;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    v41 = *MEMORY[0x277CCA310];
    v42 = *v46;
    do
    {
      v8 = 0;
      v43 = v6;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        v10 = [(HMDManagedObjectCodingModel *)properties codingKeyForProperty:v9];
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          v33 = v11;
          [v9 entity];
          properties = [objc_claimAutoreleasedReturnValue() name];
          name = [v33 name];
          [v9 name];
          v40 = v39 = name;
          propertiesCopy = properties;
          name3 = v10;
          _HMFPreconditionFailureWithFormat();
LABEL_51:
          v35 = *(properties + 96);
LABEL_53:
          [v9 entity];
          name2 = [objc_claimAutoreleasedReturnValue() name];
          [v9 name];
          v39 = name3 = name2;
          propertiesCopy = v35;
          _HMFPreconditionFailureWithFormat();
LABEL_54:
          [v9 entity];
          [objc_claimAutoreleasedReturnValue() name];
          objc_claimAutoreleasedReturnValue();
          name3 = [v9 name];
          v39 = v7;
          _HMFPreconditionFailureWithFormat();
LABEL_55:
          propertiesCopy = objc_opt_class();
          _HMFPreconditionFailureWithFormat();
LABEL_56:
          [v9 entity];
          [objc_claimAutoreleasedReturnValue() name];
          objc_claimAutoreleasedReturnValue();
          [v9 name];
          objc_claimAutoreleasedReturnValue();
          _HMFPreconditionFailureWithFormat();
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [HMDAttributeCodingDescription alloc];
          if (v12)
          {
            v13 = [(HMDPropertyCodingDescription *)v12 initWithModel:properties property:v9];
            if (!v13)
            {
              goto LABEL_43;
            }

            attributeType = [v9 attributeType];
            userInfo = [v9 userInfo];
            v7 = [userInfo objectForKeyedSubscript:*(properties + 96)];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v7;
            }

            else
            {
              v16 = 0;
            }

            v17 = v16;

            if (v17 && attributeType != 1800)
            {
              goto LABEL_51;
            }

            if (attributeType != 1800)
            {
              v18 = 0;
LABEL_30:

              v26 = v13[5];
              v13[5] = v18;

              attributeType2 = [v9 attributeType];
              userInfo2 = [v9 userInfo];
              v7 = [userInfo2 objectForKeyedSubscript:*(properties + 104)];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v7;
              }

              else
              {
                v29 = 0;
              }

              v30 = v29;

              if (v30 && attributeType2 != 1800)
              {
                v35 = *(properties + 104);
                goto LABEL_53;
              }

              if (v30)
              {
                v7 = v42;
                if ([v30 isEqualToString:@"YES"])
                {
                  v20 = 1;
                }

                else
                {
                  if (([v30 isEqualToString:@"NO"] & 1) == 0)
                  {
                    goto LABEL_56;
                  }

                  v20 = 0;
                }
              }

              else
              {
                v20 = 1;
                v7 = v42;
              }

              v21 = &OBJC_IVAR___HMDAttributeCodingDescription__shouldInline;
              v6 = v43;
LABEL_42:
              *(v13 + *v21) = v20;
              goto LABEL_43;
            }

            if (v17)
            {
              v22 = @"HMDIdentityTransformer";
              if (([v17 isEqualToString:@"none"] & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              valueTransformerName = [v9 valueTransformerName];
              v17 = valueTransformerName;
              v24 = v41;
              if (valueTransformerName)
              {
                v24 = valueTransformerName;
              }

              v22 = v24;
            }

            v7 = v22;
LABEL_28:
            v25 = [HMDValueTransformer valueTransformerForName:v7];
            if (!v25)
            {
              goto LABEL_54;
            }

            v18 = v25;
            v17 = v7;
            goto LABEL_30;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_55;
          }

          v19 = [HMDRelationshipCodingDescription alloc];
          if (v19)
          {
            v13 = [(HMDPropertyCodingDescription *)v19 initWithModel:properties property:v9];
            if (!v13)
            {
              goto LABEL_43;
            }

            v20 = [(HMDManagedObjectCodingModel *)properties includeModeForProperty:v9 withDefault:0]== 1;
            v21 = &OBJC_IVAR___HMDRelationshipCodingDescription__parentChild;
            goto LABEL_42;
          }
        }

        v13 = 0;
LABEL_43:
        [v4 setObject:v13 forKeyedSubscript:v10];

        ++v8;
      }

      while (v6 != v8);
      v31 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      v6 = v31;
    }

    while (v31);
  }

  return v4;
}

- (id)reverseLookupTableForCodingKeyTable:(void *)table
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__64831;
  v8 = __Block_byref_object_dispose__64832;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__HMDManagedObjectCodingModel_reverseLookupTableForCodingKeyTable___block_invoke;
  v3[3] = &unk_2786751F8;
  v3[4] = &v4;
  [table enumerateKeysAndObjectsUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void __76__HMDManagedObjectCodingModel_refContextCodingKey_keyPath_entity_forEntity___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [*(*(*(a1 + 48) + 8) + 40) relationshipsByName];
  v15 = [v6 objectForKeyedSubscript:a2];

  if (!v15 || [v15 isToMany])
  {
    [*(a1 + 40) name];
    objc_claimAutoreleasedReturnValue();
    [*(*(*(a1 + 48) + 8) + 40) name];
    objc_claimAutoreleasedReturnValue();
    v13 = _HMFPreconditionFailureWithFormat();
    [(HMDManagedObjectCodingModel *)v13 codingKeyForPropertyName:v14];
  }

  else
  {
    v7 = [v15 destinationEntity];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (!*(*(*(a1 + 56) + 8) + 40) && *(a1 + 64) == a3)
    {
      v10 = [(HMDManagedObjectCodingModel *)*(a1 + 32) codingKeyForPropertyName:a2];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

- (id)codingKeyForPropertyName:(uint64_t)name
{
  if (name)
  {
    v2 = a2;
    if ([v2 length] >= 2 && objc_msgSend(v2, "hasSuffix:", @"_"))
    {
      v3 = [v2 substringToIndex:{objc_msgSend(v2, "length") - 1}];

      v2 = v3;
    }

    if ([v2 length] >= 2 && objc_msgSend(v2, "hasPrefix:", @"_"))
    {
      v4 = [v2 substringFromIndex:1];

      v2 = v4;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __68__HMDManagedObjectCodingModel_concreteSubentitiesByTypeIDForEntity___block_invoke(uint64_t a1, void *a2)
{
  if (([a2 isAbstract] & 1) == 0)
  {
    v8 = [(HMDManagedObjectCodingModel *)*(a1 + 32) typeIdForEntity:a2];
    v4 = [*(a1 + 40) objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = v4;
      [*(a1 + 48) name];
      objc_claimAutoreleasedReturnValue();
      [v5 name];
      objc_claimAutoreleasedReturnValue();
      [a2 name];
      objc_claimAutoreleasedReturnValue();
      v6 = _HMFPreconditionFailureWithFormat();
      __60__HMDManagedObjectCodingModel_parentRelationshipsForEntity___block_invoke(v6, v7);
    }

    else
    {
      [*(a1 + 40) setObject:a2 forKeyedSubscript:v8];
    }
  }
}

uint64_t __60__HMDManagedObjectCodingModel_parentRelationshipsForEntity___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 inverseRelationship];
  if (!v4 || (v5 = *(a1 + 32)) == 0 || [(HMDManagedObjectCodingModel *)v5 includeModeForProperty:v4 withDefault:0]!= 1)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 32);
  if (!v6 || ![(HMDManagedObjectCodingModel *)v6 includeModeForProperty:a2 withDefault:0])
  {
    v7 = 1;
LABEL_8:

    return v7;
  }

  [*(a1 + 40) name];
  objc_claimAutoreleasedReturnValue();
  [a2 name];
  objc_claimAutoreleasedReturnValue();
  v9 = _HMFPreconditionFailureWithFormat();
  return [(HMDManagedObjectCodingModel *)v9 includeModeForProperty:v10 withDefault:v11];
}

- (uint64_t)includeModeForProperty:(uint64_t)property withDefault:
{
  userInfo = [a2 userInfo];
  v7 = [userInfo objectForKeyedSubscript:*(self + 80)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"NO"])
  {
    property = 0;
LABEL_11:

    return property;
  }

  if ([v9 isEqualToString:@"YES"])
  {
    property = 1;
    goto LABEL_11;
  }

  if ([v9 isEqualToString:@"REF"])
  {
    property = 2;
    goto LABEL_11;
  }

  [a2 entity];
  [objc_claimAutoreleasedReturnValue() name];
  objc_claimAutoreleasedReturnValue();
  [a2 name];
  objc_claimAutoreleasedReturnValue();
  v11 = _HMFPreconditionFailureWithFormat();
  return __60__HMDManagedObjectCodingModel_syncedRelationshipsForEntity___block_invoke(v11, v12);
}

void __60__HMDManagedObjectCodingModel_syncedRelationshipsForEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  if (v4 && [(HMDManagedObjectCodingModel *)v4 includeModeForProperty:a2 withDefault:0]== 1)
  {
    v6 = [a2 inverseRelationship];
    if (v6)
    {
      v2 = v6;
      if (![v6 isToMany])
      {

        return;
      }
    }

    else
    {
      v3 = [*(v3 + 40) name];
      [a2 name];
      v11 = v10 = v3;
      _HMFPreconditionFailureWithFormat();
    }

    [*(v3 + 40) name];
    objc_claimAutoreleasedReturnValue();
    [a2 name];
    objc_claimAutoreleasedReturnValue();
    [v2 name];
    objc_claimAutoreleasedReturnValue();
    v7 = _HMFPreconditionFailureWithFormat();
    __67__HMDManagedObjectCodingModel_reverseLookupTableForCodingKeyTable___block_invoke(v7, v8, v9);
  }
}

void __67__HMDManagedObjectCodingModel_reverseLookupTableForCodingKeyTable___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = [a3 name];
  if (([a2 isEqualToString:?] & 1) == 0)
  {
    v5 = *(*(*(a1 + 32) + 8) + 40);
    if (v5)
    {
      [v5 setObject:a2 forKeyedSubscript:v9];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB38] dictionaryWithObject:a2 forKey:v9];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

uint64_t __57__HMDManagedObjectCodingModel_syncedAttributesForEntity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v4 = [a2 attributeType];
  v5 = 1;
  if (v4 <= 699)
  {
    if (v4 > 399)
    {
      if (v4 != 400 && v4 != 500 && v4 != 600)
      {
        goto LABEL_23;
      }
    }

    else if (v4 != 100 && v4 != 200 && v4 != 300)
    {
      goto LABEL_23;
    }
  }

  else if (v4 <= 999)
  {
    if (v4 != 700 && v4 != 800 && v4 != 900)
    {
      goto LABEL_23;
    }
  }

  else if (v4 > 1199)
  {
    if (v4 != 1200 && v4 != 1800)
    {
      goto LABEL_23;
    }
  }

  else if (v4 != 1000 && v4 != 1100)
  {
LABEL_23:
    v5 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v5 && !(((*(v2 + 16) & 1) == 0) | isKindOfClass & 1))
  {
    v7 = [a2 isTransient] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HMDManagedObjectCodingModel *)v2 includeModeForProperty:a2 withDefault:v7];
  if (v8 == 1)
  {
    if (v5)
    {
      return 1;
    }

    [a2 entity];
    v10 = [objc_claimAutoreleasedReturnValue() name];
    [a2 name];
    v15 = v14 = v10;
    _HMFPreconditionFailureWithFormat();
  }

  else if (v8 != 2)
  {
    return 0;
  }

  [a2 entity];
  [objc_claimAutoreleasedReturnValue() name];
  objc_claimAutoreleasedReturnValue();
  [a2 name];
  objc_claimAutoreleasedReturnValue();
  v11 = _HMFPreconditionFailureWithFormat();
  return __51__HMDEntityCodingDescription_initWithModel_entity___block_invoke(v11, v12, v13);
}

- (id)codingKeyForProperty:(uint64_t)property
{
  userInfo = [a2 userInfo];
  v5 = [userInfo objectForKeyedSubscript:*(property + 88)];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    name = [a2 name];
    v8 = [(HMDManagedObjectCodingModel *)property codingKeyForPropertyName:name];
  }

  return v8;
}

- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntity:(id)entity
{
  defaultOptions = [objc_opt_class() defaultOptions];

  return [(HMDManagedObjectCodingModel *)self initWithModel:model configNamespace:namespace rootEntity:entity options:defaultOptions];
}

- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntityName:(id)name options:(unint64_t)options
{
  entitiesByName = [model entitiesByName];
  v12 = [entitiesByName objectForKeyedSubscript:name];
  v13 = [(HMDManagedObjectCodingModel *)self initWithModel:model configNamespace:namespace rootEntity:v12 options:options];

  return v13;
}

- (HMDManagedObjectCodingModel)initWithModel:(id)model configNamespace:(id)namespace rootEntityName:(id)name
{
  defaultOptions = [objc_opt_class() defaultOptions];

  return [(HMDManagedObjectCodingModel *)self initWithModel:model configNamespace:namespace rootEntityName:name options:defaultOptions];
}

- (uint64_t)contextualizeConditions:(void *)conditions forManagedObject:(uint64_t)object userContext:
{
  if (result)
  {
    v7 = (result + 120);
    if (*(result + 120))
    {
      v8 = *(result + 120);
    }

    else
    {
      v8 = 0;
    }

    v9 = [conditions methodForSelector:v8];
    if (*v7)
    {
      v10 = *v7;
    }

    else
    {
      v10 = 0;
    }

    return v9(conditions, v10, a2, object);
  }

  return result;
}

- (id)insertOrUpdateRootObjectInContext:(id)context fromReader:(id)reader
{
  rootDescription = [(HMDManagedObjectCodingModel *)self rootDescription];
  if (!context)
  {
    _HMFPreconditionFailure();
LABEL_12:
    v19 = _HMFPreconditionFailure();
    _Block_object_dispose(&v21, 8);
    __destructor_8_s0_s8_sb16(&readerCopy);
    _Unwind_Resume(v19);
  }

  if (!reader)
  {
    goto LABEL_12;
  }

  v8 = rootDescription;
  v9 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  readerCopy = reader;
  contextCopy = context;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__HMDManagedObjectCodingModel_Transmutation__insertOrUpdateRootObjectInContext_fromReader___block_invoke;
  aBlock[3] = &unk_27867BC58;
  v11 = array;
  v31 = v11;
  v34 = _Block_copy(aBlock);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __91__HMDManagedObjectCodingModel_Transmutation__insertOrUpdateRootObjectInContext_fromReader___block_invoke_2;
  v27[3] = &unk_27867BCA8;
  v27[4] = self;
  v12 = v8;
  v28 = v12;
  v29 = &readerCopy;
  v13 = _Block_copy(v27);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__156312;
  v25 = __Block_byref_object_dispose__156313;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__HMDManagedObjectCodingModel_Transmutation__insertOrUpdateRootObjectInContext_fromReader___block_invoke_3;
  v20[3] = &unk_27867BC30;
  v20[4] = &v21;
  v14 = _Block_copy(v20);
  v15 = -[HMDManagedObjectCodingModel _decodeManagedObjectWithDescription:byReference:useDynamicType:context:lookupBlock:emplaceBlock:](self, v12, 0, [v12 hasConcreteSubentities], &readerCopy, v13, v14);
  if ([(HMDManagedObjectCodingModel *)self _processDeferredBlocks:v11 context:&readerCopy])
  {
    v16 = v15;
    if (!v15)
    {
      v16 = v22[5];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v21, 8);
  objc_autoreleasePoolPop(v9);

  return v17;
}

void __91__HMDManagedObjectCodingModel_Transmutation__insertOrUpdateRootObjectInContext_fromReader___block_invoke(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  [v2 addObject:v3];
}

- (id)_decodeManagedObjectWithDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type context:(uint64_t)context lookupBlock:(uint64_t)block emplaceBlock:
{
  selfCopy = self;
  v137 = *MEMORY[0x277D85DE8];
  if (self)
  {
    descriptionCopy = description;
    if ((description & 1) == 0)
    {
      [*type beginArray];
    }

    typeCopy = type;
    v111 = selfCopy;
    if (reference)
    {
      v117 = 0;
      v14 = [(HMDManagedObjectCodingModel *)selfCopy _readKeyAttributesWithDescription:a2 typeID:&v117 byReference:descriptionCopy context:type];
      v15 = v117;
      if (v14)
      {
        v16 = [selfCopy subentityOfDescription:a2 withTypeID:v15];
        if (!v16)
        {
          v37 = *type;
          name = [a2 name];
          [v37 failWithReason:{@"%@: Missing or invalid type ID '%@'", name, v15}];
          goto LABEL_29;
        }

        name = v16;
LABEL_10:
        v19 = (*(context + 16))(context, v14);
        selfCopy = v19;
        v103 = name;
        if (v19)
        {
          if ((descriptionCopy & 1) == 0)
          {
            entity = [v19 entity];
            entity2 = [name entity];

            if (entity == entity2)
            {
              v102 = v15;
              v22 = selfCopy;
              v100 = v22;
LABEL_40:
              v51 = typeCopy;
              [*typeCopy beginDictionary];
              if ([*typeCopy tokenType] == 5)
              {
                do
                {
                  readDictionaryKey = [*v51 readDictionaryKey];
                  attributesByCodingKey = [name attributesByCodingKey];
                  v54 = [attributesByCodingKey objectForKeyedSubscript:readDictionaryKey];

                  if (v54)
                  {
                    v55 = [HMDManagedObjectCodingModel _readValueForAttribute:v54 context:v51];
                    name2 = [v54 name];
                    v57 = [v22 valueForKey:name2];

                    if ((HMFEqualObjects() & 1) == 0)
                    {
                      name3 = [v54 name];
                      [v22 setValue:v55 forKey:name3];
                    }

                    v51 = typeCopy;
                  }

                  else
                  {
                    v59 = objc_autoreleasePoolPush();
                    v60 = v111;
                    v61 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
                    {
                      v62 = HMFGetLogIdentifier();
                      name4 = [v103 name];
                      *v124 = 138543874;
                      *&v124[4] = v62;
                      *&v124[12] = 2114;
                      *&v124[14] = readDictionaryKey;
                      *&v124[22] = 2114;
                      v125 = name4;
                      _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_INFO, "%{public}@Skipping unexpected attribute '%{public}@' for %{public}@", v124, 0x20u);
                    }

                    objc_autoreleasePoolPop(v59);
                    v51 = typeCopy;
                    [*typeCopy skipLogicalValue];
                    name = v103;
                  }
                }

                while ([*v51 tokenType] == 5);
              }

              [*v51 endDictionary];
              error = [*v51 error];

              if (!error)
              {
                [*v51 beginDictionary];
                if ([*v51 tokenType] == 5)
                {
                  v98 = v14;
                  do
                  {
                    readDictionaryKey2 = [*v51 readDictionaryKey];
                    relationshipsByCodingKey = [name relationshipsByCodingKey];
                    v105 = readDictionaryKey2;
                    v67 = [relationshipsByCodingKey objectForKeyedSubscript:readDictionaryKey2];

                    if (!v67)
                    {
                      v71 = objc_autoreleasePoolPush();
                      v72 = v111;
                      v73 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                      {
                        v74 = HMFGetLogIdentifier();
                        v17Name = [name name];
                        *v124 = 138543874;
                        *&v124[4] = v74;
                        *&v124[12] = 2114;
                        *&v124[14] = v105;
                        *&v124[22] = 2114;
                        v125 = v17Name;
                        _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Skipping unexpected key attribute '%{public}@' for %{public}@", v124, 0x20u);

                        v67 = 0;
                      }

                      objc_autoreleasePoolPop(v71);
                      [*v51 skipLogicalValue];
                      goto LABEL_95;
                    }

                    v68 = [v111 descriptionForDestinationOfRelationship:v67];
                    isParentChild = [v67 isParentChild];
                    v108 = v68;
                    if (isParentChild)
                    {
                      hasConcreteSubentities = [v68 hasConcreteSubentities];
                    }

                    else
                    {
                      hasConcreteSubentities = 0;
                    }

                    relationship = [v67 relationship];
                    isToMany = [relationship isToMany];

                    v110 = v67;
                    name5 = [v67 name];
                    if (isToMany)
                    {
                      v79 = [v22 mutableSetValueForKey:name5];

                      v80 = [v79 mutableCopy];
                      [*v51 beginArray];
                      while (1)
                      {
                        tokenType = [*v51 tokenType];
                        if (tokenType == -2)
                        {
                          break;
                        }

                        if (tokenType == 2)
                        {
                          [*v51 endArray];
                          v122 = 0u;
                          v123 = 0u;
                          v120 = 0u;
                          v121 = 0u;
                          v84 = v80;
                          v85 = [v84 countByEnumeratingWithState:&v120 objects:v124 count:16];
                          if (v85)
                          {
                            v86 = v85;
                            v87 = *v121;
                            do
                            {
                              for (i = 0; i != v86; ++i)
                              {
                                if (*v121 != v87)
                                {
                                  objc_enumerationMutation(v84);
                                }

                                v89 = *(*(&v120 + 1) + 8 * i);
                                [v79 removeObject:v89];
                                if (isParentChild)
                                {
                                  managedObjectContext = [v22 managedObjectContext];
                                  [managedObjectContext deleteObject:v89];
                                }
                              }

                              v86 = [v84 countByEnumeratingWithState:&v120 objects:v124 count:16];
                            }

                            while (v86);
                          }

                          v14 = v98;
                          name = v103;
                          v51 = typeCopy;
                          break;
                        }

                        *buf = MEMORY[0x277D85DD0];
                        *&buf[8] = 3221225472;
                        *&buf[16] = __90__HMDManagedObjectCodingModel_Transmutation___updateRelationship_ofManagedObject_context___block_invoke;
                        v131 = &unk_27867BDB8;
                        *&v132 = v111;
                        *(&v132 + 1) = v22;
                        v136 = isParentChild;
                        v133 = v110;
                        v135 = v51;
                        v134 = v79;
                        v82 = [(HMDManagedObjectCodingModel *)v111 _decodeManagedObjectWithDescription:v108 byReference:isParentChild ^ 1u useDynamicType:hasConcreteSubentities candidates:v80 context:v51 orEmplaceWithBlock:buf];
                        if (v82)
                        {
                          [v80 removeObject:v82];
                        }
                      }

                      goto LABEL_94;
                    }

                    v79 = [v22 valueForKey:name5];

                    if ([*v51 tokenType] == 6)
                    {
                      [*v51 readNull];
                      if (!v79)
                      {
                        goto LABEL_94;
                      }

                      name6 = [v110 name];
                      [v22 setValue:0 forKey:name6];

                      if (!isParentChild)
                      {
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      if (v79)
                      {
                        v91 = [MEMORY[0x277CBEB98] setWithObject:v79];
                      }

                      else
                      {
                        v91 = 0;
                      }

                      v118[0] = MEMORY[0x277D85DD0];
                      v118[1] = 3221225472;
                      v118[2] = __90__HMDManagedObjectCodingModel_Transmutation___updateRelationship_ofManagedObject_context___block_invoke_2;
                      v118[3] = &unk_27867BDE0;
                      v118[4] = v111;
                      v118[5] = v22;
                      v119 = isParentChild;
                      v118[6] = v110;
                      v118[7] = v51;
                      v92 = [(HMDManagedObjectCodingModel *)v111 _decodeManagedObjectWithDescription:v108 byReference:isParentChild ^ 1u useDynamicType:hasConcreteSubentities candidates:v91 context:v51 orEmplaceWithBlock:v118];
                      if (v79)
                      {
                        v93 = v92 == 0;
                      }

                      else
                      {
                        v93 = 0;
                      }

                      if (v93)
                      {
                        v94 = isParentChild;
                      }

                      else
                      {
                        v94 = 0;
                      }

                      if (v79)
                      {
                      }

                      if (!v94)
                      {
                        goto LABEL_94;
                      }
                    }

                    managedObjectContext2 = [v22 managedObjectContext];
                    [managedObjectContext2 deleteObject:v79];

LABEL_94:
                    v67 = v110;
LABEL_95:
                  }

                  while ([*v51 tokenType] == 5);
                }

                [*v51 endDictionary];
              }

              [*v51 endArray];
              selfCopy = v100;

              v15 = v102;
              goto LABEL_98;
            }

LABEL_19:
            v102 = v15;
            v25 = objc_alloc(MEMORY[0x277CBE438]);
            entity3 = [name entity];
            v22 = [v25 initWithEntity:entity3 insertIntoManagedObjectContext:*(type + 8)];

            [v22 setValuesForKeysWithDictionary:v14];
            if (selfCopy)
            {
              blockCopy = block;
              entity4 = [name entity];
              entity5 = [selfCopy entity];
              v29 = entity4;
              v30 = entity5;
              v31 = v30;
              v32 = 0;
              superentity = v29;
              superentity2 = v30;
              if (v29 && v30)
              {
                v35 = v30;
                v36 = v29;
                while (1)
                {
                  if ([v36 isKindOfEntity:v35])
                  {
                    v38 = v35;
                    goto LABEL_32;
                  }

                  if ([v35 isKindOfEntity:v36])
                  {
                    break;
                  }

                  superentity = [v36 superentity];

                  superentity2 = [v35 superentity];

                  v32 = 0;
                  if (superentity)
                  {
                    v35 = superentity2;
                    v36 = superentity;
                    if (superentity2)
                    {
                      continue;
                    }
                  }

                  goto LABEL_33;
                }

                v38 = v36;
LABEL_32:
                v32 = v38;
                superentity = v36;
                superentity2 = v35;
              }

LABEL_33:

              v39 = HMFGetOSLogHandle();
              v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG);

              if (v40)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              else
              {
                array = 0;
              }

              relationshipsByName = [v32 relationshipsByName];
              *v124 = MEMORY[0x277D85DD0];
              *&v124[8] = 3221225472;
              *&v124[16] = __113__HMDManagedObjectCodingModel_Transmutation___prepareReplacementObject_withDescription_forExistingManagedObject___block_invoke;
              v125 = &unk_27867BE08;
              v126 = v111;
              v127 = selfCopy;
              v128 = v22;
              v43 = array;
              v129 = v43;
              [relationshipsByName enumerateKeysAndObjectsUsingBlock:v124];

              v44 = objc_autoreleasePoolPush();
              v45 = v111;
              v46 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v99 = HMFGetLogIdentifier();
                objectID = [selfCopy objectID];
                uRIRepresentation = [objectID URIRepresentation];
                entity6 = [v22 entity];
                name7 = [entity6 name];
                [v43 sortedArrayUsingSelector:sel_compare_];
                v48 = v107 = v43;
                v49 = [v48 componentsJoinedByString:{@", "}];
                *buf = 138544130;
                *&buf[4] = v99;
                *&buf[12] = 2114;
                *&buf[14] = uRIRepresentation;
                *&buf[22] = 2114;
                v131 = name7;
                LOWORD(v132) = 2114;
                *(&v132 + 2) = v49;
                v50 = v49;
                _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_DEBUG, "%{public}@Recreating <%{public}@> as %{public}@, migrated relationships: %{public}@", buf, 0x2Au);

                v43 = v107;
              }

              objc_autoreleasePoolPop(v44);
              name = v103;
              block = blockCopy;
            }

            (*(block + 16))(block, v22);
            v100 = 0;
            goto LABEL_40;
          }

LABEL_98:

          goto LABEL_99;
        }

        error2 = [*type error];

        if (!error2)
        {
          if ((descriptionCopy & 1) == 0)
          {
            goto LABEL_19;
          }

          v24 = *(type + 16);
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __142__HMDManagedObjectCodingModel_Transmutation___decodeManagedObjectWithDescription_byReference_useDynamicType_context_lookupBlock_emplaceBlock___block_invoke;
          v112[3] = &unk_278683AD8;
          blockCopy2 = block;
          v112[4] = v111;
          name = name;
          v113 = name;
          v14 = v14;
          v114 = v14;
          typeCopy2 = type;
          (*(v24 + 16))(v24, v112);
        }

LABEL_29:
        selfCopy = 0;
        goto LABEL_98;
      }
    }

    else
    {
      v18 = [(HMDManagedObjectCodingModel *)selfCopy _readKeyAttributesWithDescription:a2 typeID:0 byReference:descriptionCopy context:type];
      if (v18)
      {
        v14 = v18;
        name = a2;
        v15 = 0;
        goto LABEL_10;
      }

      v15 = 0;
    }

    selfCopy = 0;
LABEL_99:
  }

  return selfCopy;
}

- (BOOL)_processDeferredBlocks:(id *)blocks context:
{
  if (!self)
  {
    return 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDManagedObjectCodingModel_Transmutation___processDeferredBlocks_context___block_invoke;
  v7[3] = &__block_descriptor_40_e21_v32__0___v___8Q16_B24l;
  v7[4] = blocks;
  [a2 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  error = [*blocks error];
  v5 = error == 0;

  return v5;
}

void __77__HMDManagedObjectCodingModel_Transmutation___processDeferredBlocks_context___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [**(a1 + 32) error];

  if (v6)
  {
    *a4 = 1;
  }

  else
  {
    v7 = *(a2 + 16);

    v7(a2);
  }
}

- (id)_readKeyAttributesWithDescription:(void *)description typeID:(int)d byReference:(id *)reference context:
{
  v46 = *MEMORY[0x277D85DE8];
  keyAttributesByCodingKey = [a2 keyAttributesByCodingKey];
  if (d)
  {
    refContextCodingKey = [a2 refContextCodingKey];
  }

  else
  {
    refContextCodingKey = 0;
  }

  v11 = [keyAttributesByCodingKey count];
  if (refContextCodingKey)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v11;
  }

  v35 = v12;
  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v12];
  [*reference beginDictionary];
  if ([*reference tokenType] == 5)
  {
    descriptionCopy = description;
    selfCopy = self;
    v36 = v13;
    do
    {
      readDictionaryKey = [*reference readDictionaryKey];
      v15 = readDictionaryKey;
      if (refContextCodingKey && [readDictionaryKey isEqualToString:refContextCodingKey])
      {
        refContextEntity = [a2 refContextEntity];
        v17 = [self descriptionForEntity:refContextEntity];

        v18 = [(HMDManagedObjectCodingModel *)self _readKeyAttributesWithDescription:v17 typeID:0 byReference:1 context:reference];
        [v13 setObject:v18 forKeyedSubscript:@"$context"];
      }

      else if (description && [v15 isEqualToString:@"$type"])
      {
        *description = [*reference readString];
      }

      else
      {
        v19 = [keyAttributesByCodingKey objectForKeyedSubscript:v15];
        v20 = v19;
        if (v19)
        {
          v21 = [HMDManagedObjectCodingModel _readValueForAttribute:v19 context:reference];
          if (v21)
          {
            name = [v20 name];
            [v13 setObject:v21 forKeyedSubscript:name];

            self = selfCopy;
          }
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            name2 = [a2 name];
            *buf = 138543874;
            v41 = v26;
            v42 = 2114;
            v43 = v15;
            v44 = 2114;
            v45 = name2;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Skipping unexpected key attribute '%{public}@' for %{public}@", buf, 0x20u);

            v13 = v36;
            self = selfCopy;
          }

          objc_autoreleasePoolPop(v23);
          [*reference skipLogicalValue];
          description = descriptionCopy;
        }
      }
    }

    while ([*reference tokenType] == 5);
  }

  [*reference endDictionary];
  error = [*reference error];

  if (!error)
  {
    if ([v13 count] == v35)
    {
      v29 = objc_msgSend_copy(v13);
      goto LABEL_29;
    }

    v30 = *reference;
    name3 = [a2 name];
    allKeys = [v13 allKeys];
    v33 = [allKeys componentsJoinedByString:{@", "}];
    [v30 failWithReason:{@"%@: Incomplete key attributes (%@)", name3, v33}];
  }

  v29 = 0;
LABEL_29:

  return v29;
}

void __142__HMDManagedObjectCodingModel_Transmutation___decodeManagedObjectWithDescription_byReference_useDynamicType_context_lookupBlock_emplaceBlock___block_invoke(void *a1)
{
  v1 = a1[7];
  v2 = [(HMDManagedObjectCodingModel *)a1[4] _managedObjectWithDescription:a1[6] matchingKeyAttributes:a1[8] context:?];
  (*(v1 + 16))(v1, v2);
}

- (id)_managedObjectWithDescription:(void *)description matchingKeyAttributes:(uint64_t)attributes context:
{
  v39 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBE428]);
    entity = [a2 entity];
    [v8 setEntity:entity];

    [v8 setIncludesPropertyValues:0];
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(description, "count")}];
    [(HMDManagedObjectCodingModel *)self _buildPredicateAtoms:v10 withDescription:a2 keyPathPrefix:0 values:description];
    if ([v10 count] == 1)
    {
      [v10 firstObject];
    }

    else
    {
      [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v10];
    }
    v11 = ;

    [v8 setPredicate:v11];
    [v8 setFetchLimit:2];
    v12 = *(attributes + 8);
    v32 = 0;
    v13 = [v12 executeFetchRequest:v8 error:&v32];
    v14 = v32;
    if (v13)
    {
      if ([v13 count] < 2)
      {
        firstObject = [v13 firstObject];
        goto LABEL_15;
      }

      allKeys = [description allKeys];
      v16 = [allKeys sortedArrayUsingSelector:sel_compare_];
      v17 = [v16 componentsJoinedByString:{@", "}];

      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        entity2 = [a2 entity];
        name = [entity2 name];
        *buf = 138543874;
        v34 = v21;
        v35 = 2114;
        v36 = name;
        v37 = 2114;
        v38 = v17;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@%{public}@: Fetch request with key(s) %{public}@ returned more than one result", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        entity3 = [a2 entity];
        name2 = [entity3 name];
        *buf = 138543874;
        v34 = v27;
        v35 = 2114;
        v36 = name2;
        v37 = 2114;
        v38 = v14;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@%{public}@: Fetch request failed: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
    }

    firstObject = 0;
LABEL_15:

    goto LABEL_16;
  }

  firstObject = 0;
LABEL_16:

  return firstObject;
}

- (void)_buildPredicateAtoms:(void *)atoms withDescription:(uint64_t)description keyPathPrefix:(void *)prefix values:
{
  v10 = [prefix objectForKeyedSubscript:@"$context"];
  if (v10)
  {
    refContextEntity = [atoms refContextEntity];
    v12 = [self descriptionForEntity:refContextEntity];
    refContextKeyPath = [atoms refContextKeyPath];
    [(HMDManagedObjectCodingModel *)self _buildPredicateAtoms:a2 withDescription:v12 keyPathPrefix:refContextKeyPath values:v10];
  }

  keyAttributesByCodingKey = [atoms keyAttributesByCodingKey];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMDManagedObjectCodingModel_Transmutation___buildPredicateAtoms_withDescription_keyPathPrefix_values___block_invoke;
  v15[3] = &unk_27867BE30;
  v15[4] = a2;
  v15[5] = self;
  v15[6] = description;
  v15[7] = prefix;
  [keyAttributesByCodingKey enumerateKeysAndObjectsUsingBlock:v15];
}

void __104__HMDManagedObjectCodingModel_Transmutation___buildPredicateAtoms_withDescription_keyPathPrefix_values___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 name];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v14 = v4;
  v8 = [*(a1 + 56) objectForKeyedSubscript:?];
  if (v6)
  {
    if (v7)
    {
      v9 = [v7 stringByAppendingFormat:@".%@", v14];
    }

    else
    {
      v9 = v14;
    }

    v10 = v9;
    v11 = MEMORY[0x277CCA918];
    v12 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v9];
    v13 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v8];
    v6 = [v11 predicateWithLeftExpression:v12 rightExpression:v13 modifier:0 type:4 options:0];
  }

  [v5 addObject:v6];
}

uint64_t __90__HMDManagedObjectCodingModel_Transmutation___updateRelationship_ofManagedObject_context___block_invoke(uint64_t a1, void *a2)
{
  result = [(HMDManagedObjectCodingModel *)*(a1 + 32) _prepareRelatedObject:a2 ofManagedObject:*(a1 + 40) relationship:*(a1 + 48) byReference:(*(a1 + 72) & 1) == 0 context:*(a1 + 64)];
  if (result)
  {
    v5 = *(a1 + 56);

    return [v5 addObject:a2];
  }

  return result;
}

- (id)_decodeManagedObjectWithDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type candidates:(uint64_t)candidates context:(uint64_t)context orEmplaceWithBlock:
{
  if (self)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __147__HMDManagedObjectCodingModel_Transmutation___decodeManagedObjectWithDescription_byReference_useDynamicType_candidates_context_orEmplaceWithBlock___block_invoke;
    aBlock[3] = &unk_27867BD18;
    aBlock[4] = self;
    aBlock[5] = type;
    aBlock[6] = a2;
    v13 = _Block_copy(aBlock);
    v14 = [(HMDManagedObjectCodingModel *)self _decodeManagedObjectWithDescription:a2 byReference:description useDynamicType:reference context:candidates lookupBlock:v13 emplaceBlock:context];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __90__HMDManagedObjectCodingModel_Transmutation___updateRelationship_ofManagedObject_context___block_invoke_2(uint64_t a1, void *a2)
{
  if ([(HMDManagedObjectCodingModel *)*(a1 + 32) _prepareRelatedObject:a2 ofManagedObject:*(a1 + 40) relationship:*(a1 + 48) byReference:(*(a1 + 64) & 1) == 0 context:*(a1 + 56)])
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) name];
    [v4 setValue:a2 forKey:v5];
  }
}

- (BOOL)_prepareRelatedObject:(uint64_t)object ofManagedObject:(void *)managedObject relationship:(uint64_t)relationship byReference:(uint64_t)reference context:
{
  if (result)
  {
    v8 = a2 != 0;
    if (!a2)
    {
      v13 = *reference;
      shortDescription = [managedObject shortDescription];
      relationship = [managedObject relationship];
      destinationEntity = [relationship destinationEntity];
      name = [destinationEntity name];
      [v13 failWithReason:{@"%@: Failed to resolve referenced %@", shortDescription, name}];

      goto LABEL_8;
    }

    result = 1;
    if (!*(reference + 8) && (relationship & 1) == 0)
    {
      relationship2 = [managedObject relationship];
      shortDescription = [relationship2 inverseRelationship];

      if (!shortDescription)
      {
        v8 = 1;
        goto LABEL_9;
      }

      relationship = [shortDescription name];
      [a2 setValue:object forKey:relationship];
LABEL_8:

LABEL_9:
      return v8;
    }
  }

  return result;
}

id __147__HMDManagedObjectCodingModel_Transmutation___decodeManagedObjectWithDescription_byReference_useDynamicType_candidates_context_orEmplaceWithBlock___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[6];
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__156312;
    v12 = __Block_byref_object_dispose__156313;
    v13 = 0;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __106__HMDManagedObjectCodingModel_Transmutation___managedObjectFromSet_withDescription_matchingKeyAttributes___block_invoke;
    v7[3] = &unk_278681AD0;
    v7[4] = v2;
    v7[5] = v4;
    v7[6] = a2;
    v7[7] = &v8;
    [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __106__HMDManagedObjectCodingModel_Transmutation___managedObjectFromSet_withDescription_matchingKeyAttributes___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  if ([(HMDManagedObjectCodingModel *)a1[4] _managedObject:a2 withDescription:a1[5] matchesKeyAttributes:a1[6]])
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *a3 = 1;
  }
}

- (uint64_t)_managedObject:(uint64_t)object withDescription:(void *)description matchesKeyAttributes:
{
  if (self)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __98__HMDManagedObjectCodingModel_Transmutation___managedObject_withDescription_matchesKeyAttributes___block_invoke;
    v6[3] = &unk_27867BE58;
    v6[4] = a2;
    v6[5] = object;
    v6[6] = self;
    v6[7] = &v7;
    [description enumerateKeysAndObjectsUsingBlock:v6];
    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void __98__HMDManagedObjectCodingModel_Transmutation___managedObject_withDescription_matchesKeyAttributes___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = [a2 isEqualToString:@"$context"];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [*(a1 + 40) refContextKeyPath];
    v16 = [v9 valueForKeyPath:v10];

    v11 = *(a1 + 48);
    v12 = [*(a1 + 40) refContextEntity];
    v13 = [v11 descriptionForEntity:v12];

    if (!v16 || ([(HMDManagedObjectCodingModel *)*(a1 + 48) _managedObject:v16 withDescription:v13 matchesKeyAttributes:a3]& 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }
  }

  else
  {
    v14 = [*(a1 + 32) valueForKey:a2];
    v15 = [v14 isEqual:a3];

    if ((v15 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

- (id)_readValueForAttribute:(void *)attribute context:(id *)context
{
  if ([*context tokenType] == 6)
  {
    [*context readNull];
    v4 = 0;
    goto LABEL_19;
  }

  attribute = [attribute attribute];
  attributeType = [attribute attributeType];

  if (attributeType <= 699)
  {
    if (attributeType > 399)
    {
      if (attributeType != 400 && attributeType != 500 && attributeType != 600)
      {
        goto LABEL_52;
      }
    }

    else if (attributeType != 100 && attributeType != 200 && attributeType != 300)
    {
      goto LABEL_52;
    }

    readNumber = [*context readNumber];
    goto LABEL_18;
  }

  if (attributeType <= 999)
  {
    switch(attributeType)
    {
      case 700:
        readNumber = [*context readString];
        goto LABEL_18;
      case 800:
        readNumber = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*context, "readBoolean")}];
        goto LABEL_18;
      case 900:
        readNumber = [*context readDate];
        goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (attributeType <= 1199)
  {
    if (attributeType == 1000)
    {
      readNumber = [*context readData];
      goto LABEL_18;
    }

    if (attributeType == 1100)
    {
      readNumber = [*context readUUID];
LABEL_18:
      v4 = readNumber;
      goto LABEL_19;
    }

LABEL_52:
    v22 = MEMORY[0x277CBEAD8];
    v23 = *MEMORY[0x277CBE658];
    v24 = MEMORY[0x277CCACA8];
    attribute2 = [attribute attribute];
    v26 = [v24 stringWithFormat:@"Attribute type not supported: %zd", objc_msgSend(attribute2, "attributeType")];
    v27 = [v22 exceptionWithName:v23 reason:v26 userInfo:0];
    v28 = v27;

    objc_exception_throw(v27);
  }

  if (attributeType == 1200)
  {
    readString = [*context readString];
    if (readString)
    {
      v12 = [MEMORY[0x277CBEBC0] URLWithString:readString];
      v4 = v12;
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v18 = *context;
        shortDescription = [attribute shortDescription];
        [v18 failWithReason:{@"%@: Invalid / malformed URI value", shortDescription}];
      }

      goto LABEL_51;
    }
  }

  else
  {
    if (attributeType != 1800)
    {
      goto LABEL_52;
    }

    readString = [*context readLogicalValueAsObject];
    if (readString)
    {
      v29 = 0;
      transformer = [attribute transformer];
      if ([attribute shouldInline] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(objc_opt_class(), "isStructuredDataCompatible"))
      {
        v11 = [transformer valueFromOPACK:readString error:&v29];
      }

      else
      {
        v11 = [transformer reverseTransformedValue:readString error:&v29];
      }

      v4 = v11;

      v14 = v29;
      if (v4)
      {
        v15 = v4;
      }

      else
      {
        transformer2 = [attribute transformer];
        if ([transformer2 isKindOfTransformer:objc_opt_class()])
        {
          v17 = [HMDSecureUnarchiveFromDataTransformer isEncodedNilValue:readString];

          if (v17)
          {
            goto LABEL_50;
          }
        }

        else
        {
        }

        v20 = *context;
        shortDescription2 = [attribute shortDescription];
        [v20 failWithReason:{@"%@: Failed to transform attribute value: %@", shortDescription2, v14}];
      }

LABEL_50:

      goto LABEL_51;
    }
  }

  v4 = 0;
LABEL_51:

LABEL_19:

  return v4;
}

void __113__HMDManagedObjectCodingModel_Transmutation___prepareReplacementObject_withDescription_forExistingManagedObject___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v10 = [a3 inverseRelationship];
  v6 = [a1[4] descriptionForRelationship:a3];
  if (v6)
  {

    goto LABEL_3;
  }

  if (v10)
  {
    v8 = [a1[4] descriptionForRelationship:v10];
    v9 = [v8 isReference];

    if (v9)
    {
LABEL_3:
      v7 = [a1[5] valueForKey:a2];
      if ([a3 isToMany])
      {
        if (![v7 count])
        {
          goto LABEL_11;
        }
      }

      else if (!v7)
      {
LABEL_11:

        goto LABEL_12;
      }

      [a1[5] setValue:0 forKey:a2];
      [a1[6] setValue:v7 forKey:a2];
      [a1[7] addObject:a2];
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (BOOL)updateRootObject:(id)object fromReader:(id)reader
{
  v38 = *MEMORY[0x277D85DE8];
  rootDescription = [(HMDManagedObjectCodingModel *)self rootDescription];
  entity = [object entity];
  entity2 = [rootDescription entity];
  v10 = [entity isKindOfEntity:entity2];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      entity3 = [object entity];
      entity4 = [rootDescription entity];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = entity3;
      *&buf[22] = 2114;
      v37 = entity4;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected root entity: %{public}@, expecting %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  entity5 = [object entity];
  entity6 = [rootDescription entity];
  v19 = [entity5 isKindOfEntity:entity6];

  if ((v19 & 1) == 0 || ([object managedObjectContext], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21) || !reader)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  v22 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  readerCopy = reader;
  *buf = readerCopy;
  *&buf[8] = [object managedObjectContext];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__HMDManagedObjectCodingModel_Transmutation__updateRootObject_fromReader___block_invoke;
  aBlock[3] = &unk_27867BC58;
  v25 = array;
  v35 = v25;
  *&buf[16] = _Block_copy(aBlock);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __74__HMDManagedObjectCodingModel_Transmutation__updateRootObject_fromReader___block_invoke_2;
  v31[3] = &unk_27867BC80;
  v31[4] = self;
  v31[5] = object;
  v26 = rootDescription;
  v32 = v26;
  v33 = readerCopy;
  v27 = _Block_copy(v31);
  v28 = -[HMDManagedObjectCodingModel _decodeManagedObjectWithDescription:byReference:useDynamicType:context:lookupBlock:emplaceBlock:](self, v26, 0, [v26 hasConcreteSubentities], buf, v27, 0);
  v29 = [(HMDManagedObjectCodingModel *)self _processDeferredBlocks:v25 context:buf];

  objc_autoreleasePoolPop(v22);
  return v29;
}

void __74__HMDManagedObjectCodingModel_Transmutation__updateRootObject_fromReader___block_invoke(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  [v2 addObject:v3];
}

id __74__HMDManagedObjectCodingModel_Transmutation__updateRootObject_fromReader___block_invoke_2(uint64_t a1, void *a2)
{
  if (([(HMDManagedObjectCodingModel *)*(a1 + 32) _managedObject:*(a1 + 48) withDescription:a2 matchesKeyAttributes:?]& 1) != 0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    [*(a1 + 56) failWithReason:@"Decoded key attributes do not match object to update"];
    v3 = 0;
  }

  return v3;
}

- (id)decodeRootObjectFromReader:(id)reader
{
  if (![(HMDManagedObjectCodingModel *)self hasOnlyParentChildRelationships])
  {
    _HMFPreconditionFailure();
LABEL_10:
    v14 = _HMFPreconditionFailure();
    __destructor_8_s0_s8_sb16(&v16);
    _Block_object_dispose(&v19, 8);
    _Unwind_Resume(v14);
  }

  if (!reader)
  {
    goto LABEL_10;
  }

  rootDescription = [(HMDManagedObjectCodingModel *)self rootDescription];
  v6 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__156312;
  v23 = __Block_byref_object_dispose__156313;
  v24 = 0;
  readerCopy = reader;
  v17 = 0;
  v18 = 0;
  v16 = readerCopy;
  hasConcreteSubentities = [rootDescription hasConcreteSubentities];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HMDManagedObjectCodingModel_Transmutation__decodeRootObjectFromReader___block_invoke;
  v15[3] = &unk_27867BC30;
  v15[4] = &v19;
  v9 = [(HMDManagedObjectCodingModel *)self _decodeManagedObjectWithDescription:rootDescription byReference:0 useDynamicType:hasConcreteSubentities candidates:0 context:&v16 orEmplaceWithBlock:v15];
  error = [readerCopy error];
  if (error)
  {
    v11 = 0;
  }

  else
  {
    v11 = v20[5];
  }

  v12 = v11;

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v6);

  return v12;
}

- (BOOL)isRelevantChanges:(id)changes withRootObject:(id)object conditions:(id)conditions userContext:(id)context
{
  rootDescription = [(HMDManagedObjectCodingModel *)self rootDescription];
  if (!changes)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  v12 = rootDescription;
  entity = [object entity];
  entity2 = [v12 entity];
  v15 = [entity isKindOfEntity:entity2];

  if ((v15 & 1) == 0)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (conditions)
  {
    v16 = *(conditions + 1);

    if (v16 != self)
    {
LABEL_15:
      v25 = _HMFPreconditionFailure();

      _Unwind_Resume(v25);
    }
  }

  v17 = objc_autoreleasePoolPush();
  v28 = 0;
  *&v26 = 0;
  v27 = 0u;
  *(&v26 + 1) = changes;
  conditionsCopy = conditions;
  if (!conditions)
  {
    conditionsCopy = [[HMDCodingConditionSet alloc] initWithModel:self, v26, v27, v28];
  }

  v19 = conditionsCopy;
  *&v27 = v19;
  *(&v27 + 1) = context;
  LOBYTE(v28) = 0;
  v20 = *(&v27 + 1);
  if ([v20 conformsToProtocol:&unk_283F57268])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v29 = v22;
  if (!conditions)
  {
  }

  [(HMDManagedObjectCodingModel *)self contextualizeConditions:v19 forManagedObject:object userContext:v20];
  -[HMDManagedObjectCodingModel _encodeManagedObject:withDescription:byReference:useDynamicType:context:](self, object, v12, 0, [v12 hasConcreteSubentities], &v26);
  v23 = v28;
  __destructor_8_s0_s8_s16_s24_s40(&v26);
  objc_autoreleasePoolPop(v17);

  return v23;
}

- (void)_encodeManagedObject:(void *)object withDescription:(uint64_t)description byReference:(int)reference useDynamicType:(uint64_t)type context:
{
  if (!self)
  {
    return;
  }

  descriptionCopy = description;
  if ((description & 1) == 0)
  {
    [*type beginArrayOfSize:3];
  }

  if (reference)
  {
    objectCopy = [self descriptionForManagedObject:a2];
    typeID = [objectCopy typeID];
    [(HMDManagedObjectCodingModel *)self _encodeKeyAttributesOfManagedObject:a2 withDescription:object typeID:typeID byReference:descriptionCopy context:type];

    if (descriptionCopy)
    {
      goto LABEL_21;
    }

LABEL_8:
    v13 = *(type + 8);
    if (v13)
    {
      objectID = [a2 objectID];
      v39 = 0;
      v40 = 0;
      v15 = [v13 changeScopeForObjectWithID:objectID attributeKeys:&v40 relationshipKeys:&v39];
      v13 = v40;
      v16 = v39;

      if (v15 == 2)
      {
        attributesByCodingKey = [objectCopy attributesByCodingKey];
        [*type beginDictionaryOfSize:{objc_msgSend(v13, "count")}];
        v31 = MEMORY[0x277D85DD0];
        v32 = 3221225472;
        v33 = __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke;
        v34 = &unk_27867BD40;
        typeCopy = type;
        selfCopy3 = self;
        attributesByCodingKey2 = attributesByCodingKey;
        v36 = attributesByCodingKey2;
        typeCopy3 = a2;
        [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:&v31];
        [*type endDictionary];
        if (*type || (*(type + 32) & 1) == 0)
        {
          relationshipsByCodingKey = [objectCopy relationshipsByCodingKey];
          [*type beginDictionaryOfSize:{objc_msgSend(v16, "count")}];
          v23 = MEMORY[0x277D85DD0];
          v24 = 3221225472;
          v25 = __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_2;
          v26 = &unk_27867BD40;
          selfCopy4 = self;
          v28 = relationshipsByCodingKey;
          typeCopy4 = a2;
          typeCopy2 = type;
          v21 = relationshipsByCodingKey;
          [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:&v23];
          [*type endDictionary];
        }

        goto LABEL_19;
      }

      if (v15 == 1)
      {
        [*type beginDictionaryOfSize:0];
        [*type endDictionary];
        [*type beginDictionaryOfSize:0];
        [*type endDictionary];
LABEL_20:

        [*type endArray];
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    *(type + 32) = 1;
    if (!*type)
    {
      goto LABEL_20;
    }

    attributesByCodingKey2 = [objectCopy attributesByCodingKey];
    [*type beginDictionaryOfSize:{objc_msgSend(attributesByCodingKey2, "count")}];
    v31 = MEMORY[0x277D85DD0];
    v32 = 3221225472;
    v33 = __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_3;
    v34 = &unk_27867BD68;
    v36 = a2;
    typeCopy3 = type;
    selfCopy3 = self;
    [attributesByCodingKey2 enumerateKeysAndObjectsUsingBlock:&v31];
    [*type endDictionary];
    relationshipsByCodingKey2 = [objectCopy relationshipsByCodingKey];
    [*type beginDictionaryOfSize:{objc_msgSend(relationshipsByCodingKey2, "count")}];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_4;
    v26 = &unk_27867BD90;
    v28 = a2;
    typeCopy4 = type;
    selfCopy4 = self;
    [relationshipsByCodingKey2 enumerateKeysAndObjectsUsingBlock:&v23];
    [*type endDictionary];

LABEL_19:
    goto LABEL_20;
  }

  [(HMDManagedObjectCodingModel *)self _encodeKeyAttributesOfManagedObject:a2 withDescription:object typeID:0 byReference:descriptionCopy context:type];
  objectCopy = object;
  if ((descriptionCopy & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
}

- (void)_encodeKeyAttributesOfManagedObject:(void *)object withDescription:(uint64_t)description typeID:(int)d byReference:(id *)reference context:
{
  if (!*reference)
  {
    return;
  }

  [*reference beginDictionaryOfSize:-1];
  if (!d)
  {
    goto LABEL_7;
  }

  refContextKeyPath = [object refContextKeyPath];
  if (!refContextKeyPath)
  {
LABEL_6:

LABEL_7:
    if (description)
    {
      [*reference writeDictionaryKey:@"$type"];
      [*reference writeString:description];
    }

    keyAttributesByCodingKey = [object keyAttributesByCodingKey];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __125__HMDManagedObjectCodingModel_Transmutation___encodeKeyAttributesOfManagedObject_withDescription_typeID_byReference_context___block_invoke;
    v22[3] = &unk_27867BCF0;
    v22[4] = a2;
    v22[5] = object;
    v22[6] = self;
    v22[7] = reference;
    [keyAttributesByCodingKey enumerateKeysAndObjectsUsingBlock:v22];

    [*reference endDictionary];
    return;
  }

  v21 = refContextKeyPath;
  v13 = [a2 valueForKeyPath:refContextKeyPath];
  v14 = *reference;
  if (v13)
  {
    v15 = v13;
    refContextCodingKey = [object refContextCodingKey];
    [v14 writeDictionaryKey:refContextCodingKey];

    refContextEntity = [object refContextEntity];
    v18 = [self descriptionForEntity:refContextEntity];
    [(HMDManagedObjectCodingModel *)self _encodeKeyAttributesOfManagedObject:v15 withDescription:v18 typeID:0 byReference:1 context:reference];

    refContextKeyPath = v21;
    goto LABEL_6;
  }

  name = [object name];
  [v14 failWithReason:{@"%@: Missing required REF context (%@)", name, v21}];
}

void __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = **(a1 + 56);
  if (v5)
  {
    [v5 writeDictionaryKey:a2];
    v6 = *(a1 + 32);
    v10 = [*(a1 + 40) objectForKeyedSubscript:a2];
    [(HMDManagedObjectCodingModel *)v6 _encodeAttribute:v10 ofManagedObject:*(a1 + 48) context:*(a1 + 56)];
  }

  else if (([a2 isEqualToString:@"writerTimestamp"] & 1) == 0)
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:a2];
    v9 = [v8 shouldIncludeWithConditions:*(*(a1 + 56) + 16)];

    if (v9)
    {
      *a3 = 1;
      *(*(a1 + 56) + 32) = 1;
    }
  }
}

void __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  [**(a1 + 56) writeDictionaryKey:a2];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [(HMDManagedObjectCodingModel *)v6 _encodeRelationship:v7 ofManagedObject:*(a1 + 48) context:*(a1 + 56)];

  v8 = *(a1 + 56);
  if (*v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 32);
  }

  *a3 = v9 & 1;
}

void __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  [**(a1 + 48) writeDictionaryKey:a2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  [(HMDManagedObjectCodingModel *)v5 _encodeAttribute:a3 ofManagedObject:v6 context:v7];
}

void __103__HMDManagedObjectCodingModel_Transmutation___encodePropertiesOfManagedObject_withDescription_context___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  [**(a1 + 48) writeDictionaryKey:a2];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);

  [(HMDManagedObjectCodingModel *)v5 _encodeRelationship:a3 ofManagedObject:v6 context:v7];
}

- (void)_encodeRelationship:(void *)relationship ofManagedObject:(uint64_t)object context:
{
  v37 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v8 = [self descriptionForDestinationOfRelationship:a2];
    isParentChild = [a2 isParentChild];
    if (isParentChild)
    {
      hasConcreteSubentities = [v8 hasConcreteSubentities];
    }

    else
    {
      hasConcreteSubentities = 0;
    }

    relationship = [a2 relationship];
    isToMany = [relationship isToMany];

    if (isToMany)
    {
      isConditional = [a2 isConditional];
      name = [a2 name];
      v13 = [relationship valueForKey:name];

      v14 = *object;
      if (isConditional)
      {
        v15 = -1;
      }

      else
      {
        v15 = [v13 count];
      }

      [v14 beginArrayOfSize:v15];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v13;
      v19 = [v18 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v19)
      {

        goto LABEL_31;
      }

      v20 = v19;
      v21 = v8;
      v28 = 0;
      v22 = *v33;
      obj = v18;
LABEL_14:
      v23 = 0;
      while (1)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v32 + 1) + 8 * v23);
        v25 = *(object + 8);
        objectID = [v24 objectID];
        v27 = [v25 changeScopeForObjectWithID:objectID attributeKeys:0 relationshipKeys:0];

        if (v27 != 1)
        {
          break;
        }

        if (*object)
        {
          goto LABEL_21;
        }

LABEL_23:
        if (v20 == ++v23)
        {
          v18 = obj;
          v20 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v20)
          {
            goto LABEL_14;
          }

          v8 = v21;
          if (v28)
          {
LABEL_32:
            [*object endArray];

            goto LABEL_33;
          }

LABEL_31:
          *(object + 32) = 1;
          goto LABEL_32;
        }
      }

      v28 = 1;
LABEL_21:
      [(HMDManagedObjectCodingModel *)self _conditionallyEncodeChildObject:v24 withDescription:v21 forRelationship:a2 byReference:isParentChild ^ 1u useDynamicType:hasConcreteSubentities context:object];
      if (!*object && (*(object + 32) & 1) != 0)
      {

        v8 = v21;
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    name2 = [a2 name];
    v17 = [relationship valueForKey:name2];

    if (v17)
    {
      if (([(HMDManagedObjectCodingModel *)self _conditionallyEncodeChildObject:v17 withDescription:v8 forRelationship:a2 byReference:isParentChild ^ 1u useDynamicType:hasConcreteSubentities context:object]& 1) == 0)
      {
        [*object writeNull];
      }
    }

    else
    {
      [*object writeNull];
      *(object + 32) = 1;
    }

LABEL_33:
  }
}

- (uint64_t)_conditionallyEncodeChildObject:(void *)object withDescription:(void *)description forRelationship:(uint64_t)relationship byReference:(int)reference useDynamicType:(uint64_t)type context:
{
  v13 = *(type + 16);
  if (v13)
  {
    v14 = *(v13 + 16);
    if (!self)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
    if (!self)
    {
      goto LABEL_10;
    }
  }

  v15 = *(type + 24);
  v16 = self + 15;
  if (self[15])
  {
    v17 = self[15];
  }

  else
  {
    v17 = 0;
  }

  v18 = [a2 methodForSelector:v17];
  if (*v16)
  {
    v19 = *v16;
  }

  else
  {
    v19 = 0;
  }

  v18(a2, v19, v13, v15);
  v13 = *(type + 16);
LABEL_10:
  result = [description shouldIncludeWithConditions:v13];
  if (result)
  {
    if ([*(type + 40) shouldExcludeObject:a2 context:*(type + 24)])
    {
      result = 0;
    }

    else if (*type || !relationship)
    {
      [(HMDManagedObjectCodingModel *)self _encodeManagedObject:a2 withDescription:object byReference:relationship useDynamicType:reference context:type];
      result = 1;
    }

    else
    {
      result = 1;
      *(type + 32) = 1;
    }
  }

  v21 = *(type + 16);
  if (v21)
  {
    *(v21 + 16) = v14;
  }

  return result;
}

- (void)_encodeAttribute:(void *)attribute ofManagedObject:(uint64_t)object context:
{
  if (self)
  {
    if ([a2 shouldIncludeWithConditions:*(object + 16)])
    {
      name = [a2 name];
      v9 = *(object + 24);
      v10 = (self + 128);
      if (*(self + 128))
      {
        v11 = *(self + 128);
      }

      else
      {
        v11 = 0;
      }

      v13 = [attribute methodForSelector:v11];
      if (*v10)
      {
        v14 = *v10;
      }

      else
      {
        v14 = 0;
      }

      v15 = v13(attribute, v14, name, v9);

      [(HMDManagedObjectCodingModel *)self _encodeValue:v15 forAttribute:a2 context:object];
    }

    else
    {
      v12 = *object;

      [v12 writeNull];
    }
  }
}

- (void)_encodeValue:(void *)value forAttribute:(void *)attribute context:
{
  if (!self)
  {
    return;
  }

  if (a2)
  {
    attribute = [value attribute];
    attributeType = [attribute attributeType];

    if (attributeType <= 699)
    {
      if (attributeType > 399)
      {
        if (attributeType != 400 && attributeType != 500 && attributeType != 600)
        {
          goto LABEL_58;
        }
      }

      else if (attributeType != 100 && attributeType != 200 && attributeType != 300)
      {
        goto LABEL_58;
      }

      v11 = *attribute;

      [v11 writeNumber:a2];
    }

    else if (attributeType <= 999)
    {
      switch(attributeType)
      {
        case 700:
          v20 = *attribute;

          [v20 writeString:a2];
          break;
        case 800:
          v18 = *attribute;
          bOOLValue = [a2 BOOLValue];

          [v18 writeBoolean:bOOLValue];
          break;
        case 900:
          v12 = *attribute;

          [v12 writeDate:a2];
          break;
        default:
          goto LABEL_58;
      }
    }

    else if (attributeType > 1199)
    {
      if (attributeType == 1200)
      {
        absoluteString = [a2 absoluteString];
        v17 = *attribute;
        v33 = absoluteString;
        if (absoluteString)
        {
          [v17 writeString:absoluteString];
        }

        else
        {
          shortDescription = [value shortDescription];
          [v17 failWithReason:{@"%@: Invalid / malformed URI value", shortDescription}];
        }
      }

      else
      {
        if (attributeType != 1800)
        {
          goto LABEL_58;
        }

        v34 = 0;
        transformer = [value transformer];
        if ([value shouldInline] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(objc_opt_class(), "isStructuredDataCompatible"))
        {
          v14 = [transformer OPACKFromValue:a2 error:&v34];
        }

        else
        {
          v14 = [transformer transformedValue:a2 error:&v34];
        }

        v21 = v14;

        v22 = v34;
        v23 = *attribute;
        if (v21)
        {
          [v23 writeLogicalValue:v21 validateAndCopy:0];
        }

        else
        {
          shortDescription2 = [value shortDescription];
          [v23 failWithReason:{@"%@: Failed to transform attribute value: %@", shortDescription2, v22}];
        }
      }
    }

    else
    {
      if (attributeType != 1000)
      {
        if (attributeType == 1100)
        {
          v9 = *attribute;

          [v9 writeUUID:a2];
          return;
        }

LABEL_58:
        v26 = MEMORY[0x277CBEAD8];
        v27 = *MEMORY[0x277CBE658];
        v28 = MEMORY[0x277CCACA8];
        attribute2 = [value attribute];
        v30 = [v28 stringWithFormat:@"Attribute type not supported: %zd", objc_msgSend(attribute2, "attributeType")];
        v31 = [v26 exceptionWithName:v27 reason:v30 userInfo:0];
        v32 = v31;

        objc_exception_throw(v31);
      }

      v15 = *attribute;

      [v15 writeData:a2];
    }
  }

  else
  {
    v10 = *attribute;

    [v10 writeNull];
  }
}

void __125__HMDManagedObjectCodingModel_Transmutation___encodeKeyAttributesOfManagedObject_withDescription_typeID_byReference_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = [a3 name];
  v12 = [v6 valueForKey:v7];

  v8 = *(a1 + 56);
  v9 = *v8;
  if (v12)
  {
    [*v8 writeDictionaryKey:a2];
    [(HMDManagedObjectCodingModel *)*(a1 + 48) _encodeValue:v12 forAttribute:a3 context:*(a1 + 56)];
  }

  else
  {
    v10 = [*(a1 + 40) name];
    v11 = [a3 name];
    [v9 failWithReason:{@"%@: Key attribute '%@' is missing", v10, v11}];
  }
}

- (BOOL)encodeRootObject:(id)object withWriter:(id)writer changes:(id)changes conditions:(id)conditions userContext:(id)context
{
  v45 = *MEMORY[0x277D85DE8];
  rootDescription = [(HMDManagedObjectCodingModel *)self rootDescription];
  entity = [object entity];
  entity2 = [rootDescription entity];
  v16 = [entity isKindOfEntity:entity2];

  if ((v16 & 1) == 0)
  {
    _HMFPreconditionFailure();
LABEL_18:
    _HMFPreconditionFailure();
  }

  if (!writer)
  {
    goto LABEL_18;
  }

  if (conditions)
  {
    v17 = *(conditions + 1);

    if (v17 != self)
    {
      v34 = _HMFPreconditionFailure();
      __destructor_8_s0_s8_s16_s24_s40(&v35);
      _Unwind_Resume(v34);
    }
  }

  v18 = objc_autoreleasePoolPush();
  v39 = 0;
  writerCopy = writer;
  v35 = writerCopy;
  changesCopy = changes;
  conditionsCopy = conditions;
  if (!conditions)
  {
    conditionsCopy = [[HMDCodingConditionSet alloc] initWithModel:self, v35, changesCopy];
  }

  v21 = conditionsCopy;
  v37 = v21;
  contextCopy = context;
  v22 = contextCopy;
  if ([v22 conformsToProtocol:&unk_283F57268])
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  v40 = v24;
  if (!conditions)
  {
  }

  [(HMDManagedObjectCodingModel *)self contextualizeConditions:v21 forManagedObject:object userContext:v22];
  -[HMDManagedObjectCodingModel _encodeManagedObject:withDescription:byReference:useDynamicType:context:](self, object, rootDescription, 0, [rootDescription hasConcreteSubentities], &v35);
  error = [writerCopy error];

  if (error)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      error2 = [writerCopy error];
      *buf = 138543618;
      v42 = v29;
      v43 = 2114;
      v44 = error2;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode managed object with error:%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  error3 = [writerCopy error];
  v32 = error3 == 0;

  __destructor_8_s0_s8_s16_s24_s40(&v35);
  objc_autoreleasePoolPop(v18);

  return v32;
}

@end