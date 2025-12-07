void fps_disposeCallSetContentsChangedOnLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForCallSetContentsChangedOnLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call setContentsChanged");
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non layers: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_callSetContentsChangedOnLayers(CFArrayRef *a1)
{
  v2 = *a1;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        [CFArrayGetValueAtIndex(*a1 i)];
      }
    }
  }

  return 0;
}

void fps_disposeReleaseContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleaseContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FigCFReleaseAndClear");
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_callRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return 0;
}

void fps_disposeReleaseOSTransactionContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleaseOSTransactionContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FigOSReleaseAndClear");
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_callReleaseOSTransaction(id *a1)
{
  if (*a1)
  {

    *a1 = 0;
  }

  return 0;
}

void fps_disposeClearContentsAndRemoveFromSuperLayerContext(id *a1)
{
  if (*a1)
  {
  }

  free(a1);
}

__CFString *fps_copyDescriptionForClearContentsAndRemoveFromSuperLayerContext(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call setContents:nil and removeFromSuperLayerContext");
  CFStringAppendFormat(Mutable, 0, @"\non: %@", [*a1 description]);
  return Mutable;
}

uint64_t fps_callClearContentsAndRemoveFromSuperLayer(id *a1)
{
  [*a1 setContents:0];
  [*a1 removeFromSuperlayer];

  *a1 = 0;
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform(const void *a1, void *a2, void *a3, int a4, char a5, char a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v37 = malloc_type_malloc(0xA8uLL, 0x1080040CAC251C5uLL);
  if (v37)
  {
    v38 = v37;
    *v37 = a2;
    v39 = a2;
    *(v38 + 8) = a3;
    v40 = a3;
    *(v38 + 16) = a9;
    *(v38 + 24) = a10;
    *(v38 + 32) = a11;
    *(v38 + 40) = a12;
    *(v38 + 48) = a13;
    *(v38 + 56) = a14;
    *(v38 + 64) = a15;
    *(v38 + 72) = a16;
    *(v38 + 80) = a4;
    *(v38 + 88) = a17;
    *(v38 + 96) = a18;
    *(v38 + 104) = a19;
    *(v38 + 112) = a20;
    *(v38 + 120) = a21;
    *(v38 + 128) = a22;
    *(v38 + 136) = a23;
    *(v38 + 144) = a24;
    *(v38 + 152) = a5;
    *(v38 + 153) = a6;
    *(v38 + 154) = a7;
    *(v38 + 160) = a25;

    return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a8, v38, fps_disposeCallUpdateLayerTransform, fps_copyDescriptionForCallUpdateLayerTransform, fps_callUpdateLayerTransform);
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForUpdatingLayerTransform_cold_1(&v46);
    return v46;
  }
}

void fps_disposeCallUpdateLayerTransform(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForCallUpdateLayerTransform(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call updateLayerTransform");
  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\n video layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if ((v4 & 4) == 0)
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    CFStringAppendFormat(Mutable, 0, @" flip_X ");
    v4 = *(a1 + 80);
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  CFStringAppendFormat(Mutable, 0, @" rotate 90 degree ");
  v4 = *(a1 + 80);
  if ((v4 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
LABEL_6:
    CFStringAppendFormat(Mutable, 0, @" flip_Y ");
    v4 = *(a1 + 80);
  }

LABEL_7:
  CFStringAppendFormat(Mutable, 0, @"\n UpdateLayer to sourceRect : [%f, %f, %f, %f]; destRect : [%f, %f, %f, %f]; symmetricTransform : %x; avcRect : [%f, %f, %f, %f]; avcPresentationRect : [%f, %f, %f, %f]; maskingLayerHidden : NO", *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), v4, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144));
  return Mutable;
}

uint64_t fps_callUpdateLayerTransform(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v25 = *(a1 + 48);
  v23 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 136);
  v8 = *(a1 + 144);
  if ((v7 & 4) != 0)
  {
    v10 = *(a1 + 72);
  }

  else
  {
    v10 = *(a1 + 64);
  }

  v27 = *(a1 + 64);
  if ((v7 & 4) != 0)
  {
    v11 = *(a1 + 64);
  }

  else
  {
    v11 = *(a1 + 72);
  }

  if (!*(a1 + 154))
  {
    v12 = MEMORY[0x1E6979518];
    tya = v10;
    v13 = v11;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 160)];
    [v12 setValue:v14 forKey:*MEMORY[0x1E697A018]];
    v11 = v13;
    v10 = tya;
  }

  if (*(a1 + 153))
  {
    ty = v11;
    v15 = v8 * (v11 / v5);
    [*(a1 + 8) setAnchorPoint:{v2 / v9, v3 / v8}];
    [*(a1 + 8) setBounds:{0.0, 0.0, v9 * (v10 / v4), v15}];
    [*a1 setFrame:{v25, v23, v27, v6}];
    v16 = *MEMORY[0x1E695EFD0];
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v31.a = *MEMORY[0x1E695EFD0];
    *&v31.c = v17;
    v18 = *(MEMORY[0x1E695EFD0] + 32);
    *&v31.tx = v18;
    if (v7)
    {
      v24 = v17;
      v26 = v16;
      v20 = v18;
      CGAffineTransformMakeScale(&v30, -1.0, 1.0);
      *&t2.a = v26;
      *&t2.c = v24;
      *&t2.tx = v20;
      CGAffineTransformConcat(&v31, &t2, &v30);
      CGAffineTransformMakeTranslation(&t2, v10, 0.0);
      t1 = v31;
      CGAffineTransformConcat(&v30, &t1, &t2);
      v31 = v30;
      if ((v7 & 2) == 0)
      {
LABEL_12:
        if ((v7 & 4) == 0)
        {
LABEL_14:
          [*(a1 + 8) setAffineTransform:{&v31, v20}];
          goto LABEL_15;
        }

LABEL_13:
        CGAffineTransformMakeRotation(&t2, 1.57079633);
        t1 = v31;
        CGAffineTransformConcat(&v30, &t1, &t2);
        v31 = v30;
        CGAffineTransformMakeTranslation(&t2, v27, 0.0);
        t1 = v31;
        CGAffineTransformConcat(&v30, &t1, &t2);
        v31 = v30;
        goto LABEL_14;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_12;
    }

    CGAffineTransformMakeScale(&t2, 1.0, -1.0);
    t1 = v31;
    CGAffineTransformConcat(&v30, &t1, &t2);
    v31 = v30;
    CGAffineTransformMakeTranslation(&t2, 0.0, ty);
    t1 = v31;
    CGAffineTransformConcat(&v30, &t1, &t2);
    v31 = v30;
    if ((v7 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_15:
  if (*(a1 + 152))
  {
    [*a1 setHidden:0];
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeForHidingLayer(const void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v6 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
    if (v6)
    {
      v7 = v6;
      *v6 = a2;
      v8 = a2;

      return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a3, v7, fps_disposeCallHideMaskingLayer, fps_copyDescriptionForCallHideMaskingLayer, fps_callHideMaskingLayer);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeForHidingLayer_cold_2(&v11);
    return v11;
  }
}

void fps_disposeCallHideMaskingLayer(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForCallHideMaskingLayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call hideMaskingLayer");
  CFStringAppendFormat(Mutable, 0, @"\n maksking layer : %@", [*a1 description]);
  return Mutable;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer(const void *a1, void *a2, void *a3, uint64_t a4)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a3)
  {
    v8 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
    if (v8)
    {
      v9 = v8;
      v8[1] = a3;
      v10 = a3;
      *(v9 + 16) = [*(v9 + 8) superlayer];
      FigObjectRecordMethodCallsForObject();
      *v9 = a2;
      v11 = a2;

      return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v9, fps_disposeTargetMirroringObserverAtDisplayOfCALayer, fps_copyDescriptionForTargetMirroringObserverAtDisplayOfCALayer, fps_targetMirroringObserverAtDisplayOfCALayer);
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToTargetMirroringObserverAtDisplayOfCALayer_cold_2(&v14);
    return v14;
  }
}

void fps_disposeTargetMirroringObserverAtDisplayOfCALayer(id *a1)
{
  FigObjectRecordMethodCallsForObject();
  FigSurfaceObjectMethodCallsBeforeCrash();

  free(a1);
}

__CFString *fps_copyDescriptionForTargetMirroringObserverAtDisplayOfCALayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"TargetMirroringObserverAtDisplayOfCALayer");
  CFStringAppendFormat(Mutable, 0, @"\n observer : %@", [*a1 description]);
  CFStringAppendFormat(Mutable, 0, @"\n videoLayer : %@", [a1[1] description]);
  CFStringAppendFormat(Mutable, 0, @"\n videoLayerParent : %@", [a1[2] description]);
  return Mutable;
}

uint64_t fps_targetMirroringObserverAtDisplayOfCALayer(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a1;
  context = objc_autoreleasePoolPush();
  v1 = *(v18 + 8);
  if (v1)
  {
    v2 = *MEMORY[0x1E6979698];
    v3 = *MEMORY[0x1E69796A0];
    while (1)
    {
      v4 = [objc_msgSend(v1 context];
      v5 = [v4 objectForKey:v2];
      if (v5)
      {
        v6 = [v5 unsignedIntValue];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = [MEMORY[0x1E6979328] displays];
        v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
LABEL_6:
          v11 = 0;
          while (1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            if (v6 == [v12 displayId])
            {
              break;
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v9)
              {
                goto LABEL_6;
              }

              goto LABEL_14;
            }
          }

          v13 = [v12 name];
          if (v13)
          {
            break;
          }
        }
      }

LABEL_14:
      v13 = [v4 objectForKey:v3];
      if (v13)
      {
        break;
      }

      v1 = [v1 superlayer];
      if (!v1)
      {
        goto LABEL_16;
      }
    }

    v14 = v13;
    v15 = context;
  }

  else
  {
LABEL_16:
    v14 = [objc_msgSend(MEMORY[0x1E6979328] mainDisplay];
    v15 = context;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v14];
  if (*v18)
  {
    [*v18 setBaseDisplayList:v16];
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);
  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification(const void *a1, void *a2, void *a3, int a4, const void *a5, const void *a6, uint64_t a7)
{
  if (a2)
  {
    if (a3)
    {
      v14 = malloc_type_malloc(0x28uLL, 0x10E004019DEF5ECuLL);
      if (v14)
      {
        v15 = v14;
        *v14 = a2;
        v16 = a2;
        *(v15 + 8) = a3;
        v17 = a3;
        *(v15 + 16) = a5;
        if (a5)
        {
          CFRetain(a5);
        }

        *(v15 + 32) = a6;
        if (a6)
        {
          CFRetain(a6);
        }

        *(v15 + 24) = a4;

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a7, v15, fps_disposeConfigureFigVideoQueueHostLayerAndPostNotification, fps_copyDescriptionForConfigureFigVideoQueueHostLayerAndPostNotification, fps_configureFigVideoQueueHostLayerAndPostNotification);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_1(&v19);
        return v19;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_2(&v20);
      return v20;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToConfigureFigVideoQueueHostLayerAndPostNotification_cold_3(&v21);
    return v21;
  }
}

void fps_disposeConfigureFigVideoQueueHostLayerAndPostNotification(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForConfigureFigVideoQueueHostLayerAndPostNotification(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Call FVQClientSetupHostLayer");
  CFStringAppendFormat(Mutable, 0, @"\n clientVideoLayer : %@; hostLayer : %@ ", [a1[1] description], objc_msgSend(*a1, "description"));
  return Mutable;
}

uint64_t fps_configureFigVideoQueueHostLayerAndPostNotification(void *a1)
{
  [*a1 removeFromSuperlayer];
  [*a1 setContextId:*(a1 + 6)];
  [*a1 setEdgeAntialiasingMask:0];
  [*a1 setFillMode:*MEMORY[0x1E69797E0]];
  [a1[1] addSublayer:*a1];
  if (a1[4])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return 0;
}

uint64_t FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer(const void *a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  if (a2)
  {
    if (a3)
    {
      v16 = malloc_type_malloc(0x30uLL, 0x1080040DAA165ECuLL);
      if (v16)
      {
        v17 = v16;
        *v16 = a2;
        v18 = a2;
        *(v17 + 8) = a3;
        v19 = a3;
        *(v17 + 16) = a5;
        *(v17 + 24) = a6;
        *(v17 + 32) = a7;
        *(v17 + 40) = a8;

        return FigDeferredTransactionAppendChangeWithCallback(a1, 1, a4, v17, fps_disposeResizeClientVideoLayerWithinHostLayer, fps_copyDescriptionForResizeClientVideoLayerWithinHostLayer, fps_resizeClientVideoLayerWithinHostLayer);
      }

      else
      {
        FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_1(&v21);
        return v21;
      }
    }

    else
    {
      FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_2(&v22);
      return v22;
    }
  }

  else
  {
    FPSupport_AppendDeferredTransactionChangeToResizeClientVideoLayerWithinHostLayer_cold_3(&v23);
    return v23;
  }
}

void fps_disposeResizeClientVideoLayerWithinHostLayer(id *a1)
{

  free(a1);
}

__CFString *fps_copyDescriptionForResizeClientVideoLayerWithinHostLayer(id *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"ResizeClientVideoLayerWithinHostLayer");
  CFStringAppendFormat(Mutable, 0, @"\n clientVideoLayer : %@; hostLayer : %@ ", [a1[1] description], objc_msgSend(*a1, "description"));
  return Mutable;
}

uint64_t fps_resizeClientVideoLayerWithinHostLayer(uint64_t a1)
{
  v2 = *a1;
  [*(a1 + 8) bounds];
  [v2 setFrame:?];
  if (*(a1 + 32) > 0.0 && *(a1 + 40) > 0.0)
  {
    [*(a1 + 8) bounds];
    v4 = v3;
    v6 = v5;
    memset(&v12, 0, sizeof(v12));
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    CGAffineTransformMakeScale(&v12, v3 / v7, v5 / v8);
    v10 = v12;
    CGAffineTransformTranslate(&v11, &v10, (v4 - v7) * 0.5, (v6 - v8) * 0.5);
    v12 = v11;
    [*a1 setAffineTransform:&v11];
  }

  return 0;
}

void fps_disposeReleasePlayerResourcesOnQueueContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    dispatch_release(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForReleasePlayerResourcesOnQueueContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"Release player resources");
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\nof: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

uint64_t fps_releasePlayerResources(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
  }

  v3 = *(a1 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __fps_releasePlayerResources_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v2;
  dispatch_async(v3, block);
  return 0;
}

void fps_disposeSetCAImageQueueSlotsOnVideoLayersContext(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  free(a1);
}

__CFString *fps_copyDescriptionForSetImageQueueSlotsOnVideoLayersContext(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"Set image queue slots: %@", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = FigCFCopyCompactDescription();
  CFStringAppendFormat(Mutable, 0, @"\non video layers: %@", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t fps_setCAImageQueueSlotsOnVideoLayers(CFArrayRef *a1)
{
  v2 = a1[1];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v4 = CFArrayGetCount(v4);
  }

  if (Count >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = Count;
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*a1, i);
      v8 = CFArrayGetValueAtIndex(a1[1], i);
      CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr);
      [ValueAtIndex setContentsSlotID:valuePtr];
    }
  }

  return 0;
}

uint64_t FPSupport_HandlePlayerSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, BOOL *a5, const __CFDictionary **a6, void *a7)
{
  v13[0] = 0;
  v13[1] = a1;
  v13[2] = a3;
  v13[3] = a4;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    return fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(v13, a2, a5, a6, a7);
  }

  FPSupport_HandlePlayerSetPropertiesAndCopyModification_cold_1(&v14);
  return v14;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4, BOOL *a5, const __CFDictionary **a6, void *a7)
{
  v13[1] = a1;
  v13[0] = 1;
  v13[2] = a3;
  v13[3] = a4;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a4)
  {
    return fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(v13, a2, a5, a6, a7);
  }

  FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification_cold_1(&v14);
  return v14;
}

uint64_t FPSupport_HandlePlayerSetPropertyAndCopyModification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, CFTypeRef *a7, CFTypeRef *a8)
{
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = a4;
  v15[3] = a5;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    return fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(v15, a2, a3, a6, a7, a8);
  }

  FPSupport_HandlePlayerSetPropertyAndCopyModification_cold_1(&v16);
  return v16;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, CFTypeRef *a7, CFTypeRef *a8)
{
  v15[0] = 1;
  v15[1] = a1;
  v15[2] = a4;
  v15[3] = a5;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (a5)
  {
    return fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(v15, a2, a3, a6, a7, a8);
  }

  FPSupport_HandlePlaybackItemSetPropertyAndCopyModification_cold_1(&v16);
  return v16;
}

uint64_t FPSupport_HasTrackOfType(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v11 = 0;
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      if (v4(a1, v6, a2, &cf, &v11))
      {
        break;
      }

      if (a2 == 1986618469)
      {
        desc = 0;
        if (fpSupport_copyFormatDescription(cf, &desc))
        {
          break;
        }

        v7 = desc;
        if (desc)
        {
          MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
          if (fpSupport_isVideoCodecTypeSupported(MediaSubType, 0) || CVPixelFormatDescriptionGetDescriptionWithPixelFormatType())
          {
            v5 = 1;
          }

          CFRelease(v7);
        }
      }

      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      ++v6;
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL fpSupport_isVideoCodecTypeSupported(uint64_t a1, char a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  v5 = MEMORY[0x1E695E4D0];
  v6 = MEMORY[0x1E695E4D0];
  if ((a2 & 1) == 0)
  {
    if ((a2 & 4) == 0)
    {
      if ((a2 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6984200], *v6);
  if ((a2 & 2) == 0)
  {
LABEL_4:
    if ((a2 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  CFDictionarySetValue(v4, *MEMORY[0x1E69841E0], *v5);
  if ((a2 & 8) == 0)
  {
LABEL_5:
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  CFDictionarySetValue(v4, *MEMORY[0x1E69841F0], *v5);
  if ((a2 & 0x10) == 0)
  {
LABEL_6:
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  CFDictionarySetValue(v4, *MEMORY[0x1E6984218], *v5);
  if ((a2 & 0x20) != 0)
  {
LABEL_7:
    CFDictionarySetValue(v4, *MEMORY[0x1E69841F8], *v5);
  }

LABEL_8:
  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance();
  if (v4)
  {
    CFRelease(v4);
  }

  return VideoDecoderInstance == 0;
}

uint64_t FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray(const __CFArray *a1, CFAllocatorRef allocator, __CFArray **a3, CFMutableArrayRef *a4)
{
  theArray = 0;
  if (!a1)
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_3(&v30);
LABEL_33:
    v23 = v30;
    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_2(&v30);
    goto LABEL_33;
  }

  v9 = Mutable;
  v10 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v10)
  {
    v27 = a3;
    v28 = a4;
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      v14 = *MEMORY[0x1E6963150];
      v15 = *(MEMORY[0x1E6963150] + 8);
      v25 = *(MEMORY[0x1E69631B0] + 8);
      v26 = *MEMORY[0x1E69631B0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v13);
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v17)
        {
          v17(ValueAtIndex, allocator, &theArray);
        }

        v18 = v10;
        if (theArray)
        {
          if (CFArrayGetCount(theArray) == 1 && (v19 = CFArrayGetValueAtIndex(theArray, 0), FigDataChannelGroupGetCountOfDataChannels(v19, v20) == 1) && ((DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(v19, 0), MEMORY[0x19A8D3320]() == 1) && (v31.value = *"vyna", *&v31.category = 0x40000005706C7972, CMTagCollectionContainsTag(DataChannelByIndex, v31)) || (*&v32.category = v14, v32.value = v15, CMTagCollectionContainsTag(DataChannelByIndex, v32)) && (v33.value = v25, *&v33.category = v26, CMTagCollectionContainsTag(DataChannelByIndex, v33))))
          {
            v18 = v9;
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
              v18 = v9;
            }
          }

          else
          {
            v18 = v10;
            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
              v18 = v10;
            }
          }
        }

        CFArrayAppendValue(v18, ValueAtIndex);
        ++v13;
      }

      while (v12 != v13);
    }

    if (v27)
    {
      *v27 = v9;
      v9 = 0;
    }

    if (v28)
    {
      *v28 = v10;
      v10 = 0;
    }

    v22 = 0;
    v23 = 0;
    if (!v9)
    {
      goto LABEL_26;
    }
  }

  else
  {
    FPSupport_CopySingleVideoChannelAndMultichannelVideoTargetsFromArray_cold_1(&v30);
    v22 = v30;
  }

  CFRelease(v9);
  v23 = v22;
LABEL_26:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_28:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v23;
}

uint64_t FPSupport_CreateDefaultTagCollectionForVideo(CMTagCollectionRef *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  newCollectionOut = 0;
  v2 = *MEMORY[0x1E6960648];
  tags = *MEMORY[0x1E69631B0];
  v7 = v2;
  v8 = *MEMORY[0x1E6960680];
  v3 = CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 3, &newCollectionOut);
  if (!a1 || v3)
  {
    if (newCollectionOut)
    {
      CFRelease(newCollectionOut);
    }
  }

  else
  {
    *a1 = newCollectionOut;
  }

  return v3;
}

uint64_t FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(const opaqueCMFormatDescription *a1, CMMutableTagCollectionRef *a2)
{
  if (!a2)
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_6(&v35);
    return v35;
  }

  Mutable = FigTagCollectionCreateMutable();
  if (Mutable)
  {
    return Mutable;
  }

  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6962788]);
  v6 = MEMORY[0x1E695E4D0];
  if (Extension)
  {
    v7 = Extension;
    v8 = CFGetTypeID(Extension);
    if (v8 == CFBooleanGetTypeID())
    {
      v9 = v7 == *v6;
      goto LABEL_7;
    }

    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_1(&v35);
    return v35;
  }

  v9 = 0;
LABEL_7:
  v10 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6962790]);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFBooleanGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_2(&v35);
    return v35;
  }

  if (v11 == *v6)
  {
    v9 |= 2u;
  }

LABEL_11:
  v34 = *MEMORY[0x1E6963130];
  v13 = HIDWORD(*MEMORY[0x1E6963130]);
  if (v9 == 3)
  {
    v16 = MEMORY[0x1E69631A0];
  }

  else if (v9 == 2)
  {
    v16 = MEMORY[0x1E69631B8];
  }

  else
  {
    v14 = DWORD1(v34);
    v15 = *MEMORY[0x1E6963130];
    if (v9 != 1)
    {
      goto LABEL_18;
    }

    v16 = MEMORY[0x1E69631A8];
  }

  v15 = *v16;
  v14 = HIDWORD(*v16);
LABEL_18:
  v33 = v15;
  v17 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69627D0]);
  LODWORD(v18) = v13;
  v19 = v34;
  if (!v17)
  {
    goto LABEL_25;
  }

  v20 = v17;
  v21 = CFGetTypeID(v17);
  if (v21 != CFStringGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_3(&v35);
    return v35;
  }

  if (CFEqual(*MEMORY[0x1E69627F8], v20))
  {
    v22 = MEMORY[0x1E6963168];
  }

  else
  {
    v23 = CFEqual(*MEMORY[0x1E69627F0], v20);
    LODWORD(v18) = v13;
    v19 = v34;
    if (!v23)
    {
      goto LABEL_25;
    }

    v22 = MEMORY[0x1E6963160];
  }

  v19 = *v22;
  v18 = HIDWORD(*v22);
LABEL_25:
  v32 = v19;
  v24 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6960090]);
  if (!v24)
  {
    goto LABEL_31;
  }

  v25 = v24;
  v26 = CFGetTypeID(v24);
  if (v26 != CFStringGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_4(&v35);
    return v35;
  }

  if (CFEqual(*MEMORY[0x1E69627E0], v25) || CFEqual(*MEMORY[0x1E6960118], v25))
  {
    v27 = MEMORY[0x1E6960668];
LABEL_30:
    v34 = *v27;
    v13 = HIDWORD(*v27);
    goto LABEL_31;
  }

  if (CFEqual(*MEMORY[0x1E6960138], v25))
  {
    v27 = MEMORY[0x1E6960680];
    goto LABEL_30;
  }

  if (_os_feature_enabled_impl())
  {
    if (CFEqual(*MEMORY[0x1E6960120], v25))
    {
      v27 = MEMORY[0x1E6960660];
      goto LABEL_30;
    }

    if (CFEqual(*MEMORY[0x1E6960128], v25))
    {
      v27 = MEMORY[0x1E6960670];
      goto LABEL_30;
    }

    if (CFEqual(*MEMORY[0x1E6960130], v25))
    {
      v27 = MEMORY[0x1E6960678];
      goto LABEL_30;
    }
  }

