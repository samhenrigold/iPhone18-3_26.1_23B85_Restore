@interface _CNLazyArrayGeneratorSource
- (_CNLazyArrayGeneratorSource)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector;
- (id)nextObject;
@end

@implementation _CNLazyArrayGeneratorSource

- (_CNLazyArrayGeneratorSource)initWithInitialState:(id)state condition:(id)condition nextState:(id)nextState resultSelector:(id)selector
{
  stateCopy = state;
  conditionCopy = condition;
  nextStateCopy = nextState;
  selectorCopy = selector;
  v25.receiver = self;
  v25.super_class = _CNLazyArrayGeneratorSource;
  v15 = [(_CNLazyArrayGeneratorSource *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_state, state);
    v17 = [conditionCopy copy];
    condition = v16->_condition;
    v16->_condition = v17;

    v19 = [nextStateCopy copy];
    nextState = v16->_nextState;
    v16->_nextState = v19;

    v21 = [selectorCopy copy];
    resultFromState = v16->_resultFromState;
    v16->_resultFromState = v21;

    v16->_firstTime = 1;
    v23 = v16;
  }

  return v16;
}

- (id)nextObject
{
  if (self->_firstTime)
  {
    self->_firstTime = 0;
    if (((*(self->_condition + 2))() & 1) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = (*(self->_nextState + 2))();
    state = self->_state;
    self->_state = v4;

    if (!(*(self->_condition + 2))())
    {
      goto LABEL_3;
    }
  }

  v3 = (*(self->_resultFromState + 2))();
LABEL_6:

  return v3;
}

@end