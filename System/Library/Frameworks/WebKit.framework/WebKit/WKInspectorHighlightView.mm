@interface WKInspectorHighlightView
- (WKInspectorHighlightView)initWithFrame:(CGRect)frame;
- (id).cxx_construct;
- (void)_createLayers:(unint64_t)layers;
- (void)_layoutForNodeHighlight:(const void *)highlight offset:(unsigned int)offset;
- (void)_layoutForNodeListHighlight:(const void *)highlight;
- (void)_layoutForRectsHighlight:(const void *)highlight;
- (void)_removeAllLayers;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)update:(const void *)update scale:(double)scale frame:(const FloatRect *)frame;
@end

@implementation WKInspectorHighlightView

- (WKInspectorHighlightView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = WKInspectorHighlightView;
  v3 = [(WKInspectorHighlightView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_ptr = v3->_layers.m_ptr;
    v3->_layers.m_ptr = v4;
    if (m_ptr)
    {
    }

    [(WKInspectorHighlightView *)v3 setOpaque:0];
    [(WKInspectorHighlightView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)dealloc
{
  [(WKInspectorHighlightView *)self _removeAllLayers];
  v3.receiver = self;
  v3.super_class = WKInspectorHighlightView;
  [(WKInspectorHighlightView *)&v3 dealloc];
}

- (void)_removeAllLayers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  m_ptr = self->_layers.m_ptr;
  v4 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(m_ptr);
        }

        [*(*(&v8 + 1) + 8 * i) removeFromSuperlayer];
      }

      v5 = [(NSMutableArray *)m_ptr countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_layers.m_ptr removeAllObjects];
}

- (void)_createLayers:(unint64_t)layers
{
  v5 = [(NSMutableArray *)self->_layers.m_ptr count];
  if (layers && v5 != layers)
  {
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [(WKInspectorHighlightView *)self frame];
      v8 = v7;
      [(WKInspectorHighlightView *)self frame];
      [v6 setPosition:{-v8, -v9}];
      [(NSMutableArray *)self->_layers.m_ptr addObject:v6];
      [-[WKInspectorHighlightView layer](self "layer")];
      if (v6)
      {
      }

      --layers;
    }

    while (layers);
  }
}

- (void)_layoutForNodeHighlight:(const void *)highlight offset:(unsigned int)offset
{
  v7 = [(NSMutableArray *)self->_layers.m_ptr count];
  v8 = offset + 4;
  if (v7 >= v8 && *(highlight + 15) >= v8)
  {
    v9 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:offset];
    v10 = offset + 1;
    v11 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v10];
    v12 = offset + 2;
    v13 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v12];
    v14 = offset + 3;
    v15 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v14];
    v17 = *(highlight + 15);
    if (v17 <= offset)
    {
      goto LABEL_20;
    }

    v18 = *(highlight + 6);
    v19 = (v18 + 32 * offset);
    v20 = v19[1];
    v39[0] = *v19;
    v39[1] = v20;
    if (v17 <= v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD669ECLL);
    }

    v21 = (v18 + 32 * v10);
    v22 = v21[1];
    v38[0] = *v21;
    v38[1] = v22;
    if (v17 <= v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD669F4);
    }

    v23 = (v18 + 32 * v12);
    v24 = v23[1];
    v37[0] = *v23;
    v37[1] = v24;
    if (v17 <= v14)
    {
LABEL_20:
      __break(0xC471u);
      JUMPOUT(0x19DD669E4);
    }

    v25 = v15;
    v26 = (v18 + 32 * v14);
    v27 = v26[1];
    v36[0] = *v26;
    v36[1] = v27;
    WebCore::cachedCGColor(&cf, (highlight + 32), v16);
    [(CAShapeLayer *)v9 setFillColor:cf];
    v29 = cf;
    cf = 0;
    if (v29)
    {
      CFRelease(v29);
    }

    WebCore::cachedCGColor(&cf, (highlight + 24), v28);
    [(CAShapeLayer *)v11 setFillColor:cf];
    v31 = cf;
    cf = 0;
    if (v31)
    {
      CFRelease(v31);
    }

    WebCore::cachedCGColor(&cf, (highlight + 16), v30);
    [(CAShapeLayer *)v13 setFillColor:cf];
    v33 = cf;
    cf = 0;
    if (v33)
    {
      CFRelease(v33);
    }

    WebCore::cachedCGColor(&cf, highlight, v32);
    [(CAShapeLayer *)v25 setFillColor:cf];
    v34 = cf;
    cf = 0;
    if (v34)
    {
      CFRelease(v34);
    }

    layerPathWithHole(v9, v39, v38);
    layerPathWithHole(v11, v38, v37);
    layerPathWithHole(v13, v37, v36);
    layerPath(v25, v36);
  }
}

