@interface MRDPinPairingDialog_ATV
- (MRDPinPairingDialog_ATV)init;
- (void)closeAll;
- (void)closeForClient:(id)client userCancelled:(BOOL)cancelled;
- (void)dealloc;
- (void)showWithPin:(id)pin forClient:(id)client;
@end

@implementation MRDPinPairingDialog_ATV

- (MRDPinPairingDialog_ATV)init
{
  v6.receiver = self;
  v6.super_class = MRDPinPairingDialog_ATV;
  v2 = [(MRDPinPairingDialog_ATV *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    clients = v2->_clients;
    v2->_clients = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(MRDPinPairingDialog_ATV *)self closeAll];
  v3.receiver = self;
  v3.super_class = MRDPinPairingDialog_ATV;
  [(MRDPinPairingDialog_ATV *)&v3 dealloc];
}

- (void)showWithPin:(id)pin forClient:(id)client
{
  pinCopy = pin;
  if (!self->_titleKey)
  {
    v5 = MSVWeakLinkStringConstant();
    titleKey = self->_titleKey;
    self->_titleKey = v5;

    v7 = MSVWeakLinkStringConstant();
    pinKey = self->_pinKey;
    self->_pinKey = v7;

    v9 = MSVWeakLinkStringConstant();
    messageKey = self->_messageKey;
    self->_messageKey = v9;

    v11 = MSVWeakLinkStringConstant();
    timeoutKey = self->_timeoutKey;
    self->_timeoutKey = v11;
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  v14 = MRLocalizedString();
  [v13 setObject:v14 forKey:self->_titleKey];

  [v13 setObject:pinCopy forKey:self->_pinKey];
  v15 = MRLocalizedString();
  [v13 setObject:v15 forKey:self->_messageKey];

  [v13 setObject:&off_1004E0500 forKey:self->_timeoutKey];
}

- (void)closeForClient:(id)client userCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  clientCopy = client;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  delegate2 = self->_clients;
  v8 = [(NSMutableArray *)delegate2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(delegate2);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (v11 == clientCopy)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)delegate2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v8 = v11;

    if (!clientCopy)
    {
      v8 = 0;
      goto LABEL_15;
    }

    [(NSMutableArray *)self->_clients removeObject:v8, v14];
    [clientCopy pinPairingToken];

    delegate = [(MRDPinPairingDialog *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }

    delegate2 = [(MRDPinPairingDialog *)self delegate];
    [(NSMutableArray *)delegate2 pinPairingDialogDidClose:self forClient:clientCopy userCancelled:cancelledCopy];
  }

LABEL_13:

LABEL_15:
}

- (void)closeAll
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_clients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setPinPairingToken:{0, v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_clients removeAllObjects];
}

@end