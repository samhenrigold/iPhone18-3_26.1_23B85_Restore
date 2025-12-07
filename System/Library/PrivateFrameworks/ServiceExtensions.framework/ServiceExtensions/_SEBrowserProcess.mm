@interface _SEBrowserProcess
+ ($115C4C562B26FF47E01F9F4EA65B5887)_currentAuditToken;
+ (BOOL)checkBrowserEngineEntitlementForAuditToken:(id *)token;
+ (BOOL)checkBrowserEngineEntitlementForCurrentProcess;
- (_SEBrowserProcess)init;
@end

@implementation _SEBrowserProcess

+ ($115C4C562B26FF47E01F9F4EA65B5887)_currentAuditToken
{
  v4 = sub_265750048();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265750038();
  v8 = sub_265750028();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = HIDWORD(v8);
  v17 = HIDWORD(v10);
  v21 = HIDWORD(v12);
  v22 = HIDWORD(v14);
  result = (*(v5 + 8))(v7, v4);
  retstr->var0[0] = v9;
  retstr->var0[1] = v16;
  retstr->var0[2] = v11;
  retstr->var0[3] = v17;
  v20 = v21;
  v19 = v22;
  retstr->var0[4] = v13;
  retstr->var0[5] = v20;
  retstr->var0[6] = v15;
  retstr->var0[7] = v19;
  return result;
}

- (_SEBrowserProcess)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (BOOL)checkBrowserEngineEntitlementForCurrentProcess
{
  v2 = sub_265750068();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265750048();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  sub_265750038();
  (*(v3 + 104))(v5, *MEMORY[0x277D4D3A8], v2);
  v13 = sub_265750008();
  (*(v3 + 8))(v5, v2);
  if (v13)
  {
    (*(v7 + 32))(v12, v9, v6);
    v14 = 0;
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v14 = 1;
  }

  v15 = type metadata accessor for _BrowserProcess(0);
  (*(*(v15 - 8) + 56))(v12, v14, 1, v15);
  sub_265747058(v12);
  return v13 & 1;
}

+ (BOOL)checkBrowserEngineEntitlementForAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  v4 = *&token->var0[6];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001C270, &qword_265751960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  _BrowserProcess.init(auditToken:)(v3, v4, &v10[-v6]);
  v8 = type metadata accessor for _BrowserProcess(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_265747058(v7);
  return 1;
}

@end