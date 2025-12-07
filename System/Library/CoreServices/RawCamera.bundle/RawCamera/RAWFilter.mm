@interface RAWFilter
+ (id)filterWithDefaultsForClass:(Class)class;
+ (id)filterWithDefaultsForName:(id)name;
+ (id)filterWithName:(id)name;
- (RAWFilter)initWithCoder:(id)coder;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied;
- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied isAlphaOne:(BOOL)one;
- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space;
- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space isAlphaOne:(BOOL)one;
- (id)applyMatrixToImage:(id)image vectorR:(id)r vectorG:(id)g vectorB:(id)b vectorBias:(id)bias inSpace:(CGColorSpace *)space outSpace:(CGColorSpace *)outSpace;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimitiveNumberValue:(id)value inVariable:(id *)variable forKey:(id)key;
- (void)takeAttributesFromDictionary:(id)dictionary;
- (void)takeAttributesFromDictionary:(id)dictionary forKeys:(id)keys;
@end

@implementation RAWFilter

+ (id)filterWithName:(id)name
{
  nameCopy = name;
  if ([(NSString *)nameCopy hasPrefix:@"RAW"])
  {
    NSClassFromString(nameCopy);
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)takeAttributesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  inputKeys = [(RAWFilter *)self inputKeys];
  [(RAWFilter *)self takeAttributesFromDictionary:dictionaryCopy forKeys:inputKeys];
}

- (void)takeAttributesFromDictionary:(id)dictionary forKeys:(id)keys
{
  v22 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = keys;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (([v9 isEqualToString:@"inputImage"] & 1) == 0)
        {
          v10 = [dictionaryCopy objectForKeyedSubscript:@"valueBlock"];
          if (v10 && ([v9 stringByReplacingCharactersInRange:0 withString:{5, &stru_284938540}], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_opt_class(), NSStringFromClass(v12), v13 = objc_claimAutoreleasedReturnValue(), (v10)[2](v10, v13, v11), v14 = objc_claimAutoreleasedReturnValue(), v13, v11, v14) || (objc_msgSend(dictionaryCopy, "objectForKeyedSubscript:", v9), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            [(RAWFilter *)self setValue:v14 forKey:v9];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

+ (id)filterWithDefaultsForName:(id)name
{
  v3 = [MEMORY[0x277CBF750] filterWithName:name];
  [v3 setDefaults];

  return v3;
}

+ (id)filterWithDefaultsForClass:(Class)class
{
  v3 = MEMORY[0x277CBF750];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 filterWithName:v5];

  [v6 setDefaults];

  return v6;
}

- (void)setPrimitiveNumberValue:(id)value inVariable:(id *)variable forKey:(id)key
{
  obj = value;
  keyCopy = key;
  if (*variable != obj)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x277CCABB0];
      [obj doubleValue];
      v10 = [v9 numberWithDouble:?];

      obj = v10;
    }

    if (!*variable || ([obj isEqualToNumber:?] & 1) == 0)
    {
      [(RAWFilter *)self willChangeValueForKey:keyCopy];
      objc_storeStrong(variable, obj);
      [(RAWFilter *)self didChangeValueForKey:keyCopy];
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    inputKeys = [(RAWFilter *)self inputKeys];
    v5 = [inputKeys count];
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = [inputKeys objectAtIndexedSubscript:i];
        v8 = [(RAWFilter *)self valueForKey:v7];
        if (v8)
        {
          v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CI_%@", v7];
          TypeID = CGColorSpaceGetTypeID();
          if (TypeID == CFGetTypeID(v8) && ((v11 = sub_2338F2BB4(), v12 = CFEqual(v8, v11), v13 = @"Adobe RGB Linear", v12) || (v13 = CGColorSpaceCopyICCData(v8)) != 0))
          {
            v14 = v13;

            v8 = v14;
          }

          else
          {
            v14 = 0;
          }

          [coderCopy encodeObject:v8 forKey:v9];
        }
      }
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"CIRequiresKeyedArchiver" format:@"CoreImage doesn't support old-style archiving"];
  }
}

