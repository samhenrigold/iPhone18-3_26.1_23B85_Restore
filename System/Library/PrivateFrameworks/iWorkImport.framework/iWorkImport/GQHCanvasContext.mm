@interface GQHCanvasContext
- (GQHPathEndPointInfo)endPointInfoForPath:(SEL)path;
- (float)strokeWidthWithGraphicStyle:(id)style;
- (id)strokeColorWithGraphicStyle:(id)style;
- (void)addPathForLineEndStyle:(int)style graphicStyle:(id)graphicStyle atPoint:(CGPoint)point neighboringCP:(CGPoint)p filledPath:(CGPath *)path strokedPath:(CGPath *)strokedPath;
- (void)addScriptTagToHtml:(id)html state:(id)state;
- (void)createMaskedImageWithId:(__CFString *)id geometry:(id)geometry imageBinary:(id)binary cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier graphicStyle:(id)style isFloating:(BOOL)self0 state:(id)self1;
- (void)createShapeWithId:(__CFString *)id path:(id)path geometry:(id)geometry graphicStyle:(id)style isFloating:(BOOL)floating state:(id)state;
- (void)dealloc;
- (void)mapFill:(id)fill state:(id)state;
- (void)mapLineEndFillStyle:(id)style state:(id)state;
- (void)mapLineEndStrokeStyle:(id)style state:(id)state;
- (void)mapStroke:(id)stroke state:(id)state;
- (void)mapStyle:(id)style state:(id)state;
- (void)setBezierPath:(char *)path state:(id)state;
- (void)setCGPath:(CGPath *)path state:(id)state;
- (void)setContextOpacity:(float)opacity state:(id)state;
- (void)setFillColor:(id)color state:(id)state;
- (void)setGradient:(id)gradient state:(id)state;
- (void)setImageFill:(__CFURL *)fill srcSize:(CGSize)size mode:(int)mode state:(id)state;
- (void)setStrokeColor:(id)color width:(float)width state:(id)state;
- (void)teardownContext:(id)context;
- (void)translate:(CGSize)translate state:(id)state;
@end

@implementation GQHCanvasContext

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQHCanvasContext;
  [(GQHCanvasContext *)&v3 dealloc];
}

