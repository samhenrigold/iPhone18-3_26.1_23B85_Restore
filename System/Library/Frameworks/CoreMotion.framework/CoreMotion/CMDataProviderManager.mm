@interface CMDataProviderManager
- (void)sendStreamMessageWithSynchronousReponse:(int)reponse withMsgName:(const void *)name;
- (void)startMockAlgo;
- (void)stopMockAlgo;
- (void)streamAccel100For:(int)for;
- (void)streamAccessoryDMFeaturesFor:(int)for;
- (void)streamAccessoryDMFor:(int)for;
- (void)streamAccessoryFitnessDMFor:(int)for;
- (void)streamBatchPedNetStepsFor:(int)for;
- (void)streamDMFor:(int)for;
- (void)streamElevationFor:(int)for;
- (void)streamHRFor:(int)for;
- (void)streamIMUFMFor:(int)for;
- (void)streamOdometerFor:(int)for;
- (void)streamPedNetStepsFor:(int)for;
- (void)streamStepsFor:(int)for;
- (void)stressTest:(int)test forSeconds:(int)seconds;
- (void)test:(int)test;
@end

@implementation CMDataProviderManager

- (void)sendStreamMessageWithSynchronousReponse:(int)reponse withMsgName:(const void *)name
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"CMDataProviderReadForNSecondsKey";
  v9[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&reponse);
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v9, &v8, 1);
  sub_19B6E72F8(&v6, name, &v7);
}

- (void)streamAccel100For:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderAccel100");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamDMFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderDM");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamAccessoryDMFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderAccessoryDM");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamAccessoryFitnessDMFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderAccessoryFitnessDM");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamStepsFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderSteps");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamPedNetStepsFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderPedNetSteps");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamBatchPedNetStepsFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderBatchPedNetSteps");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamHRFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderHR");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamOdometerFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderOdometer");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamElevationFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderElevation");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)test:(int)test
{
  v3 = *&test;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderTestLeech");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamAccessoryDMFeaturesFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderAccessoryDMFeatures");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)streamIMUFMFor:(int)for
{
  v3 = *&for;
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderIMUFM");
  objc_msgSend_sendStreamMessageWithSynchronousReponse_withMsgName_(self, v5, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)startMockAlgo
{
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderStartMockAlgo");
  objc_msgSend_sendMockAlgoMessage_(self, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)stopMockAlgo
{
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderStopMockAlgo");
  objc_msgSend_sendMockAlgoMessage_(self, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)stressTest:(int)test forSeconds:(int)seconds
{
  v4 = *&seconds;
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"CMDataProviderStreamIndexKey";
  v13[0] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&test);
  v12[1] = @"CMDataProviderReadForNSecondsKey";
  v13[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, v4);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v13, v12, 2);
  sub_19B428B50(__p, "kCLConnectionMessageDataProviderStressTest");
  objc_msgSend_sendStreamMessageWithSynchronousReponseDict_withMsgName_(self, v9, v8, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

@end