double TCPProtocol.TCPMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

Swift::UInt32 __swiftcall TCPProtocol.TCPMetadata.getReceiveBufferSize()()
{
  v1 = v0[1];
  v2 = v0[8];
  if (v2)
  {
    v3 = v1 >= 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v9 = *v0;
    os_unfair_lock_lock(v9 + 4);
    v10 = (v1)(v2);
    os_unfair_lock_unlock(v9 + 4);
    return v10;
  }

  else
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA843348);
    v5 = sub_182AD2678();
    v6 = sub_182AD38B8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_181A37000, v5, v6, "TCPMetadata callbacks not setup for getReceiveBufferSize", v7, 2u);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    return 0;
  }
}

Swift::UInt32 __swiftcall TCPProtocol.TCPMetadata.getSendBufferSize()()
{
  v1 = v0[2];
  v2 = v0[8];
  if (v0[1] == 1 || v2 == 0 || v1 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v5 = sub_182AD2698();
    __swift_project_value_buffer(v5, qword_1EA843348);
    v6 = sub_182AD2678();
    v7 = sub_182AD38B8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_181A37000, v6, v7, "TCPMetadata callbacks not setup for getSendBufferSize", v8, 2u);
      MEMORY[0x1865DF520](v8, -1, -1);
    }

    return 0;
  }

  else
  {
    v9 = *v0;
    os_unfair_lock_lock(v9 + 4);
    v10 = (v1)(v2);
    os_unfair_lock_unlock(v9 + 4);
    return v10;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.resetKeepalives(enableKeepalives:count:idleTime:interval:)(Swift::Bool enableKeepalives, Swift::UInt32 count, Swift::UInt32 idleTime, Swift::UInt32 interval)
{
  v5 = v4[3];
  v6 = v4[8];
  if (v4[1] == 1 || v6 == 0 || v5 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1EA843348);
    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_181A37000, v10, v11, "TCPMetadata callbacks not setup for resetKeepalives", v12, 2u);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    return 0;
  }

  else
  {
    v13 = *&interval;
    v14 = *&idleTime;
    v15 = *&count;
    v17 = *v4;
    os_unfair_lock_lock(v17 + 4);
    LODWORD(v13) = (v5)(v6, enableKeepalives, v15, v14, v13);
    os_unfair_lock_unlock(v17 + 4);
    return v13;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoDelay(noDelay:)(Swift::Bool noDelay)
{
  v2 = v1[4];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoDelay", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noDelay);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoPush(noPush:)(Swift::Bool noPush)
{
  v2 = v1[5];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoPush", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noPush);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setNoWakeFromSleep(noWakeFromSleep:)(Swift::Bool noWakeFromSleep)
{
  v2 = v1[6];
  v3 = v1[8];
  if (v1[1] == 1 || v3 == 0 || v2 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setNoWakeFromSleep", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    v12 = (v2)(v3, noWakeFromSleep);
    os_unfair_lock_unlock(v11 + 4);
    return v12;
  }
}

Swift::Int32 __swiftcall TCPProtocol.TCPMetadata.setMaxPacingRate(maxPacingRate:)(Swift::UInt64 maxPacingRate)
{
  v3 = v1[7];
  v2 = v1[8];
  if (v1[1] == 1 || v2 == 0 || v3 == 0)
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v6 = sub_182AD2698();
    __swift_project_value_buffer(v6, qword_1EA843348);
    v7 = sub_182AD2678();
    v8 = sub_182AD38B8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_181A37000, v7, v8, "TCPMetadata callbacks not setup for setMaxPacingRate", v9, 2u);
      MEMORY[0x1865DF520](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v11 = *v1;
    os_unfair_lock_lock(v11 + 4);
    LODWORD(maxPacingRate) = (v3)(v2, maxPacingRate);
    os_unfair_lock_unlock(v11 + 4);
    return maxPacingRate;
  }
}

uint64_t TCPProtocol.TCPInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t TCPProtocol.TCPInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t TCPProtocol.TCPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t TCPProtocol.TCPInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

double TCPProtocol.newPerProtocolOptions()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x100000201;
  return result;
}

__n128 TCPProtocol.newPerProtocolOptions(from:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double TCPProtocol.newPerProtocolOptions(from:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double TCPProtocol.newPerProtocolMetadata()@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

double sub_181FB2310@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x100000201;
  return result;
}

__n128 sub_181FB2328@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  return result;
}

double sub_181FB233C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 2;
  return result;
}

double sub_181FB2350@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SystemLock._Storage(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *a1 = v2;
  *(a1 + 8) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_181FB23A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = HIDWORD(*(v3 + 40)) & 1;
  }

  return result;
}

void (*ProtocolOptions<>.reduceBuffering.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = HIDWORD(*(v6 + 40)) & 1;
    return sub_181FB24D0;
  }

  return result;
}

void sub_181FB24D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if (v5)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 1;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if (v5)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFE;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2544@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x200000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.noDelay.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x200000000) != 0;
    return sub_181FB2674;
  }

  return result;
}

void sub_181FB2674(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 2) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 2) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 2;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 2) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFD;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noTimewait.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 34) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB2750@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x400000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.noTimewait.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 4) != 0)
    {
      return result;
    }

    v6 = v5 | 4;
  }

  else
  {
    if ((v5 & 4) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFFB;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noTimewait.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x400000000) != 0;
    return sub_181FB2910;
  }

  return result;
}

void sub_181FB2910(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 4) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 4) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 4;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 4) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFFB;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noPush.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 35) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB29EC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x800000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.noPush.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 8) != 0)
    {
      return result;
    }

    v6 = v5 | 8;
  }

  else
  {
    if ((v5 & 8) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFF7;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noPush.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x800000000) != 0;
    return sub_181FB2BAC;
  }

  return result;
}

void sub_181FB2BAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 8) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 8) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 8;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 8) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFF7;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.noOptions.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x10) != 0)
    {
      return result;
    }

    v6 = v5 | 0x10;
  }

  else
  {
    if ((v5 & 0x10) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFFEF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.noOptions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x1000000000) != 0;
    return sub_181FB2D70;
  }

  return result;
}

void sub_181FB2D70(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x10;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x10) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFEF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2DE4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x2000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableKeepalive.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x2000000000) != 0;
    return sub_181FB2F14;
  }

  return result;
}

void sub_181FB2F14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x20;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x20) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFDF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB2F88@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x4000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableKeepaliveOffload.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x4000000000) != 0;
    return sub_181FB30B8;
  }

  return result;
}

void sub_181FB30B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x40;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x40) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFFBF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.disableAckStretching.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 39) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3194@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x8000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableAckStretching.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x80) != 0)
    {
      return result;
    }

    v6 = v5 | 0x80;
  }

  else
  {
    if ((v5 & 0x80) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFF7F;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableAckStretching.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x8000000000) != 0;
    return sub_181FB3354;
  }

  return result;
}

void sub_181FB3354(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x80;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x80) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFF7F;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t _s7Network15ProtocolOptionsCA2A11TCPProtocolVRszrlE02noC0Sbvg_0()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 36) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3430@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x1000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableBlackholeDetection.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x100) != 0)
    {
      return result;
    }

    v6 = v5 | 0x100;
  }

  else
  {
    if ((v5 & 0x100) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFEFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableBlackholeDetection.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x1000000000) != 0;
    return sub_181FB35F0;
  }

  return result;
}

void sub_181FB35F0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x100) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x100;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFEFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3664@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x20000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableBackgroundTrafficManagement.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x20000000000) != 0;
    return sub_181FB3794;
  }

  return result;
}

void sub_181FB3794(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x200) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x200;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x200) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFDFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.retransmitFinDrop.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 42) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3870@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x40000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.retransmitFinDrop.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x400) != 0)
    {
      return result;
    }

    v6 = v5 | 0x400;
  }

  else
  {
    if ((v5 & 0x400) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFFFBFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.retransmitFinDrop.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x40000000000) != 0;
    return sub_181FB3A30;
  }

  return result;
}

void sub_181FB3A30(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x400) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x400) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x400;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x400) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFFBFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3AA4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x80000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.enableFastOpen.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x80000000000) != 0;
    return sub_181FB3BD4;
  }

  return result;
}

void sub_181FB3BD4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x800;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x800) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFF7FF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3C48@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x200000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.noFastOpenCookie.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x200000000000) != 0;
    return sub_181FB3D78;
  }

  return result;
}

void sub_181FB3D78(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x2000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x2000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFDFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB3DEC@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x400000000000) != 0;
  }

  return result;
}

void (*ProtocolOptions<>.fastOpenForceEnable.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x400000000000) != 0;
    return sub_181FB3F1C;
  }

  return result;
}

void sub_181FB3F1C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x4000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x4000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFFBFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.disableECN.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return (*(v1 + 40) >> 47) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB3FF8@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = (*(v3 + 40) & 0x800000000000) != 0;
  }

  return result;
}

uint64_t ProtocolOptions<>.disableECN.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x8000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x8000;
  }

  else
  {
    if ((v5 & 0x8000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFF7FFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.disableECN.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = (*(v6 + 40) & 0x800000000000) != 0;
    return sub_181FB41B8;
  }

  return result;
}

void sub_181FB41B8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x8000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x8000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x8000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x8000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFF7FFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t ProtocolOptions<>.resetLocalPort.getter()
{
  v1 = v0 + *(*v0 + 128);
  result = swift_beginAccess();
  if (*(v1 + 40) != 2)
  {
    return HIWORD(*(v1 + 40)) & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB4294@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = HIWORD(*(v3 + 40)) & 1;
  }

  return result;
}

uint64_t ProtocolOptions<>.resetLocalPort.setter(char a1)
{
  v3 = v1 + *(*v1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
    return result;
  }

  v5 = HIDWORD(*(v3 + 40));
  if (a1)
  {
    if ((v5 & 0x10000) != 0)
    {
      return result;
    }

    v6 = v5 | 0x10000;
  }

  else
  {
    if ((v5 & 0x10000) == 0)
    {
      return result;
    }

    v6 = v5 & 0xFFFEFFFF;
  }

  *(v3 + 44) = v6;
  return result;
}

void (*ProtocolOptions<>.resetLocalPort.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = HIWORD(*(v6 + 40)) & 1;
    return sub_181FB4454;
  }

  return result;
}

void sub_181FB4454(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  v5 = HIDWORD(*(v3 + 40));
  if (a2)
  {
    if (v4 != 2)
    {
      if (*(v2 + 40) == 1)
      {
        if ((v5 & 0x10000) != 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else if (v4 != 2)
  {
    if (*(v2 + 40) == 1)
    {
      if ((v5 & 0x10000) != 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      *(v3 + 44) = v5 | 0x10000;
LABEL_10:
      free(v2);
      return;
    }

LABEL_11:
    if ((v5 & 0x10000) != 0)
    {
      *(v3 + 44) = v5 & 0xFFFEFFFF;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_181FB44C8@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
  }

  return result;
}

uint64_t sub_181FB4538(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v2;
  }

  return result;
}

void (*ProtocolOptions<>.keepaliveIdleTime.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = *(v6 + 16);
    return sub_181FB465C;
  }

  return result;
}

void sub_181FB465C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4 != 2)
    {
LABEL_5:
      *(v3 + 16) = *(v2 + 40);
      free(v2);
      return;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_181FB4690@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 20);
  }

  return result;
}

uint64_t sub_181FB4700(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2 + *(**a2 + 128);
  result = swift_beginAccess();
  if (*(v3 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v2;
  }

  return result;
}

void (*ProtocolOptions<>.keepaliveInterval.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*v1 + 128);
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  result = swift_beginAccess();
  if (*(v6 + 40) == 2)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = *(v6 + 20);
    return sub_181FB4824;
  }

  return result;
}

void sub_181FB4824(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24) + *(v2 + 32);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4 != 2)
    {
LABEL_5:
      *(v3 + 20) = *(v2 + 40);
      free(v2);
      return;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_181FB4858(unsigned int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = a1;
  v11 = a1 >> 8;
  *(v5 + 48) = xmmword_182AE8E90;
  v12 = qword_1ED411A90;
  v13 = sub_182AD2738();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + qword_1ED411A88) = 0;
  v14 = v5 + *(*v5 + 128);
  *v14 = 1;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v5 + *(*v5 + 136)) = 0;
  *(v5 + *(*v5 + 144)) = 0;
  v15 = v5 + *(*v5 + 152);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v5 + *(*v5 + 160);
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (v5 + *(*v5 + 168));
  *v17 = 0;
  v17[1] = 0;
  *(v5 + *(*v5 + 176)) = 0;
  *(v5 + *(*v5 + 184)) = 0;
  *(v5 + 16) = v10;
  *(v5 + 17) = v11;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4 & 1;
  swift_beginAccess();
  v18 = *(v14 + 48);
  v23[2] = *(v14 + 32);
  v23[3] = v18;
  v24 = *(v14 + 64);
  v19 = *(v14 + 16);
  v23[0] = *v14;
  v23[1] = v19;
  v20 = *(a5 + 48);
  *(v14 + 32) = *(a5 + 32);
  *(v14 + 48) = v20;
  *(v14 + 64) = *(a5 + 64);
  v21 = *(a5 + 16);
  *v14 = *a5;
  *(v14 + 16) = v21;
  sub_181FB504C(v23);
  return v5;
}

