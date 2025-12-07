@interface RAWTemperatureAdjust
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
- (id)outputMatrix;
- (void)setInputWhitePoint:(id)point;
@end

@implementation RAWTemperatureAdjust

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"inputExposure"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"inputWhitePoint"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___RAWTemperatureAdjust;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (void)setInputWhitePoint:(id)point
{
  pointCopy = point;
  if (self->inputWhitePoint != pointCopy)
  {
    [(CIVector *)pointCopy X];
    v6 = v5;
    [(CIVector *)self->inputWhitePoint X];
    if (v6 != v7 || ([(CIVector *)pointCopy Y], v9 = v8, [(CIVector *)self->inputWhitePoint Y], v9 != v10))
    {
      [(RAWTemperatureAdjust *)self willChangeValueForKey:@"inputWhitePoint"];
      objc_storeStrong(&self->inputWhitePoint, point);
      [(RAWTemperatureAdjust *)self didChangeValueForKey:@"inputWhitePoint"];
    }
  }
}

+ (id)customAttributes
{
  v31[4] = *MEMORY[0x277D85DE8];
  v30[0] = @"inputExposure";
  v27[0] = *MEMORY[0x277CBF790];
  v2 = v27[0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *MEMORY[0x277CBF7D0];
  v22 = v4;
  v28[0] = v4;
  v28[1] = &unk_284958C78;
  v6 = *MEMORY[0x277CBF7C8];
  v27[1] = v5;
  v27[2] = v6;
  v7 = *MEMORY[0x277CBF798];
  v28[2] = &unk_284958C88;
  v28[3] = &unk_284958C98;
  v8 = *MEMORY[0x277CBF7F0];
  v27[3] = v7;
  v27[4] = v8;
  v29 = *MEMORY[0x277CBF850];
  v9 = v29;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
  v31[0] = v21;
  v30[1] = @"inputWhitePoint";
  v25[0] = v2;
  v10 = objc_opt_class();
  v20 = NSStringFromClass(v10);
  v26[0] = v20;
  v25[1] = v7;
  v11 = [MEMORY[0x277CBF788] vectorWithX:0.332399994 Y:0.34740001];
  v25[2] = v8;
  v12 = *MEMORY[0x277CBF838];
  v26[1] = v11;
  v26[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v31[1] = v13;
  v30[2] = @"inputVersion";
  v23[0] = v2;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v24[0] = v15;
  v24[1] = &unk_284958C98;
  v23[1] = v5;
  v23[2] = v6;
  v24[2] = &unk_284958CA8;
  v24[3] = &unk_284958CA8;
  v23[3] = v7;
  v23[4] = v8;
  v24[4] = v9;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:5];
  v30[3] = @"kCIRAWFilterDoesClip";
  v17 = *MEMORY[0x277CBED10];
  v31[2] = v16;
  v31[3] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];

  return v18;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputMatrix
{
  v47[3] = *MEMORY[0x277D85DE8];
  sub_2337DFC28(3u, &v43);
  [(NSNumber *)self->inputExposure doubleValue];
  v4 = exp2(v3);
  sub_2337E0244(&v43, &v40, v4);
  sub_2337E004C(&v43, &v40);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v5 = [(NSNumber *)self->inputVersion intValue]!= 0;
  [(CIVector *)self->inputWhitePoint X];
  v7 = v6;
  [(CIVector *)self->inputWhitePoint Y];
  v9 = v8;
  sub_2337DF874(&v37, &v43);
  sub_2338A72FC(v5, &v37, &v40, v7, v9);
  sub_2337E004C(&v43, &v40);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  v10 = MEMORY[0x277CBF788];
  v40 = sub_2337DFCEC(&v43, 0);
  __p = v11;
  v12 = *sub_2337DFD6C(&v40, 0);
  v35 = sub_2337DFCEC(&v43, 0);
  v36 = v13;
  v14 = *sub_2337DFD6C(&v35, 1u);
  v33 = sub_2337DFCEC(&v43, 0);
  v34 = v15;
  v16 = [v10 vectorWithX:v12 Y:v14 Z:{*sub_2337DFD6C(&v33, 2u)}];
  v17 = MEMORY[0x277CBF788];
  v40 = sub_2337DFCEC(&v43, 1u);
  __p = v18;
  v19 = *sub_2337DFD6C(&v40, 0);
  v35 = sub_2337DFCEC(&v43, 1u);
  v36 = v20;
  v21 = *sub_2337DFD6C(&v35, 1u);
  v33 = sub_2337DFCEC(&v43, 1u);
  v34 = v22;
  v23 = [v17 vectorWithX:v19 Y:v21 Z:{*sub_2337DFD6C(&v33, 2u)}];
  v24 = MEMORY[0x277CBF788];
  v40 = sub_2337DFCEC(&v43, 2u);
  __p = v25;
  v26 = *sub_2337DFD6C(&v40, 0);
  v35 = sub_2337DFCEC(&v43, 2u);
  v36 = v27;
  v28 = *sub_2337DFD6C(&v35, 1u);
  v33 = sub_2337DFCEC(&v43, 2u);
  v34 = v29;
  v30 = [v24 vectorWithX:v26 Y:v28 Z:{*sub_2337DFD6C(&v33, 2u)}];
  v46[0] = @"inputRVector";
  v46[1] = @"inputGVector";
  v47[0] = v16;
  v47[1] = v23;
  v46[2] = @"inputBVector";
  v47[2] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return v31;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWTemperatureAdjust", &unk_233945DBE, buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_2338A0E68;
    v13[3] = &unk_2789EE800;
    v13[4] = self;
    v5 = MEMORY[0x2383AC810](v13);
    outputMatrix = [(RAWTemperatureAdjust *)self outputMatrix];
    inputImage = self->inputImage;
    v8 = [outputMatrix objectForKeyedSubscript:@"inputRVector"];
    v9 = [outputMatrix objectForKeyedSubscript:@"inputGVector"];
    v10 = [outputMatrix objectForKeyedSubscript:@"inputBVector"];
    v11 = [(RAWFilter *)self applyMatrixToImage:inputImage vectorR:v8 vectorG:v9 vectorB:v10 vectorBias:0 inSpace:[(CIImage *)self->inputImage colorSpace] outSpace:sub_2338F2BB4()];

    v5[2](v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end