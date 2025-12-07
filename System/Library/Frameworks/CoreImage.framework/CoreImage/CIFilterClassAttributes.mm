@interface CIFilterClassAttributes
+ (id)_attributesWithClass:(Class)class;
+ (id)cache;
+ (id)classAttributesForClass:(Class)class;
+ (id)classAttributesForName:(id)name;
+ (void)clearCache;
@end

@implementation CIFilterClassAttributes

+ (id)_attributesWithClass:(Class)class
{
  v42[1] = *MEMORY[0x1E69E9840];
  if (![(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    return 0;
  }

  CustomAttributes = getCustomAttributes(class, v4);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v40 = NSStringFromClass(class);
  v7 = bundleForCIFilter();
  v38 = [MEMORY[0x1E696AAE8] bundleForClass:class];
  v10 = classIsBuiltinFilter(class, v8);
  if (v10)
  {
    v39 = 1;
  }

  else
  {
    v39 = classIsSystemFilter(class, v9);
  }

  v11 = [(NSMutableDictionary *)CustomAttributes valueForKey:@"CIAttributeFilterName"];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v40;
  }

  [dictionary setValue:v12 forKey:@"CIAttributeFilterName"];
  v13 = [(NSMutableDictionary *)CustomAttributes valueForKey:@"CIAttributeFilterDisplayName"];
  v14 = v10 ^ 1;
  if (v13)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v13 = [v7 localizedStringForKey:v40 value:0 table:@"Filters"];
  }

  if (!v13)
  {
    v13 = [v38 localizedStringForKey:v40 value:0 table:@"Filters"];
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v40;
  }

  [dictionary setValue:v15 forKey:@"CIAttributeFilterDisplayName"];
  v16 = [(NSMutableDictionary *)CustomAttributes valueForKey:?];
  if (v16)
  {
    [dictionary setValue:v16 forKey:@"CIAttributeDescription"];
  }

  v17 = [CIFilterClassCategories classCategoriesForClass:class];
  if (v17)
  {
    [dictionary setValue:v17 forKey:@"CIAttributeFilterCategories"];
  }

  v18 = [(NSMutableDictionary *)CustomAttributes valueForKey:@"CIAttributeFilterAvailable_iOS"];
  if (((v18 != 0) & v39) == 1)
  {
    [dictionary setValue:v18 forKey:@"CIAttributeFilterAvailable_iOS"];
  }

  v19 = [(NSMutableDictionary *)CustomAttributes valueForKey:@"CIAttributeFilterAvailable_Mac"];
  if (((v19 != 0) & v39) == 1)
  {
    [dictionary setValue:v19 forKey:@"CIAttributeFilterAvailable_Mac"];
  }

  v20 = [(NSMutableDictionary *)CustomAttributes valueForKey:@"CIAttributeReferenceDocumentation"];
  if (((v20 == 0) & v39) == 1)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"http://developer.apple.com/library/ios/documentation/GraphicsImaging/Reference/CoreImageFilterReference/index.html#//apple_ref/doc/filter/ci/%@", v40];
    v20 = [MEMORY[0x1E695DFF8] URLWithString:v21];
  }

  if (v20)
  {
    [dictionary setValue:v20 forKey:@"CIAttributeReferenceDocumentation"];
  }

  v22 = [CIFilterClassInfo classInfoForClass:class];
  if ([objc_msgSend(v22 "inputKeys")])
  {
    v23 = 0;
    v41 = v22;
    v37 = v10;
    while (1)
    {
      v24 = [objc_msgSend(v22 "inputKeys")];
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      StdAttrsForKey = getStdAttrsForKey(v24);
      if (StdAttrsForKey)
      {
        [dictionary2 addEntriesFromDictionary:StdAttrsForKey];
      }

      v27 = [objc_msgSend(v22 "inputClasses")];
      if ([(__CFString *)v27 length])
      {
        if ([(__CFString *)v27 isEqualToString:@"__WrappedNSNumber"])
        {
          v27 = @"NSNumber";
        }

        [dictionary2 setValue:v27 forKey:@"CIAttributeClass"];
      }

      if (v10)
      {
        break;
      }

      v32 = [(NSString *)v24 substringFromIndex:5];
      if ((v39 & 1) == 0)
      {
        v30 = dictionary2;
        v31 = v32;
        v34 = @"CIAttributeDisplayName";
        goto LABEL_51;
      }

      [dictionary2 setValue:objc_msgSend(v38 forKey:{"localizedStringForKey:value:table:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%@", v40, v24), v32, @"Filters", @"CIAttributeDisplayName"}];
      v10 = v37;
      v33 = [v38 localizedStringForKey:objc_msgSend(MEMORY[0x1E696AEC0] value:"stringWithFormat:" table:{@"%@.%@.description", v40, v24), 0, @"Filters"}];
      if (v33)
      {
        v31 = v33;
        v30 = dictionary2;
        goto LABEL_49;
      }

LABEL_52:
      v35 = [(NSMutableDictionary *)CustomAttributes valueForKey:v24];
      if (v35)
      {
        [dictionary2 addEntriesFromDictionary:v35];
      }

      [dictionary setValue:dictionary2 forKey:v24];
      ++v23;
      v22 = v41;
      if ([objc_msgSend(v41 "inputKeys")] <= v23)
      {
        goto LABEL_55;
      }
    }

    if (![dictionary2 objectForKey:@"CIAttributeType"])
    {
      if ([(__CFString *)v27 isEqual:@"CIColor"])
      {
        [dictionary2 setValue:@"CIAttributeTypeColor" forKey:@"CIAttributeType"];
      }

      if ([(__CFString *)v27 isEqual:@"CIImage"])
      {
        [dictionary2 setValue:@"CIAttributeTypeImage" forKey:@"CIAttributeType"];
      }
    }

    [dictionary2 setValue:objc_msgSend(v7 forKey:{"localizedStringForKey:value:table:", v24, -[NSString substringFromIndex:](v24, "substringFromIndex:", 5), @"Keys", @"CIAttributeDisplayName"}];
    v28 = [v7 localizedStringForKey:v24 value:@"<none>" table:@"Descriptions"];
    v29 = [v7 localizedStringForKey:objc_msgSend(MEMORY[0x1E696AEC0] value:"stringWithFormat:" table:{@"%@.%@", v40, v24), v28, @"Descriptions"}];
    if ([v29 isEqual:@"<none>"])
    {
      goto LABEL_52;
    }

    v30 = dictionary2;
    v31 = v29;
LABEL_49:
    v34 = @"CIAttributeDescription";
LABEL_51:
    [v30 setValue:v31 forKey:v34];
    goto LABEL_52;
  }

LABEL_55:
  if ((v39 & 1) != 0 && ![dictionary valueForKey:@"CIAttributeFilterCategories"])
  {
    v42[0] = @"CICategoryApplePrivate";
    [dictionary setValue:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObjects:count:", v42, 1), @"CIAttributeFilterCategories"}];
  }

  return dictionary;
}

+ (id)cache
{
  if (+[CIFilterClassAttributes cache]::onceToken != -1)
  {
    +[CIFilterClassAttributes cache];
  }

  return +[CIFilterClassAttributes cache]::cache;
}

uint64_t __32__CIFilterClassAttributes_cache__block_invoke()
{
  +[CIFilterClassAttributes cache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIFilterClassAttributes cache]::cache setName:@"com.apple.coreimage.nscache.CIFilterClassAttributes"];
  [+[CIFilterClassAttributes cache]::cache setCountLimit:256];
  v0 = +[CIFilterClassAttributes cache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (void)clearCache
{
  cache = [self cache];

  [cache removeAllObjects];
}

+ (id)classAttributesForClass:(Class)class
{
  cache = [self cache];
  v5 = objc_opt_class();
  if (![(objc_class *)class isSubclassOfClass:v5])
  {
    return 0;
  }

  if (v5 == class)
  {
    return MEMORY[0x1E695E0F8];
  }

  v6 = [cache objectForKey:class];
  if (!v6)
  {
    v6 = [CIFilterClassAttributes _attributesWithClass:class];
    [cache setObject:v6 forKey:class];
  }

  return v6;
}

+ (id)classAttributesForName:(id)name
{
  v4 = NSClassFromString(name);

  return [self classAttributesForClass:v4];
}

@end