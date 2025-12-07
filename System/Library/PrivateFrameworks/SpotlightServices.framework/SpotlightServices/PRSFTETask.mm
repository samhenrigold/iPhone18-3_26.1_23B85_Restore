@interface PRSFTETask
- (PRSFTETask)initWithReply:(id)reply;
- (void)triggerQuery:(BOOL)query;
@end

@implementation PRSFTETask

- (PRSFTETask)initWithReply:(id)reply
{
  replyCopy = reply;
  v9.receiver = self;
  v9.super_class = PRSFTETask;
  v5 = [(PRSFTETask *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(replyCopy);
    reply = v5->_reply;
    v5->_reply = v6;
  }

  return v5;
}

- (void)triggerQuery:(BOOL)query
{
  v4 = +[PRSBagHandler sharedHandler];
  if ([v4 status] == 4)
  {
    v5 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PRSFTETask triggerQuery:v5];
    }

    (*(self->_reply + 2))();
  }

  else
  {
    reply = self->_reply;
    fteLocString = [v4 fteLocString];
    fteLearnMoreString = [v4 fteLearnMoreString];
    fteContinueString = [v4 fteContinueString];
    enabledDomains = [v4 enabledDomains];
    reply[2](reply, fteLocString, fteLearnMoreString, fteContinueString, enabledDomains, 0);
  }
}

@end