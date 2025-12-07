@interface UIPDFParserDelegate
- (UIPDFParserDelegate)init;
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation UIPDFParserDelegate

- (UIPDFParserDelegate)init
{
  v3.receiver = self;
  v3.super_class = UIPDFParserDelegate;
  result = [(UIPDFParserDelegate *)&v3 init];
  if (result)
  {
    result->_path = 0;
    result->_parserError = 0;
  }

  return result;
}

- (void)dealloc
{
  CGPathRelease(self->_path);
  v3.receiver = self;
  v3.super_class = UIPDFParserDelegate;
  [(UIPDFParserDelegate *)&v3 dealloc];
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  if (objc_msgSend_isEqualToString_(element, a2, @"UIPDFSelection"))
  {
    self->_path = CGPathCreateMutable();
    return;
  }

  if (objc_msgSend_isEqualToString_(element))
  {
    v10 = *MEMORY[0x1E695EFF8];
    self->_p[3] = *MEMORY[0x1E695EFF8];
    self->_p[2] = v10;
    self->_p[1] = v10;
    self->_p[0] = v10;
    return;
  }

  if (objc_msgSend_isEqualToString_(element))
  {
    v11 = [attributes valueForKey:@"id"];
    v12 = [attributes valueForKey:@"x"];
    v13 = [attributes valueForKey:@"y"];
    if (v11)
    {
      if (v12)
      {
        v14 = v13;
        if (v13)
        {
          [v12 floatValue];
          v16 = v15;
          [v14 floatValue];
          v18 = v17;
          if (objc_msgSend_isEqualToString_(v11))
          {
            v19 = 8;
            p = self->_p;
          }

          else if (objc_msgSend_isEqualToString_(v11))
          {
            p = &self->_p[1];
            v19 = 24;
          }

          else if (objc_msgSend_isEqualToString_(v11))
          {
            p = &self->_p[2];
            v19 = 40;
          }

          else
          {
            if (!objc_msgSend_isEqualToString_(v11))
            {
              return;
            }

            p = &self->_p[3];
            v19 = 56;
          }

          p->x = v16;
          *(&self->_p[0].x + v19) = v18;
        }
      }
    }
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  if ((objc_msgSend_isEqualToString_(element, a2, @"UIPDFSelection") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(element))
    {
      CGPathAddLines(self->_path, 0, self->_p, 4uLL);
      path = self->_path;

      CGPathCloseSubpath(path);
    }

    else
    {

      objc_msgSend_isEqualToString_(element);
    }
  }
}

@end