void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19REMaterialAssetTypeV_10RealityKit8Material_ps13OpaquePointerV_AE26__RKMaterialParameterBlockV0G10Foundation19DirectUniformsStateOSgtctGMd, &_ss23_ContiguousArrayStorageCySo19REMaterialAssetTypeV_10RealityKit8Material_ps13OpaquePointerV_AE26__RKMaterialParameterBlockV0G10Foundation19DirectUniformsStateOSgtctGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19REMaterialAssetTypeV_yyctMd, &_sSo19REMaterialAssetTypeV_yyctMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation22MeshInstancesComponentV4PartVSgGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22MeshInstancesComponentV4PartVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation22MeshInstancesComponentV4PartVSgMd, &_s17RealityFoundation22MeshInstancesComponentV4PartVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit27__RKRuntimeSceneCoordinatorC12WeakObserver33_896B2FD40EBECAD6FA53729956690E0BLLVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit27__RKRuntimeSceneCoordinatorC12WeakObserver33_896B2FD40EBECAD6FA53729956690E0BLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Error_pGMd, &_ss23_ContiguousArrayStorageCys5Error_pGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit23__RKActiveSceneObserver_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit23__RKActiveSceneObserver_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit23__RKActiveSceneObserver_pMd, &_s10RealityKit23__RKActiveSceneObserver_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySS_SStGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySS_SStGtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySS_SStGtMd, &_sSS_SaySS_SStGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAH_pGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAH_pGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 304);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[38 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 304 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_So9MTLBuffer_pSoAF_pGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAIGGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAIGGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 432);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[54 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 432 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V23CustomDeformerParameterVy_SRys5UInt8VGSryAGGGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC20PiecewiseBezierCurveAELLVGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC20PiecewiseBezierCurveAELLVGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA20PiecewiseBezierCurveACLLVGMd, &_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA20PiecewiseBezierCurveACLLVGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt64V_10RealityKit6EntityCtGMd, &_ss23_ContiguousArrayStorageCys6UInt64V_10RealityKit6EntityCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V_10RealityKit6EntityCtMd, &_ss6UInt64V_10RealityKit6EntityCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9__REAssetC_Say0D10Foundation02__F10DescriptorCGs13OpaquePointerVtGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtMd, &_s10RealityKit9__REAssetC_Say0A10Foundation02__C10DescriptorCGs13OpaquePointerVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC22PiecewiseLinearPolygonAELLVySrys5SIMD2VySdGGGGGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAC22PiecewiseLinearPolygonAELLVySrys5SIMD2VySdGGGGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA22PiecewiseLinearPolygonACLLVySrys5SIMD2VySdGGGGMd, &_s17RealityFoundation5Shape33_958D9063BE5145611DD1DCE0DF8621CFLLVyAA22PiecewiseLinearPolygonACLLVySrys5SIMD2VySdGGGGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo5RESRTaGMd, &_ss23_ContiguousArrayStorageCySo5RESRTaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9TransformVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation15JointTransformsVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15JointTransformsVGMR, &type metadata for JointTransforms);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation17BlendShapeWeightsVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation17BlendShapeWeightsVGMR, &type metadata for BlendShapeWeights);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation27SpatialPhotoStereoAggressorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation27SpatialPhotoStereoAggressorVGMR, &type metadata for SpatialPhotoStereoAggressor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation21TriangleOpacityResultOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation21TriangleOpacityResultOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt64VGMd, &_ss23_ContiguousArrayStorageCys6UInt64VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPys4Int8VGGMd, &_ss23_ContiguousArrayStorageCySPys4Int8VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo34RESkeletalModelSpacePoseDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo34RESkeletalModelSpacePoseDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo24RESkeletalPoseDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo24RESkeletalPoseDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC8ObserverC3LogVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit6EntityC0D10FoundationE14LoadStatisticsC8ObserverC3LogVGMR, &type metadata for Entity.LoadStatistics.Observer.Log);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySPySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySPySPys4Int8VGGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo24REBlendWeightsDefinitionaGMd, &_ss23_ContiguousArrayStorageCySo24REBlendWeightsDefinitionaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation7ContactVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation7ContactVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8Level_v1VGMR, &type metadata for MeshResource.Level_v1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation20PiecewiseBezierCurve33_958D9063BE5145611DD1DCE0DF8621CFLLVGMR, &type metadata for PiecewiseBezierCurve);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySfGGMd, &_ss23_ContiguousArrayStorageCySaySfGGMR, &_sSaySfGMd, &_sSaySfGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation12PhysicsJoint_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12PhysicsJoint_pGMR, &_s17RealityFoundation12PhysicsJoint_pMd, &_s17RealityFoundation12PhysicsJoint_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMd, &_ss23_ContiguousArrayStorageCy10Foundation23LocalizedStringResourceVGMR, MEMORY[0x1E6968E10]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV17RotorTypeInternalOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV17RotorTypeInternalOGMR, type metadata accessor for AccessibilityComponent.RotorTypeInternal);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV13CustomContentVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation22AccessibilityComponentV13CustomContentVGMR, type metadata accessor for AccessibilityComponent.CustomContent);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR, &_s17RealityFoundation29StateMachineParameterProtocol_pMd, &_s17RealityFoundation29StateMachineParameterProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15ForceEffectBase_pGMR, &_s17RealityFoundation15ForceEffectBase_pMd, &_s17RealityFoundation15ForceEffectBase_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit8Material_pGMR, &_s10RealityKit8Material_pMd, &_s10RealityKit8Material_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit9Component_pGMd, &_ss23_ContiguousArrayStorageCy10RealityKit9Component_pGMR, &_s10RealityKit9Component_pMd, &_s10RealityKit9Component_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit34__RKEntityInteractionSpecificationVGMR, type metadata accessor for __RKEntityInteractionSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMR, &_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation13BlendTreeNode_pGMR, &_s17RealityFoundation13BlendTreeNode_pMd, &_s17RealityFoundation13BlendTreeNode_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit30__RKEntityTriggerSpecificationOGMR, type metadata accessor for __RKEntityTriggerSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x1E6968FB0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR, type metadata accessor for __RKEntityActionSpecification);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR, &_ss9CodingKey_pMd, &_ss9CodingKey_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySiGGMd, &_ss23_ContiguousArrayStorageCySaySiGGMR, &_sSaySiGMd, &_sSaySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo13simd_float4x4aGGMd, &_ss23_ContiguousArrayStorageCySaySo13simd_float4x4aGGMR, &_sSaySo13simd_float4x4aGMd, &_sSaySo13simd_float4x4aGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySo5RESRTaGGMd, &_ss23_ContiguousArrayStorageCySaySo5RESRTaGGMR, &_sSaySo5RESRTaGMd, &_sSaySo5RESRTaGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySSGGMd, &_ss23_ContiguousArrayStorageCySaySSGGMR, &_sSaySSGMd, &_sSaySSGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMd, &_ss23_ContiguousArrayStorageCySaySPys4Int8VGGGMR, &_sSaySPys4Int8VGGMd, &_sSaySPys4Int8VGGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pGMR, &_s17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pMd, &_s17RealityFoundation25_Proto_MeshDeformation_v1V8Deformer_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineConditionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineConditionProtocol_pGMR, &_s17RealityFoundation29StateMachineConditionProtocol_pMd, &_s17RealityFoundation29StateMachineConditionProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation36StateMachineCommandParameterProtocol_pGMR, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMd, &_s17RealityFoundation36StateMachineCommandParameterProtocol_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation19StateMachineCommand_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19StateMachineCommand_pGMR, &_s17RealityFoundation19StateMachineCommand_pMd, &_s17RealityFoundation19StateMachineCommand_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGGMR, &_sSay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMd, &_sSay17RealityFoundation34_Proto_BlendShapeMeshDescriptor_v1VGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation25PhotogrammetrySessionImplC10RequestMapC5Entry33_372E864D6FBFC56F64A9656CCD500B7CLLVGMR, type metadata accessor for PhotogrammetrySessionImpl.RequestMap.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit15__REAssetBundleV8AssetMapV15SceneDescriptorVGMR, type metadata accessor for __REAssetBundle.AssetMap.SceneDescriptor);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy17RealityFoundation12VFXParameter_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12VFXParameter_pGMR, &_s17RealityFoundation12VFXParameter_pMd, &_s17RealityFoundation12VFXParameter_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMd, &_ss23_ContiguousArrayStorageCySay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGGMR, &_sSay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMd, &_sSay17RealityFoundation8PathSpan33_958D9063BE5145611DD1DCE0DF8621CFLLOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCyyts5NeverOGGMR, &_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit20__SceneResourceCacheC08ImportedF0VGMR, type metadata accessor for __SceneResourceCache.ImportedScene);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC08ImportedF0VGMd, &_ss23_ContiguousArrayStorageCy10RealityKit22__SceneImportOperationC08ImportedF0VGMR, type metadata accessor for __SceneImportOperation.ImportedScene);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10RealityKit5SceneC5scene_So5RERaya3rayScCy0D10Foundation12PixelCastHitVSgs5Error_pG12continuationtGMd, &_ss23_ContiguousArrayStorageCy10RealityKit5SceneC5scene_So5RERaya3rayScCy0D10Foundation12PixelCastHitVSgs5Error_pG12continuationtGMR, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMd, &_s10RealityKit5SceneC5scene_So5RERaya3rayScCy0A10Foundation12PixelCastHitVSgs5Error_pG12continuationtMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 48 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 80);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 80 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
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
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV10ConstraintV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV10ConstraintVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 6) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation5IKRigV5JointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation5IKRigV5JointVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10RealityKit17AnimationResourceC5valuet_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8InstanceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMd, &_ss23_ContiguousArrayStorageCy10RealityKit12MeshResourceC0D10FoundationE8InstanceVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE8Level_v1V_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12SkeletalPoseV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation12SkeletalPoseVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo5RESRTa_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  result = v7;
  v10 = ((v8 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v7[2] = a1;
  v7[3] = 2 * ((v10 >> 3) + (v10 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10RealityKit12MeshResourceC0H10FoundationE4PartV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  result = v7;
  v11 = v8 - 32;
  v10 = v8 < 32;
  v12 = v8 + 31;
  if (!v10)
  {
    v12 = v11;
  }

  v7[2] = a1;
  v7[3] = 2 * (v12 >> 6);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation11IKComponentV10ConstraintC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation12PhysicsJoint_p_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10simd_quatfa_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  result = v7;
  v11 = v8 - 32;
  v10 = v8 < 32;
  v12 = v8 - 17;
  if (!v10)
  {
    v12 = v11;
  }

  v7[2] = a1;
  v7[3] = 2 * (v12 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation23ExtrudedGlyphDescriptorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedGlyphDescriptorVGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation23ExtrudedGlyphDescriptorVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC17RealityFoundation13AudioMixGroupV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x6666666666666667) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 5) + (v9 >> 63));
  return result;
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 4 * v5);
    v4 += 4 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 16 * v5);
    v4 += 16 * v5;
  }

  return v4;
}

uint64_t keypath_set_166Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 208);

  result = a5(v8);
  *(a2 + 208) = v7;
  return result;
}

uint64_t keypath_set_170Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 216);

  result = a5(v8);
  *(a2 + 216) = v7;
  return result;
}

uint64_t keypath_set_174Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v8 = *(a2 + 224);

  result = a5(v8);
  *(a2 + 224) = v7;
  return result;
}

