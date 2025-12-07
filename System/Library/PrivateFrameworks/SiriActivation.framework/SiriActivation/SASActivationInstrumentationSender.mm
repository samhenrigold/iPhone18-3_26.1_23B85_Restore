@interface SASActivationInstrumentationSender
- (SASActivationInstrumentationSender)initWithAnalyticsStream:(id)stream;
- (id)_clientEventWithActivationEventIdentifier:(id)identifier;
- (void)instrumentActivationMessage:(id)message;
- (void)instrumentButtonInteractionType:(int)type buttonIdentifier:(id)identifier activationEventIdentifier:(id)eventIdentifier;
- (void)instrumentRequestLinkToUEIWithTurnId:(id)id activationEventIdentifier:(id)identifier;
- (void)instrumentTurnActivatedWithTurnId:(id)id activationEventIdentifier:(id)identifier;
@end

@implementation SASActivationInstrumentationSender

- (SASActivationInstrumentationSender)initWithAnalyticsStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = SASActivationInstrumentationSender;
  v6 = [(SASActivationInstrumentationSender *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_analyticsStream, stream);
  }

  return v7;
}

- (void)instrumentButtonInteractionType:(int)type buttonIdentifier:(id)identifier activationEventIdentifier:(id)eventIdentifier
{
  v6 = *&type;
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  eventIdentifierCopy = eventIdentifier;
  v10 = objc_alloc_init(MEMORY[0x1E69CE6D8]);
  [v10 setButtonInteractionType:v6];
  [v10 setButtonName:identifierCopy];
  v11 = [(SASActivationInstrumentationSender *)self _clientEventWithActivationEventIdentifier:eventIdentifierCopy];
  [v11 setButtonInteractionDetected:v10];
  v12 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    if ((v6 - 1) > 2)
    {
      v13 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E82F3578[(v6 - 1)];
    }

    v16 = 136315906;
    v17 = "[SASActivationInstrumentationSender instrumentButtonInteractionType:buttonIdentifier:activationEventIdentifier:]";
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = eventIdentifierCopy;
    v14 = v12;
    _os_log_impl(&dword_1C8137000, v14, OS_LOG_TYPE_DEFAULT, "%s #instrumentation %@, %@, identifier: %@", &v16, 0x2Au);
  }

  v15 = [[SASActivationInstrumentationMessage alloc] initWithEvent:v11 activationEventIdentifier:eventIdentifierCopy machAbsoluteTime:mach_absolute_time()];
  [(SASActivationInstrumentationSender *)self instrumentActivationMessage:v15];
}

- (void)instrumentTurnActivatedWithTurnId:(id)id activationEventIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  idCopy = id;
  identifierCopy = identifier;
  v8 = objc_alloc_init(MEMORY[0x1E69CE6F0]);
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:idCopy];
  [v8 setTurnId:v9];

  v10 = [(SASActivationInstrumentationSender *)self _clientEventWithActivationEventIdentifier:identifierCopy];
  [v10 setTurnActivated:v8];
  v11 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[SASActivationInstrumentationSender instrumentTurnActivatedWithTurnId:activationEventIdentifier:]";
    v15 = 2112;
    v16 = idCopy;
    v17 = 2112;
    v18 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v11, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Turn Id: %@, activationIdentifier: %@", &v13, 0x20u);
  }

  v12 = [[SASActivationInstrumentationMessage alloc] initWithEvent:v10 activationEventIdentifier:identifierCopy machAbsoluteTime:mach_absolute_time()];
  [(SASActivationInstrumentationSender *)self instrumentActivationMessage:v12];
}

- (void)instrumentRequestLinkToUEIWithTurnId:(id)id activationEventIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  idCopy = id;
  identifierCopy = identifier;
  v8 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  v9 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:identifierCopy];
  [v8 setUuid:v9];
  [v8 setComponent:34];
  v10 = objc_alloc_init(MEMORY[0x1E69CF5F8]);
  v11 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:idCopy];
  [v10 setUuid:v11];
  [v10 setComponent:2];
  v12 = objc_alloc_init(MEMORY[0x1E69CF5E8]);
  [v12 setSource:v8];
  [v12 setTarget:v10];
  v13 = *MEMORY[0x1E698D0A0];
  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SASActivationInstrumentationSender instrumentRequestLinkToUEIWithTurnId:activationEventIdentifier:]";
    v16 = 2112;
    v17 = idCopy;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_1C8137000, v13, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending RequestLink event for Turn Id: %@, activationIdentifier: %@", &v14, 0x20u);
  }

  [(SiriAnalyticsClientMessageStream *)self->_analyticsStream emitMessage:v12];
}

- (void)instrumentActivationMessage:(id)message
{
  v29 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  event = [messageCopy event];
  buttonInteractionDetected = [event buttonInteractionDetected];

  v7 = *MEMORY[0x1E698D0A0];
  if (buttonInteractionDetected)
  {
    v8 = v7;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    event2 = [messageCopy event];
    buttonInteractionDetected2 = [event2 buttonInteractionDetected];
    buttonName = [buttonInteractionDetected2 buttonName];
    event3 = [messageCopy event];
    buttonInteractionDetected3 = [event3 buttonInteractionDetected];
    v14 = [buttonInteractionDetected3 buttonInteractionType] - 1;
    if (v14 > 2)
    {
      v15 = @"BUTTONINTERACTIONTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E82F3578[v14];
    }

    activationEventIdentifier = [messageCopy activationEventIdentifier];
    v21 = 136315906;
    v22 = "[SASActivationInstrumentationSender instrumentActivationMessage:]";
    v23 = 2112;
    v24 = buttonName;
    v25 = 2112;
    v26 = v15;
    v27 = 2112;
    v28 = activationEventIdentifier;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending <%@, %@> for identifier %@", &v21, 0x2Au);

LABEL_9:
    goto LABEL_10;
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    event4 = [messageCopy event];
    buttonName = [event4 turnActivated];
    activationEventIdentifier2 = [messageCopy activationEventIdentifier];
    v21 = 136315650;
    v22 = "[SASActivationInstrumentationSender instrumentActivationMessage:]";
    v23 = 2112;
    v24 = buttonName;
    v25 = 2112;
    v26 = activationEventIdentifier2;
    _os_log_impl(&dword_1C8137000, v8, OS_LOG_TYPE_DEFAULT, "%s #instrumentation Sending %@ for identifier %@", &v21, 0x20u);

    goto LABEL_9;
  }

LABEL_11:
  analyticsStream = self->_analyticsStream;
  event5 = [messageCopy event];
  -[SiriAnalyticsClientMessageStream emitMessage:timestamp:](analyticsStream, "emitMessage:timestamp:", event5, [messageCopy machAbsoluteTime]);
}

- (id)_clientEventWithActivationEventIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E69CE6E0];
  identifierCopy = identifier;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E69CE6E8]);
  v7 = [objc_alloc(MEMORY[0x1E69CF640]) initWithNSUUID:identifierCopy];

  [v6 setActivationEventId:v7];
  [v5 setEventMetadata:v6];

  return v5;
}

@end