@interface TUIMediaBackdropLayout
- (TUIMediaBackdropLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller;
- (id)_newImageResourcesWithContext:(id)context;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation TUIMediaBackdropLayout

- (TUIMediaBackdropLayout)initWithModel:(id)model parent:(id)parent controller:(id)controller
{
  v8.receiver = self;
  v8.super_class = TUIMediaBackdropLayout;
  v5 = [(TUILayout *)&v8 initWithModel:model parent:parent controller:controller];
  v6 = v5;
  if (v5)
  {
    [(TUILayout *)v5 setSpecifiedWidthComputeInherited:1];
    [(TUILayout *)v6 setSpecifiedHeightComputeInherited:1];
  }

  return v6;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  if (kind < 3)
  {
    return 0;
  }

  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v7 = v6;
  v9 = v8;
  v39 = [(TUIMediaBackdropLayout *)self _newImageResourcesWithContext:contextCopy];
  v10 = [v39 url];
  v11 = objc_msgSend_box(self);
  v36 = TUIResourceLoadForURL(v10, [v11 load]);

  v34 = [TUIImageLayerConfig alloc];
  [contextCopy contentsScale];
  v13 = v12;

  v38 = objc_msgSend_box(self);
  [v38 cornerRadius];
  v15 = v14;
  v37 = objc_msgSend_box(self);
  fallbackColor = [v37 fallbackColor];
  v35 = objc_msgSend_box(self);
  contentsGravity = [v35 contentsGravity];
  v16 = objc_msgSend_box(self);
  crossfadesContents = [v16 crossfadesContents];
  v18 = objc_msgSend_box(self);
  [v18 opacity];
  v20 = v19;
  v21 = objc_msgSend_box(self);
  LOBYTE(v10) = [v21 continuousCorners];
  v22 = objc_msgSend_box(self);
  shouldRasterize = [v22 shouldRasterize];
  v24 = objc_msgSend_box(self);
  blendMode = [v24 blendMode];
  BYTE1(v31) = shouldRasterize;
  LOBYTE(v31) = v10;
  v26 = [(TUIImageLayerConfig *)v34 initWithContentsScale:v39 resource:v36 load:fallbackColor cornerRadius:contentsGravity fallbackColor:0 contentsGravity:crossfadesContents hflip:v13 crossfadesContents:v15 opacity:v20 continuousCorners:v31 shouldRasterize:blendMode blendMode:?];

  v27 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v26 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(TUIRenderModelLayer *)v27 setSize:v7, v9];
  v28 = objc_msgSend_box(self);
  identifier = [v28 identifier];
  [(TUIRenderModelLayer *)v27 setIdentifier:identifier];

  return v27;
}

- (id)_newImageResourcesWithContext:(id)context
{
  contextCopy = context;
  [(TUILayout *)self computedNaturalSize];
  v6 = v5;
  v8 = v7;
  [contextCopy contentsScale];
  v10 = v9;
  controller = [(TUILayout *)self controller];
  manager = [controller manager];
  imageResourceCache = [manager imageResourceCache];

  v14 = objc_msgSend_box(self);
  urlString = [v14 urlString];

  v16 = objc_msgSend_box(self);
  controller2 = v16;
  if (urlString)
  {
    urlString2 = [v16 urlString];
    resourceKind2 = objc_msgSend_box(self);
    baseURL = [resourceKind2 baseURL];
    v21 = [imageResourceCache imageResourceForTemplatedURL:urlString2 baseURL:baseURL naturalSize:v6 contentsScale:{v8, v10}];
  }

  else
  {
    resourceKind = [v16 resourceKind];

    if (!resourceKind)
    {
LABEL_7:
      v30 = 0;
      goto LABEL_8;
    }

    controller2 = [(TUILayout *)self controller];
    urlString2 = objc_msgSend_box(self);
    resourceKind2 = [urlString2 resourceKind];
    baseURL = objc_msgSend_box(self);
    resourceInstance = [baseURL resourceInstance];
    v23 = objc_msgSend_box(self);
    resourceOptions = [v23 resourceOptions];
    v21 = [controller2 imageResourceForKind:resourceKind2 naturalSize:resourceInstance contentsScale:resourceOptions instance:v6 options:{v8, v10}];
  }

  if (!v21)
  {
    goto LABEL_7;
  }

  [(TUILayout *)self computedNaturalSize];
  v26 = v25;
  v28 = v27;
  [contextCopy contentsScale];
  v30 = [imageResourceCache mediaBackdropImageResourceFrom:v21 naturalSize:v26 contentScale:{v28, v29}];

LABEL_8:
  return v30;
}

@end