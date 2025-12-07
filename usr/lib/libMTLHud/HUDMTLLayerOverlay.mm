@interface HUDMTLLayerOverlay
- (BOOL)layerTracking:(id)tracking presentDrawable:(id)drawable;
- (CGRect)overlayLayoutRectInPoints;
- (HUDMTLLayerOverlay)initWithDevice:(id)device;
- (void)_drawablePresentedCommon:(id)common;
- (void)_log:(HUDMTLLayerState *)_log drawableState:(HUDMTLLayerDrawableState *)state;
- (void)dealloc;
- (void)drawInsightsFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state;
- (void)drawUpdatedFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state;
- (void)generateQRCodeContent:(id)content;
- (void)layerTracking:(id)tracking setSnapshotTexture:(id)texture callback:(id)callback;
@end

@implementation HUDMTLLayerOverlay

- (HUDMTLLayerOverlay)initWithDevice:(id)device
{
  deviceCopy = device;
  v24.receiver = self;
  v24.super_class = HUDMTLLayerOverlay;
  v5 = [(HUDMTLLayerOverlay *)&v24 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 11) = 0;
    *(v5 + 72) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      [HUDMTLLayerOverlay initWithDevice:];
    }

    if (!_HUDMTLOverlayGlobalInstance_tracker)
    {
      _HUDMTLOverlayGlobalInstance_tracker = HUDUIOverlayCreate(deviceCopy);
      v7 = CACurrentMediaTime();
      HUDGPUTimelineInit((v7 * 1000000000.0));
    }

    v8 = HUDUIInvalidFrame;
    v6->_layer.mainWindowFrame.lastRenderedFrame.opaque = HUDUIInvalidFrame;
    v6->_layer.mainWindowFrame.tempFrame.opaque = v8;
    v6->_layer.mainWindowFrame.currentHeight = 0.0;
    v6->_layer.insightsWindowFrame.lastRenderedFrame.opaque = v8;
    v6->_layer.insightsWindowFrame.tempFrame.opaque = v8;
    v6->_layer.insightsWindowFrame.currentHeight = 0.0;
    *&v6->_layer.frameSwapLock._os_unfair_lock_opaque = 0;
    v6->_layer.fontSize = 1;
    v9 = dispatch_group_create();
    updateGroup = v6->_layer.updateGroup;
    v6->_layer.updateGroup = v9;

    name = [deviceCopy name];
    if ([name hasPrefix:@"Apple "])
    {
      v12 = [name substringFromIndex:6];

      name = v12;
    }

    if ([name hasSuffix:@"GPU"])
    {
      v13 = [name substringToIndex:{objc_msgSend(name, "length") - 4}];

      name = v13;
    }

    v14 = +[_CADeveloperHUDProperties instance];
    [v14 updateLabelMetric:@"com.apple.hud-stat.gpu-name" label:name];

    HUDUIRectMake();
    v6->_lastLayout.mainHUDWindow.x = v15;
    v6->_lastLayout.mainHUDWindow.y = v16;
    v6->_lastLayout.mainHUDWindow.w = v17;
    v6->_lastLayout.mainHUDWindow.h = v18;
    HUDUIRectMake();
    v6->_lastLayout.insights.x = v19;
    v6->_lastLayout.insights.y = v20;
    v6->_lastLayout.insights.w = v21;
    v6->_lastLayout.insights.h = v22;
  }

  return v6;
}

