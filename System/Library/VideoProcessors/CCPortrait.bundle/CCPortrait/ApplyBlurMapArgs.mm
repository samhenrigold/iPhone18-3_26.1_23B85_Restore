@interface ApplyBlurMapArgs
- (ApplyBlurMapArgs)init;
- (ApplyBlurMapArgs)initWithDictionary:(id)dictionary;
- (BOOL)validateForCoreImage;
- (BOOL)validateForMetal;
- (id)description;
@end

@implementation ApplyBlurMapArgs

- (ApplyBlurMapArgs)init
{
  v7.receiver = self;
  v7.super_class = ApplyBlurMapArgs;
  v2 = [(ApplyBlurMapArgs *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_inputScale = 1.0;
    v4 = objc_alloc_init(ApplyBlurMapIntermediates);
    intermediates = v3->_intermediates;
    v3->_intermediates = v4;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA050];
  v4 = objc_opt_class();
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p\n", v4, self);
  v8 = objc_msgSend_setWithObjects_(MEMORY[0x29EDB8E50], v7, @"simulatedAperture", @"maxBlur", @"inputScale", @"lumaNoiseAmplitude", 0);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = objc_opt_class();
  v12 = objc_msgSend_validKeys(v9, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v30, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = NSSelectorFromString(v18);
        v21 = objc_msgSend_methodForSelector_(self, v20, v19);
        if (v21)
        {
          v23 = v21;
          if (objc_opt_respondsToSelector())
          {
            if (objc_msgSend_containsObject_(v8, v22, v18))
            {
              v24 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v25, @"\t%@: %g,\n", v18, v24);
            }

            else
            {
              v26 = v23(self, v19);
              objc_msgSend_appendFormat_(v6, v27, @"\t%@: %@,\n", v18, v26);
            }
          }
        }
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v22, &v31, v30, 16);
    }

    while (v15);
  }

  objc_msgSend_appendFormat_(v6, v28, @">\n");

  return v6;
}

- (ApplyBlurMapArgs)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v78.receiver = self;
  v78.super_class = ApplyBlurMapArgs;
  v5 = [(ApplyBlurMapArgs *)&v78 init];
  v6 = v5;
  if (v5)
  {
    v5->_inputScale = 1.0;
    v7 = objc_alloc_init(ApplyBlurMapIntermediates);
    intermediates = v6->_intermediates;
    v6->_intermediates = v7;

    if (dictionaryCopy)
    {
      v63 = v6;
      v9 = objc_opt_class();
      v12 = objc_msgSend_validKeys(v9, v10, v11);
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = objc_msgSend_allKeys(dictionaryCopy, v13, v14);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v74, v73, 16);
      if (!v16)
      {
        goto LABEL_41;
      }

      v18 = v16;
      v19 = *v75;
      v64 = *v75;
      while (1)
      {
        v20 = 0;
        v65 = v18;
        do
        {
          if (*v75 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v74 + 1) + 8 * v20);
          v22 = objc_msgSend_containsObject_(v12, v17, v21);
          if (v22)
          {
            v24 = v12;
            v25 = objc_msgSend_substringToIndex_(v21, v23, 1);
            v28 = objc_msgSend_capitalizedString(v25, v26, v27);
            v30 = objc_msgSend_stringByReplacingCharactersInRange_withString_(v21, v29, 0, 1, v28);

            v32 = objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v31, @"set%@:", v30);
            v33 = NSSelectorFromString(v32);
            v34 = dictionaryCopy;
            v36 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v35, v21);
            if (v36)
            {
              v37 = v33 == 0;
            }

            else
            {
              v37 = 1;
            }

            if (v37)
            {
              goto LABEL_36;
            }

            v38 = objc_opt_respondsToSelector();
            if (v38)
            {
              v40 = objc_msgSend_methodForSelector_(v63, v39, v33);
              if (v40)
              {
                v41 = v40;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = v36;
                  v45 = objc_msgSend_count(v42, v43, v44);
                  if (v45 == 4)
                  {
                    objc_msgSend_CGRectValue(v42, v46, v47);
                    v41(v63, v33);
                  }

                  else
                  {
                    if (v45 == 2)
                    {
                      objc_msgSend_CGPointValue(v42, v46, v47);
                      v41(v63, v33);
                      goto LABEL_35;
                    }

                    v51 = uni_logger_api(v45);
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      v58 = objc_opt_class();
                      *buf = 136446722;
                      v68 = "[ApplyBlurMapArgs initWithDictionary:]";
                      v69 = 2112;
                      v70 = v21;
                      v71 = 2112;
                      v72 = v58;
                      v59 = v58;
                      _os_log_error_impl(&dword_295691000, v51, OS_LOG_TYPE_ERROR, "%{public}s Unexpected # of components for %@ on class %@", buf, 0x20u);
                    }

LABEL_33:
                  }

LABEL_35:

LABEL_36:
                  dictionaryCopy = v34;
                  v12 = v24;
                  v19 = v64;
                  v18 = v65;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  objc_msgSend_floatValue(v36, v55, v56);
                  v41(v63, v33);
                  goto LABEL_36;
                }

                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  (v41)(v63, v33, v36);
                  goto LABEL_36;
                }

                v42 = uni_logger_api(isKindOfClass);
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v60 = objc_opt_class();
                *buf = 136446722;
                v68 = "[ApplyBlurMapArgs initWithDictionary:]";
                v69 = 2112;
                v70 = v21;
                v71 = 2112;
                v72 = v60;
                v51 = v60;
                v52 = v42;
                v53 = "%{public}s Unexpected type (not NSObject) for %@ on class %@";
              }

              else
              {
                v42 = uni_logger_api(0);
                if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_35;
                }

                v54 = objc_opt_class();
                *buf = 136446722;
                v68 = "[ApplyBlurMapArgs initWithDictionary:]";
                v69 = 2112;
                v70 = v32;
                v71 = 2112;
                v72 = v54;
                v51 = v54;
                v52 = v42;
                v53 = "%{public}s can't find implementation for %@ in %@ class; results will be unpredictable";
              }
            }

            else
            {
              v42 = uni_logger_api(v38);
              if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_35;
              }

              v50 = objc_opt_class();
              *buf = 136446722;
              v68 = "[ApplyBlurMapArgs initWithDictionary:]";
              v69 = 2112;
              v70 = v50;
              v71 = 2112;
              v72 = v32;
              v51 = v50;
              v52 = v42;
              v53 = "%{public}s Class %@ does not respond to selector %@; results will be unpredictable";
            }

            _os_log_error_impl(&dword_295691000, v52, OS_LOG_TYPE_ERROR, v53, buf, 0x20u);
            goto LABEL_33;
          }

          v30 = uni_logger_api(v22);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v48 = objc_opt_class();
            *buf = 136446722;
            v68 = "[ApplyBlurMapArgs initWithDictionary:]";
            v69 = 2112;
            v70 = v48;
            v71 = 2112;
            v72 = v21;
            v49 = v48;
            _os_log_error_impl(&dword_295691000, v30, OS_LOG_TYPE_ERROR, "%{public}s Invalid key for %@: %@; results will be unpredictable", buf, 0x20u);
          }

