@interface VKLabelNavRouteEta
+ (RoadSignStyleGroup)styleForNavContext:(SEL)context selected:(const NavContext *)selected focused:(BOOL)focused etaComparison:(BOOL)comparison transportType:(unsigned __int8)type navLabelType:(unsigned __int8)labelType when:(unsigned __int8)when routeLegWhen:(optional<gss:(optional<gss:(id)self2 :RouteLegWhen>)self1 :When>)self0 additionalAttributes:;
+ (id)artworkForEtaDescription:(id)description navContext:(const NavContext *)context roadSignStyleGroup:(const void *)group mercatorPoint:(const void *)point orientation:(unsigned __int8)orientation isSelected:(BOOL)selected artworkCache:(void *)cache;
+ (unsigned)toStyleEtaComparison:(unsigned __int8)comparison;
+ (unsigned)toStyleNavLabelType:(int64_t)type;
+ (vector<GeoCodecsFeatureStylePair,)baseAttributesForEtaLabel:(mdm:(id)label :(SEL)a3 zone_mallocator>> *__return_ptr)retstr focused:(BOOL)focused etaComparison:(BOOL)comparison transportType:(unsigned __int8)type navLabelType:(unsigned __int8)labelType when:(unsigned __int8)when routeLegWhen:(optional<gss:(optional<gss:(id)self1 :RouteLegWhen>)self0 :When>)a9 additionalAttributes:;
- (BOOL)hasAnchor;
- (BOOL)hasLabelWithAnchor;
- (Matrix<double,)worldPointForStaging;
- (VKLabelNavRouteEta)initWithRouteInfo:(id)info routeCoord:(PolylineCoordinate)coord;
- (_retain_ptr<VKLabelNavRoadLabel)updateRoadSignWithNavContext:(const NavContext *)context artworkCache:(void *)cache;
- (id).cxx_construct;
- (unsigned)etaComparisonToMain;
- (void)clearLabel;
- (void)createLabelWithNavContext:(const NavContext *)context orientation:(unsigned __int8)orientation etaDescription:(id)description selected:(BOOL)selected when:(optional<gss:(optional<gss:(void *)when :RouteLegWhen>)a8 :When>)a7 routeLegWhen:artworkCache:;
- (void)dealloc;
- (void)updateAnchorWithContext:(const NavContext *)context;
@end

@implementation VKLabelNavRouteEta

- (id).cxx_construct
{
  *(self + 28) = 0xBF80000000000000;
  *(self + 59) = 0;
  *(self + 53) = 0;
  return self;
}