void type metadata completion function for FromToByAnimation(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String]?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FromToByAnimation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if (v5 >= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 1;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v4 + 80);
  if (v11 >= a2)
  {
    goto LABEL_37;
  }

  v13 = ((((((v10 + ((v10 + v12 + ((v10 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = a2 - v11;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (v19)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (v19)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if ((v9 & 0x80000000) == 0)
    {
      v22 = *(a1 + 144);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    if (v5 >= 2)
    {
      v23 = (*(v4 + 48))((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12);
      v24 = v23 >= 2;
      result = v23 - 2;
      if (result != 0 && v24)
      {
        return result;
      }
    }

    return 0;
  }

  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = *(a1 + v13);
  if (!v19)
  {
    goto LABEL_37;
  }

LABEL_33:
  v20 = v19 - 1;
  if (v15)
  {
    v20 = 0;
    LODWORD(v15) = *a1;
  }

  return v11 + (v15 | v20) + 1;
}

void storeEnumTagSinglePayload for FromToByAnimation(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (!v7)
  {
    ++v8;
  }

  if (v7 >= 2)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v7 >= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v8 + 1;
  }

  v12 = *(v6 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v10;
  }

  v14 = ((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 < a3)
  {
    v15 = a3 - v13;
    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v5 = v17;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v13)
  {
    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v13;
    }

    else
    {
      v18 = 1;
    }

    if (((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFF0) + 28) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v13 + a2;
      v20 = a1;
      bzero(a1, ((((((v11 + ((v11 + v12 + ((v11 + v12 + ((v12 + 208) & ~v12)) & ~v12)) & ~v12) + 31) & 0xFFFFFFFFFFFFFFF0) + 28) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v20;
      *v20 = v19;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v14) = v18;
      }

      else
      {
        *(a1 + v14) = v18;
      }
    }

    else if (v5)
    {
      *(a1 + v14) = v18;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v14) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

    *(a1 + v14) = 0;
  }

  else if (v5)
  {
    *(a1 + v14) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return;
  }

LABEL_45:
  if ((v10 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(a1 + 17) = 0u;
      *(a1 + 15) = 0u;
      *(a1 + 13) = 0u;
      *(a1 + 11) = 0u;
      *(a1 + 9) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 1) = 0u;
      *a1 = a2 & 0x7FFFFFFF;
    }

    else
    {
      a1[18] = a2 - 1;
    }

    return;
  }

  v21 = (((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;
  if (v10 >= a2)
  {
    if (a2 + 1 <= v9)
    {
      if (a2 != -1 && v7 >= 2)
      {
        v26 = *(v6 + 56);
        v27 = a2 + 2;
        v28 = (((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12;

        v26(v28, v27);
      }
    }

    else
    {
      if (v8 <= 3)
      {
        v25 = ~(-1 << (8 * v8));
      }

      else
      {
        v25 = -1;
      }

      if (v8)
      {
        v23 = v25 & (a2 - v9);
        if (v8 <= 3)
        {
          v24 = v8;
        }

        else
        {
          v24 = 4;
        }

        bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12), v8);
        if (v24 <= 2)
        {
          if (v24 == 1)
          {
            goto LABEL_61;
          }

          goto LABEL_74;
        }

LABEL_80:
        if (v24 == 3)
        {
          *v21 = v23;
          *(v21 + 2) = BYTE2(v23);
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v22 = ~(-1 << (8 * v11));
    }

    else
    {
      v22 = -1;
    }

    if (v11)
    {
      v23 = v22 & (~v10 + a2);
      if (v11 <= 3)
      {
        v24 = v11;
      }

      else
      {
        v24 = 4;
      }

      bzero(((((a1 + 159) & 0xFFFFFFFFFFFFFFF8) + v12 + 56) & ~v12), v11);
      if (v24 <= 2)
      {
        if (v24 == 1)
        {
LABEL_61:
          *v21 = v23;
          return;
        }

LABEL_74:
        *v21 = v23;
        return;
      }

      goto LABEL_80;
    }
  }
}

void type metadata accessor for [String]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String]?);
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnimationError and conformance AnimationError()
{
  result = lazy protocol witness table cache variable for type AnimationError and conformance AnimationError;
  if (!lazy protocol witness table cache variable for type AnimationError and conformance AnimationError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationError, &type metadata for AnimationError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationError and conformance AnimationError);
  }

  return result;
}

uint64_t outlined init with copy of __REAssetService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t __RKEntityTriggerSpecification.init(decodeContext:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v5 = *a1;
  result = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x7372656767697274, 0xE800000000000000, 0, *a1);
  v7 = v2;
  if (v2)
  {

    v66 = v3[3];
    outlined destroy of BodyTrackingComponent?(&v66, &_sSDyS2SGMd, &_sSDyS2SGMR);
    v65 = v3[4];
    outlined destroy of BodyTrackingComponent?(&v65, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    v64 = v3[5];
    v8 = &v64;
    return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
  }

  v9 = result;
  if (result >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v46 = v3;
    v43 = a2;
    v44 = v5;
    if (v10)
    {
      if (v10 >= 1)
      {
        v11 = 0;
        v5 = v3[1];
        v55 = v9 & 0xC000000000000001;
        v12 = MEMORY[0x1E69E7CC0];
        v45 = v9;
        v47 = v10;
        v48 = v5;
        while (1)
        {
          v13 = v55 ? MEMORY[0x1C68F41F0](v11, v9) : *(v9 + 8 * v11 + 32);
          v14 = v13;
          v15 = [v5 objectAtPath_];
          if (v15)
          {
            break;
          }

LABEL_10:
          if (v10 == ++v11)
          {
            goto LABEL_44;
          }
        }

        v16 = v15;
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {

LABEL_42:
          v10 = v47;
          goto LABEL_10;
        }

        v18 = v17;
        v49 = v14;
        v51 = v12;
        v3 = v46[2];
        v19 = v46[3];
        v20 = v7;
        v21 = v46[4];
        v22 = v46[5];
        v50 = v5;

        v54 = v19;

        v53 = v21;

        v9 = v16;
        v23 = specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(0x64693A6F666E69, 0xE700000000000000, 2, v18);
        v52 = v22;
        if (v20)
        {

          v7 = MEMORY[0x1E69E7CC0];
          v12 = v51;
        }

        else
        {
          v25 = v24;
          v12 = v51;
          if (v24)
          {
            v26 = v23;
            if (one-time initialization token for triggerTypeToTriggerSpecificationsGenerator != -1)
            {
              swift_once();
            }

            v27 = static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator;
            if (*(static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator + 2))
            {
              v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v25);
              if (v29)
              {
                v30 = v28;

                v31 = *(v27[7] + 16 * v30);
                v32 = v50;
                v57[0] = v18;
                v57[1] = v50;
                v57[2] = v3;
                v57[3] = v54;
                v57[4] = v53;
                v57[5] = v52;

                v31(&v56, v57);

                v7 = v56;
LABEL_28:
                v36 = v7[2];
                a2 = v12[2];
                v5 = a2 + v36;
                if (__OFADD__(a2, v36))
                {
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
LABEL_51:
                  result = __CocoaSet.count.getter();
                  v10 = result;
                  continue;
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0 || (v38 = v12[3] >> 1, v38 < v5))
                {
                  if (a2 <= v5)
                  {
                    v39 = a2 + v36;
                  }

                  else
                  {
                    v39 = a2;
                  }

                  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v39, 1, v12);
                  v38 = v12[3] >> 1;
                }

                v5 = v48;
                if (v7[2])
                {
                  a2 = v12[2];
                  v5 = (v38 - a2);
                  type metadata accessor for __RKEntityTriggerSpecification(0);
                  if (v5 < v36)
                  {
                    goto LABEL_49;
                  }

                  swift_arrayInitWithCopy();

                  v7 = 0;
                  v5 = v48;
                  if (v36)
                  {
                    v40 = v12[2];
                    v41 = __OFADD__(v40, v36);
                    v42 = v40 + v36;
                    if (v41)
                    {
                      goto LABEL_50;
                    }

                    v12[2] = v42;
                  }
                }

                else
                {

                  v7 = 0;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }

                v9 = v45;
                goto LABEL_42;
              }
            }

            v33 = static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_1C1887600;
            *(v34 + 56) = MEMORY[0x1E69E6158];
            *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
            *(v34 + 32) = v26;
            *(v34 + 40) = v25;
            type metadata accessor for OS_os_log();
            v35 = static OS_os_log.default.getter();
            os_log(_:dso:log:_:_:)(v33, &dword_1C1358000, v35, "USD trigger loading: Unknown trigger type", 41, 2, v34);
          }

          v7 = MEMORY[0x1E69E7CC0];
        }

        v32 = v50;
        goto LABEL_28;
      }

      __break(1u);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if (!v12[2])
      {

        lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError();
        swift_allocError();
        swift_willThrow();

        v60 = v46[3];
        outlined destroy of BodyTrackingComponent?(&v60, &_sSDyS2SGMd, &_sSDyS2SGMR);
        v59 = v46[4];
        outlined destroy of BodyTrackingComponent?(&v59, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
        v58 = v46[5];
        v8 = &v58;
        return outlined destroy of BodyTrackingComponent?(v8, &_sSDyS2SGMd, &_sSDyS2SGMR);
      }

      v63 = v46[3];
      outlined destroy of BodyTrackingComponent?(&v63, &_sSDyS2SGMd, &_sSDyS2SGMR);
      v62 = v46[4];
      outlined destroy of BodyTrackingComponent?(&v62, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
      v61 = v46[5];
      outlined destroy of BodyTrackingComponent?(&v61, &_sSDyS2SGMd, &_sSDyS2SGMR);
      *v43 = v12;
      type metadata accessor for __RKEntityTriggerSpecification(0);
      return swift_storeEnumTagMultiPayload();
    }

    return result;
  }
}

uint64_t one-time initialization function for triggerTypeToTriggerSpecificationsGenerator()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for triggerTypeToTriggerSpecificationsGenerator);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yyctMd, &_sSS_yyctMR);
  result = swift_arrayDestroy();
  static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator = v0;
  return result;
}

uint64_t implicit closure #5 in variable initialization expression of static __RKEntityTriggerSpecification.triggerTypeToTriggerSpecificationsGenerator(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = v5;
  v6 = v1;
  v7 = v2;

  outlined init with copy of [String : String](&v13, v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v12, v9, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v11, v9, &_sSDyS2SGMd, &_sSDyS2SGMR);
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, v6, v7, v3, v4, &v10, v3);

  outlined destroy of BodyTrackingComponent?(&v13, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(&v12, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined destroy of BodyTrackingComponent?(&v11, &_sSDyS2SGMd, &_sSDyS2SGMR);
  return v10;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TriggerUSDLoadingError, &type metadata for __RKEntityTriggerSpecification.TriggerUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for __RKEntityTriggerSpecification.TriggerUSDLoadingError, &type metadata for __RKEntityTriggerSpecification.TriggerUSDLoadingError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTriggerSpecification.TriggerUSDLoadingError and conformance __RKEntityTriggerSpecification.TriggerUSDLoadingError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969DE0], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E61A8], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t specialized static __RKEntityTriggerSpecification.generateCollisionTriggerSpecifications(decodeContext:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x726564696C6C6F63, 0xE900000000000073, 2, a1, a2, a3, a4, &v11);
  if (*(v11 + 16))
  {
    v10 = v8;
    specialized USDDecodableContext.forEachObjectPathInProperty(named:requestContext:block:)(0x6465746365666661, 0xEF737463656A624FLL, 2, a1, a2, a3, a4, &v10, &v11);

    return v10;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t IntrospectionDataCleanupHelper.__deallocating_deinit()
{
  RECIntrospectionFree();

  return swift_deallocClassInstance();
}

char *BindTarget.TextureCoordinateTransformPath.offset.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (v3 == 1)
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 2);
    v10 = *(v4 + 3);
    v8 = v7 + 1;
    if (v7 >= v10 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = 0xE900000000000031;
  }

  else
  {
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      v4 = result;
    }

    v7 = *(v4 + 2);
    v6 = *(v4 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v4);
      v4 = result;
    }

    v9 = 0xE800000000000000;
  }

  *(v4 + 2) = v8;
  v11 = &v4[24 * v7];
  *(v11 + 4) = 0x74657366664F7675;
  *(v11 + 5) = v9;
  v11[48] = 10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t BindTarget.MaterialPath.parameter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = PbrCommonKeys.Constants.rawValue.getter(a1);
  v7 = v6;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v9 = *(v4 + 2);
  v8 = *(v4 + 3);
  if (v9 >= v8 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v4);
  }

  *(v4 + 2) = v9 + 1;
  v11 = &v4[24 * v9];
  *(v11 + 4) = v5;
  *(v11 + 5) = v7;
  v11[48] = 10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t BindTarget.MaterialPath.textureCoordinate.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t BindTarget.MaterialPath.secondaryTextureCoordinate.getter@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 1;
}

char *BindTarget.ScenePath.anchorEntity(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = *v3;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 5) = a2;
  v11[48] = 2;
  *a3 = v7;
  return result;
}

char *BindTarget.EntityPath.transform.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[24 * v8];
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  v9[48] = a1;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

char *BindTarget.EntityPath.blendShapeWeightsAtIndex(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[24 * v8];
  *(v9 + 4) = a1;
  *(v9 + 5) = 0;
  v9[48] = 4;
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

__n128 BindTarget.MaterialPath.customValue.getter@<Q0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v6 = *v3;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[24 * v8];
  result = a3;
  v9[2] = a3;
  v9[3].n128_u8[0] = a1;
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

RealityFoundation::BindTarget::MaterialPath __swiftcall BindTarget.EntityPath.material(_:)(Swift::Int a1)
{
  v4 = v1;
  rawValue = *v2;

  result.bindPath.parts._rawValue = swift_isUniquelyReferenced_nonNull_native();
  if ((result.bindPath.parts._rawValue & 1) == 0)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  v8 = *(rawValue + 2);
  v7 = *(rawValue + 3);
  if (v8 >= v7 >> 1)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  *(rawValue + 2) = v8 + 1;
  v9 = &rawValue[24 * v8];
  *(v9 + 4) = a1;
  *(v9 + 5) = 0;
  v9[48] = 9;
  *v4 = rawValue;
  return result;
}

uint64_t BindTarget.EntityPath.self.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

RealityFoundation::BindTarget::IkSolverPath __swiftcall BindTarget.EntityPath.ikSolver(_:)(RealityFoundation::IKComponent::Solver::ID_optional a1)
{
  v3 = v1;
  v4 = *a1.value.nameHash;
  v5 = *(a1.value.nameHash + 8);
  rawValue = *v2;

  result.bindPath.parts._rawValue = swift_isUniquelyReferenced_nonNull_native();
  if ((result.bindPath.parts._rawValue & 1) == 0)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  v9 = *(rawValue + 2);
  v8 = *(rawValue + 3);
  if (v9 >= v8 >> 1)
  {
    result.bindPath.parts._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, rawValue);
    rawValue = result.bindPath.parts._rawValue;
  }

  *(rawValue + 2) = v9 + 1;
  v10 = &rawValue[24 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v5;
  v10[48] = 6;
  *v3 = rawValue;
  return result;
}

char *BindTarget.IkSolverPath.constraintTarget(_:)@<X0>(char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *v4;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.hash.getter();

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v11 + 1;
  v12 = &v7[24 * v11];
  *(v12 + 4) = v8;
  *(v12 + 5) = 0;
  v12[48] = a3;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  return result;
}

char *BindTarget.EntityPath.blendShapeWeightsWithID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *v4;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[24 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v13[48] = a3;
  *a4 = v9;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  return result;
}

uint64_t static BindTarget.scene(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C1887600;
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *a4 = v8;
}

double static BindTarget.material(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation8BindPathV4PartOGMR);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C1887600;
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  *(v4 + 48) = 9;
  *a2 = v4;
  return result;
}

unint64_t static InternalBindPath.bindPathVersion0(_:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return specialized static InternalBindPath.pathFromTarget(_:_:)(&v3, 0);
}

unint64_t _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (Substring.distance(from:to:)() < 3)
  {
    return 0;
  }

  if (Substring.subscript.getter() == 91 && v4 == 0xE100000000000000)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = Substring.index(before:)();
  if (Substring.subscript.getter() == 93 && v7 == 0xE100000000000000)
  {

    goto LABEL_10;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = Substring.index(after:)();
  if (v6 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    Substring.subscript.getter();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.init<A>(_:)();
    String.utf8CString.getter();

    v10 = REBindKeyUnescape();

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  return result;
}

unint64_t static InternalBindPath.targetFromPath(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v211 = &v211 - v10;
  v11 = specialized Collection.subscript.getter(a1, a2);
  v15 = v14;
  v213 = a2;
  v214 = a3;
  v212 = a1;
  if ((v11 ^ v12) < 0x4000)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_3:

    v17 = *(v16 + 2);
    v18 = v17 - 2;
    if (v17 == 2)
    {
      v3 = 0xE90000000000006DLL;
      v19 = String.lowercased()();
      object = v19._object;
      v20 = v19._countAndFlagsBits == 0x726F66736E617274 && v19._object == 0xE90000000000006DLL;
      if (v20 || (countAndFlagsBits = v19._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || ((v17 = 0xD000000000000015, v19._countAndFlagsBits == 0xD000000000000015) ? (v21 = 0x80000001C18DE530 == v19._object) : (v21 = 0), v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        if (*(v16 + 2) < 2uLL)
        {
          goto LABEL_160;
        }

        v22 = String.lowercased()();

        if (v22._countAndFlagsBits == 0x726F66736E617274 && v22._object == 0xE90000000000006DLL)
        {

          a2 = v214;
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v214;
          if ((v24 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        *a2 = 0;
        *(a2 + 8) = 0;
        goto LABEL_69;
      }

      v53 = 0x6C6174656C656B73;
      if (v19._countAndFlagsBits == 0x6C6174656C656B73 && v19._object == 0xEC00000065736F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v19._countAndFlagsBits == 0xD000000000000018 && 0x80000001C18DE550 == v19._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        if (*(v16 + 2) >= 2uLL)
        {
          v61 = String.lowercased()();
          if (v61._countAndFlagsBits == 0xD000000000000010 && 0x80000001C18DE5D0 == v61._object)
          {
          }

          else
          {
            v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v65 & 1) == 0)
            {
              v67 = *(v16 + 7);
              v218._countAndFlagsBits = *(v16 + 6);
              v218._object = v67;
              strcpy(v217, "skeletalposes");
              HIWORD(v217[1]) = -4864;
              v68 = type metadata accessor for Locale();
              v69 = v211;
              (*(*(v68 - 8) + 56))(v211, 1, 1, v68);
              lazy protocol witness table accessor for type String and conformance String();

              StringProtocol.range<A>(of:options:range:locale:)();
              v71 = v70;
              v73 = v72;
              outlined destroy of BodyTrackingComponent?(v69, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

              if (v73)
              {
                goto LABEL_107;
              }

              v78 = *(v16 + 6);
              v79 = *(v16 + 7);

              v80 = specialized Collection.subscript.getter(v71, v78, v79);
              v82 = v81;
              v84 = v83;
              v86 = v85;

              v87 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v80, v82, v84, v86);
              v89 = v88;

              v90 = HIBYTE(v89) & 0xF;
              if ((v89 & 0x2000000000000000) == 0)
              {
                v90 = v87 & 0xFFFFFFFFFFFFLL;
              }

              if (!v90)
              {
                goto LABEL_107;
              }

              v91 = v214;
              *v214 = v87;
              v91[1] = v89;
              *(v91 + 16) = 5;
              return result;
            }
          }

          v66 = v214;
          *v214 = xmmword_1C1887610;
          *(v66 + 16) = 6;
          return result;
        }

        __break(1u);
        goto LABEL_196;
      }

      if ((v19._countAndFlagsBits != 0x65756C617679656BLL || v19._object != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v19._countAndFlagsBits != 0xD000000000000014 || 0x80000001C18DE570 != v19._object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_162;
      }

      if (*(v16 + 2) >= 2uLL)
      {
        v99 = *(v16 + 7);
        v218._countAndFlagsBits = *(v16 + 6);
        v218._object = v99;
        strcpy(v217, "keyValueStore");
        HIWORD(v217[1]) = -4864;
        v100 = type metadata accessor for Locale();
        v101 = v211;
        (*(*(v100 - 8) + 56))(v211, 1, 1, v100);
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.range<A>(of:options:range:locale:)();
        v103 = v102;
        v105 = v104;
        outlined destroy of BodyTrackingComponent?(v101, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v105)
        {
          goto LABEL_107;
        }

        v106 = *(v16 + 6);
        v107 = *(v16 + 7);

        v108 = specialized Collection.subscript.getter(v103, v106, v107);
        v110 = v109;
        v112 = v111;
        v114 = v113;

        v115 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v108, v110, v112, v114);
        v117 = v116;

        v118 = HIBYTE(v117) & 0xF;
        if ((v117 & 0x2000000000000000) == 0)
        {
          v118 = v115 & 0xFFFFFFFFFFFFLL;
        }

        if (!v118)
        {
          goto LABEL_107;
        }

        v119 = v214;
        *v214 = v115;
        v119[1] = v117;
        *(v119 + 16) = 1;
        return result;
      }

      __break(1u);
      goto LABEL_208;
    }

    if (v17 < 3)
    {
      goto LABEL_107;
    }

    countAndFlagsBits = (v16 + 32);

    static InternalBindPath.entityPathFromParts(_:)((v16 + 32), 0, (2 * v18) | 1, &v218);

    if (v18 >= *(v16 + 2))
    {
      goto LABEL_161;
    }

    object = v218._countAndFlagsBits;
    v3 = 0xE90000000000006DLL;
    v51 = String.lowercased()();
    v52 = v51._countAndFlagsBits == 0x726F66736E617274 && v51._object == 0xE90000000000006DLL;
    if (v52 || (v53 = v51._countAndFlagsBits, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      goto LABEL_60;
    }

    v216 = v16;
    v16 = 0xD000000000000015;
    v60 = v51._countAndFlagsBits == 0xD000000000000015 && 0x80000001C18DE530 == v51._object;
    if (v60 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v16 = v216;
LABEL_60:
      if (v17 > *(v16 + 2))
      {
        __break(1u);
      }

      else
      {

        v54 = String.lowercased()();

        if (v54._countAndFlagsBits == 0x726F66736E617274 && v54._object == 0xE90000000000006DLL)
        {

          a2 = v214;
        }

        else
        {
          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v214;
          if ((v56 & 1) == 0)
          {

            goto LABEL_108;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_72;
        }
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
      object = result;
LABEL_72:
      v58 = *(object + 16);
      v57 = *(object + 24);
      if (v58 >= v57 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, object);
        object = result;
      }

      *(object + 16) = v58 + 1;
      v59 = object + 24 * v58;
      *(v59 + 32) = 0;
      *(v59 + 40) = 0;
LABEL_75:
      *(v59 + 48) = 12;
      *a2 = object;
      *(a2 + 8) = 0;
      *(a2 + 16) = 2;
      return result;
    }

    v62 = v51._countAndFlagsBits == 0x6C6174656C656B73 && v51._object == 0xEC00000065736F70;
    if (v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v51._countAndFlagsBits == 0xD000000000000018 && 0x80000001C18DE550 == v51._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v17 > *(v216 + 2))
      {
        __break(1u);
        goto LABEL_206;
      }

      v63 = countAndFlagsBits + 16 * v17;
      v64 = String.lowercased()();
      if (v64._countAndFlagsBits == 0xD000000000000010 && 0x80000001C18DE5D0 == v64._object)
      {

        goto LABEL_110;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {
LABEL_110:

        a2 = v214;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_111:
          v77 = *(object + 16);
          v76 = *(object + 24);
          if (v77 >= v76 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, object);
            object = result;
          }

          *(object + 16) = v77 + 1;
          v59 = object + 24 * v77;
          *(v59 + 32) = xmmword_1C1887610;
          goto LABEL_75;
        }

LABEL_206:
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
        object = result;
        goto LABEL_111;
      }

      v92 = *(v63 - 8);
      v218._countAndFlagsBits = *(v63 - 16);
      v218._object = v92;
      strcpy(v217, "skeletalposes");
      HIWORD(v217[1]) = -4864;
      v93 = type metadata accessor for Locale();
      v94 = v211;
      (*(*(v93 - 8) + 56))(v211, 1, 1, v93);
      lazy protocol witness table accessor for type String and conformance String();

      StringProtocol.range<A>(of:options:range:locale:)();
      v96 = v95;
      v98 = v97;
      outlined destroy of BodyTrackingComponent?(v94, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      if ((v98 & 1) == 0)
      {
        v120 = *(v63 - 16);
        v121 = *(v63 - 8);

        v122 = specialized Collection.subscript.getter(v96, v120, v121);
        v124 = v123;
        v126 = v125;
        v128 = v127;

        v17 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v122, v124, v126, v128);
        v53 = v129;

        v130 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v130 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v130)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
LABEL_136:
            v132 = *(object + 16);
            v131 = *(object + 24);
            if (v132 >= v131 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v131 > 1), v132 + 1, 1, object);
              object = result;
            }

            *(object + 16) = v132 + 1;
            v133 = object + 24 * v132;
            *(v133 + 32) = v17;
            *(v133 + 40) = v53;
            v134 = 11;
            goto LABEL_139;
          }

LABEL_208:
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
          object = result;
          goto LABEL_136;
        }
      }

LABEL_164:

      goto LABEL_107;
    }

    if (v51._countAndFlagsBits == 0x65756C617679656BLL && v51._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v51._countAndFlagsBits == 0xD000000000000014 && 0x80000001C18DE570 == v51._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (v17 > *(v216 + 2))
      {
        __break(1u);
      }

      else
      {
        v136 = countAndFlagsBits + 16 * v17;
        v137 = *(v136 - 8);
        v218._countAndFlagsBits = *(v136 - 16);
        v218._object = v137;
        strcpy(v217, "keyValueStore");
        HIWORD(v217[1]) = -4864;
        v138 = type metadata accessor for Locale();
        v139 = v211;
        (*(*(v138 - 8) + 56))(v211, 1, 1, v138);
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol.range<A>(of:options:range:locale:)();
        v141 = v140;
        v143 = v142;
        outlined destroy of BodyTrackingComponent?(v139, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

        if (v143)
        {
          goto LABEL_164;
        }

        v144 = *(v136 - 16);
        v145 = *(v136 - 8);

        v146 = specialized Collection.subscript.getter(v141, v144, v145);
        v148 = v147;
        v150 = v149;
        v152 = v151;

        v17 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v146, v148, v150, v152);
        v53 = v153;

        v154 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v154 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (!v154)
        {
          goto LABEL_164;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_154:
          v156 = *(object + 16);
          v155 = *(object + 24);
          if (v156 >= v155 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v155 > 1), v156 + 1, 1, object);
            object = result;
          }

          *(object + 16) = v156 + 1;
          v133 = object + 24 * v156;
          *(v133 + 32) = v17;
          *(v133 + 40) = v53;
          v134 = 3;
          goto LABEL_139;
        }
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
      object = result;
      goto LABEL_154;
    }

    v157 = 0x80000001C18DE590;
    a2 = 0xD00000000000001BLL;
    v167._countAndFlagsBits = 0xD00000000000001BLL;
    v167._object = 0x80000001C18DE590;
    if (!String.hasPrefix(_:)(v167))
    {

      v189._object = 0xE900000000000064;
      v189._countAndFlagsBits = 0x72616F626C6C6962;
      if (String.hasPrefix(_:)(v189) || v51._countAndFlagsBits == 0xD000000000000015 && 0x80000001C18DE5B0 == v51._object)
      {

        goto LABEL_185;
      }

LABEL_196:
      v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v157 & 1) == 0)
      {
        goto LABEL_107;
      }

LABEL_185:
      v166 = *(v216 + 2);
      if (v17 <= v166)
      {
LABEL_186:

        v190 = String.lowercased()();

        if (v190._countAndFlagsBits == 0x636146646E656C62 && v190._object == 0xEB00000000726F74)
        {

          a2 = v214;
        }

        else
        {
          v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

          a2 = v214;
          if ((v191 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        *a2 = xmmword_1C1898EF0;
LABEL_69:
        *(a2 + 16) = 6;
        return result;
      }

LABEL_212:
      __break(1u);
LABEL_213:
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v166 > 1), v157, 1, v53);
LABEL_178:
      *(v53 + 16) = v157;
      v186 = v53 + 24 * v17;
      *(v186 + 32) = a2;
      *(v186 + 40) = 0;
      *(v186 + 48) = 9;
      v187 = *(v16 + 2);
      if (v187 < 2)
      {
        __break(1u);
      }

      else
      {
        v17 = *(v16 + 6);
        a2 = *(v16 + 7);

        v3 = *(v53 + 16);
        v187 = *(v53 + 24);
        v157 = v3 + 1;
        if (v3 < v187 >> 1)
        {
LABEL_180:
          *(v53 + 16) = v157;
          v188 = v53 + 24 * v3;
          *(v188 + 32) = v17;
          *(v188 + 40) = a2;
          *(v188 + 48) = 10;
          v135 = v214;
          *v214 = v53;
          goto LABEL_140;
        }
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v187 > 1), v157, 1, v53);
      v53 = result;
      goto LABEL_180;
    }

    v218 = v51;
    v217[0] = 0xD00000000000001BLL;
    v217[1] = 0x80000001C18DE590;
    v168 = type metadata accessor for Locale();
    v169 = v211;
    (*(*(v168 - 8) + 56))(v211, 1, 1, v168);
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.range<A>(of:options:range:locale:)();
    v171 = v170;
    v173 = v172;
    outlined destroy of BodyTrackingComponent?(v169, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    if (v173)
    {

      goto LABEL_164;
    }

    v192 = specialized Collection.subscript.getter(v171, v51._countAndFlagsBits, v51._object);
    v194 = v193;
    v196 = v195;
    v198 = v197;

    v199 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v192, v194, v196, v198);
    v201 = v200;

    v202 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v199, v201);
    if (v203)
    {
      goto LABEL_164;
    }

    v204 = v202;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    }

    v206 = *(object + 16);
    v205 = *(object + 24);
    v207 = v206 + 1;
    if (v206 >= v205 >> 1)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v205 > 1), v206 + 1, 1, object);
    }

    *(object + 16) = v207;
    v208 = object + 24 * v206;
    *(v208 + 32) = v204;
    *(v208 + 40) = 0;
    *(v208 + 48) = 9;
    v209 = *(v216 + 2);
    if (v17 > v209)
    {
      __break(1u);
    }

    else
    {
      v210 = countAndFlagsBits + 16 * v17;
      v206 = *(v210 - 16);
      v204 = *(v210 - 8);

      v17 = *(object + 16);
      v209 = *(object + 24);
      v207 = v17 + 1;
      if (v17 < v209 >> 1)
      {
LABEL_204:
        *(object + 16) = v207;
        v133 = object + 24 * v17;
        *(v133 + 32) = v206;
        *(v133 + 40) = v204;
        v134 = 10;
LABEL_139:
        *(v133 + 48) = v134;
        v135 = v214;
        *v214 = object;
LABEL_140:
        v135[1] = 0;
        *(v135 + 16) = 2;
        return result;
      }
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v209 > 1), v207, 1, object);
    object = result;
    goto LABEL_204;
  }

  object = v11;
  countAndFlagsBits = v12;
  v26 = v13;
  v16 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v216 = v16;
    v3 = countAndFlagsBits >> 14;

    v215 = object >> 14;
    if (object >> 14 == countAndFlagsBits >> 14)
    {
LABEL_23:

      goto LABEL_24;
    }

    v36 = 0;
    v37 = object;
    while (1)
    {
      v17 = Substring.index(after:)();
      if (Substring.subscript.getter() != 92 || v38 != 0xE100000000000000)
      {
        break;
      }

LABEL_33:
      v36 ^= 1u;
LABEL_34:
      v37 = v17;
      if (v3 == v17 >> 14)
      {
        goto LABEL_23;
      }
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (a2)
    {
      goto LABEL_33;
    }

    if (Substring.subscript.getter() == 46 && v39 == 0xE100000000000000)
    {

      goto LABEL_42;
    }

    a2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((a2 & 1) == 0)
    {
LABEL_43:
      v36 = 0;
      goto LABEL_34;
    }

LABEL_42:
    if (v36)
    {
      goto LABEL_43;
    }

    if (v37 >> 14 == v3)
    {
LABEL_24:
      v27 = MEMORY[0x1C68F3380](object, countAndFlagsBits, v26, v15);
      v29 = v28;

      v16 = v216;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
      }

      v31 = *(v16 + 2);
      v30 = *(v16 + 3);
      if (v31 >= v30 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v16);
      }

      *(v16 + 2) = v31 + 1;
      v32 = &v16[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
      object = MEMORY[0x1C68F3E40](0, 0xE000000000000000);
      countAndFlagsBits = v33;
      v26 = v34;
      v15 = v35;
LABEL_29:
      if ((object ^ countAndFlagsBits) < 0x4000)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  v16 = v216;
  if (v37 >> 14 < v215)
  {
    __break(1u);
  }

  else
  {
    v40 = Substring.subscript.getter();
    v17 = MEMORY[0x1C68F3380](v40);
    a2 = v41;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v42 = v16;
    v43 = *(v16 + 2);
    v44 = v42;
    v45 = *(v42 + 3);
    if (v43 >= v45 >> 1)
    {
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v43 + 1, 1, v44);
    }

    *(v44 + 2) = v43 + 1;
    v46 = &v44[16 * v43];
    v16 = v44;
    *(v46 + 4) = v17;
    *(v46 + 5) = a2;
    if (v3 >= Substring.index(after:)() >> 14)
    {
      object = Substring.subscript.getter();
      countAndFlagsBits = v47;
      v26 = v48;
      v50 = v49;

      v15 = v50;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  v157 = 0x80000001C18DE590;
  v53 = v17 + 6;
  v158._countAndFlagsBits = v17 + 6;
  v158._object = 0x80000001C18DE590;
  if (!String.hasPrefix(_:)(v158))
  {
    v165._object = (v3 - 9);
    v165._countAndFlagsBits = 0x72616F626C6C6962;
    if (String.hasPrefix(_:)(v165) || countAndFlagsBits == v17 && 0x80000001C18DE5B0 == object)
    {
    }

    else
    {
      v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v157 & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    v166 = *(v16 + 2);
    if (v166 >= 2)
    {
      goto LABEL_186;
    }

    __break(1u);
    goto LABEL_212;
  }

  v218._countAndFlagsBits = countAndFlagsBits;
  v218._object = object;
  v217[0] = v17 + 6;
  v217[1] = 0x80000001C18DE590;
  v159 = type metadata accessor for Locale();
  v160 = v211;
  (*(*(v159 - 8) + 56))(v211, 1, 1, v159);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.range<A>(of:options:range:locale:)();
  v162 = v161;
  v164 = v163;
  outlined destroy of BodyTrackingComponent?(v160, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v164)
  {
    goto LABEL_164;
  }

  v174 = specialized Collection.subscript.getter(v162, countAndFlagsBits, object);
  v176 = v175;
  v178 = v177;
  v180 = v179;

  v181 = _s17RealityFoundation16InternalBindPathV017parameterNameFromE033_475221E2AA31F5714E0F14817BE88380LLySSxSyRzlFZSs_Tt0g5(v174, v176, v178, v180);
  v183 = v182;

  v184 = _ss17FixedWidthIntegerPsEyxSgSScfCSi_Tt1g5(v181, v183);
  if ((v185 & 1) == 0)
  {
    a2 = v184;
    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v53 + 16);
    v166 = *(v53 + 24);
    v157 = v17 + 1;
    if (v17 < v166 >> 1)
    {
      goto LABEL_178;
    }

    goto LABEL_213;
  }

LABEL_107:

  a2 = v214;
LABEL_108:
  v74 = v213;
  *a2 = v212;
  *(a2 + 8) = v74;
  *(a2 + 16) = 0;
}

void static InternalBindPath.entityPathFromParts(_:)(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, char *a4@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v47 - v12;
  v14 = a3 >> 1;
  v47[0] = a4;
  if (a3 >> 1 != a2)
  {
    if (a2 > 0 || a3 < 2)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v15 = *(a1 + 8);
    v50 = *a1;
    v51 = v15;
    v48 = 12079;
    v49 = 0xE200000000000000;
    v4 = &v50;
    v47[1] = lazy protocol witness table accessor for type String and conformance String();
    v16 = StringProtocol.components<A>(separatedBy:)();
    if (v16[2] == 2)
    {
      a3 = v16[4];
      v4 = v16[5];
      v17 = a3 == 0x3A65636976726573 && v4 == 0xE800000000000000;
      if (v17 || (v18 = v16, v19 = _stringCompareWithSmolCheck(_:_:expecting:)(), v20 = v18, (v19 & 1) != 0))
      {

        String.utf8CString.getter();

        v21 = REBindKeyUnescape();

        a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v4 = v22;

        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v5 = *(a4 + 2);
        v12 = *(a4 + 3);
        v6 = v5 + 1;
        if (v5 >= v12 >> 1)
        {
          goto LABEL_58;
        }

        while (1)
        {
          *(a4 + 2) = v6;
          v23 = &a4[24 * v5];
          *(v23 + 4) = a3;
          *(v23 + 5) = v4;
          v23[48] = 0;
          v5 = 1;
LABEL_20:
          v12 = v14 - a2;
          if (__OFSUB__(v14, a2))
          {
            break;
          }

          if (v12 < v5)
          {
            goto LABEL_54;
          }

          if (v5 == v12)
          {
            goto LABEL_23;
          }

          if (v5 >= v12)
          {
            goto LABEL_55;
          }

          if (v5 >= v14)
          {
            goto LABEL_56;
          }

          if (--v12 < v14)
          {
            v31 = v5 + a2 - v14;
            v5 = a1 + 16 * v5 + 8;
            while (1)
            {
              a1 = *(v5 - 8);
              v14 = *v5;
              if ((*v5 & 0x2000000000000000) != 0)
              {
                v32 = HIBYTE(*v5) & 0xFLL;
              }

              else
              {
                v32 = a1 & 0xFFFFFFFFFFFFLL;
              }

              if (v32)
              {
                v50 = *(v5 - 8);
                v51 = v14;
                v48 = 0x7365697469746E65;
                v49 = 0xE90000000000005BLL;
                v33 = type metadata accessor for Locale();
                (*(*(v33 - 8) + 56))(v13, 1, 1, v33);

                a2 = StringProtocol.range<A>(of:options:range:locale:)();
                v4 = v34;
                v6 = v35;
                outlined destroy of BodyTrackingComponent?(v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
                v36 = String.index(before:)();
                if ((v6 & 1) != 0 || a2 >= 0x4000)
                {
                  goto LABEL_44;
                }

                a3 = v36;
                if (String.subscript.getter() == 93 && v37 == 0xE100000000000000)
                {
                }

                else
                {
                  a2 = v37;
                  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v6 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                v12 = a3 >> 14;
                if (a3 >> 14 < v4 >> 14)
                {
                  __break(1u);
                  goto LABEL_52;
                }

                v39 = String.subscript.getter();
                MEMORY[0x1C68F3380](v39);

                String.utf8CString.getter();

                v40 = REBindKeyUnescape();

                a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v42 = v41;

                v14 = v42;
              }

              else
              {
                a1 = 0;
                v14 = 0xE000000000000000;
              }

LABEL_44:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
              }

              v44 = *(a4 + 2);
              v43 = *(a4 + 3);
              if (v44 >= v43 >> 1)
              {
                a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, a4);
              }

              *(a4 + 2) = v44 + 1;
              v45 = &a4[24 * v44];
              *(v45 + 4) = a1;
              *(v45 + 5) = v14;
              v45[48] = 2;
              v5 += 16;
              if (__CFADD__(v31++, 1))
              {
                goto LABEL_23;
              }
            }
          }

LABEL_57:
          __break(1u);
LABEL_58:
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v6, 1, a4);
        }

LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (a3 == 0x3A656E656373 && v4 == 0xE600000000000000 || (v24 = _stringCompareWithSmolCheck(_:_:expecting:)(), v20 = v18, (v24 & 1) != 0))
      {
        v25 = v20[6];
        v26 = v20[7];

        a3 = specialized static InternalBindPath.entityNameFromKey(_:)(v25, v26);
        v4 = v27;

        v5 = 1;
        a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v29 = *(a4 + 2);
        v28 = *(a4 + 3);
        v6 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, a4);
        }

        *(a4 + 2) = v6;
        v30 = &a4[24 * v29];
        *(v30 + 4) = a3;
        *(v30 + 5) = v4;
        v30[48] = 1;
        goto LABEL_20;
      }
    }

    v5 = 0;
    a4 = MEMORY[0x1E69E7CC0];
    goto LABEL_20;
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_23:
  *v47[0] = a4;
}

