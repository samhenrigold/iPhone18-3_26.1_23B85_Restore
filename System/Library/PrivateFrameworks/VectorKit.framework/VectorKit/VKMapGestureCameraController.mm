@interface VKMapGestureCameraController
- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double;
- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double delta:()3;
- (VKMapGestureCameraController)initWithCameraController:(id)controller;
- (VKMovableCamera)moveableCamera;
- (id).cxx_construct;
- (void)beginPitch:(CGPoint)pitch;
- (void)endZoom:(CGPoint)zoom;
- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point;
- (void)updatePitch:(CGPoint)pitch degrees:(double)degrees;
- (void)updatePitch:(CGPoint)pitch translation:(double)translation;
- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point;
- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor;
@end

@implementation VKMapGestureCameraController

- (id).cxx_construct
{
  *(self + 232) = 0;
  *(self + 240) = 0;
  *(self + 248) = 0;
  *(self + 256) = 0;
  return self;
}

- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double delta:()3
{
  v4 = a4._e[2];
  v5 = a4._e[1];
  v6 = a4._e[0];
  v7 = a3._e[2];
  v8 = a3._e[1];
  v9 = a3._e[0];
  *&v40.var1 = a3;
  *(&v40.var0._rotation._imaginary + 8) = a4;
  moveableCamera = [(VKMapGestureCameraController *)self moveableCamera];
  regionRestriction = [moveableCamera regionRestriction];
  isEmpty = [regionRestriction isEmpty];

  if (isEmpty)
  {
    for (i = 0; i != 3; ++i)
    {
      *(&v35 + i * 8) = v40.var0._rotation._imaginary._e[i + 1] + *(&v40.var1 + i * 8);
    }

    v16 = *(&v35 + 1);
    v15 = *&v35;
    v17 = *&v36;
  }

  else
  {
    if (moveableCamera)
    {
      objc_msgSend_cameraState(moveableCamera);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    [WeakRetained centerScreenPoint];
    VKCameraMakeGroundPoint(&v40, v41, v19, &v35);

    [moveableCamera groundPoint];
    v34[0] = v20;
    v34[1] = v21;
    v34[2] = v22;
    if ((LOBYTE(v40.var0._rotation._imaginary._e[0]) & 1) == 0)
    {
      v33 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v33);
    }

    for (j = 0; j != 3; ++j)
    {
      *(&v35 + j * 8) = v40.var0._translation._e[j] - *&v34[j];
    }

    v24 = v35;
    regionRestriction2 = [moveableCamera regionRestriction];
    [regionRestriction2 clampedPositionForOrigin:*&v24 + v9 delta:{*(&v24 + 1) + v8, v6, v5}];
    v27 = v26;
    v29 = v28;

    v15 = v27 - *&v24;
    v16 = v29 - *(&v24 + 1);
    v17 = v4 + v7;
  }

  v30 = v15;
  v31 = v16;
  v32 = v17;
  result._e[2] = v32;
  result._e[1] = v31;
  result._e[0] = v30;
  return result;
}

- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double
{
  v3 = a3._e[2];
  v4 = a3._e[1];
  v5 = a3._e[0];
  moveableCamera = [(VKMapGestureCameraController *)self moveableCamera];
  regionRestriction = [moveableCamera regionRestriction];
  isEmpty = [regionRestriction isEmpty];

  if ((isEmpty & 1) == 0)
  {
    if (moveableCamera)
    {
      objc_msgSend_cameraState(moveableCamera);
    }

    else
    {
      memset(v27, 0, sizeof(v27));
    }

    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    [WeakRetained centerScreenPoint];
    VKCameraMakeGroundPoint(&v28, v29, v11, v27);

    [moveableCamera groundPoint];
    v26[0] = v12;
    v26[1] = v13;
    v26[2] = v14;
    if ((LOBYTE(v28.var0._rotation._imaginary._e[0]) & 1) == 0)
    {
      v25 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v25);
    }

    for (i = 0; i != 3; ++i)
    {
      *(v27 + i * 8) = v28.var0._translation._e[i] - *&v26[i];
    }

    v16 = v27[0];
    regionRestriction2 = [moveableCamera regionRestriction];
    [regionRestriction2 clampedPosition:{*&v16 + v5, *(&v16 + 1) + v4}];
    v19 = v18;
    v21 = v20;

    v5 = v19 - *&v16;
    v4 = v21 - *(&v16 + 1);
  }

  v22 = v5;
  v23 = v4;
  v24 = v3;
  result._e[2] = v24;
  result._e[1] = v23;
  result._e[0] = v22;
  return result;
}

