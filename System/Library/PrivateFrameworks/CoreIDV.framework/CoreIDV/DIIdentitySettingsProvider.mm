@interface DIIdentitySettingsProvider
- (BOOL)isDocumentProviderExtensionEnabledFor:(id)for;
- (void)setDocumentProviderExtensionEnablementFor:(id)for to:(BOOL)to;
- (void)showDocumentProviderExtensionFor:(NSString *)for completion:(id)completion;
@end

@implementation DIIdentitySettingsProvider

- (void)showDocumentProviderExtensionFor:(NSString *)for completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21CD83D74();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21CD8EF48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21CD8E390;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_21CD01F00(0, 0, v9, &unk_21CD8E280, v14);
}

- (BOOL)isDocumentProviderExtensionEnabledFor:(id)for
{
  v4 = sub_21CD83B24();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_21CD00C40(v4, v6);

  return v4 & 1;
}

- (void)setDocumentProviderExtensionEnablementFor:(id)for to:(BOOL)to
{
  v6 = sub_21CD83B24();
  v8 = v7;
  selfCopy = self;
  sub_21CD00E98(v6, v8, to);
}

@end