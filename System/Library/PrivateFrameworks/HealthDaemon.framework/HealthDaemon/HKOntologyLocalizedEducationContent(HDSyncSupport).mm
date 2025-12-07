@interface HKOntologyLocalizedEducationContent(HDSyncSupport)
+ (id)createWithCodable:()HDSyncSupport;
- (HDCodableOntologyLocalizedEducationContent)codableRepresentationForSync;
@end

@implementation HKOntologyLocalizedEducationContent(HDSyncSupport)

- (HDCodableOntologyLocalizedEducationContent)codableRepresentationForSync
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableOntologyLocalizedEducationContent);
  -[HDCodableOntologyLocalizedEducationContent setVersion:](v2, "setVersion:", [self version]);
  [self timestamp];
  [(HDCodableOntologyLocalizedEducationContent *)v2 setTimestamp:?];
  v22 = v2;
  -[HDCodableOntologyLocalizedEducationContent setDeleted:](v2, "setDeleted:", [self isDeleted]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  obj = [self sections];
  v23 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v23)
  {
    v20 = *v28;
    do
    {
      v3 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v27 + 1) + 8 * v3);
        if (selfCopy)
        {
          v25 = v3;
          v5 = objc_alloc_init(HDCodableOntologyLocalizedEducationContentSection);
          -[HDCodableOntologyLocalizedEducationContentSection setSectionType:](v5, "setSectionType:", [v4 sectionType]);
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v24 = v4;
          sectionData = [v4 sectionData];
          v6 = [sectionData countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v32;
            do
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v32 != v8)
                {
                  objc_enumerationMutation(sectionData);
                }

                v10 = *(*(&v31 + 1) + 8 * i);
                v11 = objc_alloc_init(HDCodableSectionData);
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v38 = 0u;
                stringValues = [v10 stringValues];
                v13 = [stringValues countByEnumeratingWithState:&v35 objects:v41 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v36;
                  do
                  {
                    for (j = 0; j != v14; ++j)
                    {
                      if (*v36 != v15)
                      {
                        objc_enumerationMutation(stringValues);
                      }

                      [(HDCodableSectionData *)v11 addStringValues:*(*(&v35 + 1) + 8 * j)];
                    }

                    v14 = [stringValues countByEnumeratingWithState:&v35 objects:v41 count:16];
                  }

                  while (v14);
                }

                -[HDCodableSectionData setSectionDataType:](v11, "setSectionDataType:", [v10 sectionDataType]);
                -[HDCodableSectionData setVersion:](v11, "setVersion:", [v10 version]);
                [v10 timestamp];
                [(HDCodableSectionData *)v11 setTimestamp:?];
                -[HDCodableSectionData setDeleted:](v11, "setDeleted:", [v10 deleted]);

                [(HDCodableOntologyLocalizedEducationContentSection *)v5 addSectionData:v11];
              }

              v7 = [sectionData countByEnumeratingWithState:&v31 objects:v40 count:16];
            }

            while (v7);
          }

          v4 = v24;
          v3 = v25;
        }

        else
        {
          v5 = 0;
        }

        [(HDCodableOntologyLocalizedEducationContent *)v22 addSections:v5];
        ++v3;
      }

      while (v3 != v23);
      v17 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      v23 = v17;
    }

    while (v17);
  }

  return v22;
}

+ (id)createWithCodable:()HDSyncSupport
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    sections = [v4 sections];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__HKOntologyLocalizedEducationContent_HDSyncSupport__createWithCodable___block_invoke;
    v13[3] = &__block_descriptor_40_e59__16__0__HDCodableOntologyLocalizedEducationContentSection_8l;
    v13[4] = self;
    v6 = [sections hk_map:v13];

    v7 = objc_alloc(MEMORY[0x277CCD750]);
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }

    version = [v4 version];
    [v4 timestamp];
    v11 = [v7 initWithSections:v8 version:version timestamp:objc_msgSend(v4 deleted:{"deleted"), v10}];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end