LABEL_31:
  v28 = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69627C0]);
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = CFGetTypeID(v28);
  if (v29 != CFNumberGetTypeID())
  {
    FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions_cold_5(&v35);
    return v35;
  }

  FigCFNumberGetSInt32();
LABEL_34:
  if (v14)
  {
    v36.category = v33;
    v36.dataType = v14;
    v36.value = *(&v33 + 1);
    Mutable = CMTagCollectionAddTag(0, v36);
    if (Mutable)
    {
      return Mutable;
    }
  }

  if (v18)
  {
    v37.category = v32;
    v37.dataType = v18;
    v37.value = *(&v32 + 1);
    Mutable = CMTagCollectionAddTag(0, v37);
    if (Mutable)
    {
      return Mutable;
    }
  }

  if (v13)
  {
    v38.category = v34;
    v38.dataType = v13;
    v38.value = *(&v34 + 1);
    Mutable = CMTagCollectionAddTag(0, v38);
    if (Mutable)
    {
      return Mutable;
    }
  }

  v30 = 0;
  if (!FigTagCollectionIsEmpty())
  {
    *a2 = 0;
  }

  return v30;
}

CFTypeRef FPSupport_CreateVideoChannelSettingsForTrackWithID(const __CFAllocator *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, uint64_t a12, int a13, CFMutableDictionaryRef *a14)
{
  cf = 0;
  if (!a14)
  {
    FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_2(&v24);
    return v24;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FPSupport_CreateVideoChannelSettingsForTrackWithID_cold_1(&v24);
    return v24;
  }

  v20 = Mutable;
  FigCFDictionarySetInt32();
  FigCFDictionarySetBoolean();
  if (a13)
  {
    FigCFDictionarySetCGRect();
  }

  FigCFDictionarySetCGSize();
  if (a4 && FPSupport_ShouldApplyVideoTrackMatrix(a2, a3))
  {
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v22)
    {
      v22(a3, a4, @"Matrix", *MEMORY[0x1E695E480], &cf);
    }

    FigCFDictionarySetValue();
    result = cf;
    *a14 = v20;
    if (result)
    {
      CFRelease(result);
      return 0;
    }
  }

  else
  {
    result = 0;
    *a14 = v20;
  }

  return result;
}

BOOL FPSupport_CanFormatsShareVideoRenderPipeline(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2)
{
  theArray = 0;
  tagCollectionsOut = 0;
  v8 = 0uLL;
  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  CMVideoFormatDescriptionCopyTagCollectionArray(a2, &theArray);
  if (tagCollectionsOut)
  {
    Count = CFArrayGetCount(tagCollectionsOut);
  }

  else
  {
    Count = 0;
  }

  v5 = theArray;
  if (theArray)
  {
    v5 = CFArrayGetCount(theArray);
  }

  if (Count != v5)
  {
LABEL_11:
    v6 = 0;
    goto LABEL_13;
  }

  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &v8 + 1);
  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a2, &v8);
  if (v8 != 0)
  {
    if (fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8, 1702454643) && fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8, 1885430635))
    {
      v6 = fps_verifyTagsOfCategoryAreEqual(*(&v8 + 1), v8, 1886547818);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v6 = 1;
LABEL_13:
  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (*(&v8 + 1))
  {
    CFRelease(*(&v8 + 1));
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v6;
}

BOOL fps_verifyTagsOfCategoryAreEqual(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    FigTagCollectionGetTagsWithCategory();
  }

  if (a2)
  {
    FigTagCollectionGetTagsWithCategory();
  }

  return FigTagEqualToTag() != 0;
}

BOOL FPSupport_CanVideoRenderPipelineSupportChangingFigImageQueues(const opaqueCMFormatDescription *a1)
{
  cf = 0;
  FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &cf);
  if (!cf)
  {
    return 1;
  }

  FigTagCollectionGetTagsWithCategory();
  v1 = FigTagEqualToTag() == 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v1;
}

uint64_t FPSupport_RenderPipelineSupportsGaplessTransitionWithFormats(uint64_t a1, CMAudioFormatDescriptionRef formatDescription, CMAudioFormatDescriptionRef otherFormatDescription)
{
  if (!a1 || (v6 = *(*(CMBaseObjectGetVTable() + 16) + 96)) == 0 || (result = v6(a1, otherFormatDescription), result != 1))
  {

    return CMAudioFormatDescriptionEqual(formatDescription, otherFormatDescription, 1u, 0);
  }

  return result;
}

uint64_t FPSupport_IncrementSeekID(int a1)
{
  v1 = (a1 % 100000000 + 1) % 100000000;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while (!v2);
  return (a1 - a1 % 100000000 + v2);
}

uint64_t FPSupport_fvtSupportsMetadataTrack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  theArray = 0;
  if (a1)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v9 && !v9(a1, *MEMORY[0x1E695E480], &theArray))
    {
      if (!theArray)
      {
        return 0;
      }

      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v11 = Count;
        v12 = 0;
        v13 = *MEMORY[0x1E6963148];
        v14 = *(MEMORY[0x1E6963148] + 8);
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v12);
          CountOfDataChannels = FigDataChannelGroupGetCountOfDataChannels(ValueAtIndex, v16);
          if (CountOfDataChannels >= 1)
          {
            break;
          }

LABEL_13:
          v25 = 0;
          if (++v12 >= v11)
          {
            goto LABEL_20;
          }
        }

        v18 = CountOfDataChannels;
        v19 = 0;
        while (1)
        {
          DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex(ValueAtIndex, v19);
          *&v30.category = v13;
          v30.value = v14;
          if (CMTagCollectionContainsTag(DataChannelByIndex, v30))
          {
            if (!CMTagCollectionContainsCategory(DataChannelByIndex, kCMTagCategory_MediaSubType))
            {
              v25 = 1;
              goto LABEL_20;
            }

            v21 = FigTagMakeWithOSTypeValue();
            v23 = v22;
            *&v31.category = v21;
            v31.value = v23;
            v24 = CMTagCollectionContainsTag(DataChannelByIndex, v31);
            if (v24)
            {
              break;
            }
          }

          if (v18 == ++v19)
          {
            goto LABEL_13;
          }
        }

        v25 = v24;
        goto LABEL_20;
      }
    }
  }

  else
  {
    FPSupport_fvtSupportsMetadataTrack_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v27, theArray, SHIDWORD(theArray), v29);
  }

  v25 = 0;
LABEL_20:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v25;
}

uint64_t FPSupport_SetCurrentTimeWithRangeIDAndReason(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v12 = Mutable;
  if (a1)
  {
    if (!Mutable)
    {
      FPSupport_SetCurrentTimeWithRangeIDAndReason_cold_1(&v22);
      return v22;
    }

    FigCFDictionarySetInt32();
    v22 = *a4;
    v23 = *(a4 + 2);
    FigCFDictionarySetCMTime();
    v22 = *a5;
    v23 = *(a5 + 2);
    FigCFDictionarySetCMTime();
    FigCFDictionarySetInt32();
    FigCFDictionarySetInt32();
    v18 = *a2;
    v21 = *(a2 + 2);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v13)
    {
      v22 = v18;
      v23 = v21;
      v14 = v13(a1, &v22, v12);
    }

    else
    {
      v14 = 4294954514;
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v19, v20);
    v14 = v16;
    if (!v12)
    {
      return v14;
    }
  }

  CFRelease(v12);
  return v14;
}

BOOL FPSupport_IsRunningInAppleVirtualMachine(uint64_t a1, uint64_t a2)
{
  if (FPSupport_IsRunningInAppleVirtualMachine_sCheckOnce != -1)
  {
    FPSupport_IsRunningInAppleVirtualMachine_cold_1();
  }

  return FPSupport_IsRunningInAppleVirtualMachine_isAppleVirtualMachine != 0;
}

uint64_t FPSupport_GetAssetDoNotLogURLs(uint64_t a1)
{
  number = 0;
  FigAssetGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, @"assetProperty_CreationFlags", *MEMORY[0x1E695E480], &number);
  v5 = number;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = number == 0;
  }

  if (v6)
  {
    v7 = 0;
    if (!number)
    {
      return v7;
    }

    goto LABEL_11;
  }

  v9 = 0;
  CFNumberGetValue(number, kCFNumberSInt64Type, &v9);
  v7 = (v9 >> 9) & 1;
  v5 = number;
  if (number)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v7;
}

uint64_t FPSupport_ProcessPayloadForLastPlayedDateNotification(uint64_t a1)
{
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    Value = FigCFDictionaryGetValue();
    v2 = FigCFDictionaryGetValue();
    MainBundle = CFBundleGetMainBundle();
    Identifier = CFBundleGetIdentifier(MainBundle);
    return FigAssetDownloadStorageManagementSetLastPlayedDateForAssetAtURL(v2, Identifier, Value, 0);
  }

  else
  {
    FPSupport_ProcessPayloadForLastPlayedDateNotification_cold_1(&v6);
    return v6;
  }
}

uint64_t FPSupport_CreatePlayerTopology(CFAllocatorRef allocator, const void *a2, uint64_t a3, __CFArray **a4)
{
  cf = 0;
  if (a4)
  {
    if (a2)
    {
      if (a3)
      {
        FigPlayerGetFigBaseObject();
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(v8, @"Topology", allocator, &cf);
        }
      }

      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v11 = Mutable;
        CFArrayAppendValue(Mutable, a2);
        FigCFArrayAppendArray();
        v12 = 0;
        *a4 = v11;
        goto LABEL_8;
      }

      FPSupport_CreatePlayerTopology_cold_1(&v15);
    }

    else
    {
      FPSupport_CreatePlayerTopology_cold_2(&v15);
    }
  }

  else
  {
    FPSupport_CreatePlayerTopology_cold_3(&v15);
  }

  v12 = v15;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

dispatch_queue_t fpSupport_createDisplayAssertionMutexAndDict(uint64_t a1)
{
  sAssertionParameters[0] = FigSimpleMutexCreate();
  v1 = *MEMORY[0x1E695E480];
  v2 = MEMORY[0x1E695E9D8];
  v3 = MEMORY[0x1E695E9E8];
  qword_1EAF18F68 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  qword_1EAF18F70 = dispatch_queue_create("com.apple.coremedia.fpsupport.HDRBatonAvailableNotificationQueue", 0);
  unk_1EAF18F78 = @"HDRBatonAvailable";
  qword_1EAF18F80 = FigSimpleMutexCreate();
  qword_1EAF18F88 = CFDictionaryCreateMutable(v1, 0, v2, v3);
  result = dispatch_queue_create("com.apple.coremedia.fpsupport.4kBatonAvailableNotificationQueue", 0);
  qword_1EAF18F90 = result;
  unk_1EAF18F98 = @"4kBatonAvailable";
  return result;
}

void fpSupport_PostDeferredBatonAvailableNotification(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  CMNotificationCenterPostNotification();
  if (a4)
  {

    CFRelease(a4);
  }
}

uint64_t __fpSupport_getContext_block_invoke(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  fpSupport_getContext_contextMutex = result;
  return result;
}

void __fps_releasePlayerResources_block_invoke(uint64_t a1)
{
  FigPlayerGetFigBaseObject();
  v3 = v2;
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v4)
  {
    v4(v3, @"ImageQueueSlotTransitionFinished", *MEMORY[0x1E695E4D0]);
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    CFRelease(v5);
  }
}

void fpSupport_handleSetPropertiesApplier(void *cf, CFTypeRef a2, uint64_t a3)
{
  v24 = 0;
  v4 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738] == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v22 = 0;
  cfa = 0;
  if (*(a3 + 32))
  {
LABEL_37:
    v19 = 0;
    goto LABEL_38;
  }

  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      fpSupport_handleSetPropertiesInternal(*a3, cf, v5, &v24, &cfa, &v22, v9, v10, v20, v22, SHIDWORD(v22), cfa);
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v24 == 0;
      }

      if (v12)
      {
        if (cfa)
        {
          v13 = CFGetTypeID(cfa);
          if (v13 == CFStringGetTypeID())
          {
            goto LABEL_20;
          }
        }

        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v22, cfa);
      }

      if (v11)
      {
        v14 = *MEMORY[0x1E695E480];
        SInt64 = FigCFNumberCreateSInt64();
        v24 = 1;
        Mutable = *(a3 + 24);
        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(a3 + 24) = Mutable;
        }

        CFDictionarySetValue(Mutable, cf, SInt64);
        if (SInt64)
        {
          CFRelease(SInt64);
        }
      }

LABEL_20:
      v17 = v22;
      if (!v22)
      {
        if (v4)
        {
          v17 = CFRetain(v4);
        }

        else
        {
          v17 = 0;
        }

        v22 = v17;
      }

      if (v24)
      {
        fpSupport_handleSetPropertiesApplier_cold_3(a3, cf);
      }

      else
      {
        v18 = cfa;
        if (cfa == cf && v17 == a2)
        {
          v19 = 0;
          if (!cfa)
          {
            goto LABEL_30;
          }

          goto LABEL_29;
        }

        fpSupport_handleSetPropertiesApplier_cold_2(a3, cf, &cfa, &v22);
      }

      goto LABEL_37;
    }
  }

  fpSupport_handleSetPropertiesApplier_cold_1(&v25);
  v19 = v25;
LABEL_38:
  v18 = cfa;
  if (cfa)
  {
LABEL_29:
    CFRelease(v18);
  }

LABEL_30:
  if (v22)
  {
    CFRelease(v22);
  }

  if (!*(a3 + 32))
  {
    *(a3 + 32) = v19;
  }
}

double fpSupport_handleSetPropertiesInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, int a10, int a11, int a12)
{
  if (*a1 > 1u)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", a9, a10, a12);
  }

  (*(a1 + 24))(*(a1 + 8), *(a1 + 16), a2, a3, a4, a5, a6);
  return result;
}

CMTime *OUTLINED_FUNCTION_6_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, CMTime *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = llround(a10 / a9);

  return CMTimeMake(&a34, 1, v35);
}

void *OUTLINED_FUNCTION_13_10()
{

  return malloc_type_malloc(0x10uLL, 0x600405BB7FD7CuLL);
}

void *OUTLINED_FUNCTION_14_14()
{

  return malloc_type_malloc(8uLL, 0x80040B8603338uLL);
}

CFTypeRef OUTLINED_FUNCTION_19_11(void *a1)
{
  *a1 = v1;

  return CFRetain(v1);
}

uint64_t RegisterFigPictureReaderBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPictureReaderGetTypeID()
{
  MEMORY[0x19A8D3660](&FigPictureReaderGetClassID_sRegisterFigPictureReaderBaseTypeOnce, RegisterFigPictureReaderBaseType);

  return CMBaseClassGetCFTypeID();
}

dispatch_queue_t saig_createNotificationQueueOnce()
{
  result = dispatch_queue_create("com.apple.coremedia.streamassetimagegenerator.notifications", 0);
  sSAIGNotificationQueue = result;
  return result;
}

uint64_t saig_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *DerivedStorage;
  if (*DerivedStorage)
  {
    CFRetain(*DerivedStorage);
  }

  FigRetainProxyLockMutex();
  if (!*(v3 + 8))
  {
    FigRetainProxyInvalidate();
    *(v3 + 8) = 1;
    saig_CancelAllRequests(v3);
    if (*(v3 + 624))
    {
      FigSemaphoreSignal();
    }

    if (*(v3 + 80))
    {
      FigSemaphoreSignal();
      v5 = *(v3 + 80);
      *(v3 + 80) = 0;
      FigRetainProxyUnlockMutex();
      if (v5)
      {
        FigThreadAbort();
        FigThreadJoin();
      }
    }

    else
    {
      FigRetainProxyUnlockMutex();
    }

    FigRetainProxyLockMutex();
    v6 = *(v3 + 96);
    if (v6)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      *(v3 + 96) = 0;
      FigBytePumpGetFigBaseObject();
      if (v7)
      {
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }

      FigBytePumpRelease(v6);
    }

    FigSimpleMutexLock();
    v10 = *(v3 + 560);
    if (v10)
    {
      CFRelease(v10);
      *(v3 + 560) = 0;
    }

    FigSimpleMutexUnlock();
    saig_tearDownManifoldsAndDeleteTracks(a1);
    FigCFWeakReferenceStore();
    if (*(v3 + 64))
    {
      FigSemaphoreDestroy();
      *(v3 + 64) = 0;
    }

    if (*(v3 + 72))
    {
      FigSemaphoreDestroy();
      *(v3 + 72) = 0;
    }

    v11 = *(v3 + 648);
    if (v11)
    {
      CFRelease(v11);
      *(v3 + 648) = 0;
    }

    v12 = *(v3 + 616);
    if (v12)
    {
      CFRelease(v12);
      *(v3 + 616) = 0;
    }

    v13 = *(v3 + 144);
    if (v13)
    {
      CFRelease(v13);
      *(v3 + 144) = 0;
    }

    v14 = *(v3 + 112);
    if (v14)
    {
      CFRelease(v14);
      *(v3 + 112) = 0;
    }

    v15 = *(v3 + 120);
    if (v15)
    {
      CFRelease(v15);
      *(v3 + 120) = 0;
    }

    v16 = *(v3 + 128);
    if (v16)
    {
      CFRelease(v16);
      *(v3 + 128) = 0;
    }

    v17 = *(v3 + 136);
    if (v17)
    {
      CFRelease(v17);
      *(v3 + 136) = 0;
    }

    v18 = *(v3 + 24);
    if (v18)
    {
      CFRelease(v18);
      *(v3 + 24) = 0;
    }

    v19 = *(v3 + 16);
    if (v19)
    {
      CFRelease(v19);
      *(v3 + 16) = 0;
    }
  }

  FigRetainProxyUnlockMutex();
  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t saig_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  saig_Invalidate(a1);
  if (*(DerivedStorage + 32))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 32) = 0;
  }

  if (*(DerivedStorage + 568))
  {
    FigSimpleMutexDestroy();
    *(DerivedStorage + 568) = 0;
  }

  return FigRetainProxyRelease();
}

__CFString *saig_CopyDebugDescription(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigStreamAssetImageGenerator %p url: ", a1);
  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    v5 = CFURLGetString(v4);
  }

  else
  {
    v5 = @"<INVALIDATED>";
  }

  CFStringAppend(Mutable, v5);
  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t saig_CancelAllRequests(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 556);
    do
    {
      *(v2 + 8) = 1;
      v4 = *(v2 + 14);
      if (v3 < v4)
      {
        *(a1 + 556) = v4;
        v3 = v4;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return FigSimpleMutexUnlock();
}

void saig_tearDownManifoldsAndDeleteTracks(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 320);
  if (v3)
  {
    do
    {
      v4 = *(v3 + 8);
      saig_deleteTrack(a1, v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = 0;
  v6 = DerivedStorage + 176;
  do
  {
    if (*(v6 + v5))
    {
      FigStopForwardingMediaServicesProcessDeathNotification();
      FigManifoldGetFigBaseObject();
      if (v7)
      {
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v9)
        {
          v9(v8);
        }
      }

      v10 = *(v6 + v5);
      if (v10)
      {
        CFRelease(v10);
        *(v6 + v5) = 0;
      }
    }

    v5 += 8;
  }

  while (v5 != 24);
}

uint64_t saig_HandleError(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *(DerivedStorage + 88) = a2;
    FigSemaphoreSignal();
  }

  return a2;
}

uint64_t saig_AlternatesComparator(uint64_t a1, uint64_t a2)
{
  PeakBitRate = FigAlternateGetPeakBitRate(a1);
  v4 = FigAlternateGetPeakBitRate(a2);
  v5 = 1;
  v6 = -1;
  v7 = 1;
  if (PeakBitRate <= v4)
  {
    v7 = -1;
  }

  if (v4)
  {
    v6 = v7;
  }

  if (PeakBitRate)
  {
    v5 = v6;
  }

  if (PeakBitRate == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t saig_SetAlternate(uint64_t a1, const void *a2, __int128 *a3, __int128 *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v30 = *a4;
  v31 = *(a4 + 2);
  v32 = *MEMORY[0x1E6960C70];
  v33 = *(MEMORY[0x1E6960C70] + 16);
  v34 = v32;
  v35 = v33;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = *(DerivedStorage + 96);
  if (!v8)
  {
    return 0;
  }

  v9 = DerivedStorage;
  v10 = *(DerivedStorage + 136);
  v23 = *a3;
  v24 = *(a3 + 2);
  v21 = *a4;
  v22 = *(a4 + 2);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v11)
  {
    return 4294954514;
  }

  v28 = v23;
  v29 = v24;
  v26 = v21;
  v27 = v22;
  result = v11(v8, a2, v10, 0, 0, 1, &v28, &v26, &v30, &v25 + 4, &v25, v9 + 536);
  if (result)
  {
    return result;
  }

  if ((BYTE4(v25) & 3u) > 1)
  {
    if ((BYTE4(v25) & 3) == 3)
    {
      v13 = 0;
      v14 = 2;
    }

    else
    {
      v14 = 1;
      v13 = 1;
    }
  }

  else
  {
    if ((v25 & 0x300000000) == 0)
    {
      goto LABEL_12;
    }

    v13 = 0;
    v14 = 1;
  }

  *(v9 + 344) = v14;
  *(v9 + 360) = v13;
LABEL_12:
  v15 = *(v9 + 144);
  *(v9 + 144) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (HIDWORD(v25) == *(v9 + 352))
  {
    return 0;
  }

  v16 = 0;
  v17 = v9 + 176;
  do
  {
    if (((HIDWORD(v25) >> v16) & 1) == 0)
    {
      v18 = *(v17 + 8 * v16);
      if (v18)
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v19)
        {
          v19(v18, 0);
        }

        FigStopForwardingMediaServicesProcessDeathNotification();
        v20 = *(v17 + 8 * v16);
        if (v20)
        {
          CFRelease(v20);
          *(v17 + 8 * v16) = 0;
        }
      }
    }

    ++v16;
  }

  while (v16 != 3);
  result = 0;
  *(v9 + 352) = HIDWORD(v25);
  return result;
}

void saig_deleteTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(a2 + 144))
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *(a2 + 24);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v6)
      {
        v6(v4, v5, 0, 0);
      }
    }

    *(a2 + 144) = 1;
  }

  saig_ReleaseRenderPipelineForTrack(a2);
  v7 = *(DerivedStorage + 320);
  if (v7 == a2)
  {
    v10 = DerivedStorage + 320;
    v16 = *(v7 + 8);
    *(DerivedStorage + 320) = v16;
    if (!v16)
    {
LABEL_9:
      *(DerivedStorage + 328) = v10;
    }
  }

  else
  {
    do
    {
      v8 = v7;
      v7 = *(v7 + 8);
    }

    while (v7 != a2);
    v9 = *(v7 + 8);
    *(v8 + 8) = v9;
    v10 = v8 + 8;
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    *(a2 + 40) = 0;
    CFRelease(v11);
  }

  v12 = *(a2 + 56);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 56) = 0;
  }

  v13 = *(a2 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(a2 + 152) = 0;
  }

  v14 = *(a2 + 208);
  if (v14)
  {
    CFRelease(v14);
    *(a2 + 208) = 0;
  }

  v15 = *(a2 + 32);
  if (v15)
  {
    CFRelease(v15);
  }

  free(a2);
}

void saig_ReleaseRenderPipelineForTrack(uint64_t a1)
{
  CMBaseObjectGetDerivedStorage();
  if (*(a1 + 192))
  {
    FigBufferQueueRelease();
    *(a1 + 192) = 0;
  }

  if (*(a1 + 184))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigRenderPipelineGetFigBaseObject();
    v3 = v2;
    v4 = *(CMBaseObjectGetVTable() + 8);
    if (*v4 >= 2uLL)
    {
      v5 = v4[8];
      if (v5)
      {
        v5(v3);
      }
    }

    FigRenderPipelineGetFigBaseObject();
    if (v6)
    {
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    CFRelease(*(a1 + 184));
    *(a1 + 184) = 0;
  }

  v9 = *(a1 + 216);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 216) = 0;
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 224) = 0;
  }
}