- (BOOL)layerTracking:(id)tracking presentDrawable:(id)drawable
{
  trackingCopy = tracking;
  drawableCopy = drawable;
  v8 = +[MTLCaptureManager sharedCaptureManager];
  isCapturing = [v8 isCapturing];
  if (isCapturing)
  {
    v11 = *(HUDGetGlobalConfig(isCapturing, v10) + 18);

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v14 = HUDGetGlobalConfig(v12, v13);
  if (*(v14 + 16) == 1)
  {
    v14 = HUDCurrentTimeInNs();
    layerTracking_presentDrawable___presentBegin = v14;
  }

  LODWORD(v16) = *HUDGetGlobalConfig(v14, v15);
  if (*([trackingCopy layerState] + 65))
  {
    if (!*([trackingCopy layerState] + 64))
    {
LABEL_9:
      LOBYTE(v16) = 0;
      goto LABEL_84;
    }
  }

  else if (!v16)
  {
    goto LABEL_84;
  }

  os_unfair_lock_lock(&self->_layer.frameSwapLock);
  opaque = self->_layer.mainWindowFrame.lastRenderedFrame.opaque;
  if (self->_layer.insightsWindowFrame.hasContent)
  {
    p_insightsWindowFrame = &self->_layer.insightsWindowFrame;
  }

  else
  {
    p_insightsWindowFrame = &HUDUIInvalidFrame;
  }

  v21 = *p_insightsWindowFrame;
  if (*(HUDGetGlobalConfig(v17, v18) + 17) != 1)
  {
    goto LABEL_19;
  }

  layer = [trackingCopy layer];
  v23 = +[HUDAlternateWindow instance];
  layer2 = [v23 layer];

  if (layer == layer2)
  {
    v25 = +[HUDMTLLayerTracking mainTracker];
    v27 = v25;
    if (v25)
    {
      v28 = *(HUDGetGlobalConfig(v25, v26) + 37);

      if (!v28)
      {
        v29 = +[HUDMTLLayerTracking mainTracker];

        client = [v29 client];

        opaque = *(client + 16);
        if (*(client + 72))
        {
          v103 = (client + 48);
        }

        else
        {
          v103 = &HUDUIInvalidFrame;
        }

        v21 = *v103;
LABEL_20:
        texture = [drawableCopy texture];
        width = [texture width];

        texture2 = [drawableCopy texture];
        height = [texture2 height];

        layer3 = [drawableCopy layer];
        [layer3 bounds];
        v109 = v35;

        layer4 = [drawableCopy layer];
        [layer4 bounds];
        v108 = v37;

        self->_lastLayout.insightsCurrentHeight = self->_layer.insightsWindowFrame.currentHeight;
        self->_lastLayout.mainWindowCurrentHeight = self->_layer.mainWindowFrame.currentHeight;
        trackingCopy = v29;
        LODWORD(v118[0]) = 0;
        LODWORD(v112) = 0;
        HUDUIFrameGetSizeInPoints(opaque, v118, &v112);
        LODWORD(v112) = self->_lastLayout.mainWindowCurrentHeight;
        v120 = 0;
        HUDUIFrameGetSizeInPoints(v21, &v120 + 1, &v120);
        LODWORD(v120) = self->_lastLayout.insightsCurrentHeight;
        v40 = HUDGetGlobalConfig(v38, v39);
        [trackingCopy safeAreaInsets];
        v104 = v41;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        *&v42 = width / v109;
        v110 = *&v42;
        v105 = width;
        v106 = height;
        v48 = width / *&v42;
        v107 = *&v42;
        v49 = height / *&v42;
        v50 = 1.0;
        if ((*(v40 + 17) & 1) == 0)
        {
          if ((v48 / v49) >= 0.75)
          {
            v50 = *(v40 + 11);
          }

          else
          {
            v50 = *(v40 + 11) * 1.5;
          }
        }

        v51 = *(v40 + 9);
        if (!*([trackingCopy layerState] + 70))
        {
          v51 = *(v40 + 10);
        }

        if (*([trackingCopy layerState] + 70) && *(v40 + 9) == 16)
        {
          v50 = v50 * 0.5;
        }

        if (!*([trackingCopy layerState] + 70) && *(v40 + 10) == 16)
        {
          v50 = v50 * 0.5;
        }

        if (v51 == 16)
        {
          v52 = 80.0;
        }

        else
        {
          v52 = *(v40 + 36);
        }

        v53 = (v50 * v48);
        if (v53 >= v49)
        {
          v53 = v49;
        }

        if (v52 < v53)
        {
          v52 = v53;
        }

        if (v52 <= v48)
        {
          v54 = v52;
        }

        else
        {
          v54 = v48;
        }

        v55 = v49 - v45;
        v56 = v55 + -20.0;
        if (v56 <= 0.0)
        {
          v57 = v49;
        }

        else
        {
          v57 = v56;
        }

        v58 = (v54 / LODWORD(v118[0])) * v112;
        if (v58 <= v57)
        {
          v57 = (v54 / LODWORD(v118[0])) * v112;
        }

        else
        {
          v54 = v54 * (v57 / v58);
        }

        self->_lastLayout.mainHUDWindow.w = v54;
        self->_lastLayout.mainHUDWindow.h = v57;
        if (*(v40 + 8))
        {
          v59 = *(v40 + 8);
        }

        else
        {
          v59 = 12;
        }

        p_lastLayout = &self->_lastLayout;
        v61 = v45 + 10.0;
        v62 = v43 + 10.0;
        v63 = v47 + 10.0;
        if (*([trackingCopy layerState] + 67))
        {
          self->_lastLayout.mainHUDWindow.x = *([trackingCopy layerState] + 28);
          v64 = *([trackingCopy layerState] + 29);
        }

        else
        {
          if (v59 == 1)
          {
            *&p_lastLayout->mainHUDWindow.x = *(v40 + 7);
LABEL_54:
            IsValid = HUDUIFrameIsValid(v21);
            if (IsValid)
            {
              w = self->_lastLayout.mainHUDWindow.w;
              if ((v59 & 4) != 0)
              {
                x = v62;
              }

              else
              {
                x = (self->_lastLayout.mainHUDWindow.x + w) + 10.0;
              }

              v69 = v48 - (((w + v62) + v63) + 10.0);
              v70 = HIDWORD(v120);
              v71 = v120;
              v72 = (v69 / HIDWORD(v120)) * v120;
              self->_lastLayout.insights.w = v69;
              self->_lastLayout.insights.h = v72;
              if ((~v59 & 6) == 0)
              {
                v73 = v48 - (v62 + v63);
                v72 = (v73 / v70) * v71;
                self->_lastLayout.insights.w = v73;
                self->_lastLayout.insights.h = v72;
LABEL_64:
                y = (v72 + v61) + 10.0;
                if (y < self->_lastLayout.mainHUDWindow.y)
                {
                  y = self->_lastLayout.mainHUDWindow.y;
                }

                self->_lastLayout.mainHUDWindow.y = y;
                goto LABEL_67;
              }

              if ((v59 & 8) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              x = self->_lastLayout.insights.x;
              v61 = self->_lastLayout.insights.y;
            }

LABEL_67:
            self->_lastLayout.insights.x = x + 0.0;
            *&self->_lastLayout.mainHUDWindow.x = vadd_f32(*&self->_lastLayout.mainHUDWindow.x, 0);
            self->_lastLayout.insights.y = v61 + 0.0;
            if (*(HUDGetGlobalConfig(IsValid, v66) + 24) == 1)
            {
              v76 = HUDSignpostGetOSLog(0, v75);
              if (os_signpost_enabled(v76) && os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                v77 = *(v40 + 9);
                v78 = self->_lastLayout.mainHUDWindow.x;
                v79 = self->_lastLayout.mainHUDWindow.y;
                v80 = self->_lastLayout.mainHUDWindow.w;
                h = self->_lastLayout.mainHUDWindow.h;
                *buf = 134221568;
                *&buf[4] = v77;
                *&buf[12] = 2048;
                *&buf[14] = v78;
                *&buf[22] = 2048;
                *&buf[24] = v79;
                *&buf[32] = 2048;
                *&buf[34] = v80;
                *&buf[42] = 2048;
                *&buf[44] = h;
                *&buf[52] = 2048;
                *&buf[54] = v105;
                v122 = 2048;
                v123 = v106;
                v124 = 2048;
                v125 = v109;
                v126 = 2048;
                v127 = v108;
                v128 = 2048;
                v129 = 0;
                v130 = 2048;
                v131 = 0;
                v132 = 2048;
                v133 = v50;
                v134 = 2048;
                v135 = v54;
                v136 = 2048;
                v137 = v57;
                v138 = 2048;
                v139 = v107;
                _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "[libMTLHud] layout frame = %llu, main = %f,%f,%f,%f, dim = %f,%f,%f,%f,%f%f scale = %f, expectedWH = %f,%f, contentsScale = %f", buf, 0x98u);
              }
            }

            HUDUIRectMul(&self->_lastLayout, v110);
            HUDUIRectMul(&self->_lastLayout.insights, v110);
            self->_lastLayout.contentsScale = v110;

            memset(buf, 0, 56);
            v82 = HUDUIFrameIsValid(opaque);
            if (v82)
            {
              *buf = opaque;
              *&buf[12] = p_lastLayout->mainHUDWindow;
              *&buf[8] = *(HUDGetGlobalConfig(v82, v83) + 10);
              v84 = 1;
            }

            else
            {
              v84 = 0;
            }

            if (*([trackingCopy layerState] + 70))
            {
              v85 = HUDUIFrameIsValid(v21);
              if (v85)
              {
                v87 = HUDGetGlobalConfig(v85, v86);
                if (*(v87 + 3) == 1)
                {
                  v89 = &buf[28 * v84];
                  *v89 = v21;
                  *(v89 + 12) = self->_lastLayout.insights;
                  *(v89 + 2) = *(HUDGetGlobalConfig(v87, v88) + 10);
                  ++v84;
                }
              }
            }

            v118[0] = 0;
            v118[1] = v118;
            v118[2] = 0x3042000000;
            v118[3] = __Block_byref_object_copy__0;
            v118[4] = __Block_byref_object_dispose__0;
            objc_initWeak(&v119, self);
            v112 = 0;
            v113 = &v112;
            v114 = 0x3032000000;
            v115 = __Block_byref_object_copy__415;
            v116 = __Block_byref_object_dispose__416;
            v117 = self->_snapshotTexture;
            if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
            {
              [HUDMTLLayerOverlay initWithDevice:];
            }

            v16 = _HUDMTLOverlayGlobalInstance_tracker;
            texture3 = [drawableCopy texture];
            v91 = v113[5];
            v92 = *[trackingCopy layerState];
            frameEvent = [trackingCopy frameEvent];
            v111[0] = _NSConcreteStackBlock;
            v111[1] = 3221225472;
            v111[2] = __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke;
            v111[3] = &unk_68F70;
            v111[4] = self;
            v111[5] = &v112;
            v111[6] = v118;
            LOBYTE(v16) = HUDUIDrawFrames(v16, texture3, v91, buf, v84, v92, frameEvent, [trackingCopy frameEventValue], v111);

            snapshotTexture = self->_snapshotTexture;
            self->_snapshotTexture = 0;

            _Block_object_dispose(&v112, 8);
            _Block_object_dispose(v118, 8);
            objc_destroyWeak(&v119);
            goto LABEL_82;
          }

          v98 = v62;
          if ((v59 & 4) == 0 || (v98 = (v48 - self->_lastLayout.mainHUDWindow.w) - v63, (~v59 & 6) != 0))
          {
            v99 = fmax(v98, 0.0);
          }

          else
          {
            v99 = v98 * 0.5;
          }

          p_lastLayout->mainHUDWindow.x = v99;
          v100 = v61;
          if ((v59 & 0x10) == 0 || (v101 = v104 + 10.0, v100 = (v49 - self->_lastLayout.mainHUDWindow.h) - v101, (~v59 & 0x18) != 0))
          {
            v64 = fmax(v100, 0.0);
          }

          else
          {
            v64 = v100 * 0.5;
          }
        }

        self->_lastLayout.mainHUDWindow.y = v64;
        goto LABEL_54;
      }
    }

LABEL_19:
    v29 = trackingCopy;
    goto LABEL_20;
  }

  LOBYTE(v16) = 0;
LABEL_82:
  os_unfair_lock_unlock(&self->_layer.frameSwapLock);
  if (*(HUDGetGlobalConfig(v95, v96) + 16) == 1)
  {
    [HUDMTLLayerOverlay layerTracking:presentDrawable:];
  }

LABEL_84:

  return v16;
}

void __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke(void *result)
{
  v1 = result[5];
  if (*(*(v1 + 8) + 40))
  {
    if (*(result[4] + 176))
    {
      v2[0] = _NSConcreteStackBlock;
      v2[1] = 3221225472;
      v2[2] = __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke_2;
      v2[3] = &unk_68F48;
      v2[4] = result[6];
      v2[5] = v1;
      HUDDispatchQueueAsync(v2);
    }
  }
}

void __52__HUDMTLLayerOverlay_layerTracking_presentDrawable___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
  if (WeakRetained)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    v4 = v3;
    if (v3)
    {
      v5 = malloc_type_malloc(4 * [v3 width] * objc_msgSend(v3, "height"), 0x100004077774924uLL);
      v6 = 4 * [v4 width];
      memset(v7, 0, 24);
      v7[3] = [v4 width];
      v7[4] = [v4 height];
      v7[5] = 1;
      [v4 getBytes:v5 bytesPerRow:v6 fromRegion:v7 mipmapLevel:0];
      if (v5)
      {
        (*(WeakRetained[22] + 16))(WeakRetained[22], [v4 width], objc_msgSend(v4, "height"), v5);
      }

      free(v5);
    }
  }
}

