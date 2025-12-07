uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

unint64_t SiriKitEventContext.description.getter()
{
  _StringGuts.grow(_:)(43);

  MEMORY[0x1E12A1580](v0[10], v0[11]);
  MEMORY[0x1E12A1580](32, 0xE100000000000000);
  _StringGuts.grow(_:)(19);

  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E12A1580](v1, v2);

  MEMORY[0x1E12A1580](32, 0xE100000000000000);

  MEMORY[0x1E12A1580](0xD000000000000010, 0x80000001DCA89010);

  _StringGuts.grow(_:)(18);

  MEMORY[0x1E12A1580](v0[12], v0[13]);
  MEMORY[0x1E12A1580](41, 0xE100000000000000);

  MEMORY[0x1E12A1580](0x7463617265746E69, 0xEF203A64496E6F69);

  return 0xD000000000000028;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id SessionConfigurationXPC.init(coder:)(void *a1)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SMTRequestDispatcherSessionConfiguration, 0x1E69D08F8);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for SessionConfigurationXPC();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR___SKRSessionConfigurationXPC_sessionId] = v5;
      *&v7[OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration] = v3;
      v12.receiver = v7;
      v12.super_class = v6;
      v8 = v5;
      v9 = v3;
      v10 = objc_msgSendSuper2(&v12, sel_init);

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v10;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime8WorkItemVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime8WorkItemVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime21AceServiceInvokerImplC0G13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime21AceServiceInvokerImplC0G13SubmitOptions33_6F702868F5EE7637FC7805F00DECC893LLOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime28GeneralizedAppShortcutTargetVGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime28GeneralizedAppShortcutTargetVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMd, &_ss23_ContiguousArrayStorageCy14SiriKitRuntime23CandidateRequestMessageOGMR);
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
    _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF16SiriMessageTypes07RequestH4BaseCm_Ttg5();
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

id RequestContextData.__allocating_init(inputOrigin:audioSource:audioDestination:responseMode:isEyesFree:isDirectAction:isVoiceTriggerEnabled:isTextToSpeechEnabled:peerInfo:endpointInfo:instanceInfo:bargeInModes:approximatePreviousTTSInterval:restrictions:originatingHome:currentDeviceAssistantId:isTriggerlessFollowup:didPreviouslyFallbackToServer:isSpeechRequest:isUserOnActivePhoneCall:voiceTriggerEventInfo:isRecognizeMyVoiceEnabled:voiceAudioSessionId:isSystemApertureEnabled:isLiveActivitiesSupported:isInAmbient:positionInSession:conjunctionInfo:isDeviceShowingLockScreen:isDeviceLocked:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20, char a21, char a22, uint64_t a23, char a24, int a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, char a32)
{
  v33 = v32;
  v39 = objc_allocWithZone(v33);
  v40 = &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  *v40 = a1;
  v40[1] = a2;
  outlined init with copy of ReferenceResolutionClientProtocol?(a3, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(a4, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v41 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v42 = type metadata accessor for ResponseMode();
  v43 = *(v42 - 8);
  (*(v43 + 16))(&v39[v41], a5, v42);
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree] = a6;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction] = a7;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled] = a8;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled] = a9;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo] = a10;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo] = a11;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo] = a12;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes] = a13;
  outlined init with copy of ReferenceResolutionClientProtocol?(a14, &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v44 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v45 = type metadata accessor for Restrictions();
  v46 = *(v45 - 8);
  (*(v46 + 16))(&v39[v44], a15, v45);
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome] = a16;
  v47 = &v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *v47 = a17;
  v47[1] = a18;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup] = a19;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer] = a20;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest] = a21;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall] = a22;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo] = a23;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled] = a24;
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId] = a25;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled] = a26;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported] = a27;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient] = a28;
  v48 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_positionInSession;
  v49 = type metadata accessor for RequestPositionInSession();
  v50 = *(v49 - 8);
  (*(v50 + 16))(&v39[v48], a29, v49);
  *&v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo] = a30;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen] = a31;
  v39[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked] = a32;
  v60.receiver = v39;
  v60.super_class = v57;
  v51 = objc_msgSendSuper2(&v60, sel_init);
  (*(v50 + 8))(a29, v49);
  (*(v46 + 8))(a15, v45);
  outlined destroy of ReferenceResolutionClientProtocol?(a14, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v43 + 8))(a5, v42);
  outlined destroy of ReferenceResolutionClientProtocol?(a4, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(a3, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  return v51;
}

char *initializeWithCopy for RemoteConversationTurnData(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v13 = a3[7];
  v14 = type metadata accessor for SessionConfiguration();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[8];
  v18 = a3[9];
  v19 = *&a2[v17];
  *&a1[v17] = v19;
  v20 = v19;
  if (v11(&a2[v18], 1, v9))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    memcpy(&a1[v18], &a2[v18], *(*(v21 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v18], &a2[v18], v9);
    (*(v10 + 56))(&a1[v18], 0, 1, v9);
  }

  v22 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v22] = a2[v22];
  v23 = a3[12];
  v24 = a3[13];
  v25 = *&a2[v23];
  *&a1[v23] = v25;
  v26 = &a1[v24];
  v27 = &a2[v24];
  v28 = *&a2[v24 + 8];

  v29 = v25;
  if (v28 >> 60 == 15)
  {
    *v26 = *v27;
  }

  else
  {
    v30 = *v27;
    outlined copy of Data._Representation(v30, v28);
    *v26 = v30;
    *(v26 + 1) = v28;
  }

  return a1;
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[16] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[17] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v4, 0);
}

{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v3[18] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized InterruptibleTaskManager.perform<A>(_:), v4, 0);
}

uint64_t specialized InterruptibleTaskManager.perform<A>(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[15];
  v5 = *(v4 + 40);
  v3[18] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[16];
    v8 = v3[13];
    v7 = v3[14];
    *(v4 + 40) = v5 + 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v4;
    v12[5] = v5;
    v12[6] = v8;
    v12[7] = v7;

    v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyytG_Tt2g5(0, 0, v6, &async function pointer to partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v12);
    v3[19] = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:), v14, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v18;
    swift_endAccess();
    v16 = swift_task_alloc();
    v3[20] = v16;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyytGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyytGMR);
    *v16 = v3;
    v16[1] = specialized InterruptibleTaskManager.perform<A>(_:);
    a1 = v3 + 11;
    a2 = v13;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

{
  v4 = v3[16];
  v5 = *(v4 + 40);
  v3[19] = v5;
  if (v5 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3[17];
    v8 = v3[14];
    v7 = v3[15];
    *(v4 + 40) = v5 + 1;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = static MessageBusActor.shared;
    v11 = lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v4;
    v12[5] = v5;
    v12[6] = v8;
    v12[7] = v7;

    v13 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime23InterruptibleTaskResultOyAI18RemoteConversation_pSgG_Tt2g5(0, 0, v6, &async function pointer to partial apply for specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v12);
    v3[20] = v13;
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v13;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v4 + 32);
    *(v4 + 32) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for specialized closure #2 in InterruptibleTaskManager.perform<A>(_:), v14, v5, isUniquelyReferenced_nonNull_native);
    *(v4 + 32) = v18;
    swift_endAccess();
    v16 = swift_task_alloc();
    v3[21] = v16;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime23InterruptibleTaskResultOyAA18RemoteConversation_pSgGMR);
    *v16 = v3;
    v16[1] = specialized InterruptibleTaskManager.perform<A>(_:);
    a1 = v3 + 11;
    a2 = v13;
  }

  return MEMORY[0x1EEE6DA40](a1, a2, a3);
}

uint64_t lazy protocol witness table accessor for type RemoteFlowPluginBundleConversationHandler and conformance RemoteFlowPluginBundleConversationHandler(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR14SiriKitRuntime23InterruptibleTaskResultOyytG_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t specialized closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v6, 0);
}

{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for CancellationError();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v4[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in InterruptibleTaskManager.perform<A>(_:), v6, 0);
}

uint64_t partial apply for specialized closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return specialized closure #2 in withCancellableContinuation<A>(body:)(a1, v4, v5, v6);
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
}

uint64_t specialized closure #2 in withCancellableContinuation<A>(body:)()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = static AsyncTaskUtils.withCheckedRethrowingContinuation<A>(body:);
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v5);
}

{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  *v3 = v0;
  v3[1] = specialized closure #2 in withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v4);
}

{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:), 0, 0);
  }

  else
  {
    v3 = v2[3];

    *v3 = v2[2];
    v4 = v2[1];

    return v4();
  }
}

{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v3 = v0;
  v3[1] = specialized closure #2 in withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000022, 0x80000001DCA7D5F0, partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #2 in withCancellableContinuation<A>(body:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 32);

    *v3 = *(v2 + 16);
    v4 = *(v2 + 8);

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void partial apply for specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(uint64_t a1)
{
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  specialized closure #1 in closure #2 in withCancellableContinuation<A>(body:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t specialized ManagedContinuation.updateState(continuation:result:)(unsigned int (*a1)(char *, uint64_t, uint64_t), char *a2, char a3)
{
  v48 = a2;
  v50 = a1;
  v5 = ~a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v47 - v20;
  v49 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  v52 = *(*v3 + 104);
  [*(v3 + v52) lock];
  if (v5)
  {
    v26 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v26 + 8) == 255)
    {
      v27 = v48;
      *v26 = v48;
      *(v26 + 8) = a3;
      outlined copy of Result<(), Error>(v27, a3 & 1);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v50, v14, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v50 = *(v16 + 48);
  if (v50(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  }

  else
  {
    v48 = v18;
    v28 = v11;
    v29 = *(v16 + 32);
    v29(v25, v14, v15);
    v29(v28, v25, v15);
    (*(v16 + 56))(v28, 0, 1, v15);
    v30 = *(*v3 + 88);
    swift_beginAccess();
    v31 = v3 + v30;
    v11 = v28;
    v18 = v48;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v11, v31, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
    swift_endAccess();
  }

  v32 = v51;
  v33 = *(*v3 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v33, v8, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  if (v50(v8, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
LABEL_12:
    v45 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v51 = *(v16 + 32);
  (v51)(v32, v8, v15);
  v34 = v3 + *(*v3 + 96);
  swift_beginAccess();
  v35 = v32;
  v36 = *(v34 + 8);
  if (v36 == 255)
  {
    (*(v16 + 8))(v35, v15);
    goto LABEL_12;
  }

  v37 = *v34;
  (*(v16 + 56))(v11, 1, 1, v15);
  swift_beginAccess();
  v38 = v36 & 1;
  outlined copy of Result<(), Error>(v37, v38);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v11, v3 + v33, &_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  swift_endAccess();
  v39 = v35;
  v40 = v51;
  (v51)(v18, v39, v15);
  v53 = v38;
  v41 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v42 = (v49 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v40(v43 + v41, v18, v15);
  v44 = v43 + v42;
  *v44 = v37;
  *(v44 + 8) = v53;
  v45 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  v45([*(v3 + v52) unlock]);
}

{
  v47 = a2;
  v49 = a1;
  v5 = ~a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v46 - v20;
  v48 = v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  v51 = *(*v3 + 104);
  [*(v3 + v51) lock];
  if (v5)
  {
    v26 = v3 + *(*v3 + 96);
    swift_beginAccess();
    if (*(v26 + 8) == 255)
    {
      v27 = v47;
      *v26 = v47;
      *(v26 + 8) = a3;
      outlined copy of Result<SABaseCommand?, Error>(v27);
    }
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v49, v14, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  v49 = *(v16 + 48);
  if (v49(v14, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  }

  else
  {
    v47 = v18;
    v28 = v11;
    v29 = *(v16 + 32);
    v29(v25, v14, v15);
    v29(v28, v25, v15);
    (*(v16 + 56))(v28, 0, 1, v15);
    v30 = *(*v3 + 88);
    swift_beginAccess();
    v31 = v3 + v30;
    v11 = v28;
    v18 = v47;
    outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v11, v31, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
    swift_endAccess();
  }

  v32 = v50;
  v33 = *(*v3 + 88);
  swift_beginAccess();
  outlined init with copy of ReferenceResolutionClientProtocol?(v3 + v33, v8, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  if (v49(v8, 1, v15) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
LABEL_12:
    v44 = destructiveProjectEnumData for AceServiceInvokerImpl.AceSubmitOptions;
    goto LABEL_13;
  }

  v50 = *(v16 + 32);
  (v50)(v32, v8, v15);
  v34 = v3 + *(*v3 + 96);
  swift_beginAccess();
  v35 = v32;
  v36 = *(v34 + 8);
  if (v36 == 255)
  {
    (*(v16 + 8))(v35, v15);
    goto LABEL_12;
  }

  v37 = *v34;
  (*(v16 + 56))(v11, 1, 1, v15);
  swift_beginAccess();
  outlined copy of Result<SABaseCommand?, Error>(v37);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v11, v3 + v33, &_sScCySo13SABaseCommandCSgs5Error_pGSgMd, &_sScCySo13SABaseCommandCSgs5Error_pGSgMR);
  swift_endAccess();
  v38 = v35;
  v39 = v50;
  (v50)(v18, v38, v15);
  v52 = v36 & 1;
  v40 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v41 = (v48 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v39(v42 + v40, v18, v15);
  v43 = v42 + v41;
  *v43 = v37;
  *(v43 + 8) = v52;
  v44 = partial apply for specialized closure #2 in ManagedContinuation.updateState(continuation:result:);
LABEL_13:
  v44([*(v3 + v51) unlock]);
}

uint64_t specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a1;
  v17[7] = a4;
  v17[8] = a5;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a7, v17);
}

uint64_t partial apply for specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  return specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], &unk_1F582CC28, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:));
}

{
  return specialized closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v1[2], v1[3], v1[4], v1[5], &unk_1F582CAC0, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGSgMd, &_sScCyyts5Error_pGSgMR);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGSgMR);
  v8[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in closure #1 in InterruptibleTaskManager.perform<A>(_:), 0, 0);
}

uint64_t specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return v10(a1, a5);
}

{
  *(v5 + 32) = a1;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v5 + 40) = v7;
  *v7 = v5;
  v7[1] = specialized closure #1 in SharedFlowPluginServiceClient.withCurrentConnection<A>(block:);

  return v9(v5 + 16, a5);
}

uint64_t partial apply for closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for RemoteConversationTurnData(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(a1, a2, v2 + v7, v9, v10);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), 0, 0);
}

uint64_t closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = closure #1 in AceServiceInvokerImpl.createSerialSubmissionTask(_:options:executionSource:);
  v4 = *(v0 + 16);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0xD00000000000001BLL, 0x80000001DCA81770, partial apply for closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:), v1, v5);
}

uint64_t closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  v12 = RemoteConversationTurnData.xpcRepresentation.getter();
  ObjectType = swift_getObjectType();
  v14 = ServiceBridgeDelegate.xpcWrapper.getter(ObjectType, a5);
  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in SharedFlowPluginServiceClient.startTurn(turnData:bridge:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);

  [a2 startTurnWithTurnData:v12 bridge:v14 reply:v17];
  _Block_release(v17);

  return swift_unknownObjectRelease();
}

id RemoteConversationTurnData.xpcRepresentation.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SessionConfiguration();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = v1[1];
  v48 = *v1;
  v14 = v1[3];
  v50 = v1[2];
  v15 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v15[6], v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v42 = *(v17 + 48);
  v43 = v17;
  v18 = v42(v12, 1, v16);
  v49 = v14;

  v47 = v13;

  isa = 0;
  if (v18 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v43 + 8))(v12, v16);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v15[7], v7, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v20 = v45;
  v21 = v46;
  if ((*(v45 + 48))(v7, 1, v46) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
    v22 = 0;
  }

  else
  {
    (*(v20 + 16))(v4, v7, v21);
    v23 = objc_allocWithZone(type metadata accessor for SessionConfigurationXPC());
    v22 = SessionConfigurationXPC.init(sessionConfiguration:)(v4);
    (*(v20 + 8))(v7, v21);
  }

  v24 = v44;
  v25 = *(v1 + v15[8]);
  outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v15[9], v44, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v42(v24, 1, v16) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v43 + 8))(v24, v16);
  }

  v27 = *(v1 + v15[10]);
  if (v27)
  {
    v27 = FlowTask.xpcRepresentation.getter();
  }

  if (*(v1 + v15[13] + 8) >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = Data._bridgeToObjectiveC()().super.isa;
  }

  v29 = v15[12];
  v30 = *(v1 + v15[11]);
  v31 = *(v1 + v29);
  v32 = type metadata accessor for ConversationTurnDataXPC();
  v33 = objc_allocWithZone(v32);
  v34 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId];
  v35 = v47;
  *v34 = v48;
  v34[1] = v35;
  v36 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId];
  v37 = v49;
  *v36 = v50;
  v36[1] = v37;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData] = v25;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId] = v26;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_flowTask] = v27;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData] = v28;
  v33[OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR] = v30;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext] = v31;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionId] = isa;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration] = v22;
  v51.receiver = v33;
  v51.super_class = v32;
  v38 = v25;
  v39 = v31;
  return objc_msgSendSuper2(&v51, sel_init);
}

id SessionConfigurationXPC.init(sessionConfiguration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SessionConfiguration.sessionId.getter();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR___SKRSessionConfigurationXPC_sessionId] = isa;
  v18 = a1;
  v9 = objc_allocWithZone(MEMORY[0x1E69D08F8]);
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in SessionConfigurationXPC.init(sessionConfiguration:);
  *(v10 + 24) = v17;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed SMTTCUPackageMutating?) -> ();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed SMTRequestDispatcherSessionConfigurationMutating) -> ();
  aBlock[3] = &block_descriptor_24;
  v11 = _Block_copy(aBlock);

  v12 = [v9 initWithBuilder_];
  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    *&v2[OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration] = v12;
    v14 = type metadata accessor for SessionConfigurationXPC();
    v19.receiver = v2;
    v19.super_class = v14;
    v15 = objc_msgSendSuper2(&v19, sel_init);
    v16 = type metadata accessor for SessionConfiguration();
    (*(*(v16 - 8) + 8))(a1, v16);
    return v15;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed SMTRequestDispatcherSessionConfigurationMutating) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall ConversationTurnDataXPC.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId), *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8));
  v4 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7AEC0);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId + 8))
  {
    v5 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId));
  }

  else
  {
    v5 = 0;
  }

  v6 = MEMORY[0x1E12A1410](0x75716552746F6F72, 0xED00006449747365);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData);
  v8 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA7B2A0);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v10 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v12 = MEMORY[0x1E12A1410](0xD000000000000014, 0x80000001DCA7B320);
  [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId);
  v14 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B2C0);
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  v16 = MEMORY[0x1E12A1410](0x6B736154776F6C66, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  v17 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v18 = MEMORY[0x1E12A1410](0x52526465706F6373, 0xEC00000061746144);
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

  v19 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR);
  v20 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA7B2E0);
  [(objc_class *)with.super.isa encodeBool:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v22 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B300);
  [(objc_class *)with.super.isa encodeObject:v21 forKey:v22];
}

uint64_t outlined consume of Set<String>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

Swift::Void __swiftcall SessionConfigurationXPC.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SKRSessionConfigurationXPC_sessionId);
  v4 = MEMORY[0x1E12A1410](0x496E6F6973736573, 0xE900000000000064);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration);
  v6 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA7B670);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

void *closure #1 in SessionConfigurationXPC.init(sessionConfiguration:)(void *a1)
{
  v2 = type metadata accessor for UserID();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = SessionConfiguration.assistantId.getter();
  v7 = MEMORY[0x1E12A1410](v6);

  [a1 setAssistantId_];

  v8 = SessionConfiguration.languageCode.getter();
  v9 = MEMORY[0x1E12A1410](v8);

  [a1 setLanguageCode_];

  SessionConfiguration.userId.getter();
  v10 = UserID.sharedUserId.getter();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13 = MEMORY[0x1E12A1410](v10, v12);

  [a1 setSharedUserId_];

  [a1 setUnderstandingOnDevice_];
  [a1 setIsSystemAssistantExperienceEnabled_];
  [a1 setIsFullPlannerEnabled_];
  [a1 setIsPQAEnabled_];
  [a1 setDeferIntelligenceFlowSessionCreation_];
  result = SessionConfiguration.clientAuditToken.getter();
  if ((v16 & 1) == 0)
  {
    *v15 = *&v15[11];
    *&v15[4] = *&v15[15];
    return [a1 setClientAuditToken_];
  }

  return result;
}