- (void)addScriptTagToHtml:(id)html state:(id)state
{
  [html startElement:"script"];
  [html setAttribute:"type" value:"text/javascript"];
  [html setAttribute:"src" cfStringValue:{objc_msgSend(state, "uriForBundleResource:ofType:", @"GQCanvas", @"js"}];

  [html endElement];
}

- (void)teardownContext:(id)context
{
  self->mFunctionName = 0;
  *&self->mHasFill = 0;
  mBezierStr = self->mBezierStr;
  if (mBezierStr)
  {
    CFRelease(mBezierStr);
    self->mBezierStr = 0;
  }
}

- (void)createShapeWithId:(__CFString *)id path:(id)path geometry:(id)geometry graphicStyle:(id)style isFloating:(BOOL)floating state:(id)state
{
  floatingCopy = floating;
  [(GQHCanvasContext *)self strokeWidthWithGraphicStyle:style];
  v15 = v14;
  createBezierPath = [path createBezierPath];
  path = 0;
  v44 = 0;
  if (v15 != 0.0 && self)
  {
    objc_msgSend_endPointInfoForPath_(self);
  }

  v42 = 0u;
  v41 = 0u;
  [path hasVerticalFlip];
  [path hasVerticalFlip];
  [path hasHorizontalFlip];
  [path horizontalFlip];
  if (geometry)
  {
    objc_msgSend_transformHasVFlip_vFlip_hasHFlip_hFlip_(geometry);
  }

  else
  {
    v42 = 0u;
    v41 = 0u;
  }

  BoundingBox = CGPathGetBoundingBox(createBezierPath);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  CGPathRelease(createBezierPath);
  v21 = -v15;
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v47 = CGRectInset(v46, v21, v21);
  v22 = v47.origin.x;
  v23 = v47.origin.y;
  v24 = v47.size.width;
  v25 = v47.size.height;
  if (path)
  {
    v48 = CGPathGetBoundingBox(path);
    v53 = CGRectInset(v48, v21, v21);
    v49.origin.x = v22;
    v49.origin.y = v23;
    v49.size.width = v24;
    v49.size.height = v25;
    v50 = CGRectUnion(v49, v53);
    v22 = v50.origin.x;
    v23 = v50.origin.y;
    v24 = v50.size.width;
    v25 = v50.size.height;
  }

  if (v44)
  {
    v54 = CGPathGetBoundingBox(v44);
    v51.origin.x = v22;
    v51.origin.y = v23;
    v51.size.width = v24;
    v51.size.height = v25;
    v52 = CGRectUnion(v51, v54);
    v22 = v52.origin.x;
    v23 = v52.origin.y;
    v24 = v52.size.width;
    v25 = v52.size.height;
  }

  [geometry nonrotatedPosition];
  v27 = v26;
  v29 = v28;
  [(GQHCanvasContext *)self prepareContext:state];
  self->mGeometry = geometry;
  geometryCopy = geometry;
  htmlDoc = [state htmlDoc];
  [htmlDoc startElement:"canvas"];
  *&v32 = v24;
  [htmlDoc setAttribute:"width" floatValue:v32];
  *&v33 = v25;
  [htmlDoc setAttribute:"height" floatValue:v33];
  [htmlDoc setAttribute:"id" cfStringValue:id];
  v34 = objc_alloc_init(GQHStyle);
  v35 = v34;
  if (floatingCopy)
  {
    [(GQHStyle *)v34 addAttribute:off_9CF18 value:off_9CFA0];
    [(GQHStyle *)v35 addAttribute:off_9CEA0 intValue:(v22 + v27)];
    [(GQHStyle *)v35 addAttribute:off_9CF50 intValue:(v23 + v29)];
  }

  v36 = CFStringCreateWithFormat(0, 0, @"matrix(%f, %f, %f, %f, 0, 0)", v41, v42);
  [(GQHStyle *)v35 addAttribute:off_9CF90 value:v36];
  CFRelease(v36);
  [(GQHStyle *)v35 setStyleOnCurrentNode:state];

  [htmlDoc startElement:"script"];
  [htmlDoc setAttribute:"type" value:"text/javascript"];
  v37 = [[NSMutableString alloc] initWithString:id];
  self->mFunctionName = v37;
  [(NSMutableString *)v37 replaceOccurrencesOfString:@"-" withString:@"_" options:2 range:0, [(NSMutableString *)v37 length]];
  v38 = CFStringCreateWithFormat(0, 0, @"\nfunction %@() {\nvar canvas = document.getElementById('%@'); \nvar context = canvas.getContext('2d'); \ncontext.translate(%f, %f);\n", self->mFunctionName, id, -v22, -v23);
  [htmlDoc addContent:v38];
  CFRelease(v38);
  -[GQHCanvasContext setBezierPath:state:](self, "setBezierPath:state:", [path pathStr], state);
  [(GQHCanvasContext *)self mapStyle:style state:state];
  if (self->mHasFill)
  {
    [htmlDoc addContent:@"context.fill();\n"];
  }

  if (self->mHasStroke)
  {
    [htmlDoc addContent:@"context.stroke();\n"];
  }

  if (v44)
  {
    [htmlDoc addContent:@"context.beginPath();\n"];
    [(GQHCanvasContext *)self setCGPath:v44 state:state];
    [(GQHCanvasContext *)self mapLineEndFillStyle:style state:state];
    [htmlDoc addContent:@"context.fill();\n"];
    CGPathRelease(v44);
    v44 = 0;
  }

  if (path)
  {
    [htmlDoc addContent:@"context.beginPath();\n"];
    [(GQHCanvasContext *)self setCGPath:path state:state];
    [(GQHCanvasContext *)self mapLineEndStrokeStyle:style state:state];
    [htmlDoc addContent:@"context.stroke();\n"];
    CGPathRelease(path);
    path = 0;
  }

  v39 = CFStringCreateWithFormat(0, 0, @"}\n%@();\n", self->mFunctionName);
  [htmlDoc addContent:v39];
  CFRelease(v39);
  [htmlDoc endElement];

  self->mGeometry = 0;
  [htmlDoc endElement];
  [(GQHCanvasContext *)self teardownContext:state];
}

- (void)createMaskedImageWithId:(__CFString *)id geometry:(id)geometry imageBinary:(id)binary cropGeometry:(id)cropGeometry maskingShapePath:(id)path alphaMaskBezier:(CGPath *)bezier graphicStyle:(id)style isFloating:(BOOL)self0 state:(id)self1
{
  memset(&v69, 0, sizeof(v69));
  if (geometry)
  {
    objc_msgSend_transform(geometry, a2);
  }

  if (cropGeometry)
  {
    cropGeometryCopy = cropGeometry;
  }

  else
  {
    cropGeometry = objc_alloc_init(GQDAffineGeometry);
    [geometry size];
    [cropGeometry setNaturalSize:?];
    [geometry size];
    [cropGeometry setSize:?];
    [geometry position];
    [cropGeometry setPosition:?];
    [geometry angle];
    [cropGeometry setAngle:?];
    [cropGeometry setHorizontalFlip:{objc_msgSend(geometry, "horizontalFlip")}];
    [cropGeometry setVerticalFlip:{objc_msgSend(geometry, "verticalFlip")}];
    [geometry shearXAngle];
    [cropGeometry setShearXAngle:?];
    [geometry shearYAngle];
    [cropGeometry setShearYAngle:?];
  }

  memset(&transform, 0, sizeof(transform));
  [path hasVerticalFlip];
  [path verticalFlip];
  [path hasHorizontalFlip];
  [path horizontalFlip];
  if (cropGeometry)
  {
    objc_msgSend_transformHasVFlip_vFlip_hasHFlip_hFlip_(cropGeometry);
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  createBezierPath = [path createBezierPath];
  if (!path)
  {
    y = CGPointZero.y;
    [cropGeometry naturalSize];
    v71.size.width = v20;
    v71.size.height = v21;
    v71.origin.x = CGPointZero.x;
    v71.origin.y = y;
    createBezierPath = CGPathCreateWithRect(v71, 0);
  }

  v22 = createBezierPath;
  if (bezier)
  {
    CFRetain(bezier);
  }

  else
  {
    v23 = CGPointZero.y;
    [geometry naturalSize];
    v72.size.width = v24;
    v72.size.height = v25;
    v72.origin.x = CGPointZero.x;
    v72.origin.y = v23;
    bezier = CGPathCreateWithRect(v72, 0);
  }

  v26 = CGPathCreateCopyByTransformingPath(v22, &transform);
  v27 = CGPathCreateCopyByTransformingPath(bezier, &v69);
  values[0] = v26;
  values[1] = v27;
  v28 = CFArrayCreate(0, values, 2, &kCFTypeArrayCallBacks);
  v29 = sub_50C94(v28);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v27);
  CFRelease(v22);
  CFRelease(bezier);
  if (CGPathIsEmpty(v29))
  {
    CFRelease(v29);
  }

  else
  {
    v30 = [style valueForObjectProperty:68];
    v67 = v30;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = ([GQHGraphicStyle strokeWidth:v30]* -0.5);
    }

    else
    {
      v31 = -0.0;
    }

    PathBoundingBox = CGPathGetPathBoundingBox(v29);
    v74 = CGRectInset(PathBoundingBox, v31, v31);
    x = v74.origin.x;
    v33 = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    memset(&v66, 0, sizeof(v66));
    CGAffineTransformMakeTranslation(&v66, -v74.origin.x, -v74.origin.y);
    v36 = CGPathCreateCopyByTransformingPath(v29, &v66);
    CFRelease(v29);
    htmlDoc = [state htmlDoc];
    v38 = htmlDoc;
    if (floating)
    {
      [htmlDoc startElement:"div"];
      v39 = objc_alloc_init(GQHStyle);
      [(GQHStyle *)v39 addAttribute:off_9CF18 value:off_9CFA0];
      v40 = off_9CEA0;
      v41 = x;
      v42 = llroundf(v41);
      [state scale];
      [(GQHStyle *)v39 addAttribute:v40 intValue:(v43 * v42)];
      v44 = off_9CF50;
      v45 = v33;
      v46 = llroundf(v45);
      [state scale];
      [(GQHStyle *)v39 addAttribute:v44 intValue:(v47 * v46)];
      [(GQHStyle *)v39 setStyleOnCurrentNode:state];
    }

    [(GQHCanvasContext *)self prepareContext:state];
    self->mGeometry = geometry;
    geometryCopy = geometry;
    [v38 startElement:"canvas"];
    *&v49 = width;
    [v38 setAttribute:"width" floatValue:v49];
    *&v50 = height;
    [v38 setAttribute:"height" floatValue:v50];
    [v38 setAttribute:"id" cfStringValue:id];
    v51 = objc_alloc_init(GQHStyle);
    v67 = 0;
    if ([style hasValueForObjectProperty:72 value:&v67])
    {
      [GQHGraphicStyle mapExternalWrap:v67 style:v51 state:state];
    }

    [(GQHStyle *)v51 setStyleOnCurrentNode:state];

    [v38 startElement:"script"];
    [v38 setAttribute:"type" value:"text/javascript"];
    v52 = [[NSMutableString alloc] initWithString:id];
    self->mFunctionName = v52;
    [(NSMutableString *)v52 replaceOccurrencesOfString:@"-" withString:@"_" options:2 range:0, [(NSMutableString *)v52 length]];
    v53 = CFStringCreateWithFormat(0, 0, @"\n                                                                         function %@() {\n                                                                         var canvas = document.getElementById('%@'); \n                                                                         var context = canvas.getContext('2d'); \n                                                                         ", self->mFunctionName, id);
    [v38 addContent:v53];
    CFRelease(v53);
    v54 = sub_42CE8(v36);
    [(GQHCanvasContext *)self setBezierPath:v54 state:state];
    CFRelease(v36);
    free(v54);
    [(GQHCanvasContext *)self mapStyle:style state:state];
    if (binary)
    {
      v55 = [binary createAbsoluteUrlForState:{objc_msgSend(state, "processorState")}];
      if (v55)
      {
        v56 = v55;
        v57 = CFURLGetString(v55);
        v58 = sub_41BA4(v57);
        v59 = CFStringCreateWithFormat(0, 0, @"                                                                              var img = new Image();\n                                                                              img.src = '%@';\n                                                                              img.onload = function () {\n", v58);
        [v38 addContent:v59];
        CFRelease(v59);
        CFRelease(v58);
        [v38 addContent:@"                                  context.clip();\n"];
        t1 = v69;
        memset(&v65, 0, sizeof(v65));
        t2 = v66;
        CGAffineTransformConcat(&v65, &t1, &t2);
        v60 = CFStringCreateWithFormat(0, 0, @"context.transform(%f, %f, %f, %f, %f, %f);\n", *&v65.a, *&v65.b, *&v65.c, *&v65.d, *&v65.tx, *&v65.ty);
        [v38 addContent:v60];
        CFRelease(v60);
        [v38 addContent:{@"                                  context.drawImage(img, 0, 0);\n                                  }\n"}];
        CFRelease(v56);
      }
    }

    if (self->mHasFill)
    {
      [v38 addContent:@"context.fill();\n"];
    }

    if (self->mHasStroke)
    {
      [v38 addContent:@"context.stroke();\n"];
    }

    v61 = CFStringCreateWithFormat(0, 0, @"}\n%@();\n", self->mFunctionName);
    [v38 addContent:v61];
    CFRelease(v61);
    [v38 endElement];

    self->mGeometry = 0;
    [v38 endElementWithExpectedName:"canvas"];
    if (floating)
    {
      [v38 endElementWithExpectedName:"div"];
    }

    [(GQHCanvasContext *)self teardownContext:state];
  }
}

