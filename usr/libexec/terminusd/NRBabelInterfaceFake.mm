@interface NRBabelInterfaceFake
- (NRBabelInterfaceFake)initWithInstance:(id)instance link:(id)link;
- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr;
@end

@implementation NRBabelInterfaceFake

- (void)sendPacket:(iovec *)packet iovLen:(unsigned int)len toAddr:(const in6_addr *)addr
{
  if (!len)
  {
    goto LABEL_18;
  }

  lenCopy = len;
  if (len > 8)
  {
    v11 = len & 7;
    if (!v11)
    {
      v11 = 8;
    }

    v9 = len - v11;
    p_iov_len = &packet[4].iov_len;
    v13 = 0uLL;
    v14 = v9;
    v15 = 0uLL;
    do
    {
      v16 = p_iov_len - 8;
      v17 = vld2q_f64(v16);
      v18 = p_iov_len - 4;
      v19 = vld2q_f64(v18);
      v20 = p_iov_len + 16;
      v22 = vld2q_f64(p_iov_len);
      v21 = p_iov_len + 4;
      v23 = vld2q_f64(v21);
      v13 = vaddq_s32(v13, vuzp1q_s32(v17, v19));
      v15 = vaddq_s32(v15, vuzp1q_s32(v22, v23));
      p_iov_len = v20;
      v14 -= 8;
    }

    while (v14);
    LODWORD(v10) = vaddvq_s32(vaddq_s32(v15, v13));
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
  }

  v24 = len - v9;
  v25 = &packet[v9].iov_len;
  do
  {
    v26 = *v25;
    v25 += 2;
    v10 = (v10 + v26);
    --v24;
  }

  while (v24);
  if (v10)
  {
    v27 = malloc_type_malloc(v10, 0xF5480FB6uLL);
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = &packet->iov_len;
      do
      {
        v31 = v29;
        memcpy(&v28[v29], *(v30 - 1), *v30);
        v32 = *v30;
        v30 += 2;
        v29 = v32 + v31;
        --lenCopy;
      }

      while (lenCopy);
      v33 = bswap64(*addr->__u6_addr8);
      v34 = 0xFF02000000000000;
      if (v33 == 0xFF02000000000000 && (v34 = 65542, v33 = bswap64(*&addr->__u6_addr32[2]), v33 == 65542))
      {
        v35 = 0;
      }

      else if (v34 < v33)
      {
        v35 = -1;
      }

      else
      {
        v35 = 1;
      }

      v59 = [[NSData alloc] initWithBytesNoCopy:v28 length:v10 freeWhenDone:1];
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      selfCopy = self;
      fakeInterfaces = [(NRBabelLinkFake *)self->_link fakeInterfaces];
      v37 = [fakeInterfaces countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v72;
        v58[1] = &v64;
        if (v35)
        {
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v72 != v39)
              {
                objc_enumerationMutation(fakeInterfaces);
              }

              v41 = *(*(&v71 + 1) + 8 * i);
              localAddress = [(NRBabelInterface *)v41 localAddress];
              if (*localAddress->__u6_addr8 == *addr->__u6_addr8 && *&localAddress->__u6_addr32[2] == *&addr->__u6_addr32[2])
              {
                instance = [(NRBabelInterface *)v41 instance];
                queue = [instance queue];
                v62 = _NSConcreteStackBlock;
                v63 = 3221225472;
                v64 = sub_1000DBBDC;
                v65 = &unk_1001FB6A8;
                v66 = v59;
                v67 = selfCopy;
                v70 = v10;
                v68 = v41;
                addrCopy2 = addr;
                dispatch_async(queue, &v62);
              }
            }

            v38 = [fakeInterfaces countByEnumeratingWithState:&v71 objects:v75 count:16];
          }

          while (v38);
        }

        else
        {
          do
          {
            for (j = 0; j != v38; j = j + 1)
            {
              if (*v72 != v39)
              {
                objc_enumerationMutation(fakeInterfaces);
              }

              v47 = *(*(&v71 + 1) + 8 * j);
              if (v47 != selfCopy)
              {
                instance2 = [*(*(&v71 + 1) + 8 * j) instance];
                queue2 = [instance2 queue];
                v62 = _NSConcreteStackBlock;
                v63 = 3221225472;
                v64 = sub_1000DBBDC;
                v65 = &unk_1001FB6A8;
                v66 = v59;
                v67 = selfCopy;
                v70 = v10;
                v68 = v47;
                addrCopy2 = addr;
                dispatch_async(queue2, &v62);
              }
            }

            v38 = [fakeInterfaces countByEnumeratingWithState:&v71 objects:v75 count:16];
          }

          while (v38);
        }
      }
    }

    else
    {
      v50 = sub_1000CB9A8();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v52 = sub_1000CB9A8();
        _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", ", "[NRBabelInterfaceFake sendPacket:iovLen:toAddr:]"", 3931);
      }

      v53 = _os_log_pack_size();
      v54 = v58 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v55 = __error();
      v56 = _os_log_pack_fill(v54, v53, *v55, &_mh_execute_header, "%{public}s strict allocator failed");
      *v56 = 136446210;
      *(v56 + 4) = "[NRBabelInterfaceFake sendPacket:iovLen:toAddr:]";
      sub_1000CB9A8();
      v57 = _NRLogAbortWithPack();
      sub_1000DBBDC(v57);
    }
  }

  else
  {
LABEL_18:
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v36 = qword_1002290F8;

      _NRLogWithArgs(v36, 17, "fullLen is 0");
    }
  }
}

- (NRBabelInterfaceFake)initWithInstance:(id)instance link:(id)link
{
  instanceCopy = instance;
  linkCopy = link;
  v25.receiver = self;
  v25.super_class = NRBabelInterfaceFake;
  v8 = [(NRBabelInterface *)&v25 initWithInstance:instanceCopy];
  v9 = v8;
  if (v8)
  {
    [(NRBabelInterface *)v8 setInstance:instanceCopy];
    objc_storeStrong(&v9->_link, link);
    v21 = 33022;
    v22 = 0;
    v23 = __rev16([linkCopy fakeLinkIndex]);
    v24 = [instanceCopy routerID] >> 48;
    [(NRBabelInterface *)v9 setLocalAddress:&v21];
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      v10 = qword_1002290F8;
      IPv6AddrString = createIPv6AddrString();
      name = [linkCopy name];
      _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@attached via %@ to [%@]", ", "[NRBabelInterfaceFake initWithInstance:link:]"", 3909, instanceCopy, IPv6AddrString, name);
    }

    queue = [instanceCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DBF48;
    block[3] = &unk_1001FD088;
    v18 = instanceCopy;
    v14 = v9;
    v19 = v14;
    v20 = linkCopy;
    dispatch_async(queue, block);

    v15 = v14;
  }

  else
  {
    if (qword_100229100 != -1)
    {
      dispatch_once(&qword_100229100, &stru_1001FB6C8);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100229100 != -1)
      {
        dispatch_once(&qword_100229100, &stru_1001FB6C8);
      }

      _NRLogWithArgs(qword_1002290F8, 17, "[super initWithInstance:] failed");
    }
  }

  return v9;
}

@end