@interface TISupplementalPersonItem(TextInputCore)
- (BOOL)core_isEqualToMecabraCandidate:()TextInputCore;
- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:;
- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:;
- (void)core_appendEntitiesToArray:()TextInputCore;
@end

@implementation TISupplementalPersonItem(TextInputCore)

- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277D1C0A8]);
  givenName = [self givenName];
  phoneticGivenName = [self phoneticGivenName];
  middleName = [self middleName];
  phoneticMiddleName = [self phoneticMiddleName];
  familyName = [self familyName];
  phoneticFamilyName = [self phoneticFamilyName];
  organizationName = [self organizationName];
  nickname = [self nickname];
  v15 = [v6 initWithFirstName:givenName phoneticFirstName:phoneticGivenName middleName:middleName phoneticMiddleName:phoneticMiddleName lastName:familyName phoneticLastName:phoneticFamilyName organizationName:0.0 jobTitle:organizationName nickname:0 relations:nickname streets:0 cities:0 score:0];

  v16 = v5;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  TICreateNameReadingPairFromContactAndAppendToArray(v15, a3, v5, v17);
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count") >> 1}];
  if ([v17 count])
  {
    v19 = 0;
    do
    {
      v20 = [v17 objectAtIndexedSubscript:v19];
      if ([v17 count] <= v19 + 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = [v17 objectAtIndexedSubscript:v19 + 1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = [TINameReadingPair nameReadingPairWithName:v20 reading:v22];
      [v18 addObject:v23];

      v19 += 2;
    }

    while ([v17 count] > v19);
  }

  return v18;
}

- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  givenName = [self givenName];
  v12 = [givenName length];

  if (v12)
  {
    givenName2 = [self givenName];
    v14 = rangesOfStringInString(givenName2, v8, a4, v9);
    [v10 addObjectsFromArray:v14];
  }

  middleName = [self middleName];
  v16 = [middleName length];

  if (v16)
  {
    middleName2 = [self middleName];
    v18 = rangesOfStringInString(middleName2, v8, a4, v9);
    [v10 addObjectsFromArray:v18];
  }

  familyName = [self familyName];
  v20 = [familyName length];

  if (v20)
  {
    familyName2 = [self familyName];
    v22 = rangesOfStringInString(familyName2, v8, a4, v9);
    [v10 addObjectsFromArray:v22];
  }

  nickname = [self nickname];
  v24 = [nickname length];

  if (v24)
  {
    nickname2 = [self nickname];
    v26 = rangesOfStringInString(nickname2, v8, a4, v9);
    [v10 addObjectsFromArray:v26];
  }

  previousFamilyName = [self previousFamilyName];
  v28 = [previousFamilyName length];

  if (v28)
  {
    previousFamilyName2 = [self previousFamilyName];
    v30 = rangesOfStringInString(previousFamilyName2, v8, a4, v9);
    [v10 addObjectsFromArray:v30];
  }

  return v10;
}

- (BOOL)core_isEqualToMecabraCandidate:()TextInputCore
{
  v4 = a3;
  input = [v4 input];
  v6 = [input length];

  v39 = 1;
  if (!v6 || ([self phoneticGivenName], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "input"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend_isEqualToString_(v7), v8, v7, (v9 & 1) == 0) && (objc_msgSend(self, "phoneticMiddleName"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "input"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_isEqualToString_(v10), v11, v10, (v12 & 1) == 0) && (objc_msgSend(self, "phoneticFamilyName"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "input"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend_isEqualToString_(v13), v14, v13, (v15 & 1) == 0) && (objc_msgSend(self, "nickname"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "input"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_isEqualToString_(v16), v17, v16, (v18 & 1) == 0) && (objc_msgSend(self, "previousFamilyName"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "input"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_isEqualToString_(v19), v20, v19, (v21 & 1) == 0))
  {
    candidate = [v4 candidate];
    v23 = [candidate length];

    if (!v23 || ([self givenName], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v25 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v24), v25, v24, (isEqualToString & 1) == 0) && (objc_msgSend(self, "middleName"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend_isEqualToString_(v27), v28, v27, (v29 & 1) == 0) && (objc_msgSend(self, "familyName"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_isEqualToString_(v30), v31, v30, (v32 & 1) == 0) && (objc_msgSend(self, "nickname"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend_isEqualToString_(v33), v34, v33, (v35 & 1) == 0) && (objc_msgSend(self, "previousFamilyName"), v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend_isEqualToString_(v36), v37, v36, (v38 & 1) == 0))
    {
      v39 = 0;
    }
  }

  return v39;
}

- (void)core_appendEntitiesToArray:()TextInputCore
{
  v47 = a3;
  givenName = [self givenName];
  v5 = [givenName length];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D1C0B8]);
    givenName2 = [self givenName];
    v8 = [v6 initWithName:givenName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v8];
  }

  phoneticGivenName = [self phoneticGivenName];
  v10 = [phoneticGivenName length];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D1C0B8]);
    phoneticGivenName2 = [self phoneticGivenName];
    v13 = [v11 initWithName:phoneticGivenName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v13];
  }

  middleName = [self middleName];
  v15 = [middleName length];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D1C0B8]);
    middleName2 = [self middleName];
    v18 = [v16 initWithName:middleName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v18];
  }

  phoneticMiddleName = [self phoneticMiddleName];
  v20 = [phoneticMiddleName length];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D1C0B8]);
    phoneticMiddleName2 = [self phoneticMiddleName];
    v23 = [v21 initWithName:phoneticMiddleName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v23];
  }

  familyName = [self familyName];
  v25 = [familyName length];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D1C0B8]);
    familyName2 = [self familyName];
    v28 = [v26 initWithName:familyName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v28];
  }

  phoneticFamilyName = [self phoneticFamilyName];
  v30 = [phoneticFamilyName length];

  if (v30)
  {
    v31 = objc_alloc(MEMORY[0x277D1C0B8]);
    phoneticFamilyName2 = [self phoneticFamilyName];
    v33 = [v31 initWithName:phoneticFamilyName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v33];
  }

  previousFamilyName = [self previousFamilyName];
  v35 = [previousFamilyName length];

  if (v35)
  {
    v36 = objc_alloc(MEMORY[0x277D1C0B8]);
    previousFamilyName2 = [self previousFamilyName];
    v38 = [v36 initWithName:previousFamilyName2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v38];
  }

  nickname = [self nickname];
  v40 = [nickname length];

  if (v40)
  {
    v41 = objc_alloc(MEMORY[0x277D1C0B8]);
    nickname2 = [self nickname];
    v43 = [v41 initWithName:nickname2 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v43];
  }

  personNameComponents = [self personNameComponents];
  if (personNameComponents)
  {
    v45 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:personNameComponents style:2 options:0];
    v46 = [objc_alloc(MEMORY[0x277D1C0B8]) initWithName:v45 data:{objc_msgSend(self, "identifier")}];
    [v47 addObject:v46];
  }
}

@end