BOOL _s7Network11TCPProtocolV11TCPMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != 1 || a2[1] != 1)
  {
    return 0;
  }

  v4 = a1[8];
  v5 = a2[8];
  if (v4)
  {
    return v5 && v4 == v5;
  }

  return !v5;
}

unint64_t sub_181FB4AC8(uint64_t a1)
{
  result = sub_181FB4AF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181FB4AF0()
{
  result = qword_1ED40F860;
  if (!qword_1ED40F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F860);
  }

  return result;
}

unint64_t sub_181FB4B44(uint64_t a1)
{
  result = sub_181FB4B6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181FB4B6C()
{
  result = qword_1EA839670;
  if (!qword_1EA839670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839670);
  }

  return result;
}

unint64_t sub_181FB4BC4()
{
  result = qword_1EA839678;
  if (!qword_1EA839678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839678);
  }

  return result;
}

unint64_t sub_181FB4C1C()
{
  result = qword_1ED40F858;
  if (!qword_1ED40F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F858);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_181FB4C84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 48))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_181FB4CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_181FB4D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181FB4DA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_181FB4E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_181FB4E98()
{
  result = qword_1EA839680;
  if (!qword_1EA839680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839680);
  }

  return result;
}

unint64_t sub_181FB4EF0()
{
  result = qword_1EA839688;
  if (!qword_1EA839688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839688);
  }

  return result;
}

unint64_t sub_181FB4F48()
{
  result = qword_1EA839690;
  if (!qword_1EA839690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839690);
  }

  return result;
}

unint64_t sub_181FB4FA0()
{
  result = qword_1EA839698;
  if (!qword_1EA839698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839698);
  }

  return result;
}

unint64_t sub_181FB4FF8()
{
  result = qword_1EA8396A0;
  if (!qword_1EA8396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396A0);
  }

  return result;
}

uint64_t sub_181FB504C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839BF0, &qword_182AECC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181FB50CC()
{
  v1 = *v0;
  v75 = v0[1];
  v83[0] = MEMORY[0x1E69E7CC0];
  v3 = v1[7];
  v2 = v1[8];
  if (sub_181CA4798(v3, v2))
  {
    v78 = v3;
    v79 = v2;

    swift_bridgeObjectRetain_n();
    sub_181FB6464(&v78);
  }

  else
  {

    sub_182289C8C(v3, v2, v83);
  }

  sub_1820D4BB0(32, 0xE100000000000000);
  v4 = v1[7] == 0x5443454E4E4F43 && v1[8] == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {
    v5 = 22;
    v6 = 21;
    v7 = 20;
    v8 = 19;
    v9 = 18;
    v10 = 16;
    v11 = v1[17];
    if (!v11)
    {
      goto LABEL_16;
    }

LABEL_12:
    v12 = v1[v5];
    v13 = v1[v6];
    v14 = v1[v7];
    v15 = v1[v8];
    v16 = v1[v9];
    v17 = v1[v10];
    if (sub_181CA4798(v13, v12))
    {
      v78 = v13;
      v79 = v12;
      sub_181F887D0(v17, v11, v16, v15, v14, v13, v12);

      sub_181FB6464(&v78);
    }

    else
    {
      sub_181F887D0(v17, v11, v16, v15, v14, v13, v12);
      sub_182289C8C(v13, v12, v83);
    }

    sub_181D04D28(v17, v11, v16, v15, v14, v13, v12);
    goto LABEL_16;
  }

  v5 = 29;
  v6 = 28;
  v7 = 27;
  v8 = 26;
  v9 = 25;
  v10 = 23;
  v11 = v1[24];
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_16:
  sub_1820D4BB0(0x2E312F5054544820, 0xEB000000000A0D31);
  v18 = v1[17];
  if (v18)
  {
    v19 = v1[16];
    v20 = v1[18];
    v21 = v1[19];
    v22 = v1[20];
    v23 = v1[21];
    v24 = v1[22];

    sub_1820D4BB0(0x203A74736F48, 0xE600000000000000);
    if (sub_181CA4798(v23, v24))
    {
      v78 = v23;
      v79 = v24;

      sub_181FB6464(&v78);
    }

    else
    {
      sub_182289C8C(v23, v24, v83);
    }

    sub_181D04D28(v19, v18, v20, v21, v22, v23, v24);
    sub_1820D4BB0(2573, 0xE200000000000000);
  }

  swift_beginAccess();
  v25 = *(v75 + 16);
  v26 = *(v25 + 16);
  if (!v26)
  {
LABEL_96:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return v83[0];
  }

  v27 = 0;
  v74 = 0;
  v71 = 0;
  while (1)
  {
    if (v27 >= v26)
    {
      goto LABEL_99;
    }

    v28 = (v25 + (v27 << 6));
    v30 = v28[4];
    v29 = v28[5];
    v31 = v28[10];
    ++v27;
    v32 = v28[6] == 0x65696B6F6F63 && v28[7] == 0xE600000000000000;
    v77 = v27;
    if (v32)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_58;
    }

    v33 = v28[9];
    v34 = sub_182AD4268();

    swift_bridgeObjectRelease_n();
    if ((v34 & 1) == 0)
    {
      break;
    }

LABEL_58:
    if (v74)
    {

      v25 = *(v75 + 16);
      v26 = *(v25 + 16);
      v74 = 1;
      if (v27 == v26)
      {
        goto LABEL_96;
      }
    }

    else
    {

      sub_1820D4BB0(v30, v29);

      sub_1820D4BB0(8250, 0xE200000000000000);
      v78 = 0x65696B6F6F43;
      v79 = 0xE600000000000000;
      v80 = 0x65696B6F6F63;
      v81 = 0xE600000000000000;
      v82 = v75;
      sub_181DE0CB8(&v78);
      v46 = v45;

      sub_181DE90B8(v47, v46);
      v49 = v48;

      swift_bridgeObjectRelease_n();
      v50 = v49;
      v68 = *(v49 + 16);
      if (v68)
      {
        v74 = 0;
        v51 = 0;
        v66 = v50;
        v67 = v50 + 32;
        while (1)
        {
          if (v51 >= *(v50 + 16))
          {
            goto LABEL_102;
          }

          v52 = v67 + 56 * v51;
          v54 = *(v52 + 40);
          v53 = *(v52 + 48);

          if (v71)
          {
            sub_1820D4BB0(8251, 0xE200000000000000);
          }

          else
          {
            v74 = 1;
          }

          v76 = v51 + 1;
          if ((v53 & 0x2000000000000000) != 0)
          {
            v55 = HIBYTE(v53) & 0xF;
          }

          else
          {
            v55 = v54 & 0xFFFFFFFFFFFFLL;
          }

          v56 = (v54 >> 59) & 1;
          if ((v53 & 0x1000000000000000) == 0)
          {
            LOBYTE(v56) = 1;
          }

          v57 = 4 << v56;
          v58 = 15;
          do
          {
            while (1)
            {
              if (4 * v55 == v58 >> 14)
              {
                v78 = v54;
                v79 = v53;

                sub_181FB6464(&v78);

                goto LABEL_63;
              }

              v59 = v58 & 0xC;
              v60 = v58;
              if (v59 == v57)
              {
                v64 = v58;
                v60 = sub_18208A330(v58, v54, v53);
                v58 = v64;
              }

              v61 = v60 >> 16;
              if (v60 >> 16 >= v55)
              {
                goto LABEL_100;
              }

              if ((v53 & 0x1000000000000000) != 0)
              {
                break;
              }

              if ((v53 & 0x2000000000000000) != 0)
              {
                v78 = v54;
                v79 = v53 & 0xFFFFFFFFFFFFFFLL;
                v62 = &v78;
              }

              else
              {
                v62 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
                if ((v54 & 0x1000000000000000) == 0)
                {
                  v72 = v58;
                  v62 = sub_182AD3CF8();
                  v58 = v72;
                }
              }

              v63 = *(v62 + v61);
              if (v59 == v57)
              {
                goto LABEL_90;
              }

LABEL_85:
              if ((v53 & 0x1000000000000000) != 0)
              {
                goto LABEL_86;
              }

LABEL_74:
              v58 = (v58 & 0xFFFFFFFFFFFF0000) + 65540;
              if (v63 < 0)
              {
                goto LABEL_93;
              }
            }

            v73 = v58;
            v63 = sub_182AD31C8();
            v58 = v73;
            if (v59 != v57)
            {
              goto LABEL_85;
            }

LABEL_90:
            v58 = sub_18208A330(v58, v54, v53);
            if ((v53 & 0x1000000000000000) == 0)
            {
              goto LABEL_74;
            }

LABEL_86:
            if (v55 <= v58 >> 16)
            {
              goto LABEL_101;
            }

            v58 = sub_182AD3178();
          }

          while ((v63 & 0x80) == 0);
LABEL_93:
          sub_182289C8C(v54, v53, v83);

LABEL_63:

          v51 = v76;
          v27 = v77;
          v50 = v66;
          v71 = 1;
          if (v76 == v68)
          {

            v71 = 1;
            goto LABEL_55;
          }
        }
      }

      v74 = 0;
LABEL_55:
      sub_1820D4BB0(2573, 0xE200000000000000);
      v25 = *(v75 + 16);
      v26 = *(v25 + 16);
      if (v27 == v26)
      {
        goto LABEL_96;
      }
    }
  }

  sub_1820D4BB0(v30, v29);
  sub_1820D4BB0(8250, 0xE200000000000000);
  if ((v31 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v35 = v33 & 0xFFFFFFFFFFFFLL;
  }

  v36 = (v33 >> 59) & 1;
  if ((v31 & 0x1000000000000000) == 0)
  {
    LOBYTE(v36) = 1;
  }

  v37 = 4 << v36;
  v38 = 15;
  while (1)
  {
    if (4 * v35 == v38 >> 14)
    {
      v78 = v33;
      v79 = v31;

      sub_181FB6464(&v78);

      goto LABEL_55;
    }

    v39 = v38 & 0xC;
    v40 = v38;
    if (v39 == v37)
    {
      v44 = v38;
      v40 = sub_18208A330(v38, v33, v31);
      v38 = v44;
    }

    v41 = v40 >> 16;
    if (v40 >> 16 >= v35)
    {
      break;
    }

    if ((v31 & 0x1000000000000000) != 0)
    {
      v70 = v38;
      v43 = sub_182AD31C8();
      v38 = v70;
      if (v39 != v37)
      {
        goto LABEL_46;
      }

LABEL_51:
      v38 = sub_18208A330(v38, v33, v31);
      if ((v31 & 0x1000000000000000) == 0)
      {
        goto LABEL_35;
      }

LABEL_47:
      if (v35 <= v38 >> 16)
      {
        goto LABEL_98;
      }

      v38 = sub_182AD3178();
      if (v43 < 0)
      {
LABEL_54:
        sub_182289C8C(v33, v31, v83);

        goto LABEL_55;
      }
    }

    else
    {
      if ((v31 & 0x2000000000000000) != 0)
      {
        v78 = v33;
        v79 = v31 & 0xFFFFFFFFFFFFFFLL;
        v42 = &v78;
      }

      else
      {
        v42 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v33 & 0x1000000000000000) == 0)
        {
          v69 = v38;
          v42 = sub_182AD3CF8();
          v38 = v69;
        }
      }

      v43 = *(v42 + v41);
      if (v39 == v37)
      {
        goto LABEL_51;
      }

LABEL_46:
      if ((v31 & 0x1000000000000000) != 0)
      {
        goto LABEL_47;
      }

LABEL_35:
      v38 = (v38 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v43 < 0)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_181FB5A80(void (*a1)(uint64_t *))
{
  v3 = v1[1];
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 64);
  v22 = *(*v1 + 16);
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;

  a1(&v22);

  result = swift_beginAccess();
  v11 = *(v3 + 16);
  v12 = *(v11 + 16);
  if (!v12)
  {
  }

  v13 = 0;
  v14 = 0;
  while (v14 < v12)
  {
    ++v14;
    v15 = v11 + v13;
    v16 = *(v15 + 72);
    v17 = *(v15 + 80);
    v18 = *(v15 + 64);
    v19 = *(v15 + 48);
    v20 = *(v15 + 56);
    v21 = *(v15 + 40);
    v22 = *(v15 + 32);
    v23 = v21;
    v24 = v19;
    v25 = v20;
    v26 = v18;
    v27 = v16;
    v28 = v17;

    a1(&v22);

    v11 = *(v3 + 16);
    v12 = *(v11 + 16);
    v13 += 64;
    if (v14 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

void sub_181FB5BEC()
{
  v1 = *v0;
  v26 = v0[1];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1820D4BB0(0x312E312F50545448, 0xE900000000000020);
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  if (sub_181CA4798(v3, v2))
  {
    v28 = v3;
    v29 = v2;

    swift_bridgeObjectRetain_n();
    sub_181FB6464(&v28);
  }

  else
  {

    sub_182289C8C(v3, v2, &v33);
  }

  sub_1820D4BB0(32, 0xE100000000000000);
  v31 = v1;
  v32 = v26;
  HTTPResponse.status.getter(&v28);
  v5 = v29;
  v4 = v30;
  if (sub_181CA4798(v29, v30))
  {
    v28 = v5;
    v29 = v4;

    sub_181FB6464(&v28);
  }

  else
  {
    sub_182289C8C(v5, v4, &v33);
  }

  sub_1820D4BB0(2573, 0xE200000000000000);

  swift_beginAccess();
  v6 = *(v26 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_37:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return;
  }

  v8 = 0;
LABEL_11:
  if (v8 < v7)
  {
    v9 = (v6 + (v8 << 6));
    v11 = v9[9];
    v10 = v9[10];
    v27 = v8 + 1;
    v13 = v9[4];
    v12 = v9[5];
    swift_bridgeObjectRetain_n();

    sub_1820D4BB0(v13, v12);
    sub_1820D4BB0(8250, 0xE200000000000000);
    if ((v10 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    v15 = (v11 >> 59) & 1;
    if ((v10 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    v17 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v14 == v17 >> 14)
        {
          v31 = v11;
          v32 = v10;

          sub_181FB6464(&v31);

LABEL_10:

          sub_1820D4BB0(2573, 0xE200000000000000);
          v6 = *(v26 + 16);
          v7 = *(v6 + 16);
          v8 = v27;
          if (v27 == v7)
          {
            goto LABEL_37;
          }

          goto LABEL_11;
        }

        v18 = v17 & 0xC;
        v19 = v17;
        if (v18 == v16)
        {
          v23 = v17;
          v19 = sub_18208A330(v17, v11, v10);
          v17 = v23;
        }

        v20 = v19 >> 16;
        if (v19 >> 16 >= v14)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if ((v10 & 0x1000000000000000) == 0)
        {
          break;
        }

        v25 = v17;
        v22 = sub_182AD31C8();
        v17 = v25;
        if (v18 != v16)
        {
          goto LABEL_29;
        }

LABEL_34:
        v17 = sub_18208A330(v17, v11, v10);
        if ((v10 & 0x1000000000000000) != 0)
        {
          goto LABEL_30;
        }

LABEL_18:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        v31 = v11;
        v32 = v10 & 0xFFFFFFFFFFFFFFLL;
        v21 = &v31;
      }

      else
      {
        v21 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v11 & 0x1000000000000000) == 0)
        {
          v24 = v17;
          v21 = sub_182AD3CF8();
          v17 = v24;
        }
      }

      v22 = *(v21 + v20);
      if (v18 == v16)
      {
        goto LABEL_34;
      }

LABEL_29:
      if ((v10 & 0x1000000000000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_30:
      if (v14 <= v17 >> 16)
      {
        goto LABEL_39;
      }

      v17 = sub_182AD3178();
      if (v22 < 0)
      {
LABEL_9:
        sub_182289C8C(v11, v10, &v33);

        goto LABEL_10;
      }
    }
  }

LABEL_40:
  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);

  __break(1u);
}

uint64_t sub_181FB6060(void (*a1)(void *, __n128))
{
  v3 = *v1;

  result = swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 0;
  v8 = 0;
  while (v8 < v6)
  {
    ++v8;
    v9 = v5 + v7;
    v10 = *(v9 + 72);
    v11 = *(v9 + 80);
    v12 = *(v9 + 64);
    v13 = *(v9 + 48);
    v14 = *(v9 + 56);
    v15 = *(v9 + 40);
    v16[0] = *(v9 + 32);
    v16[1] = v15;
    v16[2] = v13;
    v16[3] = v14;
    v17 = v12;
    v18 = v10;
    v19 = v11;

    (a1)(v16);

    v5 = *(v3 + 16);
    v6 = *(v5 + 16);
    v7 += 64;
    if (v8 == v6)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181FB6168()
{
  v1 = *v0;
  v27 = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v23 = v1;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_31:

    sub_1820D4BB0(2573, 0xE200000000000000);
    return v27;
  }

  v4 = 0;
LABEL_5:
  if (v4 < v3)
  {
    v5 = (v2 + (v4 << 6));
    v7 = v5[9];
    v6 = v5[10];
    v24 = v4 + 1;
    v9 = v5[4];
    v8 = v5[5];
    swift_bridgeObjectRetain_n();

    sub_1820D4BB0(v9, v8);
    sub_1820D4BB0(8250, 0xE200000000000000);
    if ((v6 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    v11 = (v7 >> 59) & 1;
    if ((v6 & 0x1000000000000000) == 0)
    {
      LOBYTE(v11) = 1;
    }

    v12 = 4 << v11;
    v13 = 15;
    while (1)
    {
      while (1)
      {
        if (4 * v10 == v13 >> 14)
        {
          v25 = v7;
          v26 = v6;

          sub_181FB6464(&v25);

LABEL_4:

          sub_1820D4BB0(2573, 0xE200000000000000);
          v2 = *(v23 + 16);
          v3 = *(v2 + 16);
          v4 = v24;
          if (v24 == v3)
          {
            goto LABEL_31;
          }

          goto LABEL_5;
        }

        v14 = v13 & 0xC;
        v15 = v13;
        if (v14 == v12)
        {
          v19 = v13;
          v15 = sub_18208A330(v13, v7, v6);
          v13 = v19;
        }

        v16 = v15 >> 16;
        if (v15 >> 16 >= v10)
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if ((v6 & 0x1000000000000000) == 0)
        {
          break;
        }

        v22 = v13;
        v18 = sub_182AD31C8();
        v13 = v22;
        if (v14 != v12)
        {
          goto LABEL_23;
        }

LABEL_28:
        v13 = sub_18208A330(v13, v7, v6);
        if ((v6 & 0x1000000000000000) != 0)
        {
          goto LABEL_24;
        }

LABEL_12:
        v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v18 < 0)
        {
          goto LABEL_3;
        }
      }

      if ((v6 & 0x2000000000000000) != 0)
      {
        v25 = v7;
        v26 = v6 & 0xFFFFFFFFFFFFFFLL;
        v17 = &v25;
      }

      else
      {
        v17 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((v7 & 0x1000000000000000) == 0)
        {
          v21 = v13;
          v17 = sub_182AD3CF8();
          v13 = v21;
        }
      }

      v18 = *(v17 + v16);
      if (v14 == v12)
      {
        goto LABEL_28;
      }

LABEL_23:
      if ((v6 & 0x1000000000000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_24:
      if (v10 <= v13 >> 16)
      {
        goto LABEL_33;
      }

      v13 = sub_182AD3178();
      if (v18 < 0)
      {
LABEL_3:
        sub_182289C8C(v7, v6, &v27);

        goto LABEL_4;
      }
    }
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

char *sub_181FB6464(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_18224FE14(v2, v3);
    v10 = v9;

    v2 = v8;
    *a1 = v8;
    a1[1] = v10;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = (HIBYTE(v3) & 0xF);
    v12[0] = v2;
    v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v12;
    return sub_1820D4CC0(v7, v6);
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = (v2 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v5 = sub_182AD3CF8();
  }

  v7 = v5;
  return sub_1820D4CC0(v7, v6);
}

uint64_t sub_181FB6518(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 32);
  return v2(v4, v3, v5, v6, &v8);
}

id sub_181FB6578()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Network12__NWPathFlow_keyStorage];
  if (v2)
  {
    MEMORY[0x1865DF520](v2, -1, -1);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _nw_path_flow_is_viable(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LOWORD(v1) = *(v1 + 100);

  return v1 & 1;
}

uint64_t _nw_path_flow_fast_open_blocked(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 3) & 1;
}

uint64_t _nw_path_flow_is_local(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 4) & 1;
}

uint64_t _nw_path_flow_is_direct(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 5) & 1;
}

void sub_181FB676C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((*(v3 + 100) & 0x400) == 0)
    {
      v6 = v5 | 0x400;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((*(v3 + 100) & 0x400) != 0)
  {
    v6 = v5 & 0xFBFF;
    goto LABEL_6;
  }
}

uint64_t _nw_path_flow_has_ipv4(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 6) & 1;
}

uint64_t _nw_path_flow_has_ipv6(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  LODWORD(v1) = *(v1 + 100);

  return (v1 >> 7) & 1;
}

void sub_181FB689C(char *a1, char a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = *(v3 + 100);
  if (a2)
  {
    if ((*(v3 + 100) & 0x100) == 0)
    {
      v6 = v5 | 0x100;
LABEL_6:
      *(v3 + 100) = v6;
    }
  }

  else if ((*(v3 + 100) & 0x100) != 0)
  {
    v6 = v5 & 0xFEFF;
    goto LABEL_6;
  }
}

uint64_t sub_181FB691C(char *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_181AA847C(a2);
    v5 = v4;
    v6 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v7 = a1;
    swift_beginAccess();
    *(v6 + 4) = v3;
    *(v6 + 5) = v5;
  }

  else
  {
    v8 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v9 = a1;
    swift_beginAccess();
    *(v8 + 4) = 0;
    *(v8 + 5) = 0;
  }

  return swift_unknownObjectRelease();
}

id _nw_path_flow_copy_remote_endpoint(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 3);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _nw_path_flow_get_unique_flow_tag(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 48);

  return v3;
}

void _nw_path_flow_set_flow_stats_index(char *a1, int a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 49) = a2;
}

uint64_t _nw_path_flow_get_flow_stats_index(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 49);

  return v3;
}

