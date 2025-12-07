@interface NEFilterPacketInterpose
- (BOOL)matchFlow:(const unsigned __int8 *)flow flowId:;
- (id)description;
- (void)close;
- (void)close:(os_unfair_lock_s *)close;
- (void)close_nolock:(uint64_t)close_nolock;
- (void)dealloc;
- (void)deallocateFrame:(uint64_t)frame;
- (void)freePacket:(os_unfair_lock_s *)packet;
@end

@implementation NEFilterPacketInterpose

- (id)description
{
  if (self->_channel)
  {
    v3 = MEMORY[0x1E696AEC0];
    name = nw_interface_get_name(self->_interface);
    [v3 stringWithFormat:@"NEFilterPacketInterpose: %s - [%@:%d - fd %d]", name, objc_getProperty(self, v5, 176, 1), self->_nexusPort, self->_channel_fd];
    v7 = LABEL_5:;
    goto LABEL_6;
  }

  interface = self->_interface;
  if (interface)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"NEFilterPacketInterpose: %s", nw_interface_get_name(interface), v9, v10, v11];
    goto LABEL_5;
  }

  v7 = @"NEFilterPacketInterpose";
LABEL_6:

  return v7;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEBUG, "%@: dealloc", buf, 0xCu);
  }

  [(NEFilterPacketInterpose *)self close:?];
  context = self->_context;
  self->_context = 0;

  v5.receiver = self;
  v5.super_class = NEFilterPacketInterpose;
  [(NEFilterPacketInterpose *)&v5 dealloc];
}

- (void)close:(os_unfair_lock_s *)close
{
  if (close)
  {
    v2 = a2;
    os_unfair_lock_lock(close + 2);
    [(NEFilterPacketInterpose *)close close_nolock:v2];

    os_unfair_lock_unlock(close + 2);
  }
}

- (void)close_nolock:(uint64_t)close_nolock
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412546;
    close_nolockCopy3 = close_nolock;
    v12 = 1024;
    v13 = a2;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@: close: StopInputOnly %d", &v10, 0x12u);
  }

  if (*(close_nolock + 152))
  {
    *(close_nolock + 153) = 1;
  }

  else
  {
    *(close_nolock + 153) = 0;
    if (*(close_nolock + 192))
    {
      v5 = ne_log_obj();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        close_nolockCopy3 = close_nolock;
        _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: close channel: cancel input", &v10, 0xCu);
      }

      nw_queue_cancel_source();
      *(close_nolock + 192) = 0;
      *(close_nolock + 152) = 0;
    }

    if ((a2 & 1) == 0 && *(close_nolock + 16))
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        close_nolockCopy3 = close_nolock;
        _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@: close channel: cancel channel", &v10, 0xCu);
      }

      os_channel_destroy();
      *(close_nolock + 16) = 0;
      *(close_nolock + 32) = -1;
      objc_setProperty_atomic(close_nolock, v7, 0, 176);
      *(close_nolock + 184) = 0;
      *(close_nolock + 156) = 0;
      *(close_nolock + 160) = 0;
      *(close_nolock + 96) = 0u;
      *(close_nolock + 112) = 0u;
      if (*(close_nolock + 24))
      {
        os_channel_attr_destroy();
        *(close_nolock + 24) = 0;
      }

      *(close_nolock + 88) = 0;
      v8 = *(close_nolock + 128);
      *(close_nolock + 128) = 0;

      v9 = *(close_nolock + 136);
      *(close_nolock + 136) = 0;
    }
  }
}

- (void)close
{
  if (self)
  {
    os_unfair_lock_lock(self + 2);
    [(NEFilterPacketInterpose *)self close_nolock:?];

    os_unfair_lock_unlock(self + 2);
  }
}

- (BOOL)matchFlow:(const unsigned __int8 *)flow flowId:
{
  v12 = *MEMORY[0x1E69E9840];
  *uu1 = 0;
  v11 = 0;
  *v8 = 0;
  v9 = 0;
  [objc_getProperty(self a2];
  [objc_getProperty(self v6];
  return !uuid_compare(uu1, a2) && uuid_compare(v8, flow) == 0;
}

void __40__NEFilterPacketInterpose_createChannel__block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v49 = *(a1 + 32);
    *v62 = 138412290;
    *&v62[4] = v49;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "%@: INPUT SOURCE: READ EVENT", v62, 0xCu);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_7:
    nw_queue_suspend_source();
    v4 = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_98;
    }

    goto LABEL_8;
  }

  if ((v3[152] & 1) == 0)
  {
    v3[152] = 1;
    goto LABEL_7;
  }

  v4 = v3;
