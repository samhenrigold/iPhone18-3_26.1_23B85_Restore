@interface GQDCallout2Path
- (CGPath)createBezierPath;
- (CGPoint)tailCenter;
- (CGPoint)tailPosition;
- (CGSize)size;
- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor;
@end

@implementation GQDCallout2Path

- (CGPoint)tailCenter
{
  if (self->mTailAtCenter)
  {
    x = self->mSize.width * 0.5;
    y = self->mSize.height * 0.5;
  }

  else
  {
    x = self->mTailPosition.x;
    mCornerRadius = self->mCornerRadius;
    if (x <= mCornerRadius || x >= self->mSize.width - mCornerRadius)
    {
      y = self->mTailPosition.y;
      if (y <= mCornerRadius || y >= self->mSize.height - mCornerRadius)
      {
        v5 = x > mCornerRadius;
        x = self->mCornerRadius;
        if (v5)
        {
          x = self->mSize.width - mCornerRadius;
        }

        if (y <= mCornerRadius)
        {
          y = self->mCornerRadius;
        }

        else
        {
          y = self->mSize.height - mCornerRadius;
        }
      }

      else
      {
        x = self->mSize.width * 0.5;
      }
    }

    else
    {
      y = self->mSize.height * 0.5;
    }
  }

  result.y = y;
  result.x = x;
  return result;
}

- (CGPath)createBezierPath
{
  [(GQDCallout2Path *)self size];
  v4 = v3;
  v6 = v5;
  y = CGPointZero.y;
  mCornerRadius = self->mCornerRadius;
  v9 = sub_4F980(CGPointZero.x, y, 0.0, v5);
  v10 = sub_4F980(CGPointZero.x, y, v4, 0.0);
  Mutable = CGPathCreateMutable();
  v12 = Mutable;
  if (v6 >= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (self->mCornerRadius >= v13 * 0.5)
  {
    v74.origin.x = 0.0;
    v74.origin.y = 0.0;
    v74.size.width = v4;
    v74.size.height = v6;
    CGPathAddEllipseInRect(Mutable, 0, v74);
  }

  else
  {
    v14 = v10 * 0.5;
    if (v9 * 0.5 < v14)
    {
      v14 = v9 * 0.5;
    }

    if (mCornerRadius < v14)
    {
      v14 = mCornerRadius;
    }

    v15 = v14;
    v16 = v15;
    v17 = sub_4CF38(0.0, v6, 0.0);
    CGPathMoveToPoint(v12, 0, v17, v18);
    v19 = sub_4CF38(CGPointZero.x, y, v16);
    CGPathAddArcToPoint(v12, 0, CGPointZero.x, y, v19, v20, v16);
    v21 = sub_4F99C(v4, 0.0, 0.0);
    CGPathAddArcToPoint(v12, 0, v4, 0.0, v21, v22, v16);
    v23 = sub_4F99C(v4, v6, v16);
    CGPathAddArcToPoint(v12, 0, v4, v6, v23, v24, v16);
    v25 = sub_4CF38(0.0, v6, 0.0);
    CGPathAddArcToPoint(v12, 0, 0.0, v6, v25, v26, v16);
  }

  CGPathCloseSubpath(v12);
  p_mTailPosition = &self->mTailPosition;
  if (!CGPathContainsPoint(v12, 0, self->mTailPosition, 1))
  {
    [(GQDCallout2Path *)self tailCenter];
    v30 = v28;
    v31 = v29;
    mTailSize = self->mTailSize;
    if (!self->mTailAtCenter)
    {
      v33 = sub_4F980(p_mTailPosition->x, self->mTailPosition.y, v28, v29);
      mTailSize = (v33 / sub_4F980(p_mTailPosition->x, self->mTailPosition.y, v4 * 0.5, v6 * 0.5)) * mTailSize;
    }

    v34 = sub_4F99C(p_mTailPosition->x, self->mTailPosition.y, v30);
    v36 = sub_4F9D8(v34, v35);
    v38 = sub_4F9A8(v36, v37, mTailSize);
    v40 = sub_4F9B8(1, v38, v39);
    v71 = *p_mTailPosition;
    x = p_mTailPosition->x;
    v42 = self->mTailPosition.y;
    v43 = sub_4CF38(v30, v31, v40);
    v45 = sub_4F99C(v43, v44, p_mTailPosition->x);
    v47 = sub_4F9A8(v45, v46, 20.0);
    v72 = sub_4CF38(x, v42, v47);
    v73 = v48;
    v68 = *p_mTailPosition;
    v49 = p_mTailPosition->x;
    v50 = self->mTailPosition.y;
    v51 = sub_4F99C(v30, v31, v40);
    v53 = sub_4F99C(v51, v52, p_mTailPosition->x);
    v55 = sub_4F9A8(v53, v54, 20.0);
    v69 = sub_4CF38(v49, v50, v55);
    v70 = v56;
    v57 = sub_4FF9C(v12, &v71.x);
    v59 = v58;
    v60 = sub_4FF9C(v12, &v68.x);
    v62 = v61;
    v63 = CGPathCreateMutable();
    CGPathMoveToPoint(v63, 0, v57, v59);
    CGPathAddLineToPoint(v63, 0, p_mTailPosition->x, p_mTailPosition->y);
    CGPathAddLineToPoint(v63, 0, v60, v62);
    v67[0] = v12;
    v67[1] = v63;
    v64 = CFArrayCreate(0, v67, 2, &kCFTypeArrayCallBacks);
    v65 = sub_50C8C(v64);
    CFRelease(v64);
    CFRelease(v12);
    CFRelease(v63);
    return v65;
  }

  return v12;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)tailPosition
{
  x = self->mTailPosition.x;
  y = self->mTailPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)readAttributesFromReader:(_xmlTextReader *)reader processor:(id)processor
{
  if (!sub_426B0(reader, qword_A35E8, "cornerRadius", &self->mCornerRadius))
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "tailPositionX", &self->mTailPosition.x);
  if (!v6)
  {
    return 3;
  }

  sub_428CC(reader, qword_A35E8, "tailPositionY", &self->mTailPosition.y);
  if (!v7)
  {
    return 3;
  }

  v8 = 3;
  if (sub_426B0(reader, qword_A35E8, "tailSize", &self->mTailSize))
  {
    if (sub_421B4(reader, qword_A35E8, "tailAtCenter", &self->mTailAtCenter))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return v8;
}

@end