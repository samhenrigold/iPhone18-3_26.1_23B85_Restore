@interface MRMarimbaLayoutManager
- (CGPoint)shadowOffset;
- (CGRect)currentRectForEditedText;
- (MRMarimbaLayoutManager)init;
- (void)dealloc;
- (void)updateWithString:(id)string;
@end

@implementation MRMarimbaLayoutManager

- (MRMarimbaLayoutManager)init
{
  v4.receiver = self;
  v4.super_class = MRMarimbaLayoutManager;
  v2 = [(MRMarimbaLayoutManager *)&v4 init];
  if (v2)
  {
    v2->_textRenderer = objc_alloc_init(MRTextRenderer);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MRMarimbaLayoutManager;
  [(MRMarimbaLayoutManager *)&v3 dealloc];
}

- (void)updateWithString:(id)string
{
  marimbaLayer = self->_marimbaLayer;
  if (marimbaLayer)
  {
    [(MRMarimbaLayer *)marimbaLayer bounds];
    [(MRTextRenderer *)self->_textRenderer setResolution:v6, v7];
  }

  [(MRTextRenderer *)self->_textRenderer setTruncate:0];
  v8 = [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 100000;
  }

  [(MRTextRenderer *)self->_textRenderer setMaxNumberOfLines:v9];
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  [(MRTextRenderer *)self->_textRenderer setDefinedSize:?];
  textRenderer = self->_textRenderer;

  [(MRTextRenderer *)textRenderer setText:string];
}

- (CGRect)currentRectForEditedText
{
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  v25 = 0u;
  *v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  [-[MRMarimbaLayoutManager _renderer](self "_renderer")];
  v3 = v23;
  v4 = v24;
  v6 = v26[0];
  v5 = v26[1];
  if (*&v24 >= *&v25)
  {
    v7 = *&v24;
  }

  else
  {
    v7 = *&v25;
  }

  if (*&v23 >= v26[0])
  {
    v8 = v26[0];
  }

  else
  {
    v8 = *&v23;
  }

  if (*(&v25 + 1) >= v26[1])
  {
    v9 = *(&v25 + 1);
  }

  else
  {
    v9 = v26[1];
  }

  if (*(&v23 + 1) >= *(&v24 + 1))
  {
    v10 = *(&v24 + 1);
  }

  else
  {
    v10 = *(&v23 + 1);
  }

  [(MRMarimbaLayoutManager *)self shadowOffset:*&v9];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  v13 = *&v4 - *&v3;
  v14 = *(&v4 + 1) - *(&v3 + 1);
  v15 = sqrt(((v13 * v13) + (v14 * v14)));
  v16 = v6 - *&v3;
  v17 = v5 - *(&v3 + 1);
  v18 = sqrt(((v16 * v16) + (v17 * v17)));
  v19 = v8 + (v22 - v8 - v15) * 0.5 + v11;
  v20 = v10 + (v21 - v10 - v18) * 0.5 - v12;
  result.size.height = v18;
  result.size.width = v15;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGPoint)shadowOffset
{
  [(MRTextRenderer *)self->_textRenderer shadowOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

@end