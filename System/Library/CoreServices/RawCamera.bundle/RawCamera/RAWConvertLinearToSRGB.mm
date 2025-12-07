@interface RAWConvertLinearToSRGB
- (id)outputImage;
@end

@implementation RAWConvertLinearToSRGB

- (id)outputImage
{
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWConvertLinearToSRGB", &unk_233945DBE, buf, 2u);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_23387F2E8;
    v10[3] = &unk_2789EE800;
    v10[4] = self;
    v5 = MEMORY[0x2383AC810](v10);
    v6 = self->inputImage;
    v7 = [RAWKernels kernelWithName:@"raw_linear_to_srgb"];
    v8 = [(RAWFilter *)self apply:v7 image:v6 arguments:0 inoutSpace:self->inputColorSpace isPremultiplied:1];

    v5[2](v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end