uint64_t _nw_path_flow_set_error(char *a1, uint64_t a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  *(v3 + 11) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void _nw_path_flow_set_protoctl_event_0(char *a1, int a2, int a3, int a4)
{
  v7 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = a1;
  swift_beginAccess();
  *(v7 + 44) = a2;
  v7[180] = 0;

  v9 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v10 = v8;
  swift_beginAccess();
  *(v9 + 46) = a3;

  v11 = &v10[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v12 = v10;
  swift_beginAccess();
  *(v11 + 47) = a4;
}

uint64_t sub_181FB6C8C(char *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v7 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v8 = a1;
  swift_beginAccess();
  v9 = *(v7 + 44);
  v10 = v7[180];

  if ((v10 & 1) == 0)
  {
    if (a2)
    {
      *a2 = v9;
    }

    if (a3)
    {
      v11 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
      v12 = v8;
      swift_beginAccess();
      LODWORD(v11) = *(v11 + 46);

      *a3 = v11;
    }

    if (a4)
    {
      v13 = &v8[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
      v14 = v8;
      swift_beginAccess();
      LODWORD(v13) = *(v13 + 47);

      *a4 = v13;
    }
  }

  return v10 ^ 1u;
}

uint64_t _nw_path_flow_get_nexus_agent_uuid(char *a1, unsigned __int8 *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v6 = *(v3 + 12);
  v5 = *(v3 + 13);
  v7 = *(v3 + 28);
  v8 = v3[116];

  if (v8)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    LOBYTE(v10) = BYTE4(v6);
    BYTE1(v10) = BYTE5(v6);
    BYTE2(v10) = BYTE6(v6);
    BYTE3(v10) = HIBYTE(v6);
    WORD2(v10) = v5;
    BYTE6(v10) = BYTE2(v5);
    HIBYTE(v10) = BYTE3(v5);
    LOBYTE(v11) = BYTE4(v5);
    BYTE1(v11) = BYTE5(v5);
    BYTE2(v11) = BYTE6(v5);
    BYTE3(v11) = HIBYTE(v5);
    HIDWORD(v11) = v7;
  }

  uuid_copy(a2, &v10);
  return v8 ^ 1u;
}

uint64_t _nw_path_flow_get_tfo_cookie_len(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v2 = a1;
  swift_beginAccess();
  v3 = *(v1 + 8);

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v3 + 16);

  if (v4 > 0xFF)
  {
    __break(1u);
LABEL_4:
    LOBYTE(v4) = 0;
  }

  return v4;
}

uint64_t sub_181FB6F4C(char *a1, void *a2, _BYTE *a3)
{
  v5 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v6 = a1;
  swift_beginAccess();
  v7 = *(v5 + 8);

  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8 <= *a3)
    {
      *a3 = v8;
      memcpy(a2, (v7 + 32), v8);

      return 1;
    }

    if (qword_1ED4106B8 != -1)
    {
      swift_once();
    }

    v9 = sub_182AD2698();
    __swift_project_value_buffer(v9, qword_1ED411DA8);

    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777728;
      *(v12 + 4) = *a3;
      *(v12 + 5) = 2048;
      v13 = *(v7 + 16);

      *(v12 + 7) = v13;

      _os_log_impl(&dword_181A37000, v10, v11, "TFO cookie with length %hhu is too small for %ld bytes", v12, 0xFu);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  return 0;
}

