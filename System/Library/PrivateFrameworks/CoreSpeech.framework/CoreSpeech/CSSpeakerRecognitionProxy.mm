@interface CSSpeakerRecognitionProxy
- (CSSpeakerRecognitionProxy)initWithDelegate:(id)delegate;
- (CSSpeakerRecognitionProxyProtocol)delegate;
- (void)dealloc;
- (void)didFinishSpeakerRecognition:(id)recognition;
- (void)didReceiveSpeakerRecognitionScoreCard:(id)card;
- (void)invalidateXPCConnection;
- (void)startXPCConnection;
@end

@implementation CSSpeakerRecognitionProxy

- (CSSpeakerRecognitionProxyProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didFinishSpeakerRecognition:(id)recognition
{
  v13 = *MEMORY[0x277D85DE8];
  recognitionCopy = recognition;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSSpeakerRecognitionProxy didFinishSpeakerRecognition:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 didFinishSpeakerRecognition:recognitionCopy];
    }
  }
}

- (void)didReceiveSpeakerRecognitionScoreCard:(id)card
{
  v13 = *MEMORY[0x277D85DE8];
  cardCopy = card;
  v5 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[CSSpeakerRecognitionProxy didReceiveSpeakerRecognitionScoreCard:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 didReceiveSpeakerRecognitionScoreCard:cardCopy];
    }
  }
}

- (void)dealloc
{
  [(CSSpeakerRecognitionProxy *)self invalidateXPCConnection];
  v3.receiver = self;
  v3.super_class = CSSpeakerRecognitionProxy;
  [(CSSpeakerRecognitionProxy *)&v3 dealloc];
}

- (void)invalidateXPCConnection
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeakerRecognitionProxy invalidateXPCConnection]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSSSRXPCClient *)self->_ssrXPCClient invalidate];
}

- (void)startXPCConnection
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[CSSpeakerRecognitionProxy startXPCConnection]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v4, 0xCu);
  }

  [(CSSSRXPCClient *)self->_ssrXPCClient startXPCConnection];
}

- (CSSpeakerRecognitionProxy)initWithDelegate:(id)delegate
{
  v14 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CSSpeakerRecognitionProxy;
  v5 = [(CSSpeakerRecognitionProxy *)&v11 init];
  if (v5 && (v6 = objc_alloc_init(CSSSRXPCClient), ssrXPCClient = v5->_ssrXPCClient, v5->_ssrXPCClient = v6, ssrXPCClient, [(CSSSRXPCClient *)v5->_ssrXPCClient setDelegate:v5], objc_storeWeak(&v5->_delegate, delegateCopy), !v5->_ssrXPCClient))
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[CSSpeakerRecognitionProxy initWithDelegate:]";
      _os_log_error_impl(&dword_222E4D000, v9, OS_LOG_TYPE_ERROR, "%s ERR: Failed to establish XPC connection!", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end