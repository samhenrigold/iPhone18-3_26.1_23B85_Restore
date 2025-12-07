@interface PHSOSAlertController
+ (void)playSOSEntryHaptic;
- (void)playAlertWithAudio:(BOOL)audio alertTopic:(id)topic;
- (void)stopAlert;
@end

@implementation PHSOSAlertController

+ (void)playSOSEntryHaptic
{
  v3 = [[TLAlertConfiguration alloc] initWithType:22];
  [v3 setTopic:TLAlertTopicSOSButtonChordingTimeout];
  v2 = [TLAlert alertWithConfiguration:v3];
  [v2 play];
}

- (void)playAlertWithAudio:(BOOL)audio alertTopic:(id)topic
{
  audioCopy = audio;
  topicCopy = topic;
  if ([(PHSOSAlertController *)self playingWithAudio]!= audioCopy)
  {
    [(PHSOSAlertController *)self setPlayingWithAudio:audioCopy];
    [(PHSOSAlertController *)self stopAlert];
  }

  v7 = [SOSUtilities BOOLOverrideForDefaultsKey:@"debug.countdown.subtle" defaultValue:0];
  v8 = v7;
  if (v7)
  {
    v9 = 22;
    if ([(PHSOSAlertController *)self playingWithAudio]&& TLAlertTopicSOSCountdownTick == topicCopy)
    {
      v10 = TLAlertTopicIncomingCallFaceTimeParticipantJoined;

      v9 = 1;
      topicCopy = v10;
    }
  }

  else
  {
    v9 = 22;
  }

  alertConfiguration = [(PHSOSAlertController *)self alertConfiguration];
  if (!alertConfiguration || (v12 = alertConfiguration, -[PHSOSAlertController alertConfiguration](self, "alertConfiguration"), v13 = objc_claimAutoreleasedReturnValue(), [v13 topic], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v14 != topicCopy))
  {
    v15 = [[TLAlertConfiguration alloc] initWithType:v9];
    [v15 setTopic:topicCopy];
    if (topicCopy == TLAlertTopicSOSCountdownTick)
    {
      [v15 setMaximumDuration:0.850000024];
    }

    if (![(PHSOSAlertController *)self playingWithAudio])
    {
      [v15 setToneIdentifier:TLToneIdentifierNone];
    }

    [(PHSOSAlertController *)self setAlertConfiguration:v15];
  }

  alertConfiguration2 = [(PHSOSAlertController *)self alertConfiguration];
  v17 = [TLAlert alertWithConfiguration:alertConfiguration2];

  [(PHSOSAlertController *)self setAlert:v17];
  alertActivationAssertion = [(PHSOSAlertController *)self alertActivationAssertion];
  v19 = alertActivationAssertion;
  if (!alertActivationAssertion && topicCopy != TLAlertTopicSOSButtonChordingTimeout)
  {
    if (v8)
    {
      goto LABEL_20;
    }

    v19 = [[TLAlertActivationAssertion alloc] initWithAlert:v17];
    [v19 acquire];
    [(PHSOSAlertController *)self setAlertActivationAssertion:v19];
  }

LABEL_20:
  v20 = sub_100004F84(alertActivationAssertion);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    alertConfiguration3 = [(PHSOSAlertController *)self alertConfiguration];
    v23 = 138412290;
    v24 = alertConfiguration3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Playing countdown alert sound with alertConfiguration: %@", &v23, 0xCu);
  }

  alert = [(PHSOSAlertController *)self alert];
  [alert play];
}

- (void)stopAlert
{
  alert = [(PHSOSAlertController *)self alert];

  if (alert)
  {
    v5 = sub_100004F84(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping countdown alert sound...", buf, 2u);
    }

    alert2 = [(PHSOSAlertController *)self alert];
    [alert2 stop];
  }

  alertActivationAssertion = [(PHSOSAlertController *)self alertActivationAssertion];

  if (alertActivationAssertion)
  {
    v9 = sub_100004F84(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Relinquishing alert activation assertion...", v12, 2u);
    }

    alertActivationAssertion2 = [(PHSOSAlertController *)self alertActivationAssertion];
    [alertActivationAssertion2 relinquish];

    [(PHSOSAlertController *)self setAlertActivationAssertion:0];
  }

  alertConfiguration = [(PHSOSAlertController *)self alertConfiguration];

  if (alertConfiguration)
  {
    [(PHSOSAlertController *)self setAlertConfiguration:0];
  }
}

@end