char *sub_181FB70FC(char *result, char *a2, unsigned __int8 a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    v12 = MEMORY[0x1E69E7CC0];
    sub_181FB7730(0, a3, 0);
    v6 = *(v12 + 16);
    do
    {
      v8 = *a2++;
      v7 = v8;
      v9 = *(v12 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_181FB7730((v9 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      *(v12 + v6++ + 32) = v7;
      --v5;
    }

    while (v5);
    v10 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v11 = v4;
    swift_beginAccess();
    *(v10 + 21) = v12;
  }

  return result;
}

void sub_181FB720C(char *a1, void *a2)
{
  v3 = &a1[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
  v4 = a1;
  swift_beginAccess();
  v5 = v3 + 80;
  if (!*(v3 + 10))
  {
    *v5 = *sub_182AD2388();
  }

  swift_beginAccess();
  v6 = *(v3 + 10);
  if (!v6)
  {
    swift_endAccess();
LABEL_13:

    return;
  }

  v7 = *(v6 + 24);
  v8 = v7 + 1;
  v9 = __OFADD__(v7, 1);
  v10 = a2;
  if (!v9)
  {
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    if (*(*v5 + 16) < v8 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181ADA6FC(isUniquelyReferenced_nonNull_native, v8, 0);
      v13 = *v5;
    }

    sub_181ADA8CC((v13 + 16), v13 + 40, v11);
    swift_endAccess();

    goto LABEL_13;
  }

  __break(1u);
}

char *sub_181FB7334(char *result, char *a2, unsigned __int8 a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    v12 = MEMORY[0x1E69E7CC0];
    sub_181FB7730(0, a3, 0);
    v6 = *(v12 + 16);
    do
    {
      v8 = *a2++;
      v7 = v8;
      v9 = *(v12 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_181FB7730((v9 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      *(v12 + v6++ + 32) = v7;
      --v5;
    }

    while (v5);
    v10 = &v4[OBJC_IVAR____TtC7Network12__NWPathFlow_flow];
    v11 = v4;
    swift_beginAccess();
    *(v10 + 8) = v12;
  }

  return result;
}

BOOL sub_181FB745C(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    if (a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
      v5 = a1;
      swift_beginAccess();
      v51 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[4];
      v54 = v3[3];
      v55 = v8;
      v52 = v6;
      v53 = v7;
      v9 = v3[5];
      v10 = v3[6];
      v11 = v3[8];
      v58 = v3[7];
      v59 = v11;
      v56 = v9;
      v57 = v10;
      v12 = v3[9];
      v13 = v3[10];
      v14 = v3[11];
      *(v62 + 10) = *(v3 + 186);
      v61 = v13;
      v62[0] = v14;
      v60 = v12;
      sub_181AFE6F4(&v51, v77);

      v49 = v61;
      v50[0] = v62[0];
      *(v50 + 10) = *(v62 + 10);
      v45 = v57;
      v46 = v58;
      v47 = v59;
      v48 = v60;
      v41 = v53;
      v42 = v54;
      v43 = v55;
      v44 = v56;
      v15 = (a2 + OBJC_IVAR____TtC7Network12__NWPathFlow_flow);
      v39 = v51;
      v40 = v52;
      v16 = a2;
      swift_beginAccess();
      v63 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[4];
      v66 = v15[3];
      v67 = v19;
      v64 = v17;
      v65 = v18;
      v20 = v15[5];
      v21 = v15[6];
      v22 = v15[8];
      v70 = v15[7];
      v71 = v22;
      v68 = v20;
      v69 = v21;
      v23 = v15[9];
      v24 = v15[10];
      v25 = v15[11];
      *(v74 + 10) = *(v15 + 186);
      v73 = v24;
      v74[0] = v25;
      v72 = v23;
      sub_181AFE6F4(&v63, v77);

      v37 = v73;
      v38[0] = v74[0];
      *(v38 + 10) = *(v74 + 10);
      v33 = v69;
      v34 = v70;
      v35 = v71;
      v36 = v72;
      v29 = v65;
      v30 = v66;
      v31 = v67;
      v32 = v68;
      v27 = v63;
      v28 = v64;
      v2 = _s7Network8PathFlowV2eeoiySbAC_ACtFZ_0(&v39, &v27);
      v75[10] = v37;
      v76[0] = v38[0];
      *(v76 + 10) = *(v38 + 10);
      v75[6] = v33;
      v75[7] = v34;
      v75[9] = v36;
      v75[8] = v35;
      v75[2] = v29;
      v75[3] = v30;
      v75[4] = v31;
      v75[5] = v32;
      v75[0] = v27;
      v75[1] = v28;
      sub_181AFE6A0(v75);
      v77[10] = v49;
      v78[0] = v50[0];
      *(v78 + 10) = *(v50 + 10);
      v77[6] = v45;
      v77[7] = v46;
      v77[9] = v48;
      v77[8] = v47;
      v77[2] = v41;
      v77[3] = v42;
      v77[5] = v44;
      v77[4] = v43;
      v77[1] = v40;
      v77[0] = v39;
      sub_181AFE6A0(v77);
    }
  }

  return v2;
}

void *sub_181FB76F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB8024(a1, a2, a3, *v3, &qword_1EA838918, &qword_182AE5FE8, &qword_1EA838920, &unk_182AE5FF0);
  *v3 = result;
  return result;
}

char *sub_181FB7730(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7870(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB7750(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7A8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7770(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB7790(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7CD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB77B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7E08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB77D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB7F14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_181FB77F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB8024(a1, a2, a3, *v3, &qword_1EA8388C8, &qword_182AE5F98, &qword_1EA8388D0, &qword_182AE5FA0);
  *v3 = result;
  return result;
}

char *sub_181FB7830(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB8158(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7850(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_181FB8280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_181FB7870(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730, &qword_182AEDF30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_181FB7964(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E80, &qword_182AE8EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181FB7A8C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396D0, &qword_182AECD88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396D8, &unk_182AECD90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7BD0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396C0, &qword_182AECD78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_181FB7CD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396C8, &qword_182AECD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A9B0, qword_182AF9560);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7E08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838928, &qword_182AF9460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB7F14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83B200, &qword_182AFE600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_181FB8024(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_181FB8158(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8388F0, &qword_182AE5FC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_181FB8280(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8396B8, &qword_182AECD70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t ProtocolIdentifier.name.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return sub_181FB86BC(*(v0 + 8));
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProtocolIdentifier.init(name:level:mapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  *a5 = *a3;
  *(a5 + 1) = v8;

  result = sub_181FB974C(a1, a2);
  v10 = result;
  if (result != 39)
  {

    a2 = 0;
    a1 = v10;
  }

  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = v10 == 39;
  return result;
}

uint64_t ProtocolDefinition.protocolOptions()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v4 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for ProtocolOptions(0, v3, v2, v7);
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v13 = *v1;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = sub_181F49A24(v8, v9, v10);
  (*(v2 + 64))(v3, v2, v11);
  return ProtocolOptions.__allocating_init(protocolIdentifier:perProtocolOptions:)(&v13, v6);
}

uint64_t ProtocolDefinition.protocolMetadata(messageIdentifier:)(__int128 *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v15 = *a1;
  type metadata accessor for ProtocolMetadata(0, v5, v4, v9);
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v16 = *v2;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v13 = sub_181F49A24(v10, v11, v12);
  (*(v4 + 88))(v5, v4, v13);
  return sub_181F4A410(&v16, v8, &v15);
}

unint64_t sub_181FB86BC(char a1)
{
  result = 0x66666F5F32706F61;
  switch(a1)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = 0x74656B636F73;
      break;
    case 3:
      result = 0x74656E7265687465;
      break;
    case 4:
      result = 0x746163696C706572;
      break;
    case 5:
      result = 1953719668;
      break;
    case 6:
      result = 0x78756D6564;
      break;
    case 7:
      result = 7365492;
      break;
    case 8:
      result = 7365749;
      break;
    case 9:
      result = 0x64752D7466697773;
      break;
    case 10:
      result = 28777;
      break;
    case 11:
      result = 0x692D6D6F74737563;
      break;
    case 12:
      result = 0x736E617274626577;
      break;
    case 13:
      result = 0x3170747468;
      break;
    case 14:
      result = 0x3270747468;
      break;
    case 15:
      result = 0x3370747468;
      break;
    case 16:
      result = 0x6F6F635F70747468;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0x636E655F70747468;
      break;
    case 20:
      result = 0x6465725F70747468;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x7465725F70747468;
      break;
    case 23:
      result = 0x6365735F70747468;
      break;
    case 24:
      result = 0x696E735F70747468;
      break;
    case 25:
      result = 0x707474686FLL;
      break;
    case 26:
      result = 0x6F632D707474686FLL;
      break;
    case 27:
      result = 0x696C635F70747468;
      break;
    case 28:
      result = 0x696F6A5F70747468;
      break;
    case 29:
      result = 0x73656D5F70747468;
      break;
    case 30:
      result = 0x73656F6873;
      break;
    case 31:
      result = 0x65757173616DLL;
      break;
    case 32:
      result = 0x6C5F65757173616DLL;
      break;
    case 33:
      result = 0x6E6F635F70747468;
      break;
    case 34:
      result = 0x75712D7466697773;
      break;
    case 35:
      result = 1667855729;
      break;
    case 36:
      result = 0x6E6F632D63697571;
      break;
    case 37:
      result = 7564404;
      break;
    case 38:
      result = 1886680168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_181FB8AEC()
{
  v1 = *v0;
  sub_182AD44E8();
  sub_181FB86BC(v1);
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181FB8B50(uint64_t a1)
{
  sub_181FB86BC(*v1);
  sub_182AD30E8();
}

uint64_t sub_181FB8BA4(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  sub_181FB86BC(v2);
  sub_182AD30E8();

  return sub_182AD4558();
}

unint64_t sub_181FB8C04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181FB974C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_181FB8C34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_181FB86BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_181FB8C60()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_182AD44E8();
  if (v2)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v1);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB8D00(uint64_t a1)
{
  v2 = *v1;
  if (v1[2])
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
  }
}

uint64_t sub_181FB8DB0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_182AD44E8();
  if (v3)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB8E4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (a2[2])
    {
      v5 = a1[1];
      if (v3 == v4 && v5 == a2[1])
      {
        return 1;
      }

      else
      {
        return sub_182AD4268();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return (a2[2] & 1) == 0 && v3 == v4;
  }
}

uint64_t ProtocolIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 1);
  v4 = v1[24];
  MEMORY[0x1865DB070](*v1);
  MEMORY[0x1865DB070](v2);
  if (v4)
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v3);
    sub_182AD30E8();
  }
}

uint64_t ProtocolIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = v0[24];
  sub_182AD44E8();
  MEMORY[0x1865DB070](v1);
  MEMORY[0x1865DB070](v2);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v3);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

uint64_t sub_181FB9040(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 1);
  v4 = v1[24];
  MEMORY[0x1865DB070](*v1);
  MEMORY[0x1865DB070](v2);
  if (v4)
  {
    MEMORY[0x1865DB070](1);

    return sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v3);
    sub_182AD30E8();
  }
}

uint64_t sub_181FB9108(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 1);
  v5 = v1[24];
  sub_182AD44E8();
  MEMORY[0x1865DB070](v2);
  MEMORY[0x1865DB070](v3);
  if (v5)
  {
    MEMORY[0x1865DB070](1);
    sub_182AD30E8();
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v4);
    sub_182AD30E8();
  }

  return sub_182AD4558();
}

unint64_t ProtocolDefinition.description.getter()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return sub_181FB86BC(*(v0 + 8));
  }

  v1 = *(v0 + 8);

  return v1;
}

uint64_t ProtocolDefinition.init(identifier:register:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 24);
  v11 = type metadata accessor for ProtocolDefinition(0, a2, a3, a3);
  *(a4 + *(v11 + 44)) = 0;
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  v12 = a4 + *(v11 + 40);
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  return (*(a3 + 56))(a2, a3);
}

uint64_t ProtocolDefinition.init(name:multiplex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ProtocolDefinition(0, a4, a5, a4);
  *(a6 + *(v12 + 44)) = 0;
  v13 = sub_181ADC1F8();
  v14 = a6 + *(v12 + 40);
  *v14 = v13;
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  if (!a2)
  {
    MEMORY[0x1EEE9AC00](v13);
    a1 = sub_182AD30D8();
    a2 = v16;
  }

  v17 = sub_181FB974C(a1, a2);
  if (v17 != 39)
  {

    a2 = 0;
    a1 = v17;
  }

  *a6 = 3;
  *(a6 + 1) = a3 & 1;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = v17 == 39;
  return (*(a5 + 56))(a4, a5);
}

uint64_t static ProtocolDefinition.== infix(_:_:)(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for ProtocolDefinition(0, a3, a4, a4) + 40);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 16);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 16);
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
LABEL_7:
      v19 = 0;
      return v19 & 1;
    }
  }

  else
  {
    v11 = *v9;
    v27 = *v7;
    LOBYTE(v28) = 0;
    if (v10)
    {
      goto LABEL_7;
    }

    v24 = v11;
    if (!_s7Network10SystemUUIDV2eeoiySbAC_ACtFZ_0(&v27, &v24))
    {
      goto LABEL_7;
    }
  }

  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 24);
  LOWORD(v27) = v12;
  *(&v27 + 1) = v13;
  v28 = v14;
  v29 = v15;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  LOWORD(v24) = *a2;
  *(&v24 + 1) = v16;
  v25 = v17;
  v26 = v18;
  v19 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v27, &v24);
  v20 = *(&v24 + 1);
  v21 = v25;
  v22 = v26;
  sub_181F49A24(v13, v14, v15);
  sub_181F49A24(v16, v17, v18);
  sub_181F48350(v20, v21, v22);
  sub_181F48350(*(&v27 + 1), v28, v29);
  return v19 & 1;
}

