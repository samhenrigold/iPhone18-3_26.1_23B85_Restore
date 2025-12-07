@interface SafariFormMetadataController
- (void)didFindSearchURLTemplateString:(id)string inFrame:(id)frame pageController:(id)controller;
- (void)invalidate;
@end

@implementation SafariFormMetadataController

- (void)invalidate
{
  quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  self->_quickWebsiteSearchEventListener = 0;

  v4.receiver = self;
  v4.super_class = SafariFormMetadataController;
  [(_SFFormMetadataController *)&v4 invalidate];
}

- (void)didFindSearchURLTemplateString:(id)string inFrame:(id)frame pageController:(id)controller
{
  stringCopy = string;
  frameCopy = frame;
  quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  if (!quickWebsiteSearchEventListener)
  {
    v10 = MEMORY[0x277CE3898];
    controllerCopy = controller;
    v12 = [v10 remoteObjectInterfaceWithProtocol:&unk_286ADAD38];
    _remoteObjectRegistry = [controllerCopy _remoteObjectRegistry];

    v14 = [_remoteObjectRegistry remoteObjectProxyWithInterface:v12];
    v15 = self->_quickWebsiteSearchEventListener;
    self->_quickWebsiteSearchEventListener = v14;

    quickWebsiteSearchEventListener = self->_quickWebsiteSearchEventListener;
  }

  v16 = [frameCopy URL];
  [(QuickWebsiteSearchEventListener *)quickWebsiteSearchEventListener didAutoDetectSiteSpecificSearchProviderWithOriginatingURL:v16 searchURLTemplate:stringCopy];
}

@end