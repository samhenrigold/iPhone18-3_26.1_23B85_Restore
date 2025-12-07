@interface _TUIFeedSectionModel
- (BOOL)invalidateViewAtIndexPath:(id)path;
- (id).cxx_construct;
- (id)visibleViewAtIndexPath:(id)path;
- (void)appendRenderOverrideObservers:(id)observers;
- (void)appendVisibleView:(id)view;
- (void)resumeReuseOfView:(id)view;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)suspendReuseOfView:(id)view;
- (void)updateInvalidatedWithHost:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view;
- (void)updateVisible:(BOOL)visible bounds:(CGRect)bounds host:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view;
@end

@implementation _TUIFeedSectionModel

- (void)appendVisibleView:(id)view
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [view addObject:i[3]];
  }
}

- (void)appendRenderOverrideObservers:(id)observers
{
  for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
  {
    [i[3] appendRenderOverrideObservers:observers];
  }
}

- (void)updateVisible:(BOOL)visible bounds:(CGRect)bounds host:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  visibleCopy = visible;
  hostCopy = host;
  resolverCopy = resolver;
  factoryCopy = factory;
  viewCopy = view;
  v102 = hostCopy;
  sub_130E34(v128, &self->_reuseSuspendedViews);
  tui_hostingView = [hostCopy tui_hostingView];
  subviewsDelegate = [viewCopy subviewsDelegate];
  v17 = objc_opt_new();
  v93 = v17;
  [(TUIRenderModelSection *)self->_renderModel appendLiveTransformLayoutAttributes:v17 forElementsInRect:resolverCopy withLiveTransformResolver:x, y, width, height];
  if (visibleCopy)
  {
    [(TUIRenderModelSection *)self->_renderModel appendLayoutAttributes:v17 forElementsInRect:resolverCopy withLiveTransformResolver:x, y, width, height];
  }

  if ([v17 count])
  {
    impressionSnapshot = [viewCopy impressionSnapshot];
    v19 = impressionSnapshot == 0;

    if (!v19)
    {
      renderModel = self->_renderModel;
      impressionSnapshot2 = [viewCopy impressionSnapshot];
      [(TUIRenderModelSection *)renderModel appendImpressionLayoutAttributes:v93 forElementsInRect:impressionSnapshot2 snapshot:x, y, width, height];
    }

    overrides = [viewCopy overrides];
    v23 = overrides == 0;

    if (!v23)
    {
      [viewCopy _updateLayoutAttributes:v93];
    }

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = v93;
    v24 = [obj countByEnumeratingWithState:&v124 objects:v143 count:16];
    if (v24)
    {
      v104 = *v125;
      do
      {
        v107 = v24;
        for (i = 0; i != v107; i = i + 1)
        {
          if (*v125 != v104)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v124 + 1) + 8 * i);
          indexPath = [v26 indexPath];
          tui_row = [indexPath tui_row];
          v28 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
          submodel = [v28 submodel];
          reuseIdentifier = [submodel reuseIdentifier];

          v30 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &tui_row);
          v31 = v30;
          if (v28)
          {
            if (v30)
            {
              reuseIdentifier2 = [v30[3] reuseIdentifier];
              v33 = reuseIdentifier2;
              if (reuseIdentifier2 == reuseIdentifier)
              {

LABEL_31:
                v46 = v31[3];
                *buf = &tui_row;
                sub_13118C(v128, &tui_row, &std::piecewise_construct, buf)[3] = v46;
                sub_34630(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v31);
                goto LABEL_32;
              }

              reuseIdentifier3 = [v31[3] reuseIdentifier];
              v35 = objc_msgSend_isEqualToString_(reuseIdentifier3);

              if (v35)
              {
                goto LABEL_31;
              }

              if (_TUIDeviceHasInternalInstall(v36, v37))
              {
                v58 = v31[3];
                v94 = v58;
                v59 = TUIDefaultLog(v58);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v108 = v59;
                  v61 = tui_row;
                  layoutAttributes = [v58 layoutAttributes];
                  renderModel = [layoutAttributes renderModel];
                  identifier = [renderModel identifier];
                  tui_identifierToString = [identifier tui_identifierToString];
                  reuseIdentifier4 = [v58 reuseIdentifier];
                  v65 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
                  identifier2 = [v65 identifier];
                  tui_identifierToString2 = [identifier2 tui_identifierToString];
                  *buf = 134219010;
                  *&buf[4] = v61;
                  v135 = 2112;
                  v136 = tui_identifierToString;
                  v137 = 2112;
                  v138 = reuseIdentifier4;
                  v139 = 2112;
                  v140 = tui_identifierToString2;
                  v141 = 2112;
                  v59 = v108;
                  v142 = reuseIdentifier;
                  _os_log_error_impl(&dword_0, v108, OS_LOG_TYPE_ERROR, "[%lu] view re-used with mismatching reuseIdentifier (%@,%@) vs (%@,%@)", buf, 0x34u);
                }

                for (j = self->_reuseSuspendedViews.__table_.__first_node_.__next_; j; j = *j)
                {
                  v85 = j[2];
                  v86 = j[3];
                  v87 = TUIDefaultLog(v68);
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    layoutAttributes2 = [v86 layoutAttributes];
                    renderModel2 = [layoutAttributes2 renderModel];
                    identifier3 = [renderModel2 identifier];
                    tui_identifierToString3 = [identifier3 tui_identifierToString];
                    reuseIdentifier5 = [v86 reuseIdentifier];
                    *buf = 134218498;
                    *&buf[4] = v85;
                    v135 = 2112;
                    v136 = tui_identifierToString3;
                    v137 = 2112;
                    v138 = reuseIdentifier5;
                    _os_log_error_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "[%lu] suspended reuse (%@,%@)", buf, 0x20u);
                  }
                }

                v70 = [NSException alloc];
                v133[0] = indexPath;
                v132[0] = @"indexPath";
                v132[1] = @"viewIdentifier";
                layoutAttributes3 = [v94 layoutAttributes];
                renderModel3 = [layoutAttributes3 renderModel];
                identifier4 = [renderModel3 identifier];
                tui_identifierToString4 = [identifier4 tui_identifierToString];
                v75 = tui_identifierToString4;
                if (tui_identifierToString4)
                {
                  v76 = tui_identifierToString4;
                }

                else
                {
                  v76 = @"nil";
                }

                v133[1] = v76;
                v132[2] = @"viewReuseIdentifier";
                reuseIdentifier6 = [v94 reuseIdentifier];
                v78 = reuseIdentifier6;
                if (reuseIdentifier6)
                {
                  v79 = reuseIdentifier6;
                }

                else
                {
                  v79 = @"nil";
                }

                v133[2] = v79;
                v132[3] = @"renderIdentifier";
                v109 = [(TUIRenderModelSection *)self->_renderModel viewModelWithIndex:tui_row];
                identifier5 = [v109 identifier];
                tui_identifierToString5 = [identifier5 tui_identifierToString];
                v80 = tui_identifierToString5;
                if (!tui_identifierToString5)
                {
                  v80 = @"nil";
                }

                v132[4] = @"renderReuseIdentifier";
                v81 = reuseIdentifier;
                if (!reuseIdentifier)
                {
                  v81 = @"nil";
                }

                v133[3] = v80;
                v133[4] = v81;
                v82 = [NSDictionary dictionaryWithObjects:v133 forKeys:v132 count:5];
                v83 = [v70 initWithName:@"InvalidReuse" reason:@"A view with the wrong identifier is being re-used" userInfo:v82];
                v84 = v83;

                objc_exception_throw(v83);
              }
            }
          }

          else if (v30)
          {
            goto LABEL_31;
          }

          v38 = v26;
          zIndex = [v38 zIndex];
          v40 = self->_renderModel;
          if (self->_previousRenderModel && sub_1310D8(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &tui_row))
          {
            v41 = [(TUIRenderModelSection *)self->_previousRenderModel layoutAttributesForViewAtIndexPath:indexPath withLiveTransformResolver:resolverCopy];
            if (v41)
            {
              v42 = self->_previousRenderModel;

              v43 = v41;
              v40 = v42;
              v38 = v43;
            }
          }

          v44 = [(TUIRenderModelSection *)v40 viewAtIndexPath:indexPath factory:factoryCopy host:v102];
          if (v44)
          {
            v117[0] = _NSConcreteStackBlock;
            v117[1] = 3221225472;
            v117[2] = sub_129C60;
            v117[3] = &unk_2621F0;
            v118 = tui_hostingView;
            v45 = v44;
            v122 = zIndex;
            v119 = v45;
            selfCopy = self;
            v121 = v38;
            [UIView performWithoutAnimation:v117];
            if (self->_currentViewState)
            {
              v114[0] = _NSConcreteStackBlock;
              v114[1] = 3221225472;
              v114[2] = sub_129FFC;
              v114[3] = &unk_262218;
              v114[4] = self;
              v116 = tui_row;
              v115 = v45;
              [UIView performWithoutAnimation:v114];
            }

            [subviewsDelegate feedView:viewCopy willDisplayView:v45 atIndexPath:indexPath];
            [v45 viewWillDisplay];
            *buf = &tui_row;
            sub_13118C(v128, &tui_row, &std::piecewise_construct, buf)[3] = v45;
          }

