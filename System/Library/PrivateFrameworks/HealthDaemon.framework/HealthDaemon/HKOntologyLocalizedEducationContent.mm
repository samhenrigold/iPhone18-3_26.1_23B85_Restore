@interface HKOntologyLocalizedEducationContent
@end

@implementation HKOntologyLocalizedEducationContent

id __72__HKOntologyLocalizedEducationContent_HDSyncSupport__createWithCodable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = [v2 sectionType];
  v5 = [v2 sectionDatas];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke;
  v10[3] = &__block_descriptor_40_e30__16__0__HDCodableSectionData_8l;
  v10[4] = v3;
  v6 = [v5 hk_map:v10];

  v7 = [v6 hk_mapToDictionary:&__block_literal_global_387];
  v8 = [objc_alloc(MEMORY[0x277CCD758]) initWithSectionDataTypeMapping:v7 sectionType:v4];

  return v8;
}

id __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc(MEMORY[0x277CCD748]);
  v4 = [v2 stringValues];
  v5 = [v2 sectionDataType];
  v6 = [v2 version];
  [v2 timestamp];
  v8 = v7;
  v9 = [v2 deleted];

  v10 = [v3 initWithStringValues:v4 sectionDataType:v5 version:v6 timestamp:v9 deleted:v8];

  return v10;
}

void __80__HKOntologyLocalizedEducationContent_HDSyncSupport___createSectionWithCodable___block_invoke_2(uint64_t a1, void *a2, void (**a3)(void, void, void))
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 numberWithLongLong:{objc_msgSend(v7, "sectionDataType")}];
  (a3)[2](v6, v8, v7);
}

@end