- (_retain_ptr<VKLabelNavRoadLabel)updateRoadSignWithNavContext:(const NavContext *)context artworkCache:(void *)cache
{
  v34 = v4;
  if ([(VKLabelNavRouteEta *)self isRepositioning])
  {
    goto LABEL_9;
  }

  orientation = [(VKLabelNavRouteEta *)self orientation];
  [(VKLabelNavRouteEta *)self selected];
  routeInfo = [(VKLabelNavRouteEta *)self routeInfo];
  [routeInfo hasFocus];
  [(VKLabelNavRouteEta *)self etaComparisonToMain];
  route = [(VKRouteInfo *)self->_routeInfo route];
  [route transportType];
  displayEtaDescription = [(VKLabelNavRouteEta *)self displayEtaDescription];
  +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [displayEtaDescription routeEtaType]);
  when = [(VKLabelNavRouteEta *)self when];
  routeLegWhen = [(VKLabelNavRouteEta *)self routeLegWhen];
  displayEtaDescription2 = [(VKLabelNavRouteEta *)self displayEtaDescription];
  v12 = objc_msgSend_styleAttributes(displayEtaDescription2);
  objc_msgSend_styleForNavContext_selected_focused_etaComparison_transportType_navLabelType_when_routeLegWhen_additionalAttributes_(VKLabelNavRouteEta, *&when, *&routeLegWhen, v12);

  [(VKLabelNavRouteEta *)self worldPointForStaging];
  v14 = v13;
  v16 = v15;
  displayEtaDescription3 = [(VKLabelNavRouteEta *)self displayEtaDescription];
  v35[0] = v14;
  v35[1] = v16;
  [(VKLabelNavRouteEta *)self selected];
  artworkAndKeyForEtaLabel(&v36, displayEtaDescription3, context, v38, v35, orientation, cache);

  etaLabelArtworkKey = self->_etaLabelArtworkKey;
  v19 = v36;
  v20 = v37;
  self->_didStyleChange = v37 != etaLabelArtworkKey;

  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  isRepositioning = v39;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  if (v20 == etaLabelArtworkKey)
  {
    *v34 = off_1F2A59C08;
    v34[1] = 0;
  }

  else
  {
LABEL_9:
    label = [(VKLabelNavRouteEta *)self label];
    geo::_retain_ptr<VKLabelNavRoadLabel * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v34, label);

    [(VKLabelNavRouteEta *)self clearLabel];
    orientation2 = [(VKLabelNavRouteEta *)self orientation];
    displayEtaDescription4 = [(VKLabelNavRouteEta *)self displayEtaDescription];
    [(VKLabelNavRouteEta *)self createLabelWithNavContext:context orientation:orientation2 etaDescription:displayEtaDescription4 selected:[(VKLabelNavRouteEta *)self selected] when:[(VKLabelNavRouteEta *)self when] routeLegWhen:[(VKLabelNavRouteEta *)self routeLegWhen] artworkCache:cache];

    isRepositioning = [(VKLabelNavRouteEta *)self isRepositioning];
    if (isRepositioning)
    {
      v26 = v34[1];
      if (v26)
      {
        v27 = v26;
        v28 = *[v27 label];
        v28[313] = 0;
        if (v28[312] == 1)
        {
          v28[314] = 0;
        }
      }

      self->_isRepositioning = 0;
    }

    else
    {
      isRepositioning = [(VKLabelNavRouteEta *)self hasLabel];
      if (isRepositioning)
      {
        label2 = [(VKLabelNavRouteEta *)self label];
        v30 = *[label2 label];
        *(v30 + 280) = 1065353216;
        *(v30 + 284) = 1;
      }
    }
  }

  result.var1 = v21;
  result.var0 = &isRepositioning->__vftable;
  return result;
}

- (void)updateAnchorWithContext:(const NavContext *)context
{
  v5 = *(*(context->var1 + 29) + 30);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(context->var3 + 24) ^ 1;
  }

  v7 = v6 & 1;
  if (!*(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) || self->_anchorHasNoAltitude != v7 || self->_anchorFollowsTerrain != v5)
  {
    self->_anchorHasNoAltitude = v7;
    self->_anchorFollowsTerrain = v5;
    altitude = self->_coordinate.altitude;
    if (v7)
    {
      altitude = 0.0;
    }

    v9 = **(context->var4 + 18);
    v14 = *&self->_coordinate.latitude;
    v15 = altitude;
    md::AnchorManager::newAnchorAtCoordinate(&v16, v9, &v14, v5);
  }

  v10 = *[(VKLabelNavRoadLabel *)self->_etaLabel label];
  md::NavLabel::worldPointForDisplay(v10, context);
  *(v10 + 17) = v11;
  *(v10 + 18) = v12;
  *(v10 + 19) = v13;
}

- (void)createLabelWithNavContext:(const NavContext *)context orientation:(unsigned __int8)orientation etaDescription:(id)description selected:(BOOL)selected when:(optional<gss:(optional<gss:(void *)when :RouteLegWhen>)a8 :When>)a7 routeLegWhen:artworkCache:
{
  descriptionCopy = description;
  if (!self->_etaLabel)
  {
    displayEtaDescription = self->_displayEtaDescription;
    location = &self->_displayEtaDescription;
    v38 = descriptionCopy;
    if (displayEtaDescription != descriptionCopy && ![(VKRouteEtaDescription *)displayEtaDescription isEqual:descriptionCopy])
    {
      objc_storeStrong(location, description);
    }

    self->_selected = selected;
    self->_when = a7;
    self->_routeLegWhen = a8;
    self->_orientation = orientation;
    route = [(VKRouteInfo *)self->_routeInfo route];
    [route pointWithAltitudeCorrectionAtRouteCoordinate:*&self->_routeOffset];
    v39 = v19;
    v21 = v20;
    v23 = v22;

    routeInfo = [(VKLabelNavRouteEta *)self routeInfo];
    [routeInfo hasFocus];
    [(VKLabelNavRouteEta *)self etaComparisonToMain];
    route2 = [(VKRouteInfo *)self->_routeInfo route];
    [route2 transportType];
    displayEtaDescription = [(VKLabelNavRouteEta *)self displayEtaDescription];
    +[VKLabelNavRouteEta toStyleNavLabelType:](VKLabelNavRouteEta, "toStyleNavLabelType:", [displayEtaDescription routeEtaType]);
    when = [(VKLabelNavRouteEta *)self when];
    LOWORD(route) = [(VKLabelNavRouteEta *)self routeLegWhen];
    v27 = objc_msgSend_styleAttributes(*location);
    objc_msgSend_styleForNavContext_selected_focused_etaComparison_transportType_navLabelType_when_routeLegWhen_additionalAttributes_(VKLabelNavRouteEta, *&when, route, v27);

    v28 = tan(v21 * 0.00872664626 + 0.785398163);
    v29 = log(v28);
    v30.f64[0] = v39;
    v30.f64[1] = v29;
    __asm { FMOV            V2.2D, #0.5 }

    v45 = vmlaq_f64(_Q2, xmmword_1B33B0700, v30);
    descriptionCopy = v38;
    artworkAndKeyForEtaLabel(&v46, v38, context, &v41, &v45, orientation, when);
    v36 = v46;
    *&v46 = 0;
    if (v36)
    {
      self->_coordinate.latitude = v21;
      self->_coordinate.longitude = v39;
      self->_coordinate.altitude = v23;
      operator new();
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v44);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42);
    }
  }
}

