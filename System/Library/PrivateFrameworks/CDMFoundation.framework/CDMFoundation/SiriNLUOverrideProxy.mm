@interface SiriNLUOverrideProxy
- (BOOL)isOverrideStoreValid;
- (id)matchWithInputs:(id)inputs overrideNamespace:(int)namespace;
- (id)matchWithInputs:(id)inputs shouldAppend:(BOOL *)append;
- (void)preheatWithLanguageCode:(id)code;
@end

@implementation SiriNLUOverrideProxy

- (id)matchWithInputs:(id)inputs shouldAppend:(BOOL *)append
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  v6 = sub_1DC517A1C();
  selfCopy = self;
  sub_1DC2C1648(v6, append);

  sub_1DC298C74(0, &qword_1ECC7B948, 0x1E69D1240);
  v8 = sub_1DC517A0C();

  return v8;
}

- (void)preheatWithLanguageCode:(id)code
{
  v4 = sub_1DC51772C();
  v6 = v5;
  selfCopy = self;
  sub_1DC2C5CD4(v4, v6);
}

- (BOOL)isOverrideStoreValid
{
  selfCopy = self;
  v10 = sub_1DC401068(selfCopy, v3, v4, v5, v6, v7, v8, v9);

  return v10 & 1;
}

- (id)matchWithInputs:(id)inputs overrideNamespace:(int)namespace
{
  sub_1DC298C74(0, &qword_1EDAC7F98, 0x1E69D1338);
  v6 = sub_1DC517A1C();
  selfCopy = self;
  v8 = sub_1DC4014C8(v6, namespace);

  return v8;
}

@end