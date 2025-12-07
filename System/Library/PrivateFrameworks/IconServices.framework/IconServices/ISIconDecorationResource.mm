@interface ISIconDecorationResource
- (ISIconDecorationResource)initWithDecoration:(id)decoration;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (void)configureWithType:(id)type;
@end

@implementation ISIconDecorationResource

- (ISIconDecorationResource)initWithDecoration:(id)decoration
{
  v14 = *MEMORY[0x1E69E9840];
  decorationCopy = decoration;
  v11.receiver = self;
  v11.super_class = ISIconDecorationResource;
  v6 = [(ISIconDecorationResource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decoration, decoration);
    identifierKind = [(ISIconDecoration *)v7->_decoration identifierKind];
    if (identifierKind == 2)
    {
      identifier = [(ISIconDecoration *)v7->_decoration identifier];
      [(ISIconDecorationResource *)v7 configureWithType:identifier];
    }

    else
    {
      identifier = _ISDefaultLog(identifierKind);
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = decorationCopy;
        _os_log_impl(&dword_1A77B8000, identifier, OS_LOG_TYPE_DEFAULT, "Invalid decoration %@. Badging with app an icon is not currently supported.", buf, 0xCu);
      }
    }
  }

  return v7;
}

- (void)configureWithType:(id)type
{
  v32 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  identifier = [(ISIconDecoration *)self->_decoration identifier];
  v6 = UTTypeConformsTo(identifier, @"com.apple.icon-decoration");

  if (v6)
  {
    identifier2 = [(ISIconDecoration *)self->_decoration identifier];
    v9 = _UTTypeCopyGlyphName();

    if (!v9)
    {
      identifier3 = [(ISIconDecoration *)self->_decoration identifier];
      v21 = UTTypeConformsTo(identifier3, @"com.apple.icon-decoration.system");

      if (!v21)
      {
        goto LABEL_17;
      }

      v23 = _ISDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [(ISIconDecorationResource *)typeCopy configureWithType:v23];
      }

      identifier4 = [(ISIconDecoration *)self->_decoration identifier];
      v9 = _UTTypeCopyIconName();

      if (!v9)
      {
LABEL_17:
        v14 = _ISDefaultLog(v22);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v27 = typeCopy;
          _os_log_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_DEFAULT, "No resource named for decoration type '%@'", buf, 0xCu);
        }

        v9 = 0;
        goto LABEL_21;
      }
    }

    identifier5 = [(ISIconDecoration *)self->_decoration identifier];
    v11 = UTTypeCopyDeclaringBundleURL(identifier5);

    Unique = _CFBundleCreateUnique();
    if (!Unique)
    {
      v14 = v11;
LABEL_21:

      goto LABEL_22;
    }

    v13 = Unique;
    v14 = CFBundleCopyResourceURL(Unique, @"Assets", @"car", 0);
    CFRelease(v13);

    if (v14)
    {
      v25 = 0;
      v15 = [ISAssetCatalogResource assetCatalogResourceWithURL:v14 imageName:v9 error:&v25];
      v16 = v25;
      internalResource = self->_internalResource;
      self->_internalResource = v15;

      if (!self->_internalResource && v16)
      {
        v19 = _ISDefaultLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v27 = v9;
          v28 = 2112;
          v29 = v14;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_1A77B8000, v19, OS_LOG_TYPE_DEFAULT, "Failed to load resource named: %@ from asset catalog at URL: %@ with error: %@", buf, 0x20u);
        }
      }

      goto LABEL_21;
    }
  }

  else
  {
    v9 = _ISDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ISIconDecorationResource *)typeCopy configureWithType:v9];
    }
  }

LABEL_22:
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  internalResource = self->_internalResource;
  if (internalResource)
  {
    internalResource = [internalResource imageForSize:size.width scale:{size.height, scale}];
    v4 = vars8;
  }

  return internalResource;
}

- (void)configureWithType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "No glyph resource specified, looking for an icon resource for system type '%@'", &v2, 0xCu);
}

- (void)configureWithType:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Decoration type %@ does not conform to %@", &v3, 0x16u);
}

@end