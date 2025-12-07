@interface BWDeferredArrayIntermediate
- (BWDeferredArrayIntermediate)initWithArray:(id)array tag:(id)tag URL:(id)l;
- (BWDeferredArrayIntermediate)initWithCoder:(id)coder;
- (id)archive:(int *)archive;
- (id)description;
- (id)fetchWithCustomClassesAndRetain:(id)retain err:(int *)err;
- (int)flush;
- (int)setArchive:(id)archive;
- (int)setURL:(id)l prefetchQueue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredArrayIntermediate

- (BWDeferredArrayIntermediate)initWithArray:(id)array tag:(id)tag URL:(id)l
{
  if (array)
  {
    v8.receiver = self;
    v8.super_class = BWDeferredArrayIntermediate;
    v6 = [(BWDeferredIntermediate *)&v8 initWithTag:tag URL:l];
    if (v6)
    {
      v6->_array = array;
    }
  }

  else
  {
    [(BWDeferredArrayIntermediate *)self initWithArray:a2 tag:0 URL:tag, l];
    return 0;
  }

  return v6;
}

- (BWDeferredArrayIntermediate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BWDeferredArrayIntermediate;
  return [(BWDeferredIntermediate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BWDeferredArrayIntermediate;
  [(BWDeferredIntermediate *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredArrayIntermediate;
  [(BWDeferredDataIntermediate *)&v3 dealloc];
}

- (int)setURL:(id)l prefetchQueue:(id)queue
{
  v7 = pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    [BWDeferredArrayIntermediate setURL:v7 prefetchQueue:?];
    v8 = -16135;
  }

  else
  {
    [(BWDeferredDataIntermediate *)self _setURL:l prefetchQueue:queue];
    v8 = 0;
  }

  pthread_mutex_unlock(&self->super.super._lock);
  return v8;
}

- (int)setArchive:(id)archive
{
  v5 = pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    [BWDeferredArrayIntermediate setArchive:v5];
LABEL_9:
    v7 = -16135;
    goto LABEL_5;
  }

  if (self->super._archive)
  {
    [BWDeferredArrayIntermediate setArchive:v5];
    goto LABEL_9;
  }

  if (self->super.super._URL)
  {
    [BWDeferredArrayIntermediate setArchive:v5];
    goto LABEL_9;
  }

  v6 = [archive copy];
  v7 = 0;
  self->super._archive = v6;
LABEL_5:
  pthread_mutex_unlock(&self->super.super._lock);
  return v7;
}

- (id)fetchWithCustomClassesAndRetain:(id)retain err:(int *)err
{
  v13 = 0;
  pthread_mutex_lock(&self->super.super._lock);
  if (self->_array)
  {
    goto LABEL_7;
  }

  if (self->super.super._prefetching)
  {
    pthread_cond_wait(&self->super.super._cv, &self->super.super._lock);
  }

  v7 = [BWDeferredContainer buildArchiveClasses:retain];
  archive = self->super._archive;
  if (archive)
  {
    self->_array = [BWDeferredContainer unarchiveObject:archive classes:v7 error:&v13];

    self->super._archive = 0;
  }

  else
  {
    URL = self->super.super._URL;
    if (URL)
    {
      v12 = [BWDeferredContainer unarchiveObjectWithURL:URL classes:v7 error:&v13];
      self->_array = v12;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  if (self->_array)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

LABEL_13:
  if (v13)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@" due to error: %@", objc_msgSend(v13, "description")];
  }

  v9 = -16134;
LABEL_8:
  pthread_mutex_unlock(&self->super.super._lock);
  if (err)
  {
    *err = v9;
  }

  return self->_array;
}

- (id)archive:(int *)archive
{
  v11 = 0;
  v5 = pthread_mutex_lock(&self->super.super._lock);
  array = self->_array;
  if (array)
  {
    if ([BWDeferredContainer archiveObject:array error:&v11])
    {
      v7 = _CFXPCCreateXPCObjectFromCFObject();
      v8 = v7;
      if (v7)
      {
        CFAutorelease(v7);
        v9 = 0;
      }

      else
      {
        [BWDeferredArrayIntermediate archive:?];
        v9 = -16133;
      }
    }

    else
    {
      [(BWDeferredArrayIntermediate *)&v11 archive:?];
      v8 = 0;
      v9 = v12;
    }
  }

  else
  {
    [BWDeferredArrayIntermediate archive:v5];
    v8 = 0;
    v9 = -16136;
  }

  pthread_mutex_unlock(&self->super.super._lock);
  if (archive)
  {
    *archive = v9;
  }

  return v8;
}

- (int)flush
{
  v6 = 0;
  v3 = pthread_mutex_lock(&self->super.super._lock);
  if (!self->super.super._URL)
  {
    [(BWDeferredArrayIntermediate *)v3 flush];
    goto LABEL_11;
  }

  if (!self->_array)
  {
    if (!self->super.super._dirty)
    {
      goto LABEL_7;
    }

    [(BWDeferredArrayIntermediate *)v3 flush];
LABEL_11:
    v4 = -16136;
    goto LABEL_8;
  }

  if (!self->super.super._dirty)
  {
LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if ([BWDeferredContainer archiveObjectWithURL:"archiveObjectWithURL:object:error:" object:v6 error:?])
  {

    v4 = 0;
    self->_array = 0;
    self->super.super._dirty = 0;
  }

  else
  {
    [(BWDeferredArrayIntermediate *)&v6 flush];
    v4 = v7;
  }

LABEL_8:
  pthread_mutex_unlock(&self->super.super._lock);
  return v4;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_autoreleasePoolPush();
  v5 = [(NSArray *)self->_array description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@..."], -[NSString substringToIndex:](v5, "substringToIndex:", 512));
  }

  [string appendFormat:@"<%@ %p>: tag:%@ array:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), v5];
  objc_autoreleasePoolPop(v4);
  v6 = [string copy];

  return v6;
}

- (uint64_t)archive:(id *)a1 .cold.2(id *a1, _DWORD *a2)
{
  v10 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v2, v12, v13, v14, v15, vars0, vars8);
  v5 = qword_1EB58E478;
  v6 = [*a1 code];
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< BWDeferredContainerIntermediate >>>>", 0x4C9, v2, v7, v8, v11);
  *a2 = result;
  return result;
}

@end