uint64_t ProtocolDefinition.protocolMetadata(messageIdentifier:)(const unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  v6 = sub_182AD39B8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  if (uuid_is_null(a1) == 1)
  {
    v10 = sub_181ADC1F8();
    v12 = v11;
  }

  else
  {
    v10 = *a1;
    v12 = *(a1 + 1);
  }

  type metadata accessor for ProtocolMetadata(0, v5, v4, v9);
  v13 = *(v2 + 8);
  v14 = *(v2 + 16);
  v15 = *(v2 + 24);
  v19 = *v2;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v16 = sub_181F49A24(v13, v14, v15);
  (*(v4 + 88))(v5, v4, v16);
  *&v18 = v10;
  *(&v18 + 1) = v12;
  return sub_181F4A410(&v19, v8, &v18);
}

unint64_t sub_181FB974C(uint64_t a1, uint64_t a2)
{
  v2 = sub_182AD4398();

  if (v2 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v2;
  }
}

uint64_t _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (a1[24])
  {
    if (!a2[24])
    {
      return 0;
    }

    v7 = *(a1 + 2);
    v8 = v5 == v6 && v7 == *(a2 + 2);
    if (!v8 && (sub_182AD4268() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v6)
    {
      v9 = a2[24];
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_181FB9838()
{
  result = qword_1EA8396E0;
  if (!qword_1EA8396E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396E0);
  }

  return result;
}

unint64_t sub_181FB9890()
{
  result = qword_1EA8396E8;
  if (!qword_1EA8396E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396E8);
  }

  return result;
}

unint64_t sub_181FB98E8()
{
  result = qword_1EA8396F0;
  if (!qword_1EA8396F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8396F0);
  }

  return result;
}

uint64_t sub_181FB9968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_181FB99B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of NetworkProtocol.newPerProtocolOptions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))(a1, a2);
}

{
  return (*(a3 + 80))(a1, a2);
}

uint64_t sub_181FB9A80(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v6 + 25) & ~v6) + v7) & 0xFFFFFFFFFFFFFFF8) + 32;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 25) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v18 + v7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if ((v19 + 1) >= 2)
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

unsigned int *sub_181FB9BDC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v8 + 25) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result + v8 + 25) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (result + v9) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v20 + 24) = 0;
          *(v20 + 24) = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v20 + 24) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v8 + 25) & ~v8) + v9) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v8 + 25) & ~v8) + v9) & 0xFFFFFFFFFFFFFFF8) + 32);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

unint64_t sub_181FB9DD8()
{
  result = qword_1EA839700;
  if (!qword_1EA839700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839700);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProtocolIdentifier.Name.WellKnown(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProtocolIdentifier.Name.WellKnown(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_181FB9F80()
{
  result = qword_1EA839708;
  if (!qword_1EA839708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839708);
  }

  return result;
}

uint64_t NWProtocolQUIC.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = nw_quic_create_options();
  return v0;
}

uint64_t NWProtocolQUIC.Options.__allocating_init(alpn:)(uint64_t a1)
{
  type metadata accessor for NWProtocolQUIC.Options();
  v2 = swift_allocObject();
  *(v2 + 16) = nw_quic_create_options();

  sub_181FBC07C(a1);

  return v2;
}

uint64_t sub_181FBA104(uint64_t a1, __n128 a2)
{
  sub_181FBC07C(a1);
}

uint64_t sub_181FBA13C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = (v1 + 16);
  v3 = *(v0 + 16);
  v7[4] = sub_181FBC0E8;
  v7[5] = v1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_181FBA338;
  v7[3] = &block_descriptor_8;
  v4 = _Block_copy(v7);

  nw_quic_iterate_tls_application_protocols(v3, v4);
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v2;

  return v5;
}

uint64_t sub_181FBA254(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_182AD3158();
    v5 = v4;
    swift_beginAccess();
    v6 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_181E59474(0, *(v6 + 2) + 1, 1, v6);
      *(a2 + 16) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_181E59474((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = v3;
    *(v10 + 5) = v5;
    *(a2 + 16) = v6;
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_181FBA338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  LOBYTE(a2) = v3(a2);

  return a2 & 1;
}

void (*sub_181FBA388(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v6 = (v5 + 16);
  v7 = *(v1 + 16);
  v4[4] = sub_181FBD5E0;
  v4[5] = v5;
  *v4 = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_181FBA338;
  v4[3] = &block_descriptor_5;
  v8 = _Block_copy(v4);

  nw_quic_iterate_tls_application_protocols(v7, v8);
  _Block_release(v8);
  swift_beginAccess();
  v9 = *v6;

  v4[6] = v9;
  return sub_181FBA4E8;
}

void sub_181FBA4E8(void **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 6);
  if (a2)
  {

    sub_181FBC07C(v5);
  }

  else
  {
    sub_181FBC07C(v4);
  }

  free(v3);
}

BOOL sub_181FBA5B0@<W0>(_BYTE *a1@<X8>)
{
  result = nw_quic_get_stream_is_unidirectional(*(v1 + 16));
  *a1 = result;
  return result;
}

void (*sub_181FBA5DC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_quic_get_stream_is_unidirectional(v3);
  return sub_181FBA628;
}

void (*sub_181FBA664(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = nw_quic_get_stream_is_datagram(v3);
  return sub_181FBA6B0;
}

void sub_181FBA6C8(uint64_t a1)
{
  v2 = 0xFFFFFFFFLL;
  if (a1 < 0xFFFFFFFFLL)
  {
    v2 = a1;
  }

  nw_quic_set_idle_timeout(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBA708(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_idle_timeout(v3);
  return sub_181FBA758;
}

void sub_181FBA758(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFFLL)
  {
    v1 = 0xFFFFFFFFLL;
  }

  nw_quic_set_idle_timeout(*(a1 + 8), v1 & ~(v1 >> 63));
}

void sub_181FBA778(uint64_t a1)
{
  v2 = 0xFFFFLL;
  if (a1 < 0xFFFF)
  {
    v2 = a1;
  }

  nw_quic_set_max_udp_payload_size(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBA7B8(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_max_udp_payload_size(v3);
  return sub_181FBA808;
}

void sub_181FBA808(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFF)
  {
    v1 = 0xFFFFLL;
  }

  nw_quic_set_max_udp_payload_size(*(a1 + 8), v1 & ~(v1 >> 63));
}

uint64_t sub_181FBA858(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_data(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA8AC;
  }

  return result;
}

uint64_t sub_181FBA8F4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_bidirectional_remote(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA948;
  }

  return result;
}

uint64_t sub_181FBA990(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_bidirectional_local(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBA9E4;
  }

  return result;
}

uint64_t sub_181FBAA2C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_stream_data_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBAA80;
  }

  return result;
}

uint64_t sub_181FBAAC8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_streams_bidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBAB1C;
  }

  return result;
}

uint64_t sub_181FBAB64(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_initial_max_streams_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBABB8;
  }

  return result;
}

unint64_t *(*sub_181FBAC08(void *a1))(unint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_max_datagram_frame_size(v3);
  return sub_181FBAC58;
}

void *sub_181FBAC70(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(*result >> 16))
  {
    return (a5)(*(*a2 + 16), *result, a3, a4);
  }

  __break(1u);
  return result;
}

unint64_t sub_181FBACB4(unint64_t result, uint64_t (*a2)(void, void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!(result >> 16))
  {
    return a2(*(v2 + 16), result);
  }

  __break(1u);
  return result;
}

unint64_t *(*sub_181FBAD00(void *a1))(unint64_t *a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_initial_packet_size(v3);
  return sub_181FBAD50;
}

unint64_t *sub_181FBAD68(unint64_t *result, char a2, uint64_t (*a3)(unint64_t, void))
{
  v3 = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (!(v3 >> 16))
    {
      return a3(result[1], v3);
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!(v3 >> 16))
  {
    return a3(result[1], v3);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t NWProtocolQUIC.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t NWProtocolQUIC.ApplicationError.reason.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NWProtocolQUIC.ApplicationError.init(integerLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t NWProtocolQUIC.ApplicationError.init(code:reason:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t *sub_181FBAE50@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = v2;
  return result;
}

uint64_t sub_181FBAE68()
{
  v1 = nw_quic_copy_sec_protocol_metadata(*(v0 + 16));
  negotiated_protocol = sec_protocol_metadata_get_negotiated_protocol(v1);
  swift_unknownObjectRelease();
  if (negotiated_protocol)
  {
    return sub_182AD3158();
  }

  else
  {
    return 0;
  }
}

const char *sub_181FBAED8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  application_error = nw_quic_get_application_error(*(*a1 + 16));
  result = nw_quic_get_application_error_reason(*(v3 + 16));
  if (result)
  {
    result = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a2 = application_error;
  a2[1] = result;
  a2[2] = v6;
  return result;
}

uint64_t sub_181FBAF30(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  if (a1[2])
  {
    v4 = (sub_182AD3048() + 32);
  }

  else
  {
    v4 = 0;
  }

  nw_quic_set_application_error(v3, v2, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_181FBAFC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);
  if (a1[2])
  {
    v4 = (sub_182AD3048() + 32);
  }

  else
  {
    v4 = 0;
  }

  nw_quic_set_application_error(v3, v2, v4);

  return swift_unknownObjectRelease();
}

const char *sub_181FBB048@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  application_error = nw_quic_get_application_error(v3);
  result = nw_quic_get_application_error_reason(v3);
  if (result)
  {
    result = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a1 = application_error;
  a1[1] = result;
  a1[2] = v6;
  return result;
}

uint64_t (*sub_181FBB0A0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  a1[3] = v3;
  application_error = nw_quic_get_application_error(v3);
  application_error_reason = nw_quic_get_application_error_reason(v3);
  if (application_error_reason)
  {
    application_error_reason = sub_182AD3158();
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  *a1 = application_error;
  a1[1] = application_error_reason;
  a1[2] = v6;
  return sub_181FBB118;
}

uint64_t sub_181FBB118(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  if (a2)
  {
    if (v4)
    {
      v5 = (sub_182AD3048() + 32);
    }

    else
    {
      v5 = 0;
    }

    v7 = *(a1 + 24);

    nw_quic_set_application_error(v7, v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v4)
    {
      v6 = (sub_182AD3048() + 32);
    }

    else
    {
      v6 = 0;
    }

    nw_quic_set_application_error(*(a1 + 24), v3, v6);
    swift_unknownObjectRelease();
  }
}

void (*sub_181FBB208(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_get_stream_application_error(v3);
  return sub_181FBB254;
}

uint64_t sub_181FBB290(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_local_max_streams_unidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBB2E4;
  }

  return result;
}

uint64_t sub_181FBB344(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  result = nw_quic_get_local_max_streams_bidirectional(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBB398;
  }

  return result;
}

uint64_t (*sub_181FBB418(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v3;
  keepalive_interval = nw_quic_get_keepalive_interval(v3);
  v5 = keepalive_interval;
  if (keepalive_interval)
  {
    v6 = 0;
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  if (keepalive_interval == 0xFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (keepalive_interval == 0xFFFF)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  return sub_181FBB490;
}

void sub_181FBB504(unsigned __int8 *a1)
{
  v2 = *a1;
  *(v1 + 24) = v2;
  nw_quic_stream_set_is_unidirectional(*(v1 + 16), v2);
}

void (*sub_181FBB520(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 24);
  return sub_181FBB54C;
}

void sub_181FBB54C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  *(v1 + 24) = v2;
  nw_quic_stream_set_is_unidirectional(*(v1 + 16), v2);
}

double sub_181FBB560()
{
  v1 = nw_quic_stream_copy_shared_connection_options(*(v0 + 16));
  type metadata accessor for NWProtocolQUICConnection.Options();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = v1;
  return result;
}

double sub_181FBB5B0(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 16) = a1;
  return result;
}

uint64_t NWProtocolQUICStream.Options.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = nw_quic_create_stream_options();
  return v0;
}

uint64_t NWProtocolQUICStream.Options.init()()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = nw_quic_create_stream_options();
  return v0;
}

uint64_t sub_181FBB674(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  return result;
}

uint64_t NWProtocolQUICStream.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*sub_181FBB728(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = nw_quic_stream_get_application_error(v3);
  return sub_181FBB774;
}

void sub_181FBB7A8(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3)
{
  v4 = a2(a1);
  type metadata accessor for NWProtocolDefinition();
  v5 = swift_allocObject();
  v5[4] = v4;
  v6 = [swift_unknownObjectRetain() description];
  swift_unknownObjectRelease();
  v7 = sub_182AD2F88();
  v9 = v8;

  v5[2] = v7;
  v5[3] = v9;
  *a3 = v5;
}

void sub_181FBB870(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = 0xFFFFFFFFLL;
  if (a1 < 0xFFFFFFFFLL)
  {
    v2 = a1;
  }

  nw_quic_connection_set_idle_timeout(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBB89C(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return sub_181FBB8C4;
}

void sub_181FBB8C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(v1 + 24) = *a1;
  v3 = *(v1 + 16);
  v4 = 0xFFFFFFFFLL;
  if (v2 < 0xFFFFFFFFLL)
  {
    v4 = v2;
  }

  nw_quic_connection_set_idle_timeout(v3, v4 & ~(v4 >> 63));
}

void sub_181FBB8E8(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = 0xFFFFLL;
  if (a1 < 0xFFFF)
  {
    v2 = a1;
  }

  nw_quic_connection_set_max_udp_payload_size(*(v1 + 16), v2 & ~(v2 >> 63));
}

void (*sub_181FBB914(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 32);
  a1[1] = v1;
  return sub_181FBB93C;
}

void sub_181FBB93C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(v1 + 32) = *a1;
  v3 = *(v1 + 16);
  v4 = 0xFFFFLL;
  if (v2 < 0xFFFF)
  {
    v4 = v2;
  }

  nw_quic_connection_set_max_udp_payload_size(v3, v4 & ~(v4 >> 63));
}

void sub_181FBB960(uint64_t result)
{
  *(v1 + 40) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_data(*(v1 + 16), result);
  }
}

void (*sub_181FBB980(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;
  return sub_181FBB9A8;
}

void sub_181FBB9A8(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  *(v4 + 40) = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_data(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBB9D0(uint64_t result)
{
  *(v1 + 48) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v1 + 16), result);
  }
}

void (*sub_181FBB9F0(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 48);
  a1[1] = v1;
  return sub_181FBBA18;
}

void sub_181FBBA18(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  *(v4 + 48) = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBA40(uint64_t result)
{
  *(v1 + 56) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v1 + 16), result);
  }
}

