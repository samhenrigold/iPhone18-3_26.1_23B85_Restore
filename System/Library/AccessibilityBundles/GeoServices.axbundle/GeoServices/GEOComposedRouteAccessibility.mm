@interface GEOComposedRouteAccessibility
+ (id)_accessibilityTransitArtworkTextForDataList:(id)list;
- (id)_accessibilityTransitArtworkText;
@end

@implementation GEOComposedRouteAccessibility

- (id)_accessibilityTransitArtworkText
{
  v3 = objc_opt_class();
  routePlanningArtworks = [(GEOComposedRouteAccessibility *)self routePlanningArtworks];
  v5 = [v3 _accessibilityTransitArtworkTextForDataList:routePlanningArtworks];

  return v5;
}

+ (id)_accessibilityTransitArtworkTextForDataList:(id)list
{
  v58 = *MEMORY[0x29EDCA608];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = list;
  v35 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  v3 = 0;
  if (v35)
  {
    v4 = 0x29F2C1000uLL;
    v34 = *v52;
    do
    {
      v5 = 0;
      do
      {
        if (*v52 != v34)
        {
          v6 = v5;
          objc_enumerationMutation(obj);
          v5 = v6;
        }

        v36 = v5;
        v7 = *(*(&v51 + 1) + 8 * v5);
        if ([v3 length])
        {
          v31 = accessibilityLocalizedString(@"TRANSIT_ARTWORK_SEPARATOR");
          v32 = @"__AXStringForVariablesSentinel";
          v8 = __AXStringForVariables();

          v3 = v8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v38 = v7;
          v39 = [v38 countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v39)
          {
            v9 = *v48;
            v37 = *v48;
            do
            {
              v10 = 0;
              do
              {
                if (*v48 != v9)
                {
                  objc_enumerationMutation(v38);
                }

                v40 = v10;
                v11 = *(*(&v47 + 1) + 8 * v10);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v45 = 0u;
                  v46 = 0u;
                  v43 = 0u;
                  v44 = 0u;
                  v42 = v11;
                  v12 = [v42 countByEnumeratingWithState:&v43 objects:v55 count:16];
                  if (v12)
                  {
                    v13 = v12;
                    v14 = *v44;
                    do
                    {
                      for (i = 0; i != v13; ++i)
                      {
                        if (*v44 != v14)
                        {
                          objc_enumerationMutation(v42);
                        }

                        v16 = *(*(&v43 + 1) + 8 * i);
                        if ([v16 conformsToProtocol:{*(v4 + 1848), v31}])
                        {
                          accessibilityText = [v16 accessibilityText];
                          if (![accessibilityText length] && objc_msgSend(v16, "artworkSourceType") == 3)
                          {
                            v18 = MEMORY[0x29C2D7700](@"MKServerFormattedStringParameters");
                            v19 = MEMORY[0x29C2D7700](@"MKServerFormattedString");
                            if (v18)
                            {
                              v20 = v19;
                              if (v19)
                              {
                                v41 = [[v18 alloc] initWithInstructionsDistanceDetailLevel:0 variableOverrides:0];
                                v21 = [v20 alloc];
                                textDataSource = [v16 textDataSource];
                                text = [textDataSource text];
                                v24 = [v21 initWithGeoServerString:text parameters:v41];

                                v25 = [v24 multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
                                attributedString = [v25 attributedString];
                                [attributedString string];
                                v28 = v27 = v3;

                                v4 = 0x29F2C1000;
                                accessibilityText = v28;
                                v3 = v27;
                              }
                            }
                          }

                          if ([accessibilityText length])
                          {
                            v31 = accessibilityText;
                            v32 = @"__AXStringForVariablesSentinel";
                            v29 = __AXStringForVariables();

                            if ([v16 hasRoutingIncidentBadge])
                            {
                              v31 = accessibilityLocalizedString(@"TRANSIT_INCIDENT");
                              v32 = @"__AXStringForVariablesSentinel";
                              v3 = __AXStringForVariables();
                            }

                            else
                            {
                              v3 = v29;
                            }
                          }
                        }

                        else
                        {
                          v31 = v16;
                          _AXAssert();
                        }
                      }

                      v13 = [v42 countByEnumeratingWithState:&v43 objects:v55 count:16];
                    }

                    while (v13);
                  }

                  v9 = v37;
                }

                else
                {
                  v31 = v11;
                  _AXAssert();
                }

                v10 = v40 + 1;
              }

              while (v40 + 1 != v39);
              v39 = [v38 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v39);
          }
        }

        else
        {
          v31 = v7;
          _AXAssert();
        }

        v5 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v35);
  }

  return v3;
}

@end