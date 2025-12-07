@interface TUIHostedLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)collector;
- (CGSize)hostingRequestedSize;
- (CGSize)requestedSize;
- (TUIHostedLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
- (void)onInvalidate;
@end

@implementation TUIHostedLayout

- (TUIHostedLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = TUIHostedLayout;
  v9 = [(TUILayout *)&v14 initWithModel:model parent:parent controller:controllerCopy];
  v10 = v9;
  if (v9)
  {
    v11 = objc_msgSend_box(v9);
    hostingIdentifier = [v11 hostingIdentifier];
    [controllerCopy registerHostingLayout:v10 forIdentifier:hostingIdentifier];
  }

  return v10;
}

- (CGSize)hostingRequestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)computeLayout
{
  [(TUILayout *)self computeWidth];
  v4 = v3;
  [(TUILayout *)self computeHeight];
  v6 = v5;
  self->_requestedSize.width = v4;
  self->_requestedSize.height = v5;
  controller = [(TUILayout *)self controller];
  v8 = objc_msgSend_box(self);
  hostingIdentifier = [v8 hostingIdentifier];
  v10 = [controller hostingGeometryForIdentifier:hostingIdentifier requestedSize:{self->_requestedSize.width, self->_requestedSize.height}];

  hostingGeometry = self->_hostingGeometry;
  self->_hostingGeometry = 0;

  if (v10)
  {
    requestedSize = [v10 requestedSize];
    if (self->_requestedSize.width == v14 && self->_requestedSize.height == v13)
    {
      [v10 layoutSize];
      v4 = v16;
      v6 = v17;
      objc_storeStrong(&self->_hostingGeometry, v10);
    }
  }

  v18 = TUIHostingLog(requestedSize);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    controller2 = [(TUILayout *)self controller];
    feedId = [controller2 feedId];
    v21 = objc_msgSend_box(self);
    hostingIdentifier2 = [v21 hostingIdentifier];
    v35.width = v4;
    v35.height = v6;
    v23 = NSStringFromCGSize(v35);
    v24 = self->_hostingGeometry;
    v25 = 134219010;
    v26 = feedId;
    v27 = 2112;
    v28 = hostingIdentifier2;
    v29 = 2112;
    v30 = v10;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_debug_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "[fid:%lu] computeLayout identifier=%@ geomtry=%@ layoutSize=%@ hostingGeomeetry=%@", &v25, 0x34u);
  }

  [(TUILayout *)self setComputedNaturalSize:v4, v6];
}

- (void)onInvalidate
{
  v4.receiver = self;
  v4.super_class = TUIHostedLayout;
  [(TUILayout *)&v4 onInvalidate];
  hostingGeometry = self->_hostingGeometry;
  self->_hostingGeometry = 0;
}

