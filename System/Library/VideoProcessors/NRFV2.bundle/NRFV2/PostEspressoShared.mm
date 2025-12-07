@interface PostEspressoShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders networkVersion:(int)version;
@end

@implementation PostEspressoShared

- (id)getShaders:(id)shaders networkVersion:(int)version
{
  v4 = *&version;
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v10 = [PostEspressoShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetal_networkVersion_(v10, v11, shadersCopy, v4);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_29588642C();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2270;
  if (release)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2270)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(PostEspressoShared);
    v5 = qword_2A18C2270;
  }

  qword_2A18C2270 = v6;

LABEL_6:
  v7 = qword_2A18C2270;
  objc_sync_exit(v4);

  return v7;
}

@end