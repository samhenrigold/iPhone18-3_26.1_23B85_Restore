@interface HKGAD7Assessment(HDCodingSupport)
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableScoredAssessment)codableRepresentationForSync;
@end

@implementation HKGAD7Assessment(HDCodingSupport)

- (HDCodableScoredAssessment)codableRepresentationForSync
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableScoredAssessment);
  v11.receiver = self;
  v11.super_class = &off_283D453A0;
  v3 = objc_msgSendSuper2(&v11, sel_codableRepresentationForSync);
  [(HDCodableScoredAssessment *)v2 setSample:v3];

  -[HDCodableScoredAssessment setScore:](v2, "setScore:", [self score]);
  v4 = MEMORY[0x277CCAAB0];
  answers = [self answers];
  v10 = 0;
  v6 = [v4 archivedDataWithRootObject:answers requiringSecureCoding:1 error:&v10];
  v7 = v10;

  if (!v6)
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Error archiving answers: %@", buf, 0xCu);
    }
  }

  [(HDCodableScoredAssessment *)v2 setAnswers:v6];
  -[HDCodableScoredAssessment setRisk:](v2, "setRisk:", [self risk]);

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  codableRepresentationForSync = [self codableRepresentationForSync];
  if (codableRepresentationForSync)
  {
    [v4 addScoredAssessmentSamples:codableRepresentationForSync];
  }

  return codableRepresentationForSync != 0;
}

@end