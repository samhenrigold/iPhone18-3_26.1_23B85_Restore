@interface TUILayoutRenderModelCollector
- (TUILayoutRenderModelCollector)init;
- (id).cxx_construct;
- (id)finalizeImpressions;
- (id)finalizeLinkEntities;
- (id)hostingCollectorFinalizeMap;
- (void)collectWithRoot:(id)root options:(unint64_t)options entryUUID:(id)d;
- (void)hostingCollectorAddProperties:(id)properties forIdentifier:(id)identifier;
@end

@implementation TUILayoutRenderModelCollector

- (TUILayoutRenderModelCollector)init
{
  v5.receiver = self;
  v5.super_class = TUILayoutRenderModelCollector;
  v2 = [(TUILayoutRenderModelCollector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    sub_7A100(v2 + 2, 0x20uLL);
  }

  return v3;
}

- (void)collectWithRoot:(id)root options:(unint64_t)options entryUUID:(id)d
{
  optionsCopy = options;
  rootCopy = root;
  dCopy = d;
  objc_storeStrong(&self->_root, root);
  sub_7A93C(&self->_stack, self->_stack.__begin_, self->_stack.__end_);
  if (self->_root)
  {
    root = self->_root;
    rootCopy = [NSArray arrayWithObjects:&root count:1, rootCopy];
    [rootCopy objectEnumerator];
    *(&v89 + 1) = *&v89 = 0;
    v90[0] = self->_options;
    v10 = *&CGAffineTransformIdentity.c;
    *&v90[8] = *&CGAffineTransformIdentity.a;
    *&v90[24] = v10;
    v91 = *&CGAffineTransformIdentity.tx;
    v11 = *(&v89 + 1);
    sub_7A994(&self->_stack, &v89, v12, v13, v14, v15);

    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFE | optionsCopy & 1;
    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFD | optionsCopy & 2;
    *(self->_stack.__end_ - 56) = *(self->_stack.__end_ - 56) & 0xFB | optionsCopy & 4;
    for (i = self->_stack.__end_; self->_stack.__begin_ != i; i = self->_stack.__end_)
    {
      nextObject = [*(i - 8) nextObject];
      v18 = nextObject;
      end = self->_stack.__end_;
      if (nextObject)
      {
        LOBYTE(v20) = *(end - 56);
        if (([nextObject hidden] & 1) == 0)
        {
          if (v20)
          {
            v20 = v20 & 0xFE | [v18 collectHostingPropertiesWithCollector:self];
          }

          v21 = *&CGAffineTransformIdentity.a;
          v22 = *&CGAffineTransformIdentity.c;
          v23 = *&CGAffineTransformIdentity.tx;
          *&v88.a = *&CGAffineTransformIdentity.a;
          *&v88.c = v22;
          *&v88.tx = *&CGAffineTransformIdentity.tx;
          if ((v20 & 6) != 0)
          {
            v24 = self->_stack.__end_;
            v89 = *(v24 - 3);
            *v90 = *(v24 - 2);
            *&v90[16] = *(v24 - 1);
            [*(v24 - 9) computedNaturalSize];
            v26 = v25;
            v28 = v27;
            [v18 computedOrigin];
            v30 = v29;
            v32 = v31;
            objc_msgSend_computedTransformedSize(v18);
            CGAffineTransformMakeTranslation(&t1, v30 + v33 * 0.5 - v26 * 0.5, v32 + v34 * 0.5 - v28 * 0.5);
            *&t2.a = v89;
            *&t2.c = *v90;
            *&t2.tx = *&v90[16];
            CGAffineTransformConcat(&v87, &t1, &t2);
            v79 = *&v87.a;
            v82 = *&v87.c;
            tx = v87.tx;
            ty = v87.ty;
            objc_msgSend_computedTransform(v18);
            *&t2.a = v79;
            *&t2.c = v82;
            t2.tx = tx;
            t2.ty = ty;
            CGAffineTransformConcat(&v87, &t1, &t2);
            v80 = *&v87.a;
            v83 = *&v87.c;
            v37 = v87.tx;
            v38 = v87.ty;
            objc_msgSend_renderTransform(v18);
            *&t2.a = v80;
            *&t2.c = v83;
            t2.tx = v37;
            t2.ty = v38;
            CGAffineTransformConcat(&v87, &t1, &t2);
            _V3.D[1] = v87.b;
            _D0 = CGPointZero.x;
            __asm { FMLA            D1, D0, V3.D[1] }

            v81 = *&v87.c;
            v84 = *&v87.a;
            v78 = *&v87.tx;
            CGAffineTransformMakeTranslation(&t1, -(v87.tx + CGPointZero.y * v87.c + v87.a * CGPointZero.x), -(v87.ty + _D1));
            CGAffineTransformConcat(&v88, &v87, &t1);
            if ((v20 & 2) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v78 = v23;
            v81 = v22;
            v84 = v21;
            if ((v20 & 2) == 0)
            {
LABEL_24:
              if ((v20 & 4) != 0)
              {
                v55 = *(self->_stack.__end_ - 9);
                collectLinkEntities = v55;
                if (v55 && ([v55 collectLinkEntitiesForChild:v18] & 1) == 0)
                {
                  LOBYTE(v20) = v20 & 0xFB;
                }

                else
                {

                  collectLinkEntities = [v18 collectLinkEntities];
                  if (collectLinkEntities)
                  {
                    v57 = objc_msgSend_box(v18);
                    identifier = [v57 identifier];
                    v59 = [identifier tui_identifierByPrependingUUID:dCopy];

                    v60 = [TUILinkEntityAttributes alloc];
                    [v18 computedNaturalSize];
                    v89 = *&v88.a;
                    *v90 = *&v88.c;
                    *&v90[16] = *&v88.tx;
                    v61 = [TUILinkEntityAttributes initWithIdentifier:v60 linkEntities:"initWithIdentifier:linkEntities:size:center:transform:" size:v59 center:collectLinkEntities transform:&v89];
                    linkEntities = self->_linkEntities;
                    if (!linkEntities)
                    {
                      v63 = objc_opt_new();
                      v64 = self->_linkEntities;
                      self->_linkEntities = v63;

                      linkEntities = self->_linkEntities;
                    }

                    [(NSMutableArray *)linkEntities addObject:v61];
                  }

                  if ([v18 collectLinkEntitiesForChildren])
                  {
                    v65 = 4;
                  }

                  else
                  {
                    v65 = 0;
                  }

                  LOBYTE(v20) = v65 | v20 & 0xFB;
                }
              }

              v66 = objc_msgSend_children(v18);
              v67 = v66;
              if (v20 & 6) != 0 || (v20)
              {
                if ([v66 count])
                {
                  objectEnumerator = [v67 objectEnumerator];
                  v69 = v18;
                  v70 = objectEnumerator;
                  *&v89 = v69;
                  *(&v89 + 1) = v70;
                  v90[0] = v20;
                  *&v90[8] = v84;
                  *&v90[24] = v81;
                  v91 = v78;
                  sub_7A994(&self->_stack, &v89, v71, v72, v73, v74);
                }
              }

              goto LABEL_42;
            }
          }

          v46 = *(self->_stack.__end_ - 9);
          impressionData = v46;
          if (v46 && ([v46 collectImpressionsForChild:v18] & 1) == 0)
          {
            LOBYTE(v20) = v20 & 0xFD;
          }

          else
          {

            v48 = objc_msgSend_box(v18);
            impressionData = [v48 impressionData];

            if (impressionData)
            {
              v49 = [TUIImpressionAttributes alloc];
              [v18 computedNaturalSize];
              v89 = *&v88.a;
              *v90 = *&v88.c;
              *&v90[16] = *&v88.tx;
              v50 = [TUIImpressionAttributes initWithData:v49 size:"initWithData:size:center:transform:" center:impressionData transform:&v89];
              impressions = self->_impressions;
              if (!impressions)
              {
                v52 = objc_opt_new();
                v53 = self->_impressions;
                self->_impressions = v52;

                impressions = self->_impressions;
              }

              [(NSMutableArray *)impressions addObject:v50];
            }

            if ([v18 collectImpressionsForChildren])
            {
              v54 = 2;
            }

            else
            {
              v54 = 0;
            }

            LOBYTE(v20) = v54 | v20 & 0xFD;
          }

          goto LABEL_24;
        }
      }

      else
      {
        sub_7AE80(&self->_stack, end - 72);
      }

LABEL_42:
    }
  }

  v75 = self->_root;
  self->_root = 0;
}

- (void)hostingCollectorAddProperties:(id)properties forIdentifier:(id)identifier
{
  propertiesCopy = properties;
  identifierCopy = identifier;
  if (!self->_hostingIdentifiersOrder)
  {
    v7 = objc_opt_new();
    hostingIdentifiersOrder = self->_hostingIdentifiersOrder;
    self->_hostingIdentifiersOrder = v7;
  }

  if (!self->_hostingPropertiesMap)
  {
    v9 = objc_opt_new();
    hostingPropertiesMap = self->_hostingPropertiesMap;
    self->_hostingPropertiesMap = v9;
  }

  [(NSMutableArray *)self->_hostingIdentifiersOrder addObject:identifierCopy];
  [(NSMutableDictionary *)self->_hostingPropertiesMap setObject:propertiesCopy forKeyedSubscript:identifierCopy];
}

- (id)hostingCollectorFinalizeMap
{
  if (self->_hostingPropertiesMap)
  {
    v3 = [[TUIHostingMap alloc] initWithMap:self->_hostingPropertiesMap order:self->_hostingIdentifiersOrder];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)finalizeImpressions
{
  v2 = [(NSMutableArray *)self->_impressions copy];

  return v2;
}

- (id)finalizeLinkEntities
{
  v2 = [(NSMutableArray *)self->_linkEntities copy];

  return v2;
}

- (id).cxx_construct
{
  *(self + 8) &= 0xF8u;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 2) = 0;
  return self;
}

@end