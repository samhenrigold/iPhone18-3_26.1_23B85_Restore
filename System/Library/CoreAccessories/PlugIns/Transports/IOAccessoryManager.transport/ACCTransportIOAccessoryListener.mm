@interface ACCTransportIOAccessoryListener
- (ACCTransportIOAccessoryListener)initWithDelegate:(id)delegate;
- (ACCTransportIOAccessoryListenerProtocol)delegate;
- (void)_ioAccessoryAuthCPAttached:(unsigned int)attached;
- (void)_ioAccessoryAuthCPTerminated:(unsigned int)terminated;
- (void)_ioAccessoryConfigStreamAttached:(unsigned int)attached;
- (void)_ioAccessoryConfigStreamTerminated:(unsigned int)terminated;
- (void)_ioAccessoryEAAttached:(unsigned int)attached;
- (void)_ioAccessoryEATerminated:(unsigned int)terminated;
- (void)_ioAccessoryManagerAttached:(unsigned int)attached;
- (void)_ioAccessoryManagerTerminated:(unsigned int)terminated;
- (void)_ioAccessoryOOBPairingAttached:(unsigned int)attached;
- (void)_ioAccessoryOOBPairingTerminated:(unsigned int)terminated;
- (void)_ioAccessoryPortAttached:(unsigned int)attached;
- (void)_ioAccessoryPortTerminated:(unsigned int)terminated;
- (void)_startListeningForIOAccessoryAuthCPClass;
- (void)_startListeningForIOAccessoryConfigStreamClass;
- (void)_startListeningForIOAccessoryEAClass;
- (void)_startListeningForIOAccessoryManagerClass;
- (void)_startListeningForIOAccessoryOOBPairingClass;
- (void)_startListeningForIOAccessoryPortClass;
- (void)_stopListeningForIOAccessoryAuthCPClass;
- (void)_stopListeningForIOAccessoryConfigStreamClass;
- (void)_stopListeningForIOAccessoryEAClass;
- (void)_stopListeningForIOAccessoryManagerClass;
- (void)_stopListeningForIOAccessoryOOBPairingClass;
- (void)_stopListeningForIOAccessoryPortClass;
- (void)dealloc;
- (void)startListening;
- (void)stopListening;
@end

@implementation ACCTransportIOAccessoryListener

- (ACCTransportIOAccessoryListener)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = ACCTransportIOAccessoryListener;
  v5 = [(ACCTransportIOAccessoryListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = dispatch_queue_create("com.apple.ACCTransport.IOAccessoryListener", 0);
    ioAccessoryListenerQueue = v6->_ioAccessoryListenerQueue;
    v6->_ioAccessoryListenerQueue = v7;
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(ACCTransportIOAccessoryListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = ACCTransportIOAccessoryListener;
  [(ACCTransportIOAccessoryListener *)&v3 dealloc];
}

- (void)startListening
{
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryManagerClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryPortClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryAuthCPClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryEAClass];
  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryOOBPairingClass];

  [(ACCTransportIOAccessoryListener *)self _startListeningForIOAccessoryConfigStreamClass];
}

- (void)stopListening
{
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryOOBPairingClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryEAClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryAuthCPClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryPortClass];
  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryManagerClass];

  [(ACCTransportIOAccessoryListener *)self _stopListeningForIOAccessoryConfigStreamClass];
}

- (void)_startListeningForIOAccessoryManagerClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryManagerAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryManagerServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryManagerTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryManagerServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryManagerClass
{
  ioAccessoryManagerClassNotify = self->_ioAccessoryManagerClassNotify;
  if (ioAccessoryManagerClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryManagerClassNotify);
  }

  ioAccessoryManagerClassIteratorArrived = self->_ioAccessoryManagerClassIteratorArrived;
  if (ioAccessoryManagerClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryManagerClassIteratorArrived);
    self->_ioAccessoryManagerClassIteratorArrived = 0;
  }

  ioAccessoryManagerClassIteratorTerminated = self->_ioAccessoryManagerClassIteratorTerminated;
  if (ioAccessoryManagerClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryManagerClassIteratorTerminated);
    self->_ioAccessoryManagerClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryPortClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryPortAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryPortServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryPortTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryPortServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryPortClass
{
  ioAccessoryPortClassNotify = self->_ioAccessoryPortClassNotify;
  if (ioAccessoryPortClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryPortClassNotify);
    self->_ioAccessoryPortClassNotify = 0;
  }

  ioAccessoryPortClassIteratorArrived = self->_ioAccessoryPortClassIteratorArrived;
  if (ioAccessoryPortClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryPortClassIteratorArrived);
    self->_ioAccessoryPortClassIteratorArrived = 0;
  }

  ioAccessoryPortClassIteratorTerminated = self->_ioAccessoryPortClassIteratorTerminated;
  if (ioAccessoryPortClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryPortClassIteratorTerminated);
    self->_ioAccessoryPortClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryAuthCPClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryAuthCPAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryAuthCPServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryAuthCPTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryAuthCPServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryAuthCPClass
{
  ioAccessoryAuthCPClassNotify = self->_ioAccessoryAuthCPClassNotify;
  if (ioAccessoryAuthCPClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryAuthCPClassNotify);
    self->_ioAccessoryAuthCPClassNotify = 0;
  }

  ioAccessoryAuthCPClassIteratorArrived = self->_ioAccessoryAuthCPClassIteratorArrived;
  if (ioAccessoryAuthCPClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryAuthCPClassIteratorArrived);
    self->_ioAccessoryAuthCPClassIteratorArrived = 0;
  }

  ioAccessoryAuthCPClassIteratorTerminated = self->_ioAccessoryAuthCPClassIteratorTerminated;
  if (ioAccessoryAuthCPClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryAuthCPClassIteratorTerminated);
    self->_ioAccessoryAuthCPClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryEAClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryEAAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryEAServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryEATerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryEAServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryEAClass
{
  ioAccessoryEAClassNotify = self->_ioAccessoryEAClassNotify;
  if (ioAccessoryEAClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryEAClassNotify);
    self->_ioAccessoryEAClassNotify = 0;
  }

  ioAccessoryEAClassIteratorArrived = self->_ioAccessoryEAClassIteratorArrived;
  if (ioAccessoryEAClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryEAClassIteratorArrived);
    self->_ioAccessoryEAClassIteratorArrived = 0;
  }

  ioAccessoryEAClassIteratorTerminated = self->_ioAccessoryEAClassIteratorTerminated;
  if (ioAccessoryEAClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryEAClassIteratorTerminated);
    self->_ioAccessoryEAClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryOOBPairingClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryOOBPairingAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryOOBPairingServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryOOBPairingTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryOOBPairingServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryOOBPairingClass
{
  ioAccessoryOOBPairingClassNotify = self->_ioAccessoryOOBPairingClassNotify;
  if (ioAccessoryOOBPairingClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryOOBPairingClassNotify);
    self->_ioAccessoryOOBPairingClassNotify = 0;
  }

  ioAccessoryOOBPairingClassIteratorArrived = self->_ioAccessoryOOBPairingClassIteratorArrived;
  if (ioAccessoryOOBPairingClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryOOBPairingClassIteratorArrived);
    self->_ioAccessoryOOBPairingClassIteratorArrived = 0;
  }

  ioAccessoryOOBPairingClassIteratorTerminated = self->_ioAccessoryOOBPairingClassIteratorTerminated;
  if (ioAccessoryOOBPairingClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryOOBPairingClassIteratorTerminated);
    self->_ioAccessoryOOBPairingClassIteratorTerminated = 0;
  }
}

- (void)_startListeningForIOAccessoryConfigStreamClass
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)_ioAccessoryConfigStreamAttached:(unsigned int)attached
{
  v3 = *&attached;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryConfigStreamServiceArrived:v3];
    }
  }
}

- (void)_ioAccessoryConfigStreamTerminated:(unsigned int)terminated
{
  v3 = *&terminated;
  delegate = [(ACCTransportIOAccessoryListener *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(ACCTransportIOAccessoryListener *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(ACCTransportIOAccessoryListener *)self delegate];
      [delegate3 IOAccessoryConfigStreamServiceTerminated:v3];
    }
  }
}

- (void)_stopListeningForIOAccessoryConfigStreamClass
{
  ioAccessoryConfigStreamClassNotify = self->_ioAccessoryConfigStreamClassNotify;
  if (ioAccessoryConfigStreamClassNotify)
  {
    IONotificationPortDestroy(ioAccessoryConfigStreamClassNotify);
    self->_ioAccessoryConfigStreamClassNotify = 0;
  }

  ioAccessoryConfigStreamClassIteratorArrived = self->_ioAccessoryConfigStreamClassIteratorArrived;
  if (ioAccessoryConfigStreamClassIteratorArrived)
  {
    IOObjectRelease(ioAccessoryConfigStreamClassIteratorArrived);
    self->_ioAccessoryConfigStreamClassIteratorArrived = 0;
  }

  ioAccessoryConfigStreamClassIteratorTerminated = self->_ioAccessoryConfigStreamClassIteratorTerminated;
  if (ioAccessoryConfigStreamClassIteratorTerminated)
  {
    IOObjectRelease(ioAccessoryConfigStreamClassIteratorTerminated);
    self->_ioAccessoryConfigStreamClassIteratorTerminated = 0;
  }
}

- (ACCTransportIOAccessoryListenerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end