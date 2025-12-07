@interface AVRoutingSession
- (AVRoutingSession)initWithFigRoutingSession:(OpaqueFigRoutingSession *)session;
- (AVRoutingSessionDestination)destination;
- (BOOL)establishedAutomaticallyFromLikelyDestination;
- (id)description;
- (void)dealloc;
@end

@implementation AVRoutingSession

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {
    figRoutingSession = ivars->figRoutingSession;
    if (figRoutingSession)
    {
      CFRelease(figRoutingSession);
      ivars = self->_ivars;
    }
  }

  v5.receiver = self;
  v5.super_class = AVRoutingSession;
  [(AVRoutingSession *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([(AVRoutingSession *)self establishedAutomaticallyFromLikelyDestination])
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  return [v3 stringWithFormat:@"<%@: %p, establishedAutomaticallyFromLikelyDestination=%s, destination=%@>", v5, self, v6, -[AVRoutingSession destination](self, "destination")];
}

- (BOOL)establishedAutomaticallyFromLikelyDestination
{
  cf = 0;
  CMBaseObject = FigRoutingSessionGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v4 = v3(CMBaseObject, *MEMORY[0x1E69AF588], *MEMORY[0x1E695E480], &cf) == 0;
    v5 = cf;
    v6 = *MEMORY[0x1E695E4D0];
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = *MEMORY[0x1E695E4D0];
  }

  return v5 == v6 && v4;
}

- (AVRoutingSession)initWithFigRoutingSession:(OpaqueFigRoutingSession *)session
{
  v9.receiver = self;
  v9.super_class = AVRoutingSession;
  v4 = [(AVRoutingSession *)&v9 init];
  if (v4 && (ivars = objc_alloc_init(AVRoutingSessionInternal), (v4->_ivars = ivars) != 0) && (!session ? (v6 = 0) : (v6 = CFRetain(session), ivars = v4->_ivars), ivars->figRoutingSession = v6, v4->_ivars->figRoutingSession))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AVRoutingSessionDestination)destination
{
  cf = 0;
  figRoutingSession = self->_ivars->figRoutingSession;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v3 || v3(figRoutingSession, &cf))
  {
    v5 = 0;
  }

  else
  {
    v4 = [AVRoutingSessionDestination alloc];
    v5 = [(AVRoutingSessionDestination *)v4 initWithFigRoutingSessionDestination:cf];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

@end