LABEL_32:
        }

        v24 = [obj countByEnumeratingWithState:&v124 objects:v143 count:16];
      }

      while (v24);
    }
  }

  sub_28FD0(&self->_visibleViews, v128);
  for (k = self->_reuseSuspendedViews.__table_.__first_node_.__next_; k; k = *k)
  {
    v48 = sub_1310D8(v128, k + 2);
    if (v48)
    {
      sub_34630(v128, v48);
    }
  }

  if (v130)
  {
    for (m = v129; m; m = *m)
    {
      v50 = m[2];
      v51 = m[3];
      viewStateSave = [v51 viewStateSave];
      if (viewStateSave)
      {
        currentViewState = self->_currentViewState;
        v54 = [(TUIRenderModelSection *)self->_renderModel identifierForViewAtIndex:v50];
        [(TUIMutableViewState *)currentViewState setViewState:viewStateSave forIdentifier:v54];
      }

      v55 = [NSIndexPath tui_indexPathForRow:m[2] inSection:self->_sectionIndex];
      [subviewsDelegate feedView:viewCopy didEndDisplayView:v51 atIndexPath:v55];

      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_12A09C;
      v112[3] = &unk_262240;
      v56 = v51;
      v113 = v56;
      [UIView performWithoutAnimation:v112];
      v131 = v56;
      v57 = [NSArray arrayWithObjects:&v131 count:1];
      [factoryCopy viewFactoryReuseSubviews:v57 host:v102];
    }
  }

  self->_visible = visibleCopy;

  sub_11694(v128);
}

