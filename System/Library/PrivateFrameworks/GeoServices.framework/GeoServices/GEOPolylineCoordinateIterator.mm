@interface GEOPolylineCoordinateIterator
- (void)advance;
@end

@implementation GEOPolylineCoordinateIterator

- (void)advance
{
  current = self->_current;
  if (current.offset >= 0.0)
  {
    self->_previous = current;
    end = self->_end;
    if (end == current.index)
    {
      if (*(&end + 1) > current.offset)
      {
        goto LABEL_7;
      }
    }

    else if (end >= current.index)
    {
      if (current.offset <= 0.0)
      {
        self->_current.index = current.index + 1;
        return;
      }

      v8 = 0;
      v5 = modff(current.offset, &v8);
      if (v5 <= 0.0)
      {
        index = current.index;
      }

      else
      {
        index = current.index + 1;
      }

      if (v5 <= 0.0)
      {
        offset_low = LODWORD(current.offset);
      }

      else
      {
        offset_low = v8;
      }

      end = index | (offset_low << 32);
      goto LABEL_7;
    }

    end = 0xBF80000000000000;
LABEL_7:
    self->_current = end;
  }
}

@end