- (void)setContextOpacity:(float)opacity state:(id)state
{
  v5 = CFStringCreateWithFormat(0, 0, @"context.globalAlpha = %f;\n", opacity);
  [objc_msgSend(state "htmlDoc")];

  CFRelease(v5);
}

- (void)setStrokeColor:(id)color width:(float)width state:(id)state
{
  htmlRed = [color htmlRed];
  htmlGreen = [color htmlGreen];
  htmlBlue = [color htmlBlue];
  [color alphaComponent];
  v13 = CFStringCreateWithFormat(0, 0, @"setColorStrokeStyle(context, %d, %d, %d, %f, %ld);\n", htmlRed, htmlGreen, htmlBlue, v12, llroundf(width));
  [objc_msgSend(state "htmlDoc")];
  CFRelease(v13);
  self->mHasStroke = 1;
}

- (void)setFillColor:(id)color state:(id)state
{
  htmlRed = [color htmlRed];
  htmlGreen = [color htmlGreen];
  htmlBlue = [color htmlBlue];
  [color alphaComponent];
  v11 = CFStringCreateWithFormat(0, 0, @"setColorFillStyle(context, %d, %d, %d, %f);\n", htmlRed, htmlGreen, htmlBlue, v10);
  [objc_msgSend(state "htmlDoc")];
  CFRelease(v11);
  self->mHasFill = 1;
}