uint64_t saig_handleRenderPipelineDecodeErrorNotification(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  FAIGCommon_handleRenderPipelineDecodeErrorNotification(a1, a2, a3, a4, a5);

  return FigSemaphoreSignal();
}

uint64_t saig_CancelAllCGImageAsyncRequests(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    saig_CancelAllCGImageAsyncRequests_cold_1(&v4);
    v2 = v4;
  }

  else
  {
    saig_CancelAllRequests(DerivedStorage);
    if (*(DerivedStorage + 624))
    {
      FigSemaphoreSignal();
    }

    v2 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v2;
}

uint64_t saig_processImageRequestThread(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v44 = *MEMORY[0x1E6960C70];
  v48 = *MEMORY[0x1E6960C70];
  v43 = *(MEMORY[0x1E6960C70] + 16);
  v49 = v43;
  valuePtr = -1;
  if (FigSemaphoreWaitRelative() != -12792)
  {
    v4 = *MEMORY[0x1E695E480];
    v45 = a1;
    while (1)
    {
      if (FigRetainProxyIsInvalidated())
      {
        goto LABEL_2;
      }

      FigSimpleMutexLock();
      valuePtr = 9000000000;
      v5 = *(DerivedStorage + 40);
      if (!v5)
      {
        *(DerivedStorage + 56) = 0;
        FigSimpleMutexUnlock();
        return 0;
      }

      FigSimpleMutexUnlock();
      v6 = *(v5 + 40);
      if (v6)
      {
        Value = CFDictionaryGetValue(v6, @"TimeoutInterval");
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr);
          }
        }

        v10 = CFDictionaryGetValue(*(v5 + 40), @"RequestID");
        v11 = v10;
        if (v10)
        {
          CFRetain(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      if (!*(v5 + 8) && !FigRetainProxyIsInvalidated())
      {
        break;
      }

      v12 = 0;
      v13 = -12432;
LABEL_17:
      FigSimpleMutexLock();
      v14 = **(DerivedStorage + 40);
      *(DerivedStorage + 40) = v14;
      if (!v14)
      {
        *(DerivedStorage + 48) = DerivedStorage + 40;
      }

      FigSimpleMutexUnlock();
      FAIGCommon_releaseImageRequest(v5);
      *&v46.value = v48;
      v46.epoch = v49;
      v51 = v13;
      keys[0] = 0;
      keys[1] = 0;
      v55 = 0;
      values = 0;
      v53[0] = 0;
      v53[1] = 0;
      v15 = CMBaseObjectGetDerivedStorage();
      if (v13)
      {
        keys[0] = @"Result";
        values = CFNumberCreate(v4, kCFNumberSInt32Type, &v51);
        v16 = 1;
        v17 = kFigAssetImageGeneratorNotification_FailedToGenerateCGImage;
      }

      else
      {
        if (v12)
        {
          keys[0] = @"CGImage";
          values = CFRetain(v12);
          v18 = &keys[1];
          p_values = v53;
          v16 = 2;
        }

        else
        {
          v18 = keys;
          p_values = &values;
          v16 = 1;
        }

        *v18 = @"FigTime";
        time = v46;
        *p_values = CMTimeCopyAsDictionary(&time, v4);
        v17 = kFigAssetImageGeneratorNotification_DidGenerateCGImage;
      }

      v24 = *v17;
      if (v11)
      {
        keys[v16] = @"RequestID";
        v53[v16++ - 1] = CFRetain(v11);
      }

      v25 = CFDictionaryCreate(v4, keys, &values, v16, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v25)
      {
        v26 = v25;
        v27 = MEMORY[0x19A8D0E00](v15 + 640);
        if (v27)
        {
          v28 = v27;
          v29 = malloc_type_calloc(1uLL, 0x18uLL, 0xE00406B48E91AuLL);
          if (v29)
          {
            v30 = v29;
            if (v24)
            {
              v31 = CFRetain(v24);
            }

            else
            {
              v31 = 0;
            }

            v30[1] = v31;
            v30[2] = CFRetain(v26);
            *v30 = v28;
            dispatch_async_f(sSAIGNotificationQueue, v30, saig_postNotificationAsynchronously);
          }

          else
          {
            CFRelease(v28);
          }
        }

        CFRelease(v26);
      }

      v32 = 0;
      v33 = 8 * v16;
      do
      {
        v34 = v53[v32 / 8 - 1];
        if (v34)
        {
          CFRelease(v34);
          v53[v32 / 8 - 1] = 0;
        }

        v32 += 8;
      }

      while (v33 != v32);
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v48 = v44;
      v49 = v43;
      if (FigSemaphoreWaitRelative() == -12792)
      {
        goto LABEL_2;
      }
    }

    CMBaseObjectGetDerivedStorage();
    v20 = CMBaseObjectGetDerivedStorage();
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      v23 = -12785;
      goto LABEL_76;
    }

    if (*(v20 + 624))
    {
      saig_processImageRequestThread_cold_1(keys);
      v23 = keys[0];
      if (LODWORD(keys[0]))
      {
        goto LABEL_76;
      }

      goto LABEL_61;
    }

    *(v20 + 88) = 0;
    *(v20 + 624) = v5;
    v21 = CMBaseObjectGetDerivedStorage();
    if (*(v21 + 9))
    {
      if (*(v21 + 9) != 1)
      {
        goto LABEL_61;
      }

      PumpReady = saig_RequestAnImageFromPump(v45, *(v20 + 624));
    }

    else
    {
      v22 = v21;
      if (!*(v21 + 108))
      {
        FigRetainProxyRetain();
        v36 = *(v22 + 24);
        v42 = *v22;
        v37 = *(*(CMBaseObjectGetVTable() + 16) + 72);
        if (v37)
        {
          v23 = v37(v36, saig_PumpTransferCallback, v42);
          if (!v23)
          {
            *(v22 + 104) = 0;
            *(v22 + 108) = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v23 = -12782;
        }

        FigRetainProxyRelease();
        goto LABEL_76;
      }

      if (*(v21 + 104))
      {
        if (!*(v21 + 144))
        {
          v23 = -12436;
LABEL_76:
          *(v20 + 624) = 0;
          FigRetainProxyUnlockMutex();
          v12 = 0;
LABEL_77:
          if (FigRetainProxyIsInvalidated())
          {
            v13 = 0;
          }

          else if (*(v5 + 8))
          {
            v13 = -12432;
          }

          else
          {
            v13 = v23;
          }

          goto LABEL_17;
        }

LABEL_61:
        FigRetainProxyUnlockMutex();
        v23 = FigSemaphoreWaitRelative();
        v38 = CMBaseObjectGetDerivedStorage();
        values = 0;
        time.value = 0;
        FigRetainProxyLockMutex();
        if (FigRetainProxyIsInvalidated())
        {
          v12 = 0;
          v23 = -12785;
          goto LABEL_72;
        }

        if (v23)
        {
          saig_CleanVideoRendersAndVisualContext(v45);
          if (!*(v38 + 9))
          {
            saig_tearDownManifoldsAndDeleteTracks(v45);
            v39 = *(v38 + 144);
            if (v39)
            {
              CFRelease(v39);
              *(v38 + 144) = 0;
            }

            v12 = 0;
            *(v38 + 104) = 0;
            goto LABEL_72;
          }

          goto LABEL_64;
        }

        if (*(v5 + 8))
        {
          if (*(v38 + 9))
          {
            saig_CleanVideoRendersAndVisualContext(v45);
          }

          v12 = 0;
          v23 = -12432;
          goto LABEL_72;
        }

        v23 = *(v38 + 608);
        if (!v23)
        {
          v23 = *(v38 + 88);
          if (!v23)
          {
            FigSimpleMutexLock();
            v40 = *(v38 + 560);
            if (v40)
            {
              v55 = *(v38 + 600);
              *keys = *(v38 + 584);
              v23 = FigVisualContextCopyImageForTime(v40, v4, keys, &values);
              FigSimpleMutexUnlock();
              if (v23)
              {
                goto LABEL_64;
              }

              if (values)
              {
                CGImageFromPixelBufferWithDynamicRangeConversion = FigCreateCGImageFromPixelBufferWithDynamicRangeConversion(values, 0, 0, &time);
                if (!CGImageFromPixelBufferWithDynamicRangeConversion)
                {
                  v12 = time.value;
                  if (time.value)
                  {
                    v23 = 0;
                    v48 = *(v38 + 584);
                    v49 = *(v38 + 600);
                    time.value = 0;
                  }

                  else
                  {
                    v23 = -12434;
                  }

LABEL_72:
                  *(v38 + 624) = 0;
                  *(v38 + 88) = 0;
                  FigRetainProxyUnlockMutex();
                  if (values)
                  {
                    CFRelease(values);
                  }

                  goto LABEL_77;
                }

                v23 = CGImageFromPixelBufferWithDynamicRangeConversion;
                goto LABEL_64;
              }
            }

            else
            {
              FigSimpleMutexUnlock();
            }

            v12 = 0;
            v23 = -12431;
            goto LABEL_72;
          }
        }

LABEL_64:
        v12 = 0;
        goto LABEL_72;
      }

      if (!*(v21 + 96))
      {
        goto LABEL_61;
      }

      PumpReady = saig_GetPumpReady(v45);
    }

    v23 = PumpReady;
    if (PumpReady)
    {
      goto LABEL_76;
    }

    goto LABEL_61;
  }

LABEL_2:
  *(DerivedStorage + 56) = 0;
  return 0;
}

uint64_t saig_NewTrackNote(const void *a1, uint64_t a2, int a3, uint64_t a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = DerivedStorage;
  v10 = 0;
  while (*(DerivedStorage + 176 + 8 * v10) != a1)
  {
    if (++v10 == 3)
    {
      v11 = 3;
      goto LABEL_6;
    }
  }

  v11 = v10;
LABEL_6:
  v12 = 1;
  if (a3 <= 1935832171)
  {
    if (a3 != 1668047728 && a3 != 1835365473)
    {
LABEL_13:
      v12 = 0;
    }
  }

  else
  {
    if (a3 != 1935832172)
    {
      if (a3 == 1986618469)
      {
        goto LABEL_15;
      }

      if (a3 == 1936684398)
      {
        v12 = 2;
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v12 = 4;
  }

LABEL_15:
  v13 = *(DerivedStorage + 320);
  v14 = 1;
  if (!v13)
  {
    goto LABEL_30;
  }

  while (1)
  {
    while (1)
    {
      v15 = v13;
      v13 = *(v13 + 8);
      if (*(v15 + 28) != a3)
      {
        goto LABEL_24;
      }

      if (*(v15 + 40) == a1)
      {
        goto LABEL_29;
      }

      if (*(v15 + 48) != *(v9 + 296 + 8 * v11))
      {
        goto LABEL_24;
      }

      v16 = *(v15 + 92);
      if (v16 == v11)
      {
        goto LABEL_24;
      }

      v17 = 1 << v16;
      if (*(v15 + 88) == 6)
      {
        break;
      }

      if (v17 == v12)
      {
        goto LABEL_29;
      }

      saig_deleteTrack(a2, v15);
      if (!v13)
      {
LABEL_28:
        v14 = 1;
        goto LABEL_30;
      }
    }

    if (v17 == v12)
    {
      v18 = *(v9 + 352);
      if ((v18 & v17) != 0 && (v18 & v12) != 0)
      {
        break;
      }
    }

LABEL_24:
    if (!v13)
    {
      goto LABEL_28;
    }
  }

LABEL_29:
  v14 = 0;
LABEL_30:
  if (a3 != 1986618469 && (v19 = *(v9 + 144)) != 0 && FigAlternateIsIFrameOnly(v19) || !v14)
  {
    v33 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v33)
    {
      v33(a1, a4, 0, 0);
    }

    return 0;
  }

  v20 = CMBaseObjectGetDerivedStorage();
  v21 = malloc_type_calloc(1uLL, 0xF0uLL, 0x1060040B7CBE5F1uLL);
  if (!v21)
  {
LABEL_56:
    saig_NewTrackNote_cold_1(&v37);
    return v37;
  }

  v22 = v21;
  v23 = *MEMORY[0x1E695E480];
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  if (CMBufferQueueCreate(v23, 0, CallbacksForUnsortedSampleBuffers, v22 + 7))
  {
    free(v22);
    goto LABEL_56;
  }

  v25 = *(v20 + 336) + 1;
  *(v20 + 336) = v25;
  *v22 = a2;
  v22[2] = v25;
  *(v22 + 6) = a4;
  v26 = MEMORY[0x1E6960C70];
  v36 = *MEMORY[0x1E6960C70];
  *(v22 + 4) = *MEMORY[0x1E6960C70];
  v27 = *(v26 + 16);
  v22[10] = v27;
  v28 = CFRetain(a1);
  *(v22 + 92) = v11;
  v29 = *(v20 + 8 * v11 + 296);
  v22[5] = v28;
  v22[6] = v29;
  v22[17] = v27;
  *(v22 + 15) = v36;
  *(v22 + 58) = 1065353216;
  *(v22 + 7) = a3;
  v30 = MEMORY[0x1E6960CC0];
  v22[22] = *(MEMORY[0x1E6960CC0] + 16);
  *(v22 + 10) = *v30;
  v22[25] = -1;
  v22[1] = 0;
  **(v20 + 328) = v22;
  *(v20 + 328) = v22 + 1;
  v31 = 1;
  if (a3 <= 1935832171)
  {
    if (a3 == 1668047728 || a3 == 1835365473)
    {
      goto LABEL_49;
    }
  }

  else
  {
    switch(a3)
    {
      case 1935832172:
        goto LABEL_49;
      case 1936684398:
        goto LABEL_48;
      case 1986618469:
        v32 = *(v20 + 144);
        if (v32)
        {
          v31 = FigAlternateIsIFrameOnly(v32) != 0;
          goto LABEL_49;
        }

LABEL_48:
        v31 = 0;
LABEL_49:
        *(v22 + 93) = v31;
        break;
    }
  }

  v35 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v35)
  {
    return 4294954514;
  }

  return v35(a1, a4, kManifoldOutputCallbacks_0, v22);
}

uint64_t saig_TrackEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 144))
  {
    v6 = *(a3 + 40);
    if (v6)
    {
      v7 = *(a3 + 24);
      v8 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v8)
      {
        v8(v6, v7, 0, 0);
      }
    }

    *(a3 + 144) = 1;
  }

  return a4;
}

uint64_t saig_ensureDecryptorIsReady(uint64_t a1)
{
  v7 = 0;
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v2 || (v3 = v2(a1, &v7), v3 == -12782))
  {
    cf = 0;
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v3 = v4(a1, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &cf);
      if (!v3)
      {
        if (*MEMORY[0x1E695E4C0] == cf)
        {
          v3 = 4294954431;
        }

        else
        {
          v3 = 0;
        }

        CFRelease(cf);
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return v3;
}

uint64_t saig_AdjustTime(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetPresentationTimeStamp(&lhs, a1);
  rhs = *(a2 + 64);
  CMTimeAdd(&v9, &lhs, &rhs);
  lhs = v9;
  memset(&rhs, 0, sizeof(rhs));
  CMSampleBufferGetOutputDuration(&rhs, a1);
  if ((rhs.flags & 0x1D) == 1)
  {
    time1 = lhs;
    v5 = rhs;
    CMTimeAdd(&lhs, &time1, &v5);
  }

  time1 = *(a2 + 120);
  v5 = lhs;
  if (CMTimeCompare(&time1, &v5) < 0)
  {
    *(a2 + 120) = lhs;
  }

  time1 = v9;
  return CMSampleBufferSetOutputPresentationTimeStamp(a1, &time1);
}

uint64_t saig_decodedImageBecameAvailable(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  FAIGCommon_decodedImageBecameAvailable(a1, &v5, a3, a4);
  return FigSemaphoreSignal();
}

uint64_t saig_CleanVideoRendersAndVisualContext(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 320);
  if (v2)
  {
    v3 = MEMORY[0x1E6960C70];
    do
    {
      if (*(v2 + 28) == 1986618469 && *(v2 + 93))
      {
        saig_ReleaseRenderPipelineForTrack(v2);
        *(v2 + 120) = *v3;
        *(v2 + 136) = *(v3 + 16);
        *(v2 + 232) = 1065353216;
      }

      v2 = *(v2 + 8);
    }

    while (v2);
  }

  FigSimpleMutexLock();
  v4 = *(DerivedStorage + 560);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 560) = 0;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigVisualContextCopyImageForTime(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  v10 = *a3;
  v11 = *(a3 + 2);
  return v8(a1, a2, &v10, 3, a4, 0, 0);
}

void saig_postNotificationAsynchronously(CFTypeRef *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

__n128 OUTLINED_FUNCTION_1_47()
{
  result = v0[6];
  *(v1 - 144) = result;
  *(v1 - 128) = v0[7].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_4_40()
{
  result = *(v0 + 120);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 136);
  return result;
}

__n128 OUTLINED_FUNCTION_9_19()
{
  result = *(v0 - 112);
  *(v0 - 208) = result;
  *(v0 - 192) = *(v0 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_10_19()
{
  *(v0 - 240) = *(v0 - 112);
  *(v0 - 224) = *(v0 - 96);
  return *(v0 - 144);
}

void OUTLINED_FUNCTION_14_15()
{

  FigRenderPipelineGetFigBaseObject();
}

__n128 OUTLINED_FUNCTION_17_9()
{
  result = *(v1 - 112);
  v0[4] = result;
  v0[5].n128_u64[0] = *(v1 - 96);
  return result;
}

__n128 OUTLINED_FUNCTION_18_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a33, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __n128 a34, uint64_t a35)
{
  result = a34;
  *(v35 - 144) = a34;
  *(v35 - 128) = a35;
  return result;
}

__n128 OUTLINED_FUNCTION_20_7()
{
  result = v0[4];
  *(v1 - 144) = result;
  *(v1 - 128) = v0[5].n128_u64[0];
  return result;
}

__n128 OUTLINED_FUNCTION_21_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a61, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, __n128 a62, uint64_t a63)
{
  result = a62;
  *(v63 - 112) = a62;
  *(v63 - 96) = a63;
  return result;
}

__n128 OUTLINED_FUNCTION_23_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a47, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, __n128 a48, uint64_t a49)
{
  result = a48;
  *(v49 - 112) = a48;
  *(v49 - 96) = a49;
  return result;
}

__n128 OUTLINED_FUNCTION_25_9()
{
  result = *(v0 + 12);
  *(v1 - 144) = result;
  *(v1 - 128) = *(v0 + 28);
  return result;
}

__n128 OUTLINED_FUNCTION_28_9()
{
  result = *(v0 - 144);
  *(v0 - 176) = result;
  *(v0 - 160) = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CMNotificationCenterAddListener();
}

uint64_t FigBufferedAirPlaySubPipeManagerGetClassID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CA7E8 != -1)
  {
    FigBufferedAirPlaySubPipeManagerGetClassID_cold_1();
  }

  return qword_1ED4CA7F0;
}

uint64_t __FigBufferedAirPlaySubPipeManagerGetClassID_block_invoke()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBufferedAirPlaySubPipeManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (qword_1ED4CA7E8 != -1)
  {
    FigBufferedAirPlaySubPipeManagerGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t __FigBufferedAirPlaySubPipeManagerCreate_block_invoke()
{
  dword_1ED4CA7E4 = FigGetCFPreferenceNumberWithDefault();
  result = FigGetCFPreferenceBooleanWithDefault();
  _MergedGlobals_39 = result;
  return result;
}

__CFString *fbapspManager_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigBufferedAirPlaySubPipeManagert %p>", a1);
  return Mutable;
}

uint64_t fbapspManager_setProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_setProperty_block_invoke;
  block[3] = &unk_1E7482C18;
  block[6] = a2;
  block[7] = a3;
  block[4] = &v11;
  block[5] = DerivedStorage;
  block[8] = a1;
  dispatch_sync(v7, block);
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

void __fbapspManager_invalidate_block_invoke_3(uint64_t a1)
{
  v2 = fbapspManager_clearCurrentSubPipe(*(a1 + 40), 0, 1);
  v3 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v2;
  *(*(*(a1 + 32) + 8) + 24) = 0;

  fbapspManager_setProcessingState(v3, 1);
}

void fbapspManager_postNotification(const void *a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    CFRetain(a3);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  v7 = *(DerivedStorage + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_postNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_180;
  block[4] = a2;
  block[5] = a1;
  block[6] = a3;
  dispatch_async(v7, block);
}

uint64_t fbapspManager_setSubPipeTerminationInFlight(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 152) != a2)
  {
    *(result + 152) = a2;
    CMBaseObjectGetDerivedStorage();

    return fbapspManager_dataFlowIsAllowed(a1);
  }

  return result;
}

void fbapspManager_scheduleProcessingDataIfPossible(const void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (fbapspManager_dataFlowIsAllowed(a1))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a1)
    {
      CFRetain(a1);
    }

    v3 = *(DerivedStorage + 88);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke;
    v4[3] = &__block_descriptor_tmp_184;
    v4[4] = DerivedStorage;
    v4[5] = a1;
    dispatch_async(v3, v4);
  }
}

BOOL fbapspManager_dataFlowIsAllowed(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = DerivedStorage;
  v3 = *(DerivedStorage + 120);
  if (v3)
  {
    v4 = *(DerivedStorage + 104);
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v3)
    {
      LODWORD(v3) = v3(v4) != 0;
    }
  }

  v5 = *(v2 + 56) != -999999.875 && *(v2 + 152) == 0;
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if ((*(v2 + 268) & 1) != 0 && *(v2 + 156) == 3)
  {
    v6 = 0;
  }

  if (*(v2 + 72) == 3)
  {
    v6 = 0;
  }

  if (*(v2 + 576))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (*(v2 + 577))
  {
    v6 = v7;
  }

  return *(v2 + 576) || v6;
}

