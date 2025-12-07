@interface TSTranslationClock
- (TSTranslationClock)initWithTranslationClock:(id)clock;
- (void)setPropertyUpdateQueue:(id)queue;
@end

@implementation TSTranslationClock

- (TSTranslationClock)initWithTranslationClock:(id)clock
{
  clockCopy = clock;
  v6 = clockCopy;
  if (!clockCopy)
  {
    [(TSTranslationClock *)self initWithTranslationClock:&v14];
    propertyUpdateQueue = v13;
    v8 = v14;
    goto LABEL_4;
  }

  v12.receiver = self;
  v12.super_class = TSTranslationClock;
  v7 = -[TSClock initWithClockIdentifier:](&v12, sel_initWithClockIdentifier_, [clockCopy clockIdentifier]);
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_impl, clock);
    v11.receiver = v8;
    v11.super_class = TSTranslationClock;
    propertyUpdateQueue = [(TSClock *)&v11 propertyUpdateQueue];
    [(TSXTranslationClock *)v8->_impl setPropertyUpdateQueue:?];
LABEL_4:
  }

  return v8;
}

- (void)setPropertyUpdateQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = TSTranslationClock;
  [(TSClock *)&v6 setPropertyUpdateQueue:queue];
  v5.receiver = self;
  v5.super_class = TSTranslationClock;
  propertyUpdateQueue = [(TSClock *)&v5 propertyUpdateQueue];
  [(TSXTranslationClock *)self->_impl setPropertyUpdateQueue:?];
}

- (void)initWithTranslationClock:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136316418;
    v7 = "kernelClock != nil";
    v8 = 2048;
    v9 = 0;
    v10 = 2048;
    v11 = 0;
    v12 = 2080;
    v13 = "";
    v14 = 2080;
    v15 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/API/TSTranslationClock.m";
    v16 = 1024;
    v17 = 35;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v6, 0x3Au);
  }

  *a3 = 0;
  *a2 = a1;
}

@end