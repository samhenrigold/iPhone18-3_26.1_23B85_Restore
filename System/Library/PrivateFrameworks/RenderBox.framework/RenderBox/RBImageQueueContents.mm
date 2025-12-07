@interface RBImageQueueContents
- (id).cxx_construct;
- (id)replacementObjectForCoder:(id)coder;
- (uint64_t)setSurface:(uint64_t)result;
- (void)dealloc;
- (void)initWithSlots:(void *)slots;
@end

@implementation RBImageQueueContents

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (void)dealloc
{
  v3 = RB::SurfacePool::shared(self);
  RB::SurfacePool::erase_queue(v3, &self->_queue._p);
  v4.receiver = self;
  v4.super_class = RBImageQueueContents;
  [(RBImageQueueContents *)&v4 dealloc];
}

- (id)replacementObjectForCoder:(id)coder
{
  p = self->_surface._p;
  if (p)
  {
    return *(p + 6);
  }

  else
  {
    return 0;
  }
}

- (uint64_t)setSurface:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = *(result + 16);
    if (result != a2)
    {
      if (result && (result = OUTLINED_FUNCTION_0_2(result), v4))
      {
        OUTLINED_FUNCTION_0();
        result = (*(v5 + 8))();
        if (!a2)
        {
          goto LABEL_7;
        }
      }

      else if (!a2)
      {
LABEL_7:
        *(v3 + 16) = a2;
        return result;
      }

      atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
      goto LABEL_7;
    }
  }

  return result;
}

- (void)initWithSlots:(void *)slots
{
  if (!slots)
  {
    return 0;
  }

  v6.receiver = slots;
  v6.super_class = RBImageQueueContents;
  v2 = objc_msgSendSuper2(&v6, sel_init);
  if (v2)
  {
    v3 = CAImageQueueCreate();
    v4 = v2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v2[1] = v3;
    CAImageQueueSetFlags();
  }

  return v2;
}

@end