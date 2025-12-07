@interface AVMetadataTrackedFacesObject
+ (id)trackedFacesWithTime:(id *)time faceTrackingDictionary:(id)dictionary input:(id)input;
- (AVMetadataTrackedFacesObject)initWithTime:(id *)time faceTrackingDictionary:(id)dictionary input:(id)input;
- (NSDictionary)payload;
- (id)description;
- (void)dealloc;
@end

@implementation AVMetadataTrackedFacesObject

- (AVMetadataTrackedFacesObject)initWithTime:(id *)time faceTrackingDictionary:(id)dictionary input:(id)input
{
  v13 = *MEMORY[0x1E6960C70];
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v16.receiver = self;
  v16.super_class = AVMetadataTrackedFacesObject;
  v15 = *time;
  v10 = [(AVMetadataObject *)&v16 initWithType:@"trackedFaces" time:&v15 duration:&v13 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:v6, v7, v8, v9];
  if (v10)
  {
    v11 = objc_alloc_init(AVMetadataTrackedFacesObjectInternal);
    v10->_trackedFacesObjectInternal = v11;
    if (v11)
    {
      [(AVMetadataTrackedFacesObjectInternal *)v11 setPayload:dictionary];
    }

    else
    {
      [AVMetadataTrackedFacesObject initWithTime:v10 faceTrackingDictionary:? input:?];
      return 0;
    }
  }

  return v10;
}

+ (id)trackedFacesWithTime:(id *)time faceTrackingDictionary:(id)dictionary input:(id)input
{
  v8 = objc_alloc(objc_opt_class());
  v10 = *time;
  return [v8 initWithTime:&v10 faceTrackingDictionary:dictionary input:input];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetadataTrackedFacesObject;
  [(AVMetadataObject *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = [v3 stringWithFormat:@"<%@: %p", NSStringFromClass(v4), self];
  selfCopy = self;
  payload = [(AVMetadataTrackedFacesObject *)self payload];
  v7 = objc_msgSend_objectForKeyedSubscript_(payload);
  if (v7)
  {
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = objc_msgSend_objectForKeyedSubscript_(v7);
    v8 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          v13 = objc_msgSend_objectForKeyedSubscript_(v12);
          v14 = objc_msgSend_objectForKeyedSubscript_(v13);
          [v5 appendFormat:@", translation:(%@)", objc_msgSend(objc_msgSend_objectForKeyedSubscript_(v14), "componentsJoinedByString:", @", ")];
          [objc_msgSend_objectForKeyedSubscript_(v12) floatValue];
          [v5 appendFormat:@", confidence=%.2f", v15];
          [v5 appendFormat:@", failure=%@", objc_msgSend_objectForKeyedSubscript_(v12)];
        }

        v9 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = objc_msgSend_objectForKeyedSubscript_(payload);
    v16 = [v26 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      v27 = *(MEMORY[0x1E695F058] + 16);
      *obja = *MEMORY[0x1E695F058];
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v26);
          }

          v20 = *(*(&v33 + 1) + 8 * j);
          rect.origin = *obja;
          rect.size = v27;
          v21 = objc_msgSend_objectForKeyedSubscript_(v20);
          CGRectMakeWithDictionaryRepresentation(v21, &rect);
          [v5 appendFormat:@", faceID=%@", objc_msgSend_objectForKeyedSubscript_(v20)];
          [v5 appendFormat:@", pos=(%.2f, %.2f)", *&rect.origin.x, *&rect.origin.y];
          [v5 appendFormat:@", size=(%.2f, %.2f)", *&rect.size.width, *&rect.size.height];
          [objc_msgSend_objectForKeyedSubscript_(v20) floatValue];
          [v5 appendFormat:@", roll=%f", v22];
          [v5 appendFormat:@", failure=%@", objc_msgSend_objectForKeyedSubscript_(v20)];
        }

        v17 = [v26 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v17);
    }
  }

  if (selfCopy)
  {
    objc_msgSend_time(selfCopy);
    v23 = v30;
  }

  else
  {
    v23 = 0;
  }

  [v5 appendFormat:@", time=%lld", v23];
  [v5 appendString:@">"];
  return v5;
}

- (NSDictionary)payload
{
  payload = [(AVMetadataTrackedFacesObjectInternal *)self->_trackedFacesObjectInternal payload];

  return payload;
}

@end