LABEL_8:
  v50 = a1;
  os_unfair_lock_lock(v4 + 2);
  v5 = 0;
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (v7)
    {
      v9 = 96;
    }

    else
    {
      v9 = 112;
    }

    v57 = v7;
    if (*&v4[v9])
    {
      v10 = os_channel_available_slot_count();
      if (v10)
      {
        v11 = v10;
        v54 = v6;
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *v62 = 138412802;
          v45 = "INGRESS";
          if ((v8 & 1) == 0)
          {
            v45 = "EGRESS";
          }

          *&v62[4] = v4;
          *&v62[12] = 2080;
          *&v62[14] = v45;
          *&v62[22] = 1024;
          *&v62[24] = v11;
          v13 = v45;
          _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "%@: receiveFramesfromRings: %s: avail slots %d", v62, 0x1Cu);
        }

        else if (v8)
        {
          v13 = "INGRESS";
        }

        else
        {
          v13 = "EGRESS";
        }

        if (v8)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        v15 = 120;
        if (v8)
        {
          v15 = 104;
        }

        v52 = v15;
        v53 = v14;
        v56 = v13;
        while (1)
        {
          v16 = v4;
          v63 = 0u;
          v64 = 0u;
          memset(v62, 0, sizeof(v62));
          if (!*&v4[v9])
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 2080;
              *v61 = v13;
              *&v61[8] = 2112;
              *&v61[10] = @"Bad rx ring";
              v23 = v22;
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          next_slot = os_channel_get_next_slot();
          if (!next_slot)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 2080;
              *v61 = v13;
              *&v61[8] = 2112;
              *&v61[10] = @"NULL next slot";
              v23 = v22;
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          if (!*&v62[16])
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 2080;
              *v61 = v13;
              *&v61[8] = 2112;
              *&v61[10] = @"NULL prop buf";
              v23 = v22;
              goto LABEL_40;
            }

LABEL_41:

            if (!*(v4 + 2))
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }

          v18 = next_slot;
          *(v4 + 5) = next_slot;
          packet = os_channel_slot_get_packet();
          if (!packet)
          {
            v22 = ne_log_obj();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 2080;
              *v61 = v13;
              *&v61[8] = 2112;
              *&v61[10] = @"Bad ptr";
              v23 = v22;
LABEL_40:
              _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
            }

            goto LABEL_41;
          }

          v20 = packet;
          if (os_channel_slot_detach_packet())
          {
            break;
          }

          next_buflet = os_packet_get_next_buflet();
          if (!next_buflet)
          {
            v21 = ne_log_obj();
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            *buf = 138412802;
            v59 = v4;
            v60 = 2080;
            *v61 = v13;
            *&v61[8] = 2112;
            *&v61[10] = @"Bad buflet";
            v34 = v21;
            goto LABEL_67;
          }

          v26 = next_buflet;
          data_offset = os_buflet_get_data_offset();
          object_address = os_buflet_get_object_address();
          if (object_address)
          {
            v28 = object_address;
            data_length = os_packet_get_data_length();
            v30 = ne_log_obj();
            v51 = data_length;
            if (!data_length)
            {
              v35 = v30;
              v13 = v56;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v59 = v4;
                v60 = 2080;
                *v61 = v56;
                *&v61[8] = 2112;
                *&v61[10] = @"Bad frame length";
                _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
              }

              if (!*(v4 + 2))
              {
                v24 = 0;
                goto LABEL_45;
              }

              os_channel_packet_free();
              if (!os_channel_is_defunct())
              {
                goto LABEL_44;
              }

LABEL_43:
              os_unfair_lock_lock(v4 + 2);
              [(NEFilterPacketInterpose *)v16 close_nolock:?];
              os_unfair_lock_unlock(v4 + 2);
              goto LABEL_44;
            }

            v31 = v30;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 1024;
              *v61 = v51;
              *&v61[4] = 2080;
              *&v61[6] = v56;
              _os_log_debug_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_DEBUG, "%@: receiveDatafromRing: read %u bytes on %s rx ring", buf, 0x1Cu);
            }

            *(v4 + 5) = v18;
            if (!os_channel_advance_slot())
            {
              v36 = v28 + data_offset;
              v4[48] = v54;
              *(v4 + 7) = v36;
              *(v4 + 16) = v51;
              *(v4 + 9) = v20;
              *(v4 + 10) = v26;
              *(v4 + 11) = v4 + 48;
              v37 = *(v4 + 18);
              if (v37)
              {
                objc_setProperty_atomic(v37, v32, v16, 8);
              }

              os_unfair_lock_unlock(v4 + 2);
              v38 = [*(v4 + 16) packetHandler];
              v39 = v38[2](v38, *(v4 + 18), *(v4 + 17), v53, v36, v51);

              os_unfair_lock_lock(v4 + 2);
              v41 = *(v4 + 18);
              if (v41)
              {
                objc_setProperty_atomic(v41, v40, 0, 8);
              }

              if (!*(v4 + 2))
              {
                v24 = 0;
                v13 = v56;
                goto LABEL_45;
              }

              v42 = ne_log_obj();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v59 = v4;
                v60 = 2048;
                *v61 = v39;
                _os_log_debug_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_DEBUG, "%@: receiveDatafromRing: verdict %ld", buf, 0x16u);
              }

              if (v39 != 2)
              {
                v13 = v56;
                if (!v39)
                {
                  v43 = *&v4[v52];
                  if (v43)
                  {
                    sendDataOnRing(v16, v43, v54, v20);
                    v24 = 1;
                    goto LABEL_45;
                  }
                }

                goto LABEL_85;
              }

              v13 = v56;
              if (*(v4 + 11))
              {
                v44 = ne_log_obj();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v59 = v4;
                  _os_log_error_impl(&dword_1BA83C000, v44, OS_LOG_TYPE_ERROR, "%@: receiveDatafromRing: returned Delay verdict but packet hasn't been delayed", buf, 0xCu);
                }

                *(v4 + 11) = 0;
