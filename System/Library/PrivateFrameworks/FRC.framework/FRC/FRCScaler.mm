@interface FRCScaler
- (FRCScaler)init;
- (void)dealloc;
- (void)downScaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination rotate:(int64_t)rotate waitForCompletion:(BOOL)completion;
- (void)scaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination cropRectangles:(id *)rectangles upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion;
- (void)upScaleAndCropFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion;
@end

@implementation FRCScaler

- (FRCScaler)init
{
  v5.receiver = self;
  v5.super_class = FRCScaler;
  v2 = [(FRCScaler *)&v5 init];
  if (v2 && (IOSurfaceAcceleratorCreate(), !v2->_scaler))
  {
    NSLog(&cfstr_FailedToCreate_1.isa);
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (void)scaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination cropRectangles:(id *)rectangles upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  upscaleCopy = upscale;
  v13 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v15 = Mutable;
  v16 = MEMORY[0x277CBED28];
  if (completionCopy)
  {
    if (upscaleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1AE90], *MEMORY[0x277CBED28]);
    if (upscaleCopy)
    {
LABEL_3:
      v17 = *v16;
      CFDictionarySetValue(v15, *MEMORY[0x277D1AE38], *v16);
      CFDictionarySetValue(v15, *MEMORY[0x277D1AE88], v17);
      if (!rotate)
      {
        goto LABEL_4;
      }

LABEL_8:
      switch(rotate)
      {
        case 3:
          v18 = 3;
          break;
        case 2:
          v18 = 7;
          break;
        case 1:
          v18 = 4;
          break;
        default:
          LODWORD(valuePtr) = 0;
LABEL_16:
          v19 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(v15, *MEMORY[0x277D1AEA0], v19);
          CFRelease(v19);
          if (completionCopy)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
      }

      LODWORD(valuePtr) = v18;
      goto LABEL_16;
    }
  }

  if (rotate)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (completionCopy)
  {
LABEL_5:
    CVPixelBufferGetIOSurface(source);
    CVPixelBufferGetIOSurface(destination);
    goto LABEL_18;
  }

LABEL_17:
  valuePtr = xmmword_285DE3538;
  v27 = qword_285DE3548;
  CVPixelBufferGetIOSurface(source);
  CVPixelBufferGetIOSurface(destination);
LABEL_18:
  if (IOSurfaceAcceleratorTransformSurface())
  {
    Width = CVPixelBufferGetWidth(source);
    Height = CVPixelBufferGetHeight(source);
    PixelFormatType = CVPixelBufferGetPixelFormatType(source);
    v23 = CVPixelBufferGetWidth(destination);
    v24 = CVPixelBufferGetHeight(destination);
    v25 = CVPixelBufferGetPixelFormatType(destination);
    NSLog(&cfstr_ScalerErrorFai.isa, Width, Height, PixelFormatType, v23, v24, v25);
  }

  CFRelease(v15);
}

- (void)downScaleFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination rotate:(int64_t)rotate waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  kdebug_trace();
  v14 = 0u;
  v11 = 0u;
  v12 = CVPixelBufferGetWidth(source) << 16;
  v13 = CVPixelBufferGetHeight(source) << 16;
  [(FRCScaler *)self scaleFrameSource:source destination:destination cropRectangles:&v11 upscale:0 rotate:rotate waitForCompletion:completionCopy];
  kdebug_trace();
}

- (void)upScaleAndCropFrameSource:(__CVBuffer *)source destination:(__CVBuffer *)destination upscale:(BOOL)upscale rotate:(int64_t)rotate waitForCompletion:(BOOL)completion
{
  completionCopy = completion;
  upscaleCopy = upscale;
  kdebug_trace();
  Width = CVPixelBufferGetWidth(destination);
  v14 = Width;
  v23 = Width;
  Height = CVPixelBufferGetHeight(destination);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v20 = v14;
  v21 = Height;
  if ((rotate - 1) <= 1)
  {
    swapWidthAndHeight(&v23, &Height);
  }

  if (upscaleCopy)
  {
    v15 = (v23 << 15) & 0xFFFFFFFFFFFF0000;
    v16 = (Height << 15) & 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v15 = v23 << 16;
    v16 = Height << 16;
  }

  *&v18 = v15;
  *(&v18 + 1) = v16;
  [(FRCScaler *)self scaleFrameSource:source destination:destination cropRectangles:&v17 upscale:upscaleCopy rotate:rotate waitForCompletion:completionCopy];
  kdebug_trace();
}

- (void)dealloc
{
  scaler = self->_scaler;
  if (scaler)
  {
    CFRelease(scaler);
  }

  v4.receiver = self;
  v4.super_class = FRCScaler;
  [(FRCScaler *)&v4 dealloc];
}

@end