id FlowTask.xpcRepresentation.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  v8 = *(v0 + 32);
  v16 = *(v0 + 33);
  v9 = *(v2 + 16);
  v9(v5, v0 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v1, v3);
  v10 = type metadata accessor for FlowTaskXPC(0);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v12 = v7;
  v12[1] = v6;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = v8;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = v16;
  (v9)(&v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime], v5, v1);
  v17.receiver = v11;
  v17.super_class = v10;

  v13 = objc_msgSendSuper2(&v17, sel_init);
  (*(v2 + 8))(v5, v1);
  return v13;
}

Swift::Void __swiftcall RequestContextData.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = type metadata accessor for DeviceRestrictions();
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v122 = &v113 - v7;
  v8 = type metadata accessor for DateInterval();
  v117 = *(v8 - 8);
  v118 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v113 - v11;
  v13 = type metadata accessor for AudioDestination();
  v115 = *(v13 - 8);
  v116 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v113 - v16;
  v18 = type metadata accessor for AudioSource();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8), v20);
  v24 = MEMORY[0x1E12A1410](0x69724F7475706E69, 0xEB000000006E6967);
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource, v17, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v17, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    v25 = off_1E8646000;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v26 = AudioSource.aceValue.getter();
    v27 = MEMORY[0x1E12A1410](v26);

    v28 = MEMORY[0x1E12A1410](0x756F536F69647561, 0xEB00000000656372);
    v25 = off_1E8646000;
    [(objc_class *)with.super.isa encodeObject:v27 forKey:v28];

    (*(v19 + 8))(v22, v18);
  }

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination, v12, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v30 = v115;
  v29 = v116;
  v31 = (*(v115 + 48))(v12, 1, v116);
  v32 = v122;
  if (v31 == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v12, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  }

  else
  {
    v33 = v122;
    v34 = v25;
    v35 = v113;
    (*(v30 + 32))(v113, v12, v29);
    v36 = AudioDestination.aceValue.getter();
    v37 = MEMORY[0x1E12A1410](v36);

    v38 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA867E0);
    [with.super.isa v34 + 3842];

    v39 = v35;
    v25 = v34;
    v32 = v33;
    (*(v30 + 8))(v39, v29);
  }

  v40 = ResponseMode.aceValue.getter();
  v41 = MEMORY[0x1E12A1410](v40);

  v42 = MEMORY[0x1E12A1410](0x65736E6F70736572, 0xEC00000065646F4DLL);
  [with.super.isa v25[478]];

  v43 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree);
  v44 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  [(objc_class *)with.super.isa encodeBool:v43 forKey:v44];

  v45 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction);
  v46 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  [(objc_class *)with.super.isa encodeBool:v45 forKey:v46];

  v47 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled);
  v48 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  [(objc_class *)with.super.isa encodeBool:v47 forKey:v48];

  v49 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled);
  v50 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  [(objc_class *)with.super.isa encodeBool:v49 forKey:v50];

  v51 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_peerInfo);
  if (v51)
  {
    v52 = v51;
    v53 = MEMORY[0x1E12A1410](0x6F666E4972656570, 0xE800000000000000);
    [with.super.isa v25[478]];
  }

  v54 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_endpointInfo);
  if (v54)
  {
    v55 = v54;
    v56 = MEMORY[0x1E12A1410](0x746E696F70646E65, 0xEC0000006F666E49);
    [with.super.isa v25[478]];
  }

  v57 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_instanceInfo);
  if (v57)
  {
    v58 = v57;
    v59 = MEMORY[0x1E12A1410](0x65636E6174736E69, 0xEC0000006F666E49);
    [with.super.isa v25[478]];
  }

  v60 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_bargeInModes);
  v61 = *(v60 + 16);
  if (v61)
  {
    v123 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v62 = (v60 + 40);
    do
    {
      v63 = *(v62 - 1);
      v64 = *v62;

      MEMORY[0x1E12A1410](v63, v64);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v62 += 2;
      --v61;
    }

    while (v61);
    v32 = v122;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v66 = MEMORY[0x1E12A1410](0x4D6E496567726162, 0xEC0000007365646FLL);
  [with.super.isa v25[478]];

  outlined init with copy of ReferenceResolutionClientProtocol?(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval, v32, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v68 = v117;
  v67 = v118;
  if ((*(v117 + 48))(v32, 1, v118) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v32, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  }

  else
  {
    v69 = v114;
    (*(v68 + 32))(v114, v32, v67);
    v70 = v67;
    v71 = DateInterval._bridgeToObjectiveC()().super.isa;
    v72 = v68;
    v73 = MEMORY[0x1E12A1410](0xD00000000000001ELL, 0x80000001DCA86800);
    [with.super.isa v25[478]];

    (*(v72 + 8))(v69, v70);
  }

  v74 = Restrictions.restrictedCommands.getter();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_So8NSStringCs5NeverOTg5069_s14SiriKitRuntime18RequestContextDataC6encode4withySo7NSCoderC_tFSo8D9CSSXEfU0_Tf1cn_n(v74);

  v75 = Array._bridgeToObjectiveC()().super.isa;

  v76 = MEMORY[0x1E12A1410](0x7463697274736572, 0xEC000000736E6F69);
  [with.super.isa v25[478]];

  v77 = v119;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x150))();
  v78 = DeviceRestrictions.rawValue.getter();
  (*(v120 + 8))(v77, v121);
  v79 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA86820);
  [(objc_class *)with.super.isa encodeInteger:v78 forKey:v79];

  v80 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome);
  if (v80)
  {
    v81 = v80;
    v82 = MEMORY[0x1E12A1410](0x74616E696769726FLL, 0xEF656D6F48676E69);
    [with.super.isa v25[478]];
  }

  v83 = MEMORY[0x1E12A1410](*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId), *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8));
  v84 = MEMORY[0x1E12A1410](0xD000000000000018, 0x80000001DCA86840);
  [with.super.isa v25[478]];

  v85 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTriggerlessFollowup);
  v86 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7D210);
  [(objc_class *)with.super.isa encodeBool:v85 forKey:v86];

  v87 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_didPreviouslyFallbackToServer);
  v88 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA825F0);
  [(objc_class *)with.super.isa encodeBool:v87 forKey:v88];

  v89 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSpeechRequest);
  v90 = MEMORY[0x1E12A1410](0x6863656570537369, 0xEF74736575716552);
  [(objc_class *)with.super.isa encodeBool:v89 forKey:v90];

  v91 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isUserOnActivePhoneCall);
  v92 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA83F60);
  [(objc_class *)with.super.isa encodeBool:v91 forKey:v92];

  if (*(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo))
  {
    v93 = Dictionary._bridgeToObjectiveC()().super.isa;
    v94 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA86860);
    [with.super.isa v25[478]];
  }

  v95 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled);
  v96 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA86880);
  [(objc_class *)with.super.isa encodeBool:v95 forKey:v96];

  v97 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId);
  v98 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  [(objc_class *)with.super.isa encodeInt64:v97 forKey:v98];

  v99 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled);
  v100 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
  [(objc_class *)with.super.isa encodeBool:v99 forKey:v100];

  v101 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported);
  v102 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
  [(objc_class *)with.super.isa encodeBool:v101 forKey:v102];

  v103 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient);
  v104 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
  [(objc_class *)with.super.isa encodeBool:v103 forKey:v104];

  v105 = RequestPositionInSession.rawValue.getter();
  v106 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA86900);
  [(objc_class *)with.super.isa encodeInt64:v105 forKey:v106];

  v107 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_conjunctionInfo);
  v108 = MEMORY[0x1E12A1410](0x74636E756A6E6F63, 0xEF6F666E496E6F69);
  [with.super.isa v25[478]];

  v109 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceShowingLockScreen);
  v110 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA823B0);
  [(objc_class *)with.super.isa encodeBool:v109 forKey:v110];

  v111 = *(v2 + OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDeviceLocked);
  v112 = MEMORY[0x1E12A1410](0x6563697665447369, 0xEE0064656B636F4CLL);
  [(objc_class *)with.super.isa encodeBool:v111 forKey:v112];
}

Swift::Void __swiftcall FlowTaskXPC.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x1E12A1410](*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id), *(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8));
  v4 = MEMORY[0x1E12A1410](25705, 0xE200000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state))
  {
    if (*(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state) == 1)
    {
      v5 = 0xE700000000000000;
      v6 = 0x676E696F676E6FLL;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x6465646E65;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x64657461657263;
  }

  v7 = MEMORY[0x1E12A1410](v6, v5);

  v8 = MEMORY[0x1E12A1410](0x6574617473, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated);
  v10 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  isa = Date._bridgeToObjectiveC()().super.isa;
  v12 = MEMORY[0x1E12A1410](0x6E6F697461657263, 0xEC000000656D6954);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v12];
}

uint64_t type metadata accessor for InvocationStateImpl(uint64_t a1)
{
  result = type metadata singleton initialization cache for InvocationStateImpl;
  if (!type metadata singleton initialization cache for InvocationStateImpl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[4] = v8;
  *v8 = v7;
  v8[1] = closure #1 in static AsyncTaskUtils.taskWithCatchingCompletion(completion:do:);

  return v10();
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)partial apply()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(v2, v3, v4);
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = type metadata accessor for SiriKitEventPayload();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  type metadata accessor for InvocationStateImpl(0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = type metadata accessor for RemoteConversationTurnData(0);
  v3[38] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static ConversationActor.shared;
  v3[39] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v5, 0);
}

uint64_t FlowTaskXPC.init(coder:)(void *a1)
{
  v2 = type metadata accessor for Date();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v5)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.instrumentation);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DC659000, v27, v28, "Error decoding FlowTaskXPC: Missing id", v29, 2u);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    goto LABEL_32;
  }

  v6 = v5;
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v7)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.instrumentation);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DC659000, v31, v32, "Error decoding FlowTaskXPC: Missing state", v33, 2u);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    goto LABEL_25;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  v13 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of FlowTask.State.init(rawValue:), v12);

  if (v13 < 3)
  {
    v14 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
    v15 = [a1 containsValueForKey_];

    if (v15)
    {
      v16 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA7B9D0);
      v17 = [a1 decodeBoolForKey_];

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDate, 0x1E695DF00);
      v18 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v18)
      {
        v19 = v18;
        ObjectType = swift_getObjectType();
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        HIDWORD(v48) = v17;
        v23 = v22;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = (*(ObjectType + 112))(v21, v23, v13, HIDWORD(v48), v4);

        swift_deallocPartialClassInstance();
        return v24;
      }

      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static Logger.instrumentation);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_31;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Error decoding FlowTaskXPC: Missing creationTime";
    }

    else
    {
      if (one-time initialization token for instrumentation != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.instrumentation);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v43, v44))
      {
        goto LABEL_31;
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = "Error decoding FlowTaskXPC: Missing isClientInitiated";
    }

    _os_log_impl(&dword_1DC659000, v43, v44, v46, v45, 2u);
    MEMORY[0x1E12A2F50](v45, -1, -1);
LABEL_31:

    goto LABEL_32;
  }

  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.instrumentation);
  v35 = v8;
  v31 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v31, v36))
  {

LABEL_25:
    goto LABEL_32;
  }

  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v49 = v38;
  *v37 = 136315138;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v49);

  *(v37 + 4) = v41;
  _os_log_impl(&dword_1DC659000, v31, v36, "Error decoding FlowTaskXPC: Invalid value for state: %s", v37, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  MEMORY[0x1E12A2F50](v38, -1, -1);
  MEMORY[0x1E12A2F50](v37, -1, -1);

LABEL_32:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id FlowTaskXPC.__allocating_init(id:state:isClientInitiated:creationTime:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id];
  *v12 = a1;
  v12[1] = a2;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state] = a3;
  v11[OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated] = a4;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a5, v14);
  v18.receiver = v11;
  v18.super_class = v5;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a5, v14);
  return v16;
}

uint64_t sub_1DC6A66E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id ConversationTurnDataXPC.init(coder:)(void *a1)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v2)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.executor);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "Error decoding ConversationTurnDataXPC: executionRequestId not present", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    goto LABEL_24;
  }

  v3 = v2;
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSUUID, 0x1E696AFB0);
  v5 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for SessionConfigurationXPC();
  v50 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for RequestContextData(0);
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static Logger.executor);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v4;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v28, v29, "Error decoding ConversationTurnDataXPC: requestContextData not present", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }

    else
    {
    }

    a1 = v50;
LABEL_24:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  v47 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v47)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v4;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DC659000, v9, v10, "No conversation logging ID found when decoding ConversationTurnData", v12, 2u);
      v13 = v12;
      v4 = v11;
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }
  }

  v48 = v5;
  type metadata accessor for FlowTaskXPC(0);
  v14 = NSCoder.decodeObject<A>(of:forKey:)();
  v15 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA7B2E0);
  v45 = [a1 decodeBoolForKey_];

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v16 = NSCoder.decodeObject<A>(of:forKey:)();
  type metadata accessor for ProxiedRequestContext(0);
  v17 = NSCoder.decodeObject<A>(of:forKey:)();
  v49 = v3;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v46 = v4;
  if (v4)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v32 = type metadata accessor for ConversationTurnDataXPC();
  v33 = objc_allocWithZone(v32);
  v34 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId];
  *v34 = v18;
  v34[1] = v20;
  v35 = &v33[OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId];
  *v35 = v4;
  v35[1] = v22;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData] = v7;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId] = v47;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_flowTask] = v14;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData] = v16;
  v33[OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR] = v45;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext] = v17;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionId] = v48;
  *&v33[OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration] = v50;
  v51.receiver = v33;
  v51.super_class = v32;
  v36 = v7;
  v37 = v47;
  v38 = v14;
  v39 = v16;
  v40 = v17;
  v41 = v48;
  v42 = v50;
  v43 = objc_msgSendSuper2(&v51, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v43;
}

uint64_t outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:)()
{
  v1 = *(*(v0 + 200) + 72);
  *(v0 + 320) = v1;
  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v1, 0);
}

{
  v1 = *(v0 + 312);
  SharedFlowPluginService.WarmupTracker.warmupTask.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v1, 0);
}

{
  v42 = v0;
  v1 = v0[26];
  v2 = *(v0[25] + 80);
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v5 = v1;
  v4();
  v6 = v0[37];
  v7 = v0[38];
  v9 = v0[35];
  v8 = v0[36];
  v38 = v9;
  v32 = v0[34];
  v39 = v0[33];
  v36 = v0[32];
  v37 = v0[31];
  v10 = v0[25];
  v11 = *v7;
  v12 = v7[1];
  v34 = *v7;
  v35 = v12;
  v13 = *(v7 + v6[8]);
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  v31 = v13;

  InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(v11, v12, v31, v40, v8);
  v14 = *(v10 + 64);
  v33 = v7[2];
  v29 = v7[3];
  v16 = v6[6];
  v15 = v6[7];
  outlined init with copy of InvocationStateImpl(v8, v9, type metadata accessor for InvocationStateImpl);
  v25 = v6[9];
  swift_getObjectType();
  v17 = ServiceBridge.errorHandlingProxy.getter();
  v18 = (v7 + v6[13]);
  v19 = v18[1];
  v27 = v17;
  v28 = *v18;
  v30 = *(v7 + v6[11]);
  SiriKitRuntimeState.invalidateCurrentTurn()();
  SiriKitRuntimeState.taskService.getter();
  TaskService.onNewTurn()();

  outlined init with copy of ReferenceResolutionClientProtocol?(v7 + v16, v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7 + v15, v37, &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  v24 = *(v14 + 136);
  outlined init with copy of ReferenceResolutionClientProtocol?(v7 + v25, v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v14 + 56, (v0 + 2), &_s11SiriKitFlow0aB12EventSending_pSgMd, &_s11SiriKitFlow0aB12EventSending_pSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(v14 + 96, (v0 + 7));
  v20 = type metadata accessor for ConversationTurnStateImpl(0);
  v26 = swift_allocObject();
  outlined init with copy of InvocationStateImpl(v9, v32, type metadata accessor for InvocationStateImpl);

  v21 = v31;

  outlined copy of Data?(v28, v19);
  v22 = specialized ConversationTurnStateImpl.init(bridge:executionRequestId:rootRequestId:sessionId:sessionConfiguration:taskService:conversationLoggingId:invocationState:customEventSender:requestContextData:invokedByPeerToPeerEORR:rrClient:scopedRRData:)(v27, v34, v35, v33, v29, v39, v37, v24, v36, v32, (v0 + 2), v21, v30, v0 + 7, v28, v19, v26);
  v0[41] = v22;
  outlined consume of Data?(v28, v19);

  ConversationTurnStateImpl.setSiriKitFlowGlobals()();
  v0[15] = v20;
  v0[16] = &protocol witness table for ConversationTurnStateImpl;

  v0[12] = v22;
  swift_beginAccess();
  outlined assign with take of ConversationTurnState?((v0 + 12), v14 + 16);
  swift_endAccess();
  outlined destroy of InvocationStateImpl(v38, type metadata accessor for InvocationStateImpl);
  type metadata accessor for ConversationSELFHelper();
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.makeAndSetConversationId(fromExecutionRequestId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  static ConversationSELFHelper.shared.getter();
  dispatch thunk of ConversationSELFHelper.setExecutionRequestId(fromExecutionRequestId:)();

  outlined destroy of ReferenceResolutionClientProtocol?(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol(&v22[OBJC_IVAR____TtC14SiriKitRuntimeP33_FB63CECFE10715AC1233F5DEB969132D25ConversationTurnStateImpl_eventSender], (v0 + 17));

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), 0, 0);
}

{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[20];
  v5 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v4);
  type metadata accessor for SiriKitEvent();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CFC58], v3);
  v6 = SiriKitEvent.__allocating_init(_:builder:)();
  v0[42] = v6;
  v7 = swift_task_alloc();
  v0[43] = v7;
  *v7 = v0;
  v7[1] = closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);

  return MEMORY[0x1EEE39338](v6, v4, v5);
}

{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.executor);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "Bootstraping the suggestions broker provider inside SharedFlowPluginService startTurn()", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  type metadata accessor for SiriSuggestionsBrokerProvider();
  v5 = swift_task_alloc();
  *(v0 + 352) = v5;
  *v5 = v0;
  v5[1] = closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:);

  return static SiriSuggestionsBrokerProvider.bootStrapSuggestionsBrokerProvider()();
}

{
  v1 = *v0;
  v2 = *(*v0 + 312);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v2, 0);
}

