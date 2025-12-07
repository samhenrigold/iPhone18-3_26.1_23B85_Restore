@interface CRLErrorImageProvider
+ (CRLErrorImageProvider)sharedInstance;
- (CGPDFDocument)p_iconPDFDocument;
- (CGSize)naturalSize;
- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect;
@end

@implementation CRLErrorImageProvider

+ (CRLErrorImageProvider)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002FAA28;
  block[3] = &unk_10183B690;
  block[4] = self;
  if (qword_101A34B28 != -1)
  {
    dispatch_once(&qword_101A34B28, block);
  }

  v2 = qword_101A34B20;

  return v2;
}

- (CGSize)naturalSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)drawImageInContext:(CGContext *)context rect:(CGRect)rect
{
  rectCopy = rect;
  if (sub_1002616E4(&rectCopy.origin.x) && sub_1002616E4(&rectCopy.origin.y))
  {
    width = rectCopy.size.width;
    if (rectCopy.size.width != 0.0)
    {
      height = rectCopy.size.height;
      if (rectCopy.size.height != 0.0)
      {
        x = rectCopy.origin.x;
        y = rectCopy.origin.y;
        if (!CGRectIsInfinite(*(&width - 2)) && !CGRectIsNull(rectCopy))
        {
          CGContextSetShouldAntialias(context, 1);
          v12 = sub_1000CCEA0(v10, v11, 0.939999998, 0.939999998, 0.939999998, 1.0);
          CGContextSetFillColorWithColor(context, v12);
          CGColorRelease(v12);
          CGContextFillRect(context, rectCopy);
          p_iconPDFDocument = [(CRLErrorImageProvider *)self p_iconPDFDocument];
          if (p_iconPDFDocument)
          {
            Page = CGPDFDocumentGetPage(p_iconPDFDocument, 1uLL);
            if (Page)
            {
              v15 = Page;
              memset(&v44, 0, sizeof(v44));
              v42 = 0.0;
              v43 = 0.0;
              v16 = sub_10050EBF0(Page, &v44, &v42);
              v18 = v17;
              v20 = v19;
              v22 = v21;
              v23 = rectCopy.size.width;
              v24 = rectCopy.size.height;
              v25 = sub_10011F340(rectCopy.size.width, rectCopy.size.height, 0.35);
              v26 = v42;
              v27 = v43;
              sub_100121E58(v42, v43, v25, v28);
              v29 = sub_10011ECB4();
              v33 = sub_1001206EC(v29, v30, v31, v32, rectCopy.origin.x, rectCopy.origin.y, v23, v24);
              v40 = 0u;
              v41 = 0u;
              v39 = 0u;
              v38 = v44;
              sub_10050EFD0(&v38, &v39, v26, v27, v33, v34, v35, v36);
              *&v38.a = v39;
              *&v38.c = v40;
              *&v38.tx = v41;
              CGContextConcatCTM(context, &v38);
              v46.origin.x = v16;
              v46.origin.y = v18;
              v46.size.width = v20;
              v46.size.height = v22;
              CGContextClipToRect(context, v46);
              v47.origin.x = v16;
              v47.origin.y = v18;
              v47.size.width = v20;
              v47.size.height = v22;
              MaxY = CGRectGetMaxY(v47);
              CGContextTranslateCTM(context, 0.0, MaxY);
              CGContextScaleCTM(context, 1.0, -1.0);
              CGContextDrawPDFPage(context, v15);
            }
          }
        }
      }
    }
  }
}

- (CGPDFDocument)p_iconPDFDocument
{
  if (qword_101A34B38 != -1)
  {
    sub_10134FD7C();
  }

  v3 = qword_101A34B30;

  return [v3 CGPDFDocument];
}

@end