- (void)clearLabel
{
  [(VKLabelNavRoadLabel *)self->_etaLabel setNavFeature:0];
  etaLabel = self->_etaLabel;
  self->_etaLabel = 0;
}

- (void)dealloc
{
  [(VKLabelNavRouteEta *)self clearLabel];
  v3.receiver = self;
  v3.super_class = VKLabelNavRouteEta;
  [(VKLabelNavRouteEta *)&v3 dealloc];
}

- (unsigned)etaComparisonToMain
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = self->_routeInfo;
  v4 = [objc_opt_class() toStyleEtaComparison:{-[VKRouteInfo etaComparisionToMain](v3, "etaComparisionToMain")}];

  return v4;
}

- (VKLabelNavRouteEta)initWithRouteInfo:(id)info routeCoord:(PolylineCoordinate)coord
{
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = VKLabelNavRouteEta;
  v8 = [(VKLabelNavRouteEta *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_routeInfo, info);
    v9->_routeOffset = coord;
    v10 = v9;
  }

  return v9;
}

- (BOOL)hasLabelWithAnchor
{
  hasLabel = [(VKLabelNavRouteEta *)self hasLabel];
  if (hasLabel)
  {
    LOBYTE(hasLabel) = *(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) != 0;
  }

  return hasLabel;
}

- (BOOL)hasAnchor
{
  hasLabel = [(VKLabelNavRouteEta *)self hasLabel];
  if (hasLabel)
  {
    LOBYTE(hasLabel) = *(*[(VKLabelNavRoadLabel *)self->_etaLabel label]+ 160) != 0;
  }

  return hasLabel;
}

- (Matrix<double,)worldPointForStaging
{
  label = [(VKLabelNavRouteEta *)self label];
  v2Label = [label label];
  v4 = *(*v2Label + 136);
  v5 = *(*v2Label + 144);
  v6 = *(*v2Label + 152);

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result._e[2] = v9;
  result._e[1] = v8;
  result._e[0] = v7;
  return result;
}

+ (unsigned)toStyleNavLabelType:(int64_t)type
{
  v3 = type + 4;
  if (type >= 5)
  {
    return 4;
  }

  return v3;
}

+ (unsigned)toStyleEtaComparison:(unsigned __int8)comparison
{
  if (comparison >= 4u)
  {
    return 0;
  }

  else
  {
    return comparison;
  }
}