- (BOOL)collectHostingPropertiesWithCollector:(id)collector
{
  collectorCopy = collector;
  v5 = objc_msgSend_box(self);
  hostingIdentifier = [v5 hostingIdentifier];

  if (hostingIdentifier)
  {
    hostingProperties = [v5 hostingProperties];
    hostingIdentifier2 = [v5 hostingIdentifier];
    [collectorCopy hostingCollectorAddProperties:hostingProperties forIdentifier:hostingIdentifier2];
  }

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_box(self);
  hostingIdentifier = [v7 hostingIdentifier];

  v9 = 0;
  if (kind >= 4 && hostingIdentifier)
  {
    anchorRefId = [v7 anchorRefId];
    v11 = [anchorRefId length];

    if (v11)
    {
      anchorRefId2 = [v7 anchorRefId];
      v13 = sub_5308C(self, 0, 1, anchorRefId2);

      if (v13)
      {
        selfCopy = self;
        v68 = v13;
        layoutAncestor = v13;
        v134 = 0u;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v130 = 0u;
        v129 = 0u;
        v128 = 0u;
        v127 = 0u;
        v126 = 0u;
        v125 = 0u;
        v124 = 0u;
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v107 = 0u;
        v105 = 0u;
        memset(buf, 0, sizeof(buf));
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        memset(&v76, 0, sizeof(v76));
        v67 = selfCopy;
        v16 = 0;
        if (selfCopy)
        {
          do
          {
            v17 = selfCopy;
            v18 = v16++;
            *&buf[8 * v18] = selfCopy;
            selfCopy = [(TUILayout *)selfCopy layoutAncestor];

            v19 = selfCopy != 0;
          }

          while (v18 <= 0x3E && selfCopy);
        }

        else
        {
          v19 = 0;
        }

        v21 = 0;
        p_ty = &v75.ty;
        v66 = layoutAncestor;
        do
        {
          v23 = layoutAncestor;
          *(p_ty++ + 1) = layoutAncestor;
          layoutAncestor = [layoutAncestor layoutAncestor];

          if (v21 > 0x3E)
          {
            break;
          }

          ++v21;
        }

        while (layoutAncestor);
        v24 = 0;
        if (layoutAncestor)
        {
          v25 = 1;
        }

        else
        {
          v25 = v19;
        }

        if (v25)
        {
          v13 = v68;
        }

        else
        {
          v13 = v68;
          if (v16)
          {
            v26 = &buf[8 * v16 + 8];
            v27 = v16;
            do
            {
              --v27;
              v28 = *(v26 - 2);
              v29 = *p_ty--;
              --v26;
            }

            while (v28 == v29);
            if (v27 >= v16)
            {
              v30 = 0;
            }

            else
            {
              v30 = *v26;
            }

            v24 = v30;
          }
        }

        if (v24)
        {
          memset(buf, 0, 48);
          objc_msgSend_computedTransformInAncestorLayout_(v66);
          memset(&v76, 0, sizeof(v76));
          objc_msgSend_computedTransformInAncestorLayout_(v67);
          CGAffineTransformInvert(&v76, &v75);
          t1 = *buf;
          memset(&v75, 0, sizeof(v75));
          t2 = v76;
          CGAffineTransformConcat(&v75, &t1, &t2);
          [v66 computedNaturalSize];
          v70 = v31 * 0.5;
          [v66 computedNaturalSize];
          v71 = vaddq_f64(*&v75.tx, vmlaq_n_f64(vmulq_n_f64(*&v75.c, v32 * 0.5), *&v75.a, v70));
          [(TUILayout *)v67 computedNaturalSize];
          v34.f64[1] = v33;
          __asm { FMOV            V1.2D, #1.0 }

          v40 = vmaxnmq_f64(vminnmq_f64(vdivq_f64(v71, vbslq_s8(vcgtq_f64(_Q1, v34), _Q1, v34)), _Q1), 0);
        }

        else
        {
          v40 = vdupq_n_s64(0x7FF8000000000000uLL);
        }

        v69 = v40;
      }

      else
      {
        v69 = vdupq_n_s64(0x7FF8000000000000uLL);
      }

      v20 = v69.i64[1];
    }

    else
    {
      v20 = 0x7FF8000000000000;
      v69.i64[0] = 0x7FF8000000000000;
    }

    identifier = [v7 identifier];
    [(TUILayout *)self renderModelSizeWithContext:contextCopy];
    v43 = v42;
    v45 = v44;
    p_requestedSize = &self->_requestedSize;
    v47 = self->_hostingGeometry != 0;
    [v7 insets];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    hostingIdentifier2 = [v7 hostingIdentifier];
    hostingProperties = [v7 hostingProperties];
    v9 = [TUIHostingView renderModelIdentifier:identifier size:v47 requestedSize:hostingIdentifier2 usingGeometry:hostingProperties insets:v43 hostingIdentifier:v45 hostingProperties:self->_requestedSize.width anchorPoint:self->_requestedSize.height, v49, v51, v53, v55, v69.i64[0], v20];

    v59 = TUIHostingLog(v58);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      controller = [(TUILayout *)self controller];
      feedId = [controller feedId];
      v62 = objc_msgSend_box(self);
      hostingIdentifier3 = [v62 hostingIdentifier];
      [v9 size];
      v64 = NSStringFromCGSize(v135);
      v65 = NSStringFromCGSize(*p_requestedSize);
      *buf = 134219010;
      *&buf[4] = feedId;
      *&buf[12] = 2112;
      *&buf[14] = hostingIdentifier3;
      *&buf[22] = 2112;
      *&buf[24] = v64;
      *&buf[32] = 2112;
      *&buf[34] = v65;
      *&buf[42] = 2112;
      *&buf[44] = v9;
      _os_log_debug_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "[fid:%lu] newRenderModel identifier=%@ size=%@ requestedSize=%@ renderModel=%@", buf, 0x34u);
    }
  }

  return v9;
}

- (id)axModelTreeWithCustomActionsCollector:(id)collector scrollAncestorLayout:(id)layout scrollAncestorTranslation:(CGPoint)translation liveTransformAncestorLayout:(id)ancestorLayout
{
  v8.receiver = self;
  v8.super_class = TUIHostedLayout;
  v6 = [(TUILayout *)&v8 axModelTreeWithCustomActionsCollector:collector scrollAncestorLayout:layout scrollAncestorTranslation:ancestorLayout liveTransformAncestorLayout:translation.x, translation.y];
  [v6 setShouldVendControlView:1];

  return v6;
}

- (CGSize)requestedSize
{
  width = self->_requestedSize.width;
  height = self->_requestedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end