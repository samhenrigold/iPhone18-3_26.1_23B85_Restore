@interface SGAddressCoalescingState
- (SGAddressCoalescingState)init;
- (void)coalesceAddress:(__DDResult *)address orAppendMatch:(id)match;
- (void)dealloc;
@end

@implementation SGAddressCoalescingState

- (SGAddressCoalescingState)init
{
  v6.receiver = self;
  v6.super_class = SGAddressCoalescingState;
  v2 = [(SGAddressCoalescingState *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    matches = v2->_matches;
    v2->_matches = v3;

    v2->_lastAddressIndex = -1;
    v2->_lastAddressEndPos = -1;
  }

  return v2;
}

- (void)dealloc
{
  lastResult = self->_lastResult;
  if (lastResult)
  {
    CFRelease(lastResult);
  }

  v4.receiver = self;
  v4.super_class = SGAddressCoalescingState;
  [(SGAddressCoalescingState *)&v4 dealloc];
}

- (void)coalesceAddress:(__DDResult *)address orAppendMatch:(id)match
{
  matchCopy = match;
  if (DDResultHasType())
  {
    Range = DDResultGetRange();
    v8 = Range + v7;
    v9 = objc_msgSend_count(self->_matches);
    v10 = v9;
    lastAddressIndex = self->_lastAddressIndex;
    v12 = lastAddressIndex != -1 && v9 == lastAddressIndex + 1;
    if (v12 && Range - self->_lastAddressEndPos <= 19 && DDAddressResultCanBeMergedWith())
    {
      v13 = [(NSMutableArray *)self->_matches objectAtIndexedSubscript:self->_lastAddressIndex];
      range = [v13 range];
      v15 = v8 - [v13 range];
      v16 = [SGDataDetectorMatch alloc];
      matchType = [v13 matchType];
      labelRange = [v13 labelRange];
      v20 = [(SGDataDetectorMatch *)v16 initWithMatchType:matchType range:range labelRange:v15 labelString:labelRange valueRange:v19 valueString:0, range, v15, 0];
      [(NSMutableArray *)self->_matches setObject:v20 atIndexedSubscript:self->_lastAddressIndex];
    }

    else
    {
      [(NSMutableArray *)self->_matches addObject:matchCopy];
    }

    self->_lastAddressIndex = v10;
    self->_lastAddressEndPos = v8;
    lastResult = self->_lastResult;
    if (lastResult)
    {
      CFRelease(lastResult);
    }

    self->_lastResult = CFRetain(address);
  }

  else
  {
    [(NSMutableArray *)self->_matches addObject:matchCopy];
  }
}

@end