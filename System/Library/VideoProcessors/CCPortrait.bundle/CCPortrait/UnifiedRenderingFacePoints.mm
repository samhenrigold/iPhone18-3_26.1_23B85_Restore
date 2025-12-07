@interface UnifiedRenderingFacePoints
- (CGPoint)centerPos;
- (CGPoint)chinCenterPos;
- (CGPoint)leftEyeCenterPos;
- (CGPoint)rightEyeCenterPos;
- (UnifiedRenderingFacePoints)init;
- (UnifiedRenderingFacePoints)initWithCenterPos:(CGPoint)pos leftEyeCenterPos:(CGPoint)centerPos rightEyeCenterPos:(CGPoint)eyeCenterPos chinCenterPos:(CGPoint)chinCenterPos;
- (UnifiedRenderingFacePoints)initWithDictionary:(id)dictionary;
- (id)debugDescription;
@end

@implementation UnifiedRenderingFacePoints

- (UnifiedRenderingFacePoints)init
{
  v4.receiver = self;
  v4.super_class = UnifiedRenderingFacePoints;
  result = [(UnifiedRenderingFacePoints *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x29EDB90B8];
    result->_centerPos = *MEMORY[0x29EDB90B8];
    result->_leftEyeCenterPos = v3;
    result->_rightEyeCenterPos = v3;
    result->_chinCenterPos = v3;
  }

  return result;
}

- (UnifiedRenderingFacePoints)initWithCenterPos:(CGPoint)pos leftEyeCenterPos:(CGPoint)centerPos rightEyeCenterPos:(CGPoint)eyeCenterPos chinCenterPos:(CGPoint)chinCenterPos
{
  y = chinCenterPos.y;
  x = chinCenterPos.x;
  v8 = eyeCenterPos.y;
  v9 = eyeCenterPos.x;
  v10 = centerPos.y;
  v11 = centerPos.x;
  v12 = pos.y;
  v13 = pos.x;
  v15.receiver = self;
  v15.super_class = UnifiedRenderingFacePoints;
  result = [(UnifiedRenderingFacePoints *)&v15 init];
  if (result)
  {
    result->_centerPos.x = v13;
    result->_centerPos.y = v12;
    result->_leftEyeCenterPos.x = v11;
    result->_leftEyeCenterPos.y = v10;
    result->_rightEyeCenterPos.x = v9;
    result->_rightEyeCenterPos.y = v8;
    result->_chinCenterPos.x = x;
    result->_chinCenterPos.y = y;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  v7 = objc_msgSend_description(v4, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"<%@: %p center:%.4f,%.4f leftEye:%.4f,%.4f rightEye:%.4f,%.4f chin:%.4f,%.4f>", v7, self, *&self->_centerPos.x, *&self->_centerPos.y, *&self->_leftEyeCenterPos.x, *&self->_leftEyeCenterPos.y, *&self->_rightEyeCenterPos.x, *&self->_rightEyeCenterPos.y, *&self->_chinCenterPos.x, *&self->_chinCenterPos.y);

  return v9;
}

- (UnifiedRenderingFacePoints)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v65.receiver = self;
  v65.super_class = UnifiedRenderingFacePoints;
  v5 = [(UnifiedRenderingFacePoints *)&v65 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_validKeys(v6, v7, v8);
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v12 = objc_msgSend_allKeys(dictionaryCopy, v10, v11);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v61, v60, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v62;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v62 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v61 + 1) + 8 * i);
          v20 = objc_msgSend_containsObject_(v9, v15, v19);
          if ((v20 & 1) == 0)
          {
            v21 = uni_logger_api(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = objc_opt_class();
              *buf = 136446722;
              v55 = "[UnifiedRenderingFacePoints initWithDictionary:]";
              v56 = 2112;
              v57 = v22;
              v58 = 2112;
              v59 = v19;
              v23 = v22;
              _os_log_error_impl(&dword_295691000, v21, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
            }
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v61, v60, 16);
      }

      while (v16);
    }

    v25 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v24, @"centerPos");

    if (v25)
    {
      v27 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"centerPos");
      objc_msgSend_CGPointValue(v27, v28, v29);
      v5->_centerPos.x = v30;
      v5->_centerPos.y = v31;
    }

    v32 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v26, @"leftEyeCenterPos");

    if (v32)
    {
      v34 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"leftEyeCenterPos");
      objc_msgSend_CGPointValue(v34, v35, v36);
      v5->_leftEyeCenterPos.x = v37;
      v5->_leftEyeCenterPos.y = v38;
    }

    v39 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v33, @"rightEyeCenterPos");

    if (v39)
    {
      v41 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v40, @"rightEyeCenterPos");
      objc_msgSend_CGPointValue(v41, v42, v43);
      v5->_rightEyeCenterPos.x = v44;
      v5->_rightEyeCenterPos.y = v45;
    }

    v46 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v40, @"chinCenterPos");

    if (v46)
    {
      v48 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v47, @"chinCenterPos");
      objc_msgSend_CGPointValue(v48, v49, v50);
      v5->_chinCenterPos.x = v51;
      v5->_chinCenterPos.y = v52;
    }
  }

  return v5;
}

- (CGPoint)centerPos
{
  x = self->_centerPos.x;
  y = self->_centerPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)leftEyeCenterPos
{
  x = self->_leftEyeCenterPos.x;
  y = self->_leftEyeCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)rightEyeCenterPos
{
  x = self->_rightEyeCenterPos.x;
  y = self->_rightEyeCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)chinCenterPos
{
  x = self->_chinCenterPos.x;
  y = self->_chinCenterPos.y;
  result.y = y;
  result.x = x;
  return result;
}

@end