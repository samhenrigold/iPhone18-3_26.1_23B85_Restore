@interface MKLocationShifter
@end

@implementation MKLocationShifter

void __91___MKLocationShifter__prepareShiftForLocation_withCompletionHandler_withShiftRequestBlock___block_invoke(uint64_t a1, const char *a2, double a3, double a4)
{
  v16 = 0u;
  memset(v17, 0, 60);
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  memset(&v13[2], 0, 32);
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_msgSend_clientLocation(v7, a2);
    v7 = *(a1 + 32);
  }

  *(&v13[2] + 4) = a3;
  *(&v13[2] + 12) = a4;
  [v7 rawCourse];
  *(v15 + 12) = v8;
  *(v17 + 4) = a3;
  *(v17 + 12) = a4;
  DWORD1(v17[2]) = 2;
  v9 = objc_alloc(MEMORY[0x1E6985C40]);
  v10 = [*(a1 + 32) coarseMetaData];
  v12[6] = v17[0];
  v12[7] = v17[1];
  v13[0] = v17[2];
  *(v13 + 12) = *(&v17[2] + 12);
  v12[2] = v14;
  v12[3] = v15[0];
  v12[4] = v15[1];
  v12[5] = v16;
  v12[0] = v13[2];
  v12[1] = v13[3];
  v11 = [v9 initWithClientLocation:v12 coarseMetaData:v10];

  (*(*(a1 + 40) + 16))();
}

void __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 8);
  v7 = a3;
  v8 = a2;
  [v5 horizontalAccuracy];
  v10 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72___MKLocationShifter_shiftLocation_withCompletionHandler_callbackQueue___block_invoke_2;
  v11[3] = &unk_1E76C95A8;
  v12 = *(a1 + 56);
  [v6 shiftLatLng:v8 accuracy:v7 withCompletionHandler:0 mustGoToNetworkCallback:v11 errorHandler:*(a1 + 48) callbackQueue:v10];
}

void __58___MKLocationShifter_shiftLocation_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 8);
  v6 = a3;
  v7 = a2;
  [v4 horizontalAccuracy];
  [v5 shiftLatLng:v7 accuracy:v6 withCompletionHandler:0 mustGoToNetworkCallback:0 errorHandler:MEMORY[0x1E69E96A0] callbackQueue:?];
}

@end