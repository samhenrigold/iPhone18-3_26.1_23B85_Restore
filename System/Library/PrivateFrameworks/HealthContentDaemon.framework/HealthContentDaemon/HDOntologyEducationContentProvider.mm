@interface HDOntologyEducationContentProvider
+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction localizedEducationContentOut:(id *)out error:(id *)error;
+ (id)_localizedEducationContentSectionsForConcept:(uint64_t)concept;
+ (id)_localizedSectionDataForAttribute:(double)attribute timestamp:;
@end

@implementation HDOntologyEducationContentProvider

+ (BOOL)localizedEducationContentForConceptWithIdentifier:(id)identifier ontologyTransaction:(id)transaction localizedEducationContentOut:(id *)out error:(id *)error
{
  identifierCopy = identifier;
  transactionCopy = transaction;
  v12 = [HDOntologyConceptManager predicateMatchingRelationshipsWithSubjectId:identifierCopy relationshipType:988];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = -1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __143__HDOntologyEducationContentProvider_localizedEducationContentForConceptWithIdentifier_ontologyTransaction_localizedEducationContentOut_error___block_invoke;
  v22 = &unk_2796B98E8;
  v24 = &v31;
  v25 = &v27;
  v14 = v13;
  v23 = v14;
  selfCopy = self;
  v15 = [HDOntologyConceptManager enumerateRelationshipsMatchingPredicate:v12 options:13 transaction:transactionCopy error:error enumerationHandler:&v19];
  if (v15)
  {
    if (v32[3] == -1)
    {
      v16 = 0;
    }

    else if (*(v28 + 24) == 1)
    {
      v16 = [MEMORY[0x277CCD750] nullPropertyWithVersion:{v19, v20, v21, v22}];
    }

    else
    {
      v16 = [v14 count];
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x277CCD750]);
        v16 = [v17 initWithSections:v14 version:v32[3] timestamp:0 deleted:CFAbsoluteTimeGetCurrent()];
      }
    }

    if (out)
    {
      v16 = v16;
      *out = v16;
    }
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v15;
}

uint64_t __143__HDOntologyEducationContentProvider_localizedEducationContentForConceptWithIdentifier_ontologyTransaction_localizedEducationContentOut_error___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 version];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 24);
  if (v4 > v6)
  {
    v6 = v4;
  }

  *(v5 + 24) = v6;
  *(*(a1[6] + 8) + 24) &= [v3 isDeleted];
  if (([v3 isDeleted] & 1) == 0)
  {
    v7 = a1[4];
    v8 = a1[7];
    v9 = [v3 destination];
    v10 = [(HDOntologyEducationContentProvider *)v8 _localizedEducationContentSectionsForConcept:v9];
    [v7 addObjectsFromArray:v10];
  }

  return 1;
}

+ (id)_localizedEducationContentSectionsForConcept:(uint64_t)concept
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  v53 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v66 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Current = CFAbsoluteTimeGetCurrent();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v52 = v2;
  obj = [v2 attributes];
  v54 = v5;
  v55 = v4;
  v67 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
  isDeleted2 = 0;
  isDeleted = 0;
  v9 = 0;
  if (!v67)
  {
    v10 = 0xFFFFFFFF80000000;
    v60 = 0xFFFFFFFF80000000;
    goto LABEL_42;
  }

  v64 = *v78;
  v10 = 0xFFFFFFFF80000000;
  v60 = 0xFFFFFFFF80000000;
  do
  {
    v11 = 0;
    do
    {
      if (*v78 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v77 + 1) + 8 * v11);
      type = [v12 type];
      if (type <= 801)
      {
        if (type <= 667)
        {
          if (type == 666)
          {
            v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
            v15 = v66;
            v16 = v14;
            v17 = &unk_286374730;
          }

          else
          {
            if (type != 667)
            {
              goto LABEL_35;
            }

            v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
            v15 = v66;
            v16 = v14;
            v17 = &unk_286374748;
          }
        }

        else
        {
          switch(type)
          {
            case 668:
              v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
              v15 = v66;
              v16 = v14;
              v17 = &unk_286374760;
              break;
            case 800:
              v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
              v15 = v66;
              v16 = v14;
              v17 = &unk_286374700;
              break;
            case 801:
              v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
              v15 = v66;
              v16 = v14;
              v17 = &unk_286374718;
              break;
            default:
              goto LABEL_35;
          }
        }

        goto LABEL_34;
      }

      if (type <= 803)
      {
        if (type == 802)
        {
          v27 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
          [v53 addObject:v27];
        }

        else
        {
          stringValue = [v12 stringValue];
          [v4 hk_addNonNilObject:stringValue];

          version = [v12 version];
          v26 = v60;
          if (v60 <= version)
          {
            v26 = version;
          }

          v60 = v26;
          if (isDeleted)
          {
            isDeleted = 1;
          }

          else
          {
            isDeleted = [v12 isDeleted];
          }
        }
      }

      else
      {
        switch(type)
        {
          case 804:
            stringValue2 = [v12 stringValue];
            [v5 hk_addNonNilObject:stringValue2];

            version2 = [v12 version];
            if (v10 <= version2)
            {
              v10 = version2;
            }

            if (isDeleted2)
            {
              isDeleted2 = 1;
            }

            else
            {
              isDeleted2 = [v12 isDeleted];
            }

            break;
          case 957:
            v14 = [(HDOntologyEducationContentProvider *)v3 _localizedSectionDataForAttribute:v12 timestamp:Current];
            v15 = v66;
            v16 = v14;
            v17 = &unk_2863746E8;
LABEL_34:
            [v15 setObject:v16 forKeyedSubscript:v17];

            break;
          case 959:
            v56 = objc_alloc(MEMORY[0x277CCD748]);
            stringValue3 = [v12 stringValue];
            [stringValue3 componentsSeparatedByString:{@", "}];
            v19 = v58 = isDeleted;
            v20 = v3;
            v21 = v10;
            v22 = isDeleted2;
            v23 = v9;
            v9 = [v56 initWithStringValues:v19 sectionDataType:HDOntologyEducationContentSectionDataTypeForAttributeType(objc_msgSend(v12 version:"type")) timestamp:objc_msgSend(v12 deleted:{"version"), objc_msgSend(v12, "isDeleted"), Current}];

            isDeleted2 = v22;
            v10 = v21;
            v3 = v20;
            v4 = v55;

            isDeleted = v58;
            v5 = v54;
            break;
        }
      }

LABEL_35:
      ++v11;
    }

    while (v67 != v11);
    v30 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
    v67 = v30;
  }

  while (v30);