void fbapspManager_dequeueInspectSendSampleBufferInternal(const void *a1)
{
  v214 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  p_epoch = &rhs.epoch;
  v169 = &time1.epoch;
  v3 = 5;
  v173 = @"SubPipeTypePassthrough";
  v177 = @"SBUFForAutoOrder";
  v176 = *MEMORY[0x1E695E4D0];
  allocator = *MEMORY[0x1E695E480];
  key = *MEMORY[0x1E6960558];
  *&v4 = 136316162;
  *v167 = v4;
  *&v4 = 136315650;
  *v163 = v4;
  *&v4 = 136315906;
  *v166 = v4;
  v165 = *MEMORY[0x1E6960560];
  v171 = @"SubPipeType";
  v174 = *MEMORY[0x1E6962E00];
  v175 = *MEMORY[0x1E6962DF8];
  v170 = @"SubPipeTypeTranscode";
  v5 = MEMORY[0x1E6960C70];
  while (fbapspManager_dataFlowIsAllowed(a1))
  {
    v6 = *(DerivedStorage + 608);
    v7 = (v6 ? CFRetain(v6) : CMBufferQueueCopyHead(*(DerivedStorage + 128)));
    v8 = v7;
    if (!v7)
    {
      break;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v7);
    v9 = CMBaseObjectGetDerivedStorage();
    v10 = *v5;
    *&v185.value = v10;
    v11 = *(v5 + 2);
    v185.epoch = v11;
    *&v183.value = v10;
    v183.epoch = v11;
    HIBYTE(v182) = 0;
    cf = 0;
    v194 = *v5;
    v195 = *(v5 + 2);
    *&v179.value = v10;
    v179.epoch = v11;
    if (*(v9 + 456))
    {
      goto LABEL_39;
    }

    v12 = v9;
    if (*(v9 + 56) == -999999.875)
    {
      fbapspManager_dequeueInspectSendSampleBufferInternal_cold_1();
      goto LABEL_39;
    }

    *v178 = v10;
    CMSampleBufferGetOutputPresentationTimeStamp(&v185, v8);
    v13 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *v178;
    time1.epoch = v11;
    if (CMGetAttachment(v8, @"FlushRangeEnd", 0))
    {
      if (!*(v13 + 576))
      {
        v18 = 2;
        v17 = 1;
        goto LABEL_22;
      }

      v14 = *(v13 + 120);
      if (*(v13 + 156) == 4)
      {
        if (v14)
        {
          if (*(v13 + 556))
          {
            CMTimeMake(&rhs, 1, 480000);
            lhs = *(v13 + 544);
            CMTimeAdd(&time1, &lhs, &rhs);
          }

          rhs = time1;
          if (!CMSampleBufferSetOutputPresentationTimeStamp(v8, &rhs))
          {
            CMSetAttachment(v8, v177, v176, 0);
            goto LABEL_17;
          }

LABEL_37:
          v18 = 3;
          goto LABEL_23;
        }

LABEL_17:
        v15 = *(v13 + 112);
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v16)
        {
          v16(v15, v8);
        }
      }

      else
      {
        if (!v14)
        {
          goto LABEL_17;
        }

        CMBufferQueueEnqueue(*(v13 + 208), v8);
      }

      *(v13 + 153) = 0;
      if (!fbapspManager_prepareSubPipeToStop(a1, v8, 1))
      {
        v17 = 0;
        *(v13 + 576) = 0;
        v18 = 3;
LABEL_22:
        *(v13 + 577) = v17;
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    v23 = CMBaseObjectGetDerivedStorage();
    *&v191.value = *v178;
    v191.epoch = v11;
    memset(&v190, 0, sizeof(v190));
    CMTimeMake(&v190, 10, 1000000);
    memset(&v189, 0, sizeof(v189));
    CMTimeMake(&v189, 1000, 1000000);
    v188 = 0;
    v187 = 0;
    v162 = v23;
    if (*(v23 + 576))
    {
      goto LABEL_164;
    }

    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
    value = time1.value;
    flags = time1.flags;
    timescale = time1.timescale;
    epoch = time1.epoch;
    CMSampleBufferGetOutputDuration(&time1, v8);
    v204 = time1.value;
    v205 = time1.timescale;
    v18 = 1;
    LODWORD(v160) = flags;
    if ((flags & 1) == 0)
    {
      goto LABEL_165;
    }

    v25 = time1.flags;
    v26 = time1.epoch;
    time1.value = value;
    time1.timescale = timescale;
    time1.flags = flags;
    time1.epoch = epoch;
    rhs.value = v204;
    rhs.timescale = v205;
    rhs.flags = v25;
    rhs.epoch = v26;
    CMTimeAdd(&v191, &time1, &rhs);
    v27 = v162;
    if (*(v162 + 384) == 2 && (*(v162 + 292) & 1) != 0)
    {
      time1 = v191;
      lhs = *(v162 + 280);
      CMTimeSubtract(&rhs, &time1, &lhs);
      CMTimeAbsoluteValue(&time1, &rhs);
      rhs = v189;
      if (CMTimeCompare(&time1, &rhs) <= 0)
      {
        if (dword_1EAF16F18)
        {
          LODWORD(lhs.value) = 0;
          LOBYTE(time2.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v29 = lhs.value;
          v157 = os_log_and_send_and_compose_flags_and_os_log_type;
          LODWORD(v156) = LOBYTE(time2.value);
          v30 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time2.value);
          v31 = v29 & 0xFFFFFFFE;
          if (v30)
          {
            v31 = v29;
          }

          if (v31)
          {
            HIDWORD(v155) = v31;
            if (a1)
            {
              v32 = CMBaseObjectGetDerivedStorage();
            }

            else
            {
              v32 = "";
            }

            time1 = v191;
            Seconds = CMTimeGetSeconds(&time1);
            time1 = *(v162 + 280);
            v34 = CMTimeGetSeconds(&time1);
            LODWORD(rhs.value) = v167[0];
            *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
            LOWORD(rhs.flags) = 2048;
            *(&rhs.flags + 2) = a1;
            HIWORD(rhs.epoch) = 2082;
            v197 = v32;
            *v198 = 2048;
            *&v198[2] = Seconds;
            v199 = 2048;
            v200 = v34;
            LODWORD(v154) = 52;
            p_rhs = &rhs;
            _os_log_send_and_compose_impl(HIDWORD(v155), 0, &time1, 128, &dword_1962D5000, v157, v156, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Checking if sbufEndOPTS %1.9f is past the overlapEndTime %1.9f.");
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v27 = v162;
        }
      }
    }

    if ((*(v27 + 268) & 1) == 0)
    {
      goto LABEL_75;
    }

    v35 = *(v27 + 384);
    if (v35 == 2)
    {
      time1 = *(v27 + 256);
      rhs = v191;
      if (CMTimeCompare(&time1, &rhs) > 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v35 != 1)
      {
        goto LABEL_75;
      }

      time1 = *(v27 + 256);
      lhs.value = value;
      lhs.timescale = timescale;
      lhs.flags = v160;
      lhs.epoch = epoch;
      CMTimeSubtract(&rhs, &time1, &lhs);
      CMTimeAbsoluteValue(&time1, &rhs);
      rhs = v190;
      if (CMTimeCompare(&time1, &rhs) >= 1)
      {
        if (*(v27 + 156) == 1)
        {
          time1.value = value;
          time1.timescale = timescale;
          time1.flags = v160;
          time1.epoch = epoch;
          rhs = *(v27 + 256);
          if (CMTimeCompare(&time1, &rhs) < 0)
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v37 = lhs.value;
              LODWORD(v162) = LOBYTE(time2.value);
              v38 = os_log_type_enabled(v36, time2.value);
              v39 = v37 & 0xFFFFFFFE;
              if (v38)
              {
                v39 = v37;
              }

              LODWORD(v157) = v39;
              if (v39)
              {
                if (a1)
                {
                  v40 = CMBaseObjectGetDerivedStorage();
                }

                else
                {
                  v40 = "";
                }

                time1.value = value;
                time1.timescale = timescale;
                time1.flags = v160;
                time1.epoch = epoch;
                v87 = CMTimeGetSeconds(&time1);
                LODWORD(rhs.value) = v166[0];
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v197 = v40;
                *v198 = 2048;
                *&v198[2] = v87;
                LODWORD(v154) = 42;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl(v157, 0, &time1, 128, &dword_1962D5000, v36, v162, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Intro current processing state is Idle and sbuf OPTS is %1.9f - process this sbuf later");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

LABEL_153:
            v18 = 2;
            goto LABEL_165;
          }
        }

LABEL_75:
        if (*(v27 + 156) == 5)
        {
          if (dword_1EAF16F18)
          {
            LODWORD(lhs.value) = 0;
            LOBYTE(time2.value) = 0;
            v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v53 = lhs.value;
            v54 = v52;
            LODWORD(v160) = LOBYTE(time2.value);
            v55 = os_log_type_enabled(v52, time2.value);
            v56 = v53 & 0xFFFFFFFE;
            if (v55)
            {
              v56 = v53;
            }

            if (v56)
            {
              LODWORD(epoch) = v56;
              v57 = "";
              if (a1)
              {
                v57 = CMBaseObjectGetDerivedStorage();
              }

              time1 = v191;
              v58 = CMTimeGetSeconds(&time1);
              LODWORD(rhs.value) = v166[0];
              *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = a1;
              HIWORD(rhs.epoch) = 2082;
              v197 = v57;
              *v198 = 2048;
              *&v198[2] = v58;
              LODWORD(v154) = 42;
              p_rhs = &rhs;
              _os_log_send_and_compose_impl(epoch, 0, &time1, 128, &dword_1962D5000, v54, v160, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s stop mixing data - next sbuf endOPTS: %1.3f");
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v27 = v162;
          }

          fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v187);
          if (v187 || *(v27 + 384) == 2 || !FigGetCFPreferenceNumberWithDefault())
          {
            v59 = *(v27 + 616);
            if (v59)
            {
              CFRelease(v59);
              *(v27 + 616) = 0;
            }

            v60 = bapspManager_copyDePrimingSampleBufferWithFullTrim(v8);
            *(v27 + 616) = v60;
            if (!v60 || (fbapspManager_retimeSampleBufferIfNeeded(a1, v60), !v61))
            {
              v18 = 1;
              if (fbapspManager_prepareSubPipeToStop(a1, v8, 1))
              {
                goto LABEL_165;
              }

              fbapspManager_setProcessingState(a1, 1);
              goto LABEL_153;
            }
          }

          else
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v79 = lhs.value;
              LODWORD(v162) = LOBYTE(time2.value);
              v80 = os_log_type_enabled(v78, time2.value);
              v81 = v79 & 0xFFFFFFFE;
              if (v80)
              {
                v81 = v79;
              }

              LODWORD(v160) = v81;
              if (v81)
              {
                v88 = "";
                if (a1)
                {
                  v88 = CMBaseObjectGetDerivedStorage();
                }

                LODWORD(rhs.value) = v163[0];
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v197 = v88;
                LODWORD(v154) = 32;
                _os_log_send_and_compose_impl(v160, 0, &time1, 128, &dword_1962D5000, v78, v162, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s not rebuilding Transcode subPipe - move to Processing state", &rhs, v154);
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fbapspManager_setProcessingState(a1, 2);
          }
        }

        else if (*(v27 + 292))
        {
          v47 = (v27 + 280);
          time1 = v191;
          rhs = *(v27 + 280);
          if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0 && *(v27 + 156) == 4 && *(v27 + 384) == 2 && *(v27 + 120) && !*(v27 + 153))
          {
            if (dword_1EAF16F18)
            {
              LODWORD(lhs.value) = 0;
              LOBYTE(time2.value) = 0;
              v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v49 = lhs.value;
              v162 = v48;
              LODWORD(v160) = LOBYTE(time2.value);
              v50 = os_log_type_enabled(v48, time2.value);
              v51 = v49 & 0xFFFFFFFE;
              if (v50)
              {
                v51 = v49;
              }

              LODWORD(epoch) = v51;
              if (v51)
              {
                v89 = "";
                if (a1)
                {
                  v89 = CMBaseObjectGetDerivedStorage();
                }

                time1 = v191;
                v90 = CMTimeGetSeconds(&time1);
                time1 = *v47;
                v91 = CMTimeGetSeconds(&time1);
                LODWORD(rhs.value) = v167[0];
                *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
                LOWORD(rhs.flags) = 2048;
                *(&rhs.flags + 2) = a1;
                HIWORD(rhs.epoch) = 2082;
                v197 = v89;
                *v198 = 2048;
                *&v198[2] = v90;
                v199 = 2048;
                v200 = v91;
                LODWORD(v154) = 52;
                p_rhs = &rhs;
                _os_log_send_and_compose_impl(epoch, 0, &time1, 128, &dword_1962D5000, v162, v160, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s sbufEndOPTS %1.3f is past the overlapEndTime %1.3f - set the timelineMilestone.");
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(a1);
          }
        }

LABEL_164:
        v18 = 1;
        goto LABEL_165;
      }
    }

    if ((*(v27 + 156) - 1) > 1)
    {
      goto LABEL_75;
    }

    if (dword_1EAF16F18)
    {
      LODWORD(lhs.value) = 0;
      LOBYTE(time2.value) = 0;
      v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v42 = lhs.value;
      v43 = v41;
      value_low = LOBYTE(time2.value);
      v44 = os_log_type_enabled(v41, time2.value);
      v45 = v42 & 0xFFFFFFFE;
      if (v44)
      {
        v45 = v42;
      }

      if (v45)
      {
        v159 = v45;
        if (a1)
        {
          v46 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v46 = "";
        }

        time1 = v191;
        v62 = CMTimeGetSeconds(&time1);
        LODWORD(rhs.value) = v166[0];
        *(&rhs.value + 4) = "fbapspManager_startOrStopMixingIfNeeded";
        LOWORD(rhs.flags) = 2048;
        *(&rhs.flags + 2) = a1;
        HIWORD(rhs.epoch) = 2082;
        v197 = v46;
        *v198 = 2048;
        *&v198[2] = v62;
        LODWORD(v154) = 42;
        p_rhs = &rhs;
        _os_log_send_and_compose_impl(v159, 0, &time1, 128, &dword_1962D5000, v43, value_low, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s waiting for mix start - next sbuf endOPTS: %1.3f");
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v63 = CMBaseObjectGetDerivedStorage();
    v64 = *(v63 + 616);
    if (v64)
    {
      CFRelease(v64);
      *(v63 + 616) = 0;
    }

    v65 = *(v63 + 608);
    if (v65)
    {
      CFRelease(v65);
      *(v63 + 608) = 0;
    }

    v160 = v63;
    v66 = CMBaseObjectGetDerivedStorage();
    *&time1.value = *v178;
    time1.epoch = v11;
    *&rhs.value = *v178;
    rhs.epoch = v11;
    sampleBufferOut = 0;
    epoch = v66;
    if (*(v66 + 268))
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8);
      v212 = lhs.value;
      v67 = lhs.flags;
      v213 = lhs.timescale;
      v68 = lhs.epoch;
      CMSampleBufferGetOutputDuration(&time1, v8);
      time2.value = v212;
      time2.timescale = v213;
      time2.flags = v67;
      time2.epoch = v68;
      v208 = time1;
      CMTimeAdd(&lhs, &time2, &v208);
      v208.value = lhs.value;
      v208.timescale = lhs.timescale;
      if (v67)
      {
        LODWORD(v157) = lhs.flags;
        v156 = lhs.epoch;
        lhs.value = v212;
        lhs.timescale = v213;
        lhs.flags = v67;
        lhs.epoch = v68;
        time2 = *(epoch + 256);
        if (CMTimeCompare(&lhs, &time2) < 0)
        {
          lhs = *(epoch + 256);
          time2.value = v208.value;
          time2.timescale = v208.timescale;
          time2.flags = v157;
          time2.epoch = v156;
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            lhs.value = v208.value;
            lhs.timescale = v208.timescale;
            lhs.flags = v157;
            lhs.epoch = v156;
            time2 = *(epoch + 256);
            CMTimeSubtract(&rhs, &lhs, &time2);
            lhs = rhs;
            time2 = **&MEMORY[0x1E6960CC0];
            if (CMTimeCompare(&lhs, &time2) >= 1)
            {
              v82 = CFGetAllocator(v8);
              if (!CMSampleBufferCreateCopy(v82, v8, &sampleBufferOut))
              {
                lhs = rhs;
                v83 = CMTimeCopyAsDictionary(&lhs, allocator);
                CMSetAttachment(sampleBufferOut, key, v83, 1u);
                CMSampleBufferGetPresentationTimeStamp(&lhs, sampleBufferOut);
                CMSampleBufferGetOutputPresentationTimeStamp(&lhs, sampleBufferOut);
                CMSampleBufferGetOutputDuration(&lhs, sampleBufferOut);
                time1 = lhs;
                if (v83)
                {
                  CFRelease(v83);
                }
              }
            }
          }
        }
      }
    }

    v69 = sampleBufferOut;
    *(v160 + 616) = sampleBufferOut;
    if (!v69 || (fbapspManager_retimeSampleBufferIfNeeded(a1, v69), !v86))
    {
      v70 = CMBaseObjectGetDerivedStorage();
      *&time1.value = *v178;
      time1.epoch = v11;
      *&rhs.value = *v178;
      rhs.epoch = v11;
      sbuf = 0;
      epoch = v70;
      if (*(v70 + 268))
      {
        CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v8);
        v212 = lhs.value;
        v71 = lhs.flags;
        v213 = lhs.timescale;
        v72 = lhs.epoch;
        CMSampleBufferGetOutputDuration(&time1, v8);
        time2.value = v212;
        time2.timescale = v213;
        time2.flags = v71;
        v157 = v72;
        time2.epoch = v72;
        v208 = time1;
        CMTimeAdd(&lhs, &time2, &v208);
        sampleBufferOut = lhs.value;
        v211 = lhs.timescale;
        if (v71)
        {
          v73 = lhs.flags;
          v156 = lhs.epoch;
          lhs.value = v212;
          lhs.timescale = v213;
          lhs.flags = v71;
          lhs.epoch = v157;
          time2 = *(epoch + 256);
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            lhs = *(epoch + 256);
            time2.value = sampleBufferOut;
            time2.timescale = v211;
            time2.flags = v73;
            time2.epoch = v156;
            if (CMTimeCompare(&lhs, &time2) < 0)
            {
              lhs = *(epoch + 256);
              time2.value = v212;
              time2.timescale = v213;
              time2.flags = v71;
              time2.epoch = v157;
              CMTimeSubtract(&rhs, &lhs, &time2);
              lhs = rhs;
              time2 = **&MEMORY[0x1E6960CC0];
              if (CMTimeCompare(&lhs, &time2) >= 1)
              {
                v84 = CFGetAllocator(v8);
                if (!CMSampleBufferCreateCopy(v84, v8, &sbuf))
                {
                  lhs = rhs;
                  v85 = CMTimeCopyAsDictionary(&lhs, allocator);
                  CMSetAttachment(sbuf, v165, v85, 1u);
                  CMSampleBufferGetOutputPresentationTimeStamp(&time2, v8);
                  v208 = rhs;
                  CMTimeAdd(&lhs, &time2, &v208);
                  v213 = lhs.timescale;
                  v212 = lhs.value;
                  CMSampleBufferSetOutputPresentationTimeStamp(sbuf, &lhs);
                  CMSampleBufferGetPresentationTimeStamp(&lhs, sbuf);
                  CMSampleBufferGetOutputDuration(&lhs, sbuf);
                  time1 = lhs;
                  if (v85)
                  {
                    CFRelease(v85);
                  }
                }
              }
            }
          }
        }
      }

      *(v160 + 608) = sbuf;
    }

    if (*(v162 + 120))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v75 = v74;
      v76 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v76)
      {
        goto LABEL_164;
      }

      if (v76(v75, v171, allocator, &v188))
      {
        goto LABEL_164;
      }

      v77 = FigCFEqual() != 0;
      if (fbapspManager_prepareSubPipeToStop(a1, v8, v77))
      {
        goto LABEL_164;
      }
    }

    else
    {
      v77 = 0;
    }

    fbapspManager_setProcessingState(a1, 3);
    if (!v77 || !*(v162 + 120))
    {
      fbapspManager_postNotification(a1, @"OverlapStartTimeReached", 0);
    }

    if (*(v162 + 608))
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

LABEL_165:
    if (v188)
    {
      CFRelease(v188);
    }

    if (v18 != 1)
    {
      goto LABEL_23;
    }

    v92 = CMBaseObjectGetDerivedStorage();
    if ((*(v92 + 532) & 1) == 0)
    {
      v93 = v92;
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
      time2.value = time1.value;
      v94 = time1.flags;
      time2.timescale = time1.timescale;
      if (time1.flags)
      {
        v95 = time1.epoch;
        *(v93 + 520) = time2.value;
        *(v93 + 528) = time2.timescale;
        *(v93 + 532) = v94;
        *(v93 + 536) = v95;
        if ((*(v93 + 340) & 1) != 0 && (*(v93 + 364) & 1) == 0)
        {
          rhs = *(v93 + 328);
          lhs.value = time2.value;
          lhs.timescale = time2.timescale;
          lhs.flags = v94;
          lhs.epoch = v95;
          CMTimeSubtract(&time1, &rhs, &lhs);
          *(v93 + 352) = time1;
        }
      }
    }

    fbapspManager_retimeSampleBufferIfNeeded(a1, v8);
    if (v96)
    {
      goto LABEL_39;
    }

    if (*(v12 + 120))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v98 = v97;
      v99 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v99 || v99(v98, v171, allocator, &cf))
      {
        goto LABEL_39;
      }
    }

    v100 = CMBaseObjectGetDerivedStorage();
    CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
    v101 = CMGetAttachment(v8, v175, 0);
    v102 = CMGetAttachment(v8, v174, 0);
    if (v101)
    {
      v103 = v102;
      fbapspManager_setSubPipeTerminationInFlight(a1, 1);
      v102 = v103;
      if (*(v100 + 156) == 4 && *(v100 + 384) == 2 && *(v100 + 120) && !*(v100 + 153))
      {
        time1 = *(v100 + 544);
        v152 = fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(a1, &time1.value);
        if (v152 || !v103)
        {
          if (v152)
          {
            goto LABEL_39;
          }

          goto LABEL_184;
        }

LABEL_183:
        fbapspManager_setSubPipeTerminationInFlight(a1, 1);
        goto LABEL_184;
      }
    }

    if (v102)
    {
      goto LABEL_183;
    }

LABEL_184:
    if (*(v12 + 496))
    {
      v105 = CMBaseObjectGetDerivedStorage();
      v208.value = 0;
      LOBYTE(v191.value) = 0;
      if (*(v105 + 496))
      {
        v106 = v105;
        if (*(v105 + 120))
        {
          FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
          v108 = v107;
          v109 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v109)
          {
            v109(v108, v171, allocator, &v208);
          }
        }

        CMSampleBufferGetOutputDuration(&time1, v8);
        time2.value = time1.value;
        v110 = time1.flags;
        time2.timescale = time1.timescale;
        if (time1.flags)
        {
          time1.value = time2.value;
          time1.timescale = time2.timescale;
          v160 = time1.epoch;
          rhs = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&time1, &rhs) >= 1)
          {
            v162 = v106;
            v111 = (v106 + 460);
            rhs = *v111;
            lhs.value = time2.value;
            lhs.timescale = time2.timescale;
            lhs.flags = v110;
            lhs.epoch = v160;
            CMTimeAdd(&time1, &rhs, &lhs);
            *v111 = time1;
            v106 = v162;
          }
        }

        if (*(v106 + 120) && ((*(v106 + 472) & 1) == 0 || (time1 = *(v106 + 460), rhs = *(v106 + 484), CMTimeCompare(&time1, &rhs) < 1)))
        {
          v114 = v106;
          v115 = 0;
        }

        else
        {
          v112 = MEMORY[0x1E6960CC0];
          *(v106 + 460) = *MEMORY[0x1E6960CC0];
          *(v106 + 476) = *(v112 + 16);
          if (*(v106 + 508) == 2)
          {
            if (FigCFEqual())
            {
              v113 = 4;
            }

            else
            {
              v113 = 3;
            }

            v114 = v106;
            *(v106 + 508) = v113;
          }

          else
          {
            v114 = v106;
          }

          v115 = 1;
        }

        v116 = *(v114 + 508);
        switch(v116)
        {
          case 3:
            v117 = 0;
            SubPipeTypeForSbuf = v170;
            break;
          case 4:
            v117 = 0;
            SubPipeTypeForSbuf = v173;
            break;
          case 1:
            SubPipeTypeForSbuf = fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v191);
            v117 = LOBYTE(v191.value) != 0;
            break;
          default:
            v117 = 0;
            SubPipeTypeForSbuf = 0;
            break;
        }

        HIBYTE(v182) = (v115 | v117) & 1;
        if (v208.value)
        {
          CFRelease(v208.value);
        }
      }

      else
      {
        SubPipeTypeForSbuf = 0;
      }
    }

    else if (*(v12 + 156) == 4)
    {
      SubPipeTypeForSbuf = v173;
      if (!*(v12 + 120))
      {
        HIBYTE(v182) = 1;
        SubPipeTypeForSbuf = v170;
LABEL_237:
        CMSampleBufferGetOutputPresentationTimeStamp(&v183, v8);
        if (!fbapspManager_createAndInitializeSubPipe(a1, v8, SubPipeTypeForSbuf))
        {
          fbapspManager_setPropertiesOnSubPipe(a1);
          if (!v134)
          {
            fbapspManager_setLoudnessInfoOnSubPipe(a1);
            fbapspManager_setProcessingState(a1, 2);
            if (!fbapspManager_connectSbufBridge(a1, v135, v136, v137, v138, v139, v140, v141, p_rhs, v154, v155, SBYTE2(v155), BYTE3(v155), SHIDWORD(v155), v156, v157, epoch, SWORD2(epoch), v160, v162, v163[0], v163[1], key, v165, v166[0], v166[1], SBYTE4(v166[1]), v167[0], v167[1], p_epoch, v169, v170, v171, allocator, v173, v174, v175, v176, v177, v178[0], v178[1], v179.value, *&v179.timescale, v179.epoch, v180, cf, v182, v183.value, *&v183.timescale, v183.epoch, v184, v185.value, *&v185.timescale, v185.epoch, v186))
            {
              fbapspManager_enqueueMarkerSampleBuffer(a1);
              v142 = *(v12 + 56);
              time1 = v183;
              if (!fbapspManager_startAudioChainForSubPipe(a1, &time1.value, v142))
              {
LABEL_215:
                v118 = CMBaseObjectGetDerivedStorage();
                v119 = CMGetAttachment(v8, v175, 0);
                v120 = CMGetAttachment(v8, v174, 0);
                if (v119 && !v118[15])
                {
                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  v121 = v118[4];
                  time1.value = MEMORY[0x1E69E9820];
                  *&time1.timescale = 0x40000000;
                  time1.epoch = __fbapspManager_PostInspectSampleBuffer_block_invoke;
                  v202 = &__block_descriptor_tmp_189;
                  v203 = a1;
                  dispatch_async(v121, &time1);
                }

                if (v120 && !v118[15])
                {
                  fbapspManager_postNotification(a1, @"PlayResourceReleased", 0);
                  if (a1)
                  {
                    CFRetain(a1);
                  }

                  v122 = v118[4];
                  rhs.value = MEMORY[0x1E69E9820];
                  *&rhs.timescale = 0x40000000;
                  rhs.epoch = __fbapspManager_PostInspectSampleBuffer_block_invoke_2;
                  v197 = &__block_descriptor_tmp_190;
                  *v198 = a1;
                  dispatch_async(v122, &rhs);
                }

                v123 = CMBaseObjectGetDerivedStorage();
                isMarkerSbuf = fbapspManager_isMarkerSbuf(v8);
                v125 = *(v123 + 200);
                if (isMarkerSbuf)
                {
                  CMBufferQueueEnqueue(v125, v8);
                }

                else
                {
                  CMBufferQueueReset(v125);
                }

                FormatDescription = CMSampleBufferGetFormatDescription(v8);
                if (FormatDescription)
                {
                  v127 = FormatDescription;
                  v128 = v118[21];
                  if (v128)
                  {
                    if (!CMAudioFormatDescriptionEqual(FormatDescription, v128, 0xFu, 0))
                    {
                      v129 = v118[21];
                      v118[21] = v127;
                      CFRetain(v127);
                      if (v129)
                      {
                        CFRelease(v129);
                      }
                    }
                  }

                  else
                  {
                    v118[21] = FormatDescription;
                    CFRetain(FormatDescription);
                  }
                }

                v130 = CMBaseObjectGetDerivedStorage();
                CMSampleBufferGetOutputPresentationTimeStamp(&time1, v8);
                time2.value = time1.value;
                v131 = time1.flags;
                time2.timescale = time1.timescale;
                v132 = time1.epoch;
                CMSampleBufferGetOutputDuration(&time1, v8);
                v208.value = time1.value;
                v208.timescale = time1.timescale;
                if (v131)
                {
                  rhs.value = time2.value;
                  rhs.timescale = time2.timescale;
                  rhs.flags = v131;
                  rhs.epoch = v132;
                  lhs.value = v208.value;
                  lhs.timescale = v208.timescale;
                  lhs.flags = time1.flags;
                  lhs.epoch = time1.epoch;
                  CMTimeAdd(&time1, &rhs, &lhs);
                  *(v130 + 544) = time1;
                  v133 = *(v130 + 568);
                  *(v130 + 568) = v8;
                  CFRetain(v8);
                  if (v133)
                  {
                    CFRelease(v133);
                  }
                }
              }
            }
          }

LABEL_39:
          v18 = 1;
          goto LABEL_23;
        }

LABEL_259:
        fbapspManager_restoreRetimeSampleBufferIfNeeded(a1, v8);
        v18 = 2;
        goto LABEL_23;
      }
    }

    else
    {
      SubPipeTypeForSbuf = fbapspManager_findSubPipeTypeForSbuf(a1, v8, &v182 + 7);
    }

    if (!HIBYTE(v182))
    {
      goto LABEL_215;
    }

    if (!*(v12 + 120))
    {
      goto LABEL_237;
    }

    v143 = *(v12 + 616);
    if (v143)
    {
      CFRelease(v143);
      *(v12 + 616) = 0;
    }

    *(v12 + 616) = bapspManager_copyDePrimingSampleBufferWithFullTrim(v8);
    v18 = 1;
    if (!fbapspManager_prepareSubPipeToStop(a1, v8, 1))
    {
      v144 = *(v12 + 608);
      if (v144)
      {
        CFRelease(v144);
        *(v12 + 608) = 0;
      }

      v145 = *(v12 + 568);
      lhs.value = 0;
      *&time1.value = *v178;
      time1.epoch = v11;
      if (v145)
      {
        if (!CMSampleBufferCallForEachSample(v145, bapspManager_copyLastSingleCompressedSBufCallback, &lhs))
        {
          if (lhs.value)
          {
            CMSampleBufferGetOutputDuration(&time1, lhs.value);
            rhs = time1;
            v146 = CMTimeCopyAsDictionary(&rhs, allocator);
            CMSetAttachment(lhs.value, v165, v146, 1u);
            if (v146)
            {
              CFRelease(v146);
            }
          }
        }
      }

      *(v12 + 608) = lhs.value;
      v147 = CMGetAttachment(*(v12 + 568), @"OriginalSbufOPTS", 0);
      if (*(v12 + 608))
      {
        v148 = v147;
        if (v147)
        {
          CMSampleBufferGetOutputDuration(&time1, *(v12 + 568));
          v194 = time1.value;
          v149 = time1.flags;
          v195 = time1.timescale;
          v150 = time1.epoch;
          CMTimeMakeFromDictionary(&time1, v148);
          v185 = time1;
          if (v149)
          {
            time1 = v185;
            rhs.value = v194;
            rhs.timescale = v195;
            rhs.flags = v149;
            rhs.epoch = v150;
            CMTimeAdd(&v179, &time1, &rhs);
          }

          else
          {
            v179 = v185;
          }

          v151 = *(v12 + 608);
          time1 = v179;
          if (CMSampleBufferSetOutputPresentationTimeStamp(v151, &time1))
          {
            goto LABEL_39;
          }
        }
      }

      goto LABEL_259;
    }

