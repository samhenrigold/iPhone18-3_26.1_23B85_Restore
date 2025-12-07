@interface SCATSimpleElement
- (BOOL)scatIsMemberOfGroup;
- (BOOL)scatIsOnScreen;
- (CGPoint)scatCenterPoint;
- (CGPoint)scatScreenPointForOperations;
- (CGRect)scatFrame;
- (CGRect)scatTextCursorFrame;
- (id)highestAncestorGroup;
@end

@implementation SCATSimpleElement

- (CGPoint)scatCenterPoint
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)scatScreenPointForOperations
{
  scatFrame = [(SCATSimpleElement *)self scatFrame];
  sub_1000427AC(scatFrame, v3, v4, v5, v6, v7);

  AX_CGRectGetCenter();
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGRect)scatFrame
{
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)scatTextCursorFrame
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)scatIsMemberOfGroup
{
  parentGroup = [(SCATSimpleElement *)self parentGroup];
  v3 = parentGroup != 0;

  return v3;
}

- (BOOL)scatIsOnScreen
{
  [(SCATSimpleElement *)self frame];
  MinX = CGRectGetMinX(v17);
  [(SCATSimpleElement *)self frame];
  MaxX = CGRectGetMaxX(v18);
  [(SCATSimpleElement *)self frame];
  MinY = CGRectGetMinY(v19);
  [(SCATSimpleElement *)self frame];
  MaxY = CGRectGetMaxY(v20);
  [HNDHandManager screenFrame:]_0(v7, v8);
  v10 = v9;
  [HNDHandManager screenFrame:]_0(v11, v12);
  v13 = fmin(MinX, MinY);
  v14 = MaxX <= v10;
  if (MaxY > v15)
  {
    v14 = 0;
  }

  return v13 >= 0.0 && v14;
}

- (id)highestAncestorGroup
{
  parentGroup = [(SCATSimpleElement *)self parentGroup];
  highestAncestorGroup = [parentGroup highestAncestorGroup];

  return highestAncestorGroup;
}

@end