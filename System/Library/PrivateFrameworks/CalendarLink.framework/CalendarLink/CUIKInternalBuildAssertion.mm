@interface CUIKInternalBuildAssertion
+ (void)loadCalendarLinkAppleInternal;
@end

@implementation CUIKInternalBuildAssertion

+ (void)loadCalendarLinkAppleInternal
{
  if (!CalendarLinkAppleInternalLibraryCore_frameworkLibrary)
  {
    CalendarLinkAppleInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }
}

@end