- (void)setGradient:(id)gradient state:(id)state
{
  if ([gradient type])
  {
    if ([gradient type] != 1)
    {
      return;
    }

    [gradient start];
    *&v7 = v7;
    v8 = llroundf(*&v7);
    [gradient start];
    v10 = v9;
    v11 = llroundf(v10);
    [gradient start];
    *&v12 = v12;
    v13 = llroundf(*&v12);
    [gradient start];
    v15 = v14;
    v16 = llroundf(v15);
    [gradient start];
    v18 = v17;
    [gradient end];
    *&v18 = v18 - v19;
    [gradient start];
    v21 = v20;
    [gradient end];
    *&v22 = v21 - v22;
    v44 = llroundf(hypotf(*&v18, *&v22));
    v23 = CFStringCreateWithFormat(0, 0, @"context.fillStyle = context.createRadialGradient(%ld, %ld, %d, %ld, %ld, %ld);\n", v8, v11, 0, v13, v16, v44);
  }

  else
  {
    [gradient angle];
    v25 = 3.14159265 - v24;
    [(GQDAffineGeometry *)self->mGeometry size];
    *&v26 = v26;
    v27 = llroundf(*&v26);
    [(GQDAffineGeometry *)self->mGeometry size];
    v29 = v28;
    v23 = CFStringCreateWithFormat(0, 0, @"createLinearGradientFillStyle(context, %f, %ld, %ld);\n", *&v25, v27, llroundf(v29));
  }

  v30 = v23;
  if (v23)
  {
    v31 = objc_alloc_init(NSMutableString);
    stops = [gradient stops];
    Count = CFArrayGetCount(stops);
    if (Count >= 1)
    {
      v45 = v30;
      selfCopy = self;
      v34 = 0;
      v35 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(stops, v34);
        color = [ValueAtIndex color];
        htmlRed = [color htmlRed];
        htmlGreen = [color htmlGreen];
        htmlBlue = [color htmlBlue];
        [color alphaComponent];
        v42 = v41;
        [ValueAtIndex fraction];
        [v31 appendFormat:@"setGradientColorStop(context.fillStyle, %d, %d, %d, %f, %f);\n", htmlRed, htmlGreen, htmlBlue, v42, v43];
        ++v34;
      }

      while (v35 != v34);
      v30 = v45;
      [objc_msgSend(state "htmlDoc")];
      [objc_msgSend(state "htmlDoc")];
      selfCopy->mHasFill = 1;
    }

    CFRelease(v30);
  }
}