{
  v1 = *(*v0 + 312);

  return MEMORY[0x1EEE6DFA0](closure #1 in SharedFlowPluginService.startTurn(turnData:bridge:reply:), v1, 0);
}

{
  v1 = v0[38];
  v2 = v0[36];

  outlined destroy of InvocationStateImpl(v2, type metadata accessor for InvocationStateImpl);
  outlined destroy of InvocationStateImpl(v1, type metadata accessor for RemoteConversationTurnData);

  v3 = v0[1];

  return v3();
}

uint64_t SharedFlowPluginService.WarmupTracker.warmupTask.getter()
{
  if (v0[14])
  {
    v1 = v0[14];
  }

  else
  {
    v1 = closure #1 in SharedFlowPluginService.WarmupTracker.warmupTask.getter(*v0);
    v0[14] = v1;
  }

  return v1;
}

id ConversationTurnDataXPC.swiftRepresentation()@<X0>(void *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId);
  v16 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_executionRequestId + 8);
  v17 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId + 8);
  v49 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_rootRequestId);
  v50 = v15;
  v18 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionId);
  v52 = &v44 - v13;
  if (v18)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v14, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  }

  v21 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_sessionConfiguration);
  v22 = MEMORY[0x1E69E7D40];
  if (v21)
  {
    v51 = v11;
    v23 = v8;
    v24 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x80);

    v24(v25);
    if (v2)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v52, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    v28 = type metadata accessor for SessionConfiguration();
    (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
    v8 = v23;
    v11 = v51;
    v22 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v27 = type metadata accessor for SessionConfiguration();
    (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  }

  v47 = v16;
  v51 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_requestContextData);
  if (*(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_conversationLoggingId))
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 56))(v11, v29, 1, v30);
  v31 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_flowTask);
  if (v31)
  {
    v48 = v17;
    v32 = (*((*v22 & *v31) + 0x78))(v51);
    if (v2)
    {

      v33 = 0;
      v3 = 0;
    }

    else
    {
      v33 = v32;
    }

    v17 = v48;
  }

  else
  {
    v34 = v51;
    v33 = 0;
  }

  v35 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_scopedRRData);
  v48 = v3;
  if (v35)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v37;
    v46 = v36;
  }

  else
  {
    v45 = 0xF000000000000000;
    v46 = 0;
  }

  v38 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_invokedByPeerToPeerEORR);
  v39 = *(v4 + OBJC_IVAR___SKRConversationTurnDataXPC_proxiedRequestContext);
  v40 = v47;
  *a1 = v50;
  a1[1] = v40;
  a1[2] = v49;
  a1[3] = v17;
  v41 = type metadata accessor for RemoteConversationTurnData(0);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v52, a1 + v41[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v8, a1 + v41[7], &_s16SiriMessageTypes20SessionConfigurationVSgMd, &_s16SiriMessageTypes20SessionConfigurationVSgMR);
  *(a1 + v41[8]) = v51;
  outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v11, a1 + v41[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(a1 + v41[10]) = v33;
  v42 = (a1 + v41[13]);
  v43 = v45;
  *v42 = v46;
  v42[1] = v43;
  *(a1 + v41[11]) = v38;
  *(a1 + v41[12]) = v39;
  return v39;
}

void InvocationStateImpl.init(executionRequestId:requestContextData:previousInvocationState:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v99 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v93 = v77 - v12;
  v13 = type metadata accessor for BargeInMode();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v92 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = v77 - v18;
  v90 = type metadata accessor for InteractionTypeHelper();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v20 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for InteractionType();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v81 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for InvocationStateImpl(0);
  v23 = v22[8];
  v24 = type metadata accessor for AudioSource();
  (*(*(v24 - 8) + 56))(&a5[v23], 1, 1, v24);
  v25 = v22[9];
  v26 = type metadata accessor for AudioDestination();
  (*(*(v26 - 8) + 56))(&a5[v25], 1, 1, v26);
  v27 = v22[24];
  v28 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v96 = v28;
  v97 = v27;
  v94 = v29 + 56;
  v95 = v30;
  (v30)(&a5[v27], 1, 1);
  v31 = v22[25];
  v32 = type metadata accessor for BargeInContext();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v80 = v31;
  v79 = v32;
  v78 = v34;
  v77[1] = v33 + 56;
  (v34)(&a5[v31], 1, 1);
  v35 = v22[27];
  v36 = type metadata accessor for HomeInfo();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v89 = v35;
  v85 = v36;
  v83 = v38;
  v82 = v37 + 56;
  (v38)(&a5[v35], 1, 1);
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a1;
  *(a5 + 3) = a2;
  v39 = &a5[v22[21]];
  *v39 = a1;
  *(v39 + 1) = a2;
  v40 = &a5[v22[22]];
  *v40 = a1;
  *(v40 + 1) = a2;
  v41 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin];
  v42 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_inputOrigin + 8];
  v43 = v22[6];
  swift_bridgeObjectRetain_n();

  v44 = &a5[v43];
  v45 = v20;
  static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)(v41, v42, v44);

  outlined assign with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioSource], &a5[v23], &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined assign with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_audioDestination], &a5[v25], &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v46 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_responseMode;
  v47 = v22[10];
  v48 = type metadata accessor for ResponseMode();
  (*(*(v48 - 8) + 16))(&a5[v47], &a3[v46], v48);
  a5[v22[13]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isEyesFree];
  a5[v22[17]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isDirectAction];
  a5[v22[14]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isVoiceTriggerEnabled];
  a5[v22[15]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isTextToSpeechEnabled];
  a5[v22[16]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isRecognizeMyVoiceEnabled];
  static InteractionTypeHelper.shared.getter();
  outlined init with copy of ReferenceResolutionClientProtocol?(v99, v100, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
  v49 = v101;
  if (v101)
  {
    v50 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v51 = v86;
    (*(v50 + 32))(v49, v50);
    v52 = v84;
    v53 = v87;
    (*(v84 + 56))(v51, 0, 1, v87);
    __swift_destroy_boxed_opaque_existential_1Tm(v100);
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v100, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
    v52 = v84;
    v51 = v86;
    v53 = v87;
    (*(v84 + 56))(v86, 1, 1, v87);
  }

  v54 = v81;
  InteractionTypeHelper.mapInteractionType(requestContextData:previousInteractionType:)(a3, v51);
  outlined destroy of ReferenceResolutionClientProtocol?(v51, &_s13SiriUtilities15InteractionTypeOSgMd, &_s13SiriUtilities15InteractionTypeOSgMR);
  (*(v88 + 8))(v45, v90);
  (*(v52 + 32))(&a5[v22[7]], v54, v53);

  static BargeInMode.from(aceModes:)(v55, v92);

  outlined init with copy of ReferenceResolutionClientProtocol?(&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_approximatePreviousTTSInterval], v93, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v56 = v91;
  BargeInContext.init(mode:approximatePreviousTTSInterval:)();
  v57 = 1;
  v78(v56, 0, 1, v79);
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v56, &a5[v80], &_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
  v58 = OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_restrictions;
  v59 = v22[26];
  v60 = type metadata accessor for Restrictions();
  (*(*(v60 - 8) + 16))(&a5[v59], &a3[v58], v60);
  v61 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_originatingHome];
  if (v61)
  {
    v62 = v61;
    v63 = v98;
    AFHomeInfo.asInternalHomeInfo.getter();

    v57 = 0;
  }

  else
  {
    v63 = v98;
  }

  v83(v63, v57, 1, v85);
  v64 = &a5[v22[12]];
  v93 = v22[20];
  v65 = &a5[v22[23]];
  v98 = v22[29];
  outlined assign with take of (Input, AnyFlow, SiriEnvironment)(v63, &a5[v89], &_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
  v66 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId + 8];
  v67 = &a5[v22[28]];
  *v67 = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_currentDeviceAssistantId];
  *(v67 + 1) = v66;
  type metadata accessor for DeviceEnvironmentHelper();

  MEMORY[0x1E129BAA0](v68);

  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriLocale.getter();

  MEMORY[0x1E129BAA0](v69);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  dispatch thunk of CurrentDevice.siriVoiceGender.getter();

  MEMORY[0x1E129BAA0](v70);

  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v71 = dispatch thunk of CurrentDevice.preferencesLanguageCode.getter();
  v73 = v72;

  outlined destroy of ReferenceResolutionClientProtocol?(v99, &_s14SiriKitRuntime15InvocationState_pSgMd, &_s14SiriKitRuntime15InvocationState_pSgMR);
  *v65 = v71;
  *(v65 + 1) = v73;
  v74 = v22[11];
  v75 = type metadata accessor for MultiUserContext();
  (*(*(v75 - 8) + 56))(&a5[v74], 1, 1, v75);
  *&a5[v93] = 0;
  v76 = v97;
  outlined destroy of ReferenceResolutionClientProtocol?(&a5[v97], &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
  v95(&a5[v76], 1, 1, v96);
  *v64 = 0;
  *(v64 + 1) = 0;
  *&a5[v98] = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceTriggerEventInfo];
  *&a5[v22[30]] = *&a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_voiceAudioSessionId];
  a5[v22[31]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isSystemApertureEnabled];
  a5[v22[32]] = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isLiveActivitiesSupported];
  LOBYTE(v76) = a3[OBJC_IVAR____TtC14SiriKitRuntime18RequestContextData_isInAmbient];

  a5[v22[33]] = v76;
}

uint64_t static SiriKitExecutorRunUtils.inputOriginFrom(aceValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;

  InputOrigin.init(aceValue:)();
  v9 = type metadata accessor for InputOrigin();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v8, v9);
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v11 = static Log.executor;
  v12 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DCA66060;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;

  os_log(_:dso:log:type:_:)("Unexpected unknown input origin. Will default to .homeButton: '%@'", 66, 2, &dword_1DC659000, v11, v12, v13);

  return (*(v10 + 104))(a3, *MEMORY[0x1E69D34D0], v9);
}

uint64_t outlined assign with copy of ReferenceResolutionClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t InteractionTypeHelper.mapInteractionType(requestContextData:previousInteractionType:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for InputOrigin();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  InputOrigin.init(aceValue:)();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, *MEMORY[0x1E69D34D0], v6);
    v11 = v10(v5, 1, v6);
    if (v11 != 1)
    {
      v11 = outlined destroy of ReferenceResolutionClientProtocol?(v5, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    }
  }

  else
  {
    v11 = (*(v7 + 32))(v9, v5, v6);
  }

  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x140))(v11);
  (*((*v12 & *a1) + 0x148))(v13);
  InteractionTypeHelper.mapInteractionType(inputOrigin:isEyesFree:isDeviceInStarkMode:isDeviceInCarDND:audioSource:audioDestination:previousInteractionType:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t static BargeInMode.from(aceModes:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for BargeInMode();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static BargeInMode.none.getter();
  v9 = *(a1 + 16);
  if (v9)
  {
    v24[4] = *MEMORY[0x1E69C8158];
    v24[3] = *MEMORY[0x1E69C8150];
    v24[2] = *MEMORY[0x1E69C8160];
    v24[1] = *MEMORY[0x1E69C8148];
    v10 = (v5 + 8);
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v14 == v12;
      if (v15 || (v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v16 & 1) != 0))
      {

        static BargeInMode.overSiri.getter();
      }

      else
      {
        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v18 == v12)
        {

LABEL_16:

          static BargeInMode.overMedia.getter();
          goto LABEL_9;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_16;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v20 == v12)
        {

LABEL_21:

          static BargeInMode.overTimer.getter();
          goto LABEL_9;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_21;
        }

        if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v22 == v12)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        static BargeInMode.overAlarm.getter();
      }

LABEL_9:
      lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(&lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode, MEMORY[0x1E69D3420]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v17 = *v10;
      (*v10)(a2, v4);
      dispatch thunk of RawRepresentable.rawValue.getter();
      v24[7] = v24[5] | v24[6];
      lazy protocol witness table accessor for type BargeInMode and conformance BargeInMode(&lazy protocol witness table cache variable for type BargeInMode and conformance BargeInMode, MEMORY[0x1E69D3428]);
      dispatch thunk of OptionSet.init(rawValue:)();
      result = (v17)(v7, v4);
LABEL_10:
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t SessionConfigurationXPC.swiftRepresentation()()
{
  v1 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v1 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = *(v0 + OBJC_IVAR___SKRSessionConfigurationXPC_mafConfiguration);
  return SessionConfiguration.init(sessionId:mafConfiguration:)();
}

uint64_t FlowTaskXPC.swiftRepresentation()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_state);
  v7 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_isClientInitiated);
  v9 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id);
  v8 = *(v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_id + 8);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC14SiriKitRuntime11FlowTaskXPC_creationTime, v1, v3);
  type metadata accessor for FlowTask(0);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  *(v10 + 32) = v6;
  *(v10 + 33) = v7;
  (*(v2 + 32))(v10 + OBJC_IVAR____TtC14SiriKitRuntime8FlowTask_creationTime, v5, v1);

  return v10;
}

uint64_t outlined init with copy of InvocationStateImpl(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *initializeWithCopy for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = type metadata accessor for InputOrigin();
  v10 = *(*(v9 - 8) + 16);

  v10(&a1[v8], &a2[v8], v9);
  v11 = a3[7];
  v12 = type metadata accessor for InteractionType();
  (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
  v13 = a3[8];
  v14 = type metadata accessor for AudioSource();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 1, v14))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v17 = a3[9];
  v18 = type metadata accessor for AudioDestination();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(&a2[v17], 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v17], &a2[v17], *(*(v20 - 8) + 64));
  }

  else
  {
    (*(v19 + 16))(&a1[v17], &a2[v17], v18);
    (*(v19 + 56))(&a1[v17], 0, 1, v18);
  }

  v21 = a3[10];
  v22 = type metadata accessor for ResponseMode();
  (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
  v23 = a3[11];
  v24 = type metadata accessor for MultiUserContext();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(&a2[v23], 1, v24))
  {
    v26 = type metadata accessor for MultiUserState();
    memcpy(&a1[v23], &a2[v23], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v25 + 16))(&a1[v23], &a2[v23], v24);
    (*(v25 + 56))(&a1[v23], 0, 1, v24);
  }

  v27 = a3[12];
  v28 = a3[13];
  v29 = &a1[v27];
  v30 = &a2[v27];
  v31 = *(v30 + 1);
  *v29 = *v30;
  *(v29 + 1) = v31;
  a1[v28] = a2[v28];
  v32 = a3[15];
  a1[a3[14]] = a2[a3[14]];
  a1[v32] = a2[v32];
  v33 = a3[17];
  a1[a3[16]] = a2[a3[16]];
  a1[v33] = a2[v33];
  v34 = a3[18];
  v35 = type metadata accessor for Locale();
  v36 = *(*(v35 - 8) + 16);

  v36(&a1[v34], &a2[v34], v35);
  v37 = a3[19];
  v38 = type metadata accessor for SiriVoiceGender();
  (*(*(v38 - 8) + 16))(&a1[v37], &a2[v37], v38);
  v39 = a3[20];
  v40 = a3[21];
  v76 = *&a2[v39];
  *&a1[v39] = v76;
  v41 = &a1[v40];
  v42 = &a2[v40];
  v43 = *(v42 + 1);
  *v41 = *v42;
  *(v41 + 1) = v43;
  v44 = a3[22];
  v45 = a3[23];
  v46 = &a1[v44];
  v47 = &a2[v44];
  v48 = *(v47 + 1);
  *v46 = *v47;
  *(v46 + 1) = v48;
  v49 = &a1[v45];
  v50 = &a2[v45];
  v51 = *(v50 + 1);
  *v49 = *v50;
  *(v49 + 1) = v51;
  v52 = a3[24];
  v53 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v54 = *(v53 - 8);
  v75 = *(v54 + 48);
  v55 = v76;

  if (v75(&a2[v52], 1, v53))
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v52], &a2[v52], *(*(v56 - 8) + 64));
  }

  else
  {
    (*(v54 + 16))(&a1[v52], &a2[v52], v53);
    (*(v54 + 56))(&a1[v52], 0, 1, v53);
  }

  v57 = a3[25];
  v58 = type metadata accessor for BargeInContext();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(&a2[v57], 1, v58))
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v57], &a2[v57], *(*(v60 - 8) + 64));
  }

  else
  {
    (*(v59 + 16))(&a1[v57], &a2[v57], v58);
    (*(v59 + 56))(&a1[v57], 0, 1, v58);
  }

  v61 = a3[26];
  v62 = type metadata accessor for Restrictions();
  (*(*(v62 - 8) + 16))(&a1[v61], &a2[v61], v62);
  v63 = a3[27];
  v64 = type metadata accessor for HomeInfo();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(&a2[v63], 1, v64))
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v63], &a2[v63], *(*(v66 - 8) + 64));
  }

  else
  {
    (*(v65 + 16))(&a1[v63], &a2[v63], v64);
    (*(v65 + 56))(&a1[v63], 0, 1, v64);
  }

  v67 = a3[28];
  v68 = a3[29];
  v69 = &a1[v67];
  v70 = &a2[v67];
  v71 = *(v70 + 1);
  *v69 = *v70;
  *(v69 + 1) = v71;
  *&a1[v68] = *&a2[v68];
  v72 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v72] = a2[v72];
  v73 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v73] = a2[v73];

  return a1;
}

uint64_t ServiceBridge.errorHandlingProxy.getter()
{
  type metadata accessor for ServiceBridgeErrorHandlingProxy();
  v0 = swift_allocObject();
  v1 = swift_dynamicCastObjCProtocolConditional();
  if (v1)
  {
    *(v0 + 16) = v1;
    swift_unknownObjectRetain();
    return v0;
  }

  else
  {
    _StringGuts.grow(_:)(67);
    MEMORY[0x1E12A1580](0xD000000000000041, 0x80000001DCA87EA0);
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime13ServiceBridge_pMd, &_s14SiriKitRuntime13ServiceBridge_pMR);
    v3 = String.init<A>(describing:)();
    MEMORY[0x1E12A1580](v3);

    result = specialized static SiriKitRuntimeCrashHelper.logAndCrash(_:file:line:)(0, 0xE000000000000000, "/Library/Caches/com.apple.xbs/Sources/SiriKitExecutor/SiriKitRuntime/MessageBusIntegration/ServiceBridgeXPC.swift", 113, 2, 203);
    __break(1u);
  }

  return result;
}

uint64_t RequestContextData.init(coder:)(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v206 = &v182 - v4;
  v5 = type metadata accessor for RequestPositionInSession();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v208 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v182 - v9;
  v203 = type metadata accessor for DeviceRestrictions();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v200 = &v182 - v13;
  v215 = type metadata accessor for Restrictions();
  v209 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215);
  v207 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v220 = &v182 - v16;
  v17 = type metadata accessor for NSFastEnumerationIterator();
  v219 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v227 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v182 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v205 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v210 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v225 = &v182 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v182 - v29;
  v224 = type metadata accessor for ResponseMode();
  v216 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v204 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v223 = &v182 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v214 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v222 = &v182 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v213 = &v182 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v221 = &v182 - v41;
  v226 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v42 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v42)
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v217 = v10;
  v199 = v6;
  v218 = v5;
  v43 = v42;
  v198 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v197 = v44;

  v45 = MEMORY[0x1E12A1410](0x756F536F69647561, 0xEB00000000656372);
  v46 = [a1 containsValueForKey_];

  v211 = v1;
  if (v46)
  {
    v47 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    AudioSource.init(aceValue:)();
  }

  else
  {
    v50 = type metadata accessor for AudioSource();
    (*(*(v50 - 8) + 56))(v221, 1, 1, v50);
  }

  v51 = MEMORY[0x1E12A1410](0xD000000000000010, 0x80000001DCA867E0);
  v52 = [a1 containsValueForKey_];

  if (v52)
  {
    v53 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v53)
    {
      v54 = v53;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v56 = v224;
    AudioDestination.init(aceValue:)();
  }

  else
  {
    v55 = type metadata accessor for AudioDestination();
    (*(*(v55 - 8) + 56))(v222, 1, 1, v55);
    v56 = v224;
  }

  v57 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v57)
  {
    v58 = v57;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  ResponseMode.init(aceValue:)();
  v59 = v216;
  v60 = *(v216 + 48);
  if (v60(v30, 1, v56) == 1)
  {
    static ResponseMode.displayForward.getter();
    if (v60(v30, 1, v56) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v30, &_s13SiriUtilities12ResponseModeVSgMd, &_s13SiriUtilities12ResponseModeVSgMR);
    }
  }

  else
  {
    (*(v59 + 32))(v223, v30, v56);
  }

  v61 = MEMORY[0x1E12A1410](0x7246736579457369, 0xEA00000000006565);
  v196 = [a1 decodeBoolForKey_];

  v62 = MEMORY[0x1E12A1410](0x7463657269447369, 0xEE006E6F69746341);
  v195 = [a1 decodeBoolForKey_];

  v63 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3D0);
  v194 = [a1 decodeBoolForKey_];

  v64 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7B3F0);
  v193 = [a1 decodeBoolForKey_];

  v65 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA823B0);
  v192 = [a1 decodeBoolForKey_];

  v66 = MEMORY[0x1E12A1410](0x6563697665447369, 0xEE0064656B636F4CLL);
  v190 = [a1 decodeBoolForKey_];

  v67 = MEMORY[0x1E12A1410](0x6F666E4972656570, 0xE800000000000000);
  v68 = [a1 containsValueForKey_];

  if (v68)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFPeerInfo, 0x1E698D1B0);
    v191 = NSCoder.decodeObject<A>(of:forKey:)();
    v69 = v191;
  }

  else
  {
    v191 = 0;
  }

  v70 = MEMORY[0x1E12A1410](0x746E696F70646E65, 0xEC0000006F666E49);
  v71 = [a1 containsValueForKey_];

  if (v71)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFEndpointInfo, 0x1E698D138);
    v189 = NSCoder.decodeObject<A>(of:forKey:)();
    v72 = v189;
  }

  else
  {
    v189 = 0;
  }

  v73 = MEMORY[0x1E12A1410](0x65636E6174736E69, 0xEC0000006F666E49);
  v74 = [a1 containsValueForKey_];

  if (v74)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFInstanceInfo, 0x1E698D170);
    v188 = NSCoder.decodeObject<A>(of:forKey:)();
    v75 = v188;
  }

  else
  {
    v188 = 0;
  }

  v76 = MEMORY[0x1E12A1410](0xD00000000000001ELL, 0x80000001DCA86800);
  v77 = [a1 containsValueForKey_];

  if (v77)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDateInterval, 0x1E696AB80);
    v78 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v78)
    {
      v79 = v210;
      v80 = v78;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = 0;
    }

    else
    {
      v81 = 1;
      v79 = v210;
    }

    v83 = type metadata accessor for DateInterval();
    (*(*(v83 - 8) + 56))(v79, v81, 1, v83);
    outlined init with take of DateInterval?(v79, v225);
  }

  else
  {
    v82 = type metadata accessor for DateInterval();
    (*(*(v82 - 8) + 56))(v225, 1, 1, v82);
  }

  v84 = MEMORY[0x1E12A1410](0x74616E696769726FLL, 0xEF656D6F48676E69);
  v85 = [a1 containsValueForKey_];

  if (v85)
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFHomeInfo, 0x1E698D158);
    v187 = NSCoder.decodeObject<A>(of:forKey:)();
    v86 = v187;
  }

  else
  {
    v187 = 0;
  }

  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v87 = swift_allocObject();
  v184 = xmmword_1DCA65720;
  *(v87 + 16) = xmmword_1DCA65720;
  v88 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v89 = v226;
  *(v87 + 32) = v88;
  *(v87 + 40) = v89;
  NSCoder.decodeObject(of:forKey:)();

  v186 = v88;
  if (v232)
  {
    if (swift_dynamicCast())
    {
      v90 = v228;
      goto LABEL_42;
    }
  }

  else
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v231, &_sypSgMd, &_sypSgMR);
  }

  v90 = MEMORY[0x1E12A1CA0](MEMORY[0x1E69E7CC0]);
