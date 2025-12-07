@interface EAGLSharegroup
- (EAGLSharegroup)initWithAPI:(unint64_t)i sharedWithCompute:(BOOL)compute;
- (void)dealloc;
- (void)loadGLIPlugin:(__GLDPixelFormatRec *)plugin sharedWithCompute:(BOOL)compute;
@end

@implementation EAGLSharegroup

- (void)loadGLIPlugin:(__GLDPixelFormatRec *)plugin sharedWithCompute:(BOOL)compute
{
  *(self->_private + 2) = plugin;
  *(self->_private + 3) = gfxCreateSharedState();
  if (*(self->_private + 3))
  {
    gfxRetainSharedStateAndHash();
    *(self->_private + 2) = 1;
  }
}

- (EAGLSharegroup)initWithAPI:(unint64_t)i sharedWithCompute:(BOOL)compute
{
  if (i - 1 >= 3)
  {

    return 0;
  }

  computeCopy = compute;
  v6 = dword_23A10F974[i - 1];
  v13.receiver = self;
  v13.super_class = EAGLSharegroup;
  v7 = [(EAGLSharegroup *)&v13 init];
  if (v7)
  {
    v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040FD9D5386uLL);
    v7->_private = v8;
    if (!v8)
    {
      goto LABEL_13;
    }

    *(v8 + 12) = 1;
    if ((eagl_init(0) & 1) == 0)
    {
      goto LABEL_13;
    }

    v9 = v7->_private;
    *v9 = i;
    v10 = gli_pixelformat;
    if (gli_pixelformat)
    {
      while (1)
      {
        v9 = v7->_private;
        if (*(v9 + 2))
        {
          break;
        }

        v11 = *(v10 + 12);
        if ((v11 & 0x100) != 0 && (v11 | v6) == 0xFFFFFFFF)
        {
          [(EAGLSharegroup *)v7 loadGLIPlugin:v10 sharedWithCompute:computeCopy];
        }

        v10 = *v10;
        if (!v10)
        {
          v9 = v7->_private;
          break;
        }
      }
    }

    if (!*(v9 + 2))
    {
LABEL_13:

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3 = self->_private;
  if (v3)
  {
    if (*(v3 + 2) == 1 && *(v3 + 3))
    {
      gfxReleaseSharedStateAndHash();
      *(self->_private + 3) = 0;
      v3 = self->_private;
    }

    *(v3 + 2) = 0;
    v4 = self->_private;
    if (*(v4 + 12) == 1)
    {
      eagl_dealloc();
      v4 = self->_private;
    }

    free(v4);
    self->_private = 0;
  }

  [(EAGLSharegroup *)self setDebugLabel:0];
  v5.receiver = self;
  v5.super_class = EAGLSharegroup;
  [(EAGLSharegroup *)&v5 dealloc];
}

@end