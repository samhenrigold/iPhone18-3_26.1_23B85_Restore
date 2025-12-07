@interface CSOtherAppRecordingStateMonitorFactory
+ (id)otherAppRecordingStateMonitor;
@end

@implementation CSOtherAppRecordingStateMonitorFactory

+ (id)otherAppRecordingStateMonitor
{
  v12 = *MEMORY[0x1E69E9840];
  if (otherAppRecordingStateMonitor_onceToken != -1)
  {
    dispatch_once(&otherAppRecordingStateMonitor_onceToken, &__block_literal_global_2590);
  }

  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v8 = 136315394;
    v9 = "+[CSOtherAppRecordingStateMonitorFactory otherAppRecordingStateMonitor]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_INFO, "%s Using otherAppRecordingMonitor impl type: %@", &v8, 0x16u);
  }

  v6 = otherAppRecordingStateMonitor_otherAppRecordingStateMonior;

  return v6;
}

uint64_t __71__CSOtherAppRecordingStateMonitorFactory_otherAppRecordingStateMonitor__block_invoke()
{
  if (+[CSOtherAppRecordingStateMonitorFactory _isSystemStatusSupported])
  {
    +[CSOtherAppRecordingStateMonitorFactory _otherAppRecordingStateMonitorImpMicAttribution];
  }

  else
  {
    +[CSOtherAppRecordingStateMonitorFactory _otherAppRecordingStateMonitor];
  }
  v0 = ;
  v1 = otherAppRecordingStateMonitor_otherAppRecordingStateMonior;
  otherAppRecordingStateMonitor_otherAppRecordingStateMonior = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end