+ (RoadSignStyleGroup)styleForNavContext:(SEL)context selected:(const NavContext *)selected focused:(BOOL)focused etaComparison:(BOOL)comparison transportType:(unsigned __int8)type navLabelType:(unsigned __int8)labelType when:(unsigned __int8)when routeLegWhen:(optional<gss:(optional<gss:(id)self2 :RouteLegWhen>)self1 :When>)self0 additionalAttributes:
{
  v57[1] = *MEMORY[0x1E69E9840];
  legWhenCopy = legWhen;
  v15 = objc_alloc_init(MEMORY[0x1E69A1DB0]);
  objc_msgSend_baseAttributesForEtaLabel_focused_etaComparison_transportType_navLabelType_when_routeLegWhen_additionalAttributes_(VKLabelNavRouteEta, *&a11, legWhenCopy);
  [v15 replaceAttributes:? count:?];
  md::NavContext::styleQueryForFeatureAttributes(&v49, selected, v15);
  v18 = v49;
  v17 = v50;
  v19 = v55;
  if (legWhenCopy)
  {
    if (v55 >= v56)
    {
      v23 = (v55 - v54) >> 3;
      if ((v23 + 1) >> 61)
      {
        goto LABEL_40;
      }

      v24 = (v56 - v54) >> 2;
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      if (v56 - v54 >= 0x7FFFFFFFFFFFFFF8)
      {
        v25 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }

      v53 = v57;
      if (v25)
      {
        v26 = mdm::zone_mallocator::instance(v16);
        v27 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v26, v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = &v27[8 * v23];
      v29 = &v27[8 * v25];
      *v28 = 0x10001004CLL;
      v20 = v28 + 8;
      v30 = &v28[-(v55 - v54)];
      memcpy(v30, v54, v55 - v54);
      v31 = v54;
      v32 = v56;
      v54 = v30;
      v55 = v20;
      v56 = v29;
      v51 = v31;
      v52 = v32;
      v49 = v31;
      v50 = v31;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v49);
    }

    else
    {
      *v55 = 0x10001004CLL;
      v20 = v19 + 8;
    }

    v55 = v20;
    [v15 replaceAttributes:? count:?];
    md::NavContext::styleQueryForFeatureAttributes(&v49, selected, v15);
    v22 = v49;
    v21 = v50;
    v19 = v55 - 8;
    v55 -= 8;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  if (v19 < v56)
  {
    *v19 = 0x30001004CLL;
    v33 = v19 + 8;
    goto LABEL_28;
  }

  v34 = (v19 - v54) >> 3;
  if ((v34 + 1) >> 61)
  {
LABEL_40:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v35 = (v56 - v54) >> 2;
  if (v35 <= v34 + 1)
  {
    v35 = v34 + 1;
  }

  if (v56 - v54 >= 0x7FFFFFFFFFFFFFF8)
  {
    v36 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = v35;
  }

  v53 = v57;
  v48 = legWhenCopy;
  if (v36)
  {
    v37 = mdm::zone_mallocator::instance(v16);
    v38 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v37, v36);
    v39 = v18;
  }

  else
  {
    v39 = v18;
    v38 = 0;
  }

  v41 = &v38[8 * v36];
  v40 = &v38[8 * v34];
  *v40 = 0x30001004CLL;
  v33 = v40 + 8;
  v42 = &v40[-(v55 - v54)];
  memcpy(v42, v54, v55 - v54);
  v43 = v54;
  v44 = v56;
  v54 = v42;
  v55 = v33;
  v56 = v41;
  v51 = v43;
  v52 = v44;
  v49 = v43;
  v50 = v43;
  std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v49);
  v18 = v39;
  legWhenCopy = v48;
LABEL_28:
  v55 = v33;
  [v15 replaceAttributes:? count:?];
  md::NavContext::styleQueryForFeatureAttributes(&v49, selected, v15);
  v45 = v49;
  v46 = v50;
  retstr->var0.var0 = v18;
  retstr->var0.var1 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  retstr->var1.var0 = v22;
  retstr->var1.var1 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  retstr->var2.var0 = v45;
  retstr->var2.var1 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(v46 + 1, 1uLL, memory_order_relaxed);
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v54);

    std::__shared_weak_count::__release_shared[abi:nn200100](v46);
  }

  else
  {
    std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v54);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
  }

  return result;
}