LABEL_42:
  NSArray.makeIterator()();
  lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  dispatch thunk of IteratorProtocol.next()();
  v212 = a1;
  if (v232)
  {
    v210 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v231, &v228);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v91 = v230;
        if (!v230)
        {
          break;
        }

        v92 = v229;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v210 + 2) + 1, 1, v210);
        }

        v94 = *(v210 + 2);
        v93 = *(v210 + 3);
        if (v94 >= v93 >> 1)
        {
          v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v210);
        }

        v95 = v210;
        *(v210 + 2) = v94 + 1;
        v96 = &v95[16 * v94];
        *(v96 + 4) = v92;
        *(v96 + 5) = v91;
        dispatch thunk of IteratorProtocol.next()();
        a1 = v212;
        if (!v232)
        {
          goto LABEL_55;
        }
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v232);
    a1 = v212;
  }

  else
  {
    v210 = MEMORY[0x1E69E7CC0];
  }

LABEL_55:
  v97 = 0x7463697274736572;

  v98 = *(v219 + 8);
  v219 += 8;
  v183 = v98;
  v98(v21, v17);
  v99 = MEMORY[0x1E12A1410](0x7463697274736572, 0xEC000000736E6F69);
  v100 = [a1 containsValueForKey_];

  if ((v100 & 1) == 0)
  {
    v104 = MEMORY[0x1E12A1410](0xD000000000000012, 0x80000001DCA86820);
    [a1 decodeIntegerForKey_];

    v105 = v200;
    DeviceRestrictions.init(rawValue:)();
    v106 = v202;
    v107 = v203;
    (*(v202 + 16))(v201, v105, v203);
    Restrictions.init(deviceRestrictions:)();
    (*(v106 + 8))(v105, v107);
    goto LABEL_76;
  }

  v101 = swift_allocObject();
  *(v101 + 16) = v184;
  v102 = v226;
  *(v101 + 32) = v186;
  *(v101 + 40) = v102;
  NSCoder.decodeObject(of:forKey:)();

  if (!v232)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(&v231, &_sypSgMd, &_sypSgMR);
    goto LABEL_61;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_61:
    v103 = MEMORY[0x1E12A1CA0](MEMORY[0x1E69E7CC0]);
    goto LABEL_62;
  }

  v103 = v228;
LABEL_62:
  NSArray.makeIterator()();
  dispatch thunk of IteratorProtocol.next()();
  if (v232)
  {
    v97 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        outlined init with take of Any(&v231, &v228);
        if (swift_dynamicCast())
        {
          v108 = v230;
          if (v230)
          {
            break;
          }
        }

        dispatch thunk of IteratorProtocol.next()();
        if (!v232)
        {
          goto LABEL_75;
        }
      }

      v109 = v229;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v97 + 16) + 1, 1, v97);
      }

      v111 = *(v97 + 16);
      v110 = *(v97 + 24);
      if (v111 >= v110 >> 1)
      {
        v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v110 > 1), v111 + 1, 1, v97);
      }

      *(v97 + 16) = v111 + 1;
      v112 = v97 + 16 * v111;
      *(v112 + 32) = v109;
      *(v112 + 40) = v108;
      dispatch thunk of IteratorProtocol.next()();
      a1 = v212;
    }

    while (v232);
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
  }

LABEL_75:

  v183(v227, v17);
  Restrictions.init(aceValue:)();
LABEL_76:
  v113 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;
  }

  else
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, static Logger.executor);
    v114 = Logger.logObject.getter();
    v119 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v114, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_1DC659000, v114, v119, "Could not decode currentDeviceAssistantId, setting to empty string", v120, 2u);
      MEMORY[0x1E12A2F50](v120, -1, -1);
    }

    v115 = 0;
    v117 = 0xE000000000000000;
  }

  v121 = MEMORY[0x1E12A1410](0xD00000000000001DLL, 0x80000001DCA825F0);
  LODWORD(v219) = [a1 decodeBoolForKey_];

  v122 = MEMORY[0x1E12A1410](0xD000000000000015, 0x80000001DCA7D210);
  LODWORD(v203) = [a1 decodeBoolForKey_];

  v123 = MEMORY[0x1E12A1410](0x6863656570537369, 0xEF74736575716552);
  LODWORD(v202) = [a1 decodeBoolForKey_];

  v124 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA83F60);
  LODWORD(v201) = [a1 decodeBoolForKey_];

  v125 = NSCoder.decodeDictionary<A, B>(withKeyClass:objectClass:forKey:)();
  if (v125)
  {
    *&v231 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo8NSStringCABGMd, &_sSDySo8NSStringCABGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v126 = swift_dynamicCast();
    v127 = v228;
    if (!v126)
    {
      v127 = 0;
    }

    v200 = v127;
  }

  else
  {
    v200 = 0;
  }

  v128 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA86880);
  LODWORD(v186) = [a1 decodeBoolForKey_];

  v129 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  v130 = [a1 containsValueForKey_];

  if (!v130)
  {
    goto LABEL_92;
  }

  v131 = MEMORY[0x1E12A1410](0xD000000000000013, 0x80000001DCA868A0);
  v132 = [a1 decodeInt64ForKey_];

  if ((v132 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_120;
  }

  if (HIDWORD(v132))
  {
    __break(1u);
LABEL_92:
    v132 = 0;
  }

  v97 = v115;
  v133 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
  v134 = [a1 containsValueForKey_];

  if (v134)
  {
    v135 = MEMORY[0x1E12A1410](0xD000000000000017, 0x80000001DCA868C0);
    LODWORD(v115) = [a1 decodeBoolForKey_];

    if (one-time initialization token for executor == -1)
    {
LABEL_95:
      v136 = type metadata accessor for Logger();
      __swift_project_value_buffer(v136, static Logger.executor);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 67109120;
        *(v139 + 4) = v115;
        _os_log_impl(&dword_1DC659000, v137, v138, "#jindoRF SKE ReqContextData - Got isSystemUI %{BOOL}d", v139, 8u);
        MEMORY[0x1E12A2F50](v139, -1, -1);
      }

      goto LABEL_99;
    }

LABEL_120:
    swift_once();
    goto LABEL_95;
  }

  LODWORD(v115) = 0;
LABEL_99:
  v140 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
  v141 = [a1 containsValueForKey_];

  v185 = v117;
  LODWORD(v183) = v115;
  v182 = v132;
  if (v141)
  {
    v142 = MEMORY[0x1E12A1410](0xD000000000000019, 0x80000001DCA868E0);
    LODWORD(v227) = [a1 decodeBoolForKey_];

    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v143 = type metadata accessor for Logger();
    __swift_project_value_buffer(v143, static Logger.executor);
    v144 = Logger.logObject.getter();
    v145 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 67109120;
      *(v146 + 4) = v227;
      _os_log_impl(&dword_1DC659000, v144, v145, "#liveActivitiesSupported SKE ReqContextData - Got isLiveActivitiesSupported %{BOOL}d", v146, 8u);
      MEMORY[0x1E12A2F50](v146, -1, -1);
    }
  }

  else
  {
    LODWORD(v227) = 0;
  }

  *&v184 = v97;
  v147 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
  v148 = [a1 containsValueForKey_];

  if (v148)
  {
    v149 = MEMORY[0x1E12A1410](0x69626D416E497369, 0xEB00000000746E65);
    LODWORD(v226) = [a1 decodeBoolForKey_];

    v150 = &selRef_setMitigationSource_;
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v151 = type metadata accessor for Logger();
    __swift_project_value_buffer(v151, static Logger.executor);
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.debug.getter();
    v154 = os_log_type_enabled(v152, v153);
    v155 = v206;
    v156 = v199;
    v157 = v218;
    if (v154)
    {
      v158 = swift_slowAlloc();
      *v158 = 67109120;
      *(v158 + 4) = v226;
      _os_log_impl(&dword_1DC659000, v152, v153, "#ambientRF SKE ReqContextData - Got isInAmbient %{BOOL}d", v158, 8u);
      MEMORY[0x1E12A2F50](v158, -1, -1);
    }
  }

  else
  {
    LODWORD(v226) = 0;
    v155 = v206;
    v150 = &selRef_setMitigationSource_;
    v156 = v199;
    v157 = v218;
  }

  v159 = MEMORY[0x1E12A1410](0xD000000000000011, 0x80000001DCA86900);
  [a1 v150[25]];

  RequestPositionInSession.init(rawValue:)();
  v160 = *(v156 + 48);
  if (v160(v155, 1, v157) == 1)
  {
    (*(v156 + 104))(v217, *MEMORY[0x1E69CE5A0], v157);
    if (v160(v155, 1, v157) != 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v155, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMd, &_s19SiriFlowEnvironment24RequestPositionInSessionOSgMR);
    }
  }

  else
  {
    (*(v156 + 32))(v217, v155, v157);
  }

  type metadata accessor for RequestConjunctionInfo();
  v161 = NSCoder.decodeObject<A>(of:forKey:)();
  ObjectType = swift_getObjectType();
  outlined init with copy of ReferenceResolutionClientProtocol?(v221, v213, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  outlined init with copy of ReferenceResolutionClientProtocol?(v222, v214, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  v163 = v216;
  v164 = v204;
  (*(v216 + 16))(v204, v223, v224);
  v165 = v205;
  outlined init with copy of ReferenceResolutionClientProtocol?(v225, v205, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v166 = v209;
  v167 = v207;
  (*(v209 + 16))(v207, v220, v215);
  v168 = v208;
  (*(v156 + 16))(v208, v217, v218);
  v169 = *(ObjectType + 344);
  HIBYTE(v181) = v190;
  LOBYTE(v181) = v192;
  v179 = v168;
  v180 = v161;
  BYTE2(v178) = v226;
  BYTE1(v178) = v227;
  LOBYTE(v178) = v183;
  HIDWORD(v177) = v182;
  LOBYTE(v177) = v186;
  HIBYTE(v176) = v201;
  BYTE2(v176) = v202;
  BYTE1(v176) = v219;
  LOBYTE(v176) = v203;
  v175 = v167;
  v170 = v187;
  v171 = v188;
  v172 = v189;
  v173 = v191;
  v49 = v169(v198, v197, v213, v214, v164, v196, v195, v194, v193, v191, v189, v188, v210, v165, v175, v187, v184, v185, v176, v200, v177, v178, v179, v180, v181);

  (*(v156 + 8))(v217, v218);
  (*(v166 + 8))(v220, v215);
  outlined destroy of ReferenceResolutionClientProtocol?(v225, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(v163 + 8))(v223, v224);
  outlined destroy of ReferenceResolutionClientProtocol?(v222, &_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v221, &_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
  swift_deallocPartialClassInstance();
  return v49;
}

uint64_t type metadata accessor for ConversationTurnStateImpl(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationTurnStateImpl;
  if (!type metadata singleton initialization cache for ConversationTurnStateImpl)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TaskData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime8TaskDataV10CodingKeys33_E362094781F6D4C1E1664AD191278514LLOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime8TaskDataV10CodingKeys33_E362094781F6D4C1E1664AD191278514LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11SiriKitFlow07DefaultC8ActivityCGMd, &_sSay11SiriKitFlow07DefaultC8ActivityCGMR);
  lazy protocol witness table accessor for type [DefaultFlowActivity] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v11) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t lazy protocol witness table accessor for type TaskData.CodingKeys and conformance TaskData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys;
  if (!lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData.CodingKeys and conformance TaskData.CodingKeys);
  }

  return result;
}

uint64_t destroy for TaskData(void *a1)
{
}

uint64_t specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(uint64_t a1, unint64_t a2)
{
  v15[0] = a1;
  v15[1] = a2;
  lazy protocol witness table accessor for type String and conformance String();
  v4 = (StringProtocol.components<A>(separatedBy:)() + 16);
  if (*v4)
  {
    v5 = &v4[2 * *v4];
    v7 = *v5;
    v6 = v5[1];

    v8._countAndFlagsBits = 20041;
    v8._object = 0xE200000000000000;
    if (!String.hasPrefix(_:)(v8))
    {
      MEMORY[0x1E12A1580](v7, v6);

      return 20041;
    }
  }

  else
  {

    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v7 = 0x6465737261706E55;
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.instrumentation);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v15);
      _os_log_impl(&dword_1DC659000, v10, v11, "#SiriKitMetricsUtils - intent name extraction error for intentTypeName: %s, returning UnparsedIntent TaskType", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E12A2F50](v13, -1, -1);
      MEMORY[0x1E12A2F50](v12, -1, -1);
    }
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type TaskData and conformance TaskData()
{
  result = lazy protocol witness table cache variable for type TaskData and conformance TaskData;
  if (!lazy protocol witness table cache variable for type TaskData and conformance TaskData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskData and conformance TaskData);
  }

  return result;
}

uint64_t ResultCandidateState.conversationUserInputId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

unint64_t specialized static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9)
{
  v59 = a2;
  v60 = a8;
  v58 = a1;
  v14 = type metadata accessor for ActivityType();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(&a9 + 1))
  {
    v59 = a4;
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.instrumentation);
    (*(v15 + 16))(v17, a3, v14);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v63 = v34;
      *v33 = 136315650;
      LODWORD(v58) = v32;
      v35 = ActivityType.rawValue.getter();
      v57 = a7;
      v37 = v36;
      (*(v15 + 8))(v17, v14);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v63);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, a5, &v63);
      *(v33 + 22) = 2080;
      *(v33 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v60, &v63);
      _os_log_impl(&dword_1DC659000, v31, v58, "#TaskLoggingService - TaskId from MetricsState is Nil, can not be aggregated into a Task. Not logging Task step: %s, Status reason: %s with Task attribute: %s", v33, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v34, -1, -1);
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v17, v14);
    }

    return 0;
  }

  v56[1] = v21;
  v57 = a7;
  v22 = v60;
  MEMORY[0x1EEE9AC00](v19);
  v56[-8] = a3;
  v56[-7] = a4;
  v56[-6] = a5;
  *&v56[-5] = a9;
  v56[-3] = v23;
  v56[-2] = v22;
  v24 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #1 in static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:), &v56[-10], a6);

  v25 = ActivityType.rawValue.getter();
  v27 = v26;

  v28 = specialized static SiriKitMetricsUtils.formulateIntentTypeName(intentTypeName:)(v58, v59);
  *&v63 = v24;
  *(&v63 + 1) = v57;
  *&v64 = v22;
  BYTE8(v64) = 0;
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  *&v66 = 0;
  *(&v66 + 1) = 0xE000000000000000;
  *&v67 = a4;
  *(&v67 + 1) = a5;
  *&v68 = v25;
  *(&v68 + 1) = v27;
  v69 = a9;
  *&v70 = v28;
  *(&v70 + 1) = v29;
  v71 = 0x3FD999999999999ALL;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v61[6] = v69;
  v61[7] = v70;
  v62 = v71;
  v61[2] = v65;
  v61[3] = v66;
  v61[4] = v67;
  v61[5] = v68;
  v61[0] = v63;
  v61[1] = v64;
  lazy protocol witness table accessor for type TaskData and conformance TaskData();
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v41 = v40;
  outlined destroy of TaskData(&v63);
  static String.Encoding.utf8.getter();
  v42 = String.init(data:encoding:)();
  if (!v43)
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static Logger.instrumentation);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1DC659000, v53, v54, "#TaskLoggingService - JSON encoding error, taskDataString is Nil", v55, 2u);
      MEMORY[0x1E12A2F50](v55, -1, -1);
    }

    outlined consume of Data._Representation(v39, v41);

    return 0;
  }

  v59 = a9;
  v60 = v42;
  v44 = one-time initialization token for instrumentation;
  v45 = v43;

  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.instrumentation);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v61[0] = v50;
    *v49 = 136315394;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v45, v61);
    *(v49 + 12) = 2080;
    *(v49 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, *(&a9 + 1), v61);
    _os_log_impl(&dword_1DC659000, v47, v48, "#TaskLoggingService - created TaskContent:%s, for taskId: %s", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v50, -1, -1);
    MEMORY[0x1E12A2F50](v49, -1, -1);
  }

  outlined consume of Data._Representation(v39, v41);

  return v60;
}

void *specialized Sequence.compactMap<A>(_:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v11 = a3 + 32;
    do
    {
      v9 = v8 + 40 * v7;
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = (v6)(&v12, v9);
        if (v3)
        {

          return v4;
        }

        if (v12)
        {
          break;
        }

        v9 += 40;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x1E12A1680](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v13;
      v8 = v11;
    }

    while (v7 != v5);
  }

  return v4;
}

void closure #1 in static TaskLoggingService.createTaskContentString(taskType:stepType:statusReason:activities:attribute:taskId:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v38 = a5;
  v39 = a7;
  v37 = a3;
  v40 = a9;
  v15 = type metadata accessor for ActivityType();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ReferenceResolutionClientProtocol(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow0C8Activity_pMd, &_s11SiriKitFlow0C8Activity_pMR);
  type metadata accessor for DefaultFlowActivity();
  if (swift_dynamicCast())
  {
    v19 = v41[6];
  }

  else
  {
    if (one-time initialization token for instrumentation != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.instrumentation);
    (*(v16 + 16))(v18, a2, v15);

    v21 = a8;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v36 = v9;
      v25 = v24;
      v35 = swift_slowAlloc();
      v41[0] = v35;
      *v25 = 136315906;
      v33 = v21;
      v26 = ActivityType.rawValue.getter();
      v34 = v23;
      v27 = a6;
      v29 = v28;
      (*(v16 + 8))(v18, v15);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v41);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, a4, v41);
      *(v25 + 22) = 2080;
      *(v25 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v27, v41);
      *(v25 + 32) = 2080;
      *(v25 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v33, v41);
      _os_log_impl(&dword_1DC659000, v22, v34, "#TaskLoggingService - Skipping unsupported flow activity. Not logging Task step: %s, Status reason: %s for taskId: %s, with attribute: %s", v25, 0x2Au);
      v31 = v35;
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v31, -1, -1);
      MEMORY[0x1E12A2F50](v25, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v18, v15);
    }

    v19 = 0;
  }

  *v40 = v19;
}