unint64_t static InternalBindPath.entityPathFromPath(_:)@<X0>(char *a3@<X8>)
{
  v3 = String.subscript.getter();
  v7 = v6;
  if ((v3 ^ v4) < 0x4000)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_3:

    static InternalBindPath.entityPathFromParts(_:)((v8 + 32), 0, (2 * *(v8 + 2)) | 1, a3);
  }

  v10 = v3;
  v11 = v4;
  v12 = v5;
  v8 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v44 = v8;
    v13 = v11 >> 14;

    if (v10 >> 14 == v11 >> 14)
    {
LABEL_8:

      goto LABEL_9;
    }

    v23 = 0;
    v24 = v10;
    while (1)
    {
      v25 = Substring.index(after:)();
      if (Substring.subscript.getter() != 92 || v26 != 0xE100000000000000)
      {
        break;
      }

LABEL_18:
      v23 ^= 1u;
LABEL_19:
      v24 = v25;
      if (v13 == v25 >> 14)
      {
        goto LABEL_8;
      }
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_18;
    }

    if (Substring.subscript.getter() == 46 && v28 == 0xE100000000000000)
    {

      goto LABEL_27;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
LABEL_28:
      v23 = 0;
      goto LABEL_19;
    }

LABEL_27:
    if (v23)
    {
      goto LABEL_28;
    }

    if (v24 >> 14 == v13)
    {
LABEL_9:
      v14 = MEMORY[0x1C68F3380](v10, v11, v12, v7);
      v16 = v15;

      v8 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v8);
      }

      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      v10 = MEMORY[0x1C68F3E40](0, 0xE000000000000000);
      v11 = v20;
      v12 = v21;
      v7 = v22;
