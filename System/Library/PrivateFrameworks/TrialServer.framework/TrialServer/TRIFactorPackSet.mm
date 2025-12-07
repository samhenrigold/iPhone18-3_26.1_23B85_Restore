@interface TRIFactorPackSet
+ (BOOL)_signatures:(id)_signatures onItems:(id)items areValidUsingPublicCertificate:(id)certificate;
+ (id)allReferencedCKRecordKeys;
+ (id)artifactFromCKRecord:(id)record;
+ (id)setWithIdent:(id)ident packs:(id)packs;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSet:(id)set;
- (BOOL)isStructurallyValid;
- (TRIFactorPackSet)initWithIdent:(id)ident packs:(id)packs;
- (id)copyWithReplacementIdent:(id)ident;
- (id)copyWithReplacementPacks:(id)packs;
- (id)description;
@end

@implementation TRIFactorPackSet

+ (id)allReferencedCKRecordKeys
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D73940];
  v6[0] = *MEMORY[0x277D73948];
  v6[1] = v2;
  v3 = *MEMORY[0x277D73950];
  v6[2] = *MEMORY[0x277D73938];
  v6[3] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:4];

  return v4;
}

+ (id)artifactFromCKRecord:(id)record
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  values = [recordCopy values];
  v6 = values;
  if (values)
  {
    v7 = [values triArrayValueForField:*MEMORY[0x277D73940] isNestedValue:0];
    v8 = v7;
    if (!v7 || [v7 count]&& ([v8 objectAtIndexedSubscript:0], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, (isKindOfClass & 1) == 0))
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        recordID = [recordCopy recordID];
        *buf = 138412290;
        v48 = recordID;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack definitions.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_50;
    }

    v11 = [v6 triArrayValueForField:*MEMORY[0x277D73938] isNestedValue:0];
    v12 = v11;
    if (!v11 || [v11 count]&& ([v12 objectAtIndexedSubscript:0], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, (v14 & 1) == 0))
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        recordID2 = [recordCopy recordID];
        *buf = 138412290;
        v48 = recordID2;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack definition signatures.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_49;
    }

    v15 = [v6 triDataForField:*MEMORY[0x277D73950]];
    if (!v15)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        recordID3 = [recordCopy recordID];
        *buf = 138412290;
        v48 = recordID3;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt public certificate.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_48;
    }

    v16 = [v6 triStringValueForField:*MEMORY[0x277D73948] isNestedValue:0];
    if (!v16)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        recordID4 = [recordCopy recordID];
        *buf = 138412290;
        v48 = recordID4;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "FactorPackSet in CloudKit record %@ has missing or corrupt factor pack set id.", buf, 0xCu);
      }

      v27 = 0;
      goto LABEL_47;
    }

    v17 = TRIValidateFactorPackSetId();
    if (v17)
    {
      if ([self _signatures:v12 onItems:v8 areValidUsingPublicCertificate:v15])
      {
        v37 = v16;
        v38 = v17;
        log = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v8, "count")}];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        obj = v8;
        v18 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v43;
          while (2)
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v43 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v42 + 1) + 8 * i);
              v41 = 0;
              v23 = [objc_alloc(MEMORY[0x277D73670]) initWithData:v22 error:&v41];
              if (!v23)
              {
                v33 = TRILogCategory_Server();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v48 = v38;
                  v49 = 2114;
                  v50 = v41;
                  _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to parse factor pack contained in factor pack set %{public}@: %{public}@", buf, 0x16u);
                }

                v27 = 0;
                v16 = v37;
                v17 = v38;
                goto LABEL_46;
              }

              v24 = v23;
              [log addObject:v23];
            }

            v19 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

        v17 = v38;
        v25 = [[TRIFactorPackSet alloc] initWithIdent:v38 packs:log];
        if ([(TRIFactorPackSet *)v25 isStructurallyValid])
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        v16 = v37;
        goto LABEL_46;
      }

      log = TRILogCategory_Server();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
