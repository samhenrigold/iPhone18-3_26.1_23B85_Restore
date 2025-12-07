@interface LSDRebuildService
@end

@implementation LSDRebuildService

void __34___LSDRebuildService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA31E0];
  v3 = +[_LSDRebuildService XPCInterface]::result;
  +[_LSDRebuildService XPCInterface]::result = v2;

  v5 = +[_LSDRebuildService XPCInterface]::result;
  if (+[_LSDRebuildService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDRebuildService.mm", 44, @"Failed to create XPC interface object."), v13, (v5 = +[_LSDRebuildService XPCInterface]::result) != 0))
  {
    v6 = XNSGetPropertyListClasses(v4);
    [v5 setClasses:v6 forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:0 ofReply:0];

    v7 = +[_LSDRebuildService XPCInterface]::result;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [v7 setClasses:v10 forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDRebuildService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performRebuildRegistration_personaUniqueStrings_reply_ argumentIndex:0 ofReply:1];
    v11 = +[_LSDRebuildService XPCInterface]::result;
    v12 = objc_opt_class();

    [v11 setClass:v12 forSelector:sel_noteMigratorRunningWithReply_ argumentIndex:0 ofReply:1];
  }
}

@end