- (void)layerTracking:(id)tracking setSnapshotTexture:(id)texture callback:(id)callback
{
  objc_storeStrong(&self->_snapshotTexture, texture);
  textureCopy = texture;
  callbackCopy = callback;
  v9 = [callbackCopy copy];

  snapshotCallback = self->_snapshotCallback;
  self->_snapshotCallback = v9;
}

- (void)_drawablePresentedCommon:(id)common
{
  v3 = __chkstk_darwin(self, a2, common);
  v5 = v4;
  v6 = +[MTLCaptureManager sharedCaptureManager];
  isCapturing = [v6 isCapturing];
  if (isCapturing)
  {
    v9 = *(HUDGetGlobalConfig(isCapturing, v8) + 18);

    if ((v9 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  if ([v5 isMainLayer])
  {
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      HUDMTLOverlayResetStats_cold_1();
    }

    v10 = HIBYTE(word_767B8);
    HIBYTE(word_767B8) = 0;
    if (v10 == 1)
    {
      [v5 resetStats];
    }
  }

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x9010000000;
  v43[3] = &unk_5D621;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  lastDrawableState = [v5 lastDrawableState];
  v13 = lastDrawableState[1];
  v12 = lastDrawableState[2];
  v44 = *lastDrawableState;
  v45 = v13;
  v46 = v12;
  v14 = lastDrawableState[6];
  v16 = lastDrawableState[3];
  v15 = lastDrawableState[4];
  v49 = lastDrawableState[5];
  v50 = v14;
  v47 = v16;
  v48 = v15;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x16A810000000;
  v41[3] = &unk_5D621;
  memset(v42, 0, 512);
  memcpy(v42, [v5 layerState], sizeof(v42));
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3042000000;
  v39[3] = __Block_byref_object_copy__0;
  v39[4] = __Block_byref_object_dispose__0;
  inited = objc_initWeak(&v40, v3);
  if ((*(HUDGetGlobalConfig(inited, v18) + 1) & 1) != 0 || (v19 = [v5 layerState], v19[66]) || (v21 = HUDGetGlobalConfig(v19, v20), *(v21 + 31) == 1))
  {
    v23 = v3[11];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke;
    v38[3] = &unk_68F98;
    v38[4] = v3;
    v38[5] = v39;
    v38[6] = v41;
    v38[7] = v43;
    HUDDispatchQueueGroupAsync(v23, v38);
  }

  v24 = *HUDGetGlobalConfig(v21, v22);
  layerState = [v5 layerState];
  if (layerState[65])
  {
    layerState = [v5 layerState];
    if (!layerState[64])
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((*(HUDGetGlobalConfig(layerState, v26) + 73) & 0x40) != 0)
    {
      v27 = v3[11];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_2;
      v35[3] = &unk_68FC0;
      v37 = v39;
      v36 = v5;
      HUDDispatchQueueGroupAsync(v27, v35);
    }

    v28 = v3[11];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_3;
    v29[3] = &unk_68FE8;
    v32 = v39;
    v33 = v41;
    v34 = v43;
    v30 = v5;
    v31 = v3;
    HUDDispatchQueueGroupAsync(v28, v29);

    goto LABEL_21;
  }

  if (v24)
  {
    goto LABEL_18;
  }

LABEL_21:
  _Block_object_dispose(v39, 8);
  objc_destroyWeak(&v40);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
LABEL_22:
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _log:*(*(a1 + 48) + 8) + 32 drawableState:*(*(a1 + 56) + 8) + 32];
    WeakRetained = v3;
  }
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained generateQRCodeContent:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __47__HUDMTLLayerOverlay__drawablePresentedCommon___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 21);
    [(os_unfair_lock_s *)WeakRetained drawUpdatedFrame:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    if (*([*(a1 + 32) layerState] + 70))
    {
      [(os_unfair_lock_s *)WeakRetained drawInsightsFrame:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    }

    [*(a1 + 40) _log:*(*(a1 + 56) + 8) + 32 drawableState:*(*(a1 + 64) + 8) + 32];
    os_unfair_lock_unlock(WeakRetained + 21);
  }
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_layer.frameSwapLock);
  HUDUIReleaseFrame(&self->_layer.mainWindowFrame.tempFrame);
  HUDUIReleaseFrame(&self->_layer.mainWindowFrame);
  HUDUIReleaseFrame(&self->_layer.insightsWindowFrame.tempFrame);
  HUDUIReleaseFrame(&self->_layer.insightsWindowFrame);
  os_unfair_lock_unlock(&self->_layer.frameSwapLock);
  v3.receiver = self;
  v3.super_class = HUDMTLLayerOverlay;
  [(HUDMTLLayerOverlay *)&v3 dealloc];
}