- (void)updateInvalidatedWithHost:(id)host liveTransformResolver:(id)resolver factory:(id)factory feedView:(id)view
{
  hostCopy = host;
  resolverCopy = resolver;
  factoryCopy = factory;
  viewCopy = view;
  currentUpdateCollection = [viewCopy currentUpdateCollection];
  changes = [currentUpdateCollection changes];

  subviewsDelegate = [viewCopy subviewsDelegate];
  overrides = [viewCopy overrides];
  impressionSnapshot = [viewCopy impressionSnapshot];
  animatedUpdateCompletionGroup = [viewCopy animatedUpdateCompletionGroup];
  next = self->_invalidatedViews.__table_.__first_node_.__next_;
  if (next)
  {
    v51 = 0;
    v41 = v62;
    selfCopy = self;
    do
    {
      *&v53[0] = next[2];
      v12 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, v53);
      v13 = v12;
      if (v12)
      {
        v14 = v12[3];
        v15 = [NSIndexPath tui_indexPathForRow:*&v53[0] inSection:self->_sectionIndex, v41];
        v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForViewAtIndexPath:v15 withLiveTransformResolver:resolverCopy];
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = impressionSnapshot == 0;
        }

        if (!v17)
        {
          v16 = [(TUIRenderModelSection *)self->_renderModel layoutAttributesForImpressionAtIndexPath:v15 snapshot:?];
        }

        if (v16)
        {
          if (overrides)
          {
            v68 = v16;
            v18 = [NSArray arrayWithObjects:&v68 count:1];
            [viewCopy _updateLayoutAttributes:v18];
          }

          zIndex = [v16 zIndex];
          layoutAttributes = [v14 layoutAttributes];
          v21 = zIndex != [layoutAttributes zIndex];

          TUIReusableSubviewApplyLayoutAttributes(v14, v16);
          renderModel = selfCopy->_renderModel;
          inserts = [changes inserts];
          updates = [changes updates];
          deletes = [changes deletes];
          v26 = TUIAnimationCollectionViewAnimationForView(renderModel, v14, v16, inserts, updates, deletes);

          v51 |= v21;
          if (v26)
          {
            v61[0] = _NSConcreteStackBlock;
            v61[1] = 3221225472;
            v62[0] = sub_12A7D0;
            v62[1] = &unk_262268;
            v27 = viewCopy;
            v63 = v27;
            v28 = v14;
            v64 = v28;
            v29 = animatedUpdateCompletionGroup;
            v65 = v29;
            v30 = objc_retainBlock(v61);
            if (animatedUpdateCompletionGroup)
            {
              dispatch_group_enter(v29);
            }

            [v27 suspendReuseOfView:v28];
            (v26)[2](v26, v30);
          }
        }

        else
        {
          v31 = [NSIndexPath tui_indexPathForRow:*&v53[0] inSection:self->_sectionIndex];
          [subviewsDelegate feedView:viewCopy didEndDisplayView:v14 atIndexPath:v31];

          v59[0] = _NSConcreteStackBlock;
          v59[1] = 3221225472;
          v59[2] = sub_12A820;
          v59[3] = &unk_262240;
          v32 = v14;
          v60 = v32;
          [UIView performWithoutAnimation:v59];
          v67 = v32;
          v33 = [NSArray arrayWithObjects:&v67 count:1];
          [factoryCopy viewFactoryReuseSubviews:v33 host:hostCopy];

          sub_34630(&selfCopy->_visibleViews.__table_.__bucket_list_.__ptr_, v13);
          v26 = v60;
        }

        self = selfCopy;
      }

      next = *next;
    }

    while (next);
    if (v51)
    {
      tui_hostingView = [hostCopy tui_hostingView];
      subviews = [tui_hostingView subviews];
      v36 = [subviews sortedArrayUsingComparator:&stru_262288];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v55 objects:v66 count:16];
      if (v38)
      {
        v39 = *v56;
        do
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v56 != v39)
            {
              objc_enumerationMutation(v37);
            }

            [tui_hostingView bringSubviewToFront:{*(*(&v55 + 1) + 8 * i), v41}];
          }

          v38 = [v37 countByEnumeratingWithState:&v55 objects:v66 count:16];
        }

        while (v38);
      }

      self = selfCopy;
    }
  }

  memset(v53, 0, sizeof(v53));
  v54 = 1065353216;
  sub_8BFC8(&self->_invalidatedViews, v53);
  sub_11694(v53);
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  if (self->_semanticContentAttribute != attribute)
  {
    v9 = v4;
    v10 = v3;
    v11 = v5;
    v12 = v6;
    self->_semanticContentAttribute = attribute;
    for (i = self->_visibleViews.__table_.__first_node_.__next_; i; i = *i)
    {
      [i[3] setSemanticContentAttribute:{self->_semanticContentAttribute, v9, v10, v11, v12}];
    }
  }
}

