@interface TUINavigationBarItemLayout
- (BOOL)collectHostingPropertiesWithCollector:(id)collector;
- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context;
- (void)computeLayout;
@end

@implementation TUINavigationBarItemLayout

- (void)computeLayout
{
  v10 = 0u;
  v11 = 0u;
  v3 = COERCE_FLOAT(objc_msgSend_specifiedWidth(self, a2));
  v12 = 0u;
  v13 = 0u;
  v4 = objc_msgSend_children(self, 0);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setSpecifiedWidthComputeInherited:1];
        [v9 setContainingWidth:v3];
        objc_msgSend_validateLayout(v9);
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)collectHostingPropertiesWithCollector:(id)collector
{
  collectorCopy = collector;
  v5 = objc_msgSend_box(self);
  hostingIdentifiers = [v5 hostingIdentifiers];

  if (hostingIdentifiers)
  {
    hostingIdentifiers2 = [v5 hostingIdentifiers];
    v8 = [hostingIdentifiers2 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        hostingIdentifiers3 = [v5 hostingIdentifiers];
        v11 = [hostingIdentifiers3 objectAtIndexedSubscript:v9];

        hostingProperties = [v5 hostingProperties];
        v13 = [hostingProperties objectAtIndexedSubscript:v9];

        [collectorCopy hostingCollectorAddProperties:v13 forIdentifier:v11];
        ++v9;
        hostingIdentifiers4 = [v5 hostingIdentifiers];
        v15 = [hostingIdentifiers4 count];
      }

      while (v9 < v15);
    }
  }

  return 0;
}

- (id)newRenderModelCompatibleWithKind:(unint64_t)kind context:(id)context
{
  contextCopy = context;
  v6 = objc_msgSend_box(self);
  width = [v6 width];
  v83 = v7;

  v8 = objc_msgSend_children(self);
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v94 = [contextCopy renderModelForLayout:firstObject kind:6];
  }

  else
  {
    v94 = 0;
  }

  v10 = objc_msgSend_box(self);
  v86 = firstObject;
  if ([v10 axHasNonDefaultAttributess])
  {
    v11 = [TUIAXAttributes alloc];
    v12 = objc_msgSend_box(self);
    v93 = [(TUIAXAttributes *)v11 initWithAXAttributes:v12];
  }

  else
  {
    v93 = 0;
  }

  v13 = objc_msgSend_box(self);
  actionHandler = [v13 actionHandler];

  v15 = objc_msgSend_box(self);
  menuContainer = [v15 menuContainer];
  menuModel = [menuContainer menuModel];
  v18 = objc_msgSend_box(self);
  menuIsPrimary = [v18 menuIsPrimary];
  actionObject = [actionHandler actionObject];
  v92 = actionHandler;
  actionDelegate = [actionHandler actionDelegate];
  v91 = [menuModel menuWithIsPrimary:menuIsPrimary actionObject:actionObject actionDelegate:actionDelegate];

  v22 = objc_msgSend_box(self);
  menuContainer2 = [v22 menuContainer];
  imageModelsToLoad = [menuContainer2 imageModelsToLoad];

  v87 = contextCopy;
  v85 = imageModelsToLoad;
  if ([imageModelsToLoad count])
  {
    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [imageModelsToLoad count]);
    [contextCopy contentsScale];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = imageModelsToLoad;
    v99 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v99)
    {
      v97 = *v102;
      do
      {
        v27 = 0;
        do
        {
          if (*v102 != v97)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v101 + 1) + 8 * v27);
          controller = [(TUILayout *)self controller];
          manager = [controller manager];
          imageResourceCache = [manager imageResourceCache];
          urlString = [v28 urlString];
          [v28 baseURL];
          v34 = v33 = self;
          [v28 size];
          v35 = [imageResourceCache imageResourceForTemplatedURL:urlString baseURL:v34 naturalSize:? contentsScale:?];

          self = v33;
          identifier = [v28 identifier];
          [v26 setObject:v35 forKeyedSubscript:identifier];

          v27 = v27 + 1;
        }

        while (v99 != v27);
        v99 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v99);
    }

    v90 = v26;

    contextCopy = v87;
  }

  else
  {
    v90 = 0;
  }

  LODWORD(v25) = width;
  v37 = v83;
  v38 = *(&width + 1);
  v39 = *&width;
  v84 = objc_msgSend_box(self, 0.0, *&width, v25, *(&width + 1));
  itemType = [v84 itemType];
  v82 = objc_msgSend_box(self);
  identifier2 = [v82 identifier];
  v81 = objc_msgSend_box(self);
  obja = [v81 title];
  v80 = objc_msgSend_box(self);
  attributedTitle = [v80 attributedTitle];
  v79 = objc_msgSend_box(self);
  image = [v79 image];
  v78 = objc_msgSend_box(self);
  isEnabled = [v78 isEnabled];
  v77 = objc_msgSend_box(self);
  buttonType = [v77 buttonType];
  v76 = objc_msgSend_box(self);
  buttonRole = [v76 buttonRole];
  v75 = objc_msgSend_box(self);
  text = [v75 text];
  v73 = objc_msgSend_box(self);
  searchTextMaxLength = [v73 searchTextMaxLength];
  v71 = objc_msgSend_box(self);
  placeholderText = [v71 placeholderText];
  environment = [contextCopy environment];
  v58 = TUIKeyboardAppearanceFromEnvironmentStyle([environment style]);
  v68 = objc_msgSend_box(self);
  [v68 navigationBarBackgroundOpacity];
  v41 = v40;
  v65 = objc_msgSend_box(self);
  observeTrigger = [v65 observeTrigger];
  v63 = objc_msgSend_box(self);
  observeTriggerValue = [v63 observeTriggerValue];
  v62 = objc_msgSend_box(self);
  ignoreInsetsForOpacityTrigger = [v62 ignoreInsetsForOpacityTrigger];
  v59 = objc_msgSend_box(self);
  refId = [v59 refId];
  v44 = objc_msgSend_box(self);
  [v44 refInstance];
  v46 = v45 = self;
  v47 = objc_msgSend_box(v45);
  hostingIdentifiers = [v47 hostingIdentifiers];
  v49 = objc_msgSend_box(v45);
  hostingProperties = [v49 hostingProperties];
  v51 = objc_msgSend_box(v45);
  LOBYTE(v55) = [v51 prefersNoPlatter];
  LOBYTE(v54) = ignoreInsetsForOpacityTrigger;
  LOBYTE(v53) = isEnabled;
  v74 = [TUIRenderModelNavigationItem renderModelWithItemType:itemType identifier:identifier2 imageModelIDToResource:v90 actionHandler:v92 title:obja attributedTitle:attributedTitle image:v39 enabled:v38 buttonType:v37 buttonRole:v41 width:image minWidth:v53 maxWidth:buttonType text:buttonRole searchTextMaxLength:text placeholderText:searchTextMaxLength keyboardAppearance:placeholderText navigationBarBackgroundOpacity:v58 observeTrigger:observeTrigger observeTriggerValue:observeTriggerValue ignoreInsetsForOpacityTrigger:v54 menu:v91 subview:v94 axAttributes:v93 refId:refId refInstance:v46 hostingIdentifiers:hostingIdentifiers hostingProperties:hostingProperties prefersNoPlatter:v55];

  return v74;
}

@end