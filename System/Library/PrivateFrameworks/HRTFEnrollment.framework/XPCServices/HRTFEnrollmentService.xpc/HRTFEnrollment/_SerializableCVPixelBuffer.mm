@interface _SerializableCVPixelBuffer
- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref;
- (_SerializableCVPixelBuffer)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SerializableCVPixelBuffer

- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref
{
  v7.receiver = self;
  v7.super_class = _SerializableCVPixelBuffer;
  v4 = [(_SerializableCVPixelBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_pixelBuffer = ref;
    CVBufferRetain(ref);
  }

  return v5;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVBufferRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = _SerializableCVPixelBuffer;
  [(_SerializableCVPixelBuffer *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  PlaneCount = CVPixelBufferGetPlaneCount(self->_pixelBuffer);
  v6 = [NSNumber numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(self->_pixelBuffer)];
  [coderCopy encodeObject:v6 forKey:@"PixelFormat"];

  v7 = [NSNumber numberWithInteger:PlaneCount];
  [coderCopy encodeObject:v7 forKey:@"PlaneCount"];

  if (PlaneCount)
  {
    v37 = coderCopy;
    v8 = objc_alloc_init(NSMutableArray);
    v9 = objc_alloc_init(NSMutableArray);
    v38 = objc_alloc_init(NSMutableArray);
    v10 = objc_alloc_init(NSMutableArray);
    v11 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    [v8 addObject:v11];

    v12 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v13 = v9;
    [v9 addObject:v12];

    if (PlaneCount >= 1)
    {
      v14 = 0;
      do
      {
        v15 = PlaneCount;
        v16 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidthOfPlane(self->_pixelBuffer, v14)];
        [v8 addObject:v16];

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(self->_pixelBuffer, v14);
        v18 = v8;
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, v14);
        v20 = [NSNumber numberWithUnsignedLong:HeightOfPlane];
        [v13 addObject:v20];

        v21 = [NSNumber numberWithUnsignedLong:BytesPerRowOfPlane];
        [v38 addObject:v21];

        v22 = BytesPerRowOfPlane * HeightOfPlane;
        v8 = v18;
        v23 = [NSData alloc];
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, v14);
        v25 = v23;
        PlaneCount = v15;
        v26 = [v25 initWithBytes:BaseAddressOfPlane length:v22];
        [v10 addObject:v26];

        ++v14;
      }

      while (v15 != v14);
    }

    coderCopy = v37;
    [v37 encodeObject:v8 forKey:@"Width"];
    [v37 encodeObject:v13 forKey:@"Height"];
    [v37 encodeObject:v38 forKey:@"BytesPerRow"];
    [v37 encodeObject:v10 forKey:@"PixelData"];
  }

  else
  {
    v27 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    v42 = v27;
    v28 = [NSArray arrayWithObjects:&v42 count:1];
    [coderCopy encodeObject:v28 forKey:@"Width"];

    v29 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v41 = v29;
    v30 = [NSArray arrayWithObjects:&v41 count:1];
    [coderCopy encodeObject:v30 forKey:@"Height"];

    v31 = [NSNumber numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(self->_pixelBuffer)];
    v40 = v31;
    v32 = [NSArray arrayWithObjects:&v40 count:1];
    [coderCopy encodeObject:v32 forKey:@"BytesPerRow"];

    v33 = [NSData alloc];
    BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
    v35 = [v33 initWithBytes:BaseAddress length:CVPixelBufferGetDataSize(self->_pixelBuffer)];
    v39 = v35;
    v36 = [NSArray arrayWithObjects:&v39 count:1];
    [coderCopy encodeObject:v36 forKey:@"PixelData"];
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);
}