- (void)drawUpdatedFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state
{
  v7 = HUDGetGlobalConfig(self, a2);
  if (*(v7 + 16) == 1)
  {
    v7 = HUDCurrentTimeInNs();
    drawUpdatedFrame_drawableState___renderBegin = v7;
  }

  if (__ROR8__(0xEEEEEEEEEEEEEEEFLL * frame->frameNumber, 3) <= 0x222222222222222uLL)
  {
    if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
    {
      HUDMTLOverlayResetStats_cold_1();
    }

    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v7, v8);
    v11 = HUDGetGlobalConfig(GlobalInstance, v10);
    HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(GlobalInstance, *(v11 + 4));
  }

  if (state->drawableWidth && state->drawableHeight)
  {
    frameNumber = frame->frameNumber;
    isMainLayer = frame->isMainLayer;
    v14 = HUDGetGlobalConfig(v7, v8);
    v16 = 36;
    if (!isMainLayer)
    {
      v16 = 40;
    }

    v17 = *&v14[v16];
    if (self->_layer.mainWindowFrame.currentHeight == 0.0)
    {
      if (v17 == 16)
      {
        v18 = 80.0;
        v19 = 16;
LABEL_18:
        opaque = self->_layer.mainWindowFrame.tempFrame.opaque;
        if (!HUDUIFrameIsValid(opaque))
        {
          if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
          {
            HUDMTLOverlayResetStats_cold_1();
          }

          opaque = HUDUICreateFrame(_HUDMTLOverlayGlobalInstance_tracker, v18, 1u, v18, 0, fmaxf(state->contentsScale, 2.0));
          HUDUIReleaseFrame(&self->_layer.mainWindowFrame.tempFrame);
          self->_layer.mainWindowFrame.tempFrame.opaque = opaque;
        }

        if (HUDUIBeginFrame(opaque))
        {
          v21 = +[_CADeveloperHUDProperties instance];
          mainWindow = [v21 mainWindow];
          [mainWindow draw:frame drawableState:state fontSize:self->_layer.fontSize frame:opaque layout:v19 height:&self->_layer.mainWindowFrame.currentHeight qrCode:self->_qrCode];

          objc_initWeak(&location, self);
          v23 = frame->frameNumber;
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke;
          v28[3] = &unk_69038;
          objc_copyWeak(v29, &location);
          v28[4] = self;
          v29[1] = opaque;
          v29[2] = frameNumber;
          v30 = v18;
          v31 = v18;
          HUDUIFlushFrame(opaque, v23, v28);
          if (*(HUDGetGlobalConfig(v24, v25) + 16) == 1)
          {
            v26 = HUDCurrentTimeInNs();
            HUDInternalPerfMetricRenderAdd(v26 - drawUpdatedFrame_drawableState___renderBegin, v27);
          }

          objc_destroyWeak(v29);
          objc_destroyWeak(&location);
        }

        return;
      }
    }

    else
    {
      v18 = 80.0;
      v19 = 16;
      if (state->drawableHeight < 0xC9 || v17 == 16)
      {
        goto LABEL_18;
      }
    }

    v18 = *(HUDGetGlobalConfig(v14, v15) + 29);
    v19 = v17;
    goto LABEL_18;
  }
}

