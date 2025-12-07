@interface CARSignpostManager
+ (void)emitLaunched;
- (void)_emitFinalizedIfNeeded;
- (void)emitInstantOnIfNeeded;
- (void)emitRenderedIfNeeded;
@end

@implementation CARSignpostManager

+ (void)emitLaunched
{
  v2 = CAFSignpostEmit_Launched();
  v3 = sub_10001C784(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] Launched signpost emitted", v4, 2u);
  }
}

- (void)emitInstantOnIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedInstantOnSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedInstantOnSignpost:1];
    v3 = CAFSignpostEmit_InstantOn();
    v4 = sub_10001C784(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] InstantOn signpost emitted", v5, 2u);
    }
  }

  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost]&& [(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    if ([(CARSignpostManager *)self hasEmittedInstantOnSignpost])
    {
      [(CARSignpostManager *)self _emitFinalizedIfNeeded];
    }
  }
}

- (void)emitRenderedIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedRenderedSignpost:1];
    v3 = CAFSignpostEmit_Rendered();
    v4 = sub_10001C784(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] Rendered signpost emitted", v5, 2u);
    }
  }

  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost]&& [(CARSignpostManager *)self hasEmittedRenderedSignpost])
  {
    if ([(CARSignpostManager *)self hasEmittedInstantOnSignpost])
    {
      [(CARSignpostManager *)self _emitFinalizedIfNeeded];
    }
  }
}

- (void)_emitFinalizedIfNeeded
{
  if (![(CARSignpostManager *)self hasEmittedFinalizedSignpost])
  {
    [(CARSignpostManager *)self setHasEmittedFinalizedSignpost:1];
    v3 = CAFSignpostEmit_Finalized();
    v4 = sub_10001C784(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] Finalized signpost emitted", v5, 2u);
    }
  }
}

@end