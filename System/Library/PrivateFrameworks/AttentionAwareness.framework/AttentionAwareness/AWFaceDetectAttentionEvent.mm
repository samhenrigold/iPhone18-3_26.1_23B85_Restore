@interface AWFaceDetectAttentionEvent
- (AWFaceDetectAttentionEvent)initWithCoder:(id)coder;
- (AWFaceDetectAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index faceMetadata:(AWFaceDetectMetadata *)metadata;
- (CGRect)faceBounds;
- (id)describeMotionData:(id)data;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)validateMask;
@end

@implementation AWFaceDetectAttentionEvent

- (CGRect)faceBounds
{
  x = self->_faceBounds.origin.x;
  y = self->_faceBounds.origin.y;
  width = self->_faceBounds.size.width;
  height = self->_faceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(AWAttentionEvent *)self timestamp];
  v6 = v5;
  metadataValid = self->_metadataValid;
  pitch = self->_pitch;
  yaw = self->_yaw;
  roll = self->_roll;
  v11 = getFaceDetectOrientationDescription(self->_orientation);
  distance = self->_distance;
  v13 = getEyeReliefFaceStateDescription(self->_faceState);
  metadataType = self->_metadataType;
  if (metadataType >= 6)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown AWFaceDetectMetadataType %llu", self->_metadataType];
  }

  else
  {
    v15 = off_1E7F37788[metadataType];
  }

  v16 = [(AWFaceDetectAttentionEvent *)self describeMotionData:self->_motionData];
  v17 = getMotionEventTypeDescription(self->_motionResult);
  faceDetectionScore = self->_faceDetectionScore;
  tagIndex = [(AWAttentionEvent *)self tagIndex];
  v20 = [(AWAttentionEvent *)self tag];
  v21 = tagDescription(tagIndex, v20);
  v22 = [v24 stringWithFormat:@"<%@: %p> (timestamp: %13.5f metadataValid %u pitch %13.5f yaw %13.5f roll %13.5f orientation %@ distance %13.5f faceState: %@ metadataType: %@ motionData: %@ motionResult: %@ faceDetectionScore: %13.5f %@)", v4, self, v6, metadataValid, *&pitch, *&yaw, *&roll, v11, *&distance, v13, v15, v16, v17, *&faceDetectionScore, v21];

  return v22;
}