- (RAWFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_27;
  }

  v5 = [(RAWFilter *)self init];
  selfCopy = v5;
  if (!v5)
  {
    self = 0;
    goto LABEL_27;
  }

  inputKeys = [(RAWFilter *)v5 inputKeys];
  v8 = [inputKeys count];
  if (!v8)
  {
    goto LABEL_24;
  }

  v25 = selfCopy;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    v13 = v12;
    v14 = v11;
    v12 = [inputKeys objectAtIndexedSubscript:v9];

    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"CI_%@", v12];
    if (![coderCopy containsValueForKey:v11])
    {

      v10 = 0;
      goto LABEL_22;
    }

    v15 = [coderCopy decodeObjectForKey:v11];

    v10 = v15;
    if (!v10)
    {
      goto LABEL_22;
    }

    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v10) && CFEqual(v10, @"Adobe RGB Linear"))
    {
      v17 = sub_2338F2BB4();
    }

    else
    {
      v20 = CFDataGetTypeID();
      v19 = v10;
      if (v20 != CFGetTypeID(v10))
      {
        goto LABEL_20;
      }

      v19 = v10;
      if (CFDataGetLength(v10) < 0xFB)
      {
        goto LABEL_20;
      }

      BytePtr = CFDataGetBytePtr(v10);
      v19 = v10;
      if (!BytePtr)
      {
        goto LABEL_20;
      }

      v19 = v10;
      if (*(BytePtr + 9) != 1886610273)
      {
        goto LABEL_20;
      }

      v19 = v10;
      if (*(BytePtr + 4) != 541214546)
      {
        goto LABEL_20;
      }

      v22 = CGDataProviderCreateWithCopyOfData();
      v19 = v10;
      if (!v22)
      {
        goto LABEL_20;
      }

      ICCBased = CGColorSpaceCreateICCBased(3uLL, 0, v22, 0);
      CGDataProviderRelease(v22);
      v17 = CFAutorelease(ICCBased);
    }

    v18 = v17;

    if (v18)
    {
      v19 = v18;
LABEL_20:

      v10 = v19;
    }

    [(RAWFilter *)v25 setValue:v10 forKey:v12];
LABEL_22:
    ++v9;
  }

  while (v8 != v9);

  selfCopy = v25;
LABEL_24:
  self = selfCopy;

  selfCopy = self;
LABEL_27:

  return selfCopy;
}

- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space
{
  v8 = [(RAWFilter *)self apply:apply image:image extent:callback roiCallback:arguments arguments:space inoutSpace:0 isAlphaOne:extent.origin.x, extent.origin.y, extent.size.width, extent.size.height];

  return v8;
}

- (id)apply:(id)apply image:(id)image extent:(CGRect)extent roiCallback:(id)callback arguments:(id)arguments inoutSpace:(CGColorSpace *)space isAlphaOne:(BOOL)one
{
  oneCopy = one;
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v45 = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  imageCopy = image;
  callbackCopy = callback;
  argumentsCopy = arguments;
  v34 = imageCopy;
  v20 = sub_233755CB8([argumentsCopy count] + 1);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v43 = imageCopy;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
  v22 = v21;
  if (argumentsCopy)
  {
    v23 = argumentsCopy;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v24 = [v21 arrayByAddingObjectsFromArray:v23];

  v25 = [v24 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v25)
  {
    v26 = *v38;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v37 + 1) + 8 * i);
        if (space && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v29 = [v28 imageByColorMatchingWorkingSpaceToColorSpace:space];
          [v20 addObject:v29];
        }

        else
        {
          [v20 addObject:v28];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v25);
  }

  if (oneCopy)
  {
    v41 = *MEMORY[0x277CBFA00];
    v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v42 = v25;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  }

  else
  {
    v30 = 0;
  }

  v31 = [applyCopy applyWithExtent:callbackCopy roiCallback:v20 arguments:v30 options:{x, y, width, height}];
  if (oneCopy)
  {
  }

  if (space)
  {
    v32 = [v31 imageByColorMatchingColorSpaceToWorkingSpace:space];

    v31 = v32;
  }

  return v31;
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied
{
  v7 = [(RAWFilter *)self apply:apply image:image arguments:arguments inoutSpace:space isPremultiplied:premultiplied isAlphaOne:0];

  return v7;
}

