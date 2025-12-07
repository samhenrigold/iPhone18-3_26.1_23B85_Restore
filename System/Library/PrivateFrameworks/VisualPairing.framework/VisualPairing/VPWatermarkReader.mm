@interface VPWatermarkReader
- (VPWatermarkReader)init;
- (id)readWatermarkInPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
- (void)reset;
@end

@implementation VPWatermarkReader

- (VPWatermarkReader)init
{
  v4.receiver = self;
  v4.super_class = VPWatermarkReader;
  v2 = [(VPWatermarkReader *)&v4 init];
  if (v2)
  {
    v2->_readerResetTicks = SecondsToUpTicks();
  }

  return v2;
}

- (void)reset
{
  reader = self->_reader;
  if (reader)
  {
    HCImagePerspectiveReader::Reset(reader);
  }
}

- (id)readWatermarkInPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v6 = [(VPWatermarkReader *)self firstCapturedFrameDate:buffer];

  if (!v6)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(VPWatermarkReader *)self setFirstCapturedFrameDate:date];
  }

  if (!buffer)
  {
    if (gLogCategory_SVW <= 60 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 60, "### Get pixel buffer failed\n");
    }

    v25 = NSErrorWithOSStatusF(4294960569, "Get pixel buffer failed");
    [(VPWatermarkReader *)self setLatestError:v25];
    goto LABEL_60;
  }

  if (!CVPixelBufferIsPlanar(buffer))
  {
    if (gLogCategory_SVW <= 60 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 60, "### Non-planar pixel buffer\n");
    }

    v25 = NSErrorWithOSStatusF(4294960569, "Non-planar pixel buffer");
    [(VPWatermarkReader *)self setLatestError:v25];
LABEL_60:

    goto LABEL_37;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(buffer, 1uLL);
  v11 = BytesPerRowOfPlane;
  if (!self->_reader || WidthOfPlane != self->_readerWidth || HeightOfPlane != self->_readerHeight || BytesPerRowOfPlane != self->_readerRowBytes)
  {
    if (gLogCategory_SVW <= 30 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 30, "Create reader %zu x %zu (%zu row bytes)\n", WidthOfPlane, HeightOfPlane, v11);
    }

    reader = self->_reader;
    if (reader)
    {
      HCImagePerspectiveReader::~HCImagePerspectiveReader(reader);
      MEMORY[0x2743C1750]();
    }

    operator new();
  }

  v13 = mach_absolute_time();
  v14 = v13;
  if (self->_readerLastProgress > 0.0 && v13 - self->_readerLastWatermarkTicks >= self->_readerResetTicks)
  {
    if (gLogCategory_SVW <= 20 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 20, "Reader reset after %d secs\n", 4);
    }

    HCImagePerspectiveReader::Reset(self->_reader);
  }

  v15 = CVPixelBufferLockBaseAddress(buffer, 1uLL);
  if (v15)
  {
    if (gLogCategory_SVW <= 60)
    {
      if (gLogCategory_SVW != -1 || (v26 = v15, v27 = _LogCategory_Initialize(), v15 = v26, v27))
      {
        v24 = v15;
        LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 60, "### Lock pixel buffer failed: %d\n", v15);
        v15 = v24;
      }
    }

    v28 = NSErrorWithOSStatusF(v15, "Lock pixel buffer failed");
    [(VPWatermarkReader *)self setLatestError:v28];
    goto LABEL_21;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, 1uLL);
  v17 = HCImagePerspectiveReader::ProcessUVFrame(self->_reader, BaseAddressOfPlane, HeightOfPlane, WidthOfPlane, v11, v29);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  if (v17)
  {
    if (gLogCategory_SVW <= 60 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 60, "### Process pixel buffer failed: %d\n", v17);
    }

    v28 = NSErrorWithOSStatusF(v17, "Process pixel buffer failed");
    [(VPWatermarkReader *)self setLatestError:v28];
LABEL_21:

    goto LABEL_37;
  }

  if (v29[0] == 1)
  {
    self->_readerLastWatermarkTicks = v14;
    v18 = *(self->_reader->var5 + 1);
    v19 = v18[1] / *v18;
    if (v19 != self->_readerLastProgress)
    {
      if (gLogCategory_SVW <= 10 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SVW, "[VPWatermarkReader readWatermarkInPixelBuffer:error:]", 10, "Reader found watermark: %.0f%%\n", (v19 * 100.0));
      }

      self->_readerLastProgress = v19;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](v19 * 100.0);
      }
    }

    v21 = self->_reader;
    var6 = v21->var6;
    if (var6)
    {
      [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:var6 length:strnlen(v21->var6 encoding:{0x6EuLL), 4}];
      HCImagePerspectiveReader::Reset(self->_reader);
    }
  }

LABEL_37:

  return 0;
}

@end