- (id)describeMotionData:(id)data
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  dataCopy = data;
  if ([dataCopy countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    [**(&v7[0] + 1) floatValue];
    v4 = [dataCopy valueForKey:@"description"];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

- (AWFaceDetectAttentionEvent)initWithTimestamp:(double)timestamp tagIndex:(unint64_t)index faceMetadata:(AWFaceDetectMetadata *)metadata
{
  v15.receiver = self;
  v15.super_class = AWFaceDetectAttentionEvent;
  v6 = [(AWAttentionEvent *)&v15 initWithTimestamp:index tagIndex:128 eventMask:timestamp];
  v7 = v6;
  if (metadata && v6)
  {
    v6->_metadataValid = metadata->var0;
    v6->_pitch = metadata->var1;
    v6->_yaw = metadata->var2;
    v6->_roll = metadata->var3;
    v6->_orientation = metadata->var4;
    v6->_distance = metadata->var5;
    v6->_faceState = metadata->var6;
    v6->_metadataType = metadata->var7;
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:16];
    for (i = 0; i != 16; ++i)
    {
      *&v9 = metadata->var8[i];
      v11 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
      [v8 addObject:v11];
    }

    v12 = [v8 copy];

    motionData = v7->_motionData;
    v7->_motionData = v12;

    v7->_motionResult = metadata->var9;
    v7->_faceDetectionScore = metadata->var10;
  }

  return v7;
}

- (void)validateMask
{
  if ([(AWAttentionEvent *)self eventMask]!= 128)
  {
    __assert_rtn("[AWFaceDetectAttentionEvent validateMask]", "SimpleFrameworkTypes.m", 919, "self.eventMask == AWAttentionEventMaskFaceDetect");
  }
}

- (AWFaceDetectAttentionEvent)initWithCoder:(id)coder
{
  v67[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v47 = 0;
  v5 = decodeDouble(coderCopy, &v47, @"timestamp");
  v46 = decodeUInt64(coderCopy, &v47, @"metadataValid");
  v6 = decodeDouble(coderCopy, &v47, @"pitch");
  v7 = decodeDouble(coderCopy, &v47, @"yaw");
  v8 = decodeDouble(coderCopy, &v47, @"roll");
  v45 = decodeUInt64(coderCopy, &v47, @"orientation");
  v9 = decodeDouble(coderCopy, &v47, @"distance");
  v44 = decodeUInt64(coderCopy, &v47, @"faceState");
  v43 = decodeUInt64(coderCopy, &v47, @"metadataType");
  v10 = decodeUInt64(coderCopy, &v47, @"tagIndex");
  v11 = coderCopy;
  v12 = @"motionData";
  v13 = MEMORY[0x1E695DFD8];
  v67[0] = objc_opt_class();
  v67[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v11 decodeObjectOfClasses:v15 forKey:@"motionData"];

  v17 = 0x1EDC16000;
  if (!v16)
  {
    if ([v11 containsValueForKey:@"motionData"])
    {
      v23 = 0;
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    if (*(v17 + 2416) >= 3)
    {
      v24 = v17;
      v25 = _AALog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v35 = absTimeNS();
        if (v35 == -1)
        {
          v36 = INFINITY;
        }

        else
        {
          v36 = v35 / 1000000000.0;
        }

        buf = 134218242;
        v64 = v36;
        v65 = 2112;
        v66 = @"motionData";
        _os_log_error_impl(&dword_1BB2EF000, v25, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", &buf, 0x16u);
      }

      v17 = v24;
    }

    v23 = 0;
    v47 = 1;
    goto LABEL_19;
  }

  v41 = v10;
  selfCopy = self;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v10 = v41;
          self = selfCopy;
          v17 = 0x1EDC16000uLL;
          goto LABEL_15;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v23 = v18;
  v10 = v41;
  self = selfCopy;
  v17 = 0x1EDC16000;
LABEL_19:

  v26 = decodeUInt64(v11, &v47, @"motionResult");
  v27 = decodeDouble(v11, &v47, @"faceDetectionScore");
  if (v47 == 1)
  {
    if (*(v17 + 2416) >= 3)
    {
      v28 = _AALog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v37 = absTimeNS();
        if (v37 == -1)
        {
          v38 = INFINITY;
        }

        else
        {
          v38 = v37 / 1000000000.0;
        }

        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *v52 = 134218242;
        *&v52[4] = v38;
        *&v52[12] = 2112;
        *&v52[14] = v40;
        _os_log_error_impl(&dword_1BB2EF000, v28, OS_LOG_TYPE_ERROR, "%13.5f: failed to decode %@", v52, 0x16u);
      }
    }

    v29 = 0;
  }

  else
  {
    v30 = 0;
    *v52 = v46 != 0;
    v59 = 0u;
    memset(v58, 0, sizeof(v58));
    *&v52[8] = v6;
    *&v52[16] = v7;
    v53 = v8;
    v54 = v45;
    v55 = v9;
    v56 = v44;
    v57 = v43;
    *&v59 = v26;
    v31 = v27;
    *(&v59 + 2) = v31;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    do
    {
      v32 = [v23 objectAtIndexedSubscript:v30];
      [v32 floatValue];
      *(v58 + v30) = v33;

      ++v30;
    }

    while (v30 != 16);
    v29 = [[AWFaceDetectAttentionEvent alloc] initWithTimestamp:v10 tagIndex:v52 faceMetadata:v5];
  }

  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(AWAttentionEvent *)self timestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:?];
  [coderCopy encodeBool:self->_metadataValid forKey:@"metadataValid"];
  [coderCopy encodeDouble:@"pitch" forKey:self->_pitch];
  [coderCopy encodeDouble:@"yaw" forKey:self->_yaw];
  [coderCopy encodeDouble:@"roll" forKey:self->_roll];
  [coderCopy encodeInteger:self->_orientation forKey:@"orientation"];
  [coderCopy encodeDouble:@"distance" forKey:self->_distance];
  [coderCopy encodeDouble:@"faceState" forKey:self->_faceState];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AWAttentionEvent tagIndex](self, "tagIndex")}];
  [coderCopy encodeObject:v4 forKey:@"tagIndex"];

  [coderCopy encodeDouble:@"metadataType" forKey:self->_metadataType];
  [coderCopy encodeObject:self->_motionData forKey:@"motionData"];
  [coderCopy encodeInt64:self->_motionResult forKey:@"motionResult"];
  [coderCopy encodeDouble:@"faceDetectionScore" forKey:self->_faceDetectionScore];
}

@end