LABEL_23:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v18 == 3)
    {
      goto LABEL_29;
    }

    if (v18 == 1)
    {
      v19 = *(DerivedStorage + 104);
      v20 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v20)
      {
        v20(v19, v8);
      }

LABEL_29:
      v21 = *(DerivedStorage + 608);
      if (v8 == v21)
      {
        CFRelease(v21);
        *(DerivedStorage + 608) = 0;
      }

      else
      {
        v22 = CMBufferQueueDequeueAndRetain(*(DerivedStorage + 128));
        if (v22)
        {
          CFRelease(v22);
        }
      }
    }

    CFRelease(v8);
    if (!--v3)
    {
      fbapspManager_scheduleProcessingDataIfPossible(a1);
      return;
    }
  }
}

CMSampleBufferRef bapspManager_copyDePrimingSampleBufferWithFullTrim(opaqueCMSampleBuffer *a1)
{
  v6 = **&MEMORY[0x1E6960C70];
  refcon = 0;
  if (!CMSampleBufferCallForEachSample(a1, bapspManager_copyFirstSingleCompressedSBufCallback, &refcon))
  {
    if (refcon)
    {
      CMSampleBufferGetOutputDuration(&v6, refcon);
      v1 = *MEMORY[0x1E695E480];
      v4 = v6;
      v2 = CMTimeCopyAsDictionary(&v4, v1);
      CMSetAttachment(refcon, *MEMORY[0x1E6960558], v2, 1u);
      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return refcon;
}

uint64_t fbapspManager_createAndInitializeSubPipe(const void *a1, opaqueCMSampleBuffer *a2, const void *a3)
{
  v63[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    fbapspManager_createAndInitializeSubPipe_cold_1(v63);
    return LODWORD(v63[0]);
  }

  v7 = DerivedStorage;
  v8 = CFEqual(a3, @"SubPipeTypePassthrough");
  v9 = CMBaseObjectGetDerivedStorage();
  v10 = v9;
  if (v8)
  {
    cf = 0;
    v11 = *(v9 + 160);
    if (v11)
    {
      v12 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v11);
      if (v12)
      {
        goto LABEL_86;
      }

      *(v10 + 160) = 0;
    }

    FormatDescription = CMSampleBufferGetFormatDescription(a2);
    v14 = *MEMORY[0x1E695E480];
    v12 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (!v12)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        if (a1)
        {
          v16 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v16 = "";
        }

        v24 = CFStringCreateWithCString(v14, v16, 0x8000100u);
        CFDictionarySetValue(MutableCopy, @"LoggingID", v24);
        FigBufferedAirPlayAudioChainSubPipePassthroughCreate(v14, *(v10 + 112), FormatDescription, MutableCopy, (v10 + 120));
        if (v25 || (v25 = fbapspManager_addListenersForSubPipe(a1, *(v10 + 120)), v25))
        {
          v32 = v25;
        }

        else
        {
          v26 = *(v10 + 184);
          v27 = cf;
          *(v10 + 184) = cf;
          if (v27)
          {
            CFRetain(v27);
          }

          if (v26)
          {
            CFRelease(v26);
          }

          if (dword_1EAF16F18)
          {
            LODWORD(v61) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v32 = 0;
        }
      }

      else
      {
        v24 = 0;
        v32 = 4294954510;
      }

LABEL_53:
      if (cf)
      {
        CFRelease(cf);
      }

      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!v32)
      {
        fbapspManager_createAndInitializeSubPipe_cold_2(v63);
        v54 = v63[0];
        goto LABEL_75;
      }

      return v32;
    }

LABEL_86:
    v32 = v12;
    v24 = 0;
    MutableCopy = 0;
    goto LABEL_53;
  }

  v61 = 0;
  cf = 0;
  v17 = *MEMORY[0x1E695E480];
  v18 = FigCFDictionaryCreateMutableCopy();
  *type = 0;
  v19 = CMSampleBufferGetFormatDescription(a2);
  v20 = *(v10 + 176);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
  if (v21)
  {
    goto LABEL_28;
  }

  v22 = *(v10 + 192);
  if (v22)
  {
    cf = CFRetain(v22);
    goto LABEL_15;
  }

  v29 = *(v10 + 40);
  v30 = *(v10 + 176);
  v31 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v31)
  {
    v33 = 0;
    goto LABEL_62;
  }

  v21 = v31(v29, v30, &cf);
  if (v21)
  {
LABEL_28:
    v32 = v21;
    v33 = 0;
    goto LABEL_63;
  }

LABEL_15:
  if (a1)
  {
    v23 = CMBaseObjectGetDerivedStorage();
  }

  else
  {
    v23 = "";
  }

  v33 = CFStringCreateWithCString(v17, v23, 0x8000100u);
  CFDictionarySetValue(v18, @"LoggingID", v33);
  if ((*(v10 + 156) - 3) > 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v10 + 376);
  }

  v35 = FigCFEqual();
  v36 = *(v10 + 160);
  if (v35)
  {
    if (v36)
    {
      goto LABEL_42;
    }
  }

  else if (v36)
  {
    v37 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v36);
    if (v37)
    {
      goto LABEL_89;
    }

    *(v10 + 160) = 0;
  }

  FigBufferedAirPlayOutputGetCMBaseObject();
  v39 = v38;
  v40 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v40)
  {
LABEL_62:
    v32 = 4294954514;
    goto LABEL_63;
  }

  v37 = v40(v39, @"LoggingID", v17, &v61);
  if (v37)
  {
    goto LABEL_89;
  }

  v37 = FigBufferedAirPlayOfflineMixerFactoryAcquireMixer(v17, v33, v61, cf, v34, *(v10 + 112), (v10 + 160));
  if (v37)
  {
    goto LABEL_89;
  }

LABEL_42:
  FigBufferedAirPlayOutputGetCMBaseObject();
  v42 = v41;
  v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v43)
  {
    goto LABEL_62;
  }

  v58 = v19;
  v59 = v18;
  v44 = v43(v42, @"SupportsReceiverSideSoundCheck", v17, type);
  if (v44)
  {
    v32 = v44;
LABEL_84:
    v18 = v59;
    goto LABEL_63;
  }

  Value = CFBooleanGetValue(*type);
  v46 = *(v10 + 160);
  v47 = *(v10 + 112);
  v48 = cf;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v50 = v48;
  v18 = v59;
  FigBufferedAirPlayAudioChainSubPipeTranscodeCreate(v17, v46, v47, v58, v50, Value, AllocatorForMedia, v59, (v10 + 120));
  if (!v37)
  {
    v37 = fbapspManager_addListenersForSubPipe(a1, *(v10 + 120));
    if (!v37)
    {
      v51 = *(v10 + 184);
      v52 = cf;
      *(v10 + 184) = cf;
      if (v52)
      {
        CFRetain(v52);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (dword_1EAF16F18)
      {
        v53 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v32 = 0;
      goto LABEL_84;
    }
  }

LABEL_89:
  v32 = v37;
LABEL_63:
  if (v18)
  {
    CFRelease(v18);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (*type)
  {
    CFRelease(*type);
  }

  if (!v32)
  {
    v54 = CFDictionaryCreate(v17, kFigBufferedAirPlaySubPipeManagerProperty_ProcessingMode, kFigBufferedAirPlaySubPipeManagerProcessingMode_Transcode, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_75:
    fbapspManager_postNotification(a1, @"ProcessingModeChanged", v54);
    v55 = *(v7 + 104);
    v56 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v56)
    {
      v32 = v56(v55);
      if (!v32)
      {
        fbapspManager_createAndInitializeSubPipe_cold_3(v7);
      }

      if (!v54)
      {
        return v32;
      }
    }

    else
    {
      v32 = 4294954514;
      if (!v54)
      {
        return v32;
      }
    }

    CFRelease(v54);
  }

  return v32;
}

CMTime *fbapspManager_updateOverlapDeadline(uint64_t a1, __int128 *a2)
{
  result = CMBaseObjectGetDerivedStorage();
  v4 = result;
  if (*(a2 + 12))
  {
    if ((result[10].value & 0x100000000) == 0)
    {
      v7 = *a2;
      *&result[10].timescale = *(a2 + 2);
      *&result[9].epoch = v7;
      return result;
    }

    time1 = *(result + 232);
    v8 = *a2;
    result = CMTimeMinimum(&v10, &time1, &v8);
    *&v4[9].epoch = *&v10.value;
    epoch = v10.epoch;
  }

  else
  {
    v5 = MEMORY[0x1E6960C70];
    *&result[9].epoch = *MEMORY[0x1E6960C70];
    epoch = *(v5 + 16);
  }

  *&v4[10].timescale = epoch;
  return result;
}

BOOL fbapspManager_isMarkerSbuf(opaqueCMSampleBuffer *a1)
{
  CMSampleBufferGetOutputPresentationTimeStamp(&v6, a1);
  flags = v6.flags;
  FormatDescription = CMSampleBufferGetFormatDescription(a1);
  return (flags & 1) == 0 && FormatDescription == 0;
}

uint64_t bapspManager_copyFirstSingleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, const void **a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    if (!*a3)
    {
      CMSampleBufferGetOutputDuration(&v9, a1);
      time1 = v9;
      v7 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &v7) >= 1)
      {
        v6 = *a3;
        *a3 = a1;
        CFRetain(a1);
        if (v6)
        {
          CFRelease(v6);
        }
      }
    }
  }

  return 0;
}

uint64_t FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(CFAllocatorRef allocator, const __CFString *a2, const void *a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_4(&v16);
    return v16;
  }

  if ((*(a4 + 12) & 1) == 0)
  {
    sampleTimingArray = 0;
    v11 = 0;
LABEL_4:
    v12 = CMSampleBufferCreate(allocator, 0, 1u, 0, 0, 0, 0, v11, sampleTimingArray, 0, 0, &cf);
    if (!v12)
    {
      FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_2(a2, a5, &cf, a3);
    }

    if (sampleTimingArray)
    {
      CFAllocatorDeallocate(allocator, sampleTimingArray);
    }

    goto LABEL_8;
  }

  v14 = MEMORY[0x19A8CC720](allocator, 72, 0x1000040FF89C88ELL, 0);
  if (v14)
  {
    sampleTimingArray = v14;
    FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_3(v14, a4);
    v11 = 1;
    goto LABEL_4;
  }

  FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker_cold_1(&v16);
  v12 = v16;
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

uint64_t bapspManager_copyLastSingleCompressedSBufCallback(opaqueCMSampleBuffer *a1, uint64_t a2, const void **a3)
{
  v9 = **&MEMORY[0x1E6960C70];
  if (a1)
  {
    CMSampleBufferGetOutputDuration(&v9, a1);
    time1 = v9;
    v7 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v7) >= 1)
    {
      v5 = *a3;
      *a3 = a1;
      CFRetain(a1);
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  return 0;
}

void fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v16 = *(a3 + 8);
  v15 = **&MEMORY[0x1E6960C70];
  v14 = v15;
  FigCFDictionaryGetArrayValue();
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (MutableCopy)
  {
    v6 = MutableCopy;
    if (a2 && (Count = CFArrayGetCount(a2), Count >= 2))
    {
      v8 = Count;
      v9 = 1;
      while (1)
      {
        CFArrayGetValueAtIndex(a2, v9);
        if (!FigCFDictionaryGetCMTimeIfPresent())
        {
          fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier_cold_1(a3);
          goto LABEL_11;
        }

        lhs = v15;
        v12 = v16;
        CMTimeAdd(&v14, &lhs, &v12);
        CFArrayGetValueAtIndex(v6, v9);
        v10 = FigCFDictionaryCreateMutableCopy();
        lhs = v14;
        v11 = FigCFDictionarySetCMTime();
        **a3 = v11;
        if (v11)
        {
          break;
        }

        CFArraySetValueAtIndex(v6, v9, v10);
        if (v10)
        {
          CFRelease(v10);
        }

        if (v8 == ++v9)
        {
          goto LABEL_10;
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    else
    {
LABEL_10:
      FigCFDictionarySetValue();
    }

LABEL_11:
    CFRelease(v6);
  }

  else
  {
    **a3 = -12786;
  }
}

uint64_t fbapspManager_isSubPipeStarted(uint64_t a1)
{
  BOOLean = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 120))
  {
    return 0;
  }

  FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
  v2 = v1;
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(v2, @"IsStarted", *MEMORY[0x1E695E480], &BOOLean);
  v5 = BOOLean;
  if (v4)
  {
    Value = 0;
    if (!BOOLean)
    {
      return Value;
    }

    goto LABEL_5;
  }

  Value = CFBooleanGetValue(BOOLean);
  v5 = BOOLean;
  if (BOOLean)
  {
LABEL_5:
    CFRelease(v5);
  }

  return Value;
}

CMTime *fbapspManager_lastProcessedOPTSInMediaTime@<X0>(CMTime *a2@<X8>)
{
  result = CMBaseObjectGetDerivedStorage();
  *a2 = **&MEMORY[0x1E6960C70];
  if ((result[15].value & 0x100000000) != 0)
  {
    lhs = *(result + 544);
    v5 = *(result + 352);
    return CMTimeSubtract(a2, &lhs, &v5);
  }

  else
  {
    v4 = *&result[22].epoch;
    a2->epoch = *&result[23].timescale;
    *&a2->value = v4;
  }

  return result;
}

uint64_t fbapspManager_HandlePendingSbufsOnSubPipeFinishCallback(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMGetAttachment(a1, @"FlushRangeEnd", 0);
  v4 = *(DerivedStorage + 112);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(v4, a1);
}

BOOL fbapspManager_isReadyToMix(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 56);
  v4 = v3 != 0.0 && v3 != -999999.875;
  v5 = *(DerivedStorage + 376);
  v6 = *(DerivedStorage + 156);
  CMBaseObjectGetDerivedStorage();
  fbapspManager_dataFlowIsAllowed(a1);
  if (v5)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v6 == 3 && v7;
}

void fbapspManager_processOverlapRange(const void *a1, const void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v5 = CFGetTypeID(a2);
    if (v5 != CFDictionaryGetTypeID())
    {
      return;
    }

    v6 = *(DerivedStorage + 376);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 376) = 0;
    }

    NumberValue = FigCFDictionaryGetNumberValue();
    if (NumberValue)
    {
      v13 = CFRetain(NumberValue);
      *(DerivedStorage + 376) = v13;
      if (v13)
      {
        if (FigCFDictionaryGetBooleanValue() == *MEMORY[0x1E695E4D0])
        {
          if (*(DerivedStorage + 384) == 1)
          {
            v16 = MEMORY[0x1E6960C70];
            *(DerivedStorage + 232) = *MEMORY[0x1E6960C70];
            *(DerivedStorage + 248) = *(v16 + 16);
          }

          DictionaryValue = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, DictionaryValue);
          *(DerivedStorage + 256) = time;
          v18 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, v18);
          *(DerivedStorage + 280) = time;
          *(DerivedStorage + 384) = 2;
          *(DerivedStorage + 154) = 0;
          FigCFDictionaryGetCMTimeIfPresent();
          if (!dword_1EAF16F18)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v15 = *MEMORY[0x1E695E4D0];
          if (FigCFDictionaryGetBooleanValue() != v15)
          {
            if (dword_1EAF16F18)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            v22 = *(DerivedStorage + 376);
            if (v22)
            {
              CFRelease(v22);
              *(DerivedStorage + 376) = 0;
            }

            goto LABEL_27;
          }

          v19 = FigCFDictionaryGetDictionaryValue();
          CMTimeMakeFromDictionary(&time, v19);
          *(DerivedStorage + 256) = time;
          *(DerivedStorage + 384) = 1;
          if (!dword_1EAF16F18)
          {
LABEL_27:
            time = *(DerivedStorage + 256);
            fbapspManager_updateOverlapDeadline(a1, &time.value);
            CMBaseObjectGetDerivedStorage();
            if (fbapspManager_isRetransmitForOverlapRequired(a1))
            {
              fbapspManager_postNotification(a1, @"OverlapDeadlineReached", 0);
            }

            return;
          }
        }

        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
LABEL_26:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_27;
      }
    }

    else
    {
      *(DerivedStorage + 376) = 0;
    }

    if (!dword_1EAF16F18)
    {
      goto LABEL_27;
    }

    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    goto LABEL_26;
  }

  if (dword_1EAF16F18)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 384) == 2)
  {
    fbapspManager_processOverlapRange_cold_1(DerivedStorage, a1);
  }

  v9 = *(DerivedStorage + 376);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 376) = 0;
  }

  v10 = MEMORY[0x1E6960C70];
  v11 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 256) = *MEMORY[0x1E6960C70];
  v12 = *(v10 + 16);
  *(DerivedStorage + 272) = v12;
  *(DerivedStorage + 280) = v11;
  *(DerivedStorage + 296) = v12;
  *(DerivedStorage + 304) = v11;
  *(DerivedStorage + 320) = v12;
  *(DerivedStorage + 384) = 0;
  *(DerivedStorage + 404) = v12;
  *(DerivedStorage + 388) = v11;
  fbapspManager_updateOverlapDeadline(a1, v10);
}

