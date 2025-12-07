@interface TUICandidateGridAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScannerGroupElements;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
@end

@implementation TUICandidateGridAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceMethod:@"setSelectedIndexPath:animated:scrollPosition:" withFullSignature:{"v", "@", "B", "Q", 0}];
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceMethod:@"indexPathForSupplementaryView:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"TUICandidateGrid" hasInstanceVariable:@"_selectedIndexPath" withType:"NSIndexPath"];
}

- (id)_accessibilityScannerGroupElements
{
  v83 = *MEMORY[0x29EDCA608];
  defaultSwitchControlOptions = [MEMORY[0x29EDC7328] defaultSwitchControlOptions];
  [defaultSwitchControlOptions setSorted:0];
  [defaultSwitchControlOptions setShouldReturnScannerGroups:0];
  v3 = [(TUICandidateGridAccessibility *)self _accessibilityLeafDescendantsWithOptions:defaultSwitchControlOptions];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  objc_opt_class();
  v49 = __UIAccessibilityCastAsClass();
  LOBYTE(buf) = 0;
  objc_opt_class();
  v4 = [(TUICandidateGridAccessibility *)self safeValueForKey:@"collectionView"];
  v47 = __UIAccessibilityCastAsClass();

  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
  if (v5)
  {
    v6 = *v68;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v68 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v67 + 1) + 8 * i);
        [v8 accessibilityFrame];
        UIAccessibilityFrameToBounds();
        v10 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v47 indexPathForCell:v8];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = AXLogAppAccessibility();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&dword_29C4B7000, v13, OS_LOG_TYPE_ERROR, "Unexpected element in candidate grid: %@", &buf, 0xCu);
            }

            goto LABEL_15;
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v78 = 0x3032000000;
          v79 = __Block_byref_object_copy_;
          v80 = __Block_byref_object_dispose_;
          v81 = 0;
          v60 = MEMORY[0x29EDCA5F8];
          v61 = 3221225472;
          v62 = __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke;
          v63 = &unk_29F30A0A8;
          p_buf = &buf;
          v64 = v47;
          v65 = v8;
          AXPerformSafeBlock();
          v11 = *(*(&buf + 1) + 40);

          _Block_object_dispose(&buf, 8);
        }

        if (v11)
        {
          section = [v11 section];
          goto LABEL_18;
        }

LABEL_15:
        v14 = AXLogAppAccessibility();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v8;
          _os_log_error_impl(&dword_29C4B7000, v14, OS_LOG_TYPE_ERROR, "Unable to get index path from element in candidate grid: %@", &buf, 0xCu);
        }

        v11 = 0;
        section = -1;
LABEL_18:
        v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:section];
        dictionary2 = [dictionary objectForKeyedSubscript:v15];

        if (!dictionary2)
        {
          dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
          v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:section];
          [dictionary setObject:dictionary2 forKeyedSubscript:v17];
        }

        v18 = round(v10);
        v19 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
        array = [dictionary2 objectForKeyedSubscript:v19];

        if (!array)
        {
          array = [MEMORY[0x29EDB8DE8] array];
          v21 = [MEMORY[0x29EDBA070] numberWithDouble:v18];
          [dictionary2 setObject:array forKeyedSubscript:v21];
        }

        [array addObject:v8];
      }

      v5 = [obj countByEnumeratingWithState:&v67 objects:v82 count:16];
    }

    while (v5);
  }

  array2 = [MEMORY[0x29EDB8DE8] array];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  allKeys = [dictionary allKeys];
  v41 = [allKeys sortedArrayUsingSelector:?];

  v44 = [v41 countByEnumeratingWithState:&v56 objects:v76 count:16];
  if (v44)
  {
    v42 = *v57;
    do
    {
      v23 = 0;
      do
      {
        if (*v57 != v42)
        {
          v24 = v23;
          objc_enumerationMutation(v41);
          v23 = v24;
        }

        v45 = v23;
        v25 = [dictionary objectForKeyedSubscript:*(*(&v56 + 1) + 8 * v23)];
        array3 = [MEMORY[0x29EDB8DE8] array];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        allKeys2 = [v25 allKeys];
        v28 = [allKeys2 sortedArrayUsingSelector:sel_compare_];

        v29 = [v28 countByEnumeratingWithState:&v52 objects:v75 count:16];
        if (v29)
        {
          v30 = *v53;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v53 != v30)
              {
                objc_enumerationMutation(v28);
              }

              v32 = [v25 objectForKeyedSubscript:*(*(&v52 + 1) + 8 * j)];
              v50[0] = MEMORY[0x29EDCA5F8];
              v50[1] = 3221225472;
              v50[2] = __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke_316;
              v50[3] = &unk_29F30A0D0;
              v51 = v49;
              v33 = [v32 sortedArrayUsingComparator:v50];

              v73[0] = @"GroupElements";
              v73[1] = @"GroupTraits";
              v74[0] = v33;
              v74[1] = &unk_2A2349E28;
              v73[2] = @"GroupScanBehaviorTraits";
              v74[2] = &unk_2A2349E40;
              v34 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
              [array3 addObject:v34];
            }

            v29 = [v28 countByEnumeratingWithState:&v52 objects:v75 count:16];
          }

          while (v29);
        }

        v71[0] = @"GroupElements";
        v71[1] = @"GroupScanBehaviorTraits";
        v72[0] = array3;
        v72[1] = &unk_2A2349E40;
        v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
        [array2 addObject:v35];

        v23 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [v41 countByEnumeratingWithState:&v56 objects:v76 count:16];
    }

    while (v44);
  }

  if ([array2 count] == 1)
  {
    firstObject = [array2 firstObject];
    v37 = [firstObject objectForKeyedSubscript:@"GroupElements"];

    v38 = array2;
  }

  else
  {
    v38 = array2;
    v37 = array2;
  }

  return v37;
}

uint64_t __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) indexPathForSupplementaryView:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __67__TUICandidateGridAccessibility__accessibilityScannerGroupElements__block_invoke_316(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 accessibilityFrame];
  UIAccessibilityFrameToBounds();
  v6 = v5;
  [v4 accessibilityFrame];

  UIAccessibilityFrameToBounds();
  v8 = -1;
  if (v6 >= v7)
  {
    v8 = 1;
  }

  if (v6 == v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  v9 = [(TUICandidateGridAccessibility *)self safeValueForKey:@"_selectedIndexPath"];
  v15.receiver = self;
  v15.super_class = TUICandidateGridAccessibility;
  [(TUICandidateGridAccessibility *)&v15 setSelectedIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
  v10 = [(TUICandidateGridAccessibility *)self safeValueForKey:@"_selectedIndexPath"];
  if (v9 != v10 && ([v9 isEqual:v10] & 1) == 0)
  {
    objc_opt_class();
    v11 = [(TUICandidateGridAccessibility *)self safeValueForKey:@"collectionView"];
    v12 = __UIAccessibilityCastAsClass();

    v13 = [v12 cellForItemAtIndexPath:v10];

    accessibilityLabel = [v13 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], accessibilityLabel);
    }
  }
}

@end