void (*sub_181FBBA60(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 56);
  a1[1] = v1;
  return sub_181FBBA88;
}

void sub_181FBBA88(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  *(v4 + 56) = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_bidirectional_local(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBAB0(uint64_t result)
{
  *(v1 + 64) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v1 + 16), result);
  }
}

void (*sub_181FBBAD0(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;
  return sub_181FBBAF8;
}

void sub_181FBBAF8(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  *(v4 + 64) = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_stream_data_unidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBB20(uint64_t a1)
{
  *(v1 + 72) = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_bidirectional(*(v1 + 16), a1);
  }
}

void (*sub_181FBBB40(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 72);
  a1[1] = v1;
  return sub_181FBBB68;
}

void sub_181FBBB68(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[1];
  *(v4 + 72) = *a1;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_streams_bidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

void sub_181FBBB90(uint64_t result)
{
  *(v1 + 80) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    nw_quic_connection_set_initial_max_streams_unidirectional(*(v1 + 16), result);
  }
}

void (*sub_181FBBBB0(void *a1))(uint64_t *result, char a2)
{
  *a1 = *(v1 + 80);
  a1[1] = v1;
  return sub_181FBBBD8;
}

void sub_181FBBBD8(uint64_t *result, char a2)
{
  v3 = *result;
  v4 = result[1];
  *(v4 + 80) = *result;
  if (a2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
LABEL_5:
      nw_quic_connection_set_initial_max_streams_unidirectional(*(v4 + 16), v3);
      return;
    }

    __break(1u);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t NWProtocolQUICConnection.Options.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_181FBBC68()
{
  result = nw_quic_connection_copy_stream_metadata(*(v0 + 16));
  if (result)
  {
    v2 = result;
    type metadata accessor for NWProtocolQUICConnection.Metadata();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  return result;
}

unint64_t sub_181FBBCD8(unint64_t *a1)
{
  a1[1] = *(v1 + 16);
  result = nw_quic_connection_get_max_streams_unidirectional();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBBD2C;
  }

  return result;
}

unint64_t sub_181FBBD74(unint64_t *a1)
{
  a1[1] = *(v1 + 16);
  result = nw_quic_connection_get_max_streams_bidirectional();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = result;
    return sub_181FBBDC8;
  }

  return result;
}

uint64_t *sub_181FBBDE0(uint64_t *result, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *result;
  if (a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      return a3(result[1]);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    return a3(result[1]);
  }

  __break(1u);
  return result;
}

uint64_t sub_181FBBE20(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181FBBE6C(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2(*(v2 + 16), result);
  }

  __break(1u);
  return result;
}

uint64_t sub_181FBBEA0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  result = a1(*(v2 + 16));
  v5 = result;
  if (result == 0xFFFF)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (result)
  {
    v7 = v6;
  }

  else
  {
    v5 = 1;
    v7 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_181FBBF18(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *result;
  if (*(result + 8) == 1)
  {
    v4 = *(v2 + 16);
    if (v3)
    {
      return a2(v4, 0);
    }

    else
    {
      return a2(v4, 0xFFFFLL);
    }
  }

  else if (v3 >= 0xFFFF)
  {
    return a2(*(v2 + 16), 65534);
  }

  else if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    return a2(*(v2 + 16), *result);
  }

  return result;
}

uint64_t (*sub_181FBBF80(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v3 = *(v1 + 16);
  *(a1 + 16) = v3;
  keepalive = nw_quic_connection_get_keepalive(v3);
  v5 = keepalive;
  if (keepalive)
  {
    v6 = 0;
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  if (keepalive == 0xFFFF)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (keepalive == 0xFFFF)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  return sub_181FBBFF8;
}

uint64_t sub_181FBC010(uint64_t result, char a2, uint64_t (*a3)(void, void))
{
  v3 = *result;
  v4 = *(result + 8);
  if (a2)
  {
    if (*(result + 8))
    {
      goto LABEL_7;
    }

    v4 = 0xFFFF;
    if (v3 >= 0xFFFF)
    {
      v5 = -2;
      return a3(*(result + 16), v5);
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }

    return a3(*(result + 16), v5);
  }

  v5 = -2;
  if (v3 > 65534)
  {
    return a3(*(result + 16), v5);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
LABEL_12:
    v5 = v3;
    return a3(*(result + 16), v5);
  }

  __break(1u);
  return result;
}

void sub_181FBC07C(uint64_t a1)
{
  v3 = *(v1 + 16);
  nw_quic_clear_tls_application_protocols(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 40;
    do
    {
      v6 = sub_182AD3048();
      nw_quic_add_tls_application_protocol(v3, (v6 + 32));

      v5 += 16;
      --v4;
    }

    while (v4);
  }
}

unint64_t sub_181FBC13C()
{
  result = qword_1EA839728;
  if (!qword_1EA839728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839728);
  }

  return result;
}

unint64_t sub_181FBC1A0()
{
  result = qword_1EA839730;
  if (!qword_1EA839730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839730);
  }

  return result;
}

uint64_t keypath_get_32Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*(*a1 + 16));
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

void *keypath_set_33Tm(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((*result & 0x8000000000000000) == 0)
  {
    return a5(*(*a2 + 16));
  }

  __break(1u);
  return result;
}

uint64_t keypath_get_56Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*(*a1 + 16));
  if (result)
  {
    if (result == 0xFFFF)
    {
      v5 = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      v5 = result;
    }
  }

  else
  {
    v5 = 1;
    v6 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t keypath_set_57Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t sub_181FBD5F8()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA836B70);
  v1 = __swift_project_value_buffer(v0, qword_1EA836B70);
  if (qword_1EA836BD0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EA8431B0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_181FBD6C0()
{
  v0 = sub_182AD2698();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD2618();
  __swift_allocate_value_buffer(v4, qword_1EA839738);
  __swift_project_value_buffer(v4, qword_1EA839738);
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EA836B70);
  (*(v1 + 16))(v3, v5, v0);
  return sub_182AD25F8();
}

uint64_t sub_181FBD7FC(uint64_t a1)
{
  type metadata accessor for NWActorSystem();
  v1 = swift_allocObject();
  result = NWActorSystem.init()();
  qword_1EA839750 = v1;
  return result;
}

uint64_t NWActorSystem.__allocating_init()()
{
  v0 = swift_allocObject();
  NWActorSystem.init()();
  return v0;
}

uint64_t NWActorSystem.disableCompression.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_181FBD958()
{
  v1 = type metadata accessor for NWActorSystem.ServerRole(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(v0, v3, type metadata accessor for NWActorSystem.ServerRole);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798, &qword_182AED578) + 48);
    v5 = 0x6E616D6564206E6FLL;
  }

  else
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788, &qword_182AED558) + 48);
    v8 = 0;
    v9 = 0xE000000000000000;
    v7[0] = *v3;
    MEMORY[0x1865D9CA0](0x6F74656C676E6973, 0xEB0000000028206ELL);
    v7[1] = v7[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8, &qword_182AED8E0);
    sub_182AD3E18();
    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v5 = v8;
  }

  sub_181F49A88(v3 + v4, &unk_1EA8397E0, qword_182AED8E8);
  return v5;
}

uint64_t static NWActorSystem.remoteCallActivity.getter()
{
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  sub_182AD46C8();
  return v1;
}

uint64_t NWActorSystem.listener.getter()
{
  v1 = *(v0 + 144);
  os_unfair_lock_lock(v1 + 4);
  sub_181FCCB84(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_181FBDC34(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  swift_allocObject();
  result = sub_182AD46B8();
  *a4 = result;
  return result;
}

uint64_t NWActorSystem.init()()
{
  v10[0] = sub_182AD3918();
  v1 = *(v10[0] - 8);
  MEMORY[0x1EEE9AC00](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770, &qword_182AF9950);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC8];
  *(v6 + 16) = 0;
  *(v0 + 144) = v6;
  *(v0 + 152) = v7;
  *(v0 + 160) = v7;
  *(v0 + 168) = v7;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = MEMORY[0x1E69E7CC0];
  *(v0 + 200) = v7;
  *(v0 + 208) = v7;
  sub_181AA2FA8();
  sub_182AD27B8();
  v10[1] = v8;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70, &unk_182AE9650);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v10[0]);
  *(v0 + 216) = sub_182AD3938();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0x8000000000000000;
  return v0;
}

double sub_181FBDF38@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 176);

  return result;
}

uint64_t NWActorSystem.__allocating_init(service:parameters:)(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NWActorSystem.init(service:parameters:)(a1, a2);
  return v4;
}

uint64_t NWActorSystem.init(service:parameters:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  v49 = sub_182AD3918();
  v5 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v42 = *a1;
  v10 = *(a1 + 1);
  v47 = *(a1 + 3);
  v48 = v10;
  v45 = *(a1 + 7);
  v46 = *(a1 + 5);
  v43 = *(a1 + 11);
  v44 = *(a1 + 9);
  v41 = *(a1 + 106);
  v40 = *(a1 + 52);
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770, &qword_182AF9950);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC8];
  *(v11 + 16) = 0;
  *(v2 + 144) = v11;
  *(v2 + 152) = v12;
  *(v2 + 160) = v12;
  *(v2 + 168) = v12;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + 192) = MEMORY[0x1E69E7CC0];
  *(v2 + 200) = v12;
  *(v2 + 208) = v12;
  sub_181AA2FA8();
  sub_182AD27B8();
  aBlock[0] = v13;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70, &unk_182AE9650);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v49);
  *(v2 + 216) = sub_182AD3938();
  v14 = *(v50 + 16);
  os_unfair_lock_lock((v14 + 24));
  v15 = nw_parameters_copy(*(v14 + 16));
  type metadata accessor for NWParameters();
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  v18 = (v17 + 24);
  *(v17 + 16) = v15;
  v49 = v16;
  *(v16 + 16) = v17;
  os_unfair_lock_unlock((v14 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v19 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v20 = swift_allocObject();
  *(v20 + 16) = nw_framer_create_options(*(v19 + 32));
  os_unfair_lock_lock(v18);
  v21 = nw_parameters_copy_default_protocol_stack(*(v17 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780, &qword_182AED530);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v23 = (inited + 24);
  *(inited + 16) = v21;
  v24 = (inited + 16);
  os_unfair_lock_unlock(v18);
  os_unfair_lock_lock(v23);
  v52 = MEMORY[0x1E69E7CC0];
  v25 = swift_allocObject();
  *(v25 + 16) = &v52;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_181EC65E4;
  *(v26 + 24) = v25;
  aBlock[4] = sub_181EC63B0;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_9;
  v27 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v21, v27);
  _Block_release(v27);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v23);
    aBlock[0] = v52;
    if (!(v52 >> 62))
    {
      goto LABEL_5;
    }
  }

  if ((sub_182AD3EB8() & 0x8000000000000000) == 0)
  {
LABEL_5:

    sub_181FCCE80(0, 0, v20, sub_18206A4F8);

    v29 = aBlock[0];
    MEMORY[0x1EEE9AC00](v28);
    *(&v40 - 2) = v29;
    os_unfair_lock_lock(v23);
    sub_181C2D914(v24);
    os_unfair_lock_unlock(v23);

    if (qword_1EA836B68 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v30 = v40 | (v41 << 16);
  v31 = sub_182AD2698();
  __swift_project_value_buffer(v31, qword_1EA836B70);
  v32 = sub_182AD2678();
  v33 = sub_182AD38A8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_181A37000, v32, v33, "Inserted Actor WireProtocol framer", v34, 2u);
    MEMORY[0x1865DF520](v34, -1, -1);
  }

  *(v3 + 24) = v42 & 0xFFFFFFFFFFFFFF9;
  v35 = v49 & 0xFFFFFFFFFFFFFF8;
  v36 = v47;
  *(v3 + 32) = v48;
  *(v3 + 48) = v36;
  v37 = v45;
  *(v3 + 64) = v46;
  *(v3 + 80) = v37;
  v38 = v43;
  *(v3 + 96) = v44;
  *(v3 + 112) = v38;
  *(v3 + 128) = *&v30 & 0xFFFF01;
  *(v3 + 136) = v35;
  return v3;
}