uint64_t fbapspManager_reset(uint64_t a1, char a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = *(CMBaseObjectGetDerivedStorage() + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_reset_block_invoke;
  block[3] = &unk_1E7482C40;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(v4, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t fbapspManager_flush(uint64_t a1, __int128 *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __fbapspManager_flush_block_invoke;
  v8[3] = &unk_1E7482C68;
  v8[4] = &v11;
  v8[5] = DerivedStorage;
  v8[6] = a1;
  v9 = *a2;
  v10 = *(a2 + 2);
  dispatch_sync(v5, v8);
  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t fbapspManager_flushFromTime(const void *a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v5 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_flushFromTime_block_invoke;
  block[3] = &unk_1E7482C90;
  v6 = a2[2];
  v17 = a2[1];
  v18 = v6;
  v16 = *a2;
  block[6] = DerivedStorage;
  block[7] = a1;
  block[4] = &v23;
  block[5] = &v19;
  dispatch_sync(v5, block);
  if (*(v20 + 24))
  {
    v7 = *(v24 + 6);
  }

  else
  {
    *(v24 + 6) = 0;
    if (a1)
    {
      CFRetain(a1);
    }

    v8 = *(DerivedStorage + 88);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __fbapspManager_flushFromTime_block_invoke_210;
    v11[3] = &unk_1E7482D00;
    v11[6] = DerivedStorage;
    v11[7] = a1;
    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    v14 = a2[2];
    v11[4] = &v19;
    v11[5] = &v23;
    dispatch_async(v8, v11);
    v7 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v7;
}

uint64_t fbapspManager_prepareMixingData(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_prepareMixingData_block_invoke;
  block[3] = &unk_1E7482D28;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t fbapspManager_startMixingData(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = &__fbapspManager_startMixingData_block_invoke;
  block[3] = &unk_1E7482D50;
  block[5] = DerivedStorage;
  block[6] = a1;
  block[4] = &v7;
  dispatch_sync(v3, block);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t fbapspManager_stopMixingData(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(DerivedStorage + 80);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __fbapspManager_stopMixingData_block_invoke;
  v5[3] = &__block_descriptor_tmp_218;
  v5[4] = DerivedStorage;
  v5[5] = a1;
  dispatch_sync(v3, v5);
  return 0;
}

uint64_t fbapspManager_requestRetransmitAtDeadline(const void *a1, char a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 80);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fbapspManager_postNotificationForRequestRetransmitIfNeededAsync_block_invoke;
  block[3] = &__block_descriptor_tmp_219;
  v8 = a2;
  block[4] = DerivedStorage;
  block[5] = a1;
  dispatch_async(v5, block);
  return 0;
}

__n128 __fbapspManager_flushFromTime_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  if (*(v1 + 384) == 1 && *(v1 + 156) == 3)
  {
    *time1 = *(v1 + 256);
    *&time1[16] = *(v1 + 272);
    time2 = *(a1 + 64);
    if (CMTimeCompare(time1, &time2) < 0)
    {
      if (dword_1EAF16F18)
      {
        LODWORD(queueOut) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v5 = *(a1 + 56);
      v6 = *(*(a1 + 48) + 128);
      time2 = *(a1 + 64);
      queueOut = 0;
      v17 = 0u;
      memset(time1, 0, sizeof(time1));
      v7 = *MEMORY[0x1E695E480];
      CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
      v9 = CMBufferQueueCreate(v7, 0, CallbacksForUnsortedSampleBuffers, &queueOut);
      if (v9 || (*time1 = v5, *&time1[8] = queueOut, *&time1[16] = *&time2.value, *&v17 = time2.epoch, BYTE8(v17) = 1, HIDWORD(v17) = 0, (v9 = MEMORY[0x19A8CE710](v6, fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback, time1)) != 0))
      {
        v11 = v9;
      }

      else
      {
        v10 = MEMORY[0x19A8CE710](queueOut, fbapspManager_copySbufForBufferQueueResetCallback, v6);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = HIDWORD(v17);
        }
      }

      if (queueOut)
      {
        CFRelease(queueOut);
      }

      *(*(*(a1 + 32) + 8) + 24) = v11;
      v12 = *(a1 + 48) + 580;
      v13 = MEMORY[0x1E6960C70];
      result = *MEMORY[0x1E6960C70];
      *v12 = *MEMORY[0x1E6960C70];
      *(v12 + 16) = *(v13 + 16);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void __fbapspManager_flushFromTime_block_invoke_211(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v16 = **&MEMORY[0x1E6960C70];
  v15 = v16;
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  if (!*(v2 + 456) && *(v2 + 576))
  {
    if (*(v2 + 556))
    {
      time1 = *(a1 + 64);
      time2 = *(v2 + 544);
      v5 = CMTimeCompare(&time1, &time2);
      v2 = *(a1 + 48);
      if (v5 > 0)
      {
        if (*(v2 + 152))
        {
          if (dword_1EAF16F18)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          usleep(0x30D40u);
        }

        else if ((*(v2 + 156) - 2) > 2)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
        }

        else
        {
          fbapspManager_dequeueInspectSendSampleBufferInternal(*(a1 + 56));
        }

        return;
      }
    }

    v7 = CMBufferQueueDequeueAndRetain(*(v2 + 128));
    if (!CMGetAttachment(v7, @"FlushRangeEnd", 0))
    {
      goto LABEL_35;
    }

    value = *v3;
    if (*(*v3 + 120))
    {
      if (*(value + 153))
      {
        if (__fbapspManager_flushFromTime_block_invoke_211_cold_1(a1, v3, &time1.value))
        {
LABEL_35:
          if (v7)
          {
            CFRelease(v7);
          }

          return;
        }

        value = time1.value;
      }

      if (*(value + 556))
      {
        CMTimeMake(&time1, 1, 480000);
        time2 = *(value + 544);
        CMTimeAdd(&v15, &time2, &time1);
      }

      time1 = v15;
      *(*(*(a1 + 40) + 8) + 24) = CMSampleBufferSetOutputPresentationTimeStamp(v7, &time1);
      if (*(*(*(a1 + 40) + 8) + 24) || (__fbapspManager_flushFromTime_block_invoke_211_cold_2(v7, a1) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    if (dword_1EAF16F18)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v13 = *(*v3 + 112);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v14)
    {
      v14(v13, v7);
    }

    *(*v3 + 576) = 0;
    goto LABEL_35;
  }

  if (dword_1EAF16F18)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v10 = *(a1 + 48);
  if ((*(v10 + 156) - 1) <= 3)
  {
    if (*(a1 + 76))
    {
      v16 = *(a1 + 64);
      if (*(v10 + 364))
      {
        time1 = *(a1 + 64);
        time2 = *(v10 + 352);
        CMTimeAdd(&v16, &time1, &time2);
      }

      if (dword_1EAF16F18)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*v3 + 544) = v16;
      v10 = *v3;
    }

    if (*(v10 + 120))
    {
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      fbapspManager_setProcessingState(*(a1 + 56), 1);
    }
  }
}

void fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  sampleBufferOut = 0;
  v17 = **&MEMORY[0x1E6960C70];
  v16 = v17;
  v15 = v17;
  if (!*(a2 + 40))
  {
    goto LABEL_19;
  }

  v3 = a1;
  CMSampleBufferGetOutputPresentationTimeStamp(&rhs, a1);
  value = rhs.value;
  flags = rhs.flags;
  timescale = rhs.timescale;
  if ((rhs.flags & 0x1D) != 1)
  {
    goto LABEL_12;
  }

  epoch = rhs.epoch;
  CMSampleBufferGetOutputDuration(&rhs, v3);
  lhs.value = value;
  lhs.timescale = timescale;
  lhs.flags = flags;
  lhs.epoch = epoch;
  CMTimeAdd(&v17, &lhs, &rhs);
  rhs.value = value;
  rhs.timescale = timescale;
  rhs.flags = flags;
  rhs.epoch = epoch;
  lhs = *(a2 + 16);
  if ((CMTimeCompare(&rhs, &lhs) & 0x80000000) == 0)
  {
    *(a2 + 40) = 0;
    goto LABEL_19;
  }

  rhs = v17;
  lhs = *(a2 + 16);
  if (CMTimeCompare(&rhs, &lhs) >= 1)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CMSampleBufferCreateCopy(*MEMORY[0x1E695E480], v3, &sampleBufferOut);
    if (!sampleBufferOut)
    {
      fbapspManager_copySbufBeforeFlushTimeForBufferQueueResetCallback_cold_1(v7);
      goto LABEL_19;
    }

    v8 = CMCopyDictionaryOfAttachments(v6, v3, 0);
    if (v8)
    {
      CMSetAttachments(sampleBufferOut, v8, 0);
    }

    rhs = v17;
    lhs = *(a2 + 16);
    CMTimeSubtract(&v16, &rhs, &lhs);
    v9 = *MEMORY[0x1E6960558];
    v10 = CMGetAttachment(sampleBufferOut, *MEMORY[0x1E6960558], 0);
    if (v10)
    {
      CMTimeMakeFromDictionary(&v15, v10);
      lhs = v16;
      v12 = v15;
      CMTimeAdd(&rhs, &lhs, &v12);
      v16 = rhs;
    }

    rhs = v16;
    v11 = CMTimeCopyAsDictionary(&rhs, v6);
    CMSetAttachment(sampleBufferOut, v9, v11, 1u);
    v3 = sampleBufferOut;
  }

  else
  {
LABEL_12:
    v8 = 0;
    v11 = 0;
  }

  if (*(a2 + 40))
  {
    CMBufferQueueEnqueue(*(a2 + 8), v3);
    *(a2 + 44) = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_19:
  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }
}

uint64_t OUTLINED_FUNCTION_4_41(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_12_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(v10, 0, a3, 128, a5, v8, v9, a8);
}

uint64_t OUTLINED_FUNCTION_16_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_25_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, uint64_t a21)
{
  result = a20;
  *(v21 - 256) = a20;
  *(v21 - 240) = a21;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, char a20, int a21)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_34_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_38_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, char a24, int a25)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, char a34, int a35)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

__n128 OUTLINED_FUNCTION_46_4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v1[1].n128_u64[0];
  return result;
}

Float64 OUTLINED_FUNCTION_47_4@<D0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, CMTime *time, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 timea, uint64_t time_16)
{
  timea = *(a1 + 304);
  time_16 = *(a1 + 320);

  return CMTimeGetSeconds(&timea);
}

__n128 OUTLINED_FUNCTION_56_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a19, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __n128 a20, unint64_t a21)
{
  result = a20;
  v21[19] = a20;
  v21[20].n128_u64[0] = a21;
  return result;
}

__n128 OUTLINED_FUNCTION_59_2@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 48) = *a1;
  *(v1 - 32) = a1[1].n128_u64[0];
  return result;
}

BOOL OUTLINED_FUNCTION_63_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int16 a32, char a33, os_log_type_t type, int a35)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_64_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int16 a22, char a23, os_log_type_t type, int a25)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_67_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int16 a18, char a19, os_log_type_t type, int a21)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigAlternateFilterType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAlternateFilterGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSimpleAlternateFilterCreate(uint64_t a1, const void *a2, int a3, __int128 *a4, const void *a5, CFTypeRef *a6)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v10 = CMDerivedObjectCreate();
  if (v10)
  {
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  *DerivedStorage = v12;
  *(DerivedStorage + 8) = a3;
  v13 = *a4;
  v14 = a4[1];
  *(DerivedStorage + 48) = *(a4 + 4);
  *(DerivedStorage + 16) = v13;
  *(DerivedStorage + 32) = v14;
  if (a5)
  {
    v15 = CFRetain(a5);
  }

  else
  {
    v15 = 0;
  }

  *(DerivedStorage + 72) = v15;
  v16 = FigSimpleMutexCreate();
  *(DerivedStorage + 56) = v16;
  if (v16)
  {
    v17 = 0;
    *a6 = 0;
  }

  else
  {
    FigSimpleAlternateFilterCreate_cold_1(&v20);
    return v20;
  }

  return v17;
}

CFTypeRef FigCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigCFRelease_3(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigAlternateMergeFilterCreate(uint64_t a1, const void *a2, int a3, const void *a4, const void *a5, int a6, CFTypeRef *a7)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v13 = CMDerivedObjectCreate();
  if (!v13)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v15 = CFRetain(a2);
    }

    else
    {
      v15 = 0;
    }

    *DerivedStorage = v15;
    *(DerivedStorage + 8) = a3;
    if (a4)
    {
      v16 = CFRetain(a4);
    }

    else
    {
      v16 = 0;
    }

    *(DerivedStorage + 16) = v16;
    if (a5)
    {
      v17 = CFRetain(a5);
    }

    else
    {
      v17 = 0;
    }

    *(DerivedStorage + 24) = v17;
    *(DerivedStorage + 32) = a6;
    *a7 = 0;
  }

  return v13;
}

uint64_t FigAlternateHDCPLazyEPMFilterCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    return v8;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = FigCFWeakReferenceHolderCreateWithReferencedObject();
  DerivedStorage[1] = a2;
  DerivedStorage[2] = a3;
  DerivedStorage[3] = 0x100000001;
  v10 = FigSimpleMutexCreate();
  DerivedStorage[4] = v10;
  if (v10)
  {
    v11 = 0;
    *a5 = 0;
  }

  else
  {
    FigAlternateHDCPLazyEPMFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

uint64_t FigAlternateAOCPFilterCreate(void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v7 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  v17.version = 0;
  v17.info = a1;
  v17.retain = FigCFRetain;
  v17.release = FigCFRelease_3;
  memset(&v17.copyDescription, 0, 24);
  v17.deallocate = faf_AOCPContextDeallocatorCallback;
  v17.preferredSize = 0;
  v8 = CFAllocatorCreate(a1, &v17);
  if (!v8)
  {
    FigAlternateAOCPFilterCreate_cold_3(&v18);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = MEMORY[0x19A8CC720](a1, 16, 0xA0040BD48D6D6, 0);
  if (!v10)
  {
    FigAlternateAOCPFilterCreate_cold_2(v9, &v18);
    goto LABEL_12;
  }

  v11 = v10;
  *v10 = a2;
  *(v10 + 8) = v7;
  v12 = CFDataCreateWithBytesNoCopy(a1, v10, 16, v9);
  if (!v12)
  {
    FigAlternateAOCPFilterCreate_cold_1(a1, v11, v9, &v18);
LABEL_12:
    v15 = v18;
    if (!v7)
    {
      return v15;
    }

    goto LABEL_7;
  }

  v13 = v12;
  v14 = v11[1];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = FigSimpleAlternateFilterCreate(a1, @"AOCP", 879, &unk_1F0AE05D0, v13, a4);
  CFRelease(v9);
  CFRelease(v13);
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v15;
}

void faf_AOCPContextDeallocatorCallback(void *ptr, CFAllocatorRef allocator)
{
  v4 = ptr[1];
  if (v4)
  {
    CFRelease(v4);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

BOOL faf_AOCPFilterFn(uint64_t a1, const __CFData *a2)
{
  if (FigAlternateGetAllowedAOCP(a1))
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(a2);
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v5)
  {
    faf_AOCPFilterFn_cold_2(0, v6, v7, v8, v9, v10, v11, v12, v15, v16, SHIDWORD(v16), vars0);
    return 1;
  }

  v13 = v5;
  if (*BytePtr)
  {
    v3 = (*BytePtr)(v5) == 0;
  }

  else
  {
    faf_AOCPFilterFn_cold_1(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, SHIDWORD(v16), vars0);
    v3 = 1;
  }

  CFRelease(v13);
  return v3;
}

CFStringRef faf_AOCPDescFn(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = FigCFWeakReferenceHolderCopyReferencedObject();
  v4 = *MEMORY[0x1E695E480];
  if (v3)
  {
    v5 = v3;
    v6 = (*BytePtr)();
    v7 = CFStringCreateWithFormat(v4, 0, @"aocp:%d", v6);
    CFRelease(v5);
    return v7;
  }

  else
  {
    v9 = CFStringCreateWithFormat(v4, 0, @"aocp:%d", 0xFFFFFFFFLL);
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    return v9;
  }
}

uint64_t FigAlternateProtectedHDCPLevelUpperLimitFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"ProtectedHDCPLevelUpperLimit", 1000, &unk_1F0AE05F8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateProtectedHDCPLevelUpperLimitFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

CFStringRef fhaf_copyProtectedHDCPLevelUpperLimitDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  LoggingStringFromHDCPLevel = FigAlternateGetLoggingStringFromHDCPLevel(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"hdcpLevel:%@", LoggingStringFromHDCPLevel);
}

uint64_t FigAlternateSupportedVideoRangeFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"SupportedVideoRange", 1000, &unk_1F0AE0620, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateSupportedVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_SupportedVideoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  v5 = FPSupportVideoRangeToAlternateVideoRange(v3);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v9 = VideoRange == 2 && v3 == 1 || v5 >= VideoRange;
  if (!v3)
  {
    v9 |= FigAlternateGetCodecString(a1) == 0;
  }

  return (IsAudioOnly != 0) | v9 & 1u;
}

CFStringRef faf_copySupportedVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  ModeString = FPSupport_GetModeString(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"mode:[%s]", ModeString);
}

uint64_t FigAlternateMediaValidationFilterCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  v5 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  if (*v5)
  {
    v6 = CFRetain(*v5);
  }

  else
  {
    v6 = 0;
  }

  return FigSimpleAlternateFilterCreate(a1, @"MediaValidation", 1000, &unk_1F0AE0648, v6, a3);
}

CFStringRef faf_copyMediaValidationDescAddendum(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E695E4D0] == a2)
  {
    v2 = "YES";
  }

  else
  {
    v2 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"allowUnknownCodecs:%s", v2);
}

uint64_t FigAlternateAllowedCPCFilterCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  *v9 = a2;
  v5 = CFDataCreate(a1, v9, 8);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"AllowedCPC", 1000, &unk_1F0AE0670, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateAllowedCPCFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

BOOL faf_allowedCPCFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);
  AllowedCPC = FigAlternateGetAllowedCPC(a1);
  v5 = FigAlternateGetAllowedCPC(a1);
  return (AllowedCPC & v3) != 0 || v5 == -1;
}

uint64_t FigAlternatePathwayPreferenceFilterCreate(void *a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v17.version = 0;
  v17.info = a1;
  v17.retain = FigCFRetain;
  v17.release = FigCFRelease_3;
  memset(&v17.copyDescription, 0, 24);
  v17.deallocate = fappfContextDeallocateCallback;
  v17.preferredSize = 0;
  v8 = CFAllocatorCreate(a1, &v17);
  if (!v8)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_3(&v18);
    return v18;
  }

  v9 = v8;
  v10 = MEMORY[0x19A8CC720](a1, 40, 0x1060040B7C726DALL, 0);
  if (!v10)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_2(v9, &v18);
    return v18;
  }

  v11 = v10;
  *v10 = a3;
  *(v10 + 8) = a2;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  v12 = CFDataCreateWithBytesNoCopy(a1, v10, 40, v9);
  if (!v12)
  {
    FigAlternatePathwayPreferenceFilterCreate_cold_1(a1, v11, v9, &v18);
    return v18;
  }

  v13 = v12;
  if (*v11)
  {
    CFRetain(*v11);
  }

  v14 = v11[1];
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = FigSimpleAlternateFilterCreate(a1, @"PathwayPreference", 647, &off_1F0AE06C0, v13, a4);
  CFRelease(v9);
  CFRelease(v13);
  return v15;
}

const __CFArray *fappf_PathwayFilterInitFn(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = *(BytePtr + 2);
  if (v2)
  {
    CFRelease(v2);
    *(BytePtr + 2) = 0;
  }

  result = *BytePtr;
  if (*BytePtr)
  {
    result = CFArrayGetCount(result);
  }

  *(BytePtr + 3) = result;
  if (!*(BytePtr + 4))
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(BytePtr + 4) = result;
  }

  return result;
}

void fappf_PathwayFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  PathwayID = FigAlternateGetPathwayID(a1);
  FirstIndexOfValue = 0;
  if (PathwayID && *BytePtr)
  {
    if (!FigCFDictionaryGetCFIndexIfPresent())
    {
      v5 = *BytePtr;
      v8.length = CFArrayGetCount(*BytePtr);
      v8.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v8, PathwayID);
      if (FirstIndexOfValue == -1)
      {
        FirstIndexOfValue = CFArrayGetCount(*BytePtr);
      }

      FigCFDictionarySetCFIndex();
    }
  }

  else
  {
    FirstIndexOfValue = *(BytePtr + 3);
  }

  if (FirstIndexOfValue < *(BytePtr + 3))
  {
    v6 = *(BytePtr + 2);
    *(BytePtr + 2) = PathwayID;
    if (PathwayID)
    {
      CFRetain(PathwayID);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    *(BytePtr + 3) = FirstIndexOfValue;
  }
}

CFStringRef fappf_PathwayFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Pathway Priority: %@, Fallback Pathway: %@", v3, *(BytePtr + 1));
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void fappfContextDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
    *ptr = 0;
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
    ptr[1] = 0;
  }

  v6 = ptr[2];
  if (v6)
  {
    CFRelease(v6);
    ptr[2] = 0;
  }

  v7 = ptr[4];
  if (v7)
  {
    CFRelease(v7);
    ptr[4] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateAllowListWithStableVariantIDFilterCreate(uint64_t a1, const void *a2, unsigned int a3, CFTypeRef *a4)
{
  if (a3 >= 0x372)
  {
    v4 = 0;
  }

  else
  {
    v4 = faf_allEqualMinSortingFn;
  }

  v6 = 0uLL;
  v7 = fasvip_StableVariantIDFilterFn;
  v8 = v4;
  v9 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"StableVariantIDPinning", a3, &v6, a2, a4);
}

uint64_t fasvip_StableVariantIDFilterFn(uint64_t a1, uint64_t a2)
{
  FigAlternateGetStableStreamIdentifier(a1);

  return FigCFEqual();
}

uint64_t FigAlternateAllowListWithStableRenditionIDFilterCreate(const __CFAllocator *a1, const void *a2, const void *a3, unsigned int a4, unsigned int a5, CFTypeRef *a6)
{
  v20 = 0;
  v12 = CFStringCreateWithFormat(a1, 0, @"%@%c%c%c%c", @"StableRenditionIDPinning_", HIBYTE(a4), BYTE2(a4), BYTE1(a4), a4);
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    __src[0] = v14;
    if (a3)
    {
      v15 = CFRetain(a3);
    }

    else
    {
      v15 = 0;
    }

    __src[1] = v15;
    LODWORD(v20) = a4;
    if (a5 >= 0x372)
    {
      v16 = 0;
    }

    else
    {
      v16 = faf_allEqualMinSortingFn;
    }

    v17 = fsaf_createWithBytes(a1, v13, a5, fasrif_StableRenditionIDFilterFn, v16, 0, 0, fasrif_StableReditionIDDescAddendumFn, __src, 24, fasrifContextDeallocateCallback, a6);
    CFRelease(v13);
  }

  else
  {
    FigAlternateAllowListWithStableRenditionIDFilterCreate_cold_1(&v21);
    return v21;
  }

  return v17;
}

uint64_t fsaf_createWithBytes(void *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, CFTypeRef (*a8)(), void *__src, uint64_t a10, void (__cdecl *a11)(void *, void *), CFTypeRef *a12)
{
  context.version = 0;
  context.info = a1;
  context.retain = FigCFRetain;
  context.release = FigCFRelease_3;
  memset(&context.copyDescription, 0, 24);
  context.deallocate = a11;
  context.preferredSize = 0;
  if (a8)
  {
    v19 = a8;
  }

  else
  {
    v19 = fsaf_copyEmptyDescAddendum;
  }

  v20 = MEMORY[0x19A8CC720]();
  if (!v20)
  {
    fsaf_createWithBytes_cold_3(&v30);
    return v30;
  }

  v21 = v20;
  v29 = v19;
  v22 = a5;
  memcpy(v20, __src, a10);
  v23 = CFAllocatorCreate(a1, &context);
  if (!v23)
  {
    fsaf_createWithBytes_cold_2(&v30);
    return v30;
  }

  v24 = v23;
  v25 = CFDataCreateWithBytesNoCopy(a1, v21, a10, v23);
  if (!v25)
  {
    fsaf_createWithBytes_cold_1(v24, &v30);
    return v30;
  }

  v26 = v25;
  *&v30 = a7;
  *(&v30 + 1) = a6;
  v31 = a4;
  v32 = v22;
  v33 = v29;
  v27 = FigSimpleAlternateFilterCreate(a1, a2, a3, &v30, v25, a12);
  CFRelease(v24);
  CFRelease(v26);
  return v27;
}

uint64_t fasrif_StableRenditionIDFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetStableStreamIdentifierForMediaSubstream(a1, *(BytePtr + 4), *BytePtr);

  return FigCFEqual();
}

void fasrifContextDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
    *ptr = 0;
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
    ptr[1] = 0;
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateMediaSelectionAudibleFilterCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t fsaf_createWithNoContext(const __CFAllocator *a1, const void *a2, int a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  *bytes = a4;
  v23 = a5;
  v12 = CFDataCreate(a1, bytes, 16);
  if (v12)
  {
    v13 = v12;
    if (a5)
    {
      v14 = fsaf_ComparatorFnNoContext;
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
      v15 = fsaf_filterFnNoContext;
    }

    else
    {
      v15 = 0;
    }

    v18 = 0uLL;
    v19 = v15;
    v20 = v14;
    v21 = fsaf_copyEmptyDescAddendum;
    v16 = FigSimpleAlternateFilterCreate(a1, a2, a3, &v18, v12, a6);
    CFRelease(v13);
  }

  else
  {
    fsaf_createWithNoContext_cold_1(&v18);
    return v18;
  }

  return v16;
}

