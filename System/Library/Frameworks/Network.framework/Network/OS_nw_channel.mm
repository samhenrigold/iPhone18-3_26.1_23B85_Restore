@interface OS_nw_channel
- (void)dealloc;
@end

@implementation OS_nw_channel

- (void)dealloc
{
  v3 = self + 37;
  for (i = self[36].super.super.isa; i; i = self[36].super.super.isa)
  {
    v5 = *(i + 2);
    v6 = *(i + 3);
    v7 = v5 + 3;
    if (!v5)
    {
      v7 = v3;
    }

    v7->super.super.isa = v6;
    *v6 = v5;
    *(i + 2) = 0;
    *(i + 3) = 0;
    os_release(i);
  }

  nw_channel_release_frame_array(self, &self[40]);
  nw_channel_release_frame_array(self, &self[38]);
  for (j = self[42].super.super.isa; j; j = self[42].super.super.isa)
  {
    nw_frame_free_buffer(j);
    v9 = *(j + 2);
    v10 = *(j + 3);
    v11 = v9 + 3;
    if (!v9)
    {
      v11 = self + 43;
    }

    v11->super.super.isa = v10;
    *v10 = v9;
    *(j + 2) = 0;
    *(j + 3) = 0;
    os_release(j);
  }

  isa = self[35].super.super.isa;
  if (isa)
  {
    _nw_hash_table_release(isa);
    self[35].super.super.isa = 0;
  }

  nw_channel_close(self);
  v13 = self[26].super.super.isa;
  if (v13)
  {
    dispatch_release(v13);
    self[26].super.super.isa = 0;
  }

  v14 = self[19].super.super.isa;
  if (v14)
  {
    os_release(v14);
    self[19].super.super.isa = 0;
  }

  v15.receiver = self;
  v15.super_class = OS_nw_channel;
  [(OS_nw_channel *)&v15 dealloc];
}

@end