LABEL_14:
      if ((v10 ^ v11) < 0x4000)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  if (v24 >> 14 < v10 >> 14)
  {
    __break(1u);
  }

  else
  {
    v30 = Substring.subscript.getter();
    v31 = MEMORY[0x1C68F3380](v30);
    v33 = v32;

    v34 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    v37 = v34;
    if (v36 >= v35 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v34);
    }

    *(v37 + 2) = v36 + 1;
    v8 = v37;
    v38 = &v37[16 * v36];
    *(v38 + 4) = v31;
    *(v38 + 5) = v33;
    result = Substring.index(after:)();
    if (v13 >= result >> 14)
    {
      v10 = Substring.subscript.getter();
      v11 = v39;
      v12 = v40;
      v42 = v41;

      v7 = v42;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t BindableValue.init(_:animatedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(type metadata accessor for BindableValue(0, a3, a4, a4) + 36);
  v10 = *(a3 - 8);
  (*(v10 + 56))(a5 + v9, 1, 1, a3);
  (*(v10 + 32))(a5, a1, a3);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 40);

  return v12(a5 + v9, a2, v11);
}

uint64_t BindableValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, v2 + *(a1 + 36), v6, v8);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v11 + 16))(a2, v2, v5);
  result = (v12)(v10, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t key path setter for BindableValue.value : <A>BindableValue<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - v7;
  (*(v9 + 16))(&v13 - v7, v6);
  v11 = type metadata accessor for BindableValue(0, v4, v5, v10);
  return BindableValue.baseValue.setter(v8, v11);
}

