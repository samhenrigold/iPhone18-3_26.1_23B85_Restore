@interface _INBundleImage
- (BOOL)_isSystem;
- (_INBundleImage)initWithCoder:(id)coder;
- (_INBundleImage)initWithStringRepresentation:(id)representation;
- (id)_URLRepresentation;
- (id)_bundleIdentifier;
- (id)_bundlePath;
- (id)_copyWithSubclass:(Class)subclass;
- (id)_dictionaryRepresentation;
- (id)_initWithURLRepresentation:(id)representation;
- (id)stringRepresentation;
- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion;
- (void)_setBundleIdentifier:(id)identifier;
- (void)_setBundlePath:(id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _INBundleImage

- (id)stringRepresentation
{
  imageBundle = [(_INBundleImage *)self imageBundle];
  bundlePath = [imageBundle bundlePath];

  if (bundlePath)
  {
    imageBundle2 = [(_INBundleImage *)self imageBundle];
    bundlePath2 = [imageBundle2 bundlePath];
    uRLPathAllowedCharacterSet = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
    v8 = [bundlePath2 stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  }

  else
  {
    v8 = &stru_1F01E0850;
  }

  imageBundle3 = [(_INBundleImage *)self imageBundle];
  bundleType = [imageBundle3 bundleType];

  if (bundleType > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E7283E30[bundleType];
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  imageName = [(_INBundleImage *)self imageName];
  imageBundle4 = [(_INBundleImage *)self imageBundle];
  bundleIdentifier = [imageBundle4 bundleIdentifier];
  v16 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v17 = bundleIdentifier;
  }

  else
  {
    v17 = &stru_1F01E0850;
  }

  v18 = [v12 initWithFormat:@"%@://%@/?%@=%@&%@=%@&%@=%@", @"siri-client-cache", v8, @"bundleType", v11, @"imageName", imageName, @"bundleIdentifier", v17];

  return v18;
}

- (BOOL)_isSystem
{
  imageBundle = [(_INBundleImage *)self imageBundle];
  v3 = [imageBundle bundleType] == 2;

  return v3;
}

- (void)_loadImageDataAndSizeWithHelper:(id)helper accessSpecifier:(id)specifier completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  specifierCopy = specifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if (helperCopy && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v11 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v19 = "[_INBundleImage(INPortableImageLoader) _loadImageDataAndSizeWithHelper:accessSpecifier:completion:]";
        v20 = 2112;
        v21 = helperCopy;
        _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Attempting bundle image loading strategy with helper: %@", buf, 0x16u);
      }

      imageBundle = [(_INBundleImage *)self imageBundle];
      imageName = [(_INBundleImage *)self imageName];
      [helperCopy loadImageDataFromBundle:imageBundle withImageName:imageName accessSpecifier:specifierCopy completion:completionCopy];
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      imageBundle = [MEMORY[0x1E696AEC0] stringWithFormat:@"No helper to use which can load image %@ from bundle", self];
      v17 = imageBundle;
      imageName = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [v14 errorWithDomain:@"IntentsErrorDomain" code:6003 userInfo:imageName];
      (*(completionCopy + 2))(completionCopy, 0, 0, v15, 0.0, 0.0);
    }
  }
}

