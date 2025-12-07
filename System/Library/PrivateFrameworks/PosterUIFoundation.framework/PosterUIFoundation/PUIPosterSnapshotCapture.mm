@interface PUIPosterSnapshotCapture
@end

@implementation PUIPosterSnapshotCapture

uint64_t __34___PUIPosterSnapshotCapture__fire__block_invoke(uint64_t a1)
{
  v2 = PUILogSnapshotting(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __34___PUIPosterSnapshotCapture__fire__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  return [*(a1 + 32) _attemptSnapshot:*(a1 + 40)];
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = PUILogSnapshotting(WeakRetained);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    v15 = 0;
    v7 = [v3 _captureLevelSet:v6 error:&v15];
    v8 = v15;
    v9 = v8;
    if (v7)
    {
      v10 = PUILogSnapshotting(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_2();
      }

      [v3 _fire];
    }

    else
    {
      if (!v8)
      {
        v11 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A588];
        v23[0] = @"capture failed without error";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        v9 = [v11 pui_errorWithCode:0 userInfo:v12];
      }

      v13 = PUILogSnapshotting(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = *v5;
        *buf = 134218498;
        v17 = v3;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v9;
        _os_log_error_impl(&dword_1A8C85000, v13, OS_LOG_TYPE_ERROR, "(%p) capture of levelset %{public}@ failed: %{public}@", buf, 0x20u);
      }

      [v3 _finishCaptureWithError:v9];
    }
  }
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_48(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  [*(*(*(a1 + 40) + 8) + 40) invalidate];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && [*(a1 + 32) signal])
  {
    v5 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E696A588];
    v9[0] = @"timed out waiting for scene readiness";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v7 = [v5 pui_errorWithCode:8 userInfo:v6];
    [WeakRetained _finishCaptureWithError:v7];
  }
}

uint64_t __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (!a2)
  {
    v9 = PUILogSnapshotting(WeakRetained);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_52_cold_1();
    }

    goto LABEL_9;
  }

  *(WeakRetained + 32) = 1;
  [*(*(*(a1 + 48) + 8) + 40) invalidate];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  if (![*(a1 + 32) signal])
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  (*(*(a1 + 40) + 16))();
LABEL_5:
  v8 = 1;
LABEL_10:

  return v8;
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [*(a1 + 40) clientSettings];
    v8 = [v7 layers];

    obj = v8;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          v14 = [v13 valueForKey:@"level"];
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            v17 = [v13 valueForKey:@"contextID"];
            v18 = [v17 unsignedIntValue];

            v19 = objc_alloc(MEMORY[0x1E699FD10]);
            v20 = *(a1 + 64);
            *&m.a = *(a1 + 48);
            *&m.c = v20;
            *&m.tx = *(a1 + 80);
            CATransform3DMakeAffineTransform(&v26, &m);
            v21 = [v19 initWithContextID:v18 baseTransform:&v26];
            v22 = *(a1 + 32);
            v23 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
            [v22 bs_setSafeObject:v21 forKey:v23];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }
  }
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69DCAB8] pui_fallbackSnapshotImage];
  [v2 setImage:v3 forLevelSet:*(a1 + 40)];
}

void __52___PUIPosterSnapshotCapture__captureLevelSet_error___block_invoke_79(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) IOSurface];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 72)];
  [v2 setAttachment:v3 forKey:kPaperboardIOSurfaceInterfaceOrientationPropertiesKey];

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 80)];
  [v2 setAttachment:v4 forKey:kPaperboardIOSurfaceDeviceOrientationPropertiesKey];

  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 88)];
  [v2 setAttachment:v5 forKey:kPaperboardIOSurfaceDeviceScalePropertiesKey];

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 96);
  v20 = 0;
  v10 = [v6 captureSurface:v2 sceneSettings:v7 forLevelSet:v8 persistenceScale:&v20 error:v9];
  v11 = v20;
  v12 = v11;
  if (v10)
  {
    v13 = PUILogSnapshotting(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 56);
      *buf = 138543362;
      v22 = v14;
      v15 = "Captured levelset '%{public}@'";
      v16 = v13;
      v17 = 12;
LABEL_8:
      _os_log_impl(&dword_1A8C85000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else
  {
    if (!v11)
    {
      v18 = PFFunctionNameForAddress();
      v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v13 = PUILogSnapshotting(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 56);
      *buf = 138543618;
      v22 = v19;
      v23 = 2114;
      v24 = v12;
      v15 = "Error capturing levelset '%{public}@': %{public}@";
      v16 = v13;
      v17 = 22;
      goto LABEL_8;
    }
  }
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanup];
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 80) == 1)
  {
    v3 = *(a1 + 32);
    v4 = +[PUIPosterLevelSet compositeLevelSet];
    v5 = [v3 capturedSnapshotForLevelSet:v4];

    if (v5)
    {
      v6 = [MEMORY[0x1E69C5410] colorBoxesForImage:v5];
      v7 = [[PUIColorStatistics alloc] initWithColorBoxes:v6];
      [*(a1 + 32) captureColorStatistics:v7 error:0];
    }
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) pui_posterContents];
  [v8 updateWithPoster:v9];

  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = +[PUIImageOnDiskFormat defaultFormat];
  v23 = 0;
  v13 = [v10 buildWithOutputURL:v11 diskFormat:v12 error:&v23];
  v14 = v23;

  v15 = [*(a1 + 32) reset];
  if (v14)
  {
    v16 = PUILogSnapshotting(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2_cold_1(a1, v14, v16);
    }

    [*(a1 + 56) finishWithError:v14];
  }

  else
  {
    v17 = PUILogSnapshotting([*(a1 + 56) finishWithResult:v13]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 64));
      v19 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
      *buf = 134218240;
      v25 = WeakRetained;
      v26 = 2048;
      v27 = v19;
      _os_log_impl(&dword_1A8C85000, v17, OS_LOG_TYPE_DEFAULT, "(%p) Snapshot Finalized; much success; capture time %f", buf, 0x16u);
    }
  }

  v20 = dispatch_get_global_queue(17, 0);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_83;
  v21[3] = &unk_1E7854B70;
  objc_copyWeak(&v22, (a1 + 64));
  dispatch_async(v20, v21);

  objc_destroyWeak(&v22);
  objc_autoreleasePoolPop(v2);
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_83(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanup];
}

void __34___PUIPosterSnapshotCapture__fire__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_5(&dword_1A8C85000, a2, a3, "(%p) attempting snapshot after CA commit", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46___PUIPosterSnapshotCapture__attemptSnapshot___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53___PUIPosterSnapshotCapture__finishCaptureWithError___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v7 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
  v8 = 134218498;
  v9 = WeakRetained;
  v10 = 2114;
  v11 = a2;
  v12 = 2048;
  v13 = v7;
  _os_log_error_impl(&dword_1A8C85000, a3, OS_LOG_TYPE_ERROR, "(%p) Snapshot bundle failed: %{public}@; capture time %f", &v8, 0x20u);
}

@end