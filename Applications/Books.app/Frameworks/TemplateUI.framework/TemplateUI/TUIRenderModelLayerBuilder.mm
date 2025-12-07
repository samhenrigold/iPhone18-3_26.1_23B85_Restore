@interface TUIRenderModelLayerBuilder
- (void)_updateFromPreviousSubmodels:(id)submodels newSubmodels:(id)newSubmodels;
- (void)_updateLayerWithPreviousModel:(id)model newModel:(id)newModel;
- (void)_updateSubmodelLayers;
- (void)dynamicUserInterfaceTraitDidChange;
- (void)setModel:(id)model;
@end

@implementation TUIRenderModelLayerBuilder

- (void)setModel:(id)model
{
  modelCopy = model;
  p_model = &self->_model;
  model = self->_model;
  if (model != modelCopy)
  {
    v34 = modelCopy;
    modelCopy2 = model;
    [(TUIRenderModelLayerBuilder *)self _updateLayerWithPreviousModel:modelCopy2 newModel:v34];
    submodels = [(TUIRenderModelLayer *)modelCopy2 submodels];
    submodels2 = [(TUIRenderModelLayer *)v34 submodels];
    [(TUIRenderModelLayerBuilder *)self _updateFromPreviousSubmodels:submodels newSubmodels:submodels2];

    objc_storeStrong(&self->_model, model);
    if (![(TUIRenderModelLayer *)modelCopy2 isEqual:v34])
    {
      [(TUIRenderModelLayerBuilder *)self _updateSubmodelLayers];
      v11 = objc_msgSend_config(self->_model);

      if (v11)
      {
        v12 = objc_msgSend_config(self->_model);
        [v12 configureSublayers:self->_sublayers forLayer:self->_layer];
      }

      else
      {
        [(CALayer *)self->_layer setSublayers:self->_sublayers];
      }

      [(TUIRenderModelLayer *)*p_model size];
      v14 = v13;
      v16 = v15;
      [(TUIRenderModelLayer *)*p_model eraseableInsets];
      v21.f64[0] = v17;
      v21.f64[1] = v18;
      v22.f64[0] = v19;
      v22.f64[1] = v20;
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v21), vceqq_f64(*&UIEdgeInsetsZero.bottom, v22)))))
      {
        layer = self->_layer;
        v33 = 0.5;
        v32 = 0.5;
      }

      else
      {
        v23 = v18 + 0.0;
        v24 = v17 + 0.0;
        v25 = v14 - (v18 + v20);
        v26 = v16 - (v17 + v19);
        v36.origin.x = 0.0;
        v36.origin.y = 0.0;
        v36.size.width = v14;
        v36.size.height = v16;
        MidX = CGRectGetMidX(v36);
        v37.origin.x = 0.0;
        v37.origin.y = 0.0;
        v37.size.width = v14;
        v37.size.height = v16;
        MidY = CGRectGetMidY(v37);
        v38.origin.x = v23;
        v38.origin.y = v24;
        v38.size.width = v25;
        v38.size.height = v26;
        v29 = (MidX - CGRectGetMinX(v38)) / v25;
        v39.origin.x = v23;
        v39.origin.y = v24;
        v39.size.width = v25;
        v39.size.height = v26;
        MinY = CGRectGetMinY(v39);
        layer = self->_layer;
        v32 = (MidY - MinY) / v26;
        v33 = v29;
      }

      [(CALayer *)layer setAnchorPoint:v33, v32];
    }

    modelCopy = v34;
  }
}

- (void)dynamicUserInterfaceTraitDidChange
{
  v3 = objc_msgSend_config(self->_model, a2);
  [v3 dynamicUserInterfaceTraitDidChangeForLayer:self->_layer];
}

