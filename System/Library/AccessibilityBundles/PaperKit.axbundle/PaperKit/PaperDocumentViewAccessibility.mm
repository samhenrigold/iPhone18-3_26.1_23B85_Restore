@interface PaperDocumentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)axInsertFormFieldsIntoHierarchy;
- (void)axRemoveFormFieldFromHierarchy:(id)hierarchy;
@end

@implementation PaperDocumentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView"];
  [validationsCopy validateClass:@"PDFView"];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasSwiftField:@"pdfView" withSwiftType:"Optional<PDFView>"];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axDetectedFormElements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axCurrentPageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PaperKit.PaperDocumentView" hasInstanceMethod:@"axTapOnShapeView:" withFullSignature:{"v", "@", 0}];
  if (NSClassFromString(&cfstr_Pdfpageviewacc.isa))
  {
    [validationsCopy validateClass:@"PDFPageViewAccessibility" hasInstanceMethod:@"_accessibilityInsertAnnotation:" withFullSignature:{"B", "@", 0}];
    [validationsCopy validateClass:@"PDFPageViewAccessibility" hasInstanceMethod:@"_accessibilityRemoveAnnotation:" withFullSignature:{"B", "@", 0}];
  }
}

- (void)axInsertFormFieldsIntoHierarchy
{
  v42 = *MEMORY[0x29EDCA608];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy_;
  v39[4] = __Block_byref_object_dispose_;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 3221225472;
  v28 = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke;
  v29 = &unk_29F2E1470;
  selfCopy = self;
  v31 = v39;
  val = self;
  v32 = &v33;
  AXPerformSafeBlock();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = v34[5];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v41 count:16];
  if (v3)
  {
    v4 = *v23;
    v12 = v17;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        accessibilityContainer = [v6 accessibilityContainer];
        NSClassFromString(&cfstr_PaperkitFormfi.isa);
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          location = 0;
          p_location = &location;
          v20 = 0x2020000000;
          v21 = 0;
          from[1] = MEMORY[0x29EDCA5F8];
          from[2] = 3221225472;
          v17[0] = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_2;
          v17[1] = &unk_29F2E1498;
          v17[3] = &location;
          v17[4] = v39;
          v17[2] = v6;
          AXPerformSafeBlock();
          v9 = *(p_location + 24);
          _Block_object_dispose(&location, 8);
          if (v9 == 1)
          {
            objc_initWeak(&location, v6);
            objc_initWeak(from, val);
            v13[0] = MEMORY[0x29EDCA5F8];
            v13[1] = 3221225472;
            v13[2] = __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_3;
            v13[3] = &unk_29F2E14E8;
            objc_copyWeak(&v14, from);
            objc_copyWeak(&v15, &location);
            [v6 setAccessibilityActivateBlock:v13];
            accessibilityTraits = [v6 accessibilityTraits];
            [v6 setAccessibilityTraits:*MEMORY[0x29EDC7598] | accessibilityTraits];
            objc_destroyWeak(&v15);
            objc_destroyWeak(&v14);
            objc_destroyWeak(from);
            objc_destroyWeak(&location);
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v22 objects:v41 count:16];
    }

    while (v3);
  }

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v39, 8);
}

uint64_t __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axCurrentPageView];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) axDetectedFormElements];

  return MEMORY[0x2A1C71028]();
}

void *__65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_2(void *a1)
{
  result = [*(*(a1[6] + 8) + 40) _accessibilityInsertAnnotation:a1[4]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_3(uint64_t a1)
{
  objc_copyWeak(&v3, (a1 + 32));
  objc_copyWeak(&v4, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v3);
  return 1;
}

void __65__PaperDocumentViewAccessibility_axInsertFormFieldsIntoHierarchy__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained axTapOnShapeView:v2];
}

- (void)axRemoveFormFieldFromHierarchy:(id)hierarchy
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy_;
  v4[4] = __Block_byref_object_dispose_;
  v5 = 0;
  hierarchyCopy = hierarchy;
  AXPerformSafeBlock();

  _Block_object_dispose(v4, 8);
}

uint64_t __65__PaperDocumentViewAccessibility_axRemoveFormFieldFromHierarchy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) axCurrentPageView];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 48) + 8) + 40);

  return [v6 _accessibilityRemoveAnnotation:v5];
}

@end