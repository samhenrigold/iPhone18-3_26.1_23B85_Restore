@interface CMContinuityCaptureStateTransition
- (CMContinuityCaptureStateTransition)initWithAttributes:(id)attributes dstState:(id)state event:(id)event guard:(id)guard action:(id)action;
- (id)transactionFromStateOnEvent:(id)event event:(id)a4;
@end

@implementation CMContinuityCaptureStateTransition

- (id)transactionFromStateOnEvent:(id)event event:(id)a4
{
  eventCopy = event;
  v7 = a4;
  name = [v7 name];
  event = [(CMContinuityCaptureStateTransition *)self event];
  name2 = [event name];
  if ([name isEqualToString:?])
  {
    srcState = [(CMContinuityCaptureStateTransition *)self srcState];

    if (srcState == eventCopy)
    {
      guard = [(CMContinuityCaptureStateTransition *)self guard];

      if (!guard || ([(CMContinuityCaptureStateTransition *)self guard], v13 = objc_claimAutoreleasedReturnValue(), [(CMContinuityCaptureStateTransition *)self srcState], v14 = objc_claimAutoreleasedReturnValue(), [(CMContinuityCaptureStateTransition *)self dstState], v15 = objc_claimAutoreleasedReturnValue(), v16 = (v13)[2](v13, v14, v15, v7), v15, v14, v13, v16))
      {
        dstState = [(CMContinuityCaptureStateTransition *)self dstState];
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  dstState = 0;
LABEL_8:

  return dstState;
}

- (CMContinuityCaptureStateTransition)initWithAttributes:(id)attributes dstState:(id)state event:(id)event guard:(id)guard action:(id)action
{
  attributesCopy = attributes;
  stateCopy = state;
  eventCopy = event;
  guardCopy = guard;
  actionCopy = action;
  v21.receiver = self;
  v21.super_class = CMContinuityCaptureStateTransition;
  v17 = [(CMContinuityCaptureStateTransition *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CMContinuityCaptureStateTransition *)v17 setSrcState:?];
    [(CMContinuityCaptureStateTransition *)v18 setDstState:?];
    [(CMContinuityCaptureStateTransition *)v18 setEvent:?];
    [(CMContinuityCaptureStateTransition *)v18 setGuard:?];
    [(CMContinuityCaptureStateTransition *)v18 setAction:?];
    v19 = v18;
  }

  return v18;
}

@end