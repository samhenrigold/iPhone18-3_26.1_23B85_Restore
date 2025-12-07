@interface NWSSnapshotSource
+ (id)routeSnapshotForIPv4Host:(sockaddr_in *)host viaInterfaceIndex:(int)index;
+ (id)routeSnapshotForIPv6Host:(sockaddr_in6 *)host viaInterfaceIndex:(int)index;
- (NWSSnapshotSource)init;
- (int64_t)recv:(void *)recv length:(unint64_t)length err:(int *)err;
- (int64_t)send:(void *)send length:(unint64_t)length err:(int *)err;
- (void)dealloc;
@end

@implementation NWSSnapshotSource

- (NWSSnapshotSource)init
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = NWSSnapshotSource;
  v2 = [(NWSSnapshotSource *)&v12 init];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = socket(32, 2, 2);
  if (v3 != -1)
  {
    v4 = v3;
    v8 = 1;
    if (!setsockopt(v3, 0xFFFF, 4130, &v8, 4u))
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      __strlcpy_chk();
      if (ioctl(v4, 0xC0644E03uLL, v13) != -1)
      {
        v10 = 0;
        *&v9[12] = 0;
        v11 = 0;
        *v9 = 139296;
        *&v9[4] = v13[0];
        *&v9[8] = 0;
        if (!connect(v4, v9, 0x20u))
        {
          v6 = fcntl(v4, 3, 0);
          if (fcntl(v4, 4, v6 | 4u) != -1)
          {
            v2->_sockFd = v4;
LABEL_10:
            v5 = v2;
            goto LABEL_11;
          }
        }
      }
    }

    close(v4);
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)dealloc
{
  close(self->_sockFd);
  v3.receiver = self;
  v3.super_class = NWSSnapshotSource;
  [(NWSSnapshotSource *)&v3 dealloc];
}

- (int64_t)send:(void *)send length:(unint64_t)length err:(int *)err
{
  v6 = send(self->_sockFd, send, length, 0);
  v7 = v6;
  if (err)
  {
    if (v6 < 0)
    {
      v8 = *__error();
    }

    else
    {
      v8 = 0;
    }

    *err = v8;
  }

  return v7;
}

- (int64_t)recv:(void *)recv length:(unint64_t)length err:(int *)err
{
  v6 = recv(self->_sockFd, recv, length, 0);
  v7 = v6;
  if (err)
  {
    if (v6 < 0)
    {
      v8 = *__error();
    }

    else
    {
      v8 = 0;
    }

    *err = v8;
  }

  return v7;
}

+ (id)routeSnapshotForIPv4Host:(sockaddr_in *)host viaInterfaceIndex:(int)index
{
  v4 = *&index;
  v6 = objc_alloc_init(NWSSnapshotSource);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:host length:16];
  v8 = [[NWSRouteSnapshotter alloc] initWithSource:v6 dest:v7 mask:0 ifindex:v4];
  snapshot = [(NWSRouteSnapshotter *)v8 snapshot];

  return snapshot;
}

+ (id)routeSnapshotForIPv6Host:(sockaddr_in6 *)host viaInterfaceIndex:(int)index
{
  v4 = *&index;
  v6 = objc_alloc_init(NWSSnapshotSource);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:host length:28];
  v8 = [[NWSRouteSnapshotter alloc] initWithSource:v6 dest:v7 mask:0 ifindex:v4];
  snapshot = [(NWSRouteSnapshotter *)v8 snapshot];

  return snapshot;
}

@end