LABEL_42:

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v31 hk_addNonNilObject:v9];
  if ([v4 count])
  {
    v32 = objc_alloc(MEMORY[0x277CCD748]);
    allObjects = [v4 allObjects];
    v34 = [v32 initWithStringValues:allObjects sectionDataType:4 version:v60 timestamp:isDeleted & 1 deleted:Current];

    [v31 addObject:v34];
  }

  v57 = v9;
  if ([v5 count])
  {
    v35 = objc_alloc(MEMORY[0x277CCD748]);
    allObjects2 = [v5 allObjects];
    v37 = [v35 initWithStringValues:allObjects2 sectionDataType:5 version:v10 timestamp:isDeleted2 & 1 deleted:Current];

    [v31 addObject:v37];
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v59 = v53;
  v65 = [v59 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v65)
  {
    v61 = *v74;
    obja = v31;
    do
    {
      v39 = 0;
      do
      {
        if (*v74 != v61)
        {
          objc_enumerationMutation(v59);
        }

        v68 = v39;
        v40 = [v31 arrayByAddingObject:*(*(&v73 + 1) + 8 * v39)];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v41 = v66;
        v42 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v70;
          do
          {
            for (i = 0; i != v43; ++i)
            {
              if (*v70 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v69 + 1) + 8 * i);
              v47 = [v41 objectForKeyedSubscript:v46];
              v48 = [v40 arrayByAddingObject:v47];

              v49 = [v48 hk_mapToDictionary:&__block_literal_global_8];
              v50 = [objc_alloc(MEMORY[0x277CCD758]) initWithSectionDataTypeMapping:v49 sectionType:{objc_msgSend(v46, "integerValue")}];
              [v38 addObject:v50];
            }

            v43 = [v41 countByEnumeratingWithState:&v69 objects:v81 count:16];
          }

          while (v43);
        }

        v39 = v68 + 1;
        v31 = obja;
      }

      while (v68 + 1 != v65);
      v65 = [v59 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v65);
  }

  return v38;
}

+ (id)_localizedSectionDataForAttribute:(double)attribute timestamp:
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_self();
  stringValue = [v4 stringValue];
  v6 = [stringValue mutableCopy];

  [v6 replaceOccurrencesOfString:@"\\n" withString:@"\n" options:0 range:{0, objc_msgSend(v6, "length")}];
  [v6 replaceOccurrencesOfString:@"\\t" withString:@"\t" options:0 range:{0, objc_msgSend(v6, "length")}];
  v7 = objc_alloc(MEMORY[0x277CCD748]);
  v14[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = HDOntologyEducationContentSectionDataTypeForAttributeType([v4 type]);
  version = [v4 version];
  isDeleted = [v4 isDeleted];

  v12 = [v7 initWithStringValues:v8 sectionDataType:v9 version:version timestamp:isDeleted deleted:attribute];

  return v12;
}

void __83__HDOntologyEducationContentProvider__localizedEducationContentSectionsForConcept___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "sectionDataType")}];
  (a3)[2](v6, v8, v7);
}

@end