void __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = WeakRetained[11];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2;
    v6[3] = &unk_69010;
    v7 = v3;
    v9 = *(a1 + 64);
    v8 = *(a1 + 48);
    v5 = v3;
    HUDDispatchQueueGroupAsync(v4, v6);
  }
}

uint64_t __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2;
  if (v2)
  {
    v9 = v2;
    os_unfair_lock_lock(v2 + 20);
    if (*(HUDGetGlobalConfig(v4, v5) + 16) == 1)
    {
      kHUDColorAttributeName_block_invoke__renderBegin = HUDCurrentTimeInNs();
    }

    _HUDMTLLayerFrameSwap(*(a1 + 40), &v9[4], *(a1 + 56), *&v9[9]._os_unfair_lock_opaque, *(a1 + 60));
    if (*(HUDGetGlobalConfig(v6, v7) + 16) == 1)
    {
      __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2_cold_1();
    }

    os_unfair_lock_unlock(v9 + 20);
    v3 = v9;
  }

  return _objc_release_x1(v2, v3);
}

- (void)drawInsightsFrame:(HUDMTLLayerState *)frame drawableState:(HUDMTLLayerDrawableState *)state
{
  v7 = HUDGetGlobalConfig(self, a2);
  if (*(v7 + 16) == 1)
  {
    v7 = HUDCurrentTimeInNs();
    drawInsightsFrame_drawableState___renderBegin = v7;
  }

  if (*(HUDGetGlobalConfig(v7, v8) + 3) == 1)
  {
    frameNumber = frame->frameNumber;
    opaque = self->_layer.insightsWindowFrame.tempFrame.opaque;
    drawableWidth = state->drawableWidth;
    contentsScale = state->contentsScale;
    v13 = fmin((((drawableWidth - self->_lastLayout.mainHUDWindow.w) / contentsScale) + -10.0), 1024.0);
    v14 = fmin((drawableWidth / contentsScale), 1024.0);
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }

    if (!HUDUIFrameIsValid(self->_layer.insightsWindowFrame.tempFrame.opaque))
    {
      if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
      {
        HUDMTLOverlayResetStats_cold_1();
      }

      opaque = HUDUICreateFrame(_HUDMTLOverlayGlobalInstance_tracker, v15, 1u, v15, 0, fmaxf(state->contentsScale, 2.0));
      self->_layer.insightsWindowFrame.tempFrame.opaque = opaque;
    }

    if (HUDUIBeginFrame(opaque))
    {
      v16 = +[_CADeveloperHUDProperties instance];
      insightsWindow = [v16 insightsWindow];
      self->_layer.insightsWindowFrame.hasContent = [insightsWindow draw:frame drawableState:state fontSize:self->_layer.fontSize frame:opaque width:&self->_layer.insightsWindowFrame.contentWidth height:&self->_layer.insightsWindowFrame.currentHeight];

      objc_initWeak(&location, self);
      v18 = frame->frameNumber;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke;
      v23[3] = &unk_69088;
      objc_copyWeak(v24, &location);
      v23[4] = self;
      v24[1] = opaque;
      v24[2] = frameNumber;
      v25 = v15;
      HUDUIFlushFrame(opaque, v18, v23);
      if (*(HUDGetGlobalConfig(v19, v20) + 16) == 1)
      {
        v21 = HUDCurrentTimeInNs();
        HUDInternalPerfMetricRenderAdd(v21 - drawInsightsFrame_drawableState___renderBegin, v22);
      }

      objc_destroyWeak(v24);
      objc_destroyWeak(&location);
    }
  }
}

