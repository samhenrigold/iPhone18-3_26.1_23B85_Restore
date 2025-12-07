@interface CUIDesignLibrary
+ (CUIDesignColorTraits2)designColorTraitsWithName:(SEL)name designSystem:(int64_t)system palette:(int64_t)palette colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)self0;
+ (id)colorWithName:(int64_t)name designSystem:(int64_t)system palette:(int64_t)palette colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)self0 error:(id *)self1;
@end

@implementation CUIDesignLibrary

+ (CUIDesignColorTraits2)designColorTraitsWithName:(SEL)name designSystem:(int64_t)system palette:(int64_t)palette colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)self0
{
  retstr->var0 = 1;
  retstr->var1 = system;
  retstr->var2 = palette;
  retstr->var3 = scheme;
  retstr->var4 = contrast;
  retstr->var5 = styling;
  retstr->var6 = gamut;
  retstr->var7 = level;
  retstr->var8 = a11;
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  return result;
}

+ (id)colorWithName:(int64_t)name designSystem:(int64_t)system palette:(int64_t)palette colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)self0 error:(id *)self1
{
  kdebug_trace();
  result = [CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:system colorScheme:scheme contrast:contrast styling:styling error:error];
  if (result)
  {
    v18 = result;
    _CUILog(3, "[CUIDesignLibrary colorWithName:%d]", name, system, palette, scheme, contrast, styling, gamut);
    v19 = [v18 colorWithName:name palette:palette displayGamut:gamut hierarchyLevel:level error:error];
    kdebug_trace();
    return v19;
  }

  return result;
}

@end