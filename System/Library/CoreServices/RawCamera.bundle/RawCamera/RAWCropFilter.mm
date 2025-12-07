@interface RAWCropFilter
- (id)outputImage;
@end

@implementation RAWCropFilter

- (id)outputImage
{
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputCropRect)
    {
      v4 = sub_23378E104(self);
      v5 = v4;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v4))
      {
        LOWORD(v17.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWCropFilter", &unk_233945DBE, &v17, 2u);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = sub_2338F37DC;
      v18[3] = &unk_2789EE800;
      v18[4] = self;
      v6 = MEMORY[0x2383AC810](v18);
      [(CIVector *)self->inputCropRect CGRectValue];
      v8 = v7;
      v10 = v9;
      v11 = self->inputImage;
      CGAffineTransformMakeTranslation(&v17, -v12, -v13);
      v14 = [(CIImage *)v11 imageByApplyingTransform:&v17];
      v15 = [v14 imageByCroppingToRect:{0.0, 0.0, v8, v10}];

      v6[2](v6);
    }

    else
    {
      v15 = inputImage;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end