void __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    objc_initWeak(&location, *(a1 + 32));
    v3 = WeakRetained[11];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2;
    v5[3] = &unk_69060;
    objc_copyWeak(v6, &location);
    v7 = *(a1 + 64);
    v4 = *(a1 + 56);
    v6[1] = *(a1 + 48);
    v6[2] = v4;
    HUDDispatchQueueGroupAsync(v3, v5);
    objc_destroyWeak(v6);
    objc_destroyWeak(&location);
  }
}

uint64_t __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 20);
    if (*(HUDGetGlobalConfig(v4, v5) + 16) == 1)
    {
      kHUDColorAttributeName_block_invoke_2__renderBegin = HUDCurrentTimeInNs();
    }

    _HUDMTLLayerFrameSwap(*(a1 + 40), &v9[12], *(a1 + 56), *&v9[17]._os_unfair_lock_opaque, *(a1 + 56));
    if (*(HUDGetGlobalConfig(v6, v7) + 16) == 1)
    {
      __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2_cold_1();
    }

    os_unfair_lock_unlock(v9 + 20);
    v3 = v9;
  }

  return _objc_release_x1(WeakRetained, v3);
}

- (CGRect)overlayLayoutRectInPoints
{
  contentsScale = self->_lastLayout.contentsScale;
  v3 = (self->_lastLayout.mainHUDWindow.x / contentsScale);
  v4 = (self->_lastLayout.mainHUDWindow.y / contentsScale);
  v5 = (self->_lastLayout.mainHUDWindow.w / contentsScale);
  currentHeight = self->_layer.mainWindowFrame.currentHeight;
  result.size.height = currentHeight;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)generateQRCodeContent:(id)content
{
  contentCopy = content;
  v5 = objc_autoreleasePoolPush();
  if (*(HUDGetGlobalConfig(v5, v6) + 35))
  {
    layerState = [contentCopy layerState];
    v8 = *layerState;
    if (!(v8 % *(HUDGetGlobalConfig(layerState, v9) + 35)))
    {
      v38 = 0;
      Snapshot = HUDSystemStateGetSnapshot(&v38, v10, v11, v12);
      GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(Snapshot, v14);
      ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0);
      v43[0] = @"drawable";
      v41[0] = @"frame";
      v37 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", *([contentCopy lastDrawableState] + 1));
      v42[0] = v37;
      v41[1] = @"logical-frame";
      v36 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", *([contentCopy lastDrawableState] + 2));
      v42[1] = v36;
      v41[2] = @"drawable-id";
      v35 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *[contentCopy lastDrawableState]);
      v42[2] = v35;
      v41[3] = @"frame-interval";
      v34 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([contentCopy lastDrawableState] + 7));
      v42[3] = v34;
      v41[4] = @"presented-time";
      v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *([contentCopy lastDrawableState] + 4));
      v42[4] = v33;
      v32 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:5];
      v43[1] = @"stats";
      v44[0] = v32;
      v39[0] = @"gptk";
      if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
      {
        [HUDMTLLayerOverlay initWithDevice:];
      }

      v17 = [NSNumber numberWithBool:word_767B8, self];
      v40[0] = v17;
      v39[1] = @"gpu-time";
      v18 = [NSNumber numberWithDouble:*(ValueRecord + 1028)];
      v40[1] = v18;
      v39[2] = @"app-memory";
      v19 = [NSNumber numberWithUnsignedLongLong:v38[1]];
      v40[2] = v19;
      v39[3] = @"metal-memory";
      v20 = [NSNumber numberWithUnsignedLongLong:*v38];
      v40[3] = v20;
      v39[4] = @"marker";
      v21 = +[_CADeveloperHUDProperties instance];
      frameMarker = [v21 frameMarker];
      v23 = frameMarker;
      v24 = @"none";
      if (frameMarker)
      {
        v24 = frameMarker;
      }

      v40[4] = v24;
      v25 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:5];
      v44[1] = v25;
      v26 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];

      v27 = [NSJSONSerialization dataWithJSONObject:v26 options:2 error:0];
      if (v27)
      {
        if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
        {
          [HUDMTLLayerOverlay initWithDevice:];
        }

        v28 = HUDUIOverlayGetCommandQueue(_HUDMTLOverlayGlobalInstance_tracker);
        v29 = HUDQrCodeGenerateTexture(v27, 0x100u, v28);
        v30 = *(v31 + 160);
        *(v31 + 160) = v29;
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_log:(HUDMTLLayerState *)_log drawableState:(HUDMTLLayerDrawableState *)state
{
  if (_log->isMainLayer)
  {
    v6 = HUDGetGlobalConfig(self, a2);
    if (*(v6 + 16) == 1)
    {
      v6 = HUDCurrentTimeInNs();
      _log_drawableState___loggingBegin = v6;
    }

    v9 = HUDGetGlobalConfig(v6, v7);
    if (*(v9 + 31) == 1)
    {
      v10 = HUDSignpostGetOSLog(2, v8);
      if (os_signpost_enabled(v10))
      {
        v11 = +[_CADeveloperHUDProperties instance];
        mainWindow = [v11 mainWindow];
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = __41__HUDMTLLayerOverlay__log_drawableState___block_invoke;
        v37[3] = &unk_690B0;
        v38 = v10;
        [mainWindow requestMetrics:v37];
      }
    }

    if ((*(v9 + 1) & 1) != 0 || _log->userLoggingEnabled)
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = __41__HUDMTLLayerOverlay__log_drawableState___block_invoke_463;
      v36[3] = &__block_descriptor_40_e5_v8__0l;
      v36[4] = _log;
      v13 = objc_retainBlock(v36);
      GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v13, v14);
      ValueRecord = HUDGPUTimeTrackerGetValueRecord(GlobalInstance, 0);
      if (ValueRecord)
      {
        v18 = *(ValueRecord + 1028);
      }

      else
      {
        v18 = 0;
      }

      presentedDeltaTime = state->presentedDeltaTime;
      if (presentedDeltaTime)
      {
        v20 = &_log_drawableState__logBuffer - _log_drawableState__logBufferPos + 986;
        v21 = snprintf(_log_drawableState__logBufferPos, v20, ",%.2f,%.2f", presentedDeltaTime * 0.000001, v18 * 0.000001);
        if (v21 < 1 || v20 <= v21)
        {
          *_log_drawableState__logBufferPos = 0;
          (v13[2])(v13);
          _log_drawableState__logBufferPos += snprintf(_log_drawableState__logBufferPos, &_log_drawableState__logBuffer - _log_drawableState__logBufferPos + 986, ",%.2f,%.2f", state->presentedDeltaTime * 0.000001, v18 * 0.000001);
        }

        else
        {
          _log_drawableState__logBufferPos += v21;
          if (_log_drawableState__logTime >= 0x3B9ACA01)
          {
            (v13[2])(v13);
          }
        }
      }

      v22 = HUDSignpostGetOSLog(0, v17);
      v23 = os_signpost_enabled(v22);
      if (v23)
      {
        v25 = +[_CADeveloperHUDProperties instance];
        frameMarker = [v25 frameMarker];

        v27 = v22;
        v28 = v27;
        layerID = _log->layerID;
        if (layerID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
        {
          frameNumber = _log->frameNumber;
          logicalFrameNumber = _log->logicalFrameNumber;
          v32 = state->presentedDeltaTime / 1000000000.0;
          *buf = 134350850;
          presentedTime = state->presentedTime;
          drawableID = state->drawableID;
          v40 = layerID;
          v41 = 2050;
          v42 = frameNumber;
          v43 = 2050;
          v44 = logicalFrameNumber;
          v45 = 2050;
          v46 = v32;
          v47 = 2050;
          v48 = presentedTime / 1000000000.0;
          v35 = @"none";
          v49 = 2050;
          v50 = drawableID;
          if (frameMarker)
          {
            v35 = frameMarker;
          }

          v51 = 2050;
          v52 = v18;
          v53 = 2114;
          v54 = v35;
          _os_signpost_emit_with_name_impl(&dword_0, v28, OS_SIGNPOST_EVENT, layerID, "DrawablePresent", "layer: %{public, name=layer}llx\nframe: %{public, name=frame}zu\nlogical-frame: %{public, name=logical-frame}zu\nframe-interval: %{public, name=frame-interval}f\npresented-time: %{public, name=presented-time}f\ndrawable-id: %{public, name=drawable-id}llu\ngpu-time: %{public, name=gpu-time}llu\nmarker: %{public, name=marker}@", buf, 0x52u);
        }
      }

      _log_drawableState__logTime += state->updateDeltaNs;
      if (*(HUDGetGlobalConfig(v23, v24) + 16) == 1)
      {
        [HUDMTLLayerOverlay _log:drawableState:];
      }
    }
  }
}

