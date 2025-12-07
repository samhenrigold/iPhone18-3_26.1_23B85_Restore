@interface SCNNodeManipulableItem
+ (id)nodeManipulatorItemWithNode:(id)node screenSize:(double)size;
+ (void)addItems:(id)items toScene:(id)scene;
+ (void)removeItemsFromScene:(id)scene;
- (SCNMatrix4)transform;
- (SCNMatrix4)worldTransform;
- (SCNVector3)scale;
- (id)cloneForManipulators;
- (id)parentItem;
- (void)setPosition:(SCNVector3)position;
- (void)validateClone;
@end

@implementation SCNNodeManipulableItem

+ (id)nodeManipulatorItemWithNode:(id)node screenSize:(double)size
{
  v6 = objc_alloc_init(SCNNodeManipulableItem);
  [(SCNManipulableItem *)v6 setScreenSize:size];
  [(SCNManipulableItem *)v6 setNode:node];

  return v6;
}

- (SCNMatrix4)transform
{
  result = [(SCNManipulableItem *)self node];
  if (result)
  {

    return objc_msgSend_transform(result);
  }

  else
  {
    *&retstr->m31 = 0u;
    *&retstr->m41 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m21 = 0u;
  }

  return result;
}

- (SCNMatrix4)worldTransform
{
  result = [(SCNManipulableItem *)self node];
  if (result)
  {

    return objc_msgSend_worldTransform(result);
  }

  else
  {
    *&retstr->m31 = 0u;
    *&retstr->m41 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m21 = 0u;
  }

  return result;
}

- (SCNVector3)scale
{
  node = [(SCNManipulableItem *)self node];

  [(SCNNode *)node scale];
  result.z = v5;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setPosition:(SCNVector3)position
{
  z = position.z;
  y = position.y;
  x = position.x;
  node = [(SCNManipulableItem *)self node];
  *&v7 = x;
  *&v8 = y;
  *&v9 = z;

  [(SCNNode *)node setPosition:v7, v8, v9];
}

- (id)parentItem
{
  result = [(SCNNode *)[(SCNManipulableItem *)self node] parentNode];
  if (result)
  {
    parentNode = [(SCNNode *)[(SCNManipulableItem *)self node] parentNode];
    [(SCNManipulableItem *)self screenSize];

    return [SCNNodeManipulableItem nodeManipulatorItemWithNode:parentNode screenSize:?];
  }

  return result;
}

- (id)cloneForManipulators
{
  clone = [(SCNNode *)[(SCNManipulableItem *)self node] clone];
  [(SCNNode *)clone opacity];
  [(SCNNode *)clone setOpacity:v4 * 0.5];
  [(SCNNode *)clone setGizmo:1];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  node = [(SCNManipulableItem *)self node];
  if (node)
  {
    objc_msgSend_convertTransform_toNode_(node, *&SCNMatrix4Identity.m11, *&SCNMatrix4Identity.m13, *&SCNMatrix4Identity.m21, *&SCNMatrix4Identity.m23, *&SCNMatrix4Identity.m31, *&SCNMatrix4Identity.m33, *&SCNMatrix4Identity.m41, *&SCNMatrix4Identity.m43);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
  }

  v7[0] = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  [(SCNNode *)clone setTransform:v7];
  [(SCNManipulableItem *)self screenSize];
  return [SCNNodeManipulableItem nodeManipulatorItemWithNode:clone screenSize:?];
}

+ (void)addItems:(id)items toScene:(id)scene
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(items);
        }

        [objc_msgSend(scene "rootNode")];
      }

      while (v7 != v9);
      v7 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (void)removeItemsFromScene:(id)scene
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [scene countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(scene);
        }

        [objc_msgSend(*(*(&v8 + 1) + 8 * v7++) "node")];
      }

      while (v5 != v7);
      v5 = [scene countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)validateClone
{
  [(SCNNode *)[(SCNManipulableItem *)self node] setGizmo:0];
  node = [(SCNManipulableItem *)self node];
  [(SCNNode *)node opacity];
  v5 = v4 + v4;

  [(SCNNode *)node setOpacity:v5];
}

@end