@interface AVTCompositor
- (AVTCompositor)init;
- (void)componentDidChangeForTypes:(unint64_t)types;
- (void)configureMaterial:(id)material propertyNamed:(id)named memoji:(id)memoji;
- (void)skinColorDidChange;
@end

@implementation AVTCompositor

- (AVTCompositor)init
{
  v6.receiver = self;
  v6.super_class = AVTCompositor;
  v2 = [(AVTCompositor *)&v6 init];
  if (v2)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    textureProviders = v2->_textureProviders;
    v2->_textureProviders = Mutable;
  }

  return v2;
}

- (void)skinColorDidChange
{
  v2 = self->_textureProviders;
  v3 = [NSMutableSet countByEnumeratingWithState:v2 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(8 * i) skinColorDidChange];
      }

      v4 = [NSMutableSet countByEnumeratingWithState:v2 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v4);
  }
}

- (void)componentDidChangeForTypes:(unint64_t)types
{
  if (types)
  {
    v3 = self->_textureProviders;
    v4 = [NSMutableSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v4)
    {
      v5 = v4;
      v6 = MEMORY[0];
      do
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(8 * i) componentDidChangeForTypes:?];
        }

        v5 = [NSMutableSet countByEnumeratingWithState:v3 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v5);
    }
  }
}

- (void)configureMaterial:(id)material propertyNamed:(id)named memoji:(id)memoji
{
  materialCopy = material;
  namedCopy = named;
  memojiCopy = memoji;
  v9 = [materialCopy valueForKey:?];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69DF300]);
    [materialCopy setValue:? forKey:?];
  }

  contents = [v9 contents];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [AVTCompositorTextureProvider initWithCompositor:"initWithCompositor:memoji:propertyName:" memoji:? propertyName:?];
    [v9 setContents:?];
  }
}

@end