uint64_t sub_23BD1D2D0(uint64_t a1)
{
  [*(a1 + 32) connectToDaemon];
  v2 = *(a1 + 32);

  return MEMORY[0x2821F9670](v2, sel_startUnreadCountObservation);
}

void sub_23BD1D30C(uint64_t a1)
{
  if ([*(a1 + 32) isConnectedToDaemon])
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277D18D40] sharedRegistry];
    [v2 setInitialUnreadCount:{objc_msgSend(v3, "unreadCount")}];
  }
}

uint64_t sub_23BD1D49C(uint64_t a1)
{
  [*(a1 + 32) stopUnreadCountObservation];
  v2 = *(a1 + 32);

  return [v2 disconnectFromDaemon];
}

void sub_23BD1D658(uint64_t a1)
{
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_23BD20CE0();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BD1D708;
  block[3] = &unk_278B93128;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t sub_23BD1D708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentSubscribers];
  [v2 notifySubscribersAboutNewUnreadCount:v3];

  v4 = *(a1 + 32);

  return MEMORY[0x2821F9670](v4, sel_setIsConnectedToDaemon_);
}

void sub_23BD1D93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23BD1D960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained currentSubscribers];
    [v3 notifySubscribersAboutNewUnreadCount:v2];

    WeakRetained = v3;
  }
}

void sub_23BD1DDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23BD1DDE4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23BD1DDFC(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 firstObject];

  return MEMORY[0x2821F96F8]();
}

void sub_23BD1DF14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_23BD1E250(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCommunicationPolicies:v2];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 delegate];
  [v4 invalidateEntries];
}

uint64_t sub_23BD1FC8C()
{
  qword_27E1C4168 = objc_alloc_init(CKMessagesComplicationImageProvider);

  return MEMORY[0x2821F96F8]();
}

void sub_23BD1FE9C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_23BD2012C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = +[CKMessagesComplicationSpecs bubbleTintColor];
  [v3 set];

  [*(a1 + 32) drawInRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  if (*(a1 + 80) == 1)
  {
    CGContextSetBlendMode([v10 CGContext], kCGBlendModeClear);
    v4 = [*(a1 + 40) bubbleText];
    [*(a1 + 40) bubbleTextOrigin];
    v6 = v5;
    v8 = v7;
    v9 = [*(a1 + 40) textAttributes];
    [v4 drawAtPoint:v9 withAttributes:{v6, v8}];
  }
}

void sub_23BD20BF0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_23BD1C000, a2, OS_LOG_TYPE_DEBUG, "added subscriber %{public}@", &v2, 0xCu);
}

void sub_23BD20C68(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_23BD1C000, a2, OS_LOG_TYPE_DEBUG, "removed subscriber %{public}@", &v2, 0xCu);
}

void sub_23BD20DE4()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_23BD1F6E8();
  _os_log_error_impl(&dword_23BD1C000, v0, OS_LOG_TYPE_ERROR, "unable to request communication policies with error: %{public}@", v1, 0xCu);
}

void sub_23BD20E58()
{
  sub_23BD1F6E8();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD20EC8()
{
  sub_23BD1F6E8();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_23BD20F38()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD20F74()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD20FB0()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_23BD21064(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  sub_23BD1F6E8();
  v7 = 2050;
  v8 = a2;
  _os_log_debug_impl(&dword_23BD1C000, a3, OS_LOG_TYPE_DEBUG, "creating template for family: %{public}@, unread: %{public}lu", v6, 0x16u);
}

void sub_23BD2111C()
{
  sub_23BD1DF30();
  sub_23BD1F6DC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}