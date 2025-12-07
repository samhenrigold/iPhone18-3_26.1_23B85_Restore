@interface GQPBGProcessor
- (BOOL)go;
- (GQPBGProcessor)initWithURL:(__CFURL *)l indexFileName:(id)name outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper generator:(Class)generator zipArchive:(id)self0 cryptoKey:(id)self1;
- (GQPBGProcessor)initWithURL:(__CFURL *)l zipArchive:(id)archive indexFileName:(id)name outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper generator:(Class)self0 cryptoKey:(id)self1;
@end

@implementation GQPBGProcessor

- (GQPBGProcessor)initWithURL:(__CFURL *)l indexFileName:(id)name outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper generator:(Class)generator zipArchive:(id)self0 cryptoKey:(id)self1
{
  v13 = *&type;
  v21.receiver = self;
  v21.super_class = GQPBGProcessor;
  v15 = [(GQPProcessor *)&v21 initWithPath:[(__CFURL *)l path] indexFileName:name previewRequest:request cryptoKey:key];
  v16 = v15;
  if (v15)
  {
    v15->mGenerator = generator;
    v17 = objc_alloc_init(GQDBGPresentation);
    v18 = [GQUOutputBundleFactory createOutputBundleForType:v13 outputPath:path progressiveHelper:helper];
    v19 = [[GQSDocument alloc] initWithRoot:v17 processor:v16 bundleUrl:l archive:archive outputBundle:v18];
    v16->super.mDocumentState = v19;
    [(GQSDocument *)v19 pushObject:v17];
  }

  return v16;
}

- (GQPBGProcessor)initWithURL:(__CFURL *)l zipArchive:(id)archive indexFileName:(id)name outputType:(int)type outputPath:(__CFString *)path previewRequest:(__QLPreviewRequest *)request progressiveHelper:(id)helper generator:(Class)self0 cryptoKey:(id)self1
{
  v12 = *&type;
  v21.receiver = self;
  v21.super_class = GQPBGProcessor;
  v15 = [(GQPProcessor *)&v21 initWithZipArchive:archive indexFileName:name previewRequest:request cryptoKey:key];
  v16 = v15;
  if (v15)
  {
    v15->mGenerator = generator;
    v17 = objc_alloc_init(GQDBGPresentation);
    v18 = [GQUOutputBundleFactory createOutputBundleForType:v12 outputPath:path progressiveHelper:helper];
    v19 = [[GQSDocument alloc] initWithRoot:v17 processor:v16 archive:archive outputBundle:v18 fileURL:l];
    v16->super.mDocumentState = v19;
    [(GQSDocument *)v19 pushObject:v17];
  }

  return v16;
}

- (BOOL)go
{
  v8.receiver = self;
  v8.super_class = GQPBGProcessor;
  v3 = [(GQPProcessor *)&v8 go];
  if (self->mGenerator)
  {
    generatorBeginWasCalled = [(GQSDocument *)self->super.mDocumentState generatorBeginWasCalled];
    if ((generatorBeginWasCalled & v3) == 1)
    {
      v5 = [(objc_class *)self->mGenerator endPresentation:[(GQSDocument *)self->super.mDocumentState root] state:self->super.mDocumentState];
      if (!v5)
      {
        return v5;
      }

      goto LABEL_7;
    }

    v3 &= generatorBeginWasCalled ^ 1;
  }

  if (!v3)
  {
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_7:
  if (self->super.mOutputPreviewRequest && (v6 = [(GQSDocument *)self->super.mDocumentState outputBundle], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    LOBYTE(v5) = [v6 giveOutputToPreviewRequest:self->super.mOutputPreviewRequest];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

@end