- (id)apply:(id)apply image:(id)image arguments:(id)arguments inoutSpace:(CGColorSpace *)space isPremultiplied:(BOOL)premultiplied isAlphaOne:(BOOL)one
{
  oneCopy = one;
  premultipliedCopy = premultiplied;
  v51 = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  imageCopy = image;
  argumentsCopy = arguments;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = applyCopy;
    v13 = sub_233755CB8([argumentsCopy count] + 1);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v49 = imageCopy;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v15 = v14;
    if (argumentsCopy)
    {
      v16 = argumentsCopy;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    v17 = [v14 arrayByAddingObjectsFromArray:v16];

    v18 = [v17 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v18)
    {
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          if (space && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = [v21 imageByColorMatchingWorkingSpaceToColorSpace:space];
            [v13 addObject:v22];
          }

          else
          {
            [v13 addObject:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v18);
    }

    if (premultipliedCopy)
    {
      v17 = [v13 objectAtIndexedSubscript:0];
      imageByUnpremultiplyingAlpha = [v17 imageByUnpremultiplyingAlpha];

      [v13 setObject:imageByUnpremultiplyingAlpha atIndexedSubscript:0];
    }

    [imageCopy extent];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if (oneCopy)
    {
      v47 = *MEMORY[0x277CBFA00];
      v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v48 = v17;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    }

    else
    {
      v32 = 0;
    }

    v35 = [v39 applyWithExtent:v13 arguments:v32 options:{v25, v27, v29, v31}];
    if (oneCopy)
    {
    }

    if (premultipliedCopy)
    {
      imageByPremultiplyingAlpha = [v35 imageByPremultiplyingAlpha];

      v35 = imageByPremultiplyingAlpha;
    }

    if (space)
    {
      v37 = [v35 imageByColorMatchingColorSpaceToWorkingSpace:space];

      v35 = v37;
    }

    v34 = v35;
  }

  else
  {
    name = [applyCopy name];
    NSLog(&cfstr_KernelShouldBe.isa, name);

    v34 = 0;
  }

  return v34;
}

- (id)applyMatrixToImage:(id)image vectorR:(id)r vectorG:(id)g vectorB:(id)b vectorBias:(id)bias inSpace:(CGColorSpace *)space outSpace:(CGColorSpace *)outSpace
{
  imageCopy = image;
  rCopy = r;
  gCopy = g;
  bCopy = b;
  biasCopy = bias;
  [rCopy W];
  if (v19 == 0.0 && ([gCopy W], v20 == 0.0) && (objc_msgSend(bCopy, "W"), v21 == 0.0) && (objc_msgSend(biasCopy, "W"), v22 == 0.0))
  {
    if (space)
    {
      v25 = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:space];

      imageCopy = v25;
    }

    v26 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
    v27 = biasCopy;
    if (!biasCopy)
    {
      v27 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0];
    }

    v28 = [imageCopy filteredImage:@"CIColorMatrix" keysAndValues:{@"inputRVector", rCopy, @"inputGVector", gCopy, @"inputBVector", bCopy, @"inputAVector", v26, @"inputBiasVector", v27, 0}];

    if (!biasCopy)
    {
    }

    if (outSpace)
    {
      v29 = [v28 imageByColorMatchingColorSpaceToWorkingSpace:outSpace];

      imageCopy = v29;
    }

    else
    {
      imageCopy = v28;
    }
  }

  else
  {
    NSLog(&cfstr_VectorsOfRGBBi.isa);
  }

  v23 = imageCopy;

  return imageCopy;
}

@end