LABEL_42:
        v27 = 0;
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_49:
LABEL_50:

        goto LABEL_51;
      }

      recordID5 = [recordCopy recordID];
      *buf = 138412546;
      v48 = recordID5;
      v49 = 2114;
      v50 = v17;
      v31 = "CloudKit record %@ with factor pack set id %{public}@ does not have valid signatures.";
    }

    else
    {
      log = TRILogCategory_Server();
      if (!os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_42;
      }

      recordID5 = [recordCopy recordID];
      *buf = 138412546;
      v48 = recordID5;
      v49 = 2114;
      v50 = v16;
      v31 = "CloudKit record %@ has factor pack set id which was rejected as unsuitable: %{public}@";
    }

    _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);

    goto LABEL_42;
  }

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    recordID6 = [recordCopy recordID];
    *buf = 138412290;
    v48 = recordID6;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Could not create FactorPackSet artifact from CloudKit record %@.", buf, 0xCu);
  }

  v27 = 0;
LABEL_51:

  return v27;
}

+ (BOOL)_signatures:(id)_signatures onItems:(id)items areValidUsingPublicCertificate:(id)certificate
{
  _signaturesCopy = _signatures;
  itemsCopy = items;
  certificateCopy = certificate;
  v10 = [_signaturesCopy count];
  if (v10 == [itemsCopy count])
  {
    v11 = [TRISignatureKey keyFromData:certificateCopy];
    if (v11)
    {
      if ([_signaturesCopy count])
      {
        v12 = 0;
        do
        {
          v13 = [_signaturesCopy objectAtIndexedSubscript:v12];
          v14 = [itemsCopy objectAtIndexedSubscript:v12];
          v15 = [v11 validateBase64Signature:v13 data:v14];

          if ((v15 & 1) == 0)
          {
            break;
          }

          ++v12;
        }

        while (v12 < [_signaturesCopy count]);
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isStructurallyValid
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  selfCopy = self;
  packs = [(TRIFactorPackSet *)self packs];
  v35 = [v3 initWithCapacity:{objc_msgSend(packs, "count")}];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [(TRIFactorPackSet *)selfCopy packs];
  v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (!v5)
  {
    v27 = 1;
    goto LABEL_33;
  }

  v32 = *v51;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v51 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v50 + 1) + 8 * i);
      v8 = objc_autoreleasePoolPush();
      if (([v7 hasFactorPackId] & 1) == 0)
      {
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          ident = [(TRIFactorPackSet *)selfCopy ident];
          *v58 = 138543362;
          *&v58[4] = ident;
          _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Factor pack set %{public}@ contains factor pack with missing id", v58, 0xCu);
        }

LABEL_30:

LABEL_31:
        objc_autoreleasePoolPop(v8);
LABEL_32:
        v27 = 0;
        goto LABEL_33;
      }

      factorPackId = [v7 factorPackId];
      v10 = TRIValidateFactorPackId();

      if (!v10)
      {
        goto LABEL_31;
      }

      selectedNamespace = [v7 selectedNamespace];
      if (![v7 hasSelectedNamespace] || !objc_msgSend(selectedNamespace, "hasName") || (objc_msgSend(selectedNamespace, "name"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "triIsPathSafe"), v12, (v13 & 1) == 0))
      {
        v28 = TRILogCategory_Server();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          name = [selectedNamespace name];
          *v58 = 138543618;
          *&v58[4] = v10;
          *&v58[12] = 2114;
          *&v58[14] = name;
          _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "FactorPack %{public}@ has invalid selectedNamespace.name: %{public}@", v58, 0x16u);
        }

        goto LABEL_30;
      }

      *v58 = 0;
      *&v58[8] = v58;
      *&v58[16] = 0x2020000000;
      v59 = 0;
      name2 = [selectedNamespace name];
      v15 = [v35 objectForKeyedSubscript:name2];

      if (!v15)
      {
        v15 = objc_opt_new();
        name3 = [selectedNamespace name];
        [v35 setObject:v15 forKeyedSubscript:name3];
      }

      v17 = objc_opt_new();
      compatibilityVersionArray = [selectedNamespace compatibilityVersionArray];
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke;
      v48[3] = &unk_279DDF630;
      v19 = v17;
      v49 = v19;
      [compatibilityVersionArray enumerateValuesWithBlock:v48];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_2;
      v43[3] = &unk_279DDF6F8;
      v20 = v15;
      v44 = v20;
      v45 = selfCopy;
      v21 = selectedNamespace;
      v46 = v21;
      v47 = v58;
      [v19 enumerateObjectsUsingBlock:v43];
      if (*(*&v58[8] + 24))
      {
        v22 = 0;
      }

      else
      {
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_8;
        v36[3] = &unk_279DDF720;
        v23 = v21;
        v37 = v23;
        v38 = &v39;
        [v7 enumerateFactorLevelsWithBlock:v36];
        v24 = *(v40 + 24);
        if (v24 == 1)
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            name4 = [v23 name];
            *buf = 138543618;
            v55 = v10;
            v56 = 2114;
            v57 = name4;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "FactorPack %{public}@ has selectedNamespace %{public}@ which does not match all contained factors.", buf, 0x16u);
          }
        }

        v22 = v24 ^ 1;
        _Block_object_dispose(&v39, 8);
      }

      _Block_object_dispose(v58, 8);
      objc_autoreleasePoolPop(v8);
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    v27 = 1;
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_33:

  return v27;
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:a2];
  [*(a1 + 32) addObject:v3];
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) containsObject:v5])
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 40) ident];
      v8 = [*(a1 + 48) name];
      v9 = [*(a1 + 48) name];
      v10 = [*(a1 + 48) compatibilityVersionArray];
      v11 = 138544386;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Factor pack set %{public}@ contains multiple factor packs with NCV (%{public}@, %@). Selected namespace %{public}@ -> %{public}@", &v11, 0x34u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __46__TRIFactorPackSet_Utils__isStructurallyValid__block_invoke_8(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  if (![v10 hasFactor])
  {
    goto LABEL_6;
  }

  v5 = [v10 factor];
  if (([v5 hasNamespaceName] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [v10 factor];
  v7 = [v6 namespaceName];
  v8 = [*(a1 + 32) name];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
LABEL_6:
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (TRIFactorPackSet)initWithIdent:(id)ident packs:(id)packs
{
  identCopy = ident;
  packsCopy = packs;
  v10 = packsCopy;
  if (identCopy)
  {
    if (packsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1549 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1550 description:{@"Invalid parameter not satisfying: %@", @"packs != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIFactorPackSet;
  v11 = [(TRIFactorPackSet *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ident, ident);
    objc_storeStrong(&v12->_packs, packs);
  }

  return v12;
}

+ (id)setWithIdent:(id)ident packs:(id)packs
{
  packsCopy = packs;
  identCopy = ident;
  v8 = [[self alloc] initWithIdent:identCopy packs:packsCopy];

  return v8;
}

- (id)copyWithReplacementIdent:(id)ident
{
  identCopy = ident;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:identCopy packs:self->_packs];

  return v5;
}

- (id)copyWithReplacementPacks:(id)packs
{
  packsCopy = packs;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:self->_ident packs:packsCopy];

  return v5;
}

- (BOOL)isEqualToSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (!setCopy || (v6 = self->_ident == 0, [setCopy ident], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (ident = self->_ident) != 0 && (objc_msgSend(v5, "ident"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIFactorPackSetId isEqual:](ident, "isEqual:", v10), v10, !v11) || (v12 = self->_packs == 0, objc_msgSend(v5, "packs"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14))
  {
    v17 = 0;
  }

  else
  {
    packs = self->_packs;
    if (packs)
    {
      packs = [v5 packs];
      v17 = [(NSArray *)packs isEqual:packs];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorPackSet | ident:%@ packs:%@>", self->_ident, self->_packs];

  return v2;
}

@end