void (*BindableValue.value.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(a2 + 16);
  v6[1] = v8;
  v9 = *(v8 - 8);
  v6[2] = v9;
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  BindableValue.value.getter(a2, v11);
  return BindableValue.value.modify;
}

void BindableValue.value.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, v7);
    (*(v5 + 40))(v8, v3, v7);
    (*(v6 + 8))(v4, v7);
  }

  else
  {
    (*(v2[2] + 40))(*v2, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t BindableValue.animatedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t BindableValue.animatedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

BOOL BindableValue.isOverriden.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, v1 + *(a1 + 36), v4, v6);
  v9 = (*(*(v3 - 8) + 48))(v8, 1, v3) != 1;
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t BindableValuesReference.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v71 = type metadata accessor for Optional();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v72 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = *a1;
  v19 = a1[1];
  v20 = *(a1 + 16);
  v21 = *v4;
  v22 = swift_conformsToProtocol2();
  if (!v22 || !a2)
  {
    goto LABEL_5;
  }

  v24 = v22;
  v64 = v17;
  v58 = v12;
  v66 = a3;
  v67 = a4;
  v62 = v18;
  v82[0] = v18;
  v82[1] = v19;
  v61 = v19;
  v60 = v20;
  v83 = v20;
  v25 = specialized static InternalBindPath.pathFromTarget(_:_:)(v82, 1);
  v26 = *(v24 + 40);
  v59 = v21;
  v63 = v26;
  v27 = v26(v25);

  v65 = &v53;
  v29 = v73;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v57 = v31;
  v31(v27, a2, v24, v30);
  v32 = v72;
  v33 = *(v72 + 48);
  if (v33(&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), 1, a2) == 1)
  {
    (*(v70 + 8))(&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v71);
    REBindPointDestroy();
    a4 = v67;
    a3 = v66;
LABEL_5:
    v34 = type metadata accessor for BindableValue(0, a2, a3, v23);
    return (*(*(v34 - 8) + 56))(a4, 1, 1, v34);
  }

  v55 = v33;
  v56 = v27;
  v80 = a2;
  v81 = v24;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
  v54 = *(v32 + 32);
  v54(boxed_opaque_existential_1, &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  outlined init with take of ForceEffectBase(&v78, v82);
  *&v78 = v62;
  *(&v78 + 1) = v61;
  v79 = v60;
  v37 = specialized static InternalBindPath.pathFromTarget(_:_:)(&v78, 1);
  v38 = v63(v37);

  if (REBindPointIsOverrideEnabled())
  {
    v69 = (v32 + 32);
    outlined init with copy of __REAssetService(v82, &v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
    v39 = swift_dynamicCast();
    v40 = MEMORY[0x1EEE9AC00](v39);
    v73 = v38;
    v57(v38, a2, v24, v40);
    if (v55(&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), 1, a2) == 1)
    {
      (*(v70 + 8))(&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v71);
      v41 = v58;
      (*(v32 + 56))(v58, 1, 1, a2);
    }

    else
    {
      v75 = a2;
      v76 = v24;
      v48 = __swift_allocate_boxed_opaque_existential_1(&v74);
      v54(v48, &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
      outlined init with take of ForceEffectBase(&v74, v77);
      v41 = v58;
      swift_dynamicCast();
      (*(v32 + 56))(v41, 0, 1, a2);
    }

    v49 = v66;
    v50 = v67;
    BindableValue.init(_:animatedValue:)(v64, v41, a2, v66, v67);
    v52 = type metadata accessor for BindableValue(0, a2, v49, v51);
    (*(*(v52 - 8) + 56))(v50, 0, 1, v52);
    REBindPointDestroy();
    __swift_destroy_boxed_opaque_existential_1(v82);
    return REBindPointDestroy();
  }

  else
  {
    outlined init with copy of __REAssetService(v82, &v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
    v42 = v68;
    swift_dynamicCast();
    v43 = v69;
    (*(v32 + 56))(v69, 1, 1, a2);
    v44 = v67;
    v45 = v66;
    BindableValue.init(_:animatedValue:)(v42, v43, a2, v66, v67);
    v47 = type metadata accessor for BindableValue(0, a2, v45, v46);
    (*(*(v47 - 8) + 56))(v44, 0, 1, v47);
    REBindPointDestroy();
    __swift_destroy_boxed_opaque_existential_1(v82);
    return REBindPointDestroy();
  }
}

uint64_t BindableValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a1;
  v8 = type metadata accessor for Optional();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v55 - v9;
  v68 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v55 - v13;
  v69 = a4;
  v15 = type metadata accessor for BindableValue(255, a4, a5, v14);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  v20 = *(v15 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - v23;
  v26 = *a2;
  v25 = *(a2 + 8);
  v27 = *(a2 + 16);
  v28 = v70;
  (*(v17 + 16))(v19, v22);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    v29 = *(v17 + 8);
    v29(v28, v16);
    outlined consume of BindTarget(v26, v25, v27);
    return (v29)(v19, v16);
  }

  else
  {
    v60 = v17;
    v61 = v20;
    (*(v20 + 32))(v24, v19, v15);
    v31 = swift_conformsToProtocol2();
    v32 = v24;
    if (v31)
    {
      v33 = v31;
      v59 = v16;
      v71[0] = v26;
      v71[1] = v25;
      v72 = v27;
      v34 = specialized static InternalBindPath.pathFromTarget(_:_:)(v71, 1);
      v36 = v35;
      outlined consume of BindTarget(v26, v25, v27);
      v37 = v69;
      v38 = (*(v33 + 40))(v34, v36, *v63, 1, 0, v69, v33);

      v39 = v68;
      v40 = v64;
      v56 = *(v68 + 16);
      v56(v64, v24, v37);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
      swift_dynamicCast();
      v41 = v73;
      v42 = v74;
      __swift_project_boxed_opaque_existential_1(v71, v73);
      v43 = *(v42 + 8);
      v57 = v38;
      v43(v38, 0, v41, v42);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v58 = v15;
      v44 = *(v15 + 36);
      v46 = v65;
      v45 = v66;
      v47 = *(v66 + 16);
      v63 = v24;
      v48 = v67;
      v47(v65, &v32[v44], v67);
      if ((*(v39 + 48))(v46, 1, v37) == 1)
      {
        (*(v45 + 8))(v46, v48);
      }

      else
      {
        v51 = v62;
        v52 = v69;
        (*(v39 + 32))(v62, v46, v69);
        v56(v40, v51, v52);
        swift_dynamicCast();
        v53 = v73;
        v54 = v74;
        __swift_project_boxed_opaque_existential_1(v71, v73);
        (*(v54 + 8))(v57, 1, v53, v54);
        (*(v39 + 8))(v51, v52);
        __swift_destroy_boxed_opaque_existential_1(v71);
      }

      v28 = v70;
      v16 = v59;
      v50 = v60;
      v49 = v61;
      REBindPointDestroy();
      v32 = v63;
      v15 = v58;
    }

    else
    {
      outlined consume of BindTarget(v26, v25, v27);
      v50 = v60;
      v49 = v61;
    }

    (*(v50 + 8))(v28, v16);
    return (*(v49 + 8))(v32, v15);
  }
}

void (*BindableValuesReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1, char a2, uint64_t a3)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x58uLL);
  }

  v14 = v12;
  *a1 = v12;
  v12[2] = a5;
  v12[3] = v5;
  *v12 = a3;
  v12[1] = a4;
  type metadata accessor for BindableValue(255, a4, a5, v13);
  v15 = type metadata accessor for Optional();
  v14[4] = v15;
  v16 = *(v15 - 8);
  v14[5] = v16;
  v17 = *(v16 + 64);
  if (v11)
  {
    v14[6] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v14[6] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v19 = v18;
  v20 = *a2;
  v21 = *(a2 + 8);
  v14[7] = v18;
  v14[8] = v20;
  v14[9] = v21;
  v22 = *(a2 + 16);
  *(v14 + 80) = v22;
  v26 = *v5;
  v24[0] = v20;
  v24[1] = v21;
  v25 = v22;
  outlined copy of BindTarget(v20, v21, v22);
  outlined copy of BindTarget(v20, v21, v22);
  BindableValuesReference.subscript.getter(v24, a4, a5, v19);
  outlined consume of BindTarget(v20, v21, v22);
  return BindableValuesReference.subscript.modify;
}

