@interface AVMetadataTextRegionObject
+ (id)textRegionObjectWithDictionary:(id)dictionary input:(id)input;
- (CGRect)angularOffsetBounds;
- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment;
- (id)initTextRegionObjectWithDictionary:(id)dictionary input:(id)input;
- (void)dealloc;
@end

@implementation AVMetadataTextRegionObject

+ (id)textRegionObjectWithDictionary:(id)dictionary input:(id)input
{
  v4 = [objc_alloc(objc_opt_class()) initTextRegionObjectWithDictionary:dictionary input:input];

  return v4;
}

- (id)initTextRegionObjectWithDictionary:(id)dictionary input:(id)input
{
  memset(&v20, 0, sizeof(v20));
  v7 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, *MEMORY[0x1E69912E0]);
  CMTimeMakeFromDictionary(&v20, v7);
  v8 = *(MEMORY[0x1E695F058] + 16);
  rect.origin = *MEMORY[0x1E695F058];
  rect.size = v8;
  v9 = objc_msgSend_objectForKeyedSubscript_(dictionary);
  CGRectMakeWithDictionaryRepresentation(v9, &rect);
  v18.receiver = self;
  v18.super_class = AVMetadataTextRegionObject;
  v17 = v20;
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  v10 = [(AVMetadataObject *)&v18 initWithType:@"textRegion" time:&v17 duration:&v15 bounds:0 optionalInfoDict:0 originalMetadataObject:input sourceCaptureInput:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  if (v10)
  {
    v10->_regionID = [objc_msgSend_objectForKeyedSubscript_(dictionary) integerValue];
    [objc_msgSend_objectForKeyedSubscript_(dictionary) floatValue];
    v10->_confidence = v11;
    [objc_msgSend_objectForKeyedSubscript_(dictionary) floatValue];
    v10->_angularOffset = v12;
    v13 = objc_msgSend_objectForKeyedSubscript_(dictionary);
    CGRectMakeWithDictionaryRepresentation(v13, &v10->_angularOffsetBounds);
  }

  return v10;
}

- (id)initDerivedMetadataObjectFromMetadataObject:(id)object withTransform:(CGAffineTransform *)transform isVideoMirrored:(BOOL)mirrored rollAdjustment:(double)adjustment
{
  v9 = *(MEMORY[0x1E695F058] + 16);
  v24.origin = *MEMORY[0x1E695F058];
  v24.size = v9;
  [object bounds];
  v10 = *&transform->c;
  *&v23.a = *&transform->a;
  *&v23.c = v10;
  *&v23.tx = *&transform->tx;
  if (AVMetadataObjectAdjustBaseClassProperties(&v23, &v24, v11, v12, v13, v14))
  {
    if (object)
    {
      objc_msgSend_time(object);
      objc_msgSend_duration(object);
    }

    else
    {
      memset(&v23, 0, 24);
      memset(v22, 0, sizeof(v22));
    }

    input = [object input];
    v21.receiver = self;
    v21.super_class = AVMetadataTextRegionObject;
    v15 = [(AVMetadataObject *)&v21 initWithType:@"textRegion" time:&v23 duration:v22 bounds:0 optionalInfoDict:object originalMetadataObject:input sourceCaptureInput:*&v24.origin, *&v24.size];
    if (v15)
    {
      v15->_regionID = [object regionID];
      [object confidence];
      v15->_confidence = v17;
      [object angularOffset];
      v15->_angularOffset = v18;
      [object angularOffsetBounds];
      v19 = *&transform->c;
      *&v23.a = *&transform->a;
      *&v23.c = v19;
      *&v23.tx = *&transform->tx;
      v15->_angularOffsetBounds = CGRectApplyAffineTransform(v25, &v23);
    }
  }

  else
  {

    return 0;
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AVMetadataTextRegionObject;
  [(AVMetadataObject *)&v2 dealloc];
}

- (CGRect)angularOffsetBounds
{
  objc_copyStruct(v6, &self->_angularOffsetBounds, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end