- (void)_updateLayerWithPreviousModel:(id)model newModel:(id)newModel
{
  modelCopy = model;
  newModelCopy = newModel;
  v7 = objc_msgSend_config(newModelCopy);
  v8 = objc_msgSend_config(modelCopy);
  if (v8 == v7)
  {
    goto LABEL_23;
  }

  [newModelCopy size];
  v10 = v9;
  v12 = v11;
  v13 = [v7 layerClassForSize:?];
  [newModelCopy eraseableInsets];
  v15 = v14 + 0.0;
  v17 = v16 + 0.0;
  v19 = v10 - (v14 + v18);
  v21 = v12 - (v16 + v20);
  layer = self->_layer;
  if (layer && ((-[CALayer bounds](layer, "bounds"), v53.origin.x = v15, v53.origin.y = v17, v53.size.width = v19, v53.size.height = v21, !(v23 = CGRectEqualToRect(v52, v53))) ? (v24 = [v8 reuseLayerForBoundsChange]) : (v24 = 1), self->_layer && v13 == objc_opt_class() && (v25 = objc_opt_class(), v25 == objc_opt_class()) && (objc_msgSend(modelCopy, "identifier"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(newModelCopy, "identifier"), v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v26, "isEqual:", v27) & v24, v27, v26, (v28 & 1) != 0)))
  {
    v29 = [v8 isEqualToConfig:v7];
    v30 = v29;
    if (v23)
    {
      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [(CALayer *)self->_layer setBounds:v15, v17, v19, v21];
      if (v30)
      {
        [v7 configureBounds:self->_layer];
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (v13)
    {
      v31 = v13;
    }

    else
    {
      v31 = CALayer;
    }

    layer = [v31 layer];
    v33 = self->_layer;
    self->_layer = layer;

    [(CALayer *)self->_layer setBounds:v15, v17, v19, v21];
  }

  [v7 configureLayer:{self->_layer, modelCopy}];
LABEL_18:
  [v7 configureDelegate:{self->_layer, modelCopy}];
  delegate = [(CALayer *)self->_layer delegate];
  if (delegate && (v35 = delegate, [(CALayer *)self->_layer delegate], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_opt_respondsToSelector(), v36, v35, (v37 & 1) == 0))
  {
    if (_TUIDeviceHasInternalInstall(v38, v39))
    {
      v41 = [NSException alloc];
      v49[0] = @"layer";
      v42 = self->_layer;
      v43 = v42;
      if (!v42)
      {
        v43 = +[NSNull null];
      }

      v49[1] = @"config";
      v50[0] = v43;
      v44 = v7;
      if (!v7)
      {
        v44 = +[NSNull null];
      }

      v50[1] = v44;
      v45 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:2];
      v46 = [v41 initWithName:@"LayerWithoutAnimationDelegate" reason:@"A layer without an animation delegate will result in the wrong animations" userInfo:v45];
      v47 = v46;

      if (!v7)
      {
      }

      if (!v42)
      {
      }

      objc_exception_throw(v46);
    }
  }

  else
  {
    delegate2 = [(CALayer *)self->_layer delegate];

    if (!delegate2)
    {
      [(CALayer *)self->_layer setDelegate:self];
    }
  }

LABEL_23:
}

- (void)_updateFromPreviousSubmodels:(id)submodels newSubmodels:(id)newSubmodels
{
  if (submodels != newSubmodels)
  {
    v17 = v4;
    v18 = v5;
    newSubmodelsCopy = newSubmodels;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_CF5D4;
    v14 = &unk_261570;
    selfCopy = self;
    v16 = objc_opt_new();
    v8 = v16;
    [newSubmodelsCopy enumerateObjectsUsingBlock:&v11];

    v9 = [v8 copy];
    builderMap = self->_builderMap;
    self->_builderMap = v9;
  }
}

- (void)_updateSubmodelLayers
{
  v3 = objc_opt_new();
  submodels = [(TUIRenderModelLayer *)self->_model submodels];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_CF770;
  v11 = &unk_261570;
  selfCopy = self;
  v5 = v3;
  v13 = v5;
  [submodels enumerateObjectsUsingBlock:&v8];

  v6 = [v5 count];
  if (v6)
  {
    v6 = [v5 copy];
  }

  sublayers = self->_sublayers;
  self->_sublayers = v6;
}

@end