- (void)setImageFill:(__CFURL *)fill srcSize:(CGSize)size mode:(int)mode state:(id)state
{
  height = size.height;
  width = size.width;
  v11 = CFURLGetString(fill);
  v12 = sub_41BA4(v11);
  v13 = CFStringCreateWithFormat(0, 0, @"var img = new Image();\nimg.src = '%@';\nimg.onload = function () {\n", v12);
  [objc_msgSend(state "htmlDoc")];
  CFRelease(v13);
  CFRelease(v12);
  if (mode == 2)
  {
    goto LABEL_5;
  }

  if (!mode)
  {
    if (self->mBezierStr)
    {
      [(GQDAffineGeometry *)self->mGeometry size];
      v15 = (v14 - width) * 0.5;
      v17 = (v16 - height) * 0.5;
      v18 = 1.0;
      v19 = 1.0;
      v20 = 1.0;
      v21 = 1.0;
LABEL_37:
      v38 = v15;
      v39 = v17;
      if (v18 == 1.0 && v20 == 1.0)
      {
        v23 = CFStringCreateWithFormat(0, 0, @"    context.clip();\n    context.translate(%f, %f);\n    context.drawImage(img, 0, 0);\n   }\n", *&v38, *&v39);
      }

      else
      {
        v23 = CFStringCreateWithFormat(0, 0, @"    context.clip();\n    context.translate(%f, %f);\n    context.scale(%f,%f);\n    context.drawImage(img, 0, 0);\n   }\n", *&v38, *&v39, *&v21, *&v19);
      }

LABEL_42:
      v40 = v23;
      [objc_msgSend(state "htmlDoc")];

      CFRelease(v40);
      return;
    }

LABEL_5:
    v22 = @"repeat";
    if (!mode)
    {
      v22 = @"no-repeat";
    }

    v23 = CFStringCreateWithFormat(0, 0, @"    context.fillStyle = context.createPattern(img, '%@');\n    context.fill();\n }\n", v22);
    goto LABEL_42;
  }

  if (self->mBezierStr)
  {
    [(GQDAffineGeometry *)self->mGeometry size];
    v18 = v24 / width;
    v20 = v25 / height;
    v26 = fmaxf(v18, v20);
    v27 = (v24 - v26 * width) * 0.5;
    v28 = 0.0;
    if (width * v26 >= v24)
    {
      v27 = 0.0;
    }

    v29 = (v25 + -v26 * height) * 0.5;
    if (height * v26 >= v25)
    {
      v29 = 0.0;
    }

    v30 = fminf(v18, v20);
    if (width * v30 >= v24)
    {
      v32 = 0.0;
    }

    else
    {
      v31 = (v24 - v30 * width) * 0.5;
      v32 = v31;
    }

    v33 = height * v30 < v25;
    v34 = (v25 + -v30 * height) * 0.5;
    if (!v33)
    {
      v34 = 0.0;
    }

    v35 = v18;
    v36 = v20;
    if (mode == 4)
    {
      v36 = v30;
      v35 = v30;
      v18 = v30;
      v20 = v30;
      v37 = v32;
    }

    else
    {
      v37 = 0.0;
    }

    if (mode == 4)
    {
      v28 = v34;
    }

    v19 = mode == 3 ? v26 : v36;
    v21 = mode == 3 ? v26 : v35;
    if (mode == 3)
    {
      v18 = v26;
      v20 = v26;
      v15 = v27;
    }

    else
    {
      v15 = v37;
    }

    v17 = mode == 3 ? v29 : v28;
    if (v18 != 0.0 && v20 != 0.0)
    {
      goto LABEL_37;
    }
  }
}

