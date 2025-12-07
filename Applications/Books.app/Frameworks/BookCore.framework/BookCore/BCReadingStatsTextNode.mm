@interface BCReadingStatsTextNode
- (BCCFI)cachedCFI;
- (void)didTurnIntoFault;
@end

@implementation BCReadingStatsTextNode

- (void)didTurnIntoFault
{
  cachedCFI = self->_cachedCFI;
  self->_cachedCFI = 0;

  v4.receiver = self;
  v4.super_class = BCReadingStatsTextNode;
  [(BCReadingStatsTextNode *)&v4 didTurnIntoFault];
}

- (BCCFI)cachedCFI
{
  v3 = [(BCReadingStatsTextNode *)self cfi];
  v4 = v3;
  cachedCFI = self->_cachedCFI;
  if (cachedCFI)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = objc_autoreleasePoolPush();
    v15 = 0;
    v8 = [BCCFI cfiWithString:v4 error:&v15];
    v9 = v15;
    v10 = self->_cachedCFI;
    self->_cachedCFI = v8;

    if (v9)
    {
      v12 = BCReadingStatisticsLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1EA504(v4, v9, v12);
      }
    }

    objc_autoreleasePoolPop(v7);

    cachedCFI = self->_cachedCFI;
  }

  v13 = cachedCFI;

  return cachedCFI;
}

@end