@interface HDMedicalRecordEntityEncoder
@end

@implementation HDMedicalRecordEntityEncoder

id __74___HDMedicalRecordEntityEncoder__applyConceptIndexToObject_profile_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCD1D0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 conceptIdentifier];

  v6 = [v4 initWithRawIdentifier:v5];

  return v6;
}

BOOL __74___HDMedicalRecordEntityEncoder__applyConceptIndexToObject_profile_error___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v61 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = v6;
  v10 = a2;
  v11 = v7;
  objc_opt_self();
  v12 = v11;
  v13 = v10;
  objc_opt_self();
  v14 = [v13 internalContentDatabaseManager];

  v15 = [v14 ontologyContentVersionWithError:a3];

  if (!v15)
  {
    goto LABEL_22;
  }

  if (([v15 isEqual:v12] & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:1001 format:{@"Failed to load concepts; ontology version (%@) does not match expected (%@)", v15, v12}];
LABEL_22:
    v39 = 0;
    v40 = v12;
LABEL_27:

    goto LABEL_28;
  }

  v16 = [v13 internalContentDatabaseManager];
  v17 = [v9 allObjects];
  v49 = v16;
  v18 = [v16 conceptsForIdentifiers:v17 options:0 error:a3];

  if (v18)
  {
    v51 = a3;
    v46 = v9;
    v48 = v5;
    v44 = v18;
    v19 = [v18 hk_mapToDictionary:&__block_literal_global_465];
    v47 = v8;
    v20 = v8;
    v15 = v19;
    v45 = v13;
    v52 = v13;
    objc_opt_self();
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v20;
    v55 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v55)
    {
      v22 = *v57;
      v23 = *MEMORY[0x277CCBB78];
      v50 = v15;
      v53 = *MEMORY[0x277CCBB78];
LABEL_6:
      v24 = 0;
      while (1)
      {
        if (*v57 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v56 + 1) + 8 * v24);
        v26 = [v25 keyPath];
        v27 = [v21 objectForKeyedSubscript:v26];

        if (!v27)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v28 = [v25 keyPath];
          [v21 setObject:v27 forKeyedSubscript:v28];
        }

        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v25, "conceptIdentifier")}];
        v30 = [v15 objectForKeyedSubscript:v29];

        if (!v30)
        {
          [MEMORY[0x277CCA9B8] hk_assignError:v51 code:1001 format:@"Unable to find concepts referenced from concept index entry."];
LABEL_25:

          v39 = 0;
          goto LABEL_26;
        }

        v31 = [v25 keyPath];
        if (![v31 isEqualToString:v23])
        {
          goto LABEL_17;
        }

        v32 = v22;
        v33 = [v30 relationshipsAreLoaded];

        if ((v33 & 1) == 0)
        {
          break;
        }

        v22 = v32;
        v23 = v53;
LABEL_18:
        v38 = [MEMORY[0x277CCD548] indexableObjectWithObject:v30 compoundIndex:{objc_msgSend(v25, "compoundIndex")}];
        [v27 addObject:v38];

        if (v55 == ++v24)
        {
          v55 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v55)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }
      }

      v34 = [v52 internalContentDatabaseManager];
      v35 = objc_opt_class();
      v36 = [v30 identifier];
      v15 = v50;
      v31 = [v35 relationshipsForConceptWithIdentifier:v36 transaction:v52 error:v51];

      if (!v31)
      {
        goto LABEL_25;
      }

      v37 = [v30 copyWithRelationships:v31];

      v30 = v37;
      v22 = v32;
      v23 = v53;
LABEL_17:

      goto LABEL_18;
    }

LABEL_20:

    v39 = v21;
LABEL_26:

    v8 = v47;
    v5 = v48;
    v13 = v45;
    v9 = v46;
    v12 = v44;
    v40 = v49;
    goto LABEL_27;
  }

  v12 = 0;
  v39 = 0;
  v40 = v49;
LABEL_28:

  v41 = *(*(v5 + 56) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v39;

  return *(*(*(v5 + 56) + 8) + 40) != 0;
}

void __152___HDMedicalRecordEntityEncoder__indexableConceptsByKeyPathForConceptIndexEntries_conceptIdentifiers_expectedOntologyVersion_ontologyTransaction_error___block_invoke(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = a3;
  v6 = a2;
  v8 = [v6 identifier];
  v7 = [v8 numberRepresentation];
  (a3)[2](v5, v7, v6);
}

@end