- (void)setBezierPath:(char *)path state:(id)state
{
  mBezierStr = self->mBezierStr;
  if (mBezierStr)
  {
    CFRelease(mBezierStr);
    self->mBezierStr = 0;
  }

  v8 = CFStringCreateWithCString(0, path, 0x8000100u);
  v9 = sub_41BA4(v8);
  CFRelease(v8);
  self->mBezierStr = CFStringCreateWithFormat(0, 0, @"bezierPath(context, '%@');\n", v9);
  CFRelease(v9);
  htmlDoc = [state htmlDoc];
  v11 = self->mBezierStr;

  [htmlDoc addContent:v11];
}

- (void)translate:(CGSize)translate state:(id)state
{
  v5 = CFStringCreateWithFormat(0, 0, @"context.translate(%f, %f);\n", *&translate.width, *&translate.height);
  [objc_msgSend(state "htmlDoc")];

  CFRelease(v5);
}

- (void)mapStyle:(id)style state:(id)state
{
  [style valueForFloatProperty:69];
  [(GQHCanvasContext *)self setContextOpacity:state state:?];
  -[GQHCanvasContext mapFill:state:](self, "mapFill:state:", [style valueForObjectProperty:67], state);
  v7 = [style valueForObjectProperty:68];

  [(GQHCanvasContext *)self mapStroke:v7 state:state];
}

- (void)mapFill:(id)fill state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    fillCopy = fill;
LABEL_3:

    [(GQHCanvasContext *)selfCopy2 setFillColor:fillCopy state:state];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    [(GQHCanvasContext *)self setGradient:fill state:state];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    imageBinary = [fill imageBinary];
    if (!imageBinary)
    {
      if (![fill color])
      {
        return;
      }

      fillCopy = [fill color];
      selfCopy2 = self;
      goto LABEL_3;
    }

    v10 = imageBinary;
    v11 = [imageBinary createAbsoluteUrlForState:{objc_msgSend(state, "processorState")}];
    if (v11)
    {
      v12 = v11;
      technique = [fill technique];
      [v10 size];
      [(GQHCanvasContext *)self setImageFill:v12 srcSize:technique mode:state state:?];

      CFRelease(v12);
    }
  }
}