void __41__HUDMTLLayerOverlay__log_drawableState___block_invoke(uint64_t a1, void *a2)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [a2 allValues];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v29)
  {
    v28 = *v36;
    do
    {
      v3 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v3;
        v4 = *(*(&v35 + 1) + 8 * v3);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v5 = [v4 metrics];
        v6 = [v5 countByEnumeratingWithState:&v31 objects:v47 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v32;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v32 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v31 + 1) + 8 * i);
              if ([v10 enabled])
              {
                v11 = [v10 descriptor];
                if (v11[4] != 2 && ((v11[6] & 2) == 0 || MTLHudIsInternalInstall(v11, v12)))
                {
                  v13 = [v10 timedOut];
                  if ((v13 & 1) == 0)
                  {
                    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v13, v14);
                    CurrentFrame = HUDGPUTimeTrackerGetCurrentFrame(GlobalInstance);
                    v17 = [v10 metricType];
                    v18 = *(a1 + 32);
                    v19 = v18;
                    v20 = CurrentFrame - 1;
                    if (v17 == 2)
                    {
                      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
                      {
                        v21 = *([v10 descriptor] + 1);
                        v22 = *[v10 descriptor];
                        v23 = [v10 stringValue];
                        *buf = 134349826;
                        v40 = CurrentFrame;
                        v41 = 2114;
                        v42 = v21;
                        v43 = 2114;
                        v44 = v22;
                        v45 = 2114;
                        v46 = v23;
                        _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_EVENT, CurrentFrame, "MetricValue", "frame: %{public, name=time}zu\nidentifier: %{public, name=identifier}@\nname: %{public, name=name}@\nvalue: %{public, name=value}@\n", buf, 0x2Au);
                      }
                    }

                    else if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
                    {
                      v24 = *([v10 descriptor] + 1);
                      v25 = *[v10 descriptor];
                      v26 = *([v10 record] + 1028);
                      *buf = 134349826;
                      v40 = CurrentFrame;
                      v41 = 2114;
                      v42 = v24;
                      v43 = 2114;
                      v44 = v25;
                      v45 = 2050;
                      v46 = v26;
                      _os_signpost_emit_with_name_impl(&dword_0, v19, OS_SIGNPOST_EVENT, CurrentFrame, "MetricValue", "frame: %{public, name=time}zu\nidentifier: %{public, name=identifier}@\nname: %{public, name=name}@\nvalue: %{public, name=value}f\n", buf, 0x2Au);
                    }
                  }
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v31 objects:v47 count:16];
          }

          while (v7);
        }

        v3 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v29);
  }
}

