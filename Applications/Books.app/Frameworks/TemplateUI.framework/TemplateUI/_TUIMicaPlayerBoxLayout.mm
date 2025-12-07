@interface _TUIMicaPlayerBoxLayout
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
@end

@implementation _TUIMicaPlayerBoxLayout

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  [(TUILayout *)self renderModelSizeWithContext:contextCopy];
  v8 = v7;
  v10 = v9;
  v11 = objc_msgSend_box(self);
  urlString = [v11 urlString];
  v13 = objc_msgSend_box(self);
  baseURL = [v13 baseURL];
  v15 = [NSURL fileURLWithPath:urlString relativeToURL:baseURL];

  if (kind < 3)
  {
    v36 = 0;
  }

  else
  {
    controller = [(TUILayout *)self controller];
    [controller manager];
    v17 = v52 = v15;
    resourceRegistry = [v17 resourceRegistry];
    v19 = objc_msgSend_box(self);
    resourceKind = [v19 resourceKind];
    v51 = [resourceRegistry fileProviderForKind:resourceKind];

    v21 = [_TUIMicaPlayerLayerConfig alloc];
    v50 = objc_msgSend_box(self);
    gravity = [v50 gravity];
    v49 = objc_msgSend_box(self);
    textKey = [v49 textKey];
    v47 = objc_msgSend_box(self);
    textValue = [v47 textValue];
    v46 = objc_msgSend_box(self);
    shouldStartAtEnd = [v46 shouldStartAtEnd];
    v45 = objc_msgSend_box(self);
    triggerName = [v45 triggerName];
    v44 = objc_msgSend_box(self);
    targetTriggerState = [v44 targetTriggerState];
    v25 = objc_msgSend_box(self);
    [v25 triggerDelay];
    v27 = v26;
    [contextCopy environment];
    v28 = v48 = contextCopy;
    [v28 contentsScale];
    v30 = v29;
    v31 = objc_msgSend_box(self);
    [v31 opacity];
    v33 = v32;
    v34 = objc_msgSend_box(self);
    fontSpec = [v34 fontSpec];
    v42 = [(_TUIMicaPlayerLayerConfig *)v21 initWithURL:v52 gravity:gravity textKey:textKey textValue:textValue shouldStartAtEnd:shouldStartAtEnd triggerName:triggerName targetTriggerState:v27 triggerDelay:v30 contentScale:v33 opacity:targetTriggerState fontSpec:fontSpec fileProvider:v51];

    contextCopy = v48;
    v36 = [[TUIRenderModelLayer alloc] initWithSubmodels:0 config:v42 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v37 = objc_msgSend_box(self);
    identifier = [v37 identifier];
    [(TUIRenderModelLayer *)v36 setIdentifier:identifier];

    v15 = v52;
    [(TUIRenderModelLayer *)v36 setSize:v8, v10];
  }

  return v36;
}

@end