uint64_t NWActorSystem.__allocating_init(parameters:)(uint64_t a1)
{
  v2 = swift_allocObject();
  NWActorSystem.init(parameters:)(a1);
  return v2;
}

uint64_t NWActorSystem.init(parameters:)(uint64_t a1)
{
  v2 = v1;
  v33 = a1;
  v32 = sub_182AD3918();
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839770, &qword_182AF9950);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC8];
  *(v8 + 16) = 0;
  *(v1 + 144) = v8;
  *(v1 + 152) = v9;
  *(v1 + 160) = v9;
  *(v1 + 168) = v9;
  *(v1 + 176) = 0;
  *(v1 + 184) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *(v1 + 200) = v9;
  *(v1 + 208) = v9;
  sub_181AA2FA8();
  sub_182AD27B8();
  aBlock[0] = v10;
  sub_181FCE110(&unk_1EA836B40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70, &unk_182AE9650);
  sub_181FCCB9C();
  sub_182AD3AC8();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v32);
  *(v1 + 216) = sub_182AD3938();
  v11 = *(v33 + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = nw_parameters_copy(*(v11 + 16));
  type metadata accessor for NWParameters();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  v15 = (v14 + 24);
  *(v14 + 16) = v12;
  v32 = v13;
  *(v13 + 16) = v14;
  os_unfair_lock_unlock((v11 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v17 = swift_allocObject();
  *(v17 + 16) = nw_framer_create_options(*(v16 + 32));
  os_unfair_lock_lock(v15);
  v18 = nw_parameters_copy_default_protocol_stack(*(v14 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780, &qword_182AED530);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v20 = (inited + 24);
  *(inited + 16) = v18;
  v21 = (inited + 16);
  os_unfair_lock_unlock(v15);
  os_unfair_lock_lock(v20);
  v35 = MEMORY[0x1E69E7CC0];
  v22 = swift_allocObject();
  *(v22 + 16) = &v35;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_181EC65EC;
  *(v23 + 24) = v22;
  aBlock[4] = sub_181FCE6B4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181EC635C;
  aBlock[3] = &block_descriptor_14;
  v24 = _Block_copy(aBlock);

  nw_protocol_stack_iterate_application_protocols(v18, v24);
  _Block_release(v24);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v20);
    aBlock[0] = v35;
    if (!(v35 >> 62))
    {
      goto LABEL_5;
    }
  }

  if ((sub_182AD3EB8() & 0x8000000000000000) == 0)
  {
LABEL_5:

    sub_181FCCE80(0, 0, v17, sub_18206A4F8);

    v26 = aBlock[0];
    MEMORY[0x1EEE9AC00](v25);
    *(&v32 - 2) = v26;
    os_unfair_lock_lock(v20);
    sub_181C4E3C0(v21);
    os_unfair_lock_unlock(v20);

    if (qword_1EA836B68 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v27 = sub_182AD2698();
  __swift_project_value_buffer(v27, qword_1EA836B70);
  v28 = sub_182AD2678();
  v29 = sub_182AD38A8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_181A37000, v28, v29, "Inserted Actor WireProtocol framer", v30, 2u);
    MEMORY[0x1865DF520](v30, -1, -1);
  }

  *(v2 + 24) = v32 & 0xFFFFFFFFFFFFFF9;
  *(v2 + 128) = xmmword_182AED500;
  return v2;
}

uint64_t NWActorSystem.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_181FBEDA0, 0, 0);
}

uint64_t sub_181FBEDA0()
{
  v12 = *(v0 + 32);
  *(v0 + 16) = v12;
  v1 = *(v0 + 24);
  swift_getMetatypeMetadata();
  v2 = sub_182AD3018();
  v4 = v3;
  *(v0 + 56) = v3;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *(v5 + 16) = v12;
  *(v5 + 32) = v1;
  sub_181FBF788();
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v7[2] = sub_181FCCF80;
  v7[3] = v5;
  v7[4] = v6;
  v7[5] = v2;
  v7[6] = v4;
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_181FBEF84;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v9, &unk_182AED548, v7, sub_181FCD054, v8, 0, 0, v10);
}

uint64_t sub_181FBEF84()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_181FBF120;
  }

  else
  {

    v2 = sub_181FBF0BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBF0BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBF120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBF1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788, &qword_182AED558) + 48);
  v9 = *(a3 + 8);
  *a4 = a2;
  *(a4 + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a4[v8], a1, v10);
  (*(v11 + 56))(&a4[v8], 0, 1, v10);
  type metadata accessor for NWActorSystem.ServerRole(0);
  swift_storeEnumTagMultiPayload();

  return swift_unknownObjectRetain();
}

uint64_t NWActorSystem.publishAndWaitForReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for NWActorSystem.ServerRole(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FBF340, 0, 0);
}

uint64_t sub_181FBF340()
{
  v0[2] = v0[4];
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  swift_getMetatypeMetadata();
  v5 = sub_182AD3018();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788, &qword_182AED558) + 48);
  v9 = *(v3 + 8);
  *v1 = v4;
  *(v1 + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  (*(*(v10 - 8) + 56))(&v1[v8], 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v2 + 144);
  v12 = swift_task_alloc();
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v1;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_181FCD0AC;
  *(v13 + 24) = v12;
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v11 + 4);
  sub_181FCD0CC();
  v14 = v0[8];
  os_unfair_lock_unlock(v11 + 4);

  sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);

  sub_181FBF788();
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_181FBF610;
  v16 = v0[6];
  v17 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD00000000000001ALL, 0x8000000182BD6A20, sub_181FCD0F4, v16, v17);
}

uint64_t sub_181FBF610()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_181FBF724;
  }

  else
  {
    v2 = sub_181FBF0BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBF724()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_181FBF788()
{
  v2 = v0;
  v3 = *(v0 + 144);
  os_unfair_lock_lock(v3 + 4);
  sub_181FCE618(&v12);
  os_unfair_lock_unlock(v3 + 4);
  if (!v1 && v12)
  {
    if (qword_1EA836B68 != -1)
    {
      swift_once();
    }

    v4 = sub_182AD2698();
    __swift_project_value_buffer(v4, qword_1EA836B70);

    v5 = sub_182AD2678();
    v6 = sub_182AD38D8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for NWListener();

      v9 = sub_182AD3038();
      v11 = sub_181C64FFC(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_181A37000, v5, v6, "Starting listener: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1865DF520](v8, -1, -1);
      MEMORY[0x1865DF520](v7, -1, -1);
    }

    NWListener.start(queue:)(*(v2 + 216));
  }
}

uint64_t sub_181FBF974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0, qword_182AED8E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = *(a2 + 144);
  v18 = a2;
  v19 = a1;
  v15 = sub_181FCE600;
  v16 = &v17;
  os_unfair_lock_lock(v10 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v10 + 4);
  sub_181AB5D28(v9, v6, &unk_1EA8397E0, qword_182AED8E8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_181F49A88(v9, &unk_1EA8397E0, qword_182AED8E8);
    return sub_181F49A88(v6, &unk_1EA8397E0, qword_182AED8E8);
  }

  else
  {
    sub_182AD34C8();
    sub_181F49A88(v9, &unk_1EA8397E0, qword_182AED8E8);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t NWActorSystem.publish<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FBFB84, 0, 0);
}

uint64_t sub_181FBFB84()
{
  v12 = *(v0 + 40);
  *(v0 + 16) = v12;
  swift_getMetatypeMetadata();
  v11 = *(v0 + 24);
  v1 = sub_182AD3018();
  v3 = v2;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v12;
  *(v4 + 32) = v11;
  sub_181FBF788();
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v6[2] = sub_181FCD0FC;
  v6[3] = v4;
  v6[4] = v5;
  v6[5] = v1;
  v6[6] = v3;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 96) = v8;
  *v8 = v0;
  v8[1] = sub_181FBFD68;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_182AED568, v6, sub_181FCE6B8, v7, 0, 0, v9);
}

uint64_t sub_181FBFD68()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_181FBFF04;
  }

  else
  {

    v2 = sub_181FBFEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FBFEA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FBFF04()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_181FBFF84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798, &qword_182AED578) + 48);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  *a6 = sub_181FCE680;
  *(a6 + 1) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&a6[v12], a1, v14);
  (*(v15 + 56))(&a6[v12], 0, 1, v14);
  type metadata accessor for NWActorSystem.ServerRole(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t NWActorSystem.publishAndWaitForReady<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = type metadata accessor for NWActorSystem.ServerRole(0);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC0160, 0, 0);
}

uint64_t sub_181FC0160()
{
  v19 = *(v0 + 40);
  *(v0 + 16) = v19;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  swift_getMetatypeMetadata();
  v5 = sub_182AD3018();
  v7 = v6;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798, &qword_182AED578) + 48);
  v9 = swift_allocObject();
  *(v9 + 16) = v19;
  *(v9 + 32) = v4;
  *(v9 + 40) = v3;
  *v1 = sub_181FCD108;
  *(v1 + 1) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  (*(*(v10 - 8) + 56))(&v1[v8], 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  v11 = *(v2 + 144);
  v12 = swift_task_alloc();
  v12[2] = v2;
  v12[3] = v5;
  v12[4] = v7;
  v12[5] = v1;
  v13 = swift_task_alloc();
  *(v13 + 16) = sub_181FCE5B4;
  *(v13 + 24) = v12;

  os_unfair_lock_lock(v11 + 4);
  sub_181FCE69C();
  v14 = *(v0 + 72);
  os_unfair_lock_unlock(v11 + 4);

  sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);

  sub_181FBF788();
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_181FC0464;
  v16 = *(v0 + 56);
  v17 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD00000000000001ALL, 0x8000000182BD6A20, sub_181FCD10C, v16, v17);
}

uint64_t sub_181FC0464()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_181FC0578;
  }

  else
  {
    v2 = sub_181FBFEA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC0578()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC05DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0, qword_182AED8E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = *(a2 + 144);
  v18 = a2;
  v19 = a1;
  v15 = sub_181FCE390;
  v16 = &v17;
  os_unfair_lock_lock(v10 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v10 + 4);
  sub_181AB5D28(v9, v6, &unk_1EA8397E0, qword_182AED8E8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_181F49A88(v9, &unk_1EA8397E0, qword_182AED8E8);
    return sub_181F49A88(v6, &unk_1EA8397E0, qword_182AED8E8);
  }

  else
  {
    sub_182AD34C8();
    sub_181F49A88(v9, &unk_1EA8397E0, qword_182AED8E8);
    return (*(v12 + 8))(v6, v11);
  }
}

uint64_t sub_181FC07C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *(v7 + 16);
  if (*(a1 + 184) == 1)
  {
    v11(a3, a2, v6, v8);
    return (*(v7 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v11(v10, a2, v6, v8);
    v13 = *(a1 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 192) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_181F5A458(0, v13[2] + 1, 1, v13);
      *(a1 + 192) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_181F5A458((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v10, v6);
    *(a1 + 192) = v13;
    return (*(v7 + 56))(a3, 1, 1, v6);
  }
}

uint64_t NWActorSystem.invalidateActor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[1] = a1;
  sub_182AD3BD8();
  NWActorSystem.resignID(_:)(v6);
  return sub_181FCE158(v6, type metadata accessor for NWActorID);
}

uint64_t NWActorSystem.resignID(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA836B70);
  sub_181FCDFD4(a1, v6, type metadata accessor for NWActorID);
  v8 = sub_182AD2678();
  v9 = sub_182AD38D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *&v27 = 0;
    *v10 = 136315138;
    *(&v27 + 1) = 0xE000000000000000;
    sub_182AD3BA8();

    *&v27 = 0x49726F746341574ELL;
    *(&v27 + 1) = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v6, v6[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v12);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v13 = v27;
    sub_181FCE158(v6, type metadata accessor for NWActorID);
    v14 = sub_181C64FFC(v13, *(&v13 + 1), &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "Resign actor: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  else
  {

    v15 = sub_181FCE158(v6, type metadata accessor for NWActorID);
  }

  v16 = *(v2 + 144);
  MEMORY[0x1EEE9AC00](v15);
  *(&v26 - 2) = v2;
  *(&v26 - 1) = a1;
  MEMORY[0x1EEE9AC00](v17);
  *(&v26 - 2) = sub_181FCD114;
  *(&v26 - 1) = v18;
  os_unfair_lock_lock(v16 + 4);
  sub_181FCE618(&v27);
  os_unfair_lock_unlock(v16 + 4);
  if (v27)
  {

    sub_18214FECC();
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v26 - 2) = v2;
  *(&v26 - 1) = a1;
  MEMORY[0x1EEE9AC00](v20);
  *(&v26 - 2) = sub_181FCE5D0;
  *(&v26 - 1) = v21;
  os_unfair_lock_lock(v16 + 4);
  sub_181FCD130(&v27);
  os_unfair_lock_unlock(v16 + 4);
  v22 = v27;
  if (v27)
  {
    v23 = *(&v27 + 1);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v23;
    *&v27 = 0;
    sub_181AA39C0(v22, v23);

    v22(&v27);

    sub_181A554F4(v22, v23);
    v22 = sub_181FCD148;
  }

  else
  {
    v24 = 0;
  }

  sub_181FC1468(*a1, a1[1], 0);
  sub_181A554F4(v22, v24);
}

uint64_t sub_181FC0EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_181FC0F20, 0, 0);
}