- (void)updatePitch:(CGPoint)pitch degrees:(double)degrees
{
  v6 = [(VKMapGestureCameraController *)self moveableCamera:pitch.x];
  v7 = degrees * 0.0174532925;
  self->_isPitchIncreasing = self->_currentPitch < degrees * 0.0174532925;
  [v6 maxPitchRadian];
  v9 = v8;
  [v6 maxPitchRadian];
  v11 = v10;
  [v6 maxPitchRadian];
  v13 = v12;
  if (v9 == 0.0)
  {
    v14 = v9;
  }

  else
  {
    v14 = 0.0698131701;
  }

  v15 = rubberBandOffsetForOffset(v7, v11, 0.0, v14);
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  isPitched = [WeakRetained isPitched];

  [v6 pitchRadian];
  v19 = v18;
  [v6 rightVector];
  v20 = fmin(fmax(v15, 0.0), v13 + 0.0698131701);
  v48[0] = v21;
  v48[1] = v22;
  v48[2] = v23;
  gm::quaternionFromAngleAxis<double>(v49, v48, v20 - v19);
  gm::Quaternion<double>::operator*(v48, v49, [v6 orientation]);
  v24 = objc_loadWeakRetained(&self->super._cameraController);
  [v24 centerScreenPoint];
  if (v6)
  {
    objc_msgSend_groundPointFromScreenPoint_(v6);
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  if (BYTE8(v47))
  {
    v25 = objc_msgSend_position(v6);
    *&v44 = gm::rotateAboutPoint<double>(v25, v49, &v46);
    *(&v44 + 1) = v26;
    *&v45 = v27;
    [v6 setPosition:&v44];
    [v6 setOrientation:v48];
  }

  else
  {
    [v6 setOrientation:v48];
    v28 = objc_loadWeakRetained(&self->super._cameraController);
    [v28 centerScreenPoint];
    if (v6)
    {
      objc_msgSend_groundPointFromScreenPoint_(v6);
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    if ((BYTE8(v45) & 1) == 0)
    {
      v40 = std::__throw_bad_optional_access[abi:nn200100]();
      selfCopy = self;
      v42 = v40;

      _Unwind_Resume(v42);
    }

    v29 = objc_msgSend_position(v6);
    for (i = 0; i != 3; ++i)
    {
      *&v50[i] = *(&v44 + i * 8) - *(v29 + i * 8);
    }

    v32 = *v50;
    v31 = *&v50[1];
    v33 = *objc_msgSend_position(v6);
    v34 = *(objc_msgSend_position(v6) + 8);
    v35 = *(objc_msgSend_position(v6) + 16);
    v43[0] = v33 - v32;
    v43[1] = v34 - v31;
    v43[2] = v35;
    [v6 setPosition:v43];
  }

  self->_currentPitch = v20;
  v36 = objc_loadWeakRetained(&self->super._cameraController);
  isPitched2 = [v36 isPitched];

  if (!(isPitched & 1 | ((isPitched2 & 1) == 0)))
  {
    v38 = objc_loadWeakRetained(&self->super._cameraController);
    cameraDelegate = [v38 cameraDelegate];
    [cameraDelegate mapLayerDidBecomePitched:1];
    goto LABEL_20;
  }

  if (!(isPitched2 & 1 | ((isPitched & 1) == 0)))
  {
    v38 = objc_loadWeakRetained(&self->super._cameraController);
    cameraDelegate = [v38 cameraDelegate];
    [cameraDelegate mapLayerDidBecomePitched:0];
LABEL_20:
  }
}

- (void)updatePitch:(CGPoint)pitch translation:(double)translation
{
  v6 = [(VKMapGestureCameraController *)self moveableCamera:pitch.x];
  v7 = v6;
  v8 = (translation > 0.0) - (translation < 0.0);
  v9 = fabs(translation);
  self->_isPitchIncreasing = v8 < 0;
  beganPitch = self->_beganPitch;
  if (v8 >= 0)
  {
    v11 = -v9;
  }

  else
  {
    v11 = v9;
  }

  [v6 maxPitchRadian];
  v13 = v12;
  [v7 maxPitchRadian];
  v15 = v14;
  [v7 maxPitchRadian];
  v17 = v16;
  if (v13 == 0.0)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.0698131701;
  }

  v19 = rubberBandOffsetForOffset(beganPitch + v11, v15, 0.0, v18);
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  isPitched = [WeakRetained isPitched];

  [v7 pitchRadian];
  v23 = v22;
  [v7 rightVector];
  v24 = fmin(fmax(v19, 0.0), v17 + 0.0698131701);
  v52[0] = v25;
  v52[1] = v26;
  v52[2] = v27;
  gm::quaternionFromAngleAxis<double>(v53, v52, v24 - v23);
  gm::Quaternion<double>::operator*(v52, v53, [v7 orientation]);
  v28 = objc_loadWeakRetained(&self->super._cameraController);
  [v28 centerScreenPoint];
  if (v7)
  {
    objc_msgSend_groundPointFromScreenPoint_(v7);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  if (BYTE8(v51))
  {
    v29 = objc_msgSend_position(v7);
    *&v48 = gm::rotateAboutPoint<double>(v29, v53, &v50);
    *(&v48 + 1) = v30;
    *&v49 = v31;
    [v7 setPosition:&v48];
    [v7 setOrientation:v52];
  }

  else
  {
    [v7 setOrientation:v52];
    v32 = objc_loadWeakRetained(&self->super._cameraController);
    [v32 centerScreenPoint];
    if (v7)
    {
      objc_msgSend_groundPointFromScreenPoint_(v7);
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    if ((BYTE8(v49) & 1) == 0)
    {
      v44 = std::__throw_bad_optional_access[abi:nn200100]();
      selfCopy = self;
      v46 = v44;

      _Unwind_Resume(v46);
    }

    v33 = objc_msgSend_position(v7);
    for (i = 0; i != 3; ++i)
    {
      *&v54[i] = *(&v48 + i * 8) - *(v33 + i * 8);
    }

    v36 = *v54;
    v35 = *&v54[1];
    v37 = *objc_msgSend_position(v7);
    v38 = *(objc_msgSend_position(v7) + 8);
    v39 = *(objc_msgSend_position(v7) + 16);
    v47[0] = v37 - v36;
    v47[1] = v38 - v35;
    v47[2] = v39;
    [v7 setPosition:v47];
  }

  self->_currentPitch = v24;
  v40 = objc_loadWeakRetained(&self->super._cameraController);
  isPitched2 = [v40 isPitched];

  if (!(isPitched & 1 | ((isPitched2 & 1) == 0)))
  {
    v42 = objc_loadWeakRetained(&self->super._cameraController);
    cameraDelegate = [v42 cameraDelegate];
    [cameraDelegate mapLayerDidBecomePitched:1];
    goto LABEL_23;
  }

  if (!(isPitched2 & 1 | ((isPitched & 1) == 0)))
  {
    v42 = objc_loadWeakRetained(&self->super._cameraController);
    cameraDelegate = [v42 cameraDelegate];
    [cameraDelegate mapLayerDidBecomePitched:0];
LABEL_23:
  }
}

- (void)beginPitch:(CGPoint)pitch
{
  v5 = [(VKMapGestureCameraController *)self moveableCamera:pitch.x];
  [v5 pitchRadian];
  self->_beganPitch = v4;
}

- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  moveableCamera = [(VKMapGestureCameraController *)self moveableCamera];
  v9 = moveableCamera;
  if (moveableCamera)
  {
    objc_msgSend_groundPointFromScreenPoint_(moveableCamera, x, y);
    if (v24)
    {
      v10 = rotate * 0.5;
      v11 = sin(v10);
      for (i = 0; i != 24; i += 8)
      {
        *(&v25 + i) = *(&VKVectorZAxis + i) * v11;
      }

      v20 = v25;
      v21 = v26;
      v22 = cos(v10);
      v13 = objc_msgSend_position(v9);
      if ((v24 & 1) == 0)
      {
        v17 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v17);
      }

      [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:gm::rotateAboutPoint<double>(v13, &v20, v23)];
      v19[0] = v14;
      v19[1] = v15;
      v19[2] = v16;
      [v9 setPosition:v19];
      [v9 setOrientation:{v18, gm::Quaternion<double>::operator*(v18, &v20, objc_msgSend(v9, "orientation"))}];
    }
  }
}

- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = pan.y;
  v7 = pan.x;
  moveableCamera = [(VKMapGestureCameraController *)self moveableCamera];
  LOBYTE(v49) = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  isPitched = [WeakRetained isPitched];

  if (isPitched)
  {
    [moveableCamera pitchRadian];
    v13 = v12;
    [moveableCamera rightVector];
    v36.var0._rotation._imaginary._e[1] = v14;
    v36.var0._rotation._imaginary._e[2] = v15;
    v36.var0._rotation._scalar = v16;
    gm::quaternionFromAngleAxis<double>(v46, &v36.var0._rotation._imaginary._e[1], -v13);
    gm::Quaternion<double>::operator*(&v43, v46, [moveableCamera orientation]);
    v17 = objc_loadWeakRetained(&self->super._cameraController);
    [v17 centerScreenPoint];
    if (moveableCamera)
    {
      objc_msgSend_groundPointFromScreenPoint_(moveableCamera);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    if (BYTE8(v42))
    {
      v20 = objc_msgSend_position(moveableCamera);
      if ((BYTE8(v42) & 1) == 0)
      {
        v34 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v34);
      }

      v22 = gm::rotateAboutPoint<double>(v20, v46, &v41);
      v24 = v23;
      v25 = v21;
      if (moveableCamera)
      {
        objc_msgSend_cameraState(moveableCamera);
      }

      else
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      *&v36.var1 = v43;
      v36.var3 = v44;
      v37 = v45;
      v36.var0._rotation._imaginary._e[1] = v22;
      v36.var0._rotation._imaginary._e[2] = v24;
      v36.var0._rotation._scalar = v25;
      v51.x = v7;
      v51.y = v6;
      VKCameraMakeGroundPoint(&v36, v51, v21, &v36.var0._rotation._imaginary._e[1]);
      var1_low = LOBYTE(v36.var0._rotation._imaginary._e[0]);
      if (LOBYTE(v36.var0._rotation._imaginary._e[0]))
      {
        v49 = *v36.var0._translation._e;
        scalar = v36.var0._translation._e[2];
      }

      v52.x = x;
      v52.y = y;
      VKCameraMakeGroundPoint(&v36, v52, v26, &v36.var0._rotation._imaginary._e[1]);
      if (LOBYTE(v36.var0._rotation._imaginary._e[0]))
      {
        v47 = *v36.var0._translation._e;
        v19 = v36.var0._translation._e[2];
LABEL_19:
        v48 = v19;
        if (var1_low)
        {
          for (i = 0; i != 3; ++i)
          {
            v36.var0._rotation._imaginary._e[i + 1] = *(&v47 + i * 8) - *(&v49 + i * 8);
          }

          v28 = v36.var0._rotation._imaginary._e[1];
          v29 = v36.var0._rotation._imaginary._e[2];
          v30 = objc_msgSend_position(moveableCamera);
          [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:*v30 delta:v30[1], v30[2], v28, v29, 0.0];
          v35[0] = v31;
          v35[1] = v32;
          v35[2] = v33;
          [moveableCamera setPosition:v35];
          self->_panLastScreenPoint.x = v7;
          self->_panLastScreenPoint.y = v6;
        }
      }
    }
  }

  else if (moveableCamera)
  {
    objc_msgSend_groundPointFromScreenPoint_(moveableCamera, v7, v6);
    var1_low = LOBYTE(v36.var1);
    if (LOBYTE(v36.var1))
    {
      v49 = *&v36.var0._rotation._imaginary._e[1];
      scalar = v36.var0._rotation._scalar;
    }

    objc_msgSend_groundPointFromScreenPoint_(moveableCamera, x, y);
    if (LOBYTE(v36.var1))
    {
      v47 = *&v36.var0._rotation._imaginary._e[1];
      v19 = v36.var0._rotation._scalar;
      goto LABEL_19;
    }
  }
}

