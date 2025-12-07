@interface AudioAnalyticsHWTraceHandleWrapper
- (AudioAnalyticsHWTraceHandleWrapper)initWithSessionID:(unsigned int)d;
- (BOOL)pause;
- (void)dealloc;
- (void)pause;
@end

@implementation AudioAnalyticsHWTraceHandleWrapper

- (AudioAnalyticsHWTraceHandleWrapper)initWithSessionID:(unsigned int)d
{
  v3 = *&d;
  v9.receiver = self;
  v9.super_class = AudioAnalyticsHWTraceHandleWrapper;
  v4 = [(AudioAnalyticsHWTraceHandleWrapper *)&v9 init];
  if (!v4)
  {
    goto LABEL_11;
  }

  if (!libtailspinLibraryCore(0) || !libtailspinLibraryCore(0) || !gettailspin_get_cputrace_handleSymbolLoc() || !libtailspinLibraryCore(0) || !gettailspin_cputrace_handle_deinitSymbolLoc() || !libtailspinLibraryCore(0) || !gettailspin_pause_cputraceSymbolLoc())
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  cputrace_handleSymbolLoc = gettailspin_get_cputrace_handleSymbolLoc();
  if (cputrace_handleSymbolLoc)
  {
    [(AudioAnalyticsHWTraceHandleWrapper *)v4 setHandle:cputrace_handleSymbolLoc(v3)];
    if ([(AudioAnalyticsHWTraceHandleWrapper *)v4 handle])
    {
LABEL_11:
      v6 = v4;
LABEL_13:

      return v6;
    }

    goto LABEL_12;
  }

  v8 = dlerror();
  result = abort_report_np("%s", v8);
  __break(1u);
  return result;
}

- (void)dealloc
{
  handle = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v4 = gettailspin_cputrace_handle_deinitSymbolLoc();
  if (v4)
  {
    v4(handle);
    v6.receiver = self;
    v6.super_class = AudioAnalyticsHWTraceHandleWrapper;
    [(AudioAnalyticsHWTraceHandleWrapper *)&v6 dealloc];
  }

  else
  {
    v5 = dlerror();
    abort_report_np("%s", v5);
    __break(1u);
  }
}

- (BOOL)pause
{
  handle = [(AudioAnalyticsHWTraceHandleWrapper *)self handle];
  v3 = gettailspin_pause_cputraceSymbolLoc();
  if (!v3)
  {
    [AudioAnalyticsHWTraceHandleWrapper pause];
  }

  return v3(handle);
}

- (void)pause
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  sub_1C0BEBF28();
}

@end