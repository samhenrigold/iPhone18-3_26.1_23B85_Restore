@interface PBContextMenuMediumPasteButtonDrawing
- (PBContextMenuMediumPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag;
@end

@implementation PBContextMenuMediumPasteButtonDrawing

- (PBContextMenuMediumPasteButtonDrawing)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v8 = +[UISPasteVariant variantForSecureName:](UISPasteVariant, "variantForSecureName:", [tagCopy secureName]);
  [tagCopy size];
  v10 = v9;
  v12 = v11;
  [tagCopy titleOrigin];
  v14 = v13;

  v55 = 2;
  v54 = 0;
  settings.spec = kCTParagraphStyleSpecifierAlignment;
  settings.valueSize = 1;
  settings.value = &v55;
  v59 = 6;
  v60 = 1;
  v61 = &v54;
  v15 = CTParagraphStyleCreate(&settings, 2uLL);
  v16 = kCTUIFontTextStyleFootnote;
  v17 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleFootnote attributes:0];
  localization = [styleCopy localization];
  v19 = [v8 localizedStringForLocalization:localization];

  v57[0] = v17;
  v56[0] = kCTFontAttributeName;
  v56[1] = kCTForegroundColorAttributeName;
  tintColor = [styleCopy tintColor];
  v56[2] = kCTParagraphStyleAttributeName;
  v57[1] = tintColor;
  v57[2] = v15;
  v21 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:3];
  CFRelease(v15);
  CFRelease(v17);
  v22 = [styleCopy newFontForTextStyle:kCTUIFontTextStyleBody attributes:0];
  off_100039200();
  v24 = v23;
  cf = CTFontGetLeading(v22);
  Ascent = CTFontGetAscent(v22);
  Descent = CTFontGetDescent(v22);
  v49 = *v24;
  CFRelease(v22);
  glyph = [v8 glyph];
  if ([styleCopy hasAccessibilityContentSizeCategory])
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  v28 = [styleCopy assetGlyphWithName:glyph glyphSize:v27 textStyle:v16];

  v29 = [[UISVectorGlyphDrawing alloc] initWithVectorGlyph:v28 tintColor:{objc_msgSend(styleCopy, "tintColor")}];
  [v29 drawingSize];
  v31 = v30;
  v33 = v32;
  v34 = [UISTextParagraphDrawing alloc];
  hasAccessibilityContentSizeCategory = [styleCopy hasAccessibilityContentSizeCategory];
  displayScale = [styleCopy displayScale];
  if (hasAccessibilityContentSizeCategory)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  v38 = [v34 initWithString:v19 attributes:v21 size:v37 numberOfLines:v10 scale:{0.0, displayScale}];
  [v38 drawingSize];
  v40 = (v10 - v39) * 0.5;
  v42 = v14 + v41;
  if (v39 + v40 > v10 || v42 > v12)
  {
    v44 = _PBLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v45 = "Context menu paste button text too offset in button.";
LABEL_20:
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, v45, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  displayScale2 = [styleCopy displayScale];
  if (round((v10 - v31) * 0.5 * displayScale2) / displayScale2 < 0.0 || round(((cf + Ascent + Descent) * 48.0 / v49 * 0.5 - v33 * 0.5 + -1.0) * displayScale2) / displayScale2 < 0.0)
  {
    v44 = _PBLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v45 = "Context menu paste button too small for glyph.";
      goto LABEL_20;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v52.receiver = self;
  v52.super_class = PBContextMenuMediumPasteButtonDrawing;
  self = [(PBContextMenuPasteButtonDrawing *)&v52 initWithTitleDrawing:v38 titleOffset:v29 glyph:v40 glyphOffset:v14 size:?];
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

@end