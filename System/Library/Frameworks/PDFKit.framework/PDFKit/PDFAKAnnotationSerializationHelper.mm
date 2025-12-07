@interface PDFAKAnnotationSerializationHelper
+ (BOOL)_annotationClassHasSeniority:(id)seniority;
+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFDictionary:(CGPDFDictionary *)dictionary;
+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation andDictionary:(CGPDFDictionary *)dictionary;
+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary;
@end

@implementation PDFAKAnnotationSerializationHelper

+ (void)addAKAnnotation:(id)annotation toAnnotationDictionary:(__CFDictionary *)dictionary
{
  annotationCopy = annotation;
  v6 = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  dataRepresentation = [annotationCopy dataRepresentation];
  v10 = dataRepresentation;
  if (dataRepresentation)
  {
    v11 = [dataRepresentation base64EncodedStringWithOptions:0];
    if ([self _annotationClassHasSeniority:annotationCopy])
    {
      v12 = @"/AAPL:AKAnnotationObject";
    }

    else
    {
      v12 = @"/AAPL:AKAnnotationV2";
    }

    CFDictionarySetValue(Mutable, v12, v11);
    MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, dictionary);
    if (MutableCopy)
    {
      v14 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"/AAPL:PaperKit");
      CFDictionarySetValue(Mutable, @"/AAPL:AKPDFAnnotationDictionary", v14);
      CFRelease(v14);
    }

    CFDictionarySetValue(dictionary, @"/AAPL:AKExtras", Mutable);
    CFRelease(Mutable);
  }

  objc_autoreleasePoolPop(v6);
}

