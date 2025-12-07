@interface CLSNotificationBannerWindow
+ (id)bannerWindow;
+ (id)queue;
+ (void)enqueBanner:(id)banner;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CLSNotificationBannerWindow)init;
- (void)_hideBanner:(id)banner quickly:(BOOL)quickly;
- (void)_showBanner:(id)banner;
- (void)handlePan:(id)pan;
@end

@implementation CLSNotificationBannerWindow

+ (id)bannerWindow
{
  objc_sync_enter(@"CLSNotificationBannerSyncObject");
  v2 = qword_27ED78318;
  objc_sync_exit(@"CLSNotificationBannerSyncObject");

  return v2;
}

- (CLSNotificationBannerWindow)init
{
  v6 = objc_msgSend_sharedApplication(MEMORY[0x277D75128], a2, v2, v3, v4);
  v11 = sub_24351D11C(v6, v7, v8, v9, v10);
  v16 = objc_msgSend_windowScene(v11, v12, v13, v14, v15);
  v43.receiver = self;
  v43.super_class = CLSNotificationBannerWindow;
  v17 = [(CLSNotificationBannerWindow *)&v43 initWithWindowScene:v16];
  v21 = v17;
  if (v17)
  {
    objc_msgSend_setOpaque_(v17, v18, 0, v19, v20);
    objc_msgSend_setUserInteractionEnabled_(v21, v22, 1, v23, v24);
    objc_msgSend_setHidden_(v21, v25, 0, v26, v27);
    v28 = objc_alloc_init(CLSNotificationBannerViewController);
    v29 = *(v21 + 920);
    *(v21 + 920) = v28;

    objc_msgSend_setRootViewController_(v21, v30, *(v21 + 920), v31, v32);
    v33 = objc_alloc(MEMORY[0x277D757F8]);
    v36 = objc_msgSend_initWithTarget_action_(v33, v34, v21, sel_handlePan_, v35);
    objc_msgSend_addGestureRecognizer_(v21, v37, v36, v38, v39);
    v40 = dispatch_semaphore_create(1);
    v41 = *(v21 + 928);
    *(v21 + 928) = v40;
  }

  return v21;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v12 = objc_msgSend_currentBannerViewController(self, v8, v9, v10, v11);
  v16 = objc_msgSend_windowPointInside_withEvent_(v12, v13, eventCopy, v14, v15, x, y);

  return v16;
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  v12 = objc_msgSend_currentBannerViewController(self, v5, v6, v7, v8);
  objc_msgSend_handleWindowPan_(v12, v9, panCopy, v10, v11);
}

- (void)_showBanner:(id)banner
{
  bannerCopy = banner;
  v9 = objc_msgSend_currentBannerViewController(self, v5, v6, v7, v8);
  objc_msgSend_addBannerView_(v9, v10, bannerCopy, v11, v12);

  v21 = objc_msgSend_currentBannerViewController(self, v13, v14, v15, v16);
  objc_msgSend_showCurrentBanner(v21, v17, v18, v19, v20);
}

- (void)_hideBanner:(id)banner quickly:(BOOL)quickly
{
  quicklyCopy = quickly;
  v9 = objc_msgSend_currentBannerViewController(self, a2, banner, quickly, v4);
  objc_msgSend_hideBannerQuickly_(v9, v6, quicklyCopy, v7, v8);
}

+ (id)queue
{
  if (qword_27ED78328 != -1)
  {
    dispatch_once(&qword_27ED78328, &unk_28563EEF8);
  }

  v3 = qword_27ED78320;

  return v3;
}

+ (void)enqueBanner:(id)banner
{
  bannerCopy = banner;
  if (!atomic_fetch_add_explicit(&dword_27ED78314, 1u, memory_order_relaxed))
  {
    objc_sync_enter(@"CLSNotificationBannerSyncObject");
    v9 = objc_alloc_init(CLSNotificationBannerWindow);
    v10 = qword_27ED78318;
    qword_27ED78318 = v9;

    objc_sync_exit(@"CLSNotificationBannerSyncObject");
  }

  v11 = objc_msgSend_queue(self, v4, v5, v6, v7);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_24351D7C8;
  block[3] = &unk_278DBEF40;
  v14 = bannerCopy;
  v12 = bannerCopy;
  dispatch_async(v11, block);
}

@end