LABEL_37:

          ++v20;
        }

        while (v18 != v20);
        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v74, v73, 16);
        v18 = v61;
        if (!v61)
        {
LABEL_41:

          v6 = v63;
          break;
        }
      }
    }
  }

  return v6;
}

- (BOOL)validateForMetal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self->_simulatedAperture <= 0.0)
    {
      sub_2956C84D8();
    }

    else
    {
      maxBlur = self->_maxBlur;
      if (maxBlur <= 0.0 || maxBlur > 1.0)
      {
        sub_2956C8478();
      }

      else if (self->_inputScale <= 0.0)
      {
        sub_2956C8418();
      }

      else if (self->_lumaNoiseAmplitude < 0.0)
      {
        sub_2956C83B8();
      }

      else if (objc_msgSend_conformsToProtocol_(self->_inputBlurMap, v3, &unk_2A1CA0A70))
      {
        inputAlpha = self->_inputAlpha;
        if (inputAlpha && (objc_msgSend_conformsToProtocol_(inputAlpha, v6, &unk_2A1CA0A70) & 1) == 0)
        {
          sub_2956C8118();
        }

        else if (self->_inputImage)
        {
          sub_2956C8178();
        }

        else if (objc_msgSend_conformsToProtocol_(self->_inputImageLuma, v6, &unk_2A1CA0A70))
        {
          if (objc_msgSend_conformsToProtocol_(self->_inputImageChroma, v8, &unk_2A1CA0A70))
          {
            if (objc_msgSend_conformsToProtocol_(self->_outputImageLuma, v9, &unk_2A1CA0A70))
            {
              if (objc_msgSend_conformsToProtocol_(self->_outputImageChroma, v10, &unk_2A1CA0A70))
              {
                if (objc_msgSend_validateForMetal(self->_intermediates, v11, v12))
                {
                  return 1;
                }

                sub_2956C8358();
              }

              else
              {
                sub_2956C82F8();
              }
            }

            else
            {
              sub_2956C8298();
            }
          }

          else
          {
            sub_2956C8238();
          }
        }

        else
        {
          sub_2956C81D8();
        }
      }

      else
      {
        sub_2956C80B8();
      }
    }
  }

  else
  {
    sub_2956C8058();
  }

  return 0;
}

- (BOOL)validateForCoreImage
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956C8538();
    return 0;
  }

  if (self->_simulatedAperture <= 0.0)
  {
    sub_2956C8A18();
    return 0;
  }

  maxBlur = self->_maxBlur;
  if (maxBlur <= 0.0 || maxBlur > 1.0)
  {
    sub_2956C89B8();
    return 0;
  }

  if (self->_inputScale <= 0.0)
  {
    sub_2956C8958();
    return 0;
  }

  if (self->_lumaNoiseAmplitude < 0.0)
  {
    sub_2956C88F8();
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956C8598();
    return 0;
  }

  if (self->_inputAlpha)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C85F8();
      return 0;
    }
  }

  if (self->_inputImage)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C8658();
      return 0;
    }

    if (self->_inputImageLuma)
    {
      sub_2956C86B8();
      return 0;
    }

    if (self->_inputImageChroma)
    {
      sub_2956C8718();
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C8778();
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_2956C87D8();
      return 0;
    }
  }

  if (self->_outputImageLuma)
  {
    sub_2956C8838();
  }

  else
  {
    if (!self->_outputImageChroma)
    {
      return 1;
    }

    sub_2956C8898();
  }

  return 0;
}

@end