- (id)visibleViewAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && (v9 = [pathCopy tui_row], (v6 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &v9)) != 0))
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)invalidateViewAtIndexPath:(id)path
{
  pathCopy = path;
  tui_row = [pathCopy tui_row];
  sub_1313BC(&self->_invalidatedViews.__table_.__bucket_list_.__ptr_, &tui_row, &tui_row);

  return 1;
}

- (void)suspendReuseOfView:(id)view
{
  viewCopy = view;
  layoutAttributes = [viewCopy layoutAttributes];
  indexPath = [layoutAttributes indexPath];

  tui_row = [indexPath tui_row];
  if (!sub_1310D8(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, &tui_row))
  {
    v7 = sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &tui_row);
    if (v7)
    {
      v8 = v7[3];
      v10 = &tui_row;
      sub_13118C(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, &tui_row, &std::piecewise_construct, &v10)[3] = v8;
    }
  }
}

- (void)resumeReuseOfView:(id)view
{
  layoutAttributes = [view layoutAttributes];
  indexPath = [layoutAttributes indexPath];

  tui_row = [indexPath tui_row];
  v6 = sub_1310D8(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, &tui_row);
  if (v6)
  {
    sub_1310D8(&self->_visibleViews.__table_.__bucket_list_.__ptr_, &tui_row);
    sub_34630(&self->_reuseSuspendedViews.__table_.__bucket_list_.__ptr_, v6);
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end