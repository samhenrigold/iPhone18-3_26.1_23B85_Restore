@interface CLPermissiveTimer
- (void)invalidate;
- (void)shouldFire;
@end

@implementation CLPermissiveTimer

- (void)invalidate
{
  os_unfair_lock_lock(&unk_1ED5FAD70);
  v3.receiver = self;
  v3.super_class = CLPermissiveTimer;
  [(CLTimer *)&v3 invalidate];
  os_unfair_lock_unlock(&unk_1ED5FAD70);
}

- (void)shouldFire
{
  os_unfair_lock_lock(&unk_1ED5FAD70);
  objc_msgSend_dbgAssertInside(self, v3, v4);
  v7 = objc_msgSend_handler(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_handler(self, v8, v9);
    v13 = objc_msgSend_copy(v10, v11, v12);

    os_unfair_lock_unlock(&unk_1ED5FAD70);
    v13[2]();
  }

  else
  {

    os_unfair_lock_unlock(&unk_1ED5FAD70);
  }
}

@end