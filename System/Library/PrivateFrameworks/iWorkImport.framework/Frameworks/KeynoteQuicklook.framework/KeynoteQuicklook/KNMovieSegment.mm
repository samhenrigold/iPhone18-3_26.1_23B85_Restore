@interface KNMovieSegment
- (BOOL)isEmptySegment;
- (KNMovieSegment)initWithContext:(id)context message:(const void *)message unarchiver:(id)unarchiver;
- (KNMovieSegment)initWithMovieData:(id)data startTime:(double)time;
- (id)description;
- (id)movieSegmentByAddingTimeOffset:(double)offset;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation KNMovieSegment

- (KNMovieSegment)initWithMovieData:(id)data startTime:(double)time
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = KNMovieSegment;
  v8 = [(KNMovieSegment *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_movieData, data);
    v9->_startTime = time;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(KNMovieSegment *)self startTime];
  v7 = [v3 stringWithFormat:@"<%@: %p startTime=%f, isEmptySegment=%d>", v5, self, v6, -[KNMovieSegment isEmptySegment](self, "isEmptySegment")];

  return v7;
}

- (BOOL)isEmptySegment
{
  movieData = [(KNMovieSegment *)self movieData];
  v3 = movieData == 0;

  return v3;
}

- (id)movieSegmentByAddingTimeOffset:(double)offset
{
  v5 = [KNMovieSegment alloc];
  movieData = [(KNMovieSegment *)self movieData];
  [(KNMovieSegment *)self startTime];
  offset = [(KNMovieSegment *)v5 initWithMovieData:movieData startTime:v7 + offset];

  return offset;
}

- (KNMovieSegment)initWithContext:(id)context message:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v18.receiver = self;
  v18.super_class = KNMovieSegment;
  v8 = [(KNMovieSegment *)&v18 init];
  v9 = v8;
  if (v8)
  {
    v10 = *(message + 4);
    if (v10)
    {
      v13 = *(message + 3);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = sub_275DBCB08;
      v16[3] = &unk_27A698368;
      v17 = v8;
      v14 = unarchiverCopy;
      [v14 readReferenceMessage:v13 class:objc_opt_class() protocol:0 completion:v16];

      movieData = v17;
    }

    else
    {
      if ((v10 & 2) == 0)
      {
LABEL_7:
        v9->_startTime = *(message + 5);
        goto LABEL_8;
      }

      v11 = [unarchiverCopy readDataReferenceMessage:*(message + 4)];
      movieData = v9->_movieData;
      v9->_movieData = v11;
    }

    goto LABEL_7;
  }

LABEL_8:

  return v9;
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  movieData = self->_movieData;
  if (movieData)
  {
    *(message + 4) |= 2u;
    v7 = *(message + 4);
    if (!v7)
    {
      v8 = *(message + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8EFD0](v8);
      *(message + 4) = v7;
    }

    [archiverCopy setDataReference:movieData message:v7];
  }

  [(KNMovieSegment *)self startTime];
  *(message + 4) |= 4u;
  *(message + 5) = v9;
}

@end