- (_SerializableCVPixelBuffer)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"PlaneCount"] && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelFormat") && objc_msgSend(coderCopy, "containsValueForKey:", @"Width") && objc_msgSend(coderCopy, "containsValueForKey:", @"Height") && objc_msgSend(coderCopy, "containsValueForKey:", @"BytesPerRow") && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelData"))
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlaneCount"];
    integerValue = [v5 integerValue];
    v87[0] = objc_opt_class();
    v87[1] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v87 count:2];
    v8 = [NSSet setWithArray:v7];

    v9 = integerValue;
    v86[0] = objc_opt_class();
    v86[1] = objc_opt_class();
    v10 = [NSArray arrayWithObjects:v86 count:2];
    v11 = [NSSet setWithArray:v10];

    v76 = v11;
    v77 = v8;
    if (integerValue)
    {
      selfCopy = self;
      v75 = v5;
      v12 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Width"];
      v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Height"];
      v14 = v8;
      v15 = v13;
      v16 = [coderCopy decodeObjectOfClasses:v14 forKey:@"BytesPerRow"];
      v70 = coderCopy;
      v17 = [coderCopy decodeObjectOfClasses:v11 forKey:@"PixelData"];
      v18 = [(size_t *)v12 objectAtIndexedSubscript:0];
      integerValue2 = [v18 integerValue];

      v19 = [v15 objectAtIndexedSubscript:0];
      integerValue3 = [v19 integerValue];

      v73 = &v70;
      __chkstk_darwin(v20);
      v21 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v22 = (&v70 - v21);
      if ((8 * v9) >= 0x200)
      {
        v23 = 512;
      }

      else
      {
        v23 = 8 * v9;
      }

      bzero(&v70 - v21, v23);
      v25 = __chkstk_darwin(v24);
      planeWidth = (&v70 - v21);
      v27 = __chkstk_darwin(v25);
      v80 = (&v70 - v21);
      __chkstk_darwin(v27);
      planeBytesPerRow = (&v70 - v21);
      if (v9 >= 1)
      {
        v28 = 0;
        v78 = v9;
        do
        {
          v29 = [v17 objectAtIndexedSubscript:v28];
          v30 = malloc_type_malloc([v29 length], 0xBD302F31uLL);
          v22[v28] = v30;

          v31 = [v17 objectAtIndexedSubscript:v28];
          [v17 objectAtIndexedSubscript:v28];
          v32 = planeWidth;
          v33 = v22;
          v34 = v17;
          v35 = v16;
          v36 = v15;
          v38 = v37 = v12;
          [v31 getBytes:v30 length:{objc_msgSend(v38, "length")}];

          v12 = v37;
          v15 = v36;
          v16 = v35;
          v17 = v34;
          v22 = v33;
          planeWidth = v32;

          v39 = [(size_t *)v12 objectAtIndexedSubscript:v28 + 1];
          v32[v28] = [v39 integerValue];

          v40 = [v15 objectAtIndexedSubscript:v28 + 1];
          integerValue4 = [v40 integerValue];
          v80[v28] = integerValue4;

          v42 = [v16 objectAtIndexedSubscript:v28];
          integerValue5 = [v42 integerValue];
          planeBytesPerRow[v28] = integerValue5;

          v9 = v78;
          v28 = v28 + 1;
        }

        while (v28 != v78);
      }

      pixelBufferOut = 0;
      v44 = objc_opt_class();
      coderCopy = v70;
      v45 = [v70 decodeObjectOfClass:v44 forKey:@"PixelFormat"];

      integerValue6 = [(size_t *)v45 integerValue];
      v47 = CVPixelBufferCreateWithPlanarBytes(kCFAllocatorDefault, integerValue2, integerValue3, integerValue6, 0, 0, v9, v22, planeWidth, v80, planeBytesPerRow, sub_100003694, 0, 0, &pixelBufferOut);
      if (v47)
      {
        v48 = v47;
        v49 = sub_100003650(v47);
        v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
        v51 = v77;
        self = selfCopy;
        if (v50)
        {
          *buf = 67109120;
          v85 = v48;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "failed to create planar CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v81.receiver = selfCopy;
        v81.super_class = _SerializableCVPixelBuffer;
        v68 = [(_SerializableCVPixelBuffer *)&v81 init];
        v51 = v77;
        if (v68)
        {
          v68->_pixelBuffer = pixelBufferOut;
        }

        self = v68;
        selfCopy3 = self;
      }
    }

    else
    {
      v54 = [coderCopy decodeObjectOfClasses:v11 forKey:@"PixelData"];
      v55 = [v54 objectAtIndexedSubscript:0];

      v73 = malloc_type_malloc([v55 length], 0x74067141uLL);
      v80 = v55;
      memcpy(v73, [v55 bytes], objc_msgSend(v55, "length"));
      pixelBufferOut = 0;
      v56 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Width"];
      v57 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Height"];
      v58 = [coderCopy decodeObjectOfClasses:v8 forKey:@"BytesPerRow"];
      v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelFormat"];

      planeBytesPerRow = v59;
      integerValue2 = [(size_t *)v59 integerValue];
      v78 = v56;
      v60 = [v56 objectAtIndexedSubscript:0];
      integerValue7 = [v60 integerValue];
      v75 = v57;
      v62 = [v57 objectAtIndexedSubscript:0];
      integerValue8 = [v62 integerValue];
      selfCopy = v58;
      v64 = [(_SerializableCVPixelBuffer *)v58 objectAtIndexedSubscript:0];
      v65 = CVPixelBufferCreateWithBytes(kCFAllocatorDefault, integerValue7, integerValue8, integerValue2, v73, [v64 integerValue], sub_100003648, 0, 0, &pixelBufferOut);

      if (v65)
      {
        v67 = sub_100003650(v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v85 = v65;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "failed to create CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v82.receiver = self;
        v82.super_class = _SerializableCVPixelBuffer;
        v69 = [(_SerializableCVPixelBuffer *)&v82 init];
        if (v69)
        {
          v69->_pixelBuffer = pixelBufferOut;
        }

        self = v69;
        selfCopy3 = self;
      }

      v51 = v77;
      v45 = planeBytesPerRow;
      v12 = v80;
    }
  }

  else
  {
    selfCopy3 = 0;
  }

  return selfCopy3;
}

@end