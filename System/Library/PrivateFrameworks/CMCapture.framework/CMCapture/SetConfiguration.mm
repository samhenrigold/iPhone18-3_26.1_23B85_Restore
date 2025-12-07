@interface SetConfiguration
@end

@implementation SetConfiguration

void __captureSession_SetConfiguration_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[114]._os_unfair_lock_opaque - 1 > 1)
  {
    os_unfair_lock_lock(v2 + 96);
    v4 = *(a1 + 32);
    *(v4 + 464) = 0;
    if ([*(v4 + 424) count])
    {
      [*(*(a1 + 32) + 424) filterUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_1378)}];
    }

    os_unfair_lock_unlock((*(a1 + 32) + 384));
    v5 = *(a1 + 40);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!_FigIsCurrentDispatchQueue())
    {
      __captureSession_SetConfiguration_block_invoke_cold_1();
    }

    os_unfair_lock_lock((DerivedStorage + 384));
    v7 = *(DerivedStorage + 504);
    if (v7 == *(DerivedStorage + 512))
    {
      os_unfair_lock_unlock((DerivedStorage + 384));
      v8 = 0;
    }

    else
    {
      v8 = v7;
      os_unfair_lock_unlock((DerivedStorage + 384));
      if (v8)
      {
        v9 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v8 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime(v5) restrictions:*(DerivedStorage + 496)];
        if (v9)
        {
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = [(FigCaptureSessionParsedConfiguration *)v9 parsedCameraSourceConfigurations];
          v18 = [(NSArray *)v17 countByEnumeratingWithState:&v42 objects:v41 count:16];
          if (v18)
          {
            v19 = v18;
            v40 = v8;
            v20 = *v43;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v43 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [*(*(&v42 + 1) + 8 * i) cameraConfiguration];
                if (([v22 hasSetVideoZoomFactorOnCaptureSource] & 1) == 0)
                {
                  v23 = [v22 source];
                  v24 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                  if (!v24)
                  {
                    v25 = 4294954514;
LABEL_32:
                    __captureSession_SetConfiguration_block_invoke_cold_5(v25);
                    goto LABEL_39;
                  }

                  v25 = v24(v23);
                  if (v25)
                  {
                    goto LABEL_32;
                  }

                  v26 = [v22 source];
                  v27 = MEMORY[0x1E696AD98];
                  [v22 videoZoomFactor];
                  v28 = [v27 numberWithFloat:?];
                  v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v29)
                  {
                    v30 = 4294954514;
LABEL_34:
                    __captureSession_SetConfiguration_block_invoke_cold_4(v30);
                    goto LABEL_39;
                  }

                  v30 = v29(v26, @"VideoZoomFactor", v28);
                  if (v30)
                  {
                    goto LABEL_34;
                  }

                  v31 = [v22 source];
                  v32 = MEMORY[0x1E696AD98];
                  [v22 simulatedAperture];
                  v33 = [v32 numberWithFloat:?];
                  v34 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v34)
                  {
                    v35 = 4294954514;
LABEL_36:
                    __captureSession_SetConfiguration_block_invoke_cold_3(v35);
                    goto LABEL_39;
                  }

                  v35 = v34(v31, @"SimulatedAperture", v33);
                  if (v35)
                  {
                    goto LABEL_36;
                  }

                  v36 = [v22 source];
                  v37 = *(*(CMBaseObjectGetVTable() + 16) + 16);
                  if (!v37)
                  {
                    v38 = 4294954514;
LABEL_38:
                    __captureSession_SetConfiguration_block_invoke_cold_2(v38);
                    goto LABEL_39;
                  }

                  v38 = v37(v36);
                  if (v38)
                  {
                    goto LABEL_38;
                  }

                  [v22 setHasSetVideoZoomFactorOnCaptureSource:1];
                  [v22 setHasSetSimulatedApertureOnCaptureSource:1];
                }
              }

              v19 = [(NSArray *)v17 countByEnumeratingWithState:&v42 objects:v41 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

LABEL_39:
            v8 = v40;
          }
        }

        else
        {
          __captureSession_SetConfiguration_block_invoke_cold_6(0, v10, v11, v12, v13, v14, v15, v16, v39);
        }
      }
    }
  }

  else
  {
    v3 = *(a1 + 40);

    captureSession_commitInflightConfiguration(v3);
  }
}

uint64_t __captureSession_SetConfiguration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3(v0);
}

@end