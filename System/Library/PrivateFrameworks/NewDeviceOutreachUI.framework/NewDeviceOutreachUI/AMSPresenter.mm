@interface AMSPresenter
- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion;
- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion params:(id)params;
@end

@implementation AMSPresenter

- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion
{
  v4 = *self->onFinish;

  v4(completion, 0);
}

- (void)amsUIViewFinishedWithCompletion:(unint64_t)completion params:(id)params
{
  if (params)
  {
    v6 = sub_25BDDFE08();
  }

  else
  {
    v6 = 0;
  }

  v7 = *self->onFinish;

  v7(completion, v6);
}

@end