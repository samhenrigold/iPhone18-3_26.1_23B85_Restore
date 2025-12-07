@interface HDDatabasePruningShow
+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error;
+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)error;
+ (id)deletedSampleDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only referenceDate:(id)date sampleUUID:(id)d error:(id *)error;
+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error;
+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)self0;
+ (id)showWithProfile:(id)profile deletedSamplesOnly:(BOOL)only referenceDate:(id)date error:(id *)error;
- (HDDatabasePruningShow)init;
@end

@implementation HDDatabasePruningShow

+ (id)showWithProfile:(id)profile deletedSamplesOnly:(BOOL)only referenceDate:(id)date error:(id *)error
{
  onlyCopy = only;
  v8 = sub_22911B88C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v13 = sub_2289FF154(profileCopy, onlyCopy, v11);
  v15 = v14;
  (*(v9 + 8))(v11, v8);

  v16 = sub_22911B80C();
  sub_2289BCF3C(v13, v15);

  return v16;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error
{
  v10 = sub_22911B88C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v15 = sub_2289FFF34(profileCopy, v13, anchor, limit);
  v17 = v16;
  (*(v11 + 8))(v13, v10);

  v18 = sub_22911B80C();
  sub_2289BCF3C(v15, v17);

  return v18;
}

+ (id)classifiedDeletedSampleInfoWithProfile:(id)profile referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)error
{
  errorCopy = error;
  profileCopy = profile;
  limitCopy = limit;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &errorCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &errorCopy - v14;
  v16 = sub_22911B88C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &errorCopy - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &errorCopy - v21;
  sub_22911B86C();
  if (after)
  {
    sub_22911B86C();
    (*(v17 + 32))(v15, v20, v16);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = *(v17 + 56);
  v25 = 1;
  v24(v15, v23, 1, v16);
  if (before)
  {
    sub_22911B86C();
    (*(v17 + 32))(v13, v20, v16);
    v25 = 0;
  }

  v24(v13, v25, 1, v16);
  v26 = profileCopy;
  v27 = sub_228A00458(v26, v22, v15, v13, limitCopy);
  v29 = v28;

  v30 = MEMORY[0x277CC9578];
  sub_228A03EB8(v13, &qword_27D862B48, MEMORY[0x277CC9578]);
  sub_228A03EB8(v15, &qword_27D862B48, v30);
  (*(v17 + 8))(v22, v16);
  v31 = sub_22911B80C();
  sub_2289BCF3C(v27, v29);

  return v31;
}

+ (id)deletedSampleDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only referenceDate:(id)date sampleUUID:(id)d error:(id *)error
{
  v23[0] = error;
  onlyCopy = only;
  v9 = sub_22911B8DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22911B88C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  sub_22911B8CC();
  profileCopy = profile;
  v18 = sub_228A00A1C(profileCopy, onlyCopy, v16, v12);
  v20 = v19;

  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v21 = sub_22911B80C();
  sub_2289BCF3C(v18, v20);

  return v21;
}

+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date anchor:(int64_t)anchor limit:(int64_t)limit error:(id *)error
{
  outcomesOnlyCopy = outcomesOnly;
  onlyCopy = only;
  v14 = sub_22911B88C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22911B86C();
  profileCopy = profile;
  v19 = sub_228A01894(profileCopy, onlyCopy, outcomesOnlyCopy, v17, anchor, limit);
  v20 = v17;
  v22 = v21;
  (*(v15 + 8))(v20, v14);

  v23 = sub_22911B80C();
  sub_2289BCF3C(v19, v22);

  return v23;
}

+ (id)deletedSamplesDetailWithProfile:(id)profile matchingPredicatesOnly:(BOOL)only samplesWithDifferentPruningOutcomesOnly:(BOOL)outcomesOnly referenceDate:(id)date createdOnOrAfter:(id)after createdBefore:(id)before limit:(int64_t)limit error:(id *)self0
{
  outcomesOnlyCopy = outcomesOnly;
  onlyCopy = only;
  errorCopy = error;
  profileCopy = profile;
  limitCopy = limit;
  sub_228A009B8(0, &qword_27D862B48, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &errorCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &errorCopy - v16;
  v18 = sub_22911B88C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &errorCopy - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &errorCopy - v23;
  sub_22911B86C();
  if (after)
  {
    sub_22911B86C();
    (*(v19 + 32))(v17, v22, v18);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = *(v19 + 56);
  v27 = 1;
  v26(v17, v25, 1, v18);
  if (before)
  {
    sub_22911B86C();
    (*(v19 + 32))(v15, v22, v18);
    v27 = 0;
  }

  v26(v15, v27, 1, v18);
  v28 = profileCopy;
  v29 = sub_228A02588(v28, onlyCopy, outcomesOnlyCopy, v24, v17, v15, limitCopy);
  v31 = v30;

  v32 = MEMORY[0x277CC9578];
  sub_228A03EB8(v15, &qword_27D862B48, MEMORY[0x277CC9578]);
  sub_228A03EB8(v17, &qword_27D862B48, v32);
  (*(v19 + 8))(v24, v18);
  v33 = sub_22911B80C();
  sub_2289BCF3C(v29, v31);

  return v33;
}

- (HDDatabasePruningShow)init
{
  v3.receiver = self;
  v3.super_class = HDDatabasePruningShow;
  return [(HDDatabasePruningShow *)&v3 init];
}

@end