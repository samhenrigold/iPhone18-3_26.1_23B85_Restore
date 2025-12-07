@interface CRLGroupItem
+ (CGSize)unscaledSizeForEmptyGroups;
+ (id)groupGeometryFromChildrenInfos:(id)infos;
+ (id)groupGeometryFromChildrenInfos:(id)infos currentlyLaidOutWithLayoutController:(id)controller;
- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock;
- (BOOL)canAspectRatioLockBeChangedByUser;
- (BOOL)containsUnknownContent;
- (BOOL)isEffectivelyEmpty;
- (BOOL)isItemAllowed:(id)allowed;
- (BOOL)isSelectable;
- (BOOL)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometryAndReturnError:(id *)error;
- (BOOL)requiresAdditionalBoardItemsForCopyImaging;
- (BOOL)shouldBeIgnoredWhenCopying;
- (BOOL)supportsParentRotation;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases;
- (NSArray)generativePlaygroundImageItems;
- (id)groupedGeometryForChildItem:(id)item;
- (id)ungroupedGeometryForChildItem:(id)item;
- (void)crl_onBoard:(id)board moveItemToPosition:(CGPoint)position size:(CGSize)size;
- (void)prepareBoardItemForConnectorModeDuplication;
@end

@implementation CRLGroupItem

- (void)crl_onBoard:(id)board moveItemToPosition:(CGPoint)position size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = position.y;
  x = position.x;
  boardCopy = board;
  [(CRLGroupItem *)self allNestedChildrenItemsIncludingGroups];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v11 = v63 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v62 objects:v69 count:16];
  if (v12)
  {
    v13 = *v63;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v63 != v13)
        {
          objc_enumerationMutation(v11);
        }

        geometry = [*(*(&v62 + 1) + 8 * i) geometry];
        if (![geometry widthValid] || (objc_msgSend(geometry, "heightValid") & 1) == 0)
        {

          [(CRLBoardItem *)self visibleBoundsForPositioning];
          goto LABEL_65;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  [(CRLBoardItem *)self visibleBoundsForPositioning];
  v18 = v16;
  v19 = v17;
  if (v16 != width || v17 != height)
  {
    if (v16 <= 0.0)
    {
      v20 = 0.0;
      if (width != 0.0)
      {
        v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138B320();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B348();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B3D0();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B3F8(v22, v21);
        }

        v23 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:195 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v20 = width / v16;
    }

    if (v19 <= 0.0)
    {
      v25 = 0.0;
      if (height != 0.0)
      {
        v26 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10138B4A8();
        }

        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B4D0();
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10138B558();
        }

        v27 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10138B580(v27, v26);
        }

        v28 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
        v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
        [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:201 isFatal:0 description:"Desired size is an impossible multiple of current size."];
      }
    }

    else
    {
      v25 = height / v19;
    }

    if (v20 == 0.0)
    {
      v20 = v25;
    }

    else if (v25 == 0.0)
    {
      v25 = v20;
    }

    if (v25 != v20 && vabdd_f64(v25, v20) >= 0.00999999978)
    {
      v30 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10138B630();
      }

      v31 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        *&buf[4] = v30;
        *v68 = 2082;
        *&v68[2] = "[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]";
        *&v68[10] = 2082;
        *&v68[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m";
        *&v68[20] = 1024;
        *&v68[22] = 208;
        *&v68[26] = 2048;
        *&v68[28] = v25;
        *&v68[36] = 2048;
        *&v68[38] = v20;
        _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d group resize is off-scale (%f vs %f)", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10138B658();
      }

      v32 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10138B680(v32, v30);
      }

      v33 = [NSString stringWithUTF8String:"[CRLGroupItem(CRLBoardItemPositionerPrivate) crl_onBoard:moveItemToPosition:size:]"];
      v34 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLApplication/CRLBoardItem+CanvasPositioning.m"];
      [CRLAssertionHandler handleFailureInFunction:v33 file:v34 lineNumber:208 isFatal:0 description:"group resize is off-scale (%f vs %f)", *&v25, *&v20];
    }

    *buf = 0;
    *v68 = buf;
    *&v68[8] = 0x3010000000;
    *&v68[16] = &unk_1016A8115;
    *&v68[24] = CGSizeZero;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100517CA4;
    v61[3] = &unk_1018453B0;
    v61[4] = buf;
    [(CRLBoardItem *)self withTemporaryLayoutPerform:v61];
    v35 = *(*v68 + 32);
    v36 = *(*v68 + 40);
    if (height < v36 || (v36 = height, width < v35))
    {
      v37 = v36 / v19;
      if (width >= v35)
      {
        v35 = width;
      }

      v25 = fmax(v37, v35 / v18);
      v20 = v25;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    childrenToPosition = [(CRLGroupItem *)self childrenToPosition];
    v39 = [childrenToPosition countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v39)
    {
      v40 = *v58;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v58 != v40)
          {
            objc_enumerationMutation(childrenToPosition);
          }

          v42 = *(*(&v57 + 1) + 8 * j);
          v43 = objc_opt_class();
          v44 = sub_100014370(v43, v42);
          [v44 visibleBoundsForPositioning];
          [v44 crl_onBoard:boardCopy moveItemToPosition:v20 * v45 size:{v25 * v46, v20 * v47, v25 * v48}];
        }

        v39 = [childrenToPosition countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v39);
    }

    _Block_object_dispose(buf, 8);
  }

