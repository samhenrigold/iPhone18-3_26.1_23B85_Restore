@interface FPDiagnosticSignatures
+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)string error:(id)error direction:(id)direction jobCode:(id)code underlying:(id)underlying;
+ (id)validateJSONSignaturesWithJsonString:(id)string;
- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init;
@end

@implementation FPDiagnosticSignatures

+ (id)validateJSONSignaturesWithJsonString:(id)string
{
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;
  v6 = _s18FileProviderDaemon22FPDiagnosticSignaturesC22validateJSONSignatures10jsonStringSaySSGSS_tFZ_0(v3, v4);
  v5, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1CF9E6D28();
  v6, v15, v16, v17, v18, v19, v20, v21;

  return v14;
}

+ (BOOL)isErrorMatchingSignaturesWithJsonString:(id)string error:(id)error direction:(id)direction jobCode:(id)code underlying:(id)underlying
{
  v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v12;
  errorCopy = error;
  directionCopy = direction;
  codeCopy = code;
  underlyingCopy = underlying;
  _s18FileProviderDaemon22FPDiagnosticSignaturesC015isErrorMatchingE010jsonString5error9direction7jobCode10underlyingSbSS_So7NSErrorCSo8NSNumberCSgA2NtFZ_0(v11, v13, errorCopy, direction, code, underlying);
  LOBYTE(underlying) = v18;

  v13, v19, v20, v21, v22, v23, v24, v25;
  return underlying & 1;
}

- (_TtC18FileProviderDaemon22FPDiagnosticSignatures)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FPDiagnosticSignatures();
  return [(FPDiagnosticSignatures *)&v3 init];
}

@end