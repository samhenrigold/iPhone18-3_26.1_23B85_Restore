@interface IMDisplayLink_iOS
- (IMDisplayLink_iOS)initWithTarget:(id)target selector:(SEL)selector;
- (void)invalidate;
- (void)schedule;
@end

@implementation IMDisplayLink_iOS

- (IMDisplayLink_iOS)initWithTarget:(id)target selector:(SEL)selector
{
  v29.receiver = self;
  v29.super_class = IMDisplayLink_iOS;
  v4 = [(IMDisplayLink *)&v29 initWithTarget:target selector:selector];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_setPreferredFramesPerSecond_(v4, v5, 60, v7, v6);
    v13 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], v9, v10, v12, v11);
    objc_msgSend_setScreen_(v8, v14, v13, v16, v15);

    objc_msgSend_setRunLoopMode_(v8, v17, *MEMORY[0x277CBE738], v19, v18);
    v24 = objc_msgSend_currentRunLoop(MEMORY[0x277CBEB88], v20, v21, v23, v22);
    objc_msgSend_setRunLoop_(v8, v25, v24, v27, v26);
  }

  return v8;
}

- (void)schedule
{
  objc_msgSend_invalidate(self, a2, v2, v4, v3);
  v10 = objc_msgSend_screen(self, v6, v7, v9, v8);
  v13 = objc_msgSend_displayLinkWithTarget_selector_(v10, v11, self, v12, sel__displayLinkCallback);
  displayLink = self->_displayLink;
  self->_displayLink = v13;

  v15 = self->_displayLink;
  v20 = objc_msgSend_preferredFramesPerSecond(self, v16, v17, v19, v18);
  objc_msgSend_setPreferredFramesPerSecond_(v15, v21, v20, v23, v22);
  v24 = self->_displayLink;
  v36 = objc_msgSend_runLoop(self, v25, v26, v28, v27);
  v33 = objc_msgSend_runLoopMode(self, v29, v30, v32, v31);
  objc_msgSend_addToRunLoop_forMode_(v24, v34, v36, v35, v33);
}

- (void)invalidate
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    objc_msgSend_invalidate(displayLink, a2, v2, v4, v3);
    v7 = self->_displayLink;
    self->_displayLink = 0;
  }
}

@end