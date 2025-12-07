@interface MakeBlurMapArgs
- (BOOL)validateForCoreImage;
- (BOOL)validateForMetal;
- (CGRect)focusWindow;
- (MakeBlurMapArgs)init;
- (MakeBlurMapArgs)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation MakeBlurMapArgs

- (MakeBlurMapArgs)init
{
  v8.receiver = self;
  v8.super_class = MakeBlurMapArgs;
  v2 = [(MakeBlurMapArgs *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_inputScale = 1.0;
    v4 = *(MEMORY[0x29EDB90D8] + 16);
    v2->_focusWindow.origin = *MEMORY[0x29EDB90D8];
    v2->_focusWindow.size = v4;
    v5 = objc_alloc_init(MakeBlurMapIntermediates);
    intermediates = v3->_intermediates;
    v3->_intermediates = v5;

    v3->_focalLengthInPixels = 0.0;
    v3->_normalizedFocalLength = 0.0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p\n", v4, self);
  v8 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v7, @"simulatedAperture", @"focalLengthInPixels", @"maxBlur", @"inputScale", @"focusWindow", 0);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = objc_opt_class();
  v12 = objc_msgSend_validKeys(v9, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v40, v39, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v40 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        v21 = objc_msgSend_methodForSelector_(self, v20, v19);
        if (v21)
        {
          v23 = v21;
          if (objc_opt_respondsToSelector())
          {
            if (objc_msgSend_containsObject_(v8, v22, v18))
            {
              if (objc_msgSend_isEqualToString_(v18, v24, @"focusWindow"))
              {
                v25 = v23(self, v19);
                objc_msgSend_appendFormat_(v6, v26, @"\t%@: { x=%g,y=%g width=%g, height=%g },\n", v18, *&v25, v27, v28, v29);
              }

              else
              {
                v35 = v23(self, v19);
                objc_msgSend_appendFormat_(v6, v32, @"\t%@: %g,\n", v18, *&v35, v36, v37, v38);
              }
            }

            else
            {
              v30 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v31, @"\t%@: %@,\n", v18, v30);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v40, v39, 16);
    }

    while (v15);
  }

  objc_msgSend_appendFormat_(v6, v33, @">\n");

  return v6;
}

- (MakeBlurMapArgs)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v79.receiver = self;
  v79.super_class = MakeBlurMapArgs;
  v5 = [(MakeBlurMapArgs *)&v79 init];
  v6 = v5;
  if (v5)
  {
    v5->_inputScale = 1.0;
    v7 = *(MEMORY[0x29EDB90D8] + 16);
    v5->_focusWindow.origin = *MEMORY[0x29EDB90D8];
    v5->_focusWindow.size = v7;
    v8 = objc_alloc_init(MakeBlurMapIntermediates);
    intermediates = v6->_intermediates;
    v6->_intermediates = v8;

    if (dictionaryCopy)
    {
      v64 = v6;
      v10 = objc_opt_class();
      v13 = objc_msgSend_validKeys(v10, v11, v12);
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      obj = objc_msgSend_allKeys(dictionaryCopy, v14, v15);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v75, v74, 16);
      if (!v17)
      {
        goto LABEL_41;
      }

      v19 = v17;
      v20 = *v76;
      v65 = *v76;
      while (1)
      {
        v21 = 0;
        v66 = v19;
        do
        {
          if (*v76 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v75 + 1) + 8 * v21);
          v23 = objc_msgSend_containsObject_(v13, v18, v22);
          if (v23)
          {
            v25 = v13;
            v26 = objc_msgSend_substringToIndex_(v22, v24, 1);
            v29 = objc_msgSend_capitalizedString(v26, v27, v28);
            v31 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v22, v30, 0, 1, v29);

            v33 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v32, @"set%@:", v31);
            v34 = NSSelectorFromString(v33);
            v35 = dictionaryCopy;
            v37 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v36, v22);
            if (v37)
            {
              v38 = v34 == 0;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              goto LABEL_36;
            }

            v39 = objc_opt_respondsToSelector();
            if (v39)
            {
              v41 = objc_msgSend_methodForSelector_(v64, v40, v34);
              if (v41)
              {
                v42 = v41;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = v37;
                  v46 = objc_msgSend_count(v43, v44, v45);
                  if (v46 == 4)
                  {
                    objc_msgSend_CGRectValue(v43, v47, v48);
                    v42(v64, v34);
                  }

                  else
                  {
                    if (v46 == 2)
                    {
                      objc_msgSend_CGPointValue(v43, v47, v48);
                      v42(v64, v34);
                      goto LABEL_35;
                    }

                    v52 = uni_logger_api(v46);
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      v59 = objc_opt_class();
                      *buf = 136446722;
                      v69 = "[MakeBlurMapArgs initWithDictionary:]";
                      v70 = 2112;
                      v71 = v22;
                      v72 = 2112;
                      v73 = v59;
                      v60 = v59;
                      _os_log_error_impl(&dword_295691000, v52, OS_LOG_TYPE_ERROR, "%{public}s Unexpected # of components for %@ on class %@", buf, 0x20u);
                    }

LABEL_33:
                  }

LABEL_35:

LABEL_36:
                  dictionaryCopy = v35;
                  v13 = v25;
                  v20 = v65;
                  v19 = v66;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_floatValue(v37, v56, v57);
                  v42(v64, v34);
                  goto LABEL_36;
                }

                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  (v42)(v64, v34, v37);
                  goto LABEL_36;
                }

                v43 = uni_logger_api(isKindOfClass);
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v61 = objc_opt_class();
                *buf = 136446722;
                v69 = "[MakeBlurMapArgs initWithDictionary:]";
                v70 = 2112;
                v71 = v22;
                v72 = 2112;
                v73 = v61;
                v52 = v61;
                v53 = v43;
                v54 = "%{public}s Unexpected type (not NSObject) for %@ on class %@";
              }

              else
              {
                v43 = uni_logger_api(0);
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v55 = objc_opt_class();
                *buf = 136446722;
                v69 = "[MakeBlurMapArgs initWithDictionary:]";
                v70 = 2112;
                v71 = v33;
                v72 = 2112;
                v73 = v55;
                v52 = v55;
                v53 = v43;
                v54 = "%{public}s can't find implementation for %@ in %@ class; results will be unpredictable";
              }
            }

            else
            {
              v43 = uni_logger_api(v39);
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_35;
              }

              v51 = objc_opt_class();
              *buf = 136446722;
              v69 = "[MakeBlurMapArgs initWithDictionary:]";
              v70 = 2112;
              v71 = v51;
              v72 = 2112;
              v73 = v33;
              v52 = v51;
              v53 = v43;
              v54 = "%{public}s Class %@ does not respond to selector %@; results will be unpredictable";
            }

            _os_log_error_impl(&dword_295691000, v53, OS_LOG_TYPE_ERROR, v54, buf, 0x20u);
            goto LABEL_33;
          }

          v31 = uni_logger_api(v23);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v49 = objc_opt_class();
            *buf = 136446722;
            v69 = "[MakeBlurMapArgs initWithDictionary:]";
            v70 = 2112;
            v71 = v49;
            v72 = 2112;
            v73 = v22;
            v50 = v49;
            _os_log_error_impl(&dword_295691000, v31, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
          }

