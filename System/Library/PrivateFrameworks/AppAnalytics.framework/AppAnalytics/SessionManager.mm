@interface SessionManager
- (void)flushWithCallbackQueue:(id)queue completion:(id)completion;
@end

@implementation SessionManager

- (void)flushWithCallbackQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_1B69D72B0;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *self->accessQueue;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = queue;
  v12[4] = v9;
  v12[5] = v8;
  queueCopy = queue;

  sub_1B698BF94(v9);
  sub_1B69877A4(v10, sub_1B6A0BE34, v12);
  sub_1B69A3100(v9, v8);
}

@end