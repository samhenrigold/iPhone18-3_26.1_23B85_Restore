@interface IFImage(GenerationReport)
- (void)setGenerationReport:()GenerationReport;
@end

@implementation IFImage(GenerationReport)

- (void)setGenerationReport:()GenerationReport
{
  v4 = a3;
  generationReport = [self generationReport];

  if (v4 && generationReport)
  {
    v7 = _ISDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [IFImage(GenerationReport) setGenerationReport:v7];
    }
  }

  else
  {
    objc_setAssociatedObject(self, &_ISImageGenerationReportKey, v4, 1);
  }
}

@end