+ (vector<GeoCodecsFeatureStylePair,)baseAttributesForEtaLabel:(mdm:(id)label :(SEL)a3 zone_mallocator>> *__return_ptr)retstr focused:(BOOL)focused etaComparison:(BOOL)comparison transportType:(unsigned __int8)type navLabelType:(unsigned __int8)labelType when:(unsigned __int8)when routeLegWhen:(optional<gss:(optional<gss:(id)self1 :RouteLegWhen>)self0 :When>)a9 additionalAttributes:
{
  whenCopy = when;
  labelTypeCopy = labelType;
  typeCopy = type;
  comparisonCopy = comparison;
  focusedCopy = focused;
  legWhenCopy = legWhen;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v151 = retstr + 1;
  v16 = mdm::zone_mallocator::instance(legWhenCopy);
  v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v16, 1);
  *v17 = 0x1000000005;
  v18 = retstr->var1 - retstr->var0;
  v19 = &v17[-v18];
  memcpy(&v17[-v18], retstr->var0, v18);
  var0 = retstr->var0;
  retstr->var0 = v19;
  retstr->var1 = (v17 + 8);
  var2 = retstr->var2;
  retstr->var2 = (v17 + 8);
  v149 = var0;
  v150 = var2;
  v147 = var0;
  v148 = var0;
  v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  v23 = retstr->var2;
  retstr->var1 = (v17 + 8);
  if (v17 + 8 >= v23)
  {
    v25 = (v17 + 8 - retstr->var0) >> 3;
    if ((v25 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v26 = v23 - retstr->var0;
    v27 = v26 >> 2;
    if (v26 >> 2 <= (v25 + 1))
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      v28 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    v151 = retstr + 1;
    if (v28)
    {
      v29 = mdm::zone_mallocator::instance(v22);
      v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v29, v28);
    }

    else
    {
      v30 = 0;
    }

    v31 = &v30[8 * v28];
    v32 = &v30[8 * v25];
    *v32 = (((whenCopy << 32) | 0x10002) + 51);
    v24 = v32 + 1;
    v33 = retstr->var1 - retstr->var0;
    v34 = &v30[8 * v25 - v33];
    memcpy(v34, retstr->var0, v33);
    v35 = retstr->var0;
    retstr->var0 = v34;
    retstr->var1 = v24;
    v36 = retstr->var2;
    retstr->var2 = v31;
    v149 = v35;
    v150 = v36;
    v147 = v35;
    v148 = v35;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    *(v17 + 1) = ((whenCopy << 32) | 0x10002) + 51;
    v24 = (v17 + 16);
  }

  retstr->var1 = v24;
  v37 = retstr->var2;
  if (v24 >= v37)
  {
    v40 = v24 - retstr->var0;
    if ((v40 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v41 = v37 - retstr->var0;
    v42 = v41 >> 2;
    if (v41 >> 2 <= (v40 + 1))
    {
      v42 = v40 + 1;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v43 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v43 = v42;
    }

    v151 = retstr + 1;
    if (v43)
    {
      v44 = mdm::zone_mallocator::instance(v22);
      v45 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v44, v43);
    }

    else
    {
      v45 = 0;
    }

    v46 = &v45[8 * v40];
    v47 = &v45[8 * v43];
    if (focusedCopy)
    {
      v48 = 0x100010002;
    }

    else
    {
      v48 = 65538;
    }

    *v46 = v48;
    v39 = (v46 + 1);
    v49 = retstr->var1 - retstr->var0;
    v50 = (v46 - v49);
    memcpy(v46 - v49, retstr->var0, v49);
    v51 = retstr->var0;
    retstr->var0 = v50;
    retstr->var1 = v39;
    v52 = retstr->var2;
    retstr->var2 = v47;
    v149 = v51;
    v150 = v52;
    v147 = v51;
    v148 = v51;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    if (focusedCopy)
    {
      v38 = 0x100010002;
    }

    else
    {
      v38 = 65538;
    }

    *v24 = v38;
    v39 = v24 + 1;
  }

  retstr->var1 = v39;
  v53 = retstr->var2;
  if (v39 >= v53)
  {
    v56 = v39 - retstr->var0;
    if ((v56 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v57 = v53 - retstr->var0;
    v58 = v57 >> 2;
    if (v57 >> 2 <= (v56 + 1))
    {
      v58 = v56 + 1;
    }

    if (v57 >= 0x7FFFFFFFFFFFFFF8)
    {
      v59 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v59 = v58;
    }

    v151 = retstr + 1;
    if (v59)
    {
      v60 = mdm::zone_mallocator::instance(v22);
      v61 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v60, v59);
    }

    else
    {
      v61 = 0;
    }

    v62 = &v61[8 * v56];
    v63 = &v61[8 * v59];
    if (comparisonCopy)
    {
      v64 = 0x100010002;
    }

    else
    {
      v64 = 65538;
    }

    *v62 = (v64 + 75);
    v55 = v62 + 1;
    v65 = retstr->var1 - retstr->var0;
    v66 = (v62 - v65);
    memcpy(v62 - v65, retstr->var0, v65);
    v67 = retstr->var0;
    retstr->var0 = v66;
    retstr->var1 = v55;
    v68 = retstr->var2;
    retstr->var2 = v63;
    v149 = v67;
    v150 = v68;
    v147 = v67;
    v148 = v67;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    if (comparisonCopy)
    {
      v54 = 0x100010002;
    }

    else
    {
      v54 = 65538;
    }

    *v39 = (v54 + 75);
    v55 = v39 + 1;
  }

  retstr->var1 = v55;
  v69 = retstr->var2;
  if (v55 >= v69)
  {
    v72 = v55 - retstr->var0;
    v70 = a9;
    if ((v72 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v73 = v69 - retstr->var0;
    v74 = v73 >> 2;
    if (v73 >> 2 <= (v72 + 1))
    {
      v74 = v72 + 1;
    }

    if (v73 >= 0x7FFFFFFFFFFFFFF8)
    {
      v75 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v75 = v74;
    }

    v151 = retstr + 1;
    if (v75)
    {
      v76 = mdm::zone_mallocator::instance(v22);
      v77 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v76, v75);
    }

    else
    {
      v77 = 0;
    }

    v78 = &v77[8 * v75];
    v79 = &v77[8 * v72];
    *v79 = (((typeCopy << 32) | 0x10002) + 69);
    v71 = v79 + 1;
    v80 = retstr->var1 - retstr->var0;
    v81 = &v77[8 * v72 - v80];
    memcpy(v81, retstr->var0, v80);
    v82 = retstr->var0;
    retstr->var0 = v81;
    retstr->var1 = v71;
    v83 = retstr->var2;
    retstr->var2 = v78;
    v149 = v82;
    v150 = v83;
    v147 = v82;
    v148 = v82;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    v70 = a9;
    *v55 = (((typeCopy << 32) | 0x10002) + 69);
    v71 = v55 + 1;
  }

  retstr->var1 = v71;
  v84 = retstr->var2;
  if (v71 >= v84)
  {
    v86 = v71 - retstr->var0;
    if ((v86 + 1) >> 61)
    {
      goto LABEL_118;
    }

    v87 = v84 - retstr->var0;
    v88 = v87 >> 2;
    if (v87 >> 2 <= (v86 + 1))
    {
      v88 = v86 + 1;
    }

    if (v87 >= 0x7FFFFFFFFFFFFFF8)
    {
      v89 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v89 = v88;
    }

    v151 = retstr + 1;
    if (v89)
    {
      v90 = mdm::zone_mallocator::instance(v22);
      v91 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v90, v89);
    }

    else
    {
      v91 = 0;
    }

    v92 = &v91[8 * v89];
    v93 = &v91[8 * v86];
    *v93 = (((labelTypeCopy << 32) | 0x10002) + 14);
    v85 = v93 + 1;
    v94 = retstr->var1 - retstr->var0;
    v95 = &v91[8 * v86 - v94];
    memcpy(v95, retstr->var0, v94);
    v96 = retstr->var0;
    retstr->var0 = v95;
    retstr->var1 = v85;
    v97 = retstr->var2;
    retstr->var2 = v92;
    v149 = v96;
    v150 = v97;
    v147 = v96;
    v148 = v96;
    v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
  }

  else
  {
    *v71 = (((labelTypeCopy << 32) | 0x10002) + 14);
    v85 = v71 + 1;
  }

  retstr->var1 = v85;
  if ((*&v70 & 0x100) != 0)
  {
    v98 = retstr->var2;
    if (v85 >= v98)
    {
      v99 = v85 - retstr->var0;
      if ((v99 + 1) >> 61)
      {
        goto LABEL_118;
      }

      v100 = v98 - retstr->var0;
      v101 = v100 >> 2;
      if (v100 >> 2 <= (v99 + 1))
      {
        v101 = v99 + 1;
      }

      if (v100 >= 0x7FFFFFFFFFFFFFF8)
      {
        v102 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v102 = v101;
      }

      v151 = retstr + 1;
      if (v102)
      {
        v103 = mdm::zone_mallocator::instance(v22);
        v104 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v103, v102);
      }

      else
      {
        v104 = 0;
      }

      v105 = &v104[8 * v102];
      v106 = &v104[8 * v99];
      *v106 = (((v70.var0.__val_ << 32) | 0x10002) + 7);
      v85 = v106 + 1;
      v107 = retstr->var1 - retstr->var0;
      v108 = &v104[8 * v99 - v107];
      memcpy(v108, retstr->var0, v107);
      v109 = retstr->var0;
      retstr->var0 = v108;
      retstr->var1 = v85;
      v110 = retstr->var2;
      retstr->var2 = v105;
      v149 = v109;
      v150 = v110;
      v147 = v109;
      v148 = v109;
      v22 = std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
    }

    else
    {
      *v85++ = (((v70.var0.__val_ << 32) | 0x10002) + 7);
    }

    retstr->var1 = v85;
  }

  if ((*&a10 & 0x100) == 0)
  {
    goto LABEL_101;
  }

  v111 = retstr->var2;
  if (v85 >= v111)
  {
    v113 = v85 - retstr->var0;
    if (!((v113 + 1) >> 61))
    {
      v114 = v111 - retstr->var0;
      v115 = v114 >> 2;
      if (v114 >> 2 <= (v113 + 1))
      {
        v115 = v113 + 1;
      }

      if (v114 >= 0x7FFFFFFFFFFFFFF8)
      {
        v116 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v116 = v115;
      }

      v151 = retstr + 1;
      if (v116)
      {
        v117 = mdm::zone_mallocator::instance(v22);
        v118 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v117, v116);
      }

      else
      {
        v118 = 0;
      }

      v119 = &v118[8 * v113];
      v120 = &v118[8 * v116];
      *v119 = (((a10.var0.__val_ << 32) | 0x10002) + 82);
      v112 = v119 + 1;
      v121 = retstr->var1 - retstr->var0;
      v122 = (v119 - v121);
      memcpy(v119 - v121, retstr->var0, v121);
      v123 = retstr->var0;
      retstr->var0 = v122;
      retstr->var1 = v112;
      v124 = retstr->var2;
      retstr->var2 = v120;
      v149 = v123;
      v150 = v124;
      v147 = v123;
      v148 = v123;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
      goto LABEL_100;
    }

LABEL_118:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  *v85 = (((a10.var0.__val_ << 32) | 0x10002) + 82);
  v112 = v85 + 1;
LABEL_100:
  retstr->var1 = v112;
LABEL_101:
  if (legWhenCopy)
  {
    for (i = 0; i < [(mdm::zone_mallocator *)legWhenCopy countAttrs]; ++i)
    {
      v126 = [(mdm::zone_mallocator *)legWhenCopy attributeAtIndex:i];
      v127 = v126;
      var1 = retstr->var1;
      v128 = retstr->var2;
      if (var1 >= v128)
      {
        v131 = var1 - retstr->var0;
        if ((v131 + 1) >> 61)
        {
          goto LABEL_118;
        }

        v132 = v128 - retstr->var0;
        v133 = v132 >> 2;
        if (v132 >> 2 <= (v131 + 1))
        {
          v133 = v131 + 1;
        }

        if (v132 >= 0x7FFFFFFFFFFFFFF8)
        {
          v134 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v134 = v133;
        }

        v151 = retstr + 1;
        if (v134)
        {
          v135 = mdm::zone_mallocator::instance(v126);
          v136 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v135, v134);
        }

        else
        {
          v136 = 0;
        }

        v137 = &v136[8 * v131];
        v138 = &v136[8 * v134];
        *v137 = *v127;
        v130 = v137 + 1;
        v139 = retstr->var1 - retstr->var0;
        v140 = (v137 - v139);
        memcpy(v137 - v139, retstr->var0, v139);
        v141 = retstr->var0;
        retstr->var0 = v140;
        retstr->var1 = v130;
        v142 = retstr->var2;
        retstr->var2 = v138;
        v149 = v141;
        v150 = v142;
        v147 = v141;
        v148 = v141;
        std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(&v147);
      }

      else
      {
        *var1 = *v126;
        v130 = var1 + 1;
      }

      retstr->var1 = v130;
    }
  }

  return result;
}

+ (id)artworkForEtaDescription:(id)description navContext:(const NavContext *)context roadSignStyleGroup:(const void *)group mercatorPoint:(const void *)point orientation:(unsigned __int8)orientation isSelected:(BOOL)selected artworkCache:(void *)cache
{
  artworkAndKeyForEtaLabel(v11, description, context, group, point, orientation, cache);
  v9 = v11[0];

  return v9;
}

@end