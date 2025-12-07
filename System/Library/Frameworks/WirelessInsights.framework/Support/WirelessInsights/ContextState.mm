@interface ContextState
- (id)init:(unint64_t)init mnc:(int64_t)mnc mcc:(int64_t)mcc rat:(id)rat dataPreferred:(BOOL)preferred signalBarState:(id)state registrationState:(id)registrationState;
@end

@implementation ContextState

- (id)init:(unint64_t)init mnc:(int64_t)mnc mcc:(int64_t)mcc rat:(id)rat dataPreferred:(BOOL)preferred signalBarState:(id)state registrationState:(id)registrationState
{
  preferredCopy = preferred;
  ratCopy = rat;
  stateCopy = state;
  registrationStateCopy = registrationState;
  v21.receiver = self;
  v21.super_class = ContextState;
  v18 = [(ContextState *)&v21 init];
  v19 = v18;
  if (v18)
  {
    [(ContextState *)v18 setStartTime:init];
    [(ContextState *)v19 setMnc:mnc];
    [(ContextState *)v19 setMcc:mcc];
    [(ContextState *)v19 setRat:ratCopy];
    [(ContextState *)v19 setDataPreferred:preferredCopy];
    [(ContextState *)v19 setSignalBarState:stateCopy];
    [(ContextState *)v19 setRegistrationState:registrationStateCopy];
  }

  return v19;
}

@end