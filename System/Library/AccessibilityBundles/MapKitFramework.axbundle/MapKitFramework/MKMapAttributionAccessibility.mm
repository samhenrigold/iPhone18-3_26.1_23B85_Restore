@interface MKMapAttributionAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MKMapAttributionAccessibility)initWithStringAttributes:(id)attributes regionalAttributions:(id)attributions underlineText:(BOOL)text applyLinkAttribution:(BOOL)attribution scale:(double)scale;
@end

@implementation MKMapAttributionAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKMapAttribution" hasInstanceMethod:@"initWithStringAttributes:regionalAttributions:underlineText:applyLinkAttribution:scale:" withFullSignature:{"@", "@", "@", "B", "B", "d", 0}];
  [validationsCopy validateClass:@"MKMapAttribution" hasInstanceVariable:@"_string" withType:"NSAttributedString"];
  [validationsCopy validateClass:@"GEOAttribution" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOAttribution" hasInstanceMethod:@"logo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOResourceManifestManager"];
  [validationsCopy validateClass:@"GEOResourceManifestManager" hasClassMethod:@"modernManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOResourceManifestManager" hasInstanceMethod:@"activeTileGroup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GEOActiveTileGroup" hasInstanceMethod:@"attributions" withFullSignature:{"@", 0}];
}

- (MKMapAttributionAccessibility)initWithStringAttributes:(id)attributes regionalAttributions:(id)attributions underlineText:(BOOL)text applyLinkAttribution:(BOOL)attribution scale:(double)scale
{
  attributionCopy = attribution;
  textCopy = text;
  attributionsCopy = attributions;
  v33.receiver = self;
  v33.super_class = MKMapAttributionAccessibility;
  v13 = [(MKMapAttributionAccessibility *)&v33 initWithStringAttributes:attributes regionalAttributions:attributionsCopy underlineText:textCopy applyLinkAttribution:attributionCopy scale:scale];
  if (![attributionsCopy count] || (objc_msgSend(attributionsCopy, "objectAtIndex:", 0), (firstObject = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = [NSClassFromString(&cfstr_Georesourceman.isa) safeValueForKey:@"modernManager"];
    v16 = [v15 safeValueForKey:@"activeTileGroup"];
    v17 = [v16 safeArrayForKey:@"attributions"];
    firstObject = [v17 firstObject];
  }

  v18 = [(MKMapAttributionAccessibility *)v13 safeValueForKey:@"_string"];
  v31 = 0;
  v32 = 0;
  v19 = [v18 length];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *MEMORY[0x29EDC7628];
    while (1)
    {
      v23 = [v18 attributesAtIndex:v21 effectiveRange:&v31];
      v24 = v23;
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v25 = [v23 objectForKey:v22];
      if (v25)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          image = [v25 image];

          v27 = [firstObject safeValueForKey:@"name"];
          if (!v27)
          {
            v28 = [firstObject safeValueForKey:@"logo"];
            v29 = [v28 hasPrefix:@"tomtom"];

            if (v29)
            {
              v27 = @"TomTom";
            }

            else
            {
              v27 = 0;
            }
          }

          [image setAccessibilityLabel:v27];

          break;
        }
      }

      v31 += v32;

      v21 = v31;
      if (v31 == 0x7FFFFFFFFFFFFFFFLL || v31 >= v20)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_18:

  return v13;
}

@end