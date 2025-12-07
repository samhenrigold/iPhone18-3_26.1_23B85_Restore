@interface MobileDocumentReaderDelegateProxy
- (void)mobileDocumentReaderStateDidChange:(id)change;
@end

@implementation MobileDocumentReaderDelegateProxy

- (void)mobileDocumentReaderStateDidChange:(id)change
{
  v4 = *self->onStateChange;
  v5 = OBJC_IVAR____TtC7CoreIDV35XPCMobileDocumentReaderSessionState_value;
  changeCopy = change;

  v4(change + v5);
}

@end