void __41__HUDMTLLayerOverlay__log_drawableState___block_invoke_463(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = 0;
  HUDSystemStateGetSnapshot(&v10, a2, a3, a4);
  NSLog(@"metal-HUD: %zu,%.2f,%.2f%s", **(a1 + 32), *v10 * 0.0009765625 * 0.0009765625, v10[1] * 0.0009765625 * 0.0009765625, &_log_drawableState__logBuffer);
  v6 = HUDSignpostGetOSLog(0, v5);
  if (os_signpost_enabled(v6) && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = **(a1 + 32);
    v8 = *v10 * 0.0009765625 * 0.0009765625;
    v9 = v10[1] * 0.0009765625 * 0.0009765625;
    *buf = 134218754;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = &_log_drawableState__logBuffer;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "metal-HUD: %zu,%.2f,%.2f%s", buf, 0x2Au);
  }

  _log_drawableState__logTime = 0;
  _log_drawableState__logBufferPos = &_log_drawableState__logBuffer;
}

void __53__HUDMTLLayerOverlay_drawUpdatedFrame_drawableState___block_invoke_2_cold_1()
{
  v0 = HUDCurrentTimeInNs() - kHUDColorAttributeName_block_invoke__renderBegin;

  HUDInternalPerfMetricRenderAdd(v0, v1);
}

void __54__HUDMTLLayerOverlay_drawInsightsFrame_drawableState___block_invoke_2_cold_1()
{
  v0 = HUDCurrentTimeInNs() - kHUDColorAttributeName_block_invoke_2__renderBegin;

  HUDInternalPerfMetricRenderAdd(v0, v1);
}

@end