+ (id)akAnnotationFromCGPDFAnnotation:(CGPDFAnnotation *)annotation andDictionary:(CGPDFDictionary *)dictionary
{
  v4 = 0;
  if (annotation && dictionary)
  {
    IsVersioned = CGPDFAnnotationIsVersioned();
    v8 = objc_autoreleasePoolPush();
    if (!IsVersioned || CGPDFAnnotationIsPristine())
    {
      value = 0;
      if (CGPDFDictionaryGetDictionary(dictionary, "AAPL:AKExtras", &value) && ((string = 0, CGPDFDictionaryGetString(value, "AAPL:AKAnnotationObject", &string)) || CGPDFDictionaryGetString(value, "AAPL:AKAnnotationV2", &string)) && (v9 = CGPDFStringCopyTextString(string)) != 0)
      {
        v10 = v9;
        v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];

        v13 = [AKAnnotationClass(v12) annotationWithData:v11];

        objc_autoreleasePoolPop(v8);
        if (!((v13 == 0) | IsVersioned & 1) && ([self _shouldUseAKAnnotation:v13 toRepresentCGPDFDictionary:dictionary] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        objc_autoreleasePoolPop(v8);
        v13 = 0;
      }

      v13 = v13;
      v4 = v13;
LABEL_16:

      goto LABEL_17;
    }

    objc_autoreleasePoolPop(v8);
    v13 = 0;
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

LABEL_17:

  return v4;
}

+ (BOOL)_annotationClassHasSeniority:(id)seniority
{
  seniorityCopy = seniority;
  v4 = [seniorityCopy isMemberOfClass:AKInkAnnotationClass(seniorityCopy)];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [seniorityCopy isMemberOfClass:AKDoodleAnnotationClass(v4)];
    if (v6 & 1) != 0 || (v7 = [seniorityCopy isMemberOfClass:AKArrowAnnotationClass(v6)], (v7) || (v8 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKRectAnnotationClass(v7)), (v8) || (v9 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKOvalAnnotationClass(v8)), (v9) || (v10 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKTextBoxAnnotationClass(v9)), (v10) || (v11 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKTextFieldAnnotationClass(v10)), (v11) || (v12 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKArrowShapeAnnotationClass(v11)), (v12) || (v13 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKBorderMaskAnnotationClass(v12)), (v13) || (v14 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKCropAnnotationClass(v13)), (v14) || (v15 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKHeartAnnotationClass(v14)), (v15) || (v16 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKImageAnnotationClass(v15)), (v16) || (v17 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKLoupeAnnotationClass(v16)), (v17) || (v18 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKPolygonAnnotationClass(v17)), (v18) || (v19 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKSignatureAnnotationClass(v18)), (v19) || (v20 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKSpeechBubbleAnnotationClass(v19)), (v20) || (v21 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKStarAnnotationClass(v20)), (v21) || (v22 = objc_msgSend(seniorityCopy, "isMemberOfClass:", AKThoughtBubbleAnnotationClass(v21)), (v22))
    {
      v5 = 1;
    }

    else
    {
      v5 = [seniorityCopy isMemberOfClass:AKTriangleAnnotationClass(v22)];
    }
  }

  return v5;
}

+ (BOOL)_shouldUseAKAnnotation:(id)annotation toRepresentCGPDFDictionary:(CGPDFDictionary *)dictionary
{
  annotationCopy = annotation;
  if (!dictionary)
  {
    goto LABEL_12;
  }

  value = 0;
  if (!CGPDFDictionaryGetDictionary(dictionary, "AAPL:AKExtras", &value))
  {
LABEL_9:
    v11 = 0;
    goto LABEL_13;
  }

  v31 = 0;
  Dictionary = CGPDFDictionaryGetDictionary(value, "AAPL:AKPDFAnnotationDictionary", &v31);
  if (!Dictionary)
  {
    AKBorderMaskAnnotationClass(Dictionary);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = *(MEMORY[0x1E695F058] + 16);
      v29 = *MEMORY[0x1E695F058];
      v30 = v12;
      if (CGPDFDictionaryGetRect())
      {
        [annotationCopy drawingBounds];
        v27 = v13;
        [annotationCopy drawingBounds];
        v26 = v14;
        [annotationCopy drawingBounds];
        v25 = v15;
        drawingBounds = [annotationCopy drawingBounds];
        v17.f64[0] = v27;
        v17.f64[1] = v26;
        v18.f64[1] = v25;
        v19 = vabdq_f64(v30, v18);
        v20 = vdupq_n_s64(0x3F747AE147AE147BuLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(v20, vabdq_f64(v29, v17)), vcgeq_f64(v20, v19))))))
        {
          goto LABEL_9;
        }

        AKArrowShapeAnnotationClass(drawingBounds);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          AKArrowAnnotationClass(isKindOfClass);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ((objc_opt_respondsToSelector() & 1) == 0 || ([annotationCopy annotationText], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "string"), v7 = objc_claimAutoreleasedReturnValue(), v23, !v7))
            {
              v7 = &stru_1F416DF70;
            }

            string = 0;
            v8 = &stru_1F416DF70;
            if (CGPDFDictionaryGetString(dictionary, "Contents", &string))
            {
              v24 = CGPDFStringCopyTextString(string);
              if (v24)
              {
                v8 = v24;
              }
            }

            v11 = [(__CFString *)v7 isEqualToString:v8];
            goto LABEL_5;
          }
        }
      }
    }

LABEL_12:
    v11 = 1;
    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
  v8 = _dictionaryForPDFDictionary(v31, v7);
  v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
  v10 = _dictionaryForPDFDictionary(dictionary, v9);
  [(__CFString *)v8 removeObjectForKey:@"AAPL:AKExtras"];
  [v10 removeObjectForKey:@"AAPL:AKExtras"];
  [v10 removeObjectForKey:@"AP"];
  [(__CFString *)v8 removeObjectForKey:@"AP"];
  [v10 removeObjectForKey:@"Parent"];
  [(__CFString *)v8 removeObjectForKey:@"Popup"];
  v11 = [v10 isEqualToDictionary:v8];

LABEL_5:
LABEL_13:

  return v11;
}

@end