LABEL_85:
                if (*(v4 + 2))
                {
                  os_channel_packet_free();
                }

                goto LABEL_44;
              }

              goto LABEL_44;
            }

            v33 = ne_log_obj();
            v13 = v56;
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v59 = v4;
              v60 = 2080;
              *v61 = v56;
              *&v61[8] = 2112;
              *&v61[10] = @"Failed to advance slot";
              _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
            }

            if (!*(v4 + 2))
            {
              goto LABEL_44;
            }

            goto LABEL_31;
          }

          v21 = ne_log_obj();
          v13 = v56;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v59 = v4;
            v60 = 2080;
            *v61 = v56;
            *&v61[8] = 2112;
            *&v61[10] = @"Bad address";
            v34 = v21;
LABEL_67:
            _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "%@: %s - %@", buf, 0x20u);
          }

LABEL_30:

          if (!*(v4 + 2))
          {
            goto LABEL_44;
          }

LABEL_31:
          os_channel_packet_free();
LABEL_42:
          if (os_channel_is_defunct())
          {
            goto LABEL_43;
          }

LABEL_44:
          v24 = 0;
LABEL_45:

          v5 += v24;
          if (!os_channel_available_slot_count())
          {
            goto LABEL_87;
          }
        }

        v21 = ne_log_obj();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        *buf = 138412802;
        v59 = v4;
        v60 = 2080;
        *v61 = v13;
        *&v61[8] = 2112;
        *&v61[10] = @"Bad detach";
        v34 = v21;
        goto LABEL_67;
      }
    }

LABEL_87:
    v7 = 0;
    v6 = 1;
  }

  while ((v57 & 1) != 0);
  if (v5 && os_channel_sync())
  {
    v46 = ne_log_obj();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *v62 = 138412290;
      *&v62[4] = v4;
      _os_log_error_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_ERROR, "%@: receiveFramesfromRings: failed to sync channel TX", v62, 0xCu);
    }
  }

  os_unfair_lock_unlock(v4 + 2);

  a1 = v50;
LABEL_98:
  v47 = *(a1 + 32);
  if (*(v47 + 152))
  {
    *(v47 + 152) = 0;
    nw_queue_resume_source();
    v47 = *(a1 + 32);
  }

  os_unfair_lock_lock((v47 + 8));
  v48 = *(a1 + 32);
  if (*(v48 + 153) == 1)
  {
    [(NEFilterPacketInterpose *)v48 close_nolock:?];
    v48 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v48 + 8));
}

- (void)freePacket:(os_unfair_lock_s *)packet
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (packet)
  {
    if (v3)
    {
      v5 = v3[5];
      if (v5)
      {
        os_unfair_lock_lock(packet + 2);
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(v5 + 16);
          v8 = 138412546;
          packetCopy = packet;
          v10 = 1024;
          v11 = v7;
          _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%@: freePacket: %d bytes", &v8, 0x12u);
        }

        [(NEFilterPacketInterpose *)packet deallocateFrame:v5];
        v4[5] = 0;
        os_unfair_lock_unlock(packet + 2);
      }
    }
  }
}

- (void)deallocateFrame:(uint64_t)frame
{
  if (*(frame + 16) && ptr[3])
  {
    os_channel_packet_free();
  }

  ptr[1] = 0;
  ptr[3] = 0;
  ptr[4] = 0;
  v3 = *MEMORY[0x1E695E480];

  CFAllocatorDeallocate(v3, ptr);
}

@end