- (void)endZoom:(CGPoint)zoom
{
  if (self->_zoomPreviousT.__engaged_)
  {
    self->_zoomPreviousT.__engaged_ = 0;
  }

  if (self->_rubberbandZoomStartFactor.__engaged_)
  {
    self->_rubberbandZoomStartFactor.__engaged_ = 0;
  }
}

- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor
{
  y = zoom.y;
  x = zoom.x;
  moveableCamera = [(VKMapGestureCameraController *)self moveableCamera];
  allowsZoomRubberbanding = [(VKGestureCameraBehavior *)self allowsZoomRubberbanding];
  val = 1.0 - 1.0 / factor;
  if (allowsZoomRubberbanding && self->_zoomPreviousT.__engaged_)
  {
    val = self->_zoomPreviousT.var0.__val_;
  }

  if (moveableCamera)
  {
    objc_msgSend_groundPointFromScreenPoint_(moveableCamera, x, y);
    if (v42)
    {
      v13 = objc_msgSend_position(moveableCamera);
      v14 = 0;
      v15 = val;
      v16 = v15;
      v17 = (v13[1].f64[0] - v41 * v16) / (1.0 - v16);
      v18 = 1.0 - 1.0 / newFactor;
      v38 = vdivq_f64(vmlsq_lane_f64(*v13, v40, v16, 0), vdupq_lane_s64(COERCE__INT64(1.0 - v16), 0));
      v43 = v38;
      v44 = v17;
      do
      {
        v43.f64[v14] = v43.f64[v14] + (v40.f64[v14] - v43.f64[v14]) * v18;
        ++v14;
      }

      while (v14 != 3);
      v20 = v43.f64[1];
      v19 = v43.f64[0];
      v21 = v44;
      if (allowsZoomRubberbanding && (([moveableCamera minHeight], v21 < v22) || (objc_msgSend(moveableCamera, "maxHeight"), v21 > v23)))
      {
        p_rubberbandZoomStartFactor = &self->_rubberbandZoomStartFactor;
        if (self->_rubberbandZoomStartFactor.__engaged_)
        {
          objc_msgSend_position(moveableCamera);
          if (!self->_rubberbandZoomStartFactor.__engaged_ || (v25 = p_rubberbandZoomStartFactor->var0.__val_, GEOConfigGetDouble(), v27 = rubberBandOffsetForOffset(v18, 1.0 - 1.0 / v25, 1.0 - 1.0 / v25, v26), (v42 & 1) == 0))
          {
            v37 = std::__throw_bad_optional_access[abi:nn200100]();

            _Unwind_Resume(v37);
          }

          v18 = v27;
          v28 = 0;
          v43 = v38;
          v44 = v17;
          do
          {
            v43.f64[v28] = v43.f64[v28] + (v40.f64[v28] - v43.f64[v28]) * v27;
            ++v28;
          }

          while (v28 != 3);
          v20 = v43.f64[1];
          v19 = v43.f64[0];
          v29 = v44;
          goto LABEL_22;
        }

        p_rubberbandZoomStartFactor->var0.__val_ = newFactor;
        self->_rubberbandZoomStartFactor.__engaged_ = 1;
        [moveableCamera minHeight];
        v31 = v33;
        [moveableCamera maxHeight];
      }

      else
      {
        if (self->_rubberbandZoomStartFactor.__engaged_)
        {
          self->_rubberbandZoomStartFactor.__engaged_ = 0;
        }

        [moveableCamera minHeight];
        v31 = v30;
        [moveableCamera maxHeight];
      }

      v29 = fmin(fmax(v21, v31), v32);
LABEL_22:
      self->_zoomPreviousT.var0.__val_ = v18;
      self->_zoomPreviousT.__engaged_ = 1;
      if (v29 != *(objc_msgSend_position(moveableCamera, *&v38) + 16))
      {
        [(VKMapGestureCameraController *)self positionClampedToCameraRestriction:v19, v20, v29];
        v39[0] = v34;
        v39[1] = v35;
        v39[2] = v36;
        [moveableCamera setPosition:v39];
      }
    }
  }
}

- (VKMapGestureCameraController)initWithCameraController:(id)controller
{
  v4.receiver = self;
  v4.super_class = VKMapGestureCameraController;
  return [(VKGestureCameraBehavior *)&v4 initWithCameraController:controller];
}

- (VKMovableCamera)moveableCamera
{
  moveableCamera = self->_moveableCamera;
  if (moveableCamera)
  {
    v3 = moveableCamera;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
    v3 = objc_msgSend_vkCamera(WeakRetained);
  }

  return v3;
}

@end