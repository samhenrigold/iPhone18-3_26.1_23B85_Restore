@interface BWDeferredDictionaryIntermediate
- (BWDeferredDictionaryIntermediate)initWithCoder:(id)coder;
- (BWDeferredDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag URL:(id)l;
- (id)archive:(int *)archive;
- (id)description;
- (id)fetchWithCustomClassesAndRetain:(id)retain err:(int *)err;
- (int)flush;
- (int)setArchive:(id)archive;
- (int)setURL:(id)l prefetchQueue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BWDeferredDictionaryIntermediate

- (BWDeferredDictionaryIntermediate)initWithDictionary:(id)dictionary tag:(id)tag URL:(id)l
{
  if (dictionary)
  {
    v8.receiver = self;
    v8.super_class = BWDeferredDictionaryIntermediate;
    v6 = [(BWDeferredIntermediate *)&v8 initWithTag:tag URL:l];
    if (v6)
    {
      v6->_dictionary = dictionary;
    }
  }

  else
  {
    [(BWDeferredDictionaryIntermediate *)self initWithDictionary:a2 tag:0 URL:tag, l];
    return 0;
  }

  return v6;
}

- (BWDeferredDictionaryIntermediate)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = BWDeferredDictionaryIntermediate;
  return [(BWDeferredIntermediate *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BWDeferredDictionaryIntermediate;
  [(BWDeferredIntermediate *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredDictionaryIntermediate;
  [(BWDeferredDataIntermediate *)&v3 dealloc];
}

- (int)setURL:(id)l prefetchQueue:(id)queue
{
  v7 = pthread_mutex_lock(&self->super.super._lock);
  if (self->_dictionary)
  {
    [BWDeferredDictionaryIntermediate setURL:v7 prefetchQueue:?];
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
  if (self->_dictionary)
  {
    [BWDeferredDictionaryIntermediate setArchive:v5];
LABEL_9:
    v7 = -16135;
    goto LABEL_5;
  }

  if (self->super._archive)
  {
    [BWDeferredDictionaryIntermediate setArchive:v5];
    goto LABEL_9;
  }

  if (self->super.super._URL)
  {
    [BWDeferredDictionaryIntermediate setArchive:v5];
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
  if (self->_dictionary)
  {
    goto LABEL_7;
  }

  v7 = [BWDeferredContainer buildArchiveClasses:retain];
  if (self->super.super._prefetching)
  {
    pthread_cond_wait(&self->super.super._cv, &self->super.super._lock);
  }

  archive = self->super._archive;
  if (archive)
  {
    self->_dictionary = [BWDeferredContainer unarchiveObject:archive classes:v7 error:&v13];

    self->super._archive = 0;
  }

  else
  {
    URL = self->super.super._URL;
    if (URL)
    {
      v12 = [BWDeferredContainer unarchiveObjectWithURL:URL classes:v7 error:&v13];
      self->_dictionary = v12;
      if (v12)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  if (self->_dictionary)
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

  return self->_dictionary;
}

- (id)archive:(int *)archive
{
  v11 = 0;
  v5 = pthread_mutex_lock(&self->super.super._lock);
  dictionary = self->_dictionary;
  if (dictionary)
  {
    if ([BWDeferredContainer archiveObject:dictionary error:&v11])
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
        [BWDeferredDictionaryIntermediate archive:?];
        v9 = -16133;
      }
    }

    else
    {
      [(BWDeferredDictionaryIntermediate *)&v11 archive:?];
      v8 = 0;
      v9 = v12;
    }
  }

  else
  {
    [BWDeferredDictionaryIntermediate archive:v5];
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
    [(BWDeferredDictionaryIntermediate *)v3 flush];
    goto LABEL_11;
  }

  if (!self->_dictionary)
  {
    if (!self->super.super._dirty)
    {
      goto LABEL_7;
    }

    [(BWDeferredDictionaryIntermediate *)v3 flush];
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
    self->_dictionary = 0;
    self->super.super._dirty = 0;
  }

  else
  {
    [(BWDeferredDictionaryIntermediate *)&v6 flush];
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
  v5 = [(NSDictionary *)self->_dictionary description];
  if ([(NSString *)v5 length]>= 0x201)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@...}", -[NSString substringToIndex:](v5, "substringToIndex:", 512)];
  }

  [string appendFormat:@"<%@ %p>: tag:%@ dictionary:%@", objc_opt_class(), self, -[BWDeferredIntermediate tag](self, "tag"), v5];
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
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< BWDeferredContainerIntermediate >>>>", 0x598, v2, v7, v8, v11);
  *a2 = result;
  return result;
}

@end