@interface CSVoiceTriggerRTModelRequestOptionsMutable
- (void)setCSCoreSpeechServicesAccessoryInfo:(id)info;
@end

@implementation CSVoiceTriggerRTModelRequestOptionsMutable

- (void)setCSCoreSpeechServicesAccessoryInfo:(id)info
{
  self->_mAccessoryInfo = [info copy];

  _objc_release_x1();
}

@end