void BindableValuesReference.subscript.modify(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    v9 = v3[4];
    v10 = v3[5];
    v11 = v3[2];
    v12 = v3[1];
    (*(v10 + 16))(v7, v8, v9);
    v16 = v6;
    v17 = v5;
    v18 = v4;
    BindableValuesReference.subscript.setter(v7, &v16, v13, v12, v11);
    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v14 = v3[2];
    v15 = v3[1];
    v16 = *(*a1 + 64);
    v17 = v5;
    v18 = v4;
    BindableValuesReference.subscript.setter(v8, &v16, a3, v15, v14);
  }

  free(v8);
  free(v7);

  free(v3);
}

uint64_t (*ParameterSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v16 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  type metadata accessor for BindableValue(255, a5, a6, v15);
  v17 = type metadata accessor for Optional();
  v16[6] = v17;
  v18 = *(v17 - 8);
  v16[7] = v18;
  v19 = *(v18 + 64);
  if (v13)
  {
    v16[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v16[8] = malloc(*(v18 + 64));
    v20 = malloc(v19);
  }

  v16[9] = v20;
  Entity.ParameterSet.subscript.getter(a2, a3);
  return ParameterSet.subscript.modify;
}

uint64_t (*Entity.bindableValues.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.bindableValues.modify;
}

uint64_t ParameterSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v14 = *v5;
  v12[0] = a1;
  v12[1] = a2;
  v13 = 1;

  BindableValuesReference.subscript.getter(v12, a3, a4, a5);
  outlined consume of BindTarget(a1, a2, 1u);
}

uint64_t ParameterSet.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized ParameterSet.subscript.setter(a1, a2, a3, a4, a5, a6);
  type metadata accessor for BindableValue(255, a5, a6, v9);
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

uint64_t (*Entity.ParameterSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x50uLL);
  }

  v16 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  type metadata accessor for BindableValue(255, a5, a6, v15);
  v17 = type metadata accessor for Optional();
  v16[6] = v17;
  v18 = *(v17 - 8);
  v16[7] = v18;
  v19 = *(v18 + 64);
  if (v13)
  {
    v16[8] = swift_coroFrameAlloc();
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v16[8] = malloc(*(v18 + 64));
    v20 = malloc(v19);
  }

  v16[9] = v20;
  Entity.ParameterSet.subscript.getter(a2, a3);
  return Entity.ParameterSet.subscript.modify;
}

void ParameterSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  v5 = (*a1)[6];
  v6 = (*a1)[7];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v11 = **a1;
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))(v3, v4, v5);

    specialized ParameterSet.subscript.setter(v3, v11, v10, v9, v8, v7);
    v12 = *(v6 + 8);
    v12(v3, v5);
    v12(v4, v5);
  }

  else
  {

    specialized ParameterSet.subscript.setter(v4, v11, v10, v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Entity.bindableValues.setter(void *a1)
{
  v2 = *a1;

  if (v2 != v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*Entity.parameters.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = v1;

  return Entity.parameters.modify;
}

void *Entity.bindableValues.modify(void *result, char a2)
{
  v2 = *result;
  v3 = result[1];
  if ((a2 & 1) == 0)
  {

    if (v2 == v3)
    {
      return result;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  if (v2 != v3)
  {
    __break(1u);
    goto LABEL_9;
  }
}

void *Entity.subscript.getter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {

    return v2;
  }

  v5 = v3 + 32;

  v6 = 0;
  v119 = v3 + 32;
  v117 = v3;
  v118 = v4;
LABEL_6:
  if (!v2)
  {
    return v2;
  }

  if (v6 >= *(v3 + 16))
  {
    goto LABEL_161;
  }

  v8 = v5 + 24 * v6;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v121 = v10;
  v122 = *v8;
  if (!*(v8 + 16))
  {

    SceneNullable = REEntityGetSceneNullable();
    if (SceneNullable)
    {
      v91 = SceneNullable;
      v92 = RESceneGetSwiftObject();
      type metadata accessor for Scene();
      if (v92)
      {
        v93 = swift_dynamicCastClassUnconditional();
      }

      else
      {
        swift_allocObject();
        v93 = Scene.init(coreScene:)(v91);
      }

      v124 = v93;
      v125 = 0;

      if (Scene.AnchorCollection.endIndex.getter() < 1)
      {
        v110 = 0;
      }

      else
      {
        v110 = 0;
        do
        {
          v111 = Scene.AnchorCollection.subscript.getter(v110++);
          if ((*(*v111 + 128))(v111) == v9 && v10 == v112)
          {

LABEL_151:
            outlined consume of BindPath.Part(v122, v10, 0);

            v125 = v110;

            v2 = v111;
            goto LABEL_5;
          }

          v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v114)
          {
            goto LABEL_151;
          }

          v9 = v122;
        }

        while (v110 < Scene.AnchorCollection.endIndex.getter());
      }

      outlined consume of BindPath.Part(v9, v10, 0);

      v125 = v110;
LABEL_147:

      v2 = 0;
      goto LABEL_5;
    }

    v107 = v9;
    v108 = v10;
    v109 = 0;
LABEL_133:
    outlined consume of BindPath.Part(v107, v108, v109);
    goto LABEL_147;
  }

  if (v11 == 1)
  {

    if (Entity.anchor.getter())
    {
      v120 = v6;
      HasHierarchy.children.getter(&v127);

      if (REEntityGetChildCount() < 1)
      {
LABEL_134:
        outlined consume of BindPath.Part(v9, v10, 1u);

        v7 = 0;
        goto LABEL_4;
      }

      v53 = 0;
      while (1)
      {
        if (v53 >= REEntityGetChildCount())
        {
          goto LABEL_159;
        }

        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_169;
        }

        v55 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v56 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_164;
          }

          if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          if (*(static SceneManager.customComponentTypeObjectIdToHandles + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v57 & 1) != 0))
          {
            swift_endAccess();
          }

          else
          {
            v58 = v3;
            swift_endAccess();
            v59 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = static SceneManager.customComponentTypeObjectIdToHandles;
            v123 = static SceneManager.customComponentTypeObjectIdToHandles;
            static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
            v63 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
            v64 = *(v61 + 16);
            v65 = (v62 & 1) == 0;
            v66 = v64 + v65;
            if (__OFADD__(v64, v65))
            {
              goto LABEL_165;
            }

            v67 = v62;
            if (*(v61 + 24) >= v66)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
              v68 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
              if ((v67 & 1) != (v69 & 1))
              {
                goto LABEL_172;
              }

              v63 = v68;
            }

            v3 = v58;
            if (v67)
            {
              *(v123[7] + 8 * v63) = v59;
              v5 = v119;
            }

            else
            {
              v123[(v63 >> 6) + 8] |= 1 << v63;
              *(v123[6] + 8 * v63) = &type metadata for __EntityInfoComponent;
              *(v123[7] + 8 * v63) = v59;
              v70 = v123[2];
              v27 = __OFADD__(v70, 1);
              v71 = v70 + 1;
              v5 = v119;
              if (v27)
              {
                goto LABEL_167;
              }

              v123[2] = v71;
            }

            static SceneManager.customComponentTypeObjectIdToHandles = v123;
            swift_endAccess();
            v9 = v122;
          }

          if (REEntityGetCustomComponent())
          {
            Object = RECustomComponentGetObject();
            if (Object)
            {
              v73 = *Object;
              if (*(Object + 8))
              {
                v74 = 1;
              }

              else
              {
                v74 = v73 == 0;
              }

              if (v74)
              {
              }

              else
              {
                v75 = *v73;
                v76 = String.init(utf8String:)();
                if (v77)
                {
                  v78 = v76;
                }

                else
                {
                  v78 = 0;
                }

                if (v77)
                {
                  v79 = v77;
                }

                else
                {
                  v79 = 0xE000000000000000;
                }

                v73 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v75 == 42, v78, v79);

                type metadata accessor for IntrospectionDataCleanupHelper();
                *(swift_allocObject() + 16) = v73;
              }

              if (!v73)
              {
                goto LABEL_171;
              }

              v80 = String.init(utf8String:)();
              if (v81)
              {
                v82 = v81;
              }

              else
              {
                v80 = 0;
                v82 = 0xE000000000000000;
              }

              v83 = MEMORY[0x1C68F3280](v80, v82);

              v84 = NSClassFromString(v83);

              v9 = v122;
              if (v84)
              {
                swift_getObjCClassMetadata();
                type metadata accessor for Entity();
                v85 = swift_dynamicCastMetatype();
                if (v85)
                {
                  v7 = (*(v85 + 232))();
                  v86 = *(v7 + 16);

                  MEMORY[0x1C68F9740](v86, 0);
                  *(v7 + 16) = v55;
                  MEMORY[0x1C68F9740](v55, v7);

                  goto LABEL_114;
                }
              }
            }
          }

          v56 = makeEntity(for:)(v55);
        }

        v7 = v56;
LABEL_114:
        v10 = v121;
        if (v53 >= REEntityGetChildCount())
        {
          goto LABEL_160;
        }

        REEntityGetName();
        if (String.init(cString:)() == v9 && v121 == v87)
        {

          v115 = v9;
          goto LABEL_154;
        }

        v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v89)
        {
          v115 = v122;
LABEL_154:
          outlined consume of BindPath.Part(v115, v121, 1u);

LABEL_4:

          v2 = v7;
          v6 = v120;
LABEL_5:
          if (++v6 == v4)
          {
            return v2;
          }

          goto LABEL_6;
        }

        ++v53;

        v9 = v122;
        if (v53 >= REEntityGetChildCount())
        {
          goto LABEL_134;
        }
      }
    }

    v107 = v9;
    v108 = v10;
    v109 = 1;
    goto LABEL_133;
  }

  if (v11 != 2)
  {
    v124 = 0;
    v125 = 0xE000000000000000;
    outlined copy of BindPath.Part(v9, v10, v11);
    _StringGuts.grow(_:)(63);
    v127 = v124;
    v128 = v125;
    MEMORY[0x1C68F3410](0xD000000000000026, 0x80000001C18DE390);
    v124 = v6;
    v94 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v94);

    MEMORY[0x1C68F3410](10272, 0xE200000000000000);
    v124 = v9;
    v125 = v10;
    v126 = v11;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0xD000000000000013, 0x80000001C18DE3C0);
    v96 = v127;
    v95 = v128;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v97 = type metadata accessor for Logger();
    __swift_project_value_buffer(v97, static AnimationLogger.logger);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = v9;
      v101 = swift_slowAlloc();
      v102 = v5;
      v103 = v6;
      v104 = swift_slowAlloc();
      v124 = v104;
      *v101 = 136315138;
      *(v101 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, &v124);
      _os_log_impl(&dword_1C1358000, v98, v99, "%s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v105 = v104;
      v6 = v103;
      v5 = v102;
      MEMORY[0x1C6902A30](v105, -1, -1);
      MEMORY[0x1C6902A30](v101, -1, -1);

      v106 = v100;
    }

    else
    {

      v106 = v9;
    }

    outlined consume of BindPath.Part(v106, v121, v11);

    v2 = 0;
    v3 = v117;
    v4 = v118;
    goto LABEL_5;
  }

  v120 = v6;
  swift_retain_n();
  outlined copy of BindPath.Part(v9, v10, 2u);
  if (REEntityGetChildCount() < 1)
  {
LABEL_3:
    outlined consume of BindPath.Part(v9, v10, 2u);

    v7 = 0;
    goto LABEL_4;
  }

  v12 = 0;
  while (v12 < REEntityGetChildCount())
  {
    v13 = REEntityGetChild();
    if (!v13)
    {
      goto LABEL_168;
    }

    v14 = v13;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v15 = swift_dynamicCastClassUnconditional();
      goto LABEL_57;
    }

    if (REEntityIsBeingDestroyed())
    {
      goto LABEL_162;
    }

    if (one-time initialization token for customComponentTypeObjectIdToHandles != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(static SceneManager.customComponentTypeObjectIdToHandles + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent), (v16 & 1) == 0))
    {
      v17 = v4;
      v18 = v3;
      v19 = v2;
      swift_endAccess();
      v20 = specialized static SceneManager.customComponentTypeHelper(_:typeName:)(&type metadata for __EntityInfoComponent, &protocol witness table for __EntityInfoComponent, 0, 0);
      swift_beginAccess();
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = static SceneManager.customComponentTypeObjectIdToHandles;
      v127 = static SceneManager.customComponentTypeObjectIdToHandles;
      static SceneManager.customComponentTypeObjectIdToHandles = 0x8000000000000000;
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
      v25 = *(v22 + 16);
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_163;
      }

      v29 = v24;
      if (*(v22 + 24) >= v28)
      {
        v9 = v122;
        if (v21)
        {
          goto LABEL_28;
        }

        v32 = v23;
        specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
        v23 = v32;
        v31 = v127;
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_29:
        *(v31[7] + 8 * v23) = v20;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v21, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for __EntityInfoComponent);
        v9 = v122;
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_172;
        }

LABEL_28:
        v31 = v127;
        if (v29)
        {
          goto LABEL_29;
        }

LABEL_31:
        v31[(v23 >> 6) + 8] |= 1 << v23;
        *(v31[6] + 8 * v23) = &type metadata for __EntityInfoComponent;
        *(v31[7] + 8 * v23) = v20;
        v33 = v31[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_166;
        }

        v31[2] = v34;
      }

      static SceneManager.customComponentTypeObjectIdToHandles = v31;
      swift_endAccess();
      v2 = v19;
      v3 = v18;
      v4 = v17;
      v5 = v119;
      goto LABEL_34;
    }

    swift_endAccess();
LABEL_34:
    v10 = v121;
    if (REEntityGetCustomComponent())
    {
      v35 = RECustomComponentGetObject();
      if (v35)
      {
        v36 = *v35;
        if (*(v35 + 8))
        {
          v37 = 1;
        }

        else
        {
          v37 = v36 == 0;
        }

        if (v37)
        {
        }

        else
        {
          v38 = *v36;
          v39 = String.init(utf8String:)();
          if (v40)
          {
            v41 = v39;
          }

          else
          {
            v41 = 0;
          }

          if (v40)
          {
            v42 = v40;
          }

          else
          {
            v42 = 0xE000000000000000;
          }

          v36 = specialized static __EntityInfoComponent.makeRawData(isNinja:entityTypeName:)(v38 == 42, v41, v42);

          type metadata accessor for IntrospectionDataCleanupHelper();
          *(swift_allocObject() + 16) = v36;
        }

        if (!v36)
        {
          goto LABEL_170;
        }

        v43 = String.init(utf8String:)();
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v43 = 0;
          v45 = 0xE000000000000000;
        }

        v46 = MEMORY[0x1C68F3280](v43, v45);

        v47 = NSClassFromString(v46);

        v9 = v122;
        if (v47)
        {
          swift_getObjCClassMetadata();
          type metadata accessor for Entity();
          v48 = swift_dynamicCastMetatype();
          if (v48)
          {
            v7 = (*(v48 + 232))();
            v49 = *(v7 + 16);

            MEMORY[0x1C68F9740](v49, 0);
            *(v7 + 16) = v14;
            MEMORY[0x1C68F9740](v14, v7);

            goto LABEL_58;
          }
        }
      }
    }

    v15 = makeEntity(for:)(v14);
LABEL_57:
    v7 = v15;
