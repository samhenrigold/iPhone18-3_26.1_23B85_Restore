@interface SCNViewAccessibility
- (id)accessibilityElements;
- (id)accessibilityProjectSCNVector3Points:(id)points;
@end

@implementation SCNViewAccessibility

- (id)accessibilityProjectSCNVector3Points:(id)points
{
  v30 = *MEMORY[0x29EDCA608];
  pointsCopy = points;
  v4 = objc_opt_new();
  LOBYTE(v19) = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = pointsCopy;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v19 = 0;
        v20 = &v19;
        v21 = 0x3010000000;
        v22 = &unk_29C22BAF1;
        v23 = 0;
        v24 = 0;
        v18 = v5;
        AXPerformSafeBlock();
        v9 = *(v20 + 8);
        v10 = *(v20 + 9);
        v11 = *(v20 + 10);

        _Block_object_dispose(&v19, 8);
        LODWORD(v12) = v9;
        LODWORD(v13) = v10;
        LODWORD(v14) = v11;
        v15 = [MEMORY[0x29EDBA168] valueWithSCNVector3:{v12, v13, v14}];
        [v4 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  return v4;
}

void *__61__SCNViewAccessibility_accessibilityProjectSCNVector3Points___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) SCNVector3Value];
  result = [v2 projectPoint:?];
  v4 = *(*(a1 + 48) + 8);
  v4[8] = v5;
  v4[9] = v6;
  v4[10] = v7;
  return result;
}

- (id)accessibilityElements
{
  _accessibilitySceneKitScene = [(SCNViewAccessibility *)self _accessibilitySceneKitScene];
  v12 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();
  accessibilityContainerIsSet = [v4 accessibilityContainerIsSet];

  if ((accessibilityContainerIsSet & 1) == 0)
  {
    [_accessibilitySceneKitScene setAccessibilityContainer:self];
  }

  v11.receiver = self;
  v11.super_class = SCNViewAccessibility;
  accessibilityElements = [(SCNViewAccessibility *)&v11 accessibilityElements];
  v7 = accessibilityElements;
  if (accessibilityElements)
  {
    v8 = accessibilityElements;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, _accessibilitySceneKitScene}];
    _accessibilitySortedElementsWithin = [(SCNViewAccessibility *)self _accessibilitySortedElementsWithin];
    if (_accessibilitySortedElementsWithin)
    {
      [v8 addObjectsFromArray:_accessibilitySortedElementsWithin];
    }
  }

  return v8;
}

@end