- (void)mapStroke:(id)stroke state:(id)state
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pattern = [stroke pattern];
    if (!pattern || [pattern type] != 2)
    {
      color = [stroke color];
      [stroke width];

      [(GQHCanvasContext *)self setStrokeColor:color width:state state:?];
    }
  }
}

- (void)mapLineEndFillStyle:(id)style state:(id)state
{
  v6 = [(GQHCanvasContext *)self strokeColorWithGraphicStyle:style];

  [(GQHCanvasContext *)self setFillColor:v6 state:state];
}

- (void)mapLineEndStrokeStyle:(id)style state:(id)state
{
  v7 = [(GQHCanvasContext *)self strokeColorWithGraphicStyle:?];
  [(GQHCanvasContext *)self strokeWidthWithGraphicStyle:style];

  [(GQHCanvasContext *)self setStrokeColor:v7 width:state state:?];
}

- (GQHPathEndPointInfo)endPointInfoForPath:(SEL)path
{
  *&retstr->var0 = 0u;
  *&retstr->var1.y = 0u;
  *&retstr->var2.y = 0u;
  *&retstr->var3.y = 0u;
  retstr->var0 = 1;
  *&retstr->var4.y = 0u;
  v5 = CGPointZero;
  retstr->var1 = CGPointZero;
  retstr->var2 = v5;
  retstr->var3 = v5;
  retstr->var4 = v5;
  CGPathApply(a4, retstr, sub_4B160);
  if (retstr->var5 <= 1)
  {
    retstr->var0 = 0;
  }

  return result;
}

- (float)strokeWidthWithGraphicStyle:(id)style
{
  v3 = [style valueForObjectProperty:68];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [GQHGraphicStyle strokeWidth:v5];
    }
  }

  return v4;
}

- (id)strokeColorWithGraphicStyle:(id)style
{
  v3 = [style valueForObjectProperty:68];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v4 color];
}

- (void)addPathForLineEndStyle:(int)style graphicStyle:(id)graphicStyle atPoint:(CGPoint)point neighboringCP:(CGPoint)p filledPath:(CGPath *)path strokedPath:(CGPath *)strokedPath
{
  y = p.y;
  x = p.x;
  v12 = point.y;
  v13 = point.x;
  v28 = 0;
  [graphicStyle hasValueForObjectProperty:*&style value:&v28];
  if (v28)
  {
    [(GQHCanvasContext *)self strokeWidthWithGraphicStyle:graphicStyle];
    v17 = v16;
    v18 = atan2(v12 - y, v13 - x) + -1.57079633;
    memset(&m.c, 0, 32);
    if (v17 <= 1.0)
    {
      v20 = v17;
    }

    else
    {
      v19 = (v17 + -1.0) * 0.6 + 1.0;
      v20 = v19;
    }

    *&m.a = 0uLL;
    CGAffineTransformMakeTranslation(&m, v13, v12);
    v25 = m;
    CGAffineTransformScale(&v26, &v25, v20, v20);
    m = v26;
    v25 = v26;
    CGAffineTransformRotate(&v26, &v25, v18);
    m = v26;
    [v28 endPoint];
    v22 = -v21;
    [v28 endPoint];
    CGAffineTransformTranslate(&v26, &v25, v22, -v23);
    m = v26;
    if ([v28 isFilled])
    {
      Mutable = *path;
      if (!*path)
      {
        goto LABEL_9;
      }
    }

    else
    {
      Mutable = *strokedPath;
      path = strokedPath;
      if (!*strokedPath)
      {
LABEL_9:
        Mutable = CGPathCreateMutable();
        *path = Mutable;
      }
    }

    CGPathAddPath(Mutable, &m, [v28 path]);
  }
}

- (void)setCGPath:(CGPath *)path state:(id)state
{
  objc_msgSend(objc_msgSend(state, "htmlDoc"), "addContent:", @"bezierPath(context, '");
  v6 = [GQDBezierPath createCFStringFromPath:path];
  [objc_msgSend(state "htmlDoc")];
  CFRelease(v6);
  htmlDoc = [state htmlDoc];

  [htmlDoc addContent:@"';\n"]);
}

@end