LABEL_58:
    if (v12 >= REEntityGetChildCount())
    {
      goto LABEL_158;
    }

    REEntityGetName();
    if (String.init(cString:)() == v9 && v10 == v50)
    {

LABEL_149:
      outlined consume of BindPath.Part(v122, v10, 2u);

      goto LABEL_4;
    }

    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v52)
    {
      goto LABEL_149;
    }

    ++v12;

    v9 = v122;
    if (v12 >= REEntityGetChildCount())
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Entity.ChildCollection.IndexingIterator.next()()
{
  ChildCount = REEntityGetChildCount();
  v2 = *(v0 + 8);
  if (v2 >= ChildCount)
  {
    return 0;
  }

  result = Entity.ChildCollection.subscript.getter(*(v0 + 8));
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    result = REEntityGetChildCount();
    if (v2 < result)
    {
      *(v0 + 8) = v2 + 1;
      return v4;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a1);
  v4 = Hasher._finalize()();
  return a2(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C50](v3);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](v2);
    v4 = a1[2];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (a1[4])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  Hasher._combine(_:)(0);
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  MEMORY[0x1C68F4C10](v4);
  if (a1[4])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  v2 = a1[5];
  v12 = a1[4];
  v13 = v2;
  v14 = a1[6];
  v15 = *(a1 + 14);
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  Hasher.init(_seed:)();
  CustomMaterial.CustomShaderParameters.hash(into:)(v7);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1)
{
  v2 = a1 >> 16;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](HIDWORD(a1) & 1);
  }

  if ((a1 & 0xFF0000000000) == 0x20000000000)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = (a1 >> 40) & 1;
  }

  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFFFFFF0001, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v6 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10](a2);
  }

  if ((a3 & 0xFF00) == 0x200)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1C68F4C10]((a3 >> 8) & 1);
  }

  if ((a3 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = HIWORD(a3) & 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(a1 & 1);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 0xFFFF0001, a2, a3 & 0xFFFF01, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1C68F4C10](a1);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 0x101, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double *a1)
{
  Hasher.init(_seed:)();
  ExtrudedGlyphDescriptor.Info.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AnyKeyPath();
    do
    {
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68F40A0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v12 = v5 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4, v6);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

{
  v3 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v3;
  v37[6] = *(a1 + 96);
  v38 = *(a1 + 112);
  v4 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v4;
  v5 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v5;
  v6 = -1 << *(v2 + 32);
  v7 = a2 & ~v6;
  if ((*(v2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v2 + 48) + 120 * v7;
      v10 = *(v9 + 48);
      v12 = *v9;
      v11 = *(v9 + 16);
      v33[2] = *(v9 + 32);
      v33[3] = v10;
      v33[0] = v12;
      v33[1] = v11;
      v14 = *(v9 + 80);
      v13 = *(v9 + 96);
      v15 = *(v9 + 64);
      v34 = *(v9 + 112);
      v33[5] = v14;
      v33[6] = v13;
      v33[4] = v15;
      v16 = *v9;
      v17 = *(v9 + 32);
      v18 = *(v9 + 48);
      v26 = *(v9 + 16);
      v27 = v17;
      v25 = v16;
      v19 = *(v9 + 64);
      v20 = *(v9 + 80);
      v21 = *(v9 + 96);
      v32 = *(v9 + 112);
      v30 = v20;
      v31 = v21;
      v28 = v18;
      v29 = v19;
      outlined init with copy of CustomMaterial.CustomShaderParameters(v33, v24);
      v22 = specialized static CustomMaterial.CustomShaderParameters.== infix(_:_:)(&v25, v37);
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      v35[0] = v25;
      v35[1] = v26;
      v36 = v32;
      v35[2] = v27;
      v35[3] = v28;
      outlined destroy of CustomMaterial.CustomShaderParameters(v35);
      if (v22)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    do
    {
      if (*(*(*(v2 + 48) + 8 * result) + 16) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
          v10 = v9;
          v11 = static _CFObject.== infix(_:_:)();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(v2 + 48);
    do
    {
      v10 = (v9 + 40 * v5);
      if (*v10 != v8)
      {
        goto LABEL_4;
      }

      v12 = v10[1];
      v11 = v10[2];
      v13 = v10[3];
      v14 = v10[4];
      v15 = a1[1];
      if (v12)
      {
        if (!v15 || v12 != v15)
        {
          goto LABEL_4;
        }
      }

      else if (v15)
      {
        goto LABEL_4;
      }

      v16 = a1[2];
      if (v11)
      {
        if (!v16 || v11 != v16)
        {
          goto LABEL_4;
        }
      }

      else if (v16)
      {
        goto LABEL_4;
      }

      v17 = a1[4];
      if (v14)
      {
        if (v17)
        {
          v18 = v13 == a1[3] && v14 == v17;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v5;
          }
        }
      }

      else if (!v17)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = WORD1(a1);
    v7 = ~v4;
    v8 = BYTE4(a1);
    v9 = a1 & 0xFF0000000000;
    v10 = HIDWORD(a1) & 1;
    v11 = a1 & 1;
    v12 = (a1 >> 40) & 1;
    do
    {
      v13 = (*(v2 + 48) + 6 * result);
      if (*v13 != v11 || *(v13 + 1) != v6)
      {
        goto LABEL_4;
      }

      v15 = v13[4];
      v16 = v13[5];
      if (v15 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (v8 == 2 || v10 != (v15 & 1))
      {
        goto LABEL_4;
      }

      if (v16 == 2)
      {
        if (v9 == 0x20000000000)
        {
          return result;
        }
      }

      else if (v9 != 0x20000000000 && ((v12 ^ v16) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v7;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned int a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v9 = a3 & 0xFF00;
    v10 = a3 & 0xFF0000;
    do
    {
      v11 = *(v4 + 48) + 24 * result;
      if (*v11 != (a1 & 1) || *(v11 + 2) != HIWORD(a1))
      {
        goto LABEL_4;
      }

      v13 = *(v11 + 17);
      v14 = *(v11 + 18);
      if (*(v11 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((a3 & 1) != 0 || *(v11 + 8) != a2)
      {
        goto LABEL_4;
      }

      if (v13 == 2)
      {
        if (v9 != 512)
        {
          goto LABEL_4;
        }
      }

      else if (v9 == 512 || ((a3 >> 8) & 1) != (v13 & 1))
      {
        goto LABEL_4;
      }

      if (v14 == 2)
      {
        if (v10 == 0x20000)
        {
          return result;
        }
      }

      else if (v10 != 0x20000 && ((v14 ^ ((a3 & 0x10000) >> 16)) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type UUID and conformance UUID(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      if (*v13 == a1)
      {
        v14 = v13[1] == a2 && v13[2] == a3;
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = (*(v4 + 48) + 24 * v6);
      if (*v10 == a1 && v10[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    v9 = *a1;
    v10 = *(a1 + 1);
    v21 = v10;
    do
    {
      v11 = *(v6 + 48) + 56 * v5;
      v13 = *(v11 + 16);
      v12 = *(v11 + 32);
      v14 = *v11;
      v26 = *(v11 + 48);
      v24 = v13;
      v25 = v12;
      v23 = v14;
      if (v14 != __PAIR128__(v10, *&v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v24 != a1[2])
      {
        goto LABEL_4;
      }

      v15 = *(a1 + 3);
      if (*(&v24 + 1))
      {
        if (!v15)
        {
          goto LABEL_4;
        }

        type metadata accessor for CGColorRef(0);
        outlined init with copy of ExtrudedGlyphDescriptor.Info(&v23, v22);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef, type metadata accessor for CGColorRef, protocol conformance descriptor for CGColorRef);
        v16 = v15;
        v10 = v21;
        v17 = static _CFObject.== infix(_:_:)();

        if ((v17 & 1) == 0)
        {
LABEL_3:
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v23);
          goto LABEL_4;
        }
      }

      else
      {
        if (v15)
        {
          goto LABEL_4;
        }

        outlined init with copy of ExtrudedGlyphDescriptor.Info(&v23, v22);
      }

      v18 = *(a1 + 5);
      if (*(&v25 + 1))
      {
        if (!v18)
        {
          goto LABEL_3;
        }

        if (v25 == *(a1 + 2))
        {
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v23);
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined destroy of ExtrudedGlyphDescriptor.Info(&v23);
          if ((v19 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        outlined destroy of ExtrudedGlyphDescriptor.Info(&v23);
        if (v18)
        {
          goto LABEL_4;
        }
      }

      if (__PAIR64__(HIDWORD(v26), v26) == __PAIR64__(*(a1 + 13), *(a1 + 24)))
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySOs6UInt64VGMd, &_ss18_DictionaryStorageCySOs6UInt64VGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = *v22;
      v33 = v22[1];
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v32;
      v16[1] = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMd, &_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMd, &_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMd, &_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 40 * v19);
      if (v4)
      {
        outlined init with take of ForceEffectBase(v21, v31);
      }

      else
      {
        outlined init with copy of __REAssetService(v21, v31);
      }

      result = MEMORY[0x1C68F4BE0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of ForceEffectBase(v31, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMd, &_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 80 * v20;
      if (v37)
      {
        v23 = *v22;
        v38 = *(v22 + 8);
        v39 = *(v22 + 24);
        v24 = *(v22 + 36);
        v41 = *(v22 + 40);
        v42 = *(v22 + 32);
        v43 = *(v22 + 48);
        v44 = *(v22 + 56);
        v40 = *(v22 + 64);
      }

      else
      {
        v25 = *(v22 + 16);
        v26 = *(v22 + 32);
        v27 = *(v22 + 64);
        v48 = *(v22 + 48);
        v49 = v27;
        *&v46[16] = v25;
        v47 = v26;
        *v46 = *v22;
        v44 = *(&v48 + 1);
        v40 = v27;
        v41 = *(&v26 + 1);
        v42 = v26;
        v43 = v48;
        v24 = BYTE4(v26);
        v39 = *(&v25 + 1);
        v23 = *v46;
        v38 = *&v46[8];
        outlined init with copy of ComponentInfo(v46, v45);
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v46[0] = v24;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 80 * v15;
      *v16 = v23;
      *(v16 + 8) = v38;
      *(v16 + 24) = v39;
      *(v16 + 32) = v42;
      *(v16 + 36) = v24;
      *(v16 + 40) = v41;
      *(v16 + 48) = v43;
      *(v16 + 56) = v44;
      *(v16 + 64) = v40;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v37)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMd, &_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSSGMd, &_ss18_DictionaryStorageCySOSSGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMd, &_ss18_DictionaryStorageCySOs13OpaquePointerVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMd, &_ss18_DictionaryStorageCySO10RealityKit16__RKEntityActionC0F16StateObservationVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(v5 + 56) + 16 * v19;
      if (v4)
      {
        outlined init with take of __RKEntityAction.ActionStateObservation(v21, v31);
      }

      else
      {
        outlined init with copy of __RKEntityAction.ActionStateObservation(v21, v31);
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of __RKEntityAction.ActionStateObservation(v31, *(v7 + 56) + 16 * v15);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v39 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v45 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v50 = result;
  if (*(v10 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v10 + 64);
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v10;
    v43 = v6;
    v46 = (v6 + 32);
    v18 = v50 + 64;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = *(v10 + 48);
      v47 = *(v43 + 72);
      v27 = v47 * (v23 | (v12 << 6));
      if (v45)
      {
        v28 = *v46;
        v29 = v44;
        (*v46)(v44, v26 + v27, v5);
      }

      else
      {
        v28 = *v41;
        v29 = v44;
        (*v41)(v44, v26 + v27, v5);
      }

      v28(v49, *(v10 + 56) + v27, v5);
      v30 = v50;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v30 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = v50;
      v21 = v47 * v19;
      v22 = *v46;
      (*v46)((*(v50 + 48) + v47 * v19), v29, v5);
      result = (v22)(*(v20 + 56) + v21, v49, v5);
      ++*(v20 + 16);
      v10 = v42;
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v50;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySis5Int64VGMd, &_ss18_DictionaryStorageCySis5Int64VGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ALCService.GenerationOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMd, &_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        outlined init with take of Any((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        outlined init with copy of Any(*(v9 + 56) + 32 * v23, v44);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type ALCService.GenerationOption and conformance ALCService.GenerationOption, MEMORY[0x1E698A848], MEMORY[0x1E698A858]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = outlined init with take of Any(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  Trace = type metadata accessor for LoadTrace(0);
  v36 = *(Trace - 8);
  MEMORY[0x1EEE9AC00](Trace - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMd, &_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v35 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 4 * v22);
      v24 = *(v36 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v37)
      {
        outlined init with take of LoadTrace(v25, v7);
      }

      else
      {
        outlined init with copy of LoadTrace(v25, v7);
      }

      result = MEMORY[0x1C68F4BD0](*(v10 + 40), v23, 4);
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 4 * v18) = v23;
      result = outlined init with take of LoadTrace(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v39 = type metadata accessor for URL();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation3URLVGMd, &_ss18_DictionaryStorageCySi10Foundation3URLVGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = MEMORY[0x1C68F4BF0](*(v9 + 40), v23);
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(*(v5 + 48) + 8 * v26);
      v28 = *(v5 + 56) + (v26 << 7);
      if (v4)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 48);
        v46 = *(v28 + 32);
        v47 = v31;
        v44 = v29;
        v45 = v30;
        v32 = *(v28 + 64);
        v33 = *(v28 + 80);
        v34 = *(v28 + 96);
        v51 = *(v28 + 112);
        v49 = v33;
        v50 = v34;
        v48 = v32;
      }

      else
      {
        outlined init with copy of PhotogrammetrySession.Pose(v28, &v44);
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v27);
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v27;
      v16 = *(v7 + 56) + (v15 << 7);
      v17 = v44;
      v18 = v45;
      v19 = v47;
      *(v16 + 32) = v46;
      *(v16 + 48) = v19;
      *v16 = v17;
      *(v16 + 16) = v18;
      v20 = v48;
      v21 = v49;
      v22 = v50;
      *(v16 + 112) = v51;
      *(v16 + 80) = v21;
      *(v16 + 96) = v22;
      *(v16 + 64) = v20;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v42 = 1 << *(v5 + 32);
      if (v42 >= 64)
      {
        bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v42;
      }

      *(v5 + 16) = 0;
    }

    v3 = v43;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMd, &_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 80 * v20;
      v34 = *(v22 + 32);
      v35 = *(v22 + 48);
      v36 = *(v22 + 64);
      v32 = *v22;
      v33 = *(v22 + 16);
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 80 * v15;
      *(v16 + 32) = v34;
      *(v16 + 48) = v35;
      *(v16 + 64) = v36;
      *v16 = v32;
      *(v16 + 16) = v33;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v39 = *(v22 + 18);
      v40 = *(v22 + 17);
      v37 = *(v22 + 20);
      v38 = *(v22 + 19);
      if ((v36 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 17) = v40;
      *(v16 + 18) = v39;
      *(v16 + 19) = v38;
      *(v16 + 20) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd, &_ss18_DictionaryStorageCySiSSGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v21);
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_pXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_pXpGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = MEMORY[0x1C68F4BF0](*(v7 + 40), v20);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMd, &_ss18_DictionaryStorageCys5Int32VSo10simd_quatfaGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      result = MEMORY[0x1C68F4BD0](*(v7 + 40), v20, 4);
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMd, &_ss18_DictionaryStorageCys6UInt64Vs13OpaquePointerVGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMR);
  v39 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}