uint64_t initializeWithCopy for TaskData(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;
  v5 = a2[7];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = v5;
  v6 = a2[9];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = v6;
  v7 = a2[11];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = v7;
  v8 = a2[13];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = v8;
  v9 = a2[15];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = v9;
  *(a1 + 128) = a2[16];

  return a1;
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)()
{

  return MEMORY[0x1EEE6DFA0](closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:), 0, 0);
}

{
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, static Logger.instrumentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "#SiriKitBiomeDonator - Background donation task started", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMd, &_sScSy14SiriKitRuntime0aB12BiomeDonatorC13DonationEvent33_A1113A19BAE48A2D002AE1C978D2B162LLVGMR);
  AsyncStream.makeAsyncIterator()();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:);
  v6 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:)(uint64_t a1)
{
  v23 = v1;
  v2 = v1[2];
  if (!v2)
  {
    (*(v1[7] + 8))(v1[8], v1[6]);
    goto LABEL_5;
  }

  v4 = v1[3];
  v3 = v1[4];
  if (static Task<>.isCancelled.getter())
  {
    (*(v1[7] + 8))(v1[8], v1[6]);

LABEL_5:
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DC659000, v5, v6, "#SiriKitBiomeDonator - Background donation task stopped", v7, 2u);
      MEMORY[0x1E12A2F50](v7, -1, -1);
    }

    v8 = v1[1];

    return v8();
  }

  v10 = v1[5];
  v11 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  (*(v12 + 8))(v2, v11, v12);

  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    if (v3)
    {
      v18 = v3;
    }

    else
    {
      v4 = 0x3E6C696E3CLL;
      v18 = 0xE500000000000000;
    }

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v18, &v22);

    *(v16 + 4) = v19;
    _os_log_impl(&dword_1DC659000, v14, v15, "#SiriKitBiomeDonator - donated execution event to BIOME for taskId: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1E12A2F50](v17, -1, -1);
    MEMORY[0x1E12A2F50](v16, -1, -1);
  }

  v20 = swift_task_alloc();
  v1[10] = v20;
  *v20 = v1;
  v20[1] = closure #1 in SiriKitBiomeDonator.init(_:backgroundTaskPriority:);
  v21 = v1[6];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v21);
}

uint64_t closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - v12;
  v14 = *(a3 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_asyncWork);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

  v16 = a2;
  v17 = one-time initialization token for shared;
  v18 = a4;

  v19 = a1;
  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = static MessageBusActor.shared;
  v21 = _s16SiriMessageTypes11RequestTypeOACSYAAWlTm_0(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor, &protocol conformance descriptor for MessageBusActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = a3;
  v22[5] = a2;
  v23 = v25;
  v22[6] = v18;
  v22[7] = v23;
  v22[8] = a6;
  v22[9] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v22);
  (*(*v14 + 120))();
}

uint64_t sub_1DC6AD5C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned SABaseCommand?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void ConversationBridgeInstrumentationUtil.logFlowOutputSubmitted(outputSubmissionId:flowCommandReceived:flowCommandResponseError:requestId:rootRequestId:executionOutput:)(uint64_t a1, char a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v102 = a4;
  v103 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v90 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  v106 = type metadata accessor for UUID();
  isa = v106[-1].isa;
  MEMORY[0x1EEE9AC00](v106);
  v96 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v90 - v26;
  v28 = a7;
  if (!a7)
  {
    v28 = v103;

    a6 = v102;
  }

  v29 = specialized InstrumentationUtil.buildWrapperEventMessage(_:_:logResourceUtilization:)(a6, v28, 0, 0, 0);
  if (!v29)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.conversationBridge);

    v106 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v106, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v107 = v42;
      *v41 = 136315138;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, v28, &v107);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_1DC659000, v106, v40, "Failed to create wrapper event with rootRequestId = %s for logFlowOutputSubmitted", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1E12A2F50](v42, -1, -1);
      MEMORY[0x1E12A2F50](v41, -1, -1);

      return;
    }

    goto LABEL_19;
  }

  v30 = v29;

  v31 = [objc_allocWithZone(MEMORY[0x1E69CF350]) init];
  if (!v31)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.conversationBridge);
    v106 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DC659000, v106, v45, "Failed to create ORCHSchemaORCHFlowOutputSubmitted event", v46, 2u);
      MEMORY[0x1E12A2F50](v46, -1, -1);
    }

LABEL_19:
    v47 = v106;

    return;
  }

  v32 = v31;
  [v31 setFlowOutputSubmissionId_];
  [v32 setFlowCommandReceived_];
  v100 = v32;
  [v32 setFlowCommandResponseError_];
  v33 = *(a8 + OBJC_IVAR___SKRExecutionOutput_command);
  v34 = v106;
  v35 = isa;
  if (!v33)
  {
    goto LABEL_51;
  }

  v36 = off_1E8646000;
  v37 = [v33 aceId];
  if (v37)
  {
    v38 = v37;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.init(uuidString:)();

    if ((*(v35 + 6))(v21, 1, v34) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v36 = off_1E8646000;
    }

    else
    {
      (*(v35 + 4))(v27, v21, v34);
      v48 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v49 = UUID._bridgeToObjectiveC()().super.isa;
      v50 = [v48 initWithNSUUID_];

      (*(v35 + 1))(v27, v34);
      v36 = off_1E8646000;
      if (v50)
      {
        [v100 setAceCommandId_];
      }
    }
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (!v51)
  {
LABEL_51:
    v75 = v99;
    v76 = v99[13];
    v77 = v99[14];
    __swift_project_boxed_opaque_existential_1(v99 + 10, v76);
    v78 = (*(v77 + 16))(v76, v77);
    v79 = v100;
    if (v78)
    {
      v80 = v97;
      UUID.init(uuidString:)();
      if ((*(v35 + 6))(v80, 1, v34) == 1)
      {
        outlined destroy of ReferenceResolutionClientProtocol?(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_57:
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        __swift_project_value_buffer(v85, static Logger.conversationBridge);
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v79;
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&dword_1DC659000, v86, v87, "Failed to convert subRequestLogId for logFlowOutputSubmitted", v89, 2u);
          MEMORY[0x1E12A2F50](v89, -1, -1);

          return;
        }

        goto LABEL_62;
      }

      v81 = v96;
      (*(v35 + 4))(v96, v80, v34);
      v82 = objc_allocWithZone(MEMORY[0x1E69CF638]);
      v83 = UUID._bridgeToObjectiveC()().super.isa;
      v84 = [v82 initWithNSUUID_];

      (*(v35 + 1))(v81, v34);
      if (!v84)
      {
        goto LABEL_57;
      }

      [v79 setSubRequestId_];
    }

    [v30 setFlowOutputSubmitted_];
    [v75[2] emitMessage_];
LABEL_62:

    return;
  }

  v52 = v51;
  v53 = v33;
  v54 = [v52 views];
  if (!v54)
  {
LABEL_50:

    goto LABEL_51;
  }

  v55 = v54;
  v91 = v53;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
  v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v93 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SISchemaUUID, 0x1E69CF638);
  v57 = Array._bridgeToObjectiveC()().super.isa;
  [v100 setAceViewIds_];

  v92 = v30;
  if (v56 >> 62)
  {
    v58 = __CocoaSet.count.getter();
    if (v58)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
LABEL_49:

    v53 = v91;
    v30 = v92;
    v34 = v106;
    v35 = isa;
    goto LABEL_50;
  }

LABEL_28:
  if (v58 >= 1)
  {
    v59 = 0;
    v105 = v56 & 0xC000000000000001;
    v98 = (isa + 48);
    v94 = (isa + 8);
    v95 = (isa + 32);
    while (1)
    {
      if (v105)
      {
        v61 = MEMORY[0x1E12A1FE0](v59, v56);
      }

      else
      {
        v61 = *(v56 + 8 * v59 + 32);
      }

      v62 = v61;
      v63 = [v61 v36[427]];
      if (v63)
      {
        v64 = v63;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.init(uuidString:)();

        v65 = v106;
        if ((*v98)(v18, 1, v106) == 1)
        {

          outlined destroy of ReferenceResolutionClientProtocol?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          goto LABEL_33;
        }

        v66 = v104;
        (*v95)(v104, v18, v65);
        v67 = objc_allocWithZone(MEMORY[0x1E69CF638]);
        v68 = UUID._bridgeToObjectiveC()().super.isa;
        v69 = [v67 initWithNSUUID_];

        (*v94)(v66, v65);
        if (!v69)
        {
          goto LABEL_47;
        }

        v70 = v100;
        v71 = [v100 aceViewIds];
        if (!v71)
        {
          [v70 setAceViewIds_];

LABEL_47:
          v36 = off_1E8646000;
          goto LABEL_33;
        }

        v72 = v71;
        v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v107 = v73;
        v74 = v69;
        MEMORY[0x1E12A1680]();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v36 = off_1E8646000;
        if (v107)
        {
          v60 = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v60 = 0;
        }

        [v100 setAceViewIds_];
      }

LABEL_33:
      if (v58 == ++v59)
      {
        goto LABEL_49;
      }
    }
  }

  __break(1u);
}

uint64_t closure #1 in ConversationOutputSubmitter.sendFlowCommand(_:requestId:requestIdOverride:executionContextMatchingInfo:assistantId:sessionId:currentUserId:meetsUserSessionThreshold:meetsPersonalRequestThreshold:completion:)(void *a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.conversationBridge);
  v8 = a3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33 = v12;
    *v11 = 136315138;
    v13 = [v8 debugDescription];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a4;
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, &v33);
    a4 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1DC659000, v9, v10, "Submitted FlowCommand: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1E12A2F50](v12, -1, -1);
    MEMORY[0x1E12A2F50](v11, -1, -1);
  }

  if (a2)
  {
    v19 = a1;
    v20 = a2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
      v25 = Optional.debugDescription.getter();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v33);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, &_ss5Error_pSgMR);
      v28 = Optional.debugDescription.getter();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v33);

      *(v23 + 14) = v30;
      _os_log_impl(&dword_1DC659000, v21, v22, "Error while submitting command. Response received: %s, error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v24, -1, -1);
      MEMORY[0x1E12A2F50](v23, -1, -1);
    }
  }

  return a4(a1, a2);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_2Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t partial apply for closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:), v9, 0);
}

uint64_t closure #1 in closure #1 in RunSiriKitExecutorProcessor.submit(executionOutput:completion:)()
{
  v1 = *(v0 + 72);
  v2 = v1[18];
  if (v2)
  {
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = v1[17];
    v6 = *(v1 + OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_instrumentationUtil);
    v7 = (*(*v1 + 376))();
    (*(*v6 + 160))(v7, 1, v4 != 0, v5, v2, 0, 0, v3);
    v8 = (*(*v1 + 392))(v0 + 16);
    if (!__OFADD__(*v9, 1))
    {
      ++*v9;
      v8(v0 + 16, 0);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
LABEL_12:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.conversationBridge);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DC659000, v11, v12, "Failed to find requestId for logging self message", v13, 2u);
    MEMORY[0x1E12A2F50](v13, -1, -1);
  }

LABEL_8:
  (*(v0 + 96))(*(v0 + 112), *(v0 + 80));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t RunSiriKitExecutorProcessor.outputCounter.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_outputCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t lazy protocol witness table accessor for type [DefaultFlowActivity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11SiriKitFlow07DefaultC8ActivityCGMd, &_sSay11SiriKitFlow07DefaultC8ActivityCGMR);
    lazy protocol witness table accessor for type DefaultFlowActivity and conformance DefaultFlowActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DefaultFlowActivity] and conformance <A> [A]);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConversationCommitResultXPC.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SiriKitFlowActivity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12FlowActivityC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy14SiriKitRuntime0dE12FlowActivityC10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys();
  v8 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v1 + class metadata base offset for SiriKitFlowActivity + 88))(v8);
  v21[31] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 112))(v9);
    v21[30] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 136))(v10);
    v21[29] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 160))(v11);
    v21[28] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 184))(v12);
    v21[27] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 208))(v13);
    v21[26] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 232))(v14);
    v21[25] = 6;
    v15 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 256))(v15);
    v21[24] = 7;
    v16 = KeyedEncodingContainer.encode(_:forKey:)();
    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 280))(v16);
    v21[15] = 8;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 304))(v18);
    v21[14] = 9;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(*v1 + class metadata base offset for SiriKitFlowActivity + 328))(v19);
    v21[13] = 10;
    KeyedEncodingContainer.encode(_:forKey:)();

    type metadata accessor for DefaultFlowActivity();
    v20 = method lookup function for DefaultFlowActivity();
    v20(a1);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t SiriKitFlowActivity.isSiriKit.getter()
{
  v1 = direct field offset for SiriKitFlowActivity.isSiriKit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SiriKitFlowActivity.isSiriKitSupportedApp.getter()
{
  v1 = direct field offset for SiriKitFlowActivity.isSiriKitSupportedApp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t getEnumTagSinglePayload for ConversationCommitResultXPC.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriKitFlowActivity.CodingKeys and conformance SiriKitFlowActivity.CodingKeys);
  }

  return result;
}

uint64_t ResultCandidateState.conversationUserInputId.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

unint64_t SiriKitFlowActivity.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6C646E7542707061;
    v7 = 0x6973726556707061;
    v8 = 0x646C697562;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656D614E707061;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x65736E6F70736572;
    v2 = 0x656D614E746F6C73;
    if (a1 != 9)
    {
      v2 = 0x64496E727574;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0x694B697269537369;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id SABaseCommand.copyWithFilledInIdentifiers(requestId:requestIdOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v5 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
  if (swift_dynamicCast())
  {
    v15 = v29;
    v16 = [v29 aceId];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      UUID.init()();
      v18 = UUID.uuidString.getter();
      v20 = v21;
      (*(v11 + 8))(v14, v10);
    }

    v22 = MEMORY[0x1E12A1410](v18, v20);

    [v15 setAceId_];

    if (a4)
    {
      a2 = a4;
    }

    else
    {
      v23 = [v15 refId];
      if (v23)
      {
        v24 = v23;
        a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a2 = v25;
      }

      else
      {
        if (!a2)
        {
          v26 = 0;
          goto LABEL_13;
        }

        a3 = a1;
      }
    }

    v26 = MEMORY[0x1E12A1410](a3, a2);

LABEL_13:
    [v15 setRefId_];

    return v15;
  }

  return 0;
}

uint64_t SABaseCommand.isListenAfterSpeaking.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v40 = v0;
    v3 = [v2 views];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAAceView, 0x1E69C7708);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v5 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }

LABEL_21:

        return 0;
      }
    }

    v6 = __CocoaSet.count.getter();
    if (v6)
    {
LABEL_5:
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E12A1FE0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 listenAfterSpeaking];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 BOOLValue];

          if (v13)
          {
LABEL_22:

            return 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == v6)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    goto LABEL_21;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v0;
    v17 = [v15 listenAfterSpeaking];
    if (v17)
    {
LABEL_18:
      v18 = v17;
      v19 = [v17 BOOLValue];

      return v19;
    }

LABEL_25:

    return 0;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v16 = v0;
    v17 = [v22 listenAfterSpeaking];
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v23 = result;
    v38 = v0;
    v24 = [v23 callbacks];
    if (v24)
    {
      v25 = v24;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v39 = v26;
    if (!(v26 >> 62))
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
LABEL_68:

        return 0;
      }

LABEL_34:
      v28 = 0;
      while (1)
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x1E12A1FE0](v28, v39);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v28 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v29 = *(v39 + 32 + 8 * v28);
          v30 = __OFADD__(v28++, 1);
          if (v30)
          {
            goto LABEL_65;
          }
        }

        v40 = v29;
        v31 = [v29 commands];
        if (v31)
        {
          v32 = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
          v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

        if (v33 >> 62)
        {
          v34 = __CocoaSet.count.getter();
          if (v34)
          {
LABEL_44:
            v35 = 0;
            do
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1E12A1FE0](v35, v33);
                v36 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                swift_unknownObjectRetain();
                v36 = v35 + 1;
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_63;
                }
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v37 = SABaseCommand.isListenAfterSpeaking.getter();
                swift_unknownObjectRelease();
                if (v37)
                {

                  goto LABEL_22;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }

              ++v35;
            }

            while (v36 != v34);
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_44;
          }
        }

        if (v28 == v27)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_67:
    v27 = __CocoaSet.count.getter();
    if (!v27)
    {
      goto LABEL_68;
    }

    goto LABEL_34;
  }

  return result;
}

uint64_t SABaseCommand.isConfirmation.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    v4 = [v2 dialogPhase];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (v6 == 0x616D7269666E6F43 && v8 == 0xEC0000006E6F6974)
      {

        return 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return v10 & 1;
      }
    }

    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  v12 = result;
  v27 = v0;
  v13 = [v12 callbacks];
  if (v13)
  {
    v14 = v13;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SAResultCallback, 0x1E69C79C8);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v15 >> 62)
  {
    goto LABEL_46;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_47:

    return 0;
  }

LABEL_16:
  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E12A1FE0](v17, v15);
    v19 = __OFADD__(v17++, 1);
    if (v19)
    {
      goto LABEL_41;
    }

LABEL_21:
    v28 = v18;
    v20 = [v18 commands];
    if (v20)
    {
      v21 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v22 >> 62))
      {
        goto LABEL_23;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_23:
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }
    }

    v23 = __CocoaSet.count.getter();
    if (v23)
    {
LABEL_24:
      v24 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E12A1FE0](v24, v22);
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          swift_unknownObjectRetain();
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v16 = __CocoaSet.count.getter();
            if (!v16)
            {
              goto LABEL_47;
            }

            goto LABEL_16;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v26 = SABaseCommand.isConfirmation.getter();
          swift_unknownObjectRelease();
          if (v26)
          {
            goto LABEL_42;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v24;
      }

      while (v25 != v23);
    }

LABEL_17:

    if (v17 == v16)
    {
      goto LABEL_47;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_45;
  }

  v18 = *(v15 + 32 + 8 * v17);
  v19 = __OFADD__(v17++, 1);
  if (!v19)
  {
    goto LABEL_21;
  }

LABEL_41:
  __break(1u);
LABEL_42:

  return 1;
}