LABEL_37:

          ++v21;
        }

        while (v19 != v21);
        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v75, v74, 16);
        v19 = v62;
        if (!v62)
        {
LABEL_41:

          v6 = v64;
          break;
        }
      }
    }
  }

  return v6;
}

- (CGRect)focusWindow
{
  x = self->_focusWindow.origin.x;
  y = self->_focusWindow.origin.y;
  width = self->_focusWindow.size.width;
  height = self->_focusWindow.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)validateForMetal
{
  v3 = objc_opt_class();
  if ((sub_2956A8A48(v3) & 1) == 0 || self->_simulatedAperture <= 0.0 || self->_normalizedFocalLength <= 0.0 || ((maxBlur = self->_maxBlur, maxBlur > 0.0) ? (v5 = maxBlur > 1.0) : (v5 = 1), v5 || self->_inputScale <= 0.0 || CGRectIsEmpty(self->_focusWindow) || self->_inputImage))
  {
LABEL_24:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = objc_msgSend_conformsToProtocol_(self->_inputImageLuma, v6, &unk_2A1CA0A70);
  if (v7)
  {
    v7 = objc_msgSend_conformsToProtocol_(self->_inputImageChroma, v8, &unk_2A1CA0A70);
    if (v7)
    {
      v7 = objc_msgSend_conformsToProtocol_(self->_inputShiftMap, v9, &unk_2A1CA0A70);
      if (v7)
      {
        inputSegmentation = self->_inputSegmentation;
        if (!inputSegmentation || (v7 = objc_msgSend_conformsToProtocol_(inputSegmentation, v10, &unk_2A1CA0A70)) != 0)
        {
          inputHair = self->_inputHair;
          if (!inputHair || (v7 = objc_msgSend_conformsToProtocol_(inputHair, v10, &unk_2A1CA0A70)) != 0)
          {
            inputGlasses = self->_inputGlasses;
            if (!inputGlasses || (v7 = objc_msgSend_conformsToProtocol_(inputGlasses, v10, &unk_2A1CA0A70)) != 0)
            {
              v7 = objc_msgSend_conformsToProtocol_(self->_outputBlurMap, v10, &unk_2A1CA0A70);
              if (v7)
              {
                if (objc_msgSend_validateForMetal(self->_intermediates, v14, v15))
                {
                  LOBYTE(v7) = 1;
                  return v7;
                }

                goto LABEL_24;
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (BOOL)validateForCoreImage
{
  v3 = objc_opt_class();
  if ((sub_2956A8A48(v3) & 1) == 0 || self->_simulatedAperture <= 0.0 || self->_focalLengthInPixels <= 0.0 && self->_normalizedFocalLength <= 0.0)
  {
    return 0;
  }

  maxBlur = self->_maxBlur;
  v5 = maxBlur <= 0.0 || maxBlur > 1.0;
  if (v5 || self->_inputScale <= 0.0 || CGRectIsEmpty(self->_focusWindow))
  {
    return 0;
  }

  if (self->_inputImage)
  {
    v6 = objc_opt_class();
    if ((sub_2956A8A48(v6) & 1) == 0 || self->_inputImageLuma || self->_inputImageChroma)
    {
      return 0;
    }
  }

  else
  {
    v7 = objc_opt_class();
    if ((sub_2956A8A48(v7) & 1) == 0)
    {
      return 0;
    }

    v8 = objc_opt_class();
    if ((sub_2956A8A48(v8) & 1) == 0)
    {
      return 0;
    }
  }

  v9 = objc_opt_class();
  if (sub_2956A8A48(v9))
  {
    if (!self->_inputSegmentation || (v10 = objc_opt_class(), (sub_2956A8A48(v10) & 1) != 0))
    {
      if (!self->_inputHair || (v11 = objc_opt_class(), (sub_2956A8A48(v11) & 1) != 0))
      {
        if (!self->_inputGlasses || (v12 = objc_opt_class(), (sub_2956A8A48(v12) & 1) != 0))
        {
          if (!self->_inputGainMap || (v13 = objc_opt_class(), (sub_2956A8A48(v13) & 1) != 0))
          {
            if (!self->_outputBlurMap)
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

@end