- (void)_layoutForNodeListHighlight:(const void *)highlight
{
  v3 = *(highlight + 15);
  if (v3)
  {
    [(WKInspectorHighlightView *)self _createLayers:v3 & 0xFFFFFFFC];
    if (v3 >= 4)
    {
      v6 = 0;
      v7 = v3 >> 2;
      do
      {
        [(WKInspectorHighlightView *)self _layoutForNodeHighlight:highlight offset:v6];
        v6 = (v6 + 4);
        --v7;
      }

      while (v7);
    }
  }
}

- (void)_layoutForRectsHighlight:(const void *)highlight
{
  v3 = *(highlight + 15);
  if (v3)
  {
    [(WKInspectorHighlightView *)self _createLayers:*(highlight + 15)];
    WebCore::cachedCGColor(&cf, highlight, v6);
    v7 = 0;
    v8 = 0;
    v9 = 32 * v3;
    do
    {
      v10 = [(NSMutableArray *)self->_layers.m_ptr objectAtIndex:v8];
      [(CAShapeLayer *)v10 setFillColor:cf];
      if (v8 >= *(highlight + 15))
      {
        __break(0xC471u);
        return;
      }

      layerPath(v10, (*(highlight + 6) + v7));
      ++v8;
      v7 += 32;
    }

    while (v9 != v7);
    v11 = cf;
    cf = 0;
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

- (void)drawRect:(CGRect)rect
{
  v33 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  v30.receiver = self;
  v30.super_class = WKInspectorHighlightView;
  [(WKInspectorHighlightView *)&v30 drawRect:?];
  p_highlight = &self->_highlight;
  if (self->_highlight.__engaged_)
  {
    UIGraphicsGetCurrentContext();
    WebCore::GraphicsContextCG::GraphicsContextCG();
    WebCore::FloatRect::FloatRect(&v24, &rectCopy);
    WebCore::GraphicsContextCG::clip(v32, &v24);
    [(WKInspectorHighlightView *)self frame];
    v6 = v5;
    [(WKInspectorHighlightView *)self frame];
    v7 = v6;
    *&v8 = v8;
    WebCore::GraphicsContextCG::translate(v32, -v7, -*&v8);
    if (!self->_highlight.__engaged_)
    {
      goto LABEL_20;
    }

    m_size = self->_highlight.var0.__val_.gridHighlightOverlays.m_size;
    if (m_size)
    {
      m_buffer = self->_highlight.var0.__val_.gridHighlightOverlays.m_buffer;
      v11 = 72 * m_size;
      do
      {
        WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(&v24, m_buffer);
        WebCore::InspectorOverlay::drawGridOverlay(v32, &v24, v12);
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v29, v13);
        WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v28, v14);
        v16 = v26;
        if (v26)
        {
          v26 = 0;
          v27 = 0;
          WTF::fastFree(v16, v15);
        }

        v17 = v24.m_size;
        if (v24.m_size)
        {
          v24.m_size = 0;
          v25 = 0;
          WTF::fastFree(v17, v15);
        }

        if ((*&v24.m_location & 0x8000000000000) != 0)
        {
          v18 = (*&v24.m_location & 0xFFFFFFFFFFFFLL);
          if (atomic_fetch_add((*&v24.m_location & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v18);
            WTF::fastFree(v18, v15);
          }
        }

        m_buffer = (m_buffer + 72);
        v11 -= 72;
      }

      while (v11);
      if (!p_highlight->__engaged_)
      {
LABEL_20:
        __break(1u);
      }
    }

    v19 = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
    if (v19)
    {
      v20 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
      v21 = 136 * v19;
      do
      {
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(&v24, v20);
        WebCore::InspectorOverlay::drawFlexOverlay(v32, &v24, v22);
        WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::~FlexHighlightOverlay(&v24, v23);
        v20 = (v20 + 136);
        v21 -= 136;
      }

      while (v21);
    }

    WebCore::GraphicsContextCG::~GraphicsContextCG(v32);
  }
}

- (void)update:(const void *)update scale:(double)scale frame:(const FloatRect *)frame
{
  selfCopy = self;
  [(WKInspectorHighlightView *)self _removeAllLayers];
  p_highlight = &selfCopy->_highlight;
  if (!selfCopy->_highlight.__engaged_)
  {
    v24 = *update;
    p_highlight->var0.__val_.contentColor.m_colorAndFlags = *update;
    if ((v24 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v24 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v25 = *(update + 1);
    selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags = v25;
    if ((v25 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v25 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v26 = *(update + 2);
    selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags = v26;
    if ((v26 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v26 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v27 = *(update + 3);
    selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags = v27;
    if ((v27 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v27 & 0xFFFFFFFFFFFFLL), 1u);
    }

    v28 = *(update + 4);
    selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags = v28;
    if ((v28 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v28 & 0xFFFFFFFFFFFFLL), 1u);
    }

    selfCopy->_highlight.var0.__val_.type = *(update + 40);
    WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&selfCopy->_highlight.var0.__val_.quads, update + 48);
    v29 = *(update + 19);
    selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer = 0;
    *&selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity = 0;
    selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size = v29;
    if (v29)
    {
      if (v29 >= 0x38E38E4)
      {
        goto LABEL_126;
      }

      v30 = (9 * v29);
      v31 = 8 * v30;
      v32 = WTF::fastMalloc(v30, (8 * v30));
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity = v31 / 0x48;
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer = v32;
      v33 = *(update + 19);
      if (v33)
      {
        v34 = *(update + 8);
        v35 = 72 * v33;
        do
        {
          v32 = (WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(v32, v34) + 72);
          v34 = (v34 + 72);
          v35 -= 72;
        }

        while (v35);
      }
    }

    v36 = *(update + 23);
    selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_buffer = 0;
    *&selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_capacity = 0;
    selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_size = v36;
    if (!v36)
    {
LABEL_45:
      selfCopy->_highlight.var0.__val_.usePageCoordinates = *(update + 96);
      selfCopy->_highlight.__engaged_ = 1;
      goto LABEL_109;
    }

    if (v36 < 0x1E1E1E2)
    {
      v37 = (17 * v36);
      v38 = 8 * v37;
      v39 = WTF::fastMalloc(v37, (8 * v37));
      selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_capacity = v38 / 0x88;
      selfCopy->_highlight.var0.__val_.flexHighlightOverlays.m_buffer = v39;
      v40 = *(update + 23);
      if (v40)
      {
        v41 = *(update + 10);
        v42 = 136 * v40;
        do
        {
          v39 = (WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v39, v41) + 136);
          v41 = (v41 + 136);
          v42 -= 136;
        }

        while (v42);
      }

      goto LABEL_45;
    }

LABEL_126:
    __break(0xC471u);
    JUMPOUT(0x19DD67C5CLL);
  }

  m_colorAndFlags = p_highlight->var0.__val_.contentColor.m_colorAndFlags;
  if (p_highlight->var0.__val_.contentColor.m_colorAndFlags != *update)
  {
    if ((m_colorAndFlags & 0x8000000000000) != 0)
    {
      v92 = (m_colorAndFlags & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((m_colorAndFlags & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v92);
        WTF::fastFree(v92, v9);
      }
    }

    v12 = *update;
    p_highlight->var0.__val_.contentColor.m_colorAndFlags = *update;
    if ((v12 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v12 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v13 = selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags;
  if (v13 != *(update + 1))
  {
    if ((v13 & 0x8000000000000) != 0)
    {
      v93 = (v13 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v13 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v93);
        WTF::fastFree(v93, v9);
      }
    }

    v14 = *(update + 1);
    selfCopy->_highlight.var0.__val_.contentOutlineColor.m_colorAndFlags = v14;
    if ((v14 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v14 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v15 = selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags;
  if (v15 != *(update + 2))
  {
    if ((v15 & 0x8000000000000) != 0)
    {
      v94 = (v15 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v15 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v94);
        WTF::fastFree(v94, v9);
      }
    }

    v16 = *(update + 2);
    selfCopy->_highlight.var0.__val_.paddingColor.m_colorAndFlags = v16;
    if ((v16 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v16 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v17 = selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags;
  if (v17 != *(update + 3))
  {
    if ((v17 & 0x8000000000000) != 0)
    {
      v95 = (v17 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v17 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v95);
        WTF::fastFree(v95, v9);
      }
    }

    v18 = *(update + 3);
    selfCopy->_highlight.var0.__val_.borderColor.m_colorAndFlags = v18;
    if ((v18 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v18 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  v19 = selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags;
  if (v19 != *(update + 4))
  {
    if ((v19 & 0x8000000000000) != 0)
    {
      v96 = (v19 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v19 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v96);
        WTF::fastFree(v96, v9);
      }
    }

    v20 = *(update + 4);
    selfCopy->_highlight.var0.__val_.marginColor.m_colorAndFlags = v20;
    if ((v20 & 0x8000000000000) != 0)
    {
      atomic_fetch_add((v20 & 0xFFFFFFFFFFFFLL), 1u);
    }
  }

  selfCopy->_highlight.var0.__val_.type = *(update + 40);
  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&selfCopy->_highlight.var0.__val_.quads, update + 48);
  if (p_highlight != update)
  {
    m_size = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size;
    v23 = *(update + 19);
    if (m_size <= v23)
    {
      if (v23 > selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_capacity)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&selfCopy->_highlight.var0.__val_.gridHighlightOverlays, 0);
        WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&selfCopy->_highlight.var0.__val_.gridHighlightOverlays, *(update + 19));
        m_size = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size;
      }
    }

    else
    {
      WTF::VectorTypeOperations<WebCore::InspectorOverlayHighlight::GridHighlightOverlay>::destruct((selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer + 72 * v23), (selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer + 72 * m_size));
      selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_size = v23;
      m_size = v23;
    }

    v43 = *(update + 8);
    if (m_size)
    {
      frameCopy = frame;
      v98 = selfCopy;
      v44 = (v43 + 72 * m_size);
      m_buffer = selfCopy->_highlight.var0.__val_.gridHighlightOverlays.m_buffer;
      do
      {
        v46 = *m_buffer;
        if (*m_buffer != *v43)
        {
          if ((v46 & 0x8000000000000) != 0)
          {
            v69 = (v46 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v46 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v69);
              WTF::fastFree(v69, v21);
            }
          }

          v47 = *v43;
          *m_buffer = *v43;
          if ((v47 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v47 & 0xFFFFFFFFFFFFLL), 1u);
          }
        }

        if (v43 == m_buffer)
        {
          WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 24, v43 + 24);
        }

        else
        {
          v48 = *(m_buffer + 5);
          v49 = *(v43 + 5);
          if (v48 <= v49)
          {
            if (v49 > *(m_buffer + 4))
            {
              WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(m_buffer + 1, 0);
              WTF::Vector<WebCore::FloatLine,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(m_buffer + 8, *(v43 + 5));
              v48 = *(m_buffer + 5);
            }
          }

          else
          {
            *(m_buffer + 5) = v49;
            v48 = v49;
          }

          if (v48)
          {
            memmove(*(m_buffer + 1), *(v43 + 1), 20 * v48);
            v48 = *(m_buffer + 5);
          }

          v50 = *(v43 + 5);
          if (v48 != v50)
          {
            v51 = 5 * v48;
            v52 = *(m_buffer + 1) + 20 * v48;
            v53 = *(v43 + 1) + 4 * v51;
            v54 = 20 * v50 - 4 * v51;
            do
            {
              v55 = *v53;
              *(v52 + 16) = *(v53 + 16);
              *v52 = v55;
              v52 += 20;
              v53 += 20;
              v54 -= 20;
            }

            while (v54);
            LODWORD(v48) = *(v43 + 5);
          }

          *(m_buffer + 5) = v48;
          WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 24, v43 + 24);
          v56 = *(m_buffer + 13);
          v57 = *(v43 + 13);
          if (v56 <= v57)
          {
            if (v57 > *(m_buffer + 12))
            {
              WTF::Vector<WebCore::InspectorOverlayHighlight::GridHighlightOverlay::Area,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((m_buffer + 40), 0);
              WTF::Vector<WebCore::TextRecognitionBlockData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(m_buffer + 40, *(v43 + 13));
              v56 = *(m_buffer + 13);
            }
          }

          else
          {
            WTF::VectorDestructor<true,WebCore::TextRecognitionBlockData>::destruct((*(m_buffer + 5) + 40 * v57), (*(m_buffer + 5) + 40 * v56));
            *(m_buffer + 13) = v57;
            v56 = v57;
          }

          v58 = *(v43 + 5);
          v59 = *(m_buffer + 5);
          if (v56)
          {
            v60 = v58 + 40 * v56;
            do
            {
              WTF::String::operator=(v59, v58);
              v61 = *(v58 + 24);
              *(v59 + 8) = *(v58 + 8);
              *(v59 + 24) = v61;
              v58 += 40;
              v59 += 40;
            }

            while (v58 != v60);
            v58 = *(v43 + 5);
            v56 = *(m_buffer + 13);
            v59 = *(m_buffer + 5);
          }

          v62 = *(v43 + 13);
          if (v56 != v62)
          {
            v63 = 5 * v56;
            v64 = v58 + 40 * v62;
            v65 = v59 + 8 * v63;
            v66 = v58 + 8 * v63;
            do
            {
              v67 = *v66;
              if (*v66)
              {
                atomic_fetch_add_explicit(v67, 2u, memory_order_relaxed);
              }

              *v65 = v67;
              v68 = *(v66 + 8);
              *(v65 + 24) = *(v66 + 24);
              *(v65 + 8) = v68;
              v65 += 40;
              v66 += 40;
            }

            while (v66 != v64);
            LODWORD(v56) = *(v43 + 13);
          }

          *(m_buffer + 13) = v56;
        }

        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(m_buffer + 56, v43 + 14);
        v43 = (v43 + 72);
        m_buffer = (m_buffer + 72);
      }

      while (v43 != v44);
      v43 = *(update + 8);
      m_size = p_highlight->var0.__val_.gridHighlightOverlays.m_size;
      selfCopy = v98;
    }

    v70 = *(update + 19);
    if (m_size != v70)
    {
      v71 = (p_highlight->var0.__val_.gridHighlightOverlays.m_buffer + 72 * m_size);
      v72 = (v43 + 72 * m_size);
      v73 = 72 * v70 - 72 * m_size;
      do
      {
        v71 = (WebCore::InspectorOverlayHighlight::GridHighlightOverlay::GridHighlightOverlay(v71, v72) + 72);
        v72 = (v72 + 72);
        v73 -= 72;
      }

      while (v73);
      m_size = *(update + 19);
    }

    p_highlight->var0.__val_.gridHighlightOverlays.m_size = m_size;
    v74 = *(update + 23);
    if (p_highlight->var0.__val_.flexHighlightOverlays.m_size <= v74)
    {
      if (v74 > p_highlight->var0.__val_.flexHighlightOverlays.m_capacity)
      {
        WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&p_highlight->var0.__val_.flexHighlightOverlays, 0);
        WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&p_highlight->var0.__val_.flexHighlightOverlays, *(update + 23));
      }
    }

    else
    {
      WTF::Vector<WebCore::InspectorOverlayHighlight::FlexHighlightOverlay,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&p_highlight->var0.__val_.flexHighlightOverlays, v74);
    }

    v75 = *(update + 10);
    v76 = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
    v77 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
    if (v76)
    {
      v78 = selfCopy;
      v79 = 0;
      v80 = 136 * v76;
      do
      {
        v81 = *(v77 + v79);
        if (v81 != *(v75 + v79))
        {
          if ((v81 & 0x8000000000000) != 0)
          {
            v85 = (v81 & 0xFFFFFFFFFFFFLL);
            if (atomic_fetch_add((v81 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v85);
              WTF::fastFree(v85, v74);
            }
          }

          v82 = *(v75 + v79);
          *(v77 + v79) = v82;
          if ((v82 & 0x8000000000000) != 0)
          {
            atomic_fetch_add((v82 & 0xFFFFFFFFFFFFLL), 1u);
          }
        }

        v83 = v77 + v79;
        v84 = *(v75 + v79 + 8);
        *(v83 + 24) = *(v75 + v79 + 24);
        *(v83 + 8) = v84;
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 40, v75 + v79 + 40);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 56, v75 + v79 + 56);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 72, v75 + v79 + 72);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 88, v75 + v79 + 88);
        WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 104, v75 + v79 + 104);
        WTF::Vector<WebCore::InspectorOverlayLabel,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v77 + v79 + 120, (v75 + v79 + 120));
        v79 += 136;
      }

      while (v80 != v79);
      v75 = *(update + 10);
      LODWORD(v76) = p_highlight->var0.__val_.flexHighlightOverlays.m_size;
      v77 = p_highlight->var0.__val_.flexHighlightOverlays.m_buffer;
      selfCopy = v78;
    }

    v86 = *(update + 23);
    if (v76 != v86)
    {
      v87 = (v77 + 136 * v76);
      v88 = (v75 + 136 * v76);
      v89 = 136 * v86 - 136 * v76;
      do
      {
        v87 = (WebCore::InspectorOverlayHighlight::FlexHighlightOverlay::FlexHighlightOverlay(v87, v88) + 136);
        v88 = (v88 + 136);
        v89 -= 136;
      }

      while (v89);
      LODWORD(v76) = *(update + 23);
    }

    p_highlight->var0.__val_.flexHighlightOverlays.m_size = v76;
  }

  p_highlight->var0.__val_.usePageCoordinates = *(update + 96);
LABEL_109:
  [objc_msgSend(MEMORY[0x1E69DCEB0] mainScreen];
  [(WKInspectorHighlightView *)selfCopy setContentScaleFactor:v90 * scale];
  WebCore::FloatRect::operator CGRect();
  [(WKInspectorHighlightView *)selfCopy setFrame:?];
  v91 = *(update + 40);
  if ((v91 - 1) >= 2)
  {
    if (v91 == 3)
    {
      [(WKInspectorHighlightView *)selfCopy _layoutForRectsHighlight:update];
    }
  }

  else
  {
    [(WKInspectorHighlightView *)selfCopy _layoutForNodeListHighlight:update];
  }

  [(WKInspectorHighlightView *)selfCopy setNeedsDisplay];
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 416) = 0;
  *(self + 520) = 0;
  return self;
}

@end