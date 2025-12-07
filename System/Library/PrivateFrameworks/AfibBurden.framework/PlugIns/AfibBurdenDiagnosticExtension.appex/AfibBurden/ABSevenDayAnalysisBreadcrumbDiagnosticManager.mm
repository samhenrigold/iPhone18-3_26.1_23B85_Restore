@interface ABSevenDayAnalysisBreadcrumbDiagnosticManager
- (ABSevenDayAnalysisBreadcrumbDiagnosticManager)initWithLoggingDirectoryPath:(id)path control:(id)control;
- (id)extractDiagnosticContent;
@end

@implementation ABSevenDayAnalysisBreadcrumbDiagnosticManager

- (ABSevenDayAnalysisBreadcrumbDiagnosticManager)initWithLoggingDirectoryPath:(id)path control:(id)control
{
  controlCopy = control;
  v11.receiver = self;
  v11.super_class = ABSevenDayAnalysisBreadcrumbDiagnosticManager;
  v8 = [(ABDiagnosticManager *)&v11 initWithDiagnosticName:@"SevenDayAnalysisBreadcrumb" loggingDirectoryPath:path];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_control, control);
  }

  return v9;
}

- (id)extractDiagnosticContent
{
  v3 = ab_get_framework_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Starting seven day analysis breadcrumb extraction", buf, 0xCu);
  }

  control = self->_control;
  v11 = 0;
  v5 = [(HKHRAFibBurdenControl *)control fetchSevenDayAnalysisBreadcrumbsWithError:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = HKHRPrettyPrintedAFibBurdenSevenDayAnalysisBreadcrumbs();
  }

  else
  {
    v9 = ab_get_framework_log(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Seven day analysis breadcrumb extraction failed with error %@", buf, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

@end