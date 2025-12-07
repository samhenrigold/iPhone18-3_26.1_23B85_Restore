@interface __MRCCFTypeWithRedactedDescription
- (NSString)redactedDescription;
@end

@implementation __MRCCFTypeWithRedactedDescription

- (NSString)redactedDescription
{
  _cfTypeID = [(__MRCCFType *)self _cfTypeID];
  os_unfair_lock_lock_with_options();
  if (qword_280CB3498[0] != -1)
  {
    dispatch_once(qword_280CB3498, &unk_2873D07E0);
  }

  if (!*(&xmmword_280CB34A8 + 1))
  {
    goto LABEL_20;
  }

  v4 = vcnt_s8(*(&xmmword_280CB34A8 + 8));
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = _cfTypeID;
    if (_cfTypeID >= *(&xmmword_280CB34A8 + 1))
    {
      v5 = _cfTypeID % *(&xmmword_280CB34A8 + 1);
    }
  }

  else
  {
    v5 = (*(&xmmword_280CB34A8 + 1) - 1) & _cfTypeID;
  }

  v6 = *(xmmword_280CB34A8 + 8 * v5);
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      do
      {
        v8 = v7[1];
        if (v8 == _cfTypeID)
        {
          if (v7[2] == _cfTypeID)
          {
            break;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= *(&xmmword_280CB34A8 + 1))
            {
              v8 %= *(&xmmword_280CB34A8 + 1);
            }
          }

          else
          {
            v8 &= *(&xmmword_280CB34A8 + 1) - 1;
          }

          if (v8 != v5)
          {
            goto LABEL_20;
          }
        }

        v7 = *v7;
      }

      while (v7);
    }
  }

  else
  {
LABEL_20:
    v7 = 0;
  }

  if (v7)
  {
    os_unfair_lock_unlock(&unk_280CB3250);
    v12[1] = self;
    v9 = v7[6];
    if (!v9)
    {
      sub_261477FC4();
    }

    (*(*v9 + 48))(v12);
    v10 = atomic_exchange(v12, 0);
    sub_26148E848(v12);
    return v10;
  }

  else
  {
    os_unfair_lock_unlock(&unk_280CB3250);

    return MEMORY[0x2821F9670](self, sel_description);
  }
}

@end