void ConversationOutputSubmitter.sendDialogEngineOutputMessageIfNecessary(output:requestId:assistantId:sessionId:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v81 = a2;
  v82 = a6;
  v79 = a4;
  v80 = a5;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - v14;
  v16 = type metadata accessor for PommesContext();
  v17 = *(v16 - 8);
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR___SKRExecutionOutput_command) || !(*(a1 + OBJC_IVAR___SKRExecutionOutput_fullPrint + 8) | *(a1 + OBJC_IVAR___SKRExecutionOutput_fullSpeak + 8)))
  {
    v22 = *(a1 + OBJC_IVAR___SKRExecutionOutput_contextUpdate);
    if (v22)
    {
      outlined init with copy of ReferenceResolutionClientProtocol?(v22 + OBJC_IVAR___SKRExecutionContextUpdate_pommesContext, v15, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        v73 = v6;
        v74 = a3;
        (*(v17 + 32))(v21, v15, v16);
        v83[0] = PommesContext.renderedTexts.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v77 = v16;
        v23 = BidirectionalCollection<>.joined(separator:)();
        v75 = v9;
        v76 = v17;
        v24 = v23;
        v26 = v25;

        v78 = v21;
        v83[0] = PommesContext.redactedRenderedTexts.getter();
        v27 = v24;
        v28 = BidirectionalCollection<>.joined(separator:)();
        v30 = v29;

        v83[0] = v24;
        v83[1] = v26;
        static CharacterSet.whitespacesAndNewlines.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v31 = StringProtocol.trimmingCharacters(in:)();
        v33 = v32;
        (*(v10 + 8))(v12, v75);

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34)
        {
          (*(v76 + 8))(v78, v77);

          return;
        }

        v75 = v28;
        v35 = v76;
        if (one-time initialization token for conversationBridge != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.conversationBridge);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v83[0] = v40;
          *v39 = 136315138;
          *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v83);
          _os_log_impl(&dword_1DC659000, v37, v38, "Publishing DialogEngineOutput for Pommes using renderedText: %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v40);
          v41 = v40;
          v27 = v24;
          MEMORY[0x1E12A2F50](v41, -1, -1);
          MEMORY[0x1E12A2F50](v39, -1, -1);
        }

        MEMORY[0x1EEE9AC00](v42);
        v43 = v80;
        *(&v73 - 14) = v79;
        *(&v73 - 13) = v43;
        v44 = v81;
        *(&v73 - 12) = v82;
        *(&v73 - 11) = v44;
        v45 = v75;
        *(&v73 - 10) = v74;
        *(&v73 - 9) = v27;
        *(&v73 - 8) = v26;
        *(&v73 - 7) = v27;
        *(&v73 - 6) = v26;
        *(&v73 - 5) = v45;
        *(&v73 - 4) = v30;
        *(&v73 - 3) = v45;
        *(&v73 - 2) = v30;
        *(&v73 - 1) = v46;
        v47 = objc_allocWithZone(type metadata accessor for DialogEngineOutputMessage());
        v48 = DialogEngineOutputMessage.init(build:)();

        if (v48)
        {
          __swift_project_boxed_opaque_existential_1((v73 + 32), *(v73 + 56));
          if (dispatch thunk of MessagePublishing.postMessage(_:)())
          {
            (*(v35 + 8))(v78, v77);

            return;
          }

          v68 = Logger.logObject.getter();
          v71 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v68, v71))
          {

            goto LABEL_36;
          }

          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_1DC659000, v68, v71, "Could not post DialogEngineOutputMessage", v72, 2u);
          MEMORY[0x1E12A2F50](v72, -1, -1);
        }

        else
        {
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_1DC659000, v68, v69, "Could not construct DialogEngineOutputMessage. Missing fields?", v70, 2u);
            MEMORY[0x1E12A2F50](v70, -1, -1);
          }
        }

LABEL_36:
        (*(v35 + 8))(v78, v77);
        return;
      }
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16, v19);
    }

    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
    return;
  }

  *&v49 = MEMORY[0x1EEE9AC00](v18);
  v50 = v80;
  *(&v73 - 14) = v79;
  *(&v73 - 13) = v50;
  v51 = v81;
  *(&v73 - 12) = v82;
  *(&v73 - 11) = v51;
  *(&v73 - 10) = a3;
  *(&v73 - 9) = v52;
  *(&v73 - 8) = v53;
  *(&v73 - 7) = v54;
  *(&v73 - 6) = v55;
  *(&v73 - 5) = v49;
  *(&v73 - 3) = v56;
  *(&v73 - 1) = v57;
  v58 = objc_allocWithZone(type metadata accessor for DialogEngineOutputMessage());
  v59 = DialogEngineOutputMessage.init(build:)();
  if (!v59)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.conversationBridge);
    v60 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1DC659000, v60, v66, "Could not construct DialogEngineOutputMessage. Missing fields?", v67, 2u);
      MEMORY[0x1E12A2F50](v67, -1, -1);
    }

    goto LABEL_29;
  }

  v60 = v59;
  __swift_project_boxed_opaque_existential_1((v6 + 32), *(v6 + 56));
  if (dispatch thunk of MessagePublishing.postMessage(_:)())
  {
LABEL_29:

    return;
  }

  if (one-time initialization token for conversationBridge != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  __swift_project_value_buffer(v61, static Logger.conversationBridge);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_1DC659000, v62, v63, "Could not post DialogEngineOutputMessage", v64, 2u);
    MEMORY[0x1E12A2F50](v64, -1, -1);
  }
}

void SelfReflectionAgent.check(executionOutput:)(char *a2@<X8>)
{
  v4 = (*v2 + 320);
  v5 = *v4;
  (*v4)(v51);
  v6 = outlined destroy of SelfReflectionResponse(v51);
  if (LOBYTE(v51[0]) == 2)
  {
    SelfReflectionAgent.determineMitigateResult(from:)(v48);
    v7 = v48[0];
    v45 = *&v48[1];
    v46 = v49;
    v47[0] = *v50;
    *(v47 + 15) = *&v50[15];
    if (v48[0] == 3)
    {
      v8 = v2[2];
      v9 = *(*v2 + 200);
      v10 = v9();
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0xE000000000000000;
      }

      (*(*v8 + 192))(2, v12, v13);

      v15 = (v9)(v14);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      (*(*v8 + 232))(5, v17, v18);
    }

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.conversationBridge);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v48 = v23;
      *v22 = 136315394;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, v48);
      *(v22 + 12) = 2080;
      LOBYTE(v44) = v7;
      v24 = SelfReflectionAgentDecision.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v48);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_1DC659000, v20, v21, "SelfReflectionAgent.%s mitigation result: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v23, -1, -1);
      MEMORY[0x1E12A2F50](v22, -1, -1);
    }

    v48[0] = v7;
    *&v48[1] = v45;
    v49 = v46;
    *v50 = v47[0];
    *&v50[15] = *(v47 + 15);
    (*(*v2 + 328))(v48);
    *a2 = v7;
  }

  else
  {
    (v5)(v48, v6);
    outlined destroy of SelfReflectionResponse(v48);
    if (v48[0] == 5)
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.conversationBridge);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v44 = v31;
        *v30 = 136315394;
        *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, &v44);
        *(v30 + 12) = 2080;
        v5(&v45);
        outlined destroy of SelfReflectionResponse(&v45);
        v32 = SelfReflectionAgentDecision.description.getter();
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v44);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_1DC659000, v28, v29, "SelfReflectionAgent.%s returned %s for current turn. The rest of ExecutionOutputs should be unchanged.", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v31, -1, -1);
        MEMORY[0x1E12A2F50](v30, -1, -1);
      }

      v35 = 2;
    }

    else
    {
      if (one-time initialization token for conversationBridge != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.conversationBridge);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v44 = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x80000001DCA87760, &v44);
        *(v39 + 12) = 2080;
        v5(&v45);
        outlined destroy of SelfReflectionResponse(&v45);
        v41 = SelfReflectionAgentDecision.description.getter();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v44);

        *(v39 + 14) = v43;
        _os_log_impl(&dword_1DC659000, v37, v38, "SelfReflectionAgent.%s already mitigated for current turn %s. Ignoring the rest of ExecutionOutputs.", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v40, -1, -1);
        MEMORY[0x1E12A2F50](v39, -1, -1);
      }

      v35 = 3;
    }

    *a2 = v35;
  }
}

uint64_t RunSiriKitExecutorProcessor.requestFinished.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_requestFinished;
  swift_beginAccess();
  return *(v0 + v1);
}

void *RunSiriKitExecutorProcessor.flowPluginInfo.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_flowPluginInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t type metadata accessor for ConversationContextUpdateMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for ConversationContextUpdateMetadata;
  if (!type metadata singleton initialization cache for ConversationContextUpdateMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversationContextUpdateMetadata.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_requestType;
  v2 = type metadata accessor for RequestType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC14SiriKitRuntime33ConversationContextUpdateMetadata_currentUserId;
  v4 = type metadata accessor for UserID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t RunSiriKitExecutorProcessor.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_userId;
  swift_beginAccess();
  return outlined init with copy of ReferenceResolutionClientProtocol?(v1 + v3, a1, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
}

uint64_t RunSiriKitExecutorProcessor.meetsUserSessionThreshold.getter()
{
  v1 = OBJC_IVAR____TtC14SiriKitRuntime27RunSiriKitExecutorProcessor_meetsUserSessionThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

void SelfReflectionAgent.determineMitigateResult(from:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkAvailability.Status();
  v211 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v195[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v216 = &v195[-v8];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v195[-v11];
  v13 = *(*v1 + 200);
  v14 = (v13)(v10);
  if (!v15)
  {
    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static Logger.conversationBridge);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_21;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v224 = v44;
    *v43 = 136315138;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
    v45 = "SelfReflectionAgent.%s requestId was not set";
    goto LABEL_20;
  }

  v16 = v15;
  v203 = v14;
  v17 = (*(*v1 + 224))();
  if (!v17)
  {

    if (one-time initialization token for conversationBridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.conversationBridge);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_21;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v224 = v44;
    *v43 = 136315138;
    *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
    v45 = "SelfReflectionAgent.%s resultCandidateState was not set";
LABEL_20:
    _os_log_impl(&dword_1DC659000, v41, v42, v45, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x1E12A2F50](v44, -1, -1);
    MEMORY[0x1E12A2F50](v43, -1, -1);
LABEL_21:

    *(a1 + 4) = 514;
    *a1 = 33686018;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 513;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    return;
  }

  v201 = v6;
  v206 = v12;
  v202 = v16;
  v207 = v4;
  v213 = v17;
  ExecutionOutput.hasCantUnderstandDialog.getter();
  v210 = v18;
  ExecutionOutput.hasCantDoDialog.getter();
  v209 = v19;
  ExecutionOutput.hasUnsupportedDialog.getter();
  v200 = v20;
  v21 = ExecutionOutput.catIdentifiers.getter();
  v22 = ExecutionOutput.catCategories.getter();
  if (one-time initialization token for conversationBridge != -1)
  {
    goto LABEL_175;
  }

  while (1)
  {
    v23 = type metadata accessor for Logger();
    v24 = __swift_project_value_buffer(v23, static Logger.conversationBridge);
    v25 = v213;
    swift_retain_n();

    v204 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    v28 = os_log_type_enabled(v26, v27);
    v214 = v21;
    v215 = v2;
    v208 = v22;
    if (v28)
    {
      LODWORD(v217) = v27;
      v29 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v219 = v212;
      *v29 = 136317442;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v219);
      *(v29 + 12) = 2080;
      v30 = (v13)();
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0xE000000000000000;
      }

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v219);

      *(v29 + 14) = v33;
      *(v29 + 22) = 1024;
      *(v29 + 24) = v210 & 1;
      *(v29 + 28) = 1024;
      *(v29 + 30) = v209 & 1;
      *(v29 + 34) = 1024;
      *(v29 + 36) = v200 & 1;
      *(v29 + 40) = 1024;
      v35 = *(*v25 + 904);
      v36 = v35(v34);
      v37 = v36;
      if (v36)
      {
        v38 = (*(*v36 + 264))(v36);

        if (v38 && (v39 = [v38 speechEvent], v38, (v39 - 30) <= 5))
        {
          v37 = dword_1DCA74614[(v39 - 30)];
        }

        else
        {
          v37 = 0;
        }
      }

      *(v29 + 42) = v37;

      *(v29 + 46) = 1024;
      v49 = v35(v48);
      if (v49)
      {
        v50 = (*(*v49 + 264))();

        v51 = v212;
        if (v50)
        {
          v52 = [v50 speechEvent];

          v53 = 0;
          if (v52 <= 0x10)
          {
            v53 = ((1 << v52) & 0x18100) != 0;
          }
        }

        else
        {
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
        v51 = v212;
      }

      *(v29 + 48) = v53;

      *(v29 + 52) = 2080;
      v54 = Set.description.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v219);

      *(v29 + 54) = v56;
      v21 = v214;
      *(v29 + 62) = 2080;
      v57 = Set.description.getter();
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v219);

      v2 = v215;
      *(v29 + 64) = v59;
      *(v29 + 72) = 2080;
      (*(*v2 + 296))(&v220, v60);
      v224 = v220;
      v225 = v221;
      v226 = v222;
      v227 = v223;
      outlined destroy of SelfReflectionResponse(&v224);
      v218 = v224;
      v61 = SelfReflectionAgentDecision.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v219);

      *(v29 + 74) = v13;
      _os_log_impl(&dword_1DC659000, v26, v217, "SelfReflectionAgent.%s requestId: %s hasCantUnderstandDialog: %{BOOL}d hasCantDoDialog: %{BOOL}d hasUnsupportedDialog: %{BOOL}d isFlexibleFollowUp: %{BOOL}d isVoiceTrigger: %{BOOL}d catIdentifiers: %s catCategories: %s previous mitigation result: %s", v29, 0x52u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v51, -1, -1);
      MEMORY[0x1E12A2F50](v29, -1, -1);
    }

    else
    {
    }

    v63 = v216;
    v64 = (*v2 + 248);
    v199 = *v64;
    v198 = v64;
    v65 = v199(v47);
    if (!v65)
    {
      goto LABEL_53;
    }

    if (*(v65 + OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes) != 1)
    {

      goto LABEL_53;
    }

    v66 = v65;
    if (!(*(*v213 + 384))())
    {

      goto LABEL_53;
    }

    if ((PommesInfo.isWebSearchFallback.getter() & 1) == 0 || *(v2 + 96) != 1)
    {
      goto LABEL_52;
    }

    v67 = (*v213 + 904);
    v68 = *v67;
    v69 = (*v67)();
    if (v69)
    {
      v13 = v69;
      v70 = (*(*v69 + 264))();

      if (v70)
      {
        v13 = [v70 speechEvent];

        if (v13 <= 0x23 && ((1 << v13) & 0xC40000000) != 0)
        {
          (*(**(v2 + 16) + 240))(v203, v202, 1, 8);

          *a1 = 16908803;
          *(a1 + 4) = 1;
          *(a1 + 8) = 0;
          *(a1 + 16) = 1;
          *(a1 + 24) = 0;
          *(a1 + 32) = 513;
          v72 = v208;
          *(a1 + 40) = v214;
          *(a1 + 48) = v72;
          return;
        }
      }
    }

    v73 = v68();
    if (v73)
    {
      v13 = v73;
      v74 = (*(*v73 + 264))();

      v63 = v216;
      if (v74)
      {
        v13 = [v74 speechEvent];

        v75 = v13 > 0x10 || ((1 << v13) & 0x18100) == 0;
        v21 = v214;
        if (!v75)
        {
          (*(**(v2 + 16) + 240))(v203, v202, 2, 8);

          v76 = 16908804;
LABEL_69:
          *a1 = v76;
          *(a1 + 4) = 256;
          *(a1 + 8) = 0;
          *(a1 + 16) = 1;
          goto LABEL_70;
        }

LABEL_52:

        goto LABEL_53;
      }

      v21 = v214;
    }

    else
    {

      v21 = v214;
      v63 = v216;
    }

LABEL_53:
    if ((v210 & 1) != 0 && *(v2 + 96) == 1)
    {
      v77 = (*v213 + 904);
      v78 = *v77;
      v13 = v77;
      v79 = (*v77)(v65);
      if (v79)
      {
        v80 = (*(*v79 + 264))();

        if (v80)
        {
          v81 = [v80 speechEvent];

          if (v81 <= 0x23 && ((1 << v81) & 0xC40000000) != 0)
          {
            (*(**(v2 + 16) + 240))(v203, v202, 1, 7);

            *a1 = 33685763;
            *(a1 + 4) = 1;
            *(a1 + 8) = 0;
            *(a1 + 16) = 1;
LABEL_70:
            *(a1 + 24) = 0;
            *(a1 + 32) = 513;
LABEL_164:
            v190 = v208;
            *(a1 + 40) = v21;
            *(a1 + 48) = v190;
            return;
          }
        }
      }

      v65 = v78();
      if (v65)
      {
        v83 = (*(*v65 + 264))();

        if (v83)
        {
          v84 = [v83 speechEvent];

          if (v84 <= 0x10 && ((1 << v84) & 0x18100) != 0)
          {
            (*(**(v2 + 16) + 240))(v203, v202, 2, 7);

            v76 = 33685764;
            goto LABEL_69;
          }
        }
      }
    }

    v86 = (*(*v213 + 896))(v65);
    if (v86)
    {
      v87 = (*(*v86 + 112))(v86);

      v88 = [v87 recognition];
      v89 = specialized SelfReflectionAgent.calculateSentenceConfidence(recognition:)(v88);
      v13 = v90;

      if ((v13 & 1) == 0)
      {
        v110 = [v87 audioAnalytics];
        v111 = v110;
        if (v110)
        {
          [v110 snr];
          v113 = v112;
        }

        else
        {
          v113 = 0;
        }

        v162 = [v87 recognition];
        v217 = v111;
        if (v162 && (v13 = v162, v163 = [v162 phrases], v13, v163))
        {
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for AFSpeechPhrase, 0x1E698D230);
          v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v13 >> 62)
          {
            v164 = __CocoaSet.count.getter();
          }

          else
          {
            v164 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v165 = v164 == 1;
        }

        else
        {
          v165 = 0;
        }

        v166 = Logger.logObject.getter();
        v167 = static os_log_type_t.debug.getter();
        v168 = os_log_type_enabled(v166, v167);
        LODWORD(v212) = v165;
        if (v168)
        {
          v169 = v217 == 0;
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          *&v220 = v171;
          *v170 = 136315906;
          *(v170 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v220);
          *(v170 + 12) = 2048;
          *(v170 + 14) = v89;
          *(v170 + 22) = 2080;
          *&v224 = v113;
          BYTE8(v224) = v169;
          v165 = v212;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
          v172 = String.init<A>(describing:)();
          v13 = v173;
          v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, &v220);

          *(v170 + 24) = v174;
          v2 = v215;
          *(v170 + 32) = 1024;
          *(v170 + 34) = v165;
          _os_log_impl(&dword_1DC659000, v166, v167, "SelfReflectionAgent.%s sentenceConfidence: %ld snr: %s isSingleWord: %{BOOL}d", v170, 0x26u);
          swift_arrayDestroy();
          v175 = v171;
          v63 = v216;
          MEMORY[0x1E12A2F50](v175, -1, -1);
          v176 = v170;
          v21 = v214;
          MEMORY[0x1E12A2F50](v176, -1, -1);
        }

        if (v89 > 400 || (v210 & 1) == 0 || v165)
        {
          v177 = v217;
          if (v89 <= 600 && ((v210 | v209) & 1) != 0)
          {
LABEL_163:
            LODWORD(v217) = v177 == 0;
            __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
            v184 = v89;
            v185 = v202;

            v186._countAndFlagsBits = 0xD000000000000024;
            v186._object = 0x80000001DCA878D0;
            v187 = v203;
            v188.value._countAndFlagsBits = v203;
            v188.value._object = v185;
            TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v186, v188);

            (*(**(v2 + 16) + 240))(v187, v185, 7, 7);

            *a1 = 5;
            v189 = v209 & 1;
            *(a1 + 1) = v210 & 1;
            *(a1 + 2) = v189;
            *(a1 + 3) = 514;
            *(a1 + 5) = 2;
            *(a1 + 8) = v184;
            *(a1 + 16) = 0;
            *(a1 + 24) = v113;
            *(a1 + 32) = v217;
            *(a1 + 33) = v212;
            goto LABEL_164;
          }
        }

        else
        {
          v205 = v89;
          v13 = *(v2 + 80);
          __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
          v178 = v202;

          v179._countAndFlagsBits = 0xD000000000000024;
          v179._object = 0x80000001DCA87900;
          v180 = v203;
          v181.value._countAndFlagsBits = v203;
          v181.value._object = v178;
          TrialExperimentationAssetManaging.emitTriggerLogging(codepathId:requestId:)(v179, v181);

          (*(*v2 + 296))(&v220, v182);
          v224 = v220;
          v225 = v221;
          v226 = v222;
          v227 = v223;
          outlined destroy of SelfReflectionResponse(&v224);
          if (v224 - 2 <= 4)
          {
            v183 = v217 == 0;
            (*(**(v2 + 16) + 240))(v180, v178, 3, 7);

            *a1 = 257;
            *(a1 + 2) = v209 & 1;
            *(a1 + 3) = 514;
            *(a1 + 5) = 2;
            *(a1 + 8) = v205;
            *(a1 + 16) = 0;
            *(a1 + 24) = v113;
            *(a1 + 32) = v183;
            *(a1 + 33) = 0;
            goto LABEL_164;
          }

          v63 = v216;
          v177 = v217;
          v89 = v205;
          if ((v210 | v209))
          {
            goto LABEL_163;
          }
        }
      }
    }

    v197 = a1;
    v91 = v21 + 56;
    v92 = 1 << *(v21 + 32);
    v93 = v92 < 64 ? ~(-1 << v92) : -1;
    v22 = v93 & *(v21 + 56);
    v94 = (v92 + 63) >> 6;

    v95 = 0;
    v212 = v21 + 56;
    v205 = v94;