uint64_t sub_181FC0F20()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_181FC1030;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000027, 0x8000000182BD6C90, sub_181FCE3DC, v2, v5);
}

uint64_t sub_181FC1030()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FC116C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_181FC116C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC11D0(uint64_t a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for NWActorSystem.ServerRole(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  a2(a1, v12);
  v15 = *(a4 + 144);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = v14;
  v18 = sub_181FCE5B4;
  v19 = &v20;
  os_unfair_lock_lock(v15 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v15 + 4);
  return sub_181FCE158(v14, type metadata accessor for NWActorSystem.ServerRole);
}

void sub_181FC1300(uint64_t a1, unint64_t a2)
{
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1EA836B70);

  v5 = sub_182AD2678();
  v6 = sub_182AD38D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_181C64FFC(a1, a2, &v9);
    _os_log_impl(&dword_181A37000, v5, v6, "Publish task was canceled for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  sub_181FC1468(a1, a2, 0);
}

void sub_181FC1468(uint64_t a1, unint64_t a2, void *a3)
{
  v76 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v75 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8397E0, qword_182AED8E8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v66 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839830, &qword_182AED960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for NWActorSystem.ServerRole(0);
  v71 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v66 - v22;
  if (qword_1EA836B68 != -1)
  {
    v65 = v21;
    swift_once();
    v21 = v65;
  }

  v72 = v21;
  v23 = sub_182AD2698();
  v24 = __swift_project_value_buffer(v23, qword_1EA836B70);

  v74 = v24;
  v25 = sub_182AD2678();
  v26 = sub_182AD38D8();

  v27 = os_log_type_enabled(v25, v26);
  v70 = v12;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v78[0] = v29;
    *v28 = 136315138;
    v30 = v76;
    *(v28 + 4) = sub_181C64FFC(v76, a2, v78);
    _os_log_impl(&dword_181A37000, v25, v26, "Cleaning up server for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v28, -1, -1);
  }

  else
  {

    v30 = v76;
  }

  v32 = *(v77 + 144);
  MEMORY[0x1EEE9AC00](v31);
  *(&v66 - 4) = v33;
  *(&v66 - 3) = v30;
  v68 = a2;
  *(&v66 - 2) = a2;
  MEMORY[0x1EEE9AC00](v34);
  *(&v66 - 2) = sub_181FCE1FC;
  *(&v66 - 1) = v35;
  os_unfair_lock_lock(v32 + 4);
  sub_181FCD0CC();
  os_unfair_lock_unlock(v32 + 4);
  if ((*(v71 + 48))(v17, 1, v72) != 1)
  {
    v41 = v73;
    sub_181FCE30C(v17, v73, type metadata accessor for NWActorSystem.ServerRole);
    v42 = v41;
    v43 = v67;
    sub_181FCDFD4(v42, v67, type metadata accessor for NWActorSystem.ServerRole);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v44 = &qword_1EA839798;
      v45 = &qword_182AED578;
    }

    else
    {
      swift_unknownObjectRelease();
      v44 = &qword_1EA839788;
      v45 = &qword_182AED558;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    v47 = v69;
    v48 = v70;
    v49 = v43;
    v50 = v76;
    v40 = v77;
    sub_181B7D08C(v49 + *(v46 + 48), v69, &unk_1EA8397E0, qword_182AED8E8);
    sub_181FCC120(v50, v68);
    v51 = (v75 + 48);
    if (a3)
    {
      sub_181AB5D28(v47, v48, &unk_1EA8397E0, qword_182AED8E8);
      if ((*v51)(v48, 1, v5) != 1)
      {
        v78[0] = a3;
        v52 = a3;
        sub_182AD34B8();
LABEL_19:
        sub_181F49A88(v47, &unk_1EA8397E0, qword_182AED8E8);
        sub_181FCE158(v73, type metadata accessor for NWActorSystem.ServerRole);
        v39 = (*(v75 + 8))(v48, v5);
        goto LABEL_20;
      }
    }

    else
    {
      v48 = v66;
      sub_181AB5D28(v47, v66, &unk_1EA8397E0, qword_182AED8E8);
      if ((*v51)(v48, 1, v5) != 1)
      {
        sub_182AD34C8();
        goto LABEL_19;
      }
    }

    sub_181F49A88(v47, &unk_1EA8397E0, qword_182AED8E8);
    sub_181FCE158(v73, type metadata accessor for NWActorSystem.ServerRole);
    v39 = sub_181F49A88(v48, &unk_1EA8397E0, qword_182AED8E8);
    goto LABEL_20;
  }

  sub_181F49A88(v17, &qword_1EA839830, &qword_182AED960);
  v36 = sub_182AD2678();
  v37 = sub_182AD38B8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_181A37000, v36, v37, "Attempting to clean up for untracked actor", v38, 2u);
    MEMORY[0x1865DF520](v38, -1, -1);
  }

  v40 = v77;
LABEL_20:
  MEMORY[0x1EEE9AC00](v39);
  *(&v66 - 2) = sub_181FCE21C;
  *(&v66 - 1) = v40;
  os_unfair_lock_lock(v32 + 4);
  sub_181FCE274(v78);
  os_unfair_lock_unlock(v32 + 4);
  if (LOBYTE(v78[0]) == 1)
  {
    v53 = sub_182AD2678();
    v54 = sub_182AD38D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_181A37000, v53, v54, "No more actors published, canceling listener", v55, 2u);
      MEMORY[0x1865DF520](v55, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v56);
    *(&v66 - 2) = sub_181FCE290;
    *(&v66 - 1) = v40;
    os_unfair_lock_lock(v32 + 4);
    sub_181FCE618(v78);
    os_unfair_lock_unlock(v32 + 4);
    v58 = v78[0];
    if (v78[0])
    {
      nw_listener_cancel(*(v78[0] + 24));
    }

    MEMORY[0x1EEE9AC00](v57);
    *(&v66 - 2) = sub_181FCE2A4;
    *(&v66 - 1) = v40;
    os_unfair_lock_lock(v32 + 4);
    sub_181FCE618(v78);
    os_unfair_lock_unlock(v32 + 4);
    v59 = *(v78[0] + 16);
    if (v59)
    {
      v76 = v78[0];
      v77 = v58;
      v60 = *(v75 + 16);
      v61 = v78[0] + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v62 = *(v75 + 72);
      v63 = (v75 + 8);
      v60(v7, v61, v5);
      while (1)
      {
        if (a3)
        {
          v78[0] = a3;
          v64 = a3;
          sub_182AD34B8();
        }

        else
        {
          sub_182AD34C8();
        }

        (*v63)(v7, v5);
        v61 += v62;
        if (!--v59)
        {
          break;
        }

        v60(v7, v61, v5);
      }
    }
  }
}

void NWActorSystem.endpoint<A>(for:)(uint64_t a1@<X8>)
{
  v4 = *(v1 + 144);
  os_unfair_lock_lock(v4 + 4);
  sub_181FCE618(&v7);
  if (v2)
  {
    os_unfair_lock_unlock(v4 + 4);
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v4 + 4);
    if (v7)
    {
      v5 = *(v7 + 16);

      sub_181FCDFD4(v5 + OBJC_IVAR____TtC7Network13_NWConnection_endpoint, a1, type metadata accessor for NWEndpoint);
    }

    else
    {
      sub_181FCD1A0();
      swift_allocError();
      *v6 = xmmword_182AED510;
      *(v6 + 16) = 0xB000000000000000;
      swift_willThrow();
    }
  }
}

uint64_t sub_181FC1EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v8 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14[1] = a2;
  sub_182AD3BD8();
  swift_beginAccess();
  if (*(*(a1 + 200) + 16) && (sub_18224F288(v10), (v11 & 1) != 0))
  {
  }

  else
  {
    v12 = 0;
  }

  *a5 = v12;
  swift_endAccess();
  return sub_181FCE158(v10, type metadata accessor for NWActorID);
}

void NWActorSystem.resolve<A>(id:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v35 = a4;
  v36 = a3;
  v34 = *v4;
  v8 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v14 = sub_182AD2698();
  __swift_project_value_buffer(v14, qword_1EA836B70);
  sub_181FCDFD4(a1, v13, type metadata accessor for NWActorID);
  v15 = sub_182AD2678();
  v16 = sub_182AD38A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = a1;
    v20 = v19;
    v37[0] = v19;
    *v18 = 136315394;
    sub_181FCDFD4(v13, v10, type metadata accessor for NWActorID);
    v21 = sub_182AD3038();
    v23 = v22;
    sub_181FCE158(v13, type metadata accessor for NWActorID);
    v24 = sub_181C64FFC(v21, v23, v37);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    a1 = v32;
    v25 = sub_182AD46E8();
    v27 = sub_181C64FFC(v25, v26, v37);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_181A37000, v15, v16, "Resolving %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v20, -1, -1);
    MEMORY[0x1865DF520](v18, -1, -1);
  }

  else
  {

    v28 = sub_181FCE158(v13, type metadata accessor for NWActorID);
  }

  v29 = v6[18];
  MEMORY[0x1EEE9AC00](v28);
  v30 = v35;
  *(&v31 - 6) = v36;
  *(&v31 - 5) = v30;
  *(&v31 - 4) = v6;
  *(&v31 - 3) = a1;
  *(&v31 - 2) = v34;
  v37[2] = sub_182AD39B8();
  v37[3] = sub_181FCD1F4;
  v37[4] = (&v31 - 8);
  sub_181F50DA0(sub_181FCE1B8, v37, v29);
}

void sub_181FC2350(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  swift_beginAccess();
  v16 = *(a1 + 152);
  if (*(v16 + 16) && (v17 = sub_18224F288(a2), (v18 & 1) != 0))
  {
    v19 = a4;
    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = *(v20 + 24);
      v52[0] = Strong;
      v52[1] = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8, &qword_182AED8E0);
      if (swift_dynamicCast())
      {

        *v19 = v53;
        return;
      }
    }

    else
    {
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839828, &qword_182AED958);
    sub_181FCD1A0();
    swift_allocError();
    *v46 = v45;
    v46[1] = a3;
    v46[2] = 0;
    swift_willThrow();
  }

  else
  {
    v51 = a2;
    swift_endAccess();
    if (qword_1EA837108 != -1)
    {
      swift_once();
    }

    sub_182AD46C8();
    v23 = v52[0];
    if (v52[0])
    {
      v50 = a4;
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v24 = sub_182AD2698();
      __swift_project_value_buffer(v24, qword_1EA836B70);
      sub_181FCDFD4(v51, v15, type metadata accessor for NWActorID);

      v25 = sub_182AD2678();
      v26 = sub_182AD38D8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v49 = v4;
        v28 = v27;
        v48 = swift_slowAlloc();
        v52[0] = v48;
        *v28 = 136315394;
        sub_181FCDFD4(v15, v12, type metadata accessor for NWActorID);
        v29 = sub_182AD3038();
        v31 = v30;
        sub_181FCE158(v15, type metadata accessor for NWActorID);
        v32 = sub_181C64FFC(v29, v31, v52);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;

        v33 = sub_1821515AC();
        v35 = v34;

        v36 = sub_181C64FFC(v33, v35, v52);

        *(v28 + 14) = v36;
        _os_log_impl(&dword_181A37000, v25, v26, "Associating %s to %s", v28, 0x16u);
        v37 = v48;
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v37, -1, -1);
        v38 = v28;
        v5 = v49;
        MEMORY[0x1865DF520](v38, -1, -1);
      }

      else
      {

        v39 = sub_181FCE158(v15, type metadata accessor for NWActorID);
      }

      v40 = *(v23 + 80);
      MEMORY[0x1EEE9AC00](v39);
      v41 = v51;
      *(&v47 - 2) = v23;
      *(&v47 - 1) = v41;
      MEMORY[0x1EEE9AC00](v42);
      *(&v47 - 2) = sub_181FCE1E0;
      *(&v47 - 1) = v43;
      os_unfair_lock_lock(v40 + 4);
      sub_181FCE69C();
      os_unfair_lock_unlock(v40 + 4);
      if (v5)
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(a1 + 200);
        *(a1 + 200) = 0x8000000000000000;
        sub_18225902C(v23, v41, isUniquelyReferenced_nonNull_native);
        *(a1 + 200) = v53;
        swift_endAccess();

        *v50 = 0;
      }
    }

    else
    {
      *a4 = 0;
    }
  }
}