- (_INBundleImage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _INBundleImage;
  v5 = [(INImage *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageName"];
    imageName = v5->_imageName;
    v5->_imageName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageBundle"];
    imageBundle = v5->_imageBundle;
    v5->_imageBundle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _INBundleImage;
  coderCopy = coder;
  [(INImage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_imageName forKey:{@"imageName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_imageBundle forKey:@"imageBundle"];
}

- (void)_setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  imageBundle = [(_INBundleImage *)self imageBundle];
  [imageBundle setBundleIdentifier:identifierCopy];
}

- (id)_bundleIdentifier
{
  imageBundle = [(_INBundleImage *)self imageBundle];
  bundleIdentifier = [imageBundle bundleIdentifier];

  return bundleIdentifier;
}

- (void)_setBundlePath:(id)path
{
  pathCopy = path;
  imageBundle = [(_INBundleImage *)self imageBundle];
  [imageBundle setBundlePath:pathCopy];
}

- (id)_bundlePath
{
  imageBundle = [(_INBundleImage *)self imageBundle];
  bundlePath = [imageBundle bundlePath];

  return bundlePath;
}

- (id)_copyWithSubclass:(Class)subclass
{
  v11.receiver = self;
  v11.super_class = _INBundleImage;
  v4 = [(INImage *)&v11 _copyWithSubclass:subclass];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    imageName = [(_INBundleImage *)self imageName];
    [v5 setImageName:imageName];

    imageBundle = [(_INBundleImage *)self imageBundle];
    [v5 setImageBundle:imageBundle];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (id)_dictionaryRepresentation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = _INBundleImage;
  _dictionaryRepresentation = [(INImage *)&v9 _dictionaryRepresentation];
  v4 = [_dictionaryRepresentation mutableCopy];

  v10 = @"imageName";
  imageName = self->_imageName;
  null = imageName;
  if (!imageName)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v11[0] = null;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [v4 addEntriesFromDictionary:v7];

  if (!imageName)
  {
  }

  return v4;
}

- (_INBundleImage)initWithStringRepresentation:(id)representation
{
  v4 = [MEMORY[0x1E695DFF8] URLWithString:representation];
  v5 = [(_INBundleImage *)self _initWithURLRepresentation:v4];

  return v5;
}

- (id)_URLRepresentation
{
  v2 = MEMORY[0x1E695DFF8];
  stringRepresentation = [(_INBundleImage *)self stringRepresentation];
  v4 = [v2 URLWithString:stringRepresentation];

  return v4;
}

- (id)_initWithURLRepresentation:(id)representation
{
  v45 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (representationCopy)
  {
    v43.receiver = self;
    v43.super_class = _INBundleImage;
    self = [(INImage *)&v43 _initWithIdentifier:0];
    if (!self)
    {
LABEL_31:
      self = self;
      selfCopy = self;
      goto LABEL_32;
    }

    v5 = [MEMORY[0x1E696AF20] componentsWithURL:representationCopy resolvingAgainstBaseURL:0];
    scheme = [v5 scheme];
    v7 = [scheme isEqualToString:@"siri-client-cache"];

    if (v7)
    {
      path = [v5 path];
      v9 = objc_alloc_init(INImageBundle);
      if (([path isEqualToString:@"/"] & 1) == 0)
      {
        stringByRemovingPercentEncoding = [path stringByRemovingPercentEncoding];
        [(INImageBundle *)v9 setBundlePath:stringByRemovingPercentEncoding];
      }

      v35 = path;
      v37 = representationCopy;
      v36 = v5;
      queryItems = [v5 queryItems];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v12 = [queryItems countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v38 = 0;
        v15 = *v40;
        v16 = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(queryItems);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            name = [v18 name];
            v20 = [name isEqualToString:@"bundleType"];

            if (v20)
            {
              value = [v18 value];
              v22 = [value isEqualToString:@"a"];

              if (v22)
              {
                v16 = 0;
              }

              else
              {
                value2 = [v18 value];
                v27 = [value2 isEqualToString:@"s"];

                if (v27)
                {
                  v16 = 2;
                }
              }
            }

            else
            {
              name2 = [v18 name];
              v24 = [name2 isEqualToString:@"imageName"];

              if (v24)
              {
                value3 = [v18 value];

                v14 = value3;
              }

              else
              {
                name3 = [v18 name];
                v29 = [name3 isEqualToString:@"bundleIdentifier"];

                if (v29)
                {
                  value4 = [v18 value];
                  if ([value4 length])
                  {
                    value5 = [v18 value];
                  }

                  else
                  {
                    value5 = 0;
                  }

                  v38 = value5;
                }
              }
            }
          }

          v13 = [queryItems countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
        v38 = 0;
        v16 = 1;
      }

      [v34 setBundleType:v16];
      [v34 setBundleIdentifier:v38];
      [(_INBundleImage *)self setImageBundle:v34];
      [(_INBundleImage *)self setImageName:v14];

      representationCopy = v37;
      goto LABEL_31;
    }
  }

  selfCopy = 0;
LABEL_32:

  return selfCopy;
}

@end