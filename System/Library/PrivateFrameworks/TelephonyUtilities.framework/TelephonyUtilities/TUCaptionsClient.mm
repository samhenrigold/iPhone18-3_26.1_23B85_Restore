@interface TUCaptionsClient
- (TUCaptionsClient)initWithDelegate:(id)delegate call:(id)call;
- (void)callCenter:(id)center receivedCaptions:(id)captions;
- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish;
- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error;
- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source;
- (void)captionsServerDidDie:(id)die;
- (void)configureCaptions:(id)captions;
- (void)enableCaptions:(BOOL)captions;
@end

@implementation TUCaptionsClient

- (TUCaptionsClient)initWithDelegate:(id)delegate call:(id)call
{
  delegateCopy = delegate;
  callCopy = call;
  v16.receiver = self;
  v16.super_class = TUCaptionsClient;
  v9 = [(TUCaptionsClient *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_delegate, delegate);
  }

  if ([callCopy answeringMachineStreamToken])
  {
    v11 = [objc_alloc(CUTWeakLinkClass()) initWithDelegate:v10 streamToken:{objc_msgSend(callCopy, "answeringMachineStreamToken")}];
    avcCaptionsClient = v10->_avcCaptionsClient;
    v10->_avcCaptionsClient = v11;
  }

  else
  {
    avcCaptionsClient = +[TUCallCenter sharedInstance];
    v13 = +[TUCallCenter sharedInstance];
    queue = [v13 queue];
    [avcCaptionsClient addDelegate:v10 queue:queue];
  }

  return v10;
}

- (void)configureCaptions:(id)captions
{
  captionsCopy = captions;
  avcCaptionsClient = [(TUCaptionsClient *)self avcCaptionsClient];
  [avcCaptionsClient configureCaptions:captionsCopy];
}

- (void)enableCaptions:(BOOL)captions
{
  captionsCopy = captions;
  avcCaptionsClient = [(TUCaptionsClient *)self avcCaptionsClient];
  [avcCaptionsClient enableCaptions:captionsCopy];
}

- (void)captionsClient:(id)client didUpdateCaptions:(id)captions source:(int)source
{
  captionsCopy = captions;
  delegate = [(TUCaptionsClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [[TUCaptionsResult alloc] initWithAVCCaptionsResult:captionsCopy];
    delegate2 = [(TUCaptionsClient *)self delegate];
    [delegate2 captionsClient:self didUpdateCaptions:v8];
  }
}

- (void)captionsClient:(id)client didDetectGibberish:(BOOL)gibberish
{
  gibberishCopy = gibberish;
  delegate = [(TUCaptionsClient *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(TUCaptionsClient *)self delegate];
    [delegate2 captionsClient:self didDetectGibberish:gibberishCopy];
  }
}

- (void)captionsClient:(id)client didEnableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  errorCopy = error;
  delegate = [(TUCaptionsClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(TUCaptionsClient *)self delegate];
    [delegate2 captionsClient:self didEnableCaptions:captionsCopy error:errorCopy];
  }
}

- (void)captionsClient:(id)client didDisableCaptions:(BOOL)captions error:(id)error
{
  captionsCopy = captions;
  errorCopy = error;
  delegate = [(TUCaptionsClient *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(TUCaptionsClient *)self delegate];
    [delegate2 captionsClient:self didDisableCaptions:captionsCopy error:errorCopy];
  }
}

- (void)callCenter:(id)center receivedCaptions:(id)captions
{
  captionsCopy = captions;
  delegate = [(TUCaptionsClient *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TUCaptionsClient *)self delegate];
    [delegate2 captionsClient:self didUpdateCaptions:captionsCopy];
  }
}

- (void)captionsServerDidDie:(id)die
{
  v3 = TUDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [TUCaptionsClient captionsServerDidDie:v3];
  }
}

@end