uint64_t FigAlternateURLDependencyDenyListFilterCreate(void *a1, CFTypeRef cf, const void *a3, int a4, CFTypeRef *a5)
{
  if (cf)
  {
    __src[0] = CFRetain(cf);
    if (a3)
    {
      v9 = CFRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    __src[1] = v9;
    if (a4)
    {
      v10 = 890;
    }

    else
    {
      v10 = 878;
    }

    if (a4)
    {
      v11 = 0;
    }

    else
    {
      v11 = faf_allEqualMinSortingFn;
    }

    return fsaf_createWithBytes(a1, @"URLDependency", v10, faf_urlDependencyFilterFn, v11, 0, 0, 0, __src, 16, faf_urlDependencyDeallocateCallback, a5);
  }

  else
  {
    FigAlternateURLDependencyDenyListFilterCreate_cold_1(__src);
    return LODWORD(__src[0]);
  }
}

uint64_t faf_urlDependencyFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetPlaylistAlternateURL(a1);
  if (!CFArrayGetCount(*BytePtr))
  {
    return 1;
  }

  if (!BytePtr[1])
  {
    return FigCFArrayContainsValue() == 0;
  }

  if (!FigAlternateHasVideo(a1))
  {
    FigAlternateHasAudio(a1);
  }

  Count = CFArrayGetCount(BytePtr[1]);
  if (Count < 1)
  {
    return FigCFArrayContainsValue() == 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(BytePtr[1], v7);
    CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
    v13 = 0;
    if (FigCFStringGetOSTypeValue())
    {
      Value = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
      v11 = 0;
      v12 = 0;
      v10 = 0;
      FigAlternateGetRenditionInfoForMediaType(a1, v13, Value, Value, Value, 0, &v10, &v12, &v11);
      if (v12)
      {
        if (FigCFArrayContainsValue())
        {
          break;
        }
      }
    }

    if (v6 == ++v7)
    {
      return FigCFArrayContainsValue() == 0;
    }
  }

  return 0;
}

void faf_urlDependencyDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateScanModePreferenceFilterCreate(const __CFAllocator *a1, UInt8 a2, CFTypeRef *a3)
{
  bytes = a2;
  v5 = CFDataCreate(a1, &bytes, 1);
  v6 = FigSimpleAlternateFilterCreate(a1, @"ScanModePreference", 881, &unk_1F0AE0728, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t faf_ScanModeMinSortingFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  v5 = *CFDataGetBytePtr(theData);
  IsIFrameOnly = FigAlternateIsIFrameOnly(a1);
  v7 = FigAlternateIsIFrameOnly(a2);
  v8 = -1;
  if (IsIFrameOnly >= v7)
  {
    v8 = 1;
  }

  if (IsIFrameOnly == v7)
  {
    v8 = 0;
  }

  if (v5)
  {
    return -v8;
  }

  else
  {
    return v8;
  }
}

CFTypeRef faf_copyScanModePreferenceDescAddendum(int a1, CFDataRef theData)
{
  if (*CFDataGetBytePtr(theData))
  {
    v2 = @"I-Frame";
  }

  else
  {
    v2 = @"contiguous";
  }

  return CFRetain(v2);
}

uint64_t FigAlternateSupportedAudioFormatFilterCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3)
{
  v9 = a2;
  v11 = BYTE6(a2);
  v10 = WORD2(a2);
  v5 = CFDataCreate(a1, &v9, 7);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"SupportedAudioFormat", 1000, &unk_1F0AE0750, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateSupportedAudioFormatFilterCreate_cold_1(&v12);
    return v12;
  }

  return v7;
}

BOOL faf_supportedAudioFormatFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  v6 = BytePtr[2];
  v7 = BytePtr[3];
  v8 = BytePtr[4];
  v9 = BytePtr[5];
  v10 = BytePtr[6];
  if (FigAlternateHasAudioFormat(a1, 7))
  {
    v11 = !v9 && v8 == 0;
    if (v11 && v6 == 0)
    {
      return 0;
    }
  }

  if (FigAlternateHasAudioFormat(a1, 6) && !v8 && !v5 || FigAlternateHasAudioFormat(a1, 5) && !v7 && !v4)
  {
    return 0;
  }

  HasAudioFormat = FigAlternateHasAudioFormat(a1, 3);
  result = 1;
  if (HasAudioFormat)
  {
    if (!v10)
    {
      return FigAlternateGetMaxAudioChannelCount(a1) < 3;
    }
  }

  return result;
}

CFStringRef faf_copySupportedAudioFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (BytePtr[3])
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  if (BytePtr[4])
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  if (BytePtr[5])
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  if (*BytePtr)
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  if (BytePtr[1])
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (BytePtr[2])
  {
    v8 = "YES";
  }

  else
  {
    v8 = "NO";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"ac3IsDecodable:%s ec3IsDecodable:%s atmosIsDecodable:%s, ac3CanPassthrough:%s ec3CanPassthrough:%s, atmosCanPassthrough:%s", v3, v4, v5, v6, v7, v8);
}

uint64_t FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  bytes = 0;
  v4 = CFDataCreate(a1, &bytes, 1);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"PreferVideoCodecsWithHardwareDecode", 876, &off_1F0AE07A0, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternatePreferVideoCodecsWithHardwareDecodeFilterCreate_cold_1(&v9);
    return v9;
  }

  return v6;
}

const UInt8 *faf_PreferVideoCodecsWithHardwareDecodeFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *result = 0;
  return result;
}

uint64_t faf_PreferVideoCodecsWithHardwareDecodeFirstPassFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateHasVideo(a1);
  if (result)
  {
    result = FigAlternateHasVideoCodecRequiringSoftwareDecode(a1);
    v5 = result == 0;
  }

  else
  {
    v5 = 0;
  }

  *BytePtr |= v5;
  return result;
}

CFTypeRef faf_copyMediaSelectionPersistentIDForMediaType(CFArrayRef theArray, int a2)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if ((CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsMediaType") || CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType")) && FigCFStringGetOSTypeValue() && !a2)
    {
      break;
    }

    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  result = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionOptionsPersistentID");
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void faf_offlinePlayableForMediaSelectionFilterBytesDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = ptr[2];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = ptr[3];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = ptr[4];
  if (v8)
  {
    CFRelease(v8);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateAllowableMediaSubtypeFilterCreate(const __CFAllocator *a1, const __CFArray *a2, const __CFArray *a3, CFTypeRef *a4)
{
  v16 = 0;
  v8 = MEMORY[0x1E695E9C0];
  __src[0] = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  __src[1] = CFArrayCreateMutable(a1, 0, v8);
  if (FigCFArrayContainsInt32())
  {
    v9 = FigCFArrayContainsInt32() == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  LOBYTE(v16) = v9;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v10 < i; i = 0)
  {
    FigCFArrayGetInt32AtIndex();
    if (!FigCFArrayContainsInt32())
    {
      FigCFArrayAppendInt32();
    }

    ++v10;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  v12 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_13:
  for (j = CFArrayGetCount(a3); v12 < j; j = 0)
  {
    FigCFArrayGetInt32AtIndex();
    if (!FigCFArrayContainsInt32())
    {
      FigCFArrayAppendInt32();
    }

    ++v12;
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_14:
    ;
  }

  return fsaf_createWithBytes(a1, @"AllowableMediaSubtypes", 885, faf_allowableMediaSubtypeIsAlternateMediaSubtypesAllowed, 0, 0, 0, faf_allowableMediaSubtypeDescAddendum, __src, 24, faf_allowableMediaSubtypesDeallocateCallback, a4);
}

CFStringRef faf_allowableMediaSubtypeDescAddendum(int a1, CFDataRef theData)
{
  CFDataGetBytePtr(theData);
  v2 = FigCFCopyCompactDescription();
  v3 = FigCFCopyCompactDescription();
  v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"videoSubtypes:%@ audioSubtypes:%@", v2, v3);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

void faf_allowableMediaSubtypesDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

double FigAlternatePreferredVideoFormatFilterCreate(CFAllocatorRef allocator, int a2, unsigned int a3, CFTypeRef *a4)
{
  v13 = a2;
  v14 = a3;
  v15 = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1 && a3 - 7 <= 1)
      {
        FigAlternatePreferredVideoFormatFilterCreate_cold_1(&v17);
        return result;
      }
    }

    else
    {
      v13 = 4;
    }

LABEL_13:
    if (a3)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (a2 == 2)
  {
    if (a3 <= 9 && ((1 << a3) & 0x230) != 0)
    {
      goto LABEL_17;
    }

    v8 = qword_1EAF16F30;
    v9 = v4;
    v10 = 3253;
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_13;
    }

    switch(a3)
    {
      case 0u:
LABEL_14:
        v14 = 9;
LABEL_17:
        v16 = 0;
        v11 = CFDataCreate(allocator, &v13, 24);
        if (v11)
        {
          v12 = v11;
          FigSimpleAlternateFilterCreate(allocator, @"PreferredVideoFormat", 800, off_1F0AE07C8, v11, a4);
          CFRelease(v12);
        }

        else
        {
          FigAlternatePreferredVideoFormatFilterCreate_cold_2(&v17);
        }

        return result;
      case 2u:
        v8 = qword_1EAF16F30;
        v9 = v4;
        v10 = 3255;
        break;
      case 1u:
        v8 = qword_1EAF16F30;
        v9 = v4;
        v10 = 3256;
        break;
      default:
        goto LABEL_17;
    }
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 4294951686, "<<<< FigAlternateFilter >>>>", v10, v9);
}

const UInt8 *faf_videoFormatPreferenceApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 1) = 0;
  return result;
}

uint64_t faf_videoFormatPreferenceFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  if (BytePtr[16])
  {
    if (VideoRange != *BytePtr)
    {
      v9 = 0;
      return (IsAudioOnly != 0) | v9 & 1u;
    }

    v8 = BestVideoFormat == *(BytePtr + 1);
  }

  else
  {
    v8 = faf_videoFormatPreferenceFilterMinSortingFn(a1, *(BytePtr + 1), theData) == 0;
  }

  v9 = v8;
  return (IsAudioOnly != 0) | v9 & 1u;
}

CFStringRef faf_copyPreferredVideoFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(BytePtr[1]);
  return CFStringCreateWithFormat(v3, 0, @"preferredRange:%@ preferredFormat:%@", StringFromVideoRange, StringFromVideoFormat);
}

uint64_t FigAlternateNeroSupportedVideoFormatFilterCreate(const __CFAllocator *a1, CFTypeRef *a2)
{
  v8 = xmmword_196E76638;
  v9 = 0;
  v4 = CFDataCreate(a1, &v8, 24);
  if (v4)
  {
    v5 = v4;
    v6 = FigSimpleAlternateFilterCreate(a1, @"NeroSupportedVideoFormat", 1000, &unk_1F0AE07F0, v4, a2);
    CFRelease(v5);
  }

  else
  {
    FigAlternateNeroSupportedVideoFormatFilterCreate_cold_1(&v10);
    return v10;
  }

  return v6;
}

uint64_t faf_neroSupportedVideoFormatFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  result = FigAlternateGetBestVideoFormat(a1);
  if (__PAIR64__(result, VideoRange) == *BytePtr)
  {
    *(BytePtr + 16) = 1;
  }

  return result;
}

BOOL faf_neroSupportedVideoFormatFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  VideoRange = FigAlternateGetVideoRange(a1);
  BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
  if (BytePtr[16])
  {
    if (VideoRange == *BytePtr)
    {
      v7 = 0;
      v8 = BestVideoFormat == *(BytePtr + 1);
      return IsAudioOnly != 0 || v8 || v7;
    }

LABEL_5:
    v8 = 0;
    v7 = 0;
    return IsAudioOnly != 0 || v8 || v7;
  }

  if (FigAlternateGetCodecString(a1))
  {
    goto LABEL_5;
  }

  v8 = 0;
  v7 = VideoRange == *BytePtr || VideoRange == 0;
  return IsAudioOnly != 0 || v8 || v7;
}

uint64_t FigAlternatePreferBestFormatForVideoRangeFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  memset(v9, 0, sizeof(v9));
  if ((a2 - 4) <= 0xFFFFFFFC)
  {
    FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_2(&v10);
    return v10;
  }

  LODWORD(v9[0]) = a2;
  v5 = CFDataCreate(a1, v9, 24);
  if (!v5)
  {
    FigAlternatePreferBestFormatForVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  v6 = v5;
  v7 = FigSimpleAlternateFilterCreate(a1, @"PreferBestFormatForVideoRange", 700, &off_1F0AE0818, v5, a3);
  CFRelease(v6);
  return v7;
}

double faf_videoFormatApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  *(BytePtr + 1) = 0;
  *&result = 7;
  *(BytePtr + 8) = xmmword_196E76610;
  return result;
}

uint64_t faf_preferBestFormatForVideoRangeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    result = FigAlternateGetVideoRange(a1);
    if (result == *BytePtr)
    {
      BestVideoFormat = FigAlternateGetBestVideoFormat(a1);
      v6 = *(BytePtr + 1);
      result = FigAlternateGetBestVideoFormat(a1);
      if (BestVideoFormat > v6)
      {
        *(BytePtr + 1) = result;
        result = faf_alternateVideoVertResolutionBucket(a1);
        *(BytePtr + 1) = result;
        goto LABEL_8;
      }

      if (result != *(BytePtr + 1))
      {
        return result;
      }

      result = faf_alternateVideoVertResolutionBucket(a1);
      if (result > *(BytePtr + 2))
      {
LABEL_8:
        *(BytePtr + 2) = result;
        return result;
      }

      if (result < *(BytePtr + 1))
      {
        *(BytePtr + 1) = result;
      }
    }
  }

  return result;
}

BOOL faf_preferBestFormatForVideoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = faf_alternateVideoVertResolutionBucket(a1);
  return FigAlternateIsAudioOnly(a1) || FigAlternateGetVideoRange(a1) != *BytePtr || FigAlternateGetBestVideoFormat(a1) == *(BytePtr + 1) || v4 < *(BytePtr + 1) || v4 > *(BytePtr + 2);
}

CFStringRef faf_copyPreferBestFormatForVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(BytePtr[1]);
  return CFStringCreateWithFormat(v3, 0, @"videoRange:%@ bestFormat:%@", StringFromVideoRange, StringFromVideoFormat);
}

uint64_t FigAlternateDisplaySizeFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"DisplaySize", 700, &off_1F0AE0840, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateDisplaySizeFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

const UInt8 *faf_displaySizeApplyInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 3) = 0xBFF0000000000000;
  return result;
}

void faf_displaySizeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5 * Resolution;
  if (v5 * Resolution > 0.0)
  {
    v7 = Resolution;
    v8 = v5;
    if (!FigAlternateIsAudioOnly(a1))
    {
      v9 = *(BytePtr + 1);
      v10 = v7 < *BytePtr * 1.35 && v8 < v9 * 1.35;
      if (v10 && v6 < *BytePtr * v9 * 1.35 * 1.35)
      {
        *(BytePtr + 16) = 1;
      }

      v11 = *(BytePtr + 3);
      if (v11 < 0.0 || v6 < v11)
      {
        *(BytePtr + 3) = v6;
      }
    }
  }
}

BOOL faf_displaySizeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5 * Resolution;
  result = 1;
  if (v5 * Resolution > 0.0)
  {
    v7 = Resolution;
    v8 = v5;
    if (!FigAlternateIsAudioOnly(a1))
    {
      v10 = *(BytePtr + 1);
      v11 = v7 < *BytePtr * 1.35 && v8 < v10 * 1.35;
      if ((!v11 || v6 >= *BytePtr * v10 * 1.35 * 1.35) && (BytePtr[16] || vabdd_f64(v6, *(BytePtr + 3)) >= 2.22044605e-16))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t FigAlternatePreferredVideoRangeFilterCreate(const __CFAllocator *a1, unsigned int a2, CFTypeRef *a3)
{
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = a2;
  v5 = CFDataCreate(a1, v9, 24);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferredVideoRange", 800, off_1F0AE0868, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternatePreferredVideoRangeFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

const UInt8 *faf_videoRangeFilterApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 1) = 0;
  return result;
}

uint64_t faf_videoRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  VideoRange = FigAlternateGetVideoRange(a1);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  if (BytePtr[16])
  {
    v6 = VideoRange == *BytePtr;
  }

  else
  {
    v6 = faf_videoRangeMinSortingFn(a1, *(BytePtr + 1), BytePtr) == 0;
  }

  v7 = v6;
  return (IsAudioOnly != 0) | v7 & 1u;
}

CFStringRef faf_copyVideoRangeDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"desiredVideoRange:%@", StringFromVideoRange);
}

uint64_t FigAlternateVideoFormatFilterCreate(const __CFAllocator *a1, int a2, CFTypeRef *a3)
{
  *bytes = a2;
  v5 = CFDataCreate(a1, bytes, 4);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"PreferredVideoFormat", 800, &unk_1F0AE0890, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateVideoFormatFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t faf_videoFormatFilterFn(uint64_t a1, CFDataRef theData)
{
  v3 = *CFDataGetBytePtr(theData);

  return FigAlternateHasVideoFormat(a1, v3);
}

CFStringRef faf_copyVideoFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoFormat = FigAlternateGetStringFromVideoFormat(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"desiredVideoFormat:%@", StringFromVideoFormat);
}

uint64_t FigAlternateFramerateBucketCapFilterCreate(const __CFAllocator *a1, unsigned int a2, CFTypeRef *a3)
{
  *&v9[4] = 0;
  *v9 = a2;
  v5 = CFDataCreate(a1, v9, 8);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"FrameRateBucketCap", 700, &unk_1F0AE08B8, v5, a3);
    CFRelease(v6);
  }

  else
  {
    FigAlternateFramerateBucketCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

uint64_t fafb_framerateBucketCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRate = FigAlternateGetFrameRate(a1);
  result = FigFrameRateToFrameRateBucket(FrameRate);
  if (result <= *BytePtr)
  {
    result = FigAlternateIsAudioOnly(a1);
    if (!result)
    {
      *(BytePtr + 4) = 1;
    }
  }

  return result;
}

BOOL fafb_framerateBucketCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateIsAudioOnly(a1))
  {
    return 1;
  }

  FrameRate = FigAlternateGetFrameRate(a1);
  return FigFrameRateToFrameRateBucket(FrameRate) <= *BytePtr || BytePtr[4] == 0;
}

CFStringRef fafb_copyFramerateBucketCapDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromFramerateBucket = FigAlternateGetStringFromFramerateBucket(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"framerateBucketCap:%@", StringFromFramerateBucket);
}

uint64_t faf_pixelsPerSecondComparatorFn(__CFArray *a1, __CFArray *a2)
{
  PixelPerSecondCount = FigAlternateGetPixelPerSecondCount(a1);
  v4 = FigAlternateGetPixelPerSecondCount(a2);
  v5 = -1;
  if (PixelPerSecondCount >= v4)
  {
    v5 = 1;
  }

  if (PixelPerSecondCount == v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t FigAlternatePreferredAudioFormatFilterCreate(const __CFAllocator *a1, unsigned int a2, unsigned int a3, const __CFDictionary *a4, char a5, CFNumberRef number, int a7, CFTypeRef *a8)
{
  v25 = 0u;
  v26 = 0u;
  *&v24 = __PAIR64__(a3, a2);
  DWORD2(v24) = -1;
  HIDWORD(v24) = a7;
  LOBYTE(v25) = a5;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &v24 + 8);
  }

  if (a2 <= 4)
  {
    if (a2 - 1 < 4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 9;
    }

    LODWORD(v24) = v13;
  }

  if (!a3)
  {
    DWORD1(v24) = 0x7FFFFFFF;
  }

  Count = FigCFDictionaryGetCount();
  Mutable = CFDataCreateMutable(a1, 16 * Count + 48);
  if (Mutable)
  {
    v16 = Mutable;
    CFDataSetLength(Mutable, 16 * Count + 48);
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    v18 = v26;
    v19 = v25;
    *MutableBytePtr = v24;
    *(MutableBytePtr + 1) = v19;
    *(MutableBytePtr + 2) = v18;
    if (Count >= 1)
    {
      v20 = MutableBytePtr;
      CFDictionaryApplyFunction(a4, faf_storeChannelCountMaxSampleRate, MutableBytePtr);
      v21 = *(v20 + 5);
      if (v21 >= 2)
      {
        qsort(v20 + 48, v21, 0x10uLL, faf_maxSampleRateComparator);
      }
    }

    v22 = FigSimpleAlternateFilterCreate(a1, @"PreferredAudioFormat", 750, off_1F0AE0908, v16, a8);
    CFRelease(v16);
  }

  else
  {
    FigAlternatePreferredAudioFormatFilterCreate_cold_1(&v27);
    return v27;
  }

  return v22;
}

const UInt8 *faf_audioFormatApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 32) = 0;
  *(result + 3) = 0;
  return result;
}

uint64_t faf_audioFormatPreferenceFilterFn(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  memset(v8, 0, sizeof(v8));
  if (FigAlternateHasVideo(a1))
  {
    v5 = FigAlternateHasAudio(a1) == 0;
  }

  else
  {
    v5 = 0;
  }

  if (BytePtr[32])
  {
    v9 = *BytePtr;
    LODWORD(v10) = 0;
    BYTE4(v10) = BytePtr[16];
    v11 = 0;
    LODWORD(v12) = 0x80000000;
    faf_populateAudioFormatAlternateComparatorRec(a1, *(BytePtr + 2), v8);
    v6 = faf_audioFormatPreferenceComparator(v8, &v9, BytePtr) == 0 || v5;
  }

  else if (faf_audioFormatPreferenceFilterMinSortingFn(a1, *(BytePtr + 3), theData))
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

CFStringRef faf_copyPreferredAudioFormatDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *(BytePtr + 5);
  if (v3)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (v3 >= 1)
    {
      v6 = BytePtr + 56;
      do
      {
        if (--v3)
        {
          v7 = ", ";
        }

        else
        {
          v7 = "";
        }

        CFStringAppendFormat(Mutable, 0, @"<channel count %d: max sample rate %.3f>%s", *(v6 - 2), *v6, v7);
        v6 += 2;
      }

      while (v3);
    }
  }

  else
  {
    Mutable = CFRetain(@"none");
    v4 = *MEMORY[0x1E695E480];
  }

  StringFromAudioFormat = FigAlternateGetStringFromAudioFormat(*BytePtr);
  v9 = "YES";
  if (BytePtr[12])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if (BytePtr[13])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  if (BytePtr[14])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  if (!BytePtr[16])
  {
    v9 = "NO";
  }

  v13 = CFStringCreateWithFormat(v4, 0, @"preferredFormat:%@ preferredMixableNumberOfChannels:%d ac3CanPassthrough:%s ec3CanPassthrough:%s atmosCanPassthrough:%s preferLossyEncodings:%s sampleRateContraints:%@", StringFromAudioFormat, *(BytePtr + 1), v10, v11, v12, v9, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v13;
}

uint64_t faf_storeChannelCountMaxSampleRate(const __CFNumber *a1, CFNumberRef number, uint64_t a3)
{
  v5 = a3 + 48;
  CFNumberGetValue(number, kCFNumberDoubleType, (a3 + 48 + 16 * *(a3 + 40) + 8));
  v6 = *(a3 + 40);
  *(a3 + 40) = v6 + 1;

  return CFNumberGetValue(a1, kCFNumberSInt32Type, (v5 + 16 * v6));
}

uint64_t FigAlternateEligibleLosslessAudioFilterCreate(const __CFAllocator *a1, const void *a2, CFTypeRef *a3)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, 0, 0);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v8)
    {
      v9 = v8;
      if (a2)
      {
        CFDictionarySetValue(v8, @"PersistentID", a2);
      }

      CFDictionarySetValue(v9, @"ChannelCountDict", v7);
      v10 = FigSimpleAlternateFilterCreate(a1, @"EligibleLosslessAudio", 760, &off_1F0AE0930, v9, a3);
      CFRelease(v9);
    }

    else
    {
      FigAlternateEligibleLosslessAudioFilterCreate_cold_1(&v12);
      v10 = v12;
    }

    CFRelease(v7);
  }

  else
  {
    FigAlternateEligibleLosslessAudioFilterCreate_cold_2(&v13);
    return v13;
  }

  return v10;
}

