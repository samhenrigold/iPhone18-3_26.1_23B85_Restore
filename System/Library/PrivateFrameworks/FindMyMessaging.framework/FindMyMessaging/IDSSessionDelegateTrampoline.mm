@interface IDSSessionDelegateTrampoline
- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)sessionStarted:(id)started;
@end

@implementation IDSSessionDelegateTrampoline

- (void)sessionStarted:(id)started
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D10, &qword_24AF394A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v9 = xmmword_24AF39200;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  sub_24AF355CC();

  (*(v5 + 8))(v7, v4);
}

- (void)sessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D10, &qword_24AF394A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - v10;
  v14[0] = reason;
  v14[1] = error;
  errorCopy = error;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC0D18, &qword_24AF394B0);
  sub_24AF355CC();

  (*(v9 + 8))(v11, v8);
}

@end