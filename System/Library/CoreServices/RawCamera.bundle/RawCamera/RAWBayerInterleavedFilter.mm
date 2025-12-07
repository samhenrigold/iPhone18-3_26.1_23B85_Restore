@interface RAWBayerInterleavedFilter
- (id)outputImage;
@end

@implementation RAWBayerInterleavedFilter

- (id)outputImage
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (self->inputExtent && self->inputImage00 && self->inputImage01 && self->inputImage10 && self->inputImage11)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWBayerInterleavedFilter", &unk_233945DBE, buf, 2u);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_233876AB0;
    v16[3] = &unk_2789EE800;
    v16[4] = self;
    v5 = MEMORY[0x2383AC810](v16);
    v6 = [DMKernels kernelWithName:@"_interleaveRGGB"];
    if (!v6 || ([(CIVector *)self->inputExtent CGRectValue], x = v20.origin.x, y = v20.origin.y, width = v20.size.width, height = v20.size.height, CGRectIsNull(v20)) || (v21.origin.x = x, v21.origin.y = y, v21.size.width = width, v21.size.height = height, CGRectIsInfinite(v21)))
    {
      v11 = 0;
    }

    else
    {
      inputImage01 = self->inputImage01;
      v18[0] = self->inputImage00;
      v18[1] = inputImage01;
      inputImage11 = self->inputImage11;
      v18[2] = self->inputImage10;
      v18[3] = inputImage11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
      v11 = [v6 applyWithExtent:&unk_28492C330 roiCallback:v14 arguments:{x, y, width, height}];
    }

    v5[2](v5);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end