void faf_EligibleLosslessAudioInitFn(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"ChannelCountDict");

  CFDictionaryRemoveAllValues(Value);
}

void faf_EligibleLosslessAudioFirstPassFn(const void *a1, CFDictionaryRef theDict)
{
  v4 = -1;
  valuePtr = -1;
  Value = CFDictionaryGetValue(theDict, @"PersistentID");
  v6 = CFDictionaryGetValue(theDict, @"ChannelCountDict");
  v13 = 0;
  key = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    v4 = valuePtr;
  }

  faf_getAlternateAudioFormatInfo(a1, v4, &v13, &key + 1, &key, 0);
  v7 = HIDWORD(key);
  if (SHIDWORD(key) >= 1)
  {
    v8 = CFDictionaryGetValue(v6, HIDWORD(key));
    if (v8 != 7)
    {
      if (FigAlternateHasLosslessAudio(a1))
      {
        v9 = v8 | 1;
      }

      else
      {
        if (key)
        {
          v10 = 0;
        }

        else
        {
          v10 = v13 == 1;
        }

        v11 = 3;
        if (v10)
        {
          v11 = 7;
        }

        v9 = v11 | v8;
      }

      CFDictionarySetValue(v6, v7, v9);
    }
  }
}

uint64_t faf_EligibleLosslessAudioFilterFn(const void *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"PersistentID");
  v5 = CFDictionaryGetValue(theDict, @"ChannelCountDict");
  v9 = 0;
  if (FigAlternateHasVideo(a1) && !FigAlternateHasAudio(a1) || !FigAlternateHasLosslessAudio(a1))
  {
    return 1;
  }

  AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, Value, &v9, 0);
  v7 = CFDictionaryGetValue(v5, AudioChannelCounts);
  if ((v7 & 2) != 0)
  {
    return (v7 >> 2) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t FigAlternateImmersiveAudioPreferenceFilterCreate(const __CFAllocator *a1, CFNumberRef number, int a3, int a4, char a5, CFTypeRef *a6)
{
  v15 = 0u;
  v16 = 0u;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &v15);
  }

  else
  {
    LODWORD(v15) = -1;
  }

  DWORD2(v16) = a3;
  DWORD1(v15) = a4;
  BYTE12(v16) = a5;
  v11 = CFDataCreate(a1, &v15, 32);
  if (v11)
  {
    v12 = v11;
    v13 = FigSimpleAlternateFilterCreate(a1, @"ImmersiveAudioPreference", 760, off_1F0AE0958, v11, a6);
    CFRelease(v12);
  }

  else
  {
    FigAlternateImmersiveAudioPreferenceFilterCreate_cold_1(&v17);
    return v17;
  }

  return v13;
}

const UInt8 *faf_ImmersiveAudioPreferenceInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 2) = 0;
  *(result + 8) = 0;
  return result;
}

CFStringRef faf_ImmersiveAudioPreferenceDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromSpecializedChannelUsage = FigAlternateGetStringFromSpecializedChannelUsage(*(BytePtr + 6));
  return CFStringCreateWithFormat(v3, 0, @"channel usage:%@", StringFromSpecializedChannelUsage);
}

uint64_t FigAlternateLosslessAudioPreferenceFilterCreate(uint64_t a1, int a2, CFTypeRef *a3)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = faf_allEqualMinSortingFn;
  }

  v5 = 0uLL;
  v6 = faf_losslessAudioOnlyFilterFn;
  v7 = v3;
  v8 = 0;
  return FigSimpleAlternateFilterCreate(a1, @"LosslessAudioPreference", 760, &v5, 0, a3);
}

uint64_t FigAlternateMaximumSampleRatePreferenceFilter(const __CFAllocator *a1, CFNumberRef number, CFTypeRef *a3, double a4)
{
  v10[0] = 0;
  v11 = 0u;
  *&v10[1] = a4;
  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, v10);
  }

  else
  {
    LODWORD(v10[0]) = -1;
  }

  v6 = CFDataCreate(a1, v10, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"MaximumSampleRatePreference", 750, &off_1F0AE09A8, v6, a3);
    CFRelease(v7);
  }

  else
  {
    FigAlternateMaximumSampleRatePreferenceFilter_cold_1(&v12);
    return v12;
  }

  return v8;
}

const UInt8 *faf_maximumSampleRatePreferenceFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  *(result + 3) = 0;
  return result;
}

uint64_t FigAlternateMultichannelAudioFilterCreate(const __CFAllocator *a1, CFNumberRef number, int a3, int a4, CFTypeRef *a5)
{
  valuePtr = 0;
  if (a3)
  {
    v7 = faf_MultichannelAudioFilterFnForMulti;
  }

  else
  {
    v7 = faf_MultichannelAudioFilterFnForStereo;
  }

  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = faf_allEqualMinSortingFn;
  }

  if (number)
  {
    CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    LODWORD(valuePtr) = -1;
  }

  v9 = CFDataCreate(a1, &valuePtr, 8);
  if (v9)
  {
    v10 = v9;
    *&v13 = faf_MultichannelAudioFilterFnForMultiInit;
    *(&v13 + 1) = faf_MultichannelAudioFilterFnForMultiFirstPassFn;
    v14 = v7;
    v15 = v8;
    v16 = 0;
    v11 = FigSimpleAlternateFilterCreate(a1, @"MultichannelAudio", 620, &v13, v9, a5);
    CFRelease(v10);
  }

  else
  {
    FigAlternateMultichannelAudioFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

const UInt8 *faf_MultichannelAudioFilterFnForMultiInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 4) = 0;
  return result;
}

uint64_t faf_MultichannelAudioFilterFnForMulti(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateHasVideo(a1))
  {
    v4 = FigAlternateHasAudio(a1) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!BytePtr[4])
  {
    return 0;
  }

  if ((*BytePtr & 0x80000000) != 0)
  {
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, 0, 0, 0);
  }

  else
  {
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v5, 0, 0);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return AudioChannelCounts > 2 || v4;
}

BOOL faf_MultichannelAudioFilterFnForStereo(const void *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if ((*BytePtr & 0x80000000) != 0)
  {
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, 0, 0, 0);
  }

  else
  {
    v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, BytePtr);
    AudioChannelCounts = FigAlternateGetAudioChannelCounts(a1, v4, 0, 0);
    if (v4)
    {
      CFRelease(v4);
    }
  }

  return AudioChannelCounts < 3;
}

uint64_t FigAlternateDefaultAudioLayoutPreferenceFilterCreate(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  MEMORY[0x19A8D3660](&FigAlternateFilterGetClassID_sRegisterFigAlternateFilterTypeOnce, RegisterFigAlternateFilterType);
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (a2)
    {
      v7 = CFRetain(a2);
    }

    else
    {
      v7 = 0;
    }

    *DerivedStorage = v7;
    *a3 = 0;
  }

  return v5;
}

uint64_t FigAlternateResolutionCapFilterCreate(const __CFAllocator *a1, const void *a2, int a3, CFTypeRef *a4, double a5, double a6)
{
  v16 = 0;
  v17 = 0;
  *bytes = a5;
  v15 = a6;
  v10 = CFDataCreate(a1, bytes, 32);
  if (v10)
  {
    v11 = v10;
    v12 = FigSimpleAlternateFilterCreate(a1, a2, a3, &off_1F0AE09E8, v10, a4);
    CFRelease(v11);
  }

  else
  {
    FigAlternateResolutionCapFilterCreate_cold_1(&v18);
    return v18;
  }

  return v12;
}

int64x2_t faf_resolutionCapApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  BytePtr[1] = result;
  return result;
}

uint64_t faf_resolutionCapFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    if (Resolution > v4 || v8 > v5)
    {
      if (BytePtr[3] >= 1.79769313e308)
      {
        v11 = BytePtr[2];
        if (v11 >= 1.79769313e308 || Resolution < v11)
        {
          BytePtr[2] = Resolution;
        }
      }
    }

    else
    {
      BytePtr[2] = v4;
      BytePtr[3] = v5;
    }
  }

  return result;
}

uint64_t faf_resolutionCapFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v5 = FigAlternateGetResolution(a1) <= *(BytePtr + 2) && v4 <= *(BytePtr + 3);
  return FigAlternateIsAudioOnly(a1) || v5;
}

uint64_t FigAlternateResolutionFloorFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionFloor", 700, &off_1F0AE0A10, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionFloorFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

__n128 faf_resolutionFloorApplyFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = *MEMORY[0x1E695F060];
  *(BytePtr + 1) = *MEMORY[0x1E695F060];
  return result;
}

uint64_t faf_resolutionFloorFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = FigAlternateIsAudioOnly(a1);
  if (!result)
  {
    if (Resolution < v4 || v8 < v5)
    {
      if (BytePtr[3] <= 2.22044605e-16)
      {
        v11 = BytePtr[2];
        if (v11 <= 2.22044605e-16 || Resolution > v11)
        {
          BytePtr[2] = Resolution;
        }
      }
    }

    else
    {
      BytePtr[2] = v4;
      BytePtr[3] = v5;
    }
  }

  return result;
}

uint64_t faf_resolutionFloorFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v5 = FigAlternateGetResolution(a1) >= *(BytePtr + 2) && v4 >= *(BytePtr + 3);
  return FigAlternateIsAudioOnly(a1) || v5;
}

uint64_t FigAlternateResolutionLowerLimitFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionLowerLimit", 800, &unk_1F0AE0A38, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionLowerLimitFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_resolutionLowerLimitFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = Resolution == *MEMORY[0x1E695F060] && v7 == *(MEMORY[0x1E695F060] + 8);
  result = 1;
  if (!v8 && vabdd_f64(Resolution, v4) >= 2.22044605e-16 && Resolution < v4)
  {
    if (vabdd_f64(Resolution, v5) >= 2.22044605e-16 && Resolution <= v5)
    {
      return 0;
    }

    if (vabdd_f64(v7, v4) >= 2.22044605e-16 && v7 <= v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigAlternateResolutionUpperLimitFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionUpperLimit", 800, &unk_1F0AE0A60, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionUpperLimitFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

BOOL faf_resolutionCapWidthOnlyFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v4 = *BytePtr;
  v5 = BytePtr[1];
  Resolution = FigAlternateGetResolution(a1);
  v8 = v7;
  result = 0;
  if (!FigAlternateIsAudioOnly(a1))
  {
    if (Resolution == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
    {
      return 1;
    }

    if (vabdd_f64(Resolution, v4) < 2.22044605e-16 || Resolution < v4)
    {
      v12 = vabdd_f64(Resolution, v5) >= 2.22044605e-16 && Resolution <= v5;
      if (v12 || vabdd_f64(v8, v4) < 2.22044605e-16 || v8 <= v4)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FigAlternateResolutionClosestHeightFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 16);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"ResolutionClosestHeight", 700, &unk_1F0AE0A88, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateResolutionClosestHeightFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

uint64_t faf_resolutionClosestHeightComparatorFn(uint64_t a1, uint64_t a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FigAlternateGetResolution(a1);
  v7 = v6;
  FigAlternateGetResolution(a2);
  v9 = v8;
  if (!FigAlternateHasVideo(a1))
  {
    return 1;
  }

  v10 = *(BytePtr + 1);
  v11 = vabdd_f64(v7, v10);
  v12 = vabdd_f64(v9, v10);
  if (v11 < v12)
  {
    return -1;
  }

  return v11 != v12;
}

uint64_t FigAlternateMinimumRequiredPresentationSizeFilterCreate(const __CFAllocator *a1, CFTypeRef *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  *bytes = a3;
  v11 = a4;
  v6 = CFDataCreate(a1, bytes, 32);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"MinimumRequiredPresentationSize", 700, &off_1F0AE0AB0, v6, a2);
    CFRelease(v7);
  }

  else
  {
    FigAlternateMinimumRequiredPresentationSizeFilterCreate_cold_1(&v14);
    return v14;
  }

  return v8;
}

int64x2_t faf_minimumRequiredPresentationSizeFilterInit(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  result = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  BytePtr[1] = result;
  return result;
}

uint64_t faf_minimumRequiredPresentationSizeFirstPass(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Resolution = FigAlternateGetResolution(a1);
  v6 = v5;
  result = FigAlternateIsAudioOnly(a1);
  if (!result && Resolution >= *BytePtr && Resolution < *(BytePtr + 2))
  {
    *(BytePtr + 2) = Resolution;
    *(BytePtr + 3) = v6;
  }

  return result;
}

uint64_t FigAlternateFrameRateCapFilterCreate(uint64_t a1, CFTypeRef *a2, double a3)
{
  v9 = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v9);
  if (v5)
  {
    v6 = v5;
    v7 = FigSimpleAlternateFilterCreate(a1, @"FrameRateCap", 800, &unk_1F0AE0AD8, v5, a2);
    CFRelease(v6);
  }

  else
  {
    FigAlternateFrameRateCapFilterCreate_cold_1(&v10);
    return v10;
  }

  return v7;
}

BOOL faf_frameRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0.0;
  FrameRate = FigAlternateGetFrameRate(a1);
  CFNumberGetValue(a2, kCFNumberDoubleType, &valuePtr);
  return valuePtr - FrameRate > -2.22044605e-16 || FrameRate == 0.0;
}

uint64_t faf_frameRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  FrameRate = FigAlternateGetFrameRate(a1);
  v4 = FigAlternateGetFrameRate(a2);
  v5 = vabdd_f64(FrameRate, v4);
  v6 = -1;
  if (FrameRate >= v4)
  {
    v6 = 1;
  }

  if (v5 >= 2.22044605e-16)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t FigAlternateVideoRangeAndFrameRateBucketFilterCreate(const __CFAllocator *a1, int a2, int a3, CFTypeRef *a4)
{
  *bytes = a2;
  v11 = a3;
  v6 = CFDataCreate(a1, bytes, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"VideoRangeAndFrameRateBucket", 1000, &unk_1F0AE0B00, v6, a4);
    CFRelease(v7);
  }

  else
  {
    FigAlternateVideoRangeAndFrameRateBucketFilterCreate_cold_1(&v12);
    return v12;
  }

  return v8;
}

uint64_t frcvr_videoRangeAndFrameRateBucketFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  FrameRate = FigAlternateGetFrameRate(a1);
  VideoRange = FigAlternateGetVideoRange(a1);
  v6 = *BytePtr;
  v7 = *(BytePtr + 1);
  v8 = FigFrameRateToFrameRateBucket(FrameRate);
  IsAudioOnly = FigAlternateIsAudioOnly(a1);
  v11 = v6 >= VideoRange || v7 >= v8;
  return IsAudioOnly || v11;
}

CFStringRef frcvr_videoRangeAndFrameRateBucketFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  StringFromVideoRange = FigAlternateGetStringFromVideoRange(*BytePtr);
  StringFromFramerateBucket = FigAlternateGetStringFromFramerateBucket(*(BytePtr + 1));
  return CFStringCreateWithFormat(v3, 0, @"maxVideoRange:%@ framerate:%@", StringFromVideoRange, StringFromFramerateBucket);
}

uint64_t FigAlternateLimitConcurrent4K60HEVCDecodeFilterCreate(void *a1, CFTypeRef cf, CFTypeRef *a3)
{
  __src[1] = 0;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  __src[0] = v5;
  return fsaf_createWithBytes(a1, @"LimitConcurrent4K60HEVCDecode", 510, faf_limitConcurrent4K60HEVCDecodeFilterFn, 0, faf_limitConcurrent4K60HEVCDecodeFirstPassFn, faf_limitConcurrent4K60HEVCDecodeApplyInitFn, faf_limitConcurrent4K60HEVCDecodeFilterDescAddendum, __src, 16, faf_limitConcurrent4K60HEVCDecodeDeallocateCallback, a3);
}

uint64_t faf_limitConcurrent4K60HEVCDecodeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (FigAlternateIsAudioOnly(a1) || !BytePtr[8] || FigCFEqual())
  {
    return 1;
  }

  else
  {
    return faf_willRequire4K60Decode(a1) ^ 1;
  }
}

uint64_t faf_limitConcurrent4K60HEVCDecodeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigCFEqual();
  if (result)
  {
    result = faf_willRequire4K60Decode(a1);
    *(BytePtr + 8) = result;
  }

  return result;
}

const UInt8 *faf_limitConcurrent4K60HEVCDecodeApplyInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 8) = 0;
  return result;
}

CFStringRef faf_limitConcurrent4K60HEVCDecodeFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  v4 = BytePtr[8];
  PeakBitRate = FigAlternateGetPeakBitRate(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"avoidConcurrentDecode:%d alternate %d", v4, PeakBitRate);
}

void faf_limitConcurrent4K60HEVCDecodeDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateNormalizedPeakBitRateCapFilterCreate(uint64_t a1, int a2, int a3, CFTypeRef *a4)
{
  valuePtr = a2;
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v7)
  {
    v8 = v7;
    if (a3)
    {
      v9 = 0;
    }

    else
    {
      v9 = faf_normalizedPeakBitRateCapComparatorFn;
    }

    if (a3)
    {
      v10 = 950;
    }

    else
    {
      v10 = 600;
    }

    v13 = 0uLL;
    v14 = faf_normalizedPeakBitRateCapFilterFn;
    v15 = v9;
    v16 = faf_copyNormalizedPeakBitRateCapDescAddendum;
    v11 = FigSimpleAlternateFilterCreate(a1, @"PeakNormalizedBitRateCap", v10, &v13, v7, a4);
    CFRelease(v8);
  }

  else
  {
    FigAlternateNormalizedPeakBitRateCapFilterCreate_cold_1(&v13);
    return v13;
  }

  return v11;
}

BOOL faf_normalizedPeakBitRateCapFilterFn(uint64_t a1, const __CFNumber *a2)
{
  valuePtr = 0;
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr);
  return NormalizedPeakBitrate <= valuePtr;
}

uint64_t faf_normalizedPeakBitRateCapComparatorFn(uint64_t a1, uint64_t a2)
{
  NormalizedPeakBitrate = FigAlternateGetNormalizedPeakBitrate(a1);
  v4 = FigAlternateGetNormalizedPeakBitrate(a2);
  if (NormalizedPeakBitrate >= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (NormalizedPeakBitrate > v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

CFStringRef faf_copyNormalizedPeakBitRateCapDescAddendum(int a1, CFNumberRef number)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d bps", valuePtr);
}

uint64_t figAlternatePeakBitRateCapFilterCreateWithNameAndPriority(uint64_t a1, int a2, const void *a3, int a4, CFTypeRef *a5)
{
  valuePtr = a2;
  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    v11 = FigSimpleAlternateFilterCreate(a1, a3, a4, &unk_1F0AE1150, v9, a5);
    CFRelease(v10);
  }

  else
  {
    figAlternatePeakBitRateCapFilterCreateWithNameAndPriority_cold_1(&v14);
    return v14;
  }

  return v11;
}

uint64_t FigAlternateSkipBitrateRangeFilterCreate(void *a1, const void *a2, const void *a3, const void *a4, int a5, CFTypeRef *a6)
{
  __src[2] = 0;
  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(a3);
  if (ExpectedAverageBitrate <= FigAlternateGetExpectedAverageBitrate(a2))
  {
    FigAlternateSkipBitrateRangeFilterCreate_cold_1(&v17);
    return v17;
  }

  else
  {
    if (a2)
    {
      v13 = CFRetain(a2);
    }

    else
    {
      v13 = 0;
    }

    __src[0] = v13;
    if (a3)
    {
      v14 = CFRetain(a3);
    }

    else
    {
      v14 = 0;
    }

    __src[1] = v14;
    return fsaf_createWithBytes(a1, a4, a5, faf_skipBitrateRangeFilterFn, 0, faf_skipBitrateRangeFirstPassFn, faf_skipBitrateRangeFilterApplyInitFn, faf_skipBitrateRangeFilterDescAddendum, __src, 24, faf_skipBitrateRangeDeallocateCallback, a6);
  }
}

BOOL faf_skipBitrateRangeFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = 1;
  if (BytePtr[16])
  {
    v4 = BytePtr;
    AverageBitRate = FigAlternateGetAverageBitRate(a1);
    if (FigAlternateGetAverageBitRate(v4[1]) > AverageBitRate && FigAlternateGetAverageBitRate(*v4) < AverageBitRate)
    {
      return 0;
    }

    PeakBitRate = FigAlternateGetPeakBitRate(a1);
    if (FigAlternateGetPeakBitRate(v4[1]) > PeakBitRate && FigAlternateGetPeakBitRate(*v4) < PeakBitRate)
    {
      return 0;
    }
  }

  return result;
}

uint64_t faf_skipBitrateRangeFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigCFEqual();
  if (result)
  {
    *(BytePtr + 16) = 1;
  }

  return result;
}

const UInt8 *faf_skipBitrateRangeFilterApplyInitFn(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 16) = 0;
  return result;
}

CFStringRef faf_skipBitrateRangeFilterDescAddendum(int a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  v3 = *MEMORY[0x1E695E480];
  PeakBitRate = FigAlternateGetPeakBitRate(BytePtr[1]);
  AverageBitRate = FigAlternateGetAverageBitRate(BytePtr[1]);
  v6 = FigAlternateGetPeakBitRate(*BytePtr);
  v7 = FigAlternateGetAverageBitRate(*BytePtr);
  return CFStringCreateWithFormat(v3, 0, @"highBitrate [%d %d], lowBitrate [%d %d]", PeakBitRate, AverageBitRate, v6, v7);
}

void faf_skipBitrateRangeDeallocateCallback(const void **ptr, CFAllocatorRef allocator)
{
  v4 = *ptr;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = ptr[1];
  if (v5)
  {
    CFRelease(v5);
  }

  CFAllocatorDeallocate(allocator, ptr);
}

uint64_t FigAlternateSkipEqualOrLowerBitratesFilterCreate(void *a1, CFTypeRef cf, const void *a3, int a4, CFTypeRef *a5)
{
  __src[1] = 0;
  __src[2] = 0;
  if (cf)
  {
    v9 = CFRetain(cf);
  }

  else
  {
    v9 = 0;
  }

  __src[0] = v9;
  return fsaf_createWithBytes(a1, a3, a4, faf_skipEqualOrLowerBitratesFilterFn, 0, faf_skipBitrateRangeFirstPassFn, faf_skipBitrateRangeFilterApplyInitFn, faf_skipEqualOrLowerBitratesFilterDescAddendum, __src, 24, faf_skipBitrateRangeDeallocateCallback, a5);
}

BOOL faf_skipEqualOrLowerBitratesFilterFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  if (!BytePtr[16])
  {
    return 1;
  }

  v4 = BytePtr;
  if (FigCFEqual())
  {
    return 1;
  }

  ExpectedAverageBitrate = FigAlternateGetExpectedAverageBitrate(*v4);
  return ExpectedAverageBitrate < FigAlternateGetExpectedAverageBitrate(a1);
}

CFStringRef faf_skipEqualOrLowerBitratesFilterDescAddendum(int a1, CFDataRef theData)
{
  v2 = *CFDataGetBytePtr(theData);

  return CFCopyDescription(v2);
}

uint64_t FigAlternateNextHighestPeakBitRateFilterCreate(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, float a4)
{
  v10[1] = 0;
  v10[0] = (FigAlternateGetNormalizedPeakBitrate(a2) * a4);
  v6 = CFDataCreate(a1, v10, 8);
  if (v6)
  {
    v7 = v6;
    v8 = FigSimpleAlternateFilterCreate(a1, @"NextHighestPeakBitRate", 600, &off_1F0AE0B28, v6, a3);
    CFRelease(v7);
  }

  else
  {
    FigAlternateNextHighestPeakBitRateFilterCreate_cold_1(&v11);
    return v11;
  }

  return v8;
}

const UInt8 *faf_nextHighestPeakBitRateApplyFilterInit(const __CFData *a1)
{
  result = CFDataGetBytePtr(a1);
  *(result + 1) = 0x7FFFFFFF;
  return result;
}

uint64_t faf_nextHighestPeakBitRateFirstPassFn(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  result = FigAlternateGetNormalizedPeakBitrate(a1);
  if (result > *BytePtr && result < *(BytePtr + 1))
  {
    *(BytePtr + 1) = result;
  }

  return result;
}