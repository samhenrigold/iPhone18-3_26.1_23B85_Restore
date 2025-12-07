@interface VideoAccessIndex
- (id).cxx_construct;
- (id)initFromFile:(id)file pixelFormat:(unsigned int)format frameTimes:(const void *)times;
- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf;
@end

@implementation VideoAccessIndex

- (id)initFromFile:(id)file pixelFormat:(unsigned int)format frameTimes:(const void *)times
{
  v6 = *&format;
  fileCopy = file;
  v19.receiver = self;
  v19.super_class = VideoAccessIndex;
  v9 = [(VideoAccessIndex *)&v19 init];
  if (v9)
  {
    v10 = [[VideoReaderRand alloc] initFromFile:fileCopy frameTimes:times];
    v11 = *(v9 + 7);
    *(v9 + 7) = v10;

    v12 = *(v9 + 7);
    if (!v12)
    {
      v17 = 0;
      goto LABEL_8;
    }

    [v12 setPixelFormatOptions:v6];
    if (v9 + 8 != times)
    {
      sub_2418DF350(v9 + 1, *times, *(times + 1), 0xAAAAAAAAAAAAAAABLL * ((*(times + 1) - *times) >> 3));
    }

    *(v9 + 8) = -1431655765 * ((*(v9 + 2) - *(v9 + 1)) >> 3);
    videoTrack = [*(v9 + 7) videoTrack];
    v14 = *(v9 + 5);
    *(v9 + 5) = videoTrack;

    asset = [*(v9 + 7) asset];
    v16 = *(v9 + 6);
    *(v9 + 6) = asset;
  }

  v17 = v9;
LABEL_8:

  return v17;
}

- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf
{
  if (self->numFrames < index)
  {
    return 4;
  }

  v6 = self->mFrameTimes.__begin_ + 24 * index;
  v14 = *v6;
  v15 = *(v6 + 2);
  v13 = 0;
  sbuf = 0;
  readerRand = self->readerRand;
  v10 = v14;
  v11 = v15;
  v4 = [(VideoReaderRand *)readerRand getFrameAtTime:&v10 frame:&sbuf rawFrameIndex:&v13];
  if (!v4)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    *buf = ImageBuffer;
    CFRetain(ImageBuffer);
    CFRelease(sbuf);
  }

  return v4;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end