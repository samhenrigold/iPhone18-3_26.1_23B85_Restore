@interface _SWRemoveParticipantAlertController
+ (id)alertControllerWithParticipant:(id)participant highlight:(id)highlight preferredStyle:(int64_t)style;
- (id)_initWithParticipant:(id)participant highlight:(id)highlight preferredStyle:(int64_t)style;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation _SWRemoveParticipantAlertController

- (id)_initWithParticipant:(id)participant highlight:(id)highlight preferredStyle:(int64_t)style
{
  participantCopy = participant;
  highlightCopy = highlight;
  v14.receiver = self;
  v14.super_class = _SWRemoveParticipantAlertController;
  v11 = [(_SWRemoveParticipantAlertController *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_participant, participant);
    objc_storeStrong(&v12->_highlight, highlight);
    v12->_preferredStyle = style;
  }

  return v12;
}

+ (id)alertControllerWithParticipant:(id)participant highlight:(id)highlight preferredStyle:(int64_t)style
{
  highlightCopy = highlight;
  participantCopy = participant;
  v9 = [[_SWRemoveParticipantAlertController alloc] _initWithParticipant:participantCopy highlight:highlightCopy preferredStyle:style];

  [v9 setModalPresentationStyle:6];

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = _SWRemoveParticipantAlertController;
  [(_SWRemoveParticipantAlertController *)&v5 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(_SWRemoveParticipantAlertController *)self view];
  [view setBackgroundColor:clearColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = _SWRemoveParticipantAlertController;
  [(_SWRemoveParticipantAlertController *)&v8 viewWillAppear:appear];
  if (!self->_remoteAlertController)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54___SWRemoveParticipantAlertController_viewWillAppear___block_invoke;
    v5[3] = &unk_1E7FDE100;
    objc_copyWeak(&v6, &location);
    v4 = [_SWRemoveParticipantAlertRemoteController requestViewControllerWithConnectionHandler:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end