@interface COSFaceGalleryHeaderViewAccessibility
- (id)accessibilityElements;
@end

@implementation COSFaceGalleryHeaderViewAccessibility

- (id)accessibilityElements
{
  v6[1] = *MEMORY[0x29EDCA608];
  v2 = [(COSFaceGalleryHeaderViewAccessibility *)self safeValueForKey:@"galleryView"];
  v3 = v2;
  if (v2)
  {
    v6[0] = v2;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end