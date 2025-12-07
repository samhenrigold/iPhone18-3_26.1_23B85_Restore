@interface PHAbstractDialerView
- (id)senderIdentityMenuForDialerField:(id)field selectedSenderIdentity:(id)identity;
- (void)dealloc;
- (void)dialerField:(id)field stringWasPasted:(id)pasted;
- (void)dialerLCDFieldTextDidChange:(id)change;
- (void)updateIDSStatus;
@end

@implementation PHAbstractDialerView

- (void)dealloc
{
  [(DialerLCDFieldProtocol *)self->_lcdView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHAbstractDialerView;
  [(PHAbstractDialerView *)&v3 dealloc];
}

- (void)dialerLCDFieldTextDidChange:(id)change
{
  if (self->_lcdView == change && (objc_opt_respondsToSelector() & 1) != 0)
  {
    delegate = self->_delegate;

    [(DialerViewDelegate *)delegate dialerViewTextDidChange:self];
  }
}

- (void)dialerField:(id)field stringWasPasted:(id)pasted
{
  pastedCopy = pasted;
  if (self->_lcdView == field)
  {
    v7 = pastedCopy;
    if (objc_opt_respondsToSelector())
    {
      [(DialerViewDelegate *)self->_delegate dialerView:self stringWasPasted:v7];
    }
  }

  MEMORY[0x2821F9730]();
}

- (id)senderIdentityMenuForDialerField:(id)field selectedSenderIdentity:(id)identity
{
  identityCopy = identity;
  if (self->_lcdView == field && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [(DialerViewDelegate *)self->_delegate senderIdentityMenuForDialerView:self selectedSenderIdentity:identityCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateIDSStatus
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(DialerViewDelegate *)delegate updateIDSStatus];
  }
}

@end