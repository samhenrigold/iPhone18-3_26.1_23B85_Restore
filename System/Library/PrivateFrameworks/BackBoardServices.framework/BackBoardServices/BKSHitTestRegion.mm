@interface BKSHitTestRegion
- (BKSHitTestRegion)initWithCoder:(id)coder;
- (BKSHitTestRegion)initWithRect:(CGRect)rect exclusiveTouchSubRect:(CGRect)subRect;
- (BOOL)isEqual:(id)equal;
- (CGRect)_exclusiveTouchNormalizedSubRectInReferenceSpace;
- (CGRect)exclusiveTouchNormalizedSubRect;
- (CGRect)rect;
- (id)_initWithRect:(CGRect)rect exclusiveTouchNormalizedSubRect:(CGRect)subRect;
- (int64_t)hitTestRegionLocationForPoint:(CGPoint)point;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
- (void)setExclusiveTouchNormalizedSubRect:(CGRect)rect;
@end

@implementation BKSHitTestRegion

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696B098] valueWithBytes:*&self->_rect.origin objCType:{*&self->_rect.size.width, *&self->_rect.size.height}];
  v3 = [v2 hash];

  return v3;
}

- (CGRect)_exclusiveTouchNormalizedSubRectInReferenceSpace
{
  x = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.x;
  y = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.y;
  width = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.width;
  height = self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)exclusiveTouchNormalizedSubRect
{
  x = self->_exclusiveTouchNormalizedSubRect.origin.x;
  y = self->_exclusiveTouchNormalizedSubRect.origin.y;
  width = self->_exclusiveTouchNormalizedSubRect.size.width;
  height = self->_exclusiveTouchNormalizedSubRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BKSHitTestRegion)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];
  [v5 bs_CGRectValue];

  objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:? forKey:?];

  [v6 bs_CGRectValue];

  return [BKSHitTestRegion _initWithRect:"_initWithRect:exclusiveTouchNormalizedSubRect:" exclusiveTouchNormalizedSubRect:?];
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696B098];
  coderCopy = coder;
  v5 = [v3 bs_valueWithCGRect:?];
  [coderCopy encodeObject:? forKey:?];

  v6 = [MEMORY[0x1E696B098] bs_valueWithCGRect:?];
  [coderCopy encodeObject:? forKey:?];
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6 = MEMORY[0x1E69E9820];
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:v6 block:{3221225472, __46__BKSHitTestRegion_appendDescriptionToStream___block_invoke, &unk_1E6F47C78}];
}

id __46__BKSHitTestRegion_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendRect:? withName:?];
  v3 = [*(a1 + 32) hasDebugStyle];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 appendRect:? withName:?];
    v4 = *(a1 + 32);
  }

  return [v4 appendRect:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && CGRectEqualToRect(self->_rect, *(equalCopy + 8)) && CGRectEqualToRect(self->_exclusiveTouchNormalizedSubRect, *(equalCopy + 40));

  return v5;
}

- (void)setExclusiveTouchNormalizedSubRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v41 = *MEMORY[0x1E69E9840];
  if (!CGRectEqualToRect(rect, self->_exclusiveTouchNormalizedSubRect))
  {
    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:*&x];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        v30 = v14;
        v31 = 2114;
        v32 = v16;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2114;
        v36 = @"BKSHitTestRegion.m";
        v37 = 1024;
        v38 = 88;
        v39 = 2114;
        v40 = v13;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389D5CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:*&y];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        v30 = v18;
        v31 = 2114;
        v32 = v20;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2114;
        v36 = @"BKSHitTestRegion.m";
        v37 = 1024;
        v38 = 89;
        v39 = 2114;
        v40 = v17;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389E4CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:*&width];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(a2);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v30 = v22;
        v31 = 2114;
        v32 = v24;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2114;
        v36 = @"BKSHitTestRegion.m";
        v37 = 1024;
        v38 = 90;
        v39 = 2114;
        v40 = v21;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x186389F3CLL);
    }

    if (!BSFloatGreaterThanOrEqualToFloat() || (BSFloatLessThanOrEqualToFloat() & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:*&height];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v26 = NSStringFromSelector(a2);
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138544642;
        v30 = v26;
        v31 = 2114;
        v32 = v28;
        v33 = 2048;
        selfCopy4 = self;
        v35 = 2114;
        v36 = @"BKSHitTestRegion.m";
        v37 = 1024;
        v38 = 91;
        v39 = 2114;
        v40 = v25;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18638A02CLL);
    }

    v9 = self->_rect.origin.y;
    v10 = self->_rect.size.width;
    v11 = self->_rect.size.height;
    v12 = self->_rect.origin.x + x * v10;
    self->_exclusiveTouchNormalizedSubRect.origin.x = x;
    self->_exclusiveTouchNormalizedSubRect.origin.y = y;
    self->_exclusiveTouchNormalizedSubRect.size.width = width;
    self->_exclusiveTouchNormalizedSubRect.size.height = height;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.x = v12;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.origin.y = v9 + y * v11;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.width = width * v10;
    self->_exclusiveTouchNormalizedSubRectInReferenceSpace.size.height = height * v11;
  }
}

- (int64_t)hitTestRegionLocationForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!CGRectContainsPoint(self->_rect, point))
  {
    return 0;
  }

  v7.x = x;
  v7.y = y;
  if (CGRectContainsPoint(self->_exclusiveTouchNormalizedSubRectInReferenceSpace, v7))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (id)_initWithRect:(CGRect)rect exclusiveTouchNormalizedSubRect:(CGRect)subRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = BKSHitTestRegion;
  v8 = [(BKSHitTestRegion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rect.origin.x = x;
    v8->_rect.origin.y = y;
    v8->_rect.size.width = width;
    v8->_rect.size.height = height;
    [(BKSHitTestRegion *)v8 setExclusiveTouchNormalizedSubRect:?];
  }

  return v9;
}

- (BKSHitTestRegion)initWithRect:(CGRect)rect exclusiveTouchSubRect:(CGRect)subRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v11.receiver = self;
  v11.super_class = BKSHitTestRegion;
  v8 = [(BKSHitTestRegion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_rect.origin.x = x;
    v8->_rect.origin.y = y;
    v8->_rect.size.width = width;
    v8->_rect.size.height = height;
    [(BKSHitTestRegion *)v8 setExclusiveTouchNormalizedSubRect:?];
  }

  return v9;
}

@end