LABEL_65:
  [(CRLBoardItem *)self visibleBoundsForPositioning];
  v51 = v50;
  if (v50 != x || v49 != y)
  {
    geometry2 = [(CRLBoardItemBase *)self geometry];
    v53 = [geometry2 mutableCopy];

    v54 = sub_10011F31C(x, y, v51);
    [v53 position];
    [v53 setPosition:{sub_10011F334(v55, v56, v54)}];
    [(CRLBoardItemBase *)self setGeometry:v53];
  }
}

- (BOOL)isSelectable
{
  selfCopy = self;
  if (sub_1005F4200())
  {

    return 0;
  }

  else
  {
    v4 = sub_1005F436C();

    return !v4;
  }
}

- (Class)layoutClass
{
  sub_100006370(0, &unk_1019F5760, off_10182F850);

  return swift_getObjCClassFromMetadata();
}

- (Class)repClass
{
  sub_100006370(0, &qword_1019F5758, off_10182F858);

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  sub_100006370(0, &qword_1019F5750, off_10182F848);

  return swift_getObjCClassFromMetadata();
}

- (void)prepareBoardItemForConnectorModeDuplication
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  selfCopy = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v3];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_15:

    goto LABEL_16;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    (*((swift_isaMask & *v9) + 0x210))();
  }

LABEL_16:
}

- (BOOL)isItemAllowed:(id)allowed
{
  v3 = (*((swift_isaMask & *allowed) + 0xC8))(self, a2);
  if ((v5 & 0x100) == 0)
  {
    return 1;
  }

  if (!(v3 | v4) && v5 == 0)
  {
    return 1;
  }

  v7 = v3 == 1 && v4 == 0;
  if (v7 && v5 == 0)
  {
    return 1;
  }

  v9 = v3 == 2 && v4 == 0;
  if (v9 && v5 == 0)
  {
    return 1;
  }

  v11 = v3 == 3 && v4 == 0;
  if (v11 && v5 == 0)
  {
    return 1;
  }

  v13 = v3 == 4 && v4 == 0;
  if (v13 && v5 == 0)
  {
    return 1;
  }

  v15 = v3 == 5 && v4 == 0;
  if (v15 && v5 == 0)
  {
    return 1;
  }

  v17 = v3 == 6 && v4 == 0;
  if (v17 && v5 == 0)
  {
    return 1;
  }

  v19 = v3 == 7 && v4 == 0;
  v20 = v19 && v5 == 0;
  if (v20 || v3 == 8 && !v4 && !v5 || v3 == 9 && !v4 && !v5 || v3 == 10 && !v4 && !v5)
  {
    return 1;
  }

  v23 = v3 == 11 && v4 == 0;
  return !v5 && v23;
}

- (BOOL)isEffectivelyEmpty
{
  selfCopy = self;
  v3 = sub_1005F4200();

  return v3;
}

- (BOOL)containsUnknownContent
{
  selfCopy = self;
  v3 = sub_1005F436C();

  return v3;
}

- (BOOL)requiresAdditionalBoardItemsForCopyImaging
{
  selfCopy = self;
  v3 = sub_1005F44CC();

  return v3 & 1;
}

- (BOOL)shouldBeIgnoredWhenCopying
{
  selfCopy = self;
  v3 = sub_1005F4654();

  return v3;
}

+ (CGSize)unscaledSizeForEmptyGroups
{
  v2 = 1.0;
  v3 = 1.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)supportsParentRotation
{
  selfCopy = self;
  v3 = sub_1005F4814();

  return v3;
}

+ (id)groupGeometryFromChildrenInfos:(id)infos
{
  type metadata accessor for CRLBoardItem(0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v4 = sub_1005F49A4(v3);

  return v4;
}

+ (id)groupGeometryFromChildrenInfos:(id)infos currentlyLaidOutWithLayoutController:(id)controller
{
  type metadata accessor for CRLBoardItem(0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  v7 = sub_1005F6690(v5, controllerCopy);

  return v7;
}

- (id)groupedGeometryForChildItem:(id)item
{
  v4 = *((swift_isaMask & *item) + 0xE0);
  itemCopy = item;
  selfCopy = self;
  v7 = v4();
  v8 = *(**&selfCopy->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v10 = v8(v9);

  v11 = [v7 geometryRelativeToGeometry:v10];

  return v11;
}

- (id)ungroupedGeometryForChildItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_1005F4F44(itemCopy);

  return v6;
}

- (BOOL)makeChildGeometriesRelativeAndComputeOwnAbsoluteGeometryAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1005F582C();

  return 1;
}

- (BOOL)canAspectRatioLockBeChangedByUser
{
  selfCopy = self;
  v3 = sub_1005F5D88();

  return v3 & 1;
}

- (BOOL)allowsParentGroupToBeResizedWithoutAspectRatioLock
{
  selfCopy = self;
  v3 = sub_1005F5FC0();

  return v3 & 1;
}

- (NSArray)additionalBoardItemsForUUIDBookkeepingForTemporaryCanvases
{
  selfCopy = self;
  v3 = sub_1005F36D4();
  sub_100798D00(v3);

  type metadata accessor for CRLBoardItem(0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (NSArray)generativePlaygroundImageItems
{
  if ((*((swift_isaMask & *self->_TtC8Freeform16CRLContainerItem_opaque) + 0x688))())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101465920;
    *(v3 + 32) = self;
    selfCopy = self;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v6 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    selfCopy2 = self;
    if (!v6)
    {
      sub_10096C7D4();
      v6 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v5];
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_10126708C(v8);
  }

  type metadata accessor for CRLBoardItem(0);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

@end