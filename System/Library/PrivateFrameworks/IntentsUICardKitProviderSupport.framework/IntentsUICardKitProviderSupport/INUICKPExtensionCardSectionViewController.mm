@interface INUICKPExtensionCardSectionViewController
- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate;
- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info;
- (void)desiresInteractivity:(id)interactivity;
- (void)remoteViewController:(id)controller requestsHandlingOfIntent:(id)intent;
- (void)remoteViewControllerWillBeginEditing:(id)editing;
@end

@implementation INUICKPExtensionCardSectionViewController

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
  [remoteViewController desiresInteractivity:interactivityCopy];
}

- (void)remoteViewController:(id)controller requestsHandlingOfIntent:(id)intent
{
  v6 = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate:controller];
  v5 = objc_alloc_init(MEMORY[0x277CF9468]);
  [v6 performCommand:v5 forViewController:self];
}

- (void)remoteViewControllerWillBeginEditing:(id)editing
{
  cardSectionViewControllingDelegate = [(INUICKPExtensionCardSectionViewController *)self cardSectionViewControllingDelegate];
  v4 = objc_alloc_init(MEMORY[0x277CF9428]);
  [cardSectionViewControllingDelegate performCommand:v4 forViewController:self];
}

- (void)cardEventDidOccur:(unint64_t)occur withIdentifier:(id)identifier userInfo:(id)info
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController:occur];

  if (v7)
  {
    if (occur > 4)
    {
      if (occur == 5)
      {
        remoteViewController = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
        _cancelTouchesForCurrentEventInHostedContent = [remoteViewController _cancelTouchesForCurrentEventInHostedContent];
        touchDeliveryPolicyAssertion = self->_touchDeliveryPolicyAssertion;
        self->_touchDeliveryPolicyAssertion = _cancelTouchesForCurrentEventInHostedContent;

        v18 = *MEMORY[0x277CF93F0];
        if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          remoteViewController2 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
          v21 = self->_touchDeliveryPolicyAssertion;
          *buf = 138412546;
          v24 = remoteViewController2;
          v25 = 2112;
          v26 = v21;
          _os_log_impl(&dword_255550000, v19, OS_LOG_TYPE_INFO, "CRKEventScrollingStarted, cancelling touches for %@ with assertion %@", buf, 0x16u);
        }
      }

      else if (occur == 6)
      {
        v10 = *MEMORY[0x277CF93F0];
        if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          remoteViewController3 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
          v13 = self->_touchDeliveryPolicyAssertion;
          *buf = 138412546;
          v24 = remoteViewController3;
          v25 = 2112;
          v26 = v13;
          _os_log_impl(&dword_255550000, v11, OS_LOG_TYPE_INFO, "CRKEventScrollingEnded, resuming touches for %@ by invalidating assertion %@", buf, 0x16u);
        }

        [self->_touchDeliveryPolicyAssertion invalidate];
        v14 = self->_touchDeliveryPolicyAssertion;
        self->_touchDeliveryPolicyAssertion = 0;
      }
    }

    else if (occur == 3)
    {
      remoteViewController4 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      [remoteViewController4 requestCancellation];
    }

    else if (occur == 4)
    {
      remoteViewController5 = [(INUICKPSynchronousRemoteViewController *)self remoteViewController];
      disconnect = [remoteViewController5 disconnect];

      [(INUICKPSynchronousRemoteViewController *)self setRemoteViewController:0];
    }
  }
}

- (CRKCardSectionViewControllingDelegate)cardSectionViewControllingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionViewControllingDelegate);

  return WeakRetained;
}

@end