LABEL_79:
    if (v22)
    {
      break;
    }

    while (1)
    {
      a1 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (a1 >= v94)
      {

        v196 = 0;
        goto LABEL_101;
      }

      v22 = *(v91 + 8 * a1);
      ++v95;
      if (v22)
      {
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    swift_once();
  }

  a1 = v95;
LABEL_84:
  v217 = *(*(v21 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v22)))));
  v96 = one-time initialization token for kAllowedFallbackToMightyPrefix;

  if (v96 != -1)
  {
    swift_once();
  }

  v22 &= v22 - 1;
  v97 = kAllowedFallbackToMightyPrefix;
  v98 = kAllowedFallbackToMightyPrefix + 56;
  v99 = 1 << *(kAllowedFallbackToMightyPrefix + 32);
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  else
  {
    v100 = -1;
  }

  v101 = v100 & *(kAllowedFallbackToMightyPrefix + 7);
  v102 = (v99 + 63) >> 6;

  v103 = 0;
  do
  {
    if (v101)
    {
      v104 = v103;
      goto LABEL_96;
    }

    do
    {
      v104 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
        goto LABEL_168;
      }

      if (v104 >= v102)
      {

        v95 = a1;
        v21 = v214;
        v2 = v215;
        v63 = v216;
        v91 = v212;
        v94 = v205;
        goto LABEL_79;
      }

      v101 = *&v98[8 * v104];
      v103 = (v103 + 1);
    }

    while (!v101);
    v103 = v104;
LABEL_96:
    v105 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v106 = (*(v97 + 6) + ((v104 << 10) | (16 * v105)));
    v107 = *v106;
    v108 = v106[1];

    v109._countAndFlagsBits = v107;
    v109._object = v108;
    v13 = String.hasPrefix(_:)(v109);
  }

  while ((v13 & 1) == 0);
  v21 = v214;

  v196 = 1;
  v2 = v215;
  v63 = v216;
  v91 = v212;
LABEL_101:
  v114 = 1 << *(v21 + 32);
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  else
  {
    v115 = -1;
  }

  v22 = v115 & *(v21 + 56);
  v116 = (v114 + 63) >> 6;

  v117 = 0;
  v205 = v116;
LABEL_106:
  if (v22)
  {
    a1 = v117;
LABEL_111:
    v217 = *(*(v21 + 48) + ((a1 << 10) | (16 * __clz(__rbit64(v22)))));
    v118 = one-time initialization token for kDeniedFallbackToMightyCatIds;

    if (v118 != -1)
    {
      swift_once();
    }

    v22 &= v22 - 1;
    v97 = kDeniedFallbackToMightyCatIds;
    v98 = kDeniedFallbackToMightyCatIds + 56;
    v119 = 1 << *(kDeniedFallbackToMightyCatIds + 32);
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    else
    {
      v120 = -1;
    }

    v101 = v120 & *(kDeniedFallbackToMightyCatIds + 7);
    v121 = (v119 + 63) >> 6;

    v103 = 0;
    while (v101)
    {
      v122 = v103;
LABEL_123:
      v123 = __clz(__rbit64(v101));
      v101 &= v101 - 1;
      v124 = (*(v97 + 6) + ((v122 << 10) | (16 * v123)));
      v125 = *v124;
      v126 = v124[1];

      v127._countAndFlagsBits = v125;
      v127._object = v126;
      v13 = String.hasPrefix(_:)(v127);

      if (v13)
      {

        v128 = 1;
        v63 = v216;
        goto LABEL_126;
      }
    }

    while (1)
    {
      v122 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v122 >= v121)
      {

        v117 = a1;
        v21 = v214;
        v2 = v215;
        v63 = v216;
        v91 = v212;
        v116 = v205;
        goto LABEL_106;
      }

      v101 = *&v98[8 * v122];
      v103 = (v103 + 1);
      if (v101)
      {
        v103 = v122;
        goto LABEL_123;
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:

    goto LABEL_170;
  }

  while (1)
  {
    a1 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      goto LABEL_174;
    }

    if (a1 >= v116)
    {
      break;
    }

    v22 = *(v91 + 8 * a1);
    ++v117;
    if (v22)
    {
      goto LABEL_111;
    }
  }

  v128 = 0;
LABEL_126:
  v129 = v206;
  dispatch thunk of NetworkAvailability.status.getter();
  v130 = v211;
  v131 = v129;
  v132 = v207;
  (*(v211 + 16))(v63, v131, v207);
  v133 = Logger.logObject.getter();
  v134 = static os_log_type_t.debug.getter();
  v135 = os_log_type_enabled(v133, v134);
  v97 = v197;
  LODWORD(a1) = v209;
  LODWORD(v217) = v128;
  if (v135)
  {
    a1 = v63;
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v224 = v137;
    *v136 = 136315906;
    *(v136 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v224);
    *(v136 + 12) = 1024;
    *(v136 + 14) = v196;
    *(v136 + 18) = 1024;
    *(v136 + 20) = v128;
    *(v136 + 24) = 2080;
    lazy protocol witness table accessor for type NetworkAvailability.Status and conformance NetworkAvailability.Status();
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    v140 = v139;
    v103 = *(v130 + 8);
    v141 = a1;
    LODWORD(a1) = v209;
    v103(v141, v132);
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, &v224);

    *(v136 + 26) = v142;
    _os_log_impl(&dword_1DC659000, v133, v134, "SelfReflectionAgent.%s hasAllowedFallbackToMightyPrefix: %{BOOL}d hasDeniedFallbackToMightyDialog: %{BOOL}d networkStatus: %s", v136, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v137, -1, -1);
    MEMORY[0x1E12A2F50](v136, -1, -1);
  }

  else
  {

    v103 = *(v130 + 8);
    v103(v63, v132);
  }

  v143 = v201;
  swift_beginAccess();
  v144 = static SelfReflectionUserDefaults._fallbackToMighty;
  v145 = off_1ECC94E18;
  v146 = byte_1ECC94E20;

  v147 = specialized SelfReflectionUserDefaultsProperty.wrappedValue.getter(v144, v145, v146);

  v98 = v214;
  if (v147 & 1) == 0 || *(v215 + 40) != 1 || (v149 = v207, (*(v211 + 104))(v143, *MEMORY[0x1E69D3620], v207), v150 = static NetworkAvailability.Status.== infix(_:_:)(), v148 = (v103)(v143, v149), (v150 & 1) == 0) || ((v217 | (a1 | v200) & v196 ^ 1))
  {
    v151 = v199(v148);
    if (v151)
    {
      v152 = v151[OBJC_IVAR____TtC14SiriKitRuntime18ExecutionInputInfo_executePommes];

      if (v152)
      {
        v153 = Logger.logObject.getter();
        v154 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v153, v154))
        {
          v155 = swift_slowAlloc();
          *v155 = 0;
          _os_log_impl(&dword_1DC659000, v153, v154, "SelfReflectionAgent. Executing with Pommes Response.", v155, 2u);
          MEMORY[0x1E12A2F50](v155, -1, -1);
        }

        v156 = ResultCandidateState.hasAlternativeSuggestion.getter();
        v157 = v208;
        if (v156)
        {
          v158 = Logger.logObject.getter();
          v159 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *&v220 = v161;
            *v160 = 136315138;
            *(v160 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v220);
            _os_log_impl(&dword_1DC659000, v158, v159, "SelfReflectionAgent.%s has Alternative", v160, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v161);
            MEMORY[0x1E12A2F50](v161, -1, -1);
            MEMORY[0x1E12A2F50](v160, -1, -1);
          }

          (*(**(v215 + 16) + 240))(v203, v202, 7, 9);

          v103(v206, v207);
          *v97 = 5;
          v97[1] = v210 & 1;
          v97[2] = a1 & 1;
          *(v97 + 3) = 514;
          goto LABEL_145;
        }

        v103(v206, v207);

LABEL_144:
        *v97 = 2;
        v97[1] = v210 & 1;
        v97[2] = a1 & 1;
        *(v97 + 3) = 514;
LABEL_145:
        v97[5] = 2;
        *(v97 + 1) = 0;
        v97[16] = 1;
        *(v97 + 3) = 0;
        *(v97 + 16) = 513;
        *(v97 + 5) = v98;
        *(v97 + 6) = v157;
        return;
      }

      v103(v206, v207);
    }

    else
    {

      v103(v206, v207);
    }

    v157 = v208;
    goto LABEL_144;
  }

  v101 = Logger.logObject.getter();
  v191 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v101, v191))
  {
    goto LABEL_169;
  }

  v192 = swift_slowAlloc();
  a1 = swift_slowAlloc();
  *&v220 = a1;
  *v192 = 136315650;
  *(v192 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ELL, 0x80000001DCA878B0, &v220);
  *(v192 + 12) = 1024;
  *(v192 + 14) = v209 & 1;
  *(v192 + 18) = 1024;
  *(v192 + 20) = v200 & 1;
  _os_log_impl(&dword_1DC659000, v101, v191, "SelfReflectionAgent.%s decided to fall back to Intelligence Flow. hasCantDoDialog: %{BOOL}d hasUnsupportedDialog: %{BOOL}d", v192, 0x18u);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v193 = a1;
  LOBYTE(a1) = v209;
  v97 = v197;
  MEMORY[0x1E12A2F50](v193, -1, -1);
  MEMORY[0x1E12A2F50](v192, -1, -1);

LABEL_170:
  v103(v206, v207);
  *v97 = 518;
  v97[2] = a1 & 1;
  *(v97 + 3) = 514;
  v97[5] = 2;
  *(v97 + 1) = 0;
  v97[16] = 1;
  *(v97 + 3) = 0;
  *(v97 + 16) = 513;
  v194 = v208;
  *(v97 + 5) = v98;
  *(v97 + 6) = v194;
}

uint64_t SelfReflectionAgent.requestId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

uint64_t SelfReflectionAgentDecision.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (v1 == 2)
    {
      return 1701736302;
    }

    if (v1 == 3)
    {
      return 0x65726F6E6769;
    }
  }

  else
  {
    switch(v1)
    {
      case 4u:
        return 0x557373696D736964;
      case 5u:
        return 0x7469646532706174;
      case 6u:
        return 0xD00000000000001ALL;
    }
  }

  strcpy(v5, "askToRepeat(");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1E12A1580](v3, v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return v5[0];
}

uint64_t destroy for ConversationService.EagerResult(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v6 = type metadata accessor for ServerFallbackReason();
    v7 = *(*(v6 - 8) + 8);
    v8 = v6;
    v9 = a1;
LABEL_11:

    return v7(v9, v8);
  }

  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMd, &_s14SiriKitRuntime21ConversationUserInputC_AA06RemoteD6ClientC0aB4Flow0F0VSgtMR) + 64);
    v5 = type metadata accessor for Input();
    v10 = *(v5 - 8);
    result = (*(v10 + 48))(a1 + v4, 1, v5);
    if (result)
    {
      return result;
    }

    v7 = *(v10 + 8);
    v9 = a1 + v4;
    v8 = v5;
    goto LABEL_11;
  }
}

uint64_t ConversationUserInput.__deallocating_deinit()
{
  ConversationUserInput.deinit();

  return swift_deallocClassInstance();
}

uint64_t ConversationUserInput.deinit()
{

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_mitigationDecision, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMd, &_s16SiriMessageTypes010TTResponseB0C18MitigationDecisionOSgMR);

  v1 = OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_asrLocation;
  v2 = type metadata accessor for ExecutionLocation();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_nlLocation, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime21ConversationUserInput_flowRedirectContext, &_s11SiriKitFlow0C15RedirectContextOSgMd, &_s11SiriKitFlow0C15RedirectContextOSgMR);
  return v0;
}

uint64_t NLResponse.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlResponseStatusCode;
  v2 = type metadata accessor for Siri_Nlu_External_ResponseStatus.StatusCode();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_languageVariantResult, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMd, &_s12SiriNLUTypes0A35_Nlu_External_LanguageVariantResultVSgMR);

  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_serverFallbackReason, &_s16SiriMessageTypes20ServerFallbackReasonOSgMd, &_s16SiriMessageTypes20ServerFallbackReasonOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10NLResponse_nlRoutingDecision, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMd, &_s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0OSgMR);

  return swift_deallocClassInstance();
}

uint64_t PommesInfo.__deallocating_deinit()
{
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesError, &_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR);
  outlined destroy of ReferenceResolutionClientProtocol?(v0 + OBJC_IVAR____TtC14SiriKitRuntime10PommesInfo_pommesSearchReason, &_s20SiriInformationTypes18PommesSearchReasonOSgMd, &_s20SiriInformationTypes18PommesSearchReasonOSgMR);

  return swift_deallocClassInstance();
}

void specialized static ExecutionContextUpdate.synchronizePromptContexts(pommesContext:nativeFlowContextCommand:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v63 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v70 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PommesContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v11[6];
  v15 = v68(a1, 1, v10, v12);
  v69 = a1;
  if (!v15)
  {
    v65 = v11[2];
    v16 = v65(v14, a1, v10);
    v66 = MEMORY[0x1E12A0B80](v16);
    v18 = v17;
    v64 = v11[1];
    v64(v14, v10);
    if (v18 >> 60 != 15)
    {
      v70 = v18;
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static Logger.executor);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DC659000, v33, v34, "Propagating PommesContext Pegasus conversation context to NativeFlowContextUpdate", v35, 2u);
        MEMORY[0x1E12A2F50](v35, -1, -1);
      }

      if (a2)
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
        [a2 setPegasusConversationContext_];
      }

      v37 = v69;
      if (!(v68)(v69, 1, v10))
      {
        v65(v14, v37, v10);
        v38 = PommesContext.exportPromptContextData()();
        v40 = v39;
        v64(v14, v10);
        if (v40 >> 60 != 15)
        {
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&dword_1DC659000, v55, v56, "Propagating PommesContext prompt context data to NativeFlowContextUpdate", v57, 2u);
            MEMORY[0x1E12A2F50](v57, -1, -1);
          }

          if (!a2)
          {
            outlined consume of Data?(v66, v70);
            outlined consume of Data?(v38, v40);
            return;
          }

          v43 = Data._bridgeToObjectiveC()().super.isa;
          [a2 setPromptContextProto_];
          outlined consume of Data?(v66, v70);
          v58 = v38;
          v59 = v40;
LABEL_39:
          outlined consume of Data?(v58, v59);

          return;
        }
      }

      v41 = a2;
      v42 = a2;
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v43, v44))
      {
LABEL_38:
        v58 = v66;
        v59 = v70;
        goto LABEL_39;
      }

      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v71 = v46;
      *v45 = 136315138;
      if (v41)
      {
        v47 = [v42 promptContextProto];
        if (v47)
        {
          v48 = v47;
          v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

LABEL_37:
          *&v72 = v41;
          *(&v72 + 1) = v50;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
          v60 = String.init<A>(describing:)();
          v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v71);

          *(v45 + 4) = v62;
          _os_log_impl(&dword_1DC659000, v43, v44, "No PommesContext prompt context data. Leaving existing: %s", v45, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          MEMORY[0x1E12A2F50](v46, -1, -1);
          MEMORY[0x1E12A2F50](v45, -1, -1);
          goto LABEL_38;
        }

        v41 = 0;
      }

      v50 = 0xF000000000000000;
      goto LABEL_37;
    }
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.executor);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  v22 = a2;
  if (os_log_type_enabled(v20, v21))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DC659000, v20, v21, "Propagating NativeFlowContextUpdate prompt context to PommesContext", v23, 2u);
    MEMORY[0x1E12A2F50](v23, -1, -1);
  }

  if (v22 && (v24 = [v22 promptContextProto]) != 0)
  {
    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v74 = 0;
    v72 = 0u;
    v73 = 0u;
    outlined copy of Data._Representation(v26, v28);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Parse.DirectInvocation and conformance Parse.DirectInvocation(&lazy protocol witness table cache variable for type Com_Apple_Siri_Product_Proto_PromptContext and conformance Com_Apple_Siri_Product_Proto_PromptContext, MEMORY[0x1E69D1500], MEMORY[0x1E69D14F8]);
    Message.init(serializedData:extensions:partial:options:)();
    v51 = v70;
    (*(v70 + 56))(v7, 0, 1, v8);
    (*(v51 + 32))(v67, v7, v8);
    if (!(v68)(v69, 1, v10))
    {
      PommesContext.update(with:)();
    }

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1DC659000, v52, v53, "Applied NFCU promptContext to PommesContext", v54, 2u);
      MEMORY[0x1E12A2F50](v54, -1, -1);

      outlined consume of Data._Representation(v26, v28);
    }

    else
    {
      outlined consume of Data._Representation(v26, v28);
    }

    (*(v51 + 8))(v67, v8);
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "Unable to apply NFCU promptContext to PommesContext; either no NFCU, no promptContextProto, or serialization error", v31, 2u);
      MEMORY[0x1E12A2F50](v31, -1, -1);
    }
  }
}

uint64_t AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AceServiceInvokerImpl.publish(executionOutput:), 0, 0);
}

uint64_t AceServiceInvokerImpl.publish(executionOutput:)()
{
  v28 = v0;
  v1 = *(v0[4] + 152);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.executor);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "Attempting to submit a context update on an invalidated AceServiceInvoker. Throwing BargeInError", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    v10 = v0[3];
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = one-time initialization token for shared;

    v13 = v10;
    if (v12 != -1)
    {
      swift_once();
    }

    v15 = v0[4];
    v14 = v0[5];
    v16 = v0[3];
    v17 = static ConversationActor.shared;
    v18 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type ConversationActor and conformance ConversationActor, 255, type metadata accessor for ConversationActor, &protocol conformance descriptor for ConversationActor);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v15;
    v19[5] = v16;

    v20 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCSo13SABaseCommandCSg_Tt2g5Tm(0, 0, v14, &async function pointer to partial apply for closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v19, &_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v0[6] = v20;
    v21 = *(v15 + 160);
    v0[7] = v21;
    v22 = *(v21 + 16);
    os_unfair_lock_lock((v22 + 24));
    partial apply for closure #1 in SubmissionTaskRegistry.register(_:)((v22 + 16), &v27);
    os_unfair_lock_unlock((v22 + 24));

    v23 = swift_task_alloc();
    v0[8] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    *v23 = v0;
    v23[1] = AceServiceInvokerImpl.publish(executionOutput:);
    v26 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 2, v20, v24, v25, v26);
  }
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = AceServiceInvokerImpl.publish(executionOutput:);
  }

  else
  {

    v3 = AceServiceInvokerImpl.publish(executionOutput:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v5 = v0;
  v1 = *(*(v0 + 56) + 16);
  os_unfair_lock_lock(v1 + 6);
  partial apply for closure #1 in SubmissionTaskRegistry.unregister(_:)(&v4);
  os_unfair_lock_unlock(v1 + 6);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DC6B48B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t closure #1 in SubmissionTaskRegistry.register(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;

  result = specialized _NativeSet.update(with:isUnique:)(v5, isUniquelyReferenced_nonNull_native);
  *a1 = v7;
  *a2 = result;
  return result;
}

uint64_t partial apply for closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(a1, v4, v5, v7, v6);
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[12] = a1;
  v6 = type metadata accessor for CancellationError();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static ConversationActor.shared;
  v5[18] = static ConversationActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v7, 0);
}

uint64_t closure #2 in AceServiceInvokerImpl.publish(executionOutput:)()
{
  v79 = v0;
  v78[1] = *MEMORY[0x1E69E9840];
  if (*(*(v0 + 104) + 24))
  {
    v1 = 0xEF6563697665446ELL;
  }

  else
  {
    v1 = 0x80000001DCA7AA10;
  }

  if (*(*(v0 + 104) + 24) == 1 && v1 == 0xEF6563697665446ELL)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v4 = *(v0 + 104);
  v5 = *(v4 + 72);
  *(v0 + 152) = v5;
  v6 = *(v4 + 80);
  *(v0 + 160) = v6;
  if (!v6 || (v7 = *(*(v0 + 112) + OBJC_IVAR___SKRExecutionOutput_contextUpdate), (*(v0 + 168) = v7) == 0))
  {
LABEL_38:
    v71 = *(v0 + 104);
    v72 = *(v0 + 112);
    v73 = swift_allocObject();
    *(v0 + 272) = v73;
    *(v73 + 16) = v71;
    *(v73 + 24) = v72;

    v74 = v72;
    v75 = swift_task_alloc();
    *(v0 + 280) = v75;
    *v75 = v0;
    v75[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v73);
  }

  v8 = *&v7[OBJC_IVAR___SKRExecutionContextUpdate_provideContextCommand];
  *(v0 + 176) = v8;
  if (v8)
  {
    v9 = one-time initialization token for executor;
    v10 = v7;
    v11 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    *(v0 + 184) = __swift_project_value_buffer(v12, static Logger.executor);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v78[0] = v16;
      *v15 = 136315138;
      *(v0 + 32) = v5;
      *(v0 + 40) = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, v78);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1DC659000, v13, v14, "Sending legacy SACFProvideContext to invocation device ID=%s, since this is a server request", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E12A2F50](v16, -1, -1);
      MEMORY[0x1E12A2F50](v15, -1, -1);
    }

    *(v0 + 80) = *(v0 + 104);
    v20 = swift_task_alloc();
    *(v0 + 192) = v20;
    v21 = type metadata accessor for AceServiceInvokerImpl();
    v22 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
    v24 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v23, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
    *v20 = v0;
    v20[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v25 = v24;
    v26 = v11;
    v27 = v21;
    v28 = v22;
    goto LABEL_19;
  }

  v29 = *(v4 + 104);
  v30 = v7;
  if ((v29 & 1) == 0)
  {
    if (*&v30[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {
      v59 = v30;

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v60);
    }

    else
    {
    }

    goto LABEL_38;
  }

  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  *(v0 + 216) = __swift_project_value_buffer(v31, static Logger.executor);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = *(v0 + 152);
    v34 = *(v0 + 160);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78[0] = v37;
    *v36 = 136315138;
    *(v0 + 16) = v35;
    *(v0 + 24) = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v38 = String.init<A>(describing:)();
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v78);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DC659000, v32, v33, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E12A2F50](v37, -1, -1);
    MEMORY[0x1E12A2F50](v36, -1, -1);
  }

  v41 = *(v0 + 168);
  v42 = objc_opt_self();
  *(v0 + 56) = 0;
  v43 = [v42 archivedDataWithRootObject:v41 requiringSecureCoding:1 error:v0 + 56];
  v44 = *(v0 + 56);
  if (v43)
  {
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);
    v47 = *(v0 + 104);
    v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    *(v0 + 224) = v48;
    *(v0 + 232) = v50;
    v51 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
    *(v0 + 240) = v51;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v51 setExecutionContextUpdate_];

    v53 = MEMORY[0x1E12A1410](v46, v45);
    [v51 setRemoteDeviceAssistantId_];

    AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v51, 1);
    *(v0 + 64) = v47;
    v54 = swift_task_alloc();
    *(v0 + 248) = v54;
    v55 = type metadata accessor for AceServiceInvokerImpl();
    v56 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
    v58 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v57, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
    *v54 = v0;
    v54[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);
    v25 = v58;
    v26 = v51;
    v27 = v55;
    v28 = v56;
LABEL_19:

    return MEMORY[0x1EEE39A98](v26, v27, v28, v25);
  }

  v61 = *(v0 + 168);
  v62 = v44;
  v63 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *(v0 + 48) = v63;
  v64 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v31, static Logger.ace);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1DC659000, v65, v66, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v67, 2u);
      MEMORY[0x1E12A2F50](v67, -1, -1);
    }

    v69 = *(v0 + 128);
    v68 = *(v0 + 136);
    v70 = *(v0 + 120);

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();
    (*(v69 + 8))(v68, v70);
  }

  else
  {

    swift_willThrow();
  }

  v76 = *(v0 + 8);

  return v76();
}

{
  v63 = v0;
  v62[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 200);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62[0] = v8;
    *v7 = 136315138;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v62);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v2, v3, "Got response from SACFProvideContext: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
  }

  if (*(*(v0 + 104) + 104) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v15, static Logger.executor);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136315138;
      *(v0 + 16) = v19;
      *(v0 + 24) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v62);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v16, v17, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v25 = *(v0 + 168);
    v26 = objc_opt_self();
    *(v0 + 56) = 0;
    v27 = [v26 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v0 + 56];
    v28 = *(v0 + 56);
    if (v27)
    {
      v30 = *(v0 + 152);
      v29 = *(v0 + 160);
      v31 = *(v0 + 104);
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(v0 + 224) = v32;
      *(v0 + 232) = v34;
      v35 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
      *(v0 + 240) = v35;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v35 setExecutionContextUpdate_];

      v37 = MEMORY[0x1E12A1410](v30, v29);
      [v35 setRemoteDeviceAssistantId_];

      AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v35, 1);
      *(v0 + 64) = v31;
      v38 = swift_task_alloc();
      *(v0 + 248) = v38;
      v39 = type metadata accessor for AceServiceInvokerImpl();
      v40 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
      v42 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v41, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
      *v38 = v0;
      v38[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

      return MEMORY[0x1EEE39A98](v35, v39, v40, v42);
    }

    else
    {
      v45 = *(v0 + 168);
      v46 = v28;
      v47 = _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v0 + 48) = v47;
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v15, static Logger.ace);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1DC659000, v49, v50, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v51, 2u);
          MEMORY[0x1E12A2F50](v51, -1, -1);
        }

        v53 = *(v0 + 128);
        v52 = *(v0 + 136);
        v54 = *(v0 + 120);

        type metadata accessor for BargeInError();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
        swift_allocError();
        BargeInError.init(rawError:)();
        swift_willThrow();
        (*(v53 + 8))(v52, v54);
      }

      else
      {

        swift_willThrow();
      }

      v60 = *(v0 + 8);

      return v60();
    }
  }

  else
  {
    v43 = *(v0 + 168);
    if (*&v43[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v44);
    }

    else
    {
    }

    v55 = *(v0 + 104);
    v56 = *(v0 + 112);
    v57 = swift_allocObject();
    *(v0 + 272) = v57;
    *(v57 + 16) = v55;
    *(v57 + 24) = v56;

    v58 = v56;
    v59 = swift_task_alloc();
    *(v0 + 280) = v59;
    *v59 = v0;
    v59[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v57);
  }
}

{
  v27 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 168);
  if (v4)
  {
    v24 = *(v0 + 232);
    v25 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26[0] = v10;
    *v9 = 136315138;
    v23 = v6;
    v11 = v5;
    v12 = [v11 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v26);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DC659000, v2, v3, "Got response from RemoteExecutionContextUpdate: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12A2F50](v10, -1, -1);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    outlined consume of Data._Representation(v7, v24);
  }

  else
  {
    outlined consume of Data._Representation(*(v0 + 224), *(v0 + 232));
  }

  v17 = *(v0 + 104);
  v18 = *(v0 + 112);
  v19 = swift_allocObject();
  *(v0 + 272) = v19;
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;

  v20 = v18;
  v21 = swift_task_alloc();
  *(v0 + 280) = v21;
  *v21 = v0;
  v21[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

  return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v19);
}

{
  v63 = v0;
  v62[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 208);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62[0] = v8;
    *v7 = 136315138;
    *(v0 + 88) = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v62);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v3, v4, "Error sending SACFProvideContext: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    MEMORY[0x1E12A2F50](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 176);
  }

  if (*(*(v0 + 104) + 104) == 1)
  {
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    *(v0 + 216) = __swift_project_value_buffer(v15, static Logger.executor);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 152);
      v18 = *(v0 + 160);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v62[0] = v21;
      *v20 = 136315138;
      *(v0 + 16) = v19;
      *(v0 + 24) = v18;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v62);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DC659000, v16, v17, "Sending RemoteExecutionContextUpdate to invocation device ID=%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E12A2F50](v21, -1, -1);
      MEMORY[0x1E12A2F50](v20, -1, -1);
    }

    v25 = *(v0 + 168);
    v26 = objc_opt_self();
    *(v0 + 56) = 0;
    v27 = [v26 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v0 + 56];
    v28 = *(v0 + 56);
    if (v27)
    {
      v30 = *(v0 + 152);
      v29 = *(v0 + 160);
      v31 = *(v0 + 104);
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(v0 + 224) = v32;
      *(v0 + 232) = v34;
      v35 = [objc_allocWithZone(MEMORY[0x1E69C7998]) init];
      *(v0 + 240) = v35;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v35 setExecutionContextUpdate_];

      v37 = MEMORY[0x1E12A1410](v30, v29);
      [v35 setRemoteDeviceAssistantId_];

      AceServiceInvokerImpl.addMissingCommandIds(_:setRefId:)(v35, 1);
      *(v0 + 64) = v31;
      v38 = swift_task_alloc();
      *(v0 + 248) = v38;
      v39 = type metadata accessor for AceServiceInvokerImpl();
      v40 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SABaseCommand, 0x1E69C7738);
      v42 = lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type AceServiceInvokerImpl and conformance AceServiceInvokerImpl, v41, type metadata accessor for AceServiceInvokerImpl, &protocol conformance descriptor for AceServiceInvokerImpl);
      *v38 = v0;
      v38[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

      return MEMORY[0x1EEE39A98](v35, v39, v40, v42);
    }

    else
    {
      v45 = *(v0 + 168);
      v46 = v28;
      v47 = _convertNSErrorToError(_:)();

      swift_willThrow();
      *(v0 + 48) = v47;
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      if (swift_dynamicCast())
      {

        if (one-time initialization token for ace != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v15, static Logger.ace);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_1DC659000, v49, v50, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v51, 2u);
          MEMORY[0x1E12A2F50](v51, -1, -1);
        }

        v53 = *(v0 + 128);
        v52 = *(v0 + 136);
        v54 = *(v0 + 120);

        type metadata accessor for BargeInError();
        lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
        swift_allocError();
        BargeInError.init(rawError:)();
        swift_willThrow();
        (*(v53 + 8))(v52, v54);
      }

      else
      {

        swift_willThrow();
      }

      v60 = *(v0 + 8);

      return v60();
    }
  }

  else
  {
    v43 = *(v0 + 168);
    if (*&v43[OBJC_IVAR___SKRExecutionContextUpdate_rrEntities])
    {

      AceServiceInvokerImpl.donateEntitiesLocallyIfNeeded(_:)(v44);
    }

    else
    {
    }

    v55 = *(v0 + 104);
    v56 = *(v0 + 112);
    v57 = swift_allocObject();
    *(v0 + 272) = v57;
    *(v57 + 16) = v55;
    *(v57 + 24) = v56;

    v58 = v56;
    v59 = swift_task_alloc();
    *(v0 + 280) = v59;
    *v59 = v0;
    v59[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

    return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v57);
  }
}

{
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = v0[33];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v6 = v0[29];
    v7 = v0[28];
    v23 = v0[30];
    v24 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315138;
    v0[9] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v25);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DC659000, v3, v4, "Error sending RemoteExecutionContextUpdate: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
    outlined consume of Data._Representation(v7, v6);
  }

  else
  {
    v14 = v0[33];
    v15 = v0[30];
    v16 = v0[21];
    outlined consume of Data._Representation(v0[28], v0[29]);
  }

  v17 = v0[13];
  v18 = v0[14];
  v19 = swift_allocObject();
  v0[34] = v19;
  *(v19 + 16) = v17;
  *(v19 + 24) = v18;

  v20 = v18;
  v21 = swift_task_alloc();
  v0[35] = v21;
  *v21 = v0;
  v21[1] = closure #2 in AceServiceInvokerImpl.publish(executionOutput:);

  return specialized withCancellableContinuation<A>(body:)(partial apply for closure #1 in closure #2 in AceServiceInvokerImpl.publish(executionOutput:), v19);
}

{

  v1 = *(v0 + 288);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    if (one-time initialization token for ace != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.ace);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DC659000, v4, v5, "AceServiceInvokerImpl: context publishing response failed because user barged in. Will throw BargeInError.", v6, 2u);
      MEMORY[0x1E12A2F50](v6, -1, -1);
    }

    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 120);

    type metadata accessor for BargeInError();
    lazy protocol witness table accessor for type PeerInfoProvider and conformance PeerInfoProvider(&lazy protocol witness table cache variable for type BargeInError and conformance BargeInError, 255, MEMORY[0x1E69CFDF8], MEMORY[0x1E69CFE00]);
    swift_allocError();
    BargeInError.init(rawError:)();
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
  }

  else
  {

    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DC6B551C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t specialized withCancellableContinuation<A>(body:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCySo13SABaseCommandCSgGMd, &_s14SiriKitRuntime19ManagedContinuationCySo13SABaseCommandCSgGMR);
  v5 = swift_allocObject();
  v2[3] = v5;
  v6 = *(*v5 + 88);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo13SABaseCommandCSgs5Error_pGMd, &_sScCySo13SABaseCommandCSgs5Error_pGMR);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = v5 + *(*v5 + 96);
  *v8 = 0;
  *(v8 + 8) = -1;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v5 + *(*v5 + 104)) = v9;
  v10 = v9;
  v11 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v10 setName_];

  v12 = swift_task_alloc();
  v2[4] = v12;
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_task_alloc();
  v2[5] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SABaseCommandCSgMd, &_sSo13SABaseCommandCSgMR);
  *v13 = v2;
  v13[1] = specialized withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE20](v2 + 2, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v12, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v5, v14);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime19ManagedContinuationCyAA18RemoteConversation_pSgGMd, &_s14SiriKitRuntime19ManagedContinuationCyAA18RemoteConversation_pSgGMR);
  v5 = swift_allocObject();
  v2[4] = v5;
  v6 = *(*v5 + 88);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMd, &_sScCy14SiriKitRuntime18RemoteConversation_pSgs5Error_pGMR);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = v5 + *(*v5 + 96);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = -1;
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v5 + *(*v5 + 104)) = v9;
  v10 = v9;
  v11 = MEMORY[0x1E12A1410](0xD000000000000027, 0x80000001DCA7D620);
  [v10 setName_];

  v12 = swift_task_alloc();
  v2[5] = v12;
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_task_alloc();
  v2[6] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14SiriKitRuntime18RemoteConversation_pSgMd, &_s14SiriKitRuntime18RemoteConversation_pSgMR);
  *v13 = v2;
  v13[1] = specialized withCancellableContinuation<A>(body:);

  return MEMORY[0x1EEE6DE20](v2 + 2, &async function pointer to partial apply for specialized closure #2 in withCancellableContinuation<A>(body:), v12, partial apply for specialized closure #1 in withCancellableContinuation<A>(body:), v5, v14);
}

uint64_t outlined init with copy of Conversation.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[16] = a7;
  v8[17] = v7;
  v8[14] = a5;
  v8[15] = a6;
  v8[12] = a3;
  v8[13] = a4;
  v8[10] = a1;
  v8[11] = a2;
  return MEMORY[0x1EEE6DFA0](Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:), v7, 0);
}

uint64_t Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:)()
{
  v40 = v0;
  v1 = v0[13];
  if (!v1)
  {
LABEL_37:
    v35 = v0[1];

    return v35();
  }

  if (static Task<>.isCancelled.getter())
  {

    goto LABEL_37;
  }

  v2 = v0[15];
  if (v2)
  {
LABEL_7:

    SiriEnvironment.currentRequest.getter();

    SiriEnvironment.currentRequest.getter();

    v3 = CurrentRequest.overrideProperties.getter();

    if (v3)
    {
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Logger.executor);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DC659000, v5, v6, "Applying overrides on request", v7, 2u);
        MEMORY[0x1E12A2F50](v7, -1, -1);
      }

      static CurrentRequestOverrides.applyOverrides(on:overrides:)();

      v8 = v0[16];
      if (v8)
      {
LABEL_16:
        if (v2)
        {
          v9 = swift_allocObject();
          *(v9 + 16) = v2;
          *(v9 + 24) = v8;
          type metadata accessor for AnyChildCompletion();
          swift_allocObject();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v8 = AnyChildCompletion.init<A>(_:)();
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {

      v8 = v0[16];
      if (v8)
      {
        goto LABEL_16;
      }
    }

    if (v2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v0[12])
  {

    v2 = dispatch thunk of AnyFlow.siriEnvironment.getter();

    goto LABEL_7;
  }

  v8 = v0[16];
LABEL_21:

  v2 = 0;
LABEL_22:
  v0[18] = v2;
  v0[19] = v8;
  v10 = v0[17];

  dispatch thunk of AnyFlow.siriEnvironment.setter();
  v11 = *(v10 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_jetsamHelper);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v11);
  OS_dispatch_semaphore.signal()();
  v12 = SiriEnvironment.currentProcess.getter();
  v13 = dispatch thunk of CurrentProcess.idleTracker.getter();

  if (v13)
  {
    v14 = dispatch thunk of IdleTracker.track(name:)();
  }

  else
  {
    v14 = 0;
  }

  v15 = v0[12];
  *(v0[17] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_idleTrackerActivity) = v14;

  v16 = v0[14];
  if (v15)
  {

    if (!v16)
    {

LABEL_30:
      v18 = v17;
      v37 = v17;
      goto LABEL_31;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
      goto LABEL_30;
    }
  }

  v37 = v17;
  v18 = v16;
LABEL_31:
  v0[20] = v18;
  v19 = v0[17];
  v36 = v0[12];
  v20 = *(v19 + 112);
  v21 = *(v19 + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_pluginInfo);
  type metadata accessor for FlowAgent();
  v22 = swift_allocObject();

  v23 = v21;
  swift_defaultActor_initialize();
  *(v22 + 130) = 0;
  *(v22 + 136) = 0;
  *(v22 + 144) = 0;
  *(v22 + 112) = v1;
  *(v22 + 120) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow010PreparableC0_pMd, &_s11SiriKitFlow010PreparableC0_pMR);

  dispatch thunk of AnyFlow.unbox<A>(as:)();

  v24 = v0[5] != 0;
  outlined destroy of ReferenceResolutionClientProtocol?((v0 + 2), &_s11SiriKitFlow010PreparableC0_pSgMd, &_s11SiriKitFlow010PreparableC0_pSgMR);
  *(v22 + 128) = v24;
  *(v22 + 129) = v24;
  *(v22 + 152) = v18;
  *(v22 + 160) = v23;
  v39 = v22;
  v25 = *(*v20 + 208);

  v25(&v39, v36);

  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12SiriNLUTypes0B18_Nlu_External_TaskV_Tt1g5(v18, v37);

  if ((v26 & 1) != 0 || (v27 = v0[17] + OBJC_IVAR____TtC14SiriKitRuntime12Conversation_taskObserver, swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[21] = Strong) == 0))
  {

    goto LABEL_37;
  }

  v29 = *(v27 + 8);
  ObjectType = swift_getObjectType();
  v38 = (*(v29 + 24) + **(v29 + 24));
  v31 = swift_task_alloc();
  v0[22] = v31;
  *v31 = v0;
  v31[1] = Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:);
  v32 = v0[10];
  v33 = v0[11];

  return v38(v18, v32, v33, ObjectType, v29);
}

{
  v1 = *(*v0 + 136);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](Conversation.push(rcId:parentNode:flow:continuedTasks:parentEnvironment:completion:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}