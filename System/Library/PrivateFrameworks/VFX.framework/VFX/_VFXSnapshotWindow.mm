@interface _VFXSnapshotWindow
- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds;
- (CGPoint)warpPoint:(CGPoint)point;
- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window;
- (id)vfxView;
- (void)dealloc;
@end

@implementation _VFXSnapshotWindow

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _VFXSnapshotWindow;
  [(_VFXSnapshotWindow *)&v2 dealloc];
}

- (id)_hitTest:(CGPoint)test withEvent:(id)event windowServerHitTestWindow:(id)window
{
  y = test.y;
  x = test.x;
  if (objc_msgSend_vfxView(self, a2, event, window))
  {
    v11 = objc_msgSend_layer(self, v9, v10);
    objc_msgSend_convertPoint_toLayer_(v11, v12, 0, x, y);
    v29 = 0;
    objc_msgSend__warpPoint_outOfBounds_(self, v13, &v29);
    result = 0;
    if ((v29 & 1) == 0)
    {
      v28.receiver = self;
      v28.super_class = _VFXSnapshotWindow;
      for (i = [(_VFXSnapshotWindow *)&v28 hitTest:event withEvent:?]; i; i = objc_msgSend_superview(i, v25, v26))
      {
        v18 = objc_msgSend_gestureRecognizers(i, v15, v16);
        if (objc_msgSend_count(v18, v19, v20))
        {
          break;
        }

        if (objc_msgSend_isMultipleTouchEnabled(i, v21, v22))
        {
          break;
        }

        if (objc_msgSend_canBecomeFirstResponder(i, v23, v24))
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }
      }

      if (i == self)
      {
        return 0;
      }

      else
      {
        return i;
      }
    }
  }

  else
  {
    v27.receiver = self;
    v27.super_class = _VFXSnapshotWindow;
    return [(_VFXSnapshotWindow *)&v27 hitTest:event withEvent:x, y];
  }

  return result;
}

- (CGPoint)_warpPoint:(CGPoint)point outOfBounds:(BOOL *)bounds
{
  y = point.y;
  x = point.x;
  v8 = objc_msgSend_vfxView(self, a2, bounds);
  if (v8)
  {
    v10 = v8;
    objc_msgSend_convertPoint_fromView_(v8, v9, 0, x, y);
    v12 = objc_msgSend_hitTest_options_(v10, v11, 0);
    if (objc_msgSend_count(v12, v13, v14) && ((v16 = objc_msgSend_objectAtIndexedSubscript_(v12, v15, 0), v19 = objc_msgSend_node(v16, v17, v18), v22 = objc_msgSend_model(v19, v20, v21), v25 = objc_msgSend_materials(v22, v23, v24), !objc_msgSend_count(v25, v26, v27)) ? (v41 = 0) : (v30 = objc_msgSend_materials(v22, v28, v29), v33 = objc_msgSend_meshElementIndex(v16, v31, v32), v36 = objc_msgSend_materials(v22, v34, v35), v39 = objc_msgSend_count(v36, v37, v38), v41 = objc_msgSend_objectAtIndexedSubscript_(v30, v40, v33 % v39)), (v42 = objc_msgSend_subviews(self, v28, v29), objc_msgSend_count(v42, v43, v44)) && (v47 = objc_msgSend_diffuse(v41, v45, v46), v50 = objc_msgSend_contents(v47, v48, v49), v53 = objc_msgSend_subviews(self, v51, v52), v50 == objc_msgSend_objectAtIndexedSubscript_(v53, v54, 0))))
    {
      objc_msgSend_textureCoordinatesWithMappingChannel_(v16, v55, 0);
      v57 = v56;
      v59 = v58;
      v62 = objc_msgSend_diffuse(v41, v60, v61);
      objc_msgSend_contentsTransform(v62, v63, v64);
      v80 = v65;
      v81 = v66;
      v82 = v68;
      v83 = v67;
      if (!VFXMatrix4IsIdentity(v65, v66, v67, v68))
      {
        v71 = v57;
        v72 = v59;
        v73 = vaddq_f32(v82, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v80, v71), v81, v72), 0, v83)).u64[0];
        v57 = *&v73;
        v59 = *(&v73 + 1);
      }

      objc_msgSend_bounds(self, v69, v70, *&v80, *&v81, *&v82, *&v83);
      x = v57 * v74;
      objc_msgSend_bounds(self, v75, v76);
      y = v59 * v77;
    }

    else if (bounds)
    {
      *bounds = 1;
    }
  }

  v78 = x;
  v79 = y;
  result.y = v79;
  result.x = v78;
  return result;
}

- (CGPoint)warpPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7 = objc_msgSend_layer(self, a2, v3);
  objc_msgSend_convertPoint_toLayer_(v7, v8, 0, x, y);

  objc_msgSend__warpPoint_outOfBounds_(self, v9, 0);
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)vfxView
{
  WeakRetained = objc_loadWeakRetained(&qword_1EB644860);

  return WeakRetained;
}

@end