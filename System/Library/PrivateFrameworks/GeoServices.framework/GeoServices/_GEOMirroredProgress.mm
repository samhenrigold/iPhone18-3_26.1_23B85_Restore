@interface _GEOMirroredProgress
- (void)_registerForKVO;
- (void)_unregisterForKVO;
- (void)_update;
- (void)dealloc;
@end

@implementation _GEOMirroredProgress

- (void)_update
{
  if ([(NSProgress *)self->_originalProgress isCancelled])
  {
    [(_GEOMirroredProgress *)self cancel];
  }

  else
  {
    if ([(NSProgress *)self->_originalProgress isIndeterminate])
    {
      [(_GEOMirroredProgress *)self setTotalUnitCount:-1];
      selfCopy2 = self;
      totalUnitCount = -1;
    }

    else
    {
      isFinished = [(NSProgress *)self->_originalProgress isFinished];
      [(_GEOMirroredProgress *)self setTotalUnitCount:100];
      if (isFinished)
      {
        totalUnitCount = [(_GEOMirroredProgress *)self totalUnitCount];
      }

      else
      {
        [(NSProgress *)self->_originalProgress fractionCompleted];
        totalUnitCount = (v6 * 100.0);
      }

      selfCopy2 = self;
    }

    [(_GEOMirroredProgress *)selfCopy2 setCompletedUnitCount:totalUnitCount];
  }

  kind = [(_GEOMirroredProgress *)self kind];
  kind2 = [(NSProgress *)self->_originalProgress kind];
  v9 = kind2;
  if (kind == kind2)
  {
  }

  else
  {
    kind3 = [(_GEOMirroredProgress *)self kind];
    kind4 = [(NSProgress *)self->_originalProgress kind];
    v12 = [kind3 isEqualToString:kind4];

    if (v12)
    {
      goto LABEL_15;
    }

    kind = [(NSProgress *)self->_originalProgress kind];
    [(_GEOMirroredProgress *)self setKind:kind];
  }

LABEL_15:
  userInfo = [(NSProgress *)self->_originalProgress userInfo];
  [(NSProgress *)self _geo_setUserInfo:userInfo];
}

- (void)_registerForKVO
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_1EFA22310 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(&unk_1EFA22310);
        }

        [(NSProgress *)self->_originalProgress addObserver:self forKeyPath:*(*(&v7 + 1) + 8 * v6++) options:0 context:_ProgressMirrorObserverContext];
      }

      while (v4 != v6);
      v4 = [&unk_1EFA22310 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_unregisterForKVO
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [&unk_1EFA22310 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(&unk_1EFA22310);
        }

        [(NSProgress *)self->_originalProgress removeObserver:self forKeyPath:*(*(&v7 + 1) + 8 * v6++) context:_ProgressMirrorObserverContext];
      }

      while (v4 != v6);
      v4 = [&unk_1EFA22310 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  [(_GEOMirroredProgress *)self _unregisterForKVO];
  v3.receiver = self;
  v3.super_class = _GEOMirroredProgress;
  [(_GEOMirroredProgress *)&v3 dealloc];
}

@end