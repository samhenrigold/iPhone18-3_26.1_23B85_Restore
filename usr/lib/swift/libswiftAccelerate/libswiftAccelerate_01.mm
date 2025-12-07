uint64_t specialized vImage.PixelBuffer<>.vImageBuffers.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = v14;
    v4 = *(v14 + 16);
    v5 = 32 * v4;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v15 = result;
      v9 = *(result + 24);
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v12 = *v6;
        v13 = *(v6 - 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 > 1, v4 + 1, 1);
        v8 = v12;
        v7 = v13;
        result = v15;
      }

      *(result + 16) = v10;
      v11 = result + v5;
      *(v11 + 32) = v7;
      *(v11 + 48) = v8;
      v5 += 32;
      v6 = (v6 + 40);
      v4 = v10;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t vImage.PixelBuffer<>.interleave(destination:)()
{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:));
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

{
  v1 = specialized vImage.PixelBuffer<>.pixelBuffers.getter(*v0);
  vImage.PixelBuffer<>.interleave(planarSourceBuffers:)(v1);
}

uint64_t specialized vImage.PixelBuffer<>.pixelBuffers.getter(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    v13 = a2;
    a2(0, v2, 0);
    v3 = v14;
    v6 = (a1 + 64);
    do
    {
      v7 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMR);
      v8 = swift_allocObject();
      v9 = *(v6 - 1);
      *(v8 + 32) = *(v6 - 2);
      *(v8 + 48) = v9;
      *(v8 + 16) = xmmword_1B7E76D90;
      *(v8 + 64) = v7;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);

      if (v11 >= v10 >> 1)
      {
        v13(v10 > 1, v11 + 1, 1);
      }

      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v8;
      v6 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void *, void *, char *, uint64_t, uint64_t, uint64_t, void))
{
  v78[5] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (!a5[2])
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v8 = a5[6];
  if (v8 < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v9 = a5[5];
  if (v9 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (!v8)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!v9)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!a3[2])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v11 = a3[6];
  if (v11 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v12 = a3[5];
  if (v12 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (!v11)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (!v12)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v8 != v11)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v9 != v12)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v74 = a5[5];
  v77[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v14 = 0;
  v15 = v77[0];
  v16 = a1 + 32;
  v17 = *(v77[0] + 16);
  do
  {
    v18 = *(*(v16 + 8 * v14) + 16);
    v77[0] = v15;
    v19 = *(v15 + 24);
    if (v17 >= v19 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v17 + 1, 1);
      v15 = v77[0];
    }

    ++v14;
    *(v15 + 16) = v17 + 1;
    *(v15 + 8 * v17++ + 32) = v18;
  }

  while (v6 != v14);
  v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(v15, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);

  if (*(v20 + 16) != 1)
  {
    goto LABEL_83;
  }

  v21 = *(a2 + 16);
  if (v21 != v6 + 1)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v22 = 0;
  v23 = (a2 + 36);
  do
  {
    if (v21 == v22)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (*v23 < *(v23 - 1))
    {
      goto LABEL_67;
    }

    ++v22;
    ++v23;
  }

  while (v21 - 1 != v22);
  v24 = *(*v16 + 16);
  if (!v24)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v24 > 0x100000000)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v25 = a5[4];
  if (!v25)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  if ((v8 * a4) >> 64 != (v8 * a4) >> 63)
  {
    goto LABEL_87;
  }

  if (v8 * a4 < 0)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v26 = a5[7];
  v78[0] = a5[4];
  v78[1] = v74;
  v78[2] = v8 * a4;
  v78[3] = v26;
  v78[4] = 0;
  if (!a3[4])
  {
    goto LABEL_92;
  }

  v27 = __clz(v6);
  if (v27 == 1)
  {
    goto LABEL_89;
  }

  v66 = a3[4];
  v67 = v26;
  v68 = v25;
  v69 = v8 * a4;
  v70 = v24 - 1;
  v64 = a3[7];
  v65 = (64 - v27);
  v28 = 1 << (64 - v27);
  v77[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
  v29 = 0;
  v30 = v6 - 1;
  v31 = v77[0];
  do
  {
    if (v30 >= v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = v30;
    }

    if (v32 < 0)
    {
      goto LABEL_68;
    }

    v33 = *(v16 + 8 * v32);
    v34 = *(v33 + 16);
    if (v34 >> 61)
    {
      goto LABEL_69;
    }

    v35 = 4 * v34;

    v36 = swift_slowAlloc();
    v37 = v36;
    if (*(v33 + 16))
    {
      memcpy(v36, (v33 + 32), v35);
    }

    v77[0] = v31;
    v39 = *(v31 + 2);
    v38 = *(v31 + 3);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v31 = v77[0];
    }

    ++v29;
    *(v31 + 2) = v39 + 1;
    *&v31[8 * v39 + 32] = v37;
  }

  while (v28 != v29);

  if (v21 == v39 + 2)
  {
    v41 = a2;

    outlined destroy of vImage.BufferWrapper(v78);
    v42 = a6;
    v43 = v70;
    v45 = v64;
    v44 = v65;
    goto LABEL_59;
  }

  v46 = *(v31 + 2);
  v47 = v46 - v21;
  if (v46 - v21 < -1)
  {
    goto LABEL_90;
  }

  if (v47 == -1)
  {
    v49 = MEMORY[0x1E69E7CC0];
    v42 = a6;
    v51 = a2;
    v43 = v70;
    v45 = v64;
    v44 = v65;
  }

  else
  {
    v40.i32[0] = *(a2 + 28 + 4 * v21);
    v73 = v40;
    v48 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v49 = v48;
    *(v48 + 16) = v47 + 1;
    *(v48 + 32) = v73.i32[0];
    v50 = v48 + 32;
    v45 = v64;
    v44 = v65;
    if (v46 == v21)
    {
      goto LABEL_47;
    }

    if (v47 <= 7)
    {
      v52 = 0;
      goto LABEL_54;
    }

    v52 = v47 & 0xFFFFFFFFFFFFFFF8;
    v50 += 4 * (v47 & 0xFFFFFFFFFFFFFFF8);
    v53 = vdupq_lane_s32(v73, 0);
    v54 = (v48 + 52);
    v55 = v47 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v54[-1] = v53;
      *v54 = v53;
      v54 += 2;
      v55 -= 8;
    }

    while (v55);
    if (v47 == v52)
    {
LABEL_47:
      v42 = a6;
      v51 = a2;
      v43 = v70;
    }

    else
    {
LABEL_54:
      v56 = v52 + v21 - v46;
      v57 = (v50 + 4);
      v43 = v70;
      do
      {
        *v57++ = v73.i32[0];
      }

      while (!__CFADD__(v56++, 1));
      v42 = a6;
      v51 = a2;
    }
  }

  v77[0] = v51;

  specialized Array.append<A>(contentsOf:)(v49);
  outlined destroy of vImage.BufferWrapper(v78);
  v41 = v77[0];
LABEL_59:
  v77[0] = v68;
  v77[1] = v74;
  v77[2] = v69;
  v77[3] = v67;
  v76[0] = v66;
  v76[1] = v74;
  v76[2] = v69;
  v76[3] = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2), 0, v31, &_ss23_ContiguousArrayStorageCySPySfGSgGMd, &_ss23_ContiguousArrayStorageCySPySfGSgGMR);
  }

  v59 = (v31 + 32);
  v42(v77, v76, v31 + 32, v41 + 32, v43, v44, 0);

  for (i = *(v31 + 2); i; --i)
  {
    v63 = *v59++;
    v62 = v63;
    if (v63)
    {
      MEMORY[0x1B8CB2C50](v62, -1, -1);
    }
  }
}

uint64_t vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t *, uint64_t *, char *, uint64_t, uint64_t, uint64_t, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v96 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v14 = *a3;
  v15 = *v10;
  vImage.PixelBuffer.size.getter(&v92);
  v17 = v92;
  v16 = v93;
  type metadata accessor for vImage.PixelBuffer(0, a8, *(a10 + 8), v18);
  vImage.PixelBuffer.size.getter(&v89);
  if (__PAIR128__(v16, v17) != v89)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v92 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v19 = 0;
  v20 = v92;
  v21 = a1 + 32;
  v22 = *(v92 + 16);
  do
  {
    v23 = *(*(v21 + 8 * v19) + 16);
    v92 = v20;
    v24 = *(v20 + 24);
    if (v22 >= v24 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v22 + 1, 1);
      v20 = v92;
    }

    ++v19;
    *(v20 + 16) = v22 + 1;
    *(v20 + 8 * v22++ + 32) = v23;
  }

  while (v11 != v19);
  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(v20, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], &_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);

  if (*(v25 + 16) != 1)
  {
    goto LABEL_64;
  }

  v26 = *(a2 + 16);
  if (v26 != v11 + 1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v27 = 0;
  v28 = (a2 + 36);
  do
  {
    if (v26 == v27)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (*v28 < *(v28 - 1))
    {
      goto LABEL_59;
    }

    ++v27;
    ++v28;
  }

  while (v26 - 1 != v27);
  v29 = *(*v21 + 16);
  if (!v29)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v29 > 0x100000000)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v85 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v85)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  v92 = v15;
  v30 = vImage.PixelBuffer.width.getter();
  v31 = v30 * a6;
  if ((v30 * a6) >> 64 != (v30 * a6) >> 63)
  {
    goto LABEL_68;
  }

  v32 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO13BufferWrapperVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E76D90;
  if ((v32 | v31) < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *(inited + 32) = v85;
  *(inited + 40) = v32;
  *(inited + 48) = v31;
  *(inited + 56) = v34;
  v80 = v34;
  *(inited + 64) = 0;
  v79 = vImage.PixelBuffer<>.vImageBuffer.getter();
  if (!v79)
  {
    goto LABEL_75;
  }

  v92 = v14;
  v36 = vImage.PixelBuffer.width.getter();
  if ((v36 * a6) >> 64 != (v36 * a6) >> 63)
  {
    goto LABEL_70;
  }

  v87 = v36 * a6;
  v37 = vImage.PixelBuffer.height.getter();
  vImage.PixelBuffer<>.vImageBuffer.getter();
  v84 = v37;
  if ((v37 | v87) < 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v39 = __clz(v11);
  if (v39 == 1)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v78 = v32;
  v83 = v31;
  v77 = v29 - 1;
  v75 = v38;
  v76 = (64 - v39);
  v40 = 1 << (64 - v39);
  v92 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v40, 0);
  v41 = 0;
  v42 = v11 - 1;
  v43 = v92;
  do
  {
    if (v42 >= v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = v42;
    }

    if (v44 < 0)
    {
      goto LABEL_60;
    }

    v45 = *(v21 + 8 * v44);
    v46 = *(v45 + 16);
    if (v46 >> 61)
    {
      goto LABEL_61;
    }

    v47 = 4 * v46;

    v48 = swift_slowAlloc();
    v49 = v48;
    if (*(v45 + 16))
    {
      memcpy(v48, (v45 + 32), v47);
    }

    v92 = v43;
    v51 = *(v43 + 2);
    v50 = *(v43 + 3);
    if (v51 >= v50 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
      v43 = v92;
    }

    ++v41;
    *(v43 + 2) = v51 + 1;
    *&v43[8 * v51 + 32] = v49;
  }

  while (v40 != v41);

  if (v26 == v51 + 2)
  {
    v53 = a2;

    v54 = a4;
    v55 = v79;
    v56 = v77;
    goto LABEL_51;
  }

  v57 = *(v43 + 2);
  v58 = v57 - v26;
  if (v57 - v26 < -1)
  {
    goto LABEL_73;
  }

  if (v58 == -1)
  {
    v60 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  v52.i32[0] = *(a2 + 28 + 4 * v26);
  v81 = v52;
  v59 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v60 = v59;
  *(v59 + 16) = v58 + 1;
  *(v59 + 32) = v81.i32[0];
  v61 = v59 + 32;
  if (v57 == v26)
  {
LABEL_41:
    v54 = a4;
    v63 = a2;
    goto LABEL_50;
  }

  if (v58 <= 7)
  {
    v62 = 0;
    v63 = a2;
    goto LABEL_46;
  }

  v62 = v58 & 0xFFFFFFFFFFFFFFF8;
  v61 += 4 * (v58 & 0xFFFFFFFFFFFFFFF8);
  v64 = vdupq_lane_s32(v81, 0);
  v65 = (v59 + 52);
  v66 = v58 & 0xFFFFFFFFFFFFFFF8;
  do
  {
    v65[-1] = v64;
    *v65 = v64;
    v65 += 2;
    v66 -= 8;
  }

  while (v66);
  v63 = a2;
  if (v58 == v62)
  {
    v54 = a4;
  }

  else
  {
LABEL_46:
    v67 = v62 + v26 - v57;
    v68 = (v61 + 4);
    do
    {
      *v68++ = v81.i32[0];
    }

    while (!__CFADD__(v67++, 1));
    v54 = a4;
  }

LABEL_50:
  v55 = v79;
  v56 = v77;
  v92 = v63;

  specialized Array.append<A>(contentsOf:)(v60);

  v53 = v92;
LABEL_51:
  v92 = v85;
  v93 = v78;
  v94 = v83;
  v95 = v80;
  *&v89 = v55;
  *(&v89 + 1) = v84;
  v90 = v87;
  v91 = v75;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2), 0, v43, &_ss23_ContiguousArrayStorageCySPySfGSgGMd, &_ss23_ContiguousArrayStorageCySPySfGSgGMR);
  }

  v70 = (v43 + 32);

  v54(&v92, &v89, v43 + 32, v53 + 32, v56, v76, 0);

  for (i = *(v43 + 2); i; --i)
  {
    v74 = *v70++;
    v73 = v74;
    if (v74)
    {
      MEMORY[0x1B8CB2C50](v73, -1, -1);
    }
  }
}

uint64_t vImage.PixelBuffer<>.applyPolynomial(coefficientSegments:boundaries:destination:)(uint64_t a1, uint64_t a2, void **a3)
{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589E0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 1, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 1, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 2, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 3, *v3, MEMORY[0x1E69589F0]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589E8]);
}

{
  return specialized vImage.PixelBuffer<>._applyPolynomial<A>(coefficientSegments:boundaries:destination:polynomialFunc:widthMultiplier:)(a1, a2, *a3, 4, *v3, MEMORY[0x1E69589F0]);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10DSPComplexVGMd, &_ss23_ContiguousArrayStorageCySo10DSPComplexVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16DSPDoubleComplexVGMd, &_ss23_ContiguousArrayStorageCySo16DSPDoubleComplexVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18bnns_graph_shape_taGMd, &_ss23_ContiguousArrayStorageCySo18bnns_graph_shape_taGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 160 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21bnns_graph_argument_taGMd, &_ss23_ContiguousArrayStorageCySo21bnns_graph_argument_taGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd, &_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMR);
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
    memcpy(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi1x_Si1ytGMd, &_ss23_ContiguousArrayStorageCySi1x_Si1ytGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7Float16VGMd, &_ss23_ContiguousArrayStorageCys7Float16VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate6vImageO10BufferTypeOGMd, &_ss23_ContiguousArrayStorageCy10Accelerate6vImageO10BufferTypeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySuGGMd, &_ss23_ContiguousArrayStorageCySaySuGGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  v12 = MEMORY[0x1B8CB17F0](*(*v5 + 40));
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

char *specialized Array.append<A>(contentsOf:)(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[4 * v7 + 32], v6 + 32, 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    v27 = v4;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = MEMORY[0x1B8CB17F0](*(v7 + 40), v19);
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    if (v10 >= 64)
    {
      bzero((v5 + 56), 8 * v13);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v4 = v27;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  result = MEMORY[0x1B8CB17F0](*(*v6 + 40), v7);
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = MEMORY[0x1B8CB17F0](*(v7 + 40), v18);
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v4 = v7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_nTm(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *(a1 + 16);
  result = MEMORY[0x1B8CB1430](v9, a2, a3);
  v14 = result;
  if (v9)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = *v11++;
      specialized Set._Variant.insert(_:)(&v13, v12, a4, a5, a2);
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:), MEMORY[0x1E69E6448]);
}

{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:), MEMORY[0x1E69E63B0]);
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

void closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, const float *a3, uint64_t a4, uint64_t a5, float **a6, vDSP_Length a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(a12 + 16);
  v16 = v15(a9, a12);
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = *a6;
  if (v18)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      v19 = v15(a9, a12);
      if ((v19 & 0x8000000000000000) == 0)
      {
        vDSP_conv(a3, 1, (a1 + 4 * v17), -1, v18, 1, a7, v19);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t *), uint64_t a8)
{
  v16 = (*(a5 + 16))(a3, a5);
  v17 = (*(a6 + 16))(a4, a6);
  v18 = __OFSUB__(v16, v17);
  result = v16 - v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = a6;
    v20[6] = a1;
    v20[7] = a2;
    v21 = MEMORY[0x1EEE9AC00](result);
    return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(v21, a7, v20, a8);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, const double *a3, uint64_t a4, uint64_t a5, double **a6, vDSP_Length a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (!a3)
  {
    goto LABEL_11;
  }

  if (!a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(a12 + 16);
  v16 = v15(a9, a12);
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = *a6;
  if (v18)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      v19 = v15(a9, a12);
      if ((v19 & 0x8000000000000000) == 0)
      {
        vDSP_convD(a3, 1, (a1 + 8 * v17), -1, v18, 1, a7, v19);
        return;
      }

      goto LABEL_10;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
}

uint64_t static vDSP.correlate<A, B>(_:withKernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:), MEMORY[0x1E69E6448]);
}

{
  return static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:), MEMORY[0x1E69E63B0]);
}

uint64_t static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = (*(*(a9 + 8) + 16))(a6);
  v15 = (*(a7 + 16))(a4, a7);
  result = (*(a8 + 16))(a5, a8);
  v17 = v14 + result;
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 >= v19)
  {
    v20 = MEMORY[0x1EEE9AC00](a10);
    return (*(a9 + 16))(v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = result;
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = *a5;
  if (*a5)
  {
    if (a6 < 0)
    {
      __break(1u);
    }

    else
    {
      result = (*(a12 + 16))(a9);
      if ((result & 0x8000000000000000) == 0)
      {
        return a14(a3, 1, v14, 1, v15, 1, a6, result);
      }
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:), MEMORY[0x1E69E6448]);
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:), MEMORY[0x1E69E63B0]);
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(void *, uint64_t *), uint64_t a10)
{
  v18 = (*(a7 + 16))(a5, a7);
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a1;
  v20[7] = a2;
  v20[8] = a3;
  v20[9] = a4;
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(v18, a9, v20, a10);
}

uint64_t closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, unint64_t *a13, void (*a14)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a13, a11, a12);
  a14(a3, a4, a5, a6, a1, a7, a8, v17, a9, a10, v18);
  result = (*(a9 + 16))(a7, a9);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = (*(a9 + 16))(a6, a9);
  if (v12 != result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a10 + 16))(a7, a10);
  if (result == 9)
  {
    v15 = MEMORY[0x1EEE9AC00](a12);
    return (*(v16 + 16))(v15);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:), MEMORY[0x1E69E6448]);
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, a3, a4, a5, a6, a7, a8, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:), MEMORY[0x1E69E63B0]);
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = (*(a9 + 16))(a6, a9);
  if (v12 != result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a10 + 16))(a7, a10);
  if (result == 25)
  {
    v15 = MEMORY[0x1EEE9AC00](a12);
    return (*(v16 + 16))(v15);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (!a3)
  {
    goto LABEL_7;
  }

  if ((a6 | a5) < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a7)
  {
    return a8(a3, a5, a6, result, *a7);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:), MEMORY[0x1E69E6448]);
}

{
  return static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:), MEMORY[0x1E69E63B0]);
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, uint64_t *), uint64_t a12)
{
  v20 = (*(a9 + 16))(a7, a9);
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = a6;
  return _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(v20, a11, v22, a12);
}

uint64_t closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t *a14, unint64_t *a15, void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a13, a14);
  v18 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a15, a13, a14);
  a16(a3, a4, a5, a6, a7, a8, a1, a9, a10, v17, a11, a12, v18);
  result = (*(a11 + 16))(a9, a11);
  *a2 = result;
  return result;
}

uint64_t static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 < 3 || a3 < 4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = (*(a11 + 16))(a8, a11);
  if ((a6 & 0x8000000000000001) == 1 && (a5 & 0x8000000000000001) == 1 && v14 == result)
  {
    v17 = MEMORY[0x1EEE9AC00](a14);
    return (*(v18 + 16))(v17);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if ((a6 | a5) < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*a7)
  {
    if (((a9 | a8) & 0x8000000000000000) == 0)
    {
      return a10(a3, a5, a6, result, *a7, a8);
    }

    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = v6[2];
  v11 = v6[3];
  v19 = v6[5];
  v20 = v6[4];
  v13 = v6[6];
  v14 = v6[7];
  v18 = v6[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3, a4);
  result = a6(v13, v14, a1, v12, v11, v15, v20, v19, v16);
  *a2 = v18;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.correlate<A, B>(_:withKernel:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:withKernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  v9 = *(v2 + 16);
  v10 = v3;
  v11 = *(v2 + 40);
  v12 = v4;
  v13 = v5;
  v14 = a1;
  v15 = v6;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with5x5Kernel:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:with3x3Kernel:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v8 = *(v2 + 16);
  v9 = v3;
  v10 = *(v2 + 40);
  v11 = v4;
  v12 = v5;
  v13 = *(v2 + 80);
  return (*(v10 + 24))(a2, &v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 56);
  v5 = *(v2 + 72);
  v9 = *(v2 + 16);
  v10 = v3;
  v6 = *(v2 + 96);
  v14 = *(v2 + 80);
  v11 = *(v2 + 40);
  v12 = v4;
  v13 = v5;
  v15 = a1;
  v16 = v6;
  return (*(v11 + 24))(a2, &v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSf_Tt1gq5Tm(uint64_t result, uint64_t (*a2)(void *, uint64_t *), uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v7 + 32;
  v10 = 0;
  v9[0] = v7 + 32;
  v9[1] = v6;
  result = a2(v9, &v10);
  if (v4)
  {
    if (v10 <= v6)
    {
      if (!v9[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v8 == v9[0])
      {
        *(v7 + 16) = v10;

        return v7;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 > v6)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9[0])
  {
    if (v8 == v9[0])
    {
      *(v7 + 16) = v10;
      return v7;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSo10DSPComplexV_Tt1g5Tm(uint64_t result, uint64_t (*a2)(void *, uint64_t *), uint64_t a3, uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  if (result)
  {
    (a4)(0, a2, a3);
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v7 + 32;
  v10 = 0;
  v9[0] = v7 + 32;
  v9[1] = v6;
  result = a2(v9, &v10);
  if (v4)
  {
    if (v10 <= v6)
    {
      if (!v9[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v8 == v9[0])
      {
        *(v7 + 16) = v10;

        return v7;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v10 > v6)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9[0])
  {
    if (v8 == v9[0])
    {
      *(v7 + 16) = v10;
      return v7;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, MEMORY[0x1E6958C88]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(a1, a2, MEMORY[0x1E6958C80]);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:withKernel:kernelRowCount:kernelColumnCount:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 48);
  v6 = *(v3 + 88);
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(v3 + 72);
  v10 = v6;
  v11 = *(v3 + 96);
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C48]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C40]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with3x3Kernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C38]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(a1, a2, MEMORY[0x1E6958C30]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:rowCount:columnCount:with5x5Kernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 48);
  v6 = *(v3 + 88);
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(v3 + 72);
  v10 = v6;
  return (*(v5 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v4);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, MEMORY[0x1E6958BF0]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(a1, a2, MEMORY[0x1E6958BE8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.correlate<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v9[2] = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = v4;
  v12 = *(v3 + 48);
  v13 = a1;
  v14 = a2;
  v15 = v6;
  v16 = v7;
  v17 = v5;
  return (*(v12 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v10);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(a1, a2, closure #1 in closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:));
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.convolve<A, B, C>(_:withKernel:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(v3 + 80);
  v8[2] = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v4;
  v6 = *(v3 + 64);
  v11 = *(v3 + 48);
  v12 = a1;
  v13 = a2;
  v14 = v6;
  v15 = v5;
  return (*(v11 + 24))(a3, v8, MEMORY[0x1E69E7CA8] + 8, v9);
}

uint64_t BNNS.EmbeddingLayer.__allocating_init(input:output:dictionary:paddingIndex:maximumNorm:normType:scalesGradientByFrequency:filterParameters:)(_OWORD *a1, __int128 *a2, __int128 *a3, uint64_t a4, char a5, int a6, uint64_t a7, uint64_t a8, float a9, float a10, uint64_t a11)
{
  v74 = *MEMORY[0x1E69E9840];
  v11 = a3[9];
  v67 = a3[8];
  v68 = v11;
  v69 = a3[10];
  v12 = a3[5];
  v63 = a3[4];
  v64 = v12;
  v13 = a3[7];
  v65 = a3[6];
  v66 = v13;
  v14 = a3[1];
  v59 = *a3;
  v60 = v14;
  v15 = a3[3];
  v61 = a3[2];
  v62 = v15;
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2[6];
  v55 = a2[7];
  v56 = v16;
  v19 = a2[10];
  v57 = v17;
  v58 = v19;
  v20 = a2[4];
  v53 = a2[5];
  v54 = v18;
  v21 = a2[2];
  v51 = a2[3];
  v52 = v20;
  v22 = a2[1];
  v48 = *a2;
  v49 = v22;
  v50 = v21;
  v23 = a1[5];
  *&v73[68] = a1[4];
  v24 = a1[2];
  *&v73[52] = a1[3];
  v25 = a1[6];
  *&v73[116] = a1[7];
  v26 = a1[9];
  *&v73[132] = a1[8];
  *&v73[148] = v26;
  *&v73[164] = a1[10];
  *&v73[84] = v23;
  *&v73[100] = v25;
  v27 = a1[1];
  *&v73[4] = *a1;
  *&v73[20] = v27;
  *&v73[36] = v24;
  v44 = *&v73[128];
  v45 = *&v73[144];
  v46 = *&v73[160];
  v40 = *&v73[64];
  v41 = *&v73[80];
  v42 = *&v73[96];
  v43 = *&v73[112];
  v36 = *v73;
  v37 = *&v73[16];
  v38 = *&v73[32];
  v35 = a5 & 1;
  v47 = *&v73[176];
  v39 = *&v73[48];
  v70 = a4;
  v71 = a9;
  v72 = a10;
  if (a8 == 1)
  {
    v28 = 0;
  }

  else
  {
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v34 = a11;
    v28 = &v31;
  }

  v29 = MEMORY[0x1B8CB1A60](&v35, v28);
  type metadata accessor for BNNS.EmbeddingLayer();
  result = swift_allocObject();
  if (v29)
  {
    *(result + 16) = v29;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.apply(batchSize:input:output:)(size_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 136);
  if (v4 && (v5 = *(a3 + 136)) != 0)
  {
    v7 = *(v3 + 16);
    BNNSNDArrayDescriptor.shape.getter(v15);
    BNNS.Shape.batchStride.getter();
    v9 = v8;
    BNNSNDArrayDescriptor.shape.getter(v14);
    BNNS.Shape.batchStride.getter();
    result = BNNSFilterApplyBatch(v7, a1, v4, v9, v5, v10);
    if (!result)
    {
      return result;
    }

    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
  swift_allocError();
  *v13 = v12;
  return swift_willThrow();
}

uint64_t BNNS.EmbeddingLayer.applyBackward(batchSize:input:output:outputGradient:generatingWeightsGradient:)(size_t a1, uint64_t a2, uint64_t a3, __int128 *a4, _OWORD *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a4[8];
  v8 = a4[9];
  v9 = a4[6];
  *&out_delta.stride[5] = a4[7];
  *&out_delta.stride[7] = v7;
  v10 = a4[10];
  *&out_delta.data_type = v8;
  *&out_delta.table_data_type = v10;
  v11 = a4[4];
  v12 = a4[5];
  v13 = a4[2];
  *&out_delta.size[5] = a4[3];
  *&out_delta.size[7] = v11;
  *&out_delta.stride[1] = v12;
  *&out_delta.stride[3] = v9;
  v14 = *a4;
  *&out_delta.size[1] = a4[1];
  *&out_delta.size[3] = v13;
  v15 = a5[9];
  *&weights_delta.stride[7] = a5[8];
  *&weights_delta.data_type = v15;
  *&weights_delta.table_data_type = a5[10];
  *&out_delta.flags = v14;
  v16 = a5[5];
  *&weights_delta.size[7] = a5[4];
  *&weights_delta.stride[1] = v16;
  v17 = a5[7];
  *&weights_delta.stride[3] = a5[6];
  *&weights_delta.stride[5] = v17;
  v18 = a5[1];
  *&weights_delta.flags = *a5;
  *&weights_delta.size[1] = v18;
  v19 = a5[3];
  *&weights_delta.size[3] = a5[2];
  *&weights_delta.size[5] = v19;
  v20 = *(v5 + 16);
  v21 = *(a2 + 136);
  BNNSNDArrayDescriptor.shape.getter(v33);
  BNNS.Shape.batchStride.getter();
  v23 = v22;
  v24 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v32);
  BNNS.Shape.batchStride.getter();
  v26 = v25;
  BNNSNDArrayDescriptor.shape.getter(v31);
  BNNS.Shape.batchStride.getter();
  result = BNNSFilterApplyBackwardBatch(v20, a1, v21, v23, 0, 0, v24, v26, &out_delta, v27, &weights_delta, 0);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error()
{
  result = lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error;
  if (!lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error;
  if (!lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.Error and conformance BNNS.Error);
  }

  return result;
}

uint64_t BNNS.EmbeddingLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of BNNS.EmbeddingLayer.apply(batchSize:input:output:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[17];
  v5 = *(a2 + 36);
  v6 = a2[19];
  v7 = *(a2 + 40);
  v8 = a3[17];
  v9 = *(a3 + 36);
  v10 = a3[19];
  v11 = *(a3 + 40);
  v12 = *(*v3 + 96);
  v28 = *a2;
  v29 = *(a2 + 1);
  v30 = *(a2 + 3);
  v31 = *(a2 + 5);
  v32 = *(a2 + 7);
  v33 = *(a2 + 9);
  v34 = *(a2 + 11);
  v35 = *(a2 + 13);
  v36 = *(a2 + 15);
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = *(a2 + 164);
  v14 = *a3;
  v15 = *(a3 + 1);
  v16 = *(a3 + 3);
  v17 = *(a3 + 5);
  v18 = *(a3 + 7);
  v19 = *(a3 + 9);
  v20 = *(a3 + 11);
  v21 = *(a3 + 13);
  v22 = *(a3 + 15);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 164);
  return v12(a1, &v28, &v14);
}

uint64_t dispatch thunk of BNNS.EmbeddingLayer.applyBackward(batchSize:input:output:outputGradient:generatingWeightsGradient:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[17];
  v7 = *(a2 + 36);
  v8 = a2[19];
  v9 = *(a2 + 40);
  v10 = a3[17];
  v11 = *(a3 + 36);
  v12 = a3[19];
  v13 = *(a3 + 40);
  v14 = a4[17];
  v15 = *(a4 + 36);
  v16 = a4[19];
  v17 = *(a4 + 40);
  v18 = a5[17];
  v19 = *(a5 + 36);
  v20 = a5[19];
  v21 = *(a5 + 40);
  v83 = *(*v5 + 104);
  v69 = *a2;
  v70 = *(a2 + 1);
  v71 = *(a2 + 3);
  v72 = *(a2 + 5);
  v73 = *(a2 + 7);
  v74 = *(a2 + 9);
  v75 = *(a2 + 11);
  v76 = *(a2 + 13);
  v77 = *(a2 + 15);
  v78 = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v82 = *(a2 + 164);
  v55 = *a3;
  v56 = *(a3 + 1);
  v57 = *(a3 + 3);
  v58 = *(a3 + 5);
  v59 = *(a3 + 7);
  v60 = *(a3 + 9);
  v61 = *(a3 + 11);
  v62 = *(a3 + 13);
  v63 = *(a3 + 15);
  v64 = v10;
  v65 = v11;
  v66 = v12;
  v67 = v13;
  v68 = *(a3 + 164);
  v41 = *a4;
  v42 = *(a4 + 1);
  v43 = *(a4 + 3);
  v44 = *(a4 + 5);
  v45 = *(a4 + 7);
  v46 = *(a4 + 9);
  v47 = *(a4 + 11);
  v48 = *(a4 + 13);
  v49 = *(a4 + 15);
  v50 = v14;
  v51 = v15;
  v52 = v16;
  v53 = v17;
  v54 = *(a4 + 164);
  v27 = *a5;
  v22 = *(a5 + 3);
  v28 = *(a5 + 1);
  v29 = v22;
  v23 = *(a5 + 7);
  v30 = *(a5 + 5);
  v31 = v23;
  v24 = *(a5 + 11);
  v32 = *(a5 + 9);
  v33 = v24;
  v25 = *(a5 + 15);
  v34 = *(a5 + 13);
  v35 = v25;
  v36 = v18;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = *(a5 + 164);
  return v83(a1, &v69, &v55, &v41, &v27);
}

uint64_t static BNNS.transpose(input:output:firstTransposeAxis:secondTransposeAxis:filterParameters:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = *MEMORY[0x1E69E9840];
  if (a7 != 1)
  {
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v19 = a1[9];
    v53 = a1[8];
    v54 = v19;
    v55 = a1[10];
    v20 = a1[5];
    v49 = a1[4];
    v50 = v20;
    v21 = a1[7];
    v51 = a1[6];
    v52 = v21;
    v22 = a1[1];
    v45 = *a1;
    v46 = v22;
    v23 = a1[3];
    v47 = a1[2];
    v48 = v23;
    v24 = a2[9];
    v42 = a2[8];
    v43 = v24;
    v44 = a2[10];
    v25 = a2[5];
    v38 = a2[4];
    v39 = v25;
    v26 = a2[7];
    v40 = a2[6];
    v41 = v26;
    v27 = a2[1];
    v34 = *a2;
    v35 = v27;
    v28 = a2[3];
    v36 = a2[2];
    v37 = v28;
    result = MEMORY[0x1B8CB1E90](&v34, &v45, a3, a4, &v30);
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v8 = a1[9];
  v53 = a1[8];
  v54 = v8;
  v55 = a1[10];
  v9 = a1[5];
  v49 = a1[4];
  v50 = v9;
  v10 = a1[7];
  v51 = a1[6];
  v52 = v10;
  v11 = a1[1];
  v45 = *a1;
  v46 = v11;
  v12 = a1[3];
  v47 = a1[2];
  v48 = v12;
  v13 = a2[9];
  v42 = a2[8];
  v43 = v13;
  v44 = a2[10];
  v14 = a2[5];
  v38 = a2[4];
  v39 = v14;
  v15 = a2[7];
  v40 = a2[6];
  v41 = v15;
  v16 = a2[1];
  v34 = *a2;
  v35 = v16;
  v17 = a2[3];
  v36 = a2[2];
  v37 = v17;
  result = MEMORY[0x1B8CB1E90](&v34, &v45, a3, a4, 0, a6, 1, a8);
  if (result)
  {
LABEL_5:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v29 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:));
}

{
  return static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, a3, a4, a5, a6, a7, partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:));
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, void *a2)
{
  return partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, &_sSrySfGMd, &_sSrySfGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Float> and conformance UnsafeMutableBufferPointer<A>, static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(a1, a2, &_sSrySdGMd, &_sSrySdGMR, &lazy protocol witness table cache variable for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>, static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  return static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = (*(a7 + 16))(a5, a7);
  result = (*(a6 + 16))(a4, a6);
  v18 = v16 - result;
  if (__OFSUB__(v16, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (!a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_12;
  }

  v20 = v18 / a2;
  result = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v25 = a7;
    v26 = a1;
    v27 = a2;
    v28 = a3;
    v29 = MEMORY[0x1EEE9AC00](result);
    return v21(v29, a8);
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(a8 + 16))(a5, a8);
  v15 = (*(*(a10 + 8) + 16))(a7);
  result = (*(a9 + 16))(a6, a9);
  v17 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v18 = a2 * v17;
  if ((a2 * v17) >> 64 != (a2 * v17) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = __OFADD__(v18, v14);
  v20 = v18 + v14;
  if (v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result >= v20)
  {
    v21 = MEMORY[0x1EEE9AC00](a11);
    return (*(a10 + 16))(v21);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  if (!a3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a6)
  {
    if (((a8 | a7) & 0x8000000000000000) == 0)
    {
      return a9(a3, a5, result);
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1)
{
  return partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B>(_:decimationFactor:filter:)(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v19 = v6[2];
  v18 = v6[3];
  v10 = v6[5];
  v21 = v6[4];
  v12 = v6[6];
  v11 = v6[7];
  v13 = v6[8];
  v14 = v6[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v16 = lazy protocol witness table accessor for type UnsafeMutableBufferPointer<Double> and conformance UnsafeMutableBufferPointer<A>(a5, a3, a4);
  result = a6(v12, v11, v13, a1, v19, v18, v15, v21, v10, v16);
  *a2 = v14;
  return result;
}

uint64_t partial apply for closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 72);
  v5 = *(v2 + 80);
  v7[2] = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = v3;
  v10 = *(v2 + 48);
  v11 = v4;
  v12 = v5;
  v13 = a1;
  v14 = *(v2 + 88);
  return (*(v10 + 24))(a2, v7, MEMORY[0x1E69E7CA8] + 8, v8);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

{
  return partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2)
{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, MEMORY[0x1E6958C00]);
}

{
  return partial apply for closure #1 in closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(a1, a2, MEMORY[0x1E6958BF8]);
}

uint64_t partial apply for closure #1 in closure #1 in static vDSP.downsample<A, B, C>(_:decimationFactor:filter:result:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  v6 = *(v3 + 72);
  v7 = *(v3 + 80);
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  v9[5] = v7;
  v10 = *(v3 + 88);
  return (*(v5 + 24))(a3, v9, MEMORY[0x1E69E7CA8] + 8, v4);
}

unint64_t lazy protocol witness table accessor for type vImage.Options and conformance vImage.Options()
{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options;
  if (!lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type vImage.Options and conformance vImage.Options);
  }

  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance vImage.Options(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance vImage.Options@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance vImage.Options@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t getEnumTagSinglePayload for vImage.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for vImage.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  vImage.PixelBuffer.size.getter(v17);
  type metadata accessor for vImage.PixelBuffer(0, a8, *(a11 + 8), v12);
  vImage.PixelBuffer.size.getter(v16);
  if (v17[0] == v16[0] && v17[1] == v16[1])
  {
    MEMORY[0x1EEE9AC00](v13);
    (*(v15 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:));
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v122 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)(v122 + 4, a2, a1, a2);
    if (v20 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v122 = v17;
LABEL_5:
  v21 = (*(a13 + 16))(a10);
  v121 = *(a12 + 32);
  v22 = (v121)(a9, a12);
  v23 = *(a14 + 32);
  result = (v23)(a11, a14);
  if ((v22 * result) >> 64 != (v22 * result) >> 63)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v21 != v22 * result)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v25 = *(a4 + 16);
  result = v121();
  if (v25 != result)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v117 = v25;
  v26 = *(a5 + 16);
  result = v23();
  if (v26 != result)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v118 = v26;
  v28 = v122[2];
  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = v122[4];
  v30 = v28 - 1;
  if (v28 != 1)
  {
    if (v28 >= 5)
    {
      v31 = v30 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v32 = vdupq_n_s64(v29);
      v33 = (v122 + 7);
      v34 = v30 & 0xFFFFFFFFFFFFFFFCLL;
      v35 = v32;
      do
      {
        v32 = vbslq_s8(vcgtq_s64(v32, v33[-1]), v32, v33[-1]);
        v35 = vbslq_s8(vcgtq_s64(v35, *v33), v35, *v33);
        v33 += 2;
        v34 -= 4;
      }

      while (v34);
      v36 = vbslq_s8(vcgtq_s64(v32, v35), v32, v35);
      v37 = vextq_s8(v36, v36, 8uLL).u64[0];
      v29 = vbsl_s8(vcgtd_s64(v36.i64[0], v37), *v36.i8, v37);
      if (v30 == (v30 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v31 = 1;
    }

    v38 = v28 - v31;
    v39 = &v122[v31 + 4];
    do
    {
      v41 = *v39++;
      v40 = v41;
      if (v29 <= v41)
      {
        v29 = v40;
      }

      --v38;
    }

    while (v38);
  }

LABEL_20:
  if (v29 < 0)
  {
    v42 = __OFSUB__(0, v29);
    v29 = -v29;
    if (v42)
    {
      goto LABEL_125;
    }
  }

  if (v29 >= 0x8000)
  {
    goto LABEL_110;
  }

LABEL_23:
  v43 = a6;
  if (a6 < 0)
  {
    v43 = -a6;
    if (__OFSUB__(0, a6))
    {
      goto LABEL_124;
    }
  }

  if (v43 > 0x7FFFFFFF)
  {
    goto LABEL_115;
  }

  v44 = *(a4 + 16);
  if (v44)
  {
    v45 = *(a4 + 32);
    v46 = v44 - 1;
    if (v44 == 1)
    {
      goto LABEL_37;
    }

    if (v44 >= 5)
    {
      v47 = v46 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v48 = vdupq_n_s64(v45);
      v49 = (a4 + 56);
      v50 = v46 & 0xFFFFFFFFFFFFFFFCLL;
      v51 = v48;
      do
      {
        v48 = vbslq_s8(vcgtq_s64(v48, v49[-1]), v48, v49[-1]);
        v51 = vbslq_s8(vcgtq_s64(v51, *v49), v51, *v49);
        v49 += 2;
        v50 -= 4;
      }

      while (v50);
      v52 = vbslq_s8(vcgtq_s64(v48, v51), v48, v51);
      v53 = vextq_s8(v52, v52, 8uLL).u64[0];
      v45 = vbsl_s8(vcgtd_s64(v52.i64[0], v53), *v52.i8, v53);
      if (v46 == (v46 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_37;
      }
    }

    else
    {
      v47 = 1;
    }

    v54 = v44 - v47;
    v55 = (a4 + 8 * v47 + 32);
    do
    {
      v57 = *v55++;
      v56 = v57;
      if (v45 <= v57)
      {
        v45 = v56;
      }

      --v54;
    }

    while (v54);
LABEL_37:
    if (v45 < 0)
    {
      v42 = __OFSUB__(0, v45);
      v45 = -v45;
      if (v42)
      {
        goto LABEL_126;
      }
    }

    if (v45 >= 0x8000)
    {
      goto LABEL_116;
    }
  }

  v58 = *(a5 + 16);
  if (!v58)
  {
    goto LABEL_54;
  }

  v59 = *(a5 + 32);
  v60 = v58 - 1;
  if (v58 != 1)
  {
    if (v58 >= 5)
    {
      v61 = v60 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v62 = vdupq_n_s64(v59);
      v63 = (a5 + 56);
      v64 = v60 & 0xFFFFFFFFFFFFFFFCLL;
      v65 = v62;
      do
      {
        v62 = vbslq_s8(vcgtq_s64(v62, v63[-1]), v62, v63[-1]);
        v65 = vbslq_s8(vcgtq_s64(v65, *v63), v65, *v63);
        v63 += 2;
        v64 -= 4;
      }

      while (v64);
      v66 = vbslq_s8(vcgtq_s64(v62, v65), v62, v65);
      v67 = vextq_s8(v66, v66, 8uLL).u64[0];
      v59 = vbsl_s8(vcgtd_s64(v66.i64[0], v67), *v66.i8, v67);
      if (v60 == (v60 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v61 = 1;
    }

    v68 = v58 - v61;
    v69 = (a5 + 8 * v61 + 32);
    do
    {
      v71 = *v69++;
      v70 = v71;
      if (v59 <= v71)
      {
        v59 = v70;
      }

      --v68;
    }

    while (v68);
  }

LABEL_51:
  if (v59 < 0)
  {
    v42 = __OFSUB__(0, v59);
    v59 = -v59;
    if (v42)
    {
      goto LABEL_127;
    }
  }

  if (v59 > 0x7FFFFFFF)
  {
    goto LABEL_117;
  }

LABEL_54:
  v116 = v23;
  divisor = a6;
  v114 = a5;
  v115 = a4;
  type metadata accessor for vImage.PixelBuffer(0, a9, *(a12 + 8), v27);
  v72 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v73 = *(v72 + 16);
  if (v73)
  {
    v130 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v73, 0);
    v74 = 32;
    v75 = v130;
    do
    {
      v123 = *(v72 + v74 + 16);
      *src_planesa = *(v72 + v74);
      v76 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd, &_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMR);
      inited = swift_initStackObject();
      *(inited + 32) = *src_planesa;
      *(inited + 48) = v123;
      v78 = *(inited + 48);
      *v76 = *(inited + 32);
      v76[1] = v78;
      swift_setDeallocating();
      v130 = v75;
      v80 = *(v75 + 2);
      v79 = *(v75 + 3);
      if (v80 >= v79 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1);
        v75 = v130;
      }

      *(v75 + 2) = v80 + 1;
      *&v75[8 * v80 + 32] = v76;
      v74 += 32;
      --v73;
    }

    while (v73);
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for vImage.PixelBuffer(0, a11, *(a14 + 8), v81);
  v82 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v83 = *(v82 + 16);
  if (v83)
  {
    v130 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
    v84 = 32;
    v85 = v130;
    do
    {
      v124 = *(v82 + v84 + 16);
      *src_planesb = *(v82 + v84);
      v86 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd, &_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMR);
      v87 = swift_initStackObject();
      *(v87 + 32) = *src_planesb;
      *(v87 + 48) = v124;
      v88 = *(v87 + 48);
      *v86 = *(v87 + 32);
      v86[1] = v88;
      swift_setDeallocating();
      v130 = v85;
      v90 = *(v85 + 2);
      v89 = *(v85 + 3);
      if (v90 >= v89 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
        v85 = v130;
      }

      *(v85 + 2) = v90 + 1;
      *&v85[8 * v90 + 32] = v86;
      v84 += 32;
      --v83;
    }

    while (v83);
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  result = v121();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_118;
  }

  v91 = result;
  if (HIDWORD(result))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  result = v116();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (HIDWORD(result))
  {
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v125 = result;
  src_planes = v91;
  v92 = v122[2];
  if (v92)
  {
    v130 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v92, 0);
    result = v122;
    v93 = 32;
    v94 = v130;
    while (1)
    {
      v95 = *(result + v93);
      if (v95 < -32768)
      {
        break;
      }

      if (v95 >= 0x8000)
      {
        goto LABEL_105;
      }

      v130 = v94;
      v97 = *(v94 + 2);
      v96 = *(v94 + 3);
      if (v97 >= v96 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
        result = v122;
        v94 = v130;
      }

      *(v94 + 2) = v97 + 1;
      *&v94[2 * v97 + 32] = v95;
      v93 += 8;
      if (!--v92)
      {

        goto LABEL_81;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v94 = MEMORY[0x1E69E7CC0];
LABEL_81:
  if (divisor < 0xFFFFFFFF80000000)
  {
    goto LABEL_122;
  }

  if (divisor > 0x7FFFFFFF)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    return result;
  }

  v98 = MEMORY[0x1E69E7CC0];
  if (v117)
  {
    v130 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117, 0);
    v100 = v117;
    v99 = v118;
    v98 = v130;
    v101 = (v115 + 32);
    while (1)
    {
      v103 = *v101++;
      v102 = v103;
      if (v103 < -32768)
      {
        break;
      }

      if (v102 >= 0x8000)
      {
        goto LABEL_107;
      }

      v130 = v98;
      v105 = *(v98 + 2);
      v104 = *(v98 + 3);
      if (v105 >= v104 >> 1)
      {
        v106 = v100;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
        v100 = v106;
        v99 = v118;
        v98 = v130;
      }

      *(v98 + 2) = v105 + 1;
      *&v98[2 * v105 + 32] = v102;
      if (!--v100)
      {
        goto LABEL_92;
      }
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v99 = v118;
LABEL_92:
  v107 = MEMORY[0x1E69E7CC0];
  if (v99)
  {
    v130 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
    v108 = v118;
    v107 = v130;
    v109 = (v114 + 32);
    while (1)
    {
      v111 = *v109++;
      v110 = v111;
      if (v111 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v110 > 0x7FFFFFFF)
      {
        goto LABEL_109;
      }

      v130 = v107;
      v113 = *(v107 + 2);
      v112 = *(v107 + 3);
      if (v113 >= v112 >> 1)
      {
        v119 = v108;
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1);
        v108 = v119;
        v107 = v130;
      }

      *(v107 + 2) = v113 + 1;
      *&v107[4 * v113 + 32] = v110;
      if (!--v108)
      {
        goto LABEL_99;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_99:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v75 + 2), 0, v75);
  }

  v130 = v75;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2), 0, v85);
  }

  v129 = v85;

  vImageMatrixMultiply_Planar8(v75 + 4, v85 + 4, src_planes, v125, v94 + 16, divisor, v98 + 16, v107 + 8, 0);

  $defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(&v130, &v129);
}

uint64_t specialized Sequence<>.max()(uint64_t a1, double a2, uint8x16_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    LOBYTE(v4) = 0;
    return v4 | ((v3 == 0) << 8);
  }

  v4 = *(a1 + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (a1 + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vmaxq_u8(v8, v9[-1]);
        a3 = vmaxq_u8(a3, *v9);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vmaxq_u8(v8, a3);
      v11.i8[0] = vmaxvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        return v4 | ((v3 == 0) << 8);
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
LABEL_17:
        v16 = v3 - v6;
        v17 = (v6 + a1 + 32);
        do
        {
          v19 = *v17++;
          v18 = v19;
          if (v4 <= v19)
          {
            LOBYTE(v4) = v18;
          }

          --v16;
        }

        while (v16);
        return v4 | ((v3 == 0) << 8);
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + a1 + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmax_u16((*&v12 & 0xFF00FF00FF00FFLL), *a3.i8);
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vmaxv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return v4 | ((v3 == 0) << 8);
    }

    goto LABEL_17;
  }

  return v4 | ((v3 == 0) << 8);
}

void vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  vImage.PixelBuffer.size.getter(v16);
  type metadata accessor for vImage.PixelBuffer(0, a7, *(a10 + 8), v11);
  vImage.PixelBuffer.size.getter(v15);
  if (v16[0] == v15[0] && v16[1] == v15[1])
  {
    MEMORY[0x1EEE9AC00](v12);
    (*(v14 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:));
  }

  else
  {
    __break(1u);
  }
}

unint64_t closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v48 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSf_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)((v48 + 8), a2, a1, a2);
    if (v19 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v48 = v16;
LABEL_5:
  v20 = a13;
  v21 = (*(a12 + 16))(a9);
  v53 = *(a11 + 32);
  v22 = v53(a8, a11);
  v52 = *(a13 + 32);
  result = (v52)(a10, a13);
  if ((v22 * result) >> 64 != (v22 * result) >> 63)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v21 != v22 * result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v24 = *(a4 + 16);
  result = v53(a8, a11);
  if (v24 != result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v25 = *(a5 + 16);
  result = v52();
  if (v25 != result)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  type metadata accessor for vImage.PixelBuffer(0, a8, *(a11 + 8), v26);
  v27 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v28 = *(v27 + 16);
  v50 = a4;
  v51 = a5;
  v49 = a8;
  if (v28)
  {
    v59 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = 32;
    v30 = v59;
    do
    {
      v54 = *(v27 + v29 + 16);
      v56 = *(v27 + v29);
      v31 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd, &_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMR);
      inited = swift_initStackObject();
      *(inited + 32) = v56;
      *(inited + 48) = v54;
      v33 = *(inited + 48);
      *v31 = *(inited + 32);
      v31[1] = v33;
      swift_setDeallocating();
      v59 = v30;
      v35 = *(v30 + 2);
      v34 = *(v30 + 3);
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v30 = v59;
      }

      *(v30 + 2) = v35 + 1;
      *&v30[8 * v35 + 32] = v31;
      v29 += 32;
      --v28;
    }

    while (v28);

    a4 = v50;
    v20 = a13;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for vImage.PixelBuffer(0, a10, *(v20 + 8), v36);
  v37 = vImage.PixelBuffer<>.vImageBuffers.getter();
  v38 = *(v37 + 16);
  if (v38)
  {
    v59 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = 32;
    v40 = v59;
    do
    {
      v55 = *(v37 + v39 + 16);
      v57 = *(v37 + v39);
      v41 = swift_slowAlloc();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMd, &_ss23_ContiguousArrayStorageCySo13vImage_BufferVGMR);
      v42 = swift_initStackObject();
      *(v42 + 32) = v57;
      *(v42 + 48) = v55;
      v43 = *(v42 + 48);
      *v41 = *(v42 + 32);
      v41[1] = v43;
      swift_setDeallocating();
      v59 = v40;
      v45 = *(v40 + 2);
      v44 = *(v40 + 3);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v40 = v59;
      }

      *(v40 + 2) = v45 + 1;
      *&v40[8 * v45 + 32] = v41;
      v39 += 32;
      --v38;
    }

    while (v38);

    a4 = v50;
    a5 = v51;
    a8 = v49;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
  }

  result = v53(a8, a11);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v46 = result;
  if (HIDWORD(result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = v52();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v47 = result;
  if (HIDWORD(result))
  {
LABEL_39:
    __break(1u);
    return result;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2), 0, v30);
  }

  v59 = v30;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 2), 0, v40);
  }

  v58 = v40;

  vImageMatrixMultiply_PlanarF(v30 + 4, v40 + 4, v46, v47, v48 + 8, (a4 + 32), (a5 + 32), 0);

  $defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(&v59, &v58);
}

void *$defer #1 <A><A1, B1>() in closure #1 in vImage.PixelBuffer<>.multiply<A, B>(by:divisor:preBias:postBias:destination:)(void *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {

    v5 = 32;
    do
    {
      v6 = *(v3 + v5);
      if (v6)
      {
        MEMORY[0x1B8CB2C50](v6, -1, -1);
      }

      v5 += 8;
      --v4;
    }

    while (v4);
  }

  v7 = *a2;
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = 32;
    do
    {
      v10 = *(v7 + v9);
      if (v10)
      {
        MEMORY[0x1B8CB2C50](v10, -1, -1);
      }

      v9 += 8;
      --v8;
    }

    while (v8);
  }

  return result;
}

vImage_Error vImage.PixelBuffer<>.multiply(by:divisor:preBias:postBias:destination:)(uint64_t a1, uint64_t divisor, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[4] = *MEMORY[0x1E69E9840];
  v6 = *v5;
  if (!*(*v5 + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6[6];
  if (v7 < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v6[5];
  if (v8 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (!v7)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v8)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v9 = *a5;
  if (!*(*a5 + 16))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v10 = v9[6];
  if (v10 < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v11 = v9[5];
  if (v11 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (!v11)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v7 != v10)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v8 != v11)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v12 = a1;
  if (a1 < 0)
  {
    v12 = -a1;
    if (__OFSUB__(0, a1))
    {
      goto LABEL_58;
    }
  }

  if (v12 >= 0x8000)
  {
    goto LABEL_46;
  }

  v13 = divisor;
  if (divisor < 0)
  {
    v13 = -divisor;
    if (__OFSUB__(0, divisor))
    {
      goto LABEL_59;
    }
  }

  if (v13 > 0x7FFFFFFF)
  {
    goto LABEL_47;
  }

  v14 = a3;
  if (a3 < 0)
  {
    v14 = -a3;
    if (__OFSUB__(0, a3))
    {
      goto LABEL_60;
    }
  }

  if (v14 >= 0x8000)
  {
    goto LABEL_48;
  }

  v15 = a4;
  if (a4 < 0)
  {
    v15 = -a4;
    if (__OFSUB__(0, a4))
    {
LABEL_61:
      __break(1u);
    }
  }

  if (v15 > 0x7FFFFFFF)
  {
    goto LABEL_49;
  }

  if (a3 < -32768)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (a3 >= 0x8000)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  pre_bias = a3;
  if (a4 < 0xFFFFFFFF80000000)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  post_bias = a4;
  v16 = v6[4];
  v17 = v6[7];
  v27[0] = v16;
  v27[1] = v8;
  v27[2] = v7;
  v27[3] = v17;
  v18 = v9[4];
  v19 = v9[7];
  v26[0] = v18;
  v26[1] = v8;
  v26[2] = v7;
  v26[3] = v19;
  srcs = v27;
  dests = v26;
  if (a1 < -32768)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (a1 >= 0x8000)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = a1;
  if (divisor < 0xFFFFFFFF80000000)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (divisor > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  return vImageMatrixMultiply_Planar8(&srcs, &dests, 1u, 1u, &v23, divisor, &pre_bias, &post_bias, 0);
}

uint64_t vImage.PixelBuffer<>.multiply(by:divisor:preBias:postBias:destination:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t *a11)
{
  v75 = *MEMORY[0x1E69E9840];
  v19 = *v12;
  if (!*(*v12 + 16))
  {
    goto LABEL_73;
  }

  v20 = *(v19 + 48);
  if (v20 < 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v14 = *(v19 + 40);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (!v20)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (!v14)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v15 = *a11;
  if (!*(*a11 + 16))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v21 = *(v15 + 48);
  if (v21 < 0)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v11 = *(v15 + 40);
  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (!v21)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!v11)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v20 != v21)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v14 != v11)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v65 = *v12;
  v66 = *(v19 + 48);
  v71 = a5;
  v18 = a9;
  v13 = a2;
  v69 = a8;
  v70 = a7;
  v17 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  inited = swift_initStackObject();
  v68 = 4;
  *(inited + 16) = xmmword_1B7E770E0;
  v67 = a1;
  *(inited + 32) = a1;
  *(inited + 40) = v13;
  v63 = a3;
  v64 = v13;
  *(inited + 48) = a3;
  *(inited + 56) = a4;
  v16 = v17;
  v62 = a4;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_1B7E770E0;
  *(v26 + 32) = v17;
  *(v26 + 40) = v70;
  *(v26 + 48) = v69;
  *(v26 + 56) = a9;
  v11 = *(inited + 16);
  if (!v11)
  {
    goto LABEL_27;
  }

  v27 = *(inited + 32);
  v28 = v11 - 1;
  if (v11 == 1)
  {
    goto LABEL_24;
  }

  if (v11 >= 5)
  {
    v29 = v28 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v30 = vdupq_n_s64(v27);
    v31 = (inited + 56);
    v32 = v28 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = v30;
    do
    {
      v30 = vbslq_s8(vcgtq_s64(v30, v31[-1]), v30, v31[-1]);
      v33 = vbslq_s8(vcgtq_s64(v33, *v31), v33, *v31);
      v31 += 2;
      v32 -= 4;
    }

    while (v32);
    v34 = vbslq_s8(vcgtq_s64(v30, v33), v30, v33);
    v35 = vextq_s8(v34, v34, 8uLL).u64[0];
    v27 = vbsl_s8(vcgtd_s64(v34.i64[0], v35), *v34.i8, v35);
    if (v28 == (v28 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = 1;
  }

  v11 -= v29;
  v36 = (inited + 8 * v29 + 32);
  do
  {
    v38 = *v36++;
    v37 = v38;
    if (v27 <= v38)
    {
      v27 = v37;
    }

    --v11;
  }

  while (v11);
LABEL_24:
  if (v27 < 0)
  {
    v39 = __OFSUB__(0, v27);
    v27 = -v27;
    if (v39)
    {
LABEL_119:
      __break(1u);
    }
  }

  if (v27 >= 0x8000)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_27:
  v40 = v71;
  if (v71 < 0)
  {
    v40 = -v71;
    if (__OFSUB__(0, v71))
    {
      goto LABEL_116;
    }
  }

  v11 = 0x7FFFFFFFLL;
  if (v40 > 0x7FFFFFFF)
  {
    goto LABEL_85;
  }

  if (v17 <= v70)
  {
    v41 = v70;
  }

  else
  {
    v41 = v17;
  }

  if (v41 <= v69)
  {
    v41 = v69;
  }

  if (v41 <= a9)
  {
    v41 = a9;
  }

  if (v41 < 0)
  {
    v39 = __OFSUB__(0, v41);
    v41 = -v41;
    if (v39)
    {
      goto LABEL_117;
    }
  }

  if (v41 >= 0x8000)
  {
    goto LABEL_86;
  }

  v18 = a10;
  v42 = a10;
  if (a10 < 0)
  {
    v42 = -a10;
    if (__OFSUB__(0, a10))
    {
      goto LABEL_118;
    }
  }

  v11 = 0x7FFFFFFFLL;
  if (v42 > 0x7FFFFFFF)
  {
    goto LABEL_87;
  }

  v68 = a9;
  v43 = *(v65 + 56);
  src.data = *(v65 + 32);
  src.height = v14;
  src.width = v66;
  src.rowBytes = v43;
  v44 = *(v15 + 56);
  dest.data = *(v15 + 32);
  dest.height = v14;
  dest.width = v66;
  dest.rowBytes = v44;
  v14 = MEMORY[0x1E69E7CC0];
  v72 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  v45 = a1;
  if (a1 < -32768)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (a1 < 0x8000)
  {
    v46 = v72;
    v15 = *(v72 + 16);
    v11 = *(v72 + 24);
    v13 = v15 + 1;
    if (v15 < v11 >> 1)
    {
      goto LABEL_46;
    }

    goto LABEL_90;
  }

LABEL_89:
  __break(1u);
LABEL_90:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v13, 1);
  v45 = v67;
  v46 = v72;
LABEL_46:
  *(v46 + 16) = v13;
  v47 = v46 + 2 * v15;
  *(v47 + 32) = v45;
  v48 = v64;
  if (v64 < -32768)
  {
    __break(1u);
  }

  else if (v64 < 0x8000)
  {
    v47 = *(v46 + 24);
    v17 = v15 + 2;
    if (v13 < v47 >> 1)
    {
      goto LABEL_49;
    }

    goto LABEL_93;
  }

  __break(1u);
LABEL_93:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v17, 1);
  v48 = v64;
  v46 = v72;
LABEL_49:
  *(v46 + 16) = v17;
  *(v46 + 2 * v13 + 32) = v48;
  v49 = v63;
  if (v63 < -32768)
  {
    __break(1u);
  }

  else if (v63 < 0x8000)
  {
    v15 = *(v46 + 16);
    v46 = *(v46 + 24);
    v13 = v15 + 1;
    if (v15 < v46 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_96:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v13, 1);
  v49 = v63;
LABEL_52:
  v50 = v72;
  *(v72 + 16) = v13;
  v51 = v72 + 2 * v15;
  *(v51 + 32) = v49;
  v52 = v62;
  if (v62 < -32768)
  {
    __break(1u);
  }

  else if (v62 < 0x8000)
  {
    v51 = *(v72 + 24);
    v17 = v15 + 2;
    if (v13 < v51 >> 1)
    {
      goto LABEL_55;
    }

    goto LABEL_99;
  }

  __break(1u);
LABEL_99:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v17, 1);
  v52 = v62;
  v50 = v72;
LABEL_55:
  *(v50 + 16) = v17;
  *(v50 + 32 + 2 * v13) = v52;

  if (v71 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (v71 > 0x7FFFFFFF)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v72 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0);
  if (v16 < -32768)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v16 < 0x8000)
  {
    v54 = v14;
    v14 = *(v14 + 16);
    v53 = *(v72 + 24);
    v13 = v14 + 1;
    if (v14 < v53 >> 1)
    {
      goto LABEL_60;
    }

    goto LABEL_104;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v13, 1);
  v54 = v72;
LABEL_60:
  *(v54 + 16) = v13;
  v55 = v54 + 2 * v14;
  *(v55 + 32) = v16;
  v56 = v70;
  if (v70 < -32768)
  {
    __break(1u);
  }

  else if (v70 < 0x8000)
  {
    v55 = *(v54 + 24);
    v16 = v14 + 2;
    if (v13 < v55 >> 1)
    {
      goto LABEL_63;
    }

    goto LABEL_107;
  }

  __break(1u);
LABEL_107:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v16, 1);
  v56 = v70;
  v54 = v72;
LABEL_63:
  *(v54 + 16) = v16;
  *(v54 + 2 * v13 + 32) = v56;
  v57 = v69;
  if (v69 < -32768)
  {
    __break(1u);
  }

  else if (v69 < 0x8000)
  {
    v13 = *(v54 + 16);
    v54 = *(v54 + 24);
    v14 = v13 + 1;
    if (v13 < v54 >> 1)
    {
      goto LABEL_66;
    }

    goto LABEL_110;
  }

  __break(1u);
LABEL_110:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v14, 1);
  v57 = v69;
LABEL_66:
  v58 = v72;
  *(v72 + 16) = v14;
  v59 = v72 + 2 * v13;
  *(v59 + 32) = v57;
  v60 = v68;
  if (v68 < -32768)
  {
    __break(1u);
  }

  else if (v68 < 0x8000)
  {
    v59 = *(v72 + 24);
    v13 += 2;
    if (v14 < v59 >> 1)
    {
      goto LABEL_69;
    }

    goto LABEL_113;
  }

  __break(1u);
LABEL_113:
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v13, 1);
  v60 = v68;
  v58 = v72;
LABEL_69:
  *(v58 + 16) = v13;
  *(v58 + 32 + 2 * v14) = v60;
  swift_setDeallocating();
  if (v18 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_115;
  }

  if (v18 > 0x7FFFFFFF)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  vImageMatrixMultiply_ARGB8888ToPlanar8(&src, &dest, (v50 + 32), v71, (v58 + 32), v18, 0);
}

uint64_t vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v14 = *v13;
  if (!*(*v13 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = *(v14 + 48);
  if (v15 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = *(v14 + 40);
  if (v16 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = *a11;
  if (!*(*a11 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v17 + 48);
  if (v18 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v17 + 40);
  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 != v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 == v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7E770E0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a5;
    *(inited + 56) = a6;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_1B7E770E0;
    *(v27 + 32) = a7;
    *(v27 + 40) = a8;
    *(v27 + 48) = a9;
    *(v27 + 56) = a10;
    MEMORY[0x1EEE9AC00](v27);
    (*(a13 + 24))(partial apply for closure #1 in vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:));
    swift_setDeallocating();
    return swift_setDeallocating();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t closure #1 in vImage.PixelBuffer<>.multiply<A>(by:divisor:preBias:postBias:destination:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v95 = *MEMORY[0x1E69E9840];
  v13 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(a2, 0);
    specialized UnsafeBufferPointer._copyContents(initializing:)(v16 + 4, a2, a1, a2);
    if (v17 == a2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = v13;
LABEL_5:
  if ((*(a10 + 16))(a9) != 16)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v18 = v16[2];
  v19 = a4;
  if (!v18)
  {
    goto LABEL_20;
  }

  v20 = v16[4];
  v21 = v18 - 1;
  if (v18 != 1)
  {
    if (v18 >= 5)
    {
      v22 = v21 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v23 = vdupq_n_s64(v20);
      v24 = (v16 + 7);
      v25 = v21 & 0xFFFFFFFFFFFFFFFCLL;
      v26 = v23;
      do
      {
        v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v23, v24[-1]);
        v26 = vbslq_s8(vcgtq_s64(v26, *v24), v26, *v24);
        v24 += 2;
        v25 -= 4;
      }

      while (v25);
      v27 = vbslq_s8(vcgtq_s64(v23, v26), v23, v26);
      v28 = vextq_s8(v27, v27, 8uLL).u64[0];
      v20 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
      if (v21 == (v21 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 1;
    }

    v29 = v18 - v22;
    v30 = &v16[v22 + 4];
    do
    {
      v32 = *v30++;
      v31 = v32;
      if (v20 <= v32)
      {
        v20 = v31;
      }

      --v29;
    }

    while (v29);
  }

LABEL_17:
  if (v20 < 0)
  {
    v33 = __OFSUB__(0, v20);
    v20 = -v20;
    if (v33)
    {
      goto LABEL_97;
    }
  }

  if (v20 >= 0x8000)
  {
    goto LABEL_87;
  }

LABEL_20:
  v34 = a4;
  if (a4 < 0)
  {
    v34 = -a4;
    if (__OFSUB__(0, a4))
    {
      goto LABEL_96;
    }
  }

  if (v34 > 0x7FFFFFFF)
  {
    goto LABEL_89;
  }

  v35 = *(a5 + 16);
  if (v35)
  {
    v36 = *(a5 + 32);
    v37 = v35 - 1;
    if (v35 == 1)
    {
      goto LABEL_34;
    }

    if (v35 >= 5)
    {
      v38 = v37 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v39 = vdupq_n_s64(v36);
      v40 = (a5 + 56);
      v41 = v37 & 0xFFFFFFFFFFFFFFFCLL;
      v42 = v39;
      do
      {
        v39 = vbslq_s8(vcgtq_s64(v39, v40[-1]), v39, v40[-1]);
        v42 = vbslq_s8(vcgtq_s64(v42, *v40), v42, *v40);
        v40 += 2;
        v41 -= 4;
      }

      while (v41);
      v43 = vbslq_s8(vcgtq_s64(v39, v42), v39, v42);
      v44 = vextq_s8(v43, v43, 8uLL).u64[0];
      v36 = vbsl_s8(vcgtd_s64(v43.i64[0], v44), *v43.i8, v44);
      if (v37 == (v37 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v38 = 1;
    }

    v45 = v35 - v38;
    v46 = (a5 + 8 * v38 + 32);
    do
    {
      v48 = *v46++;
      v47 = v48;
      if (v36 <= v48)
      {
        v36 = v47;
      }

      --v45;
    }

    while (v45);
LABEL_34:
    if (v36 < 0)
    {
      v33 = __OFSUB__(0, v36);
      v36 = -v36;
      if (v33)
      {
        goto LABEL_98;
      }
    }

    if (v36 >= 0x8000)
    {
      goto LABEL_90;
    }
  }

  v49 = *(a6 + 16);
  if (!v49)
  {
    goto LABEL_51;
  }

  v50 = *(a6 + 32);
  v51 = v49 - 1;
  if (v49 != 1)
  {
    if (v49 >= 5)
    {
      v52 = v51 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v53 = vdupq_n_s64(v50);
      v54 = (a6 + 56);
      v55 = v51 & 0xFFFFFFFFFFFFFFFCLL;
      v56 = v53;
      do
      {
        v53 = vbslq_s8(vcgtq_s64(v53, v54[-1]), v53, v54[-1]);
        v56 = vbslq_s8(vcgtq_s64(v56, *v54), v56, *v54);
        v54 += 2;
        v55 -= 4;
      }

      while (v55);
      v57 = vbslq_s8(vcgtq_s64(v53, v56), v53, v56);
      v58 = vextq_s8(v57, v57, 8uLL).u64[0];
      v50 = vbsl_s8(vcgtd_s64(v57.i64[0], v58), *v57.i8, v58);
      if (v51 == (v51 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_48;
      }
    }

    else
    {
      v52 = 1;
    }

    v59 = v49 - v52;
    v60 = (a6 + 8 * v52 + 32);
    do
    {
      v62 = *v60++;
      v61 = v62;
      if (v50 <= v62)
      {
        v50 = v61;
      }

      --v59;
    }

    while (v59);
  }

LABEL_48:
  if (v50 < 0)
  {
    v33 = __OFSUB__(0, v50);
    v50 = -v50;
    if (v33)
    {
LABEL_99:
      __break(1u);
    }
  }

  if (v50 > 0x7FFFFFFF)
  {
    goto LABEL_91;
  }

LABEL_51:
  v63 = *a7;
  if (!*(*a7 + 16))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v64 = *(v63 + 48);
  *&src.data = *(v63 + 32);
  *&src.width = v64;
  v65 = *a8;
  if (!*(*a8 + 16))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v66 = *(v65 + 48);
  *&dest.data = *(v65 + 32);
  *&dest.width = v66;
  if (v18)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v67 = 4;
    v68 = v13;
    while (1)
    {
      v69 = v16[v67];
      if (v69 < -32768)
      {
        break;
      }

      if (v69 >= 0x8000)
      {
        goto LABEL_82;
      }

      v71 = v68[2];
      v70 = v68[3];
      if (v71 >= v70 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
      }

      v68[2] = v71 + 1;
      *(v68 + v71 + 16) = v69;
      ++v67;
      if (!--v18)
      {

        v19 = a4;
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v68 = MEMORY[0x1E69E7CC0];
LABEL_62:
  if (v19 < 0xFFFFFFFF80000000)
  {
    goto LABEL_94;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v72 = *(a5 + 16);
  v73 = MEMORY[0x1E69E7CC0];
  if (v72)
  {
    v91 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
    v73 = v91;
    v74 = (a5 + 32);
    v75 = a6;
    while (1)
    {
      v77 = *v74++;
      v76 = v77;
      if (v77 < -32768)
      {
        break;
      }

      if (v76 >= 0x8000)
      {
        goto LABEL_84;
      }

      v79 = *(v91 + 16);
      v78 = *(v91 + 24);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
        v75 = a6;
      }

      *(v91 + 16) = v79 + 1;
      *(v91 + 2 * v79 + 32) = v76;
      if (!--v72)
      {
        goto LABEL_73;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v75 = a6;
LABEL_73:
  v80 = *(v75 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v92 = MEMORY[0x1E69E7CC0];
    v82 = v75;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v80, 0);
    v81 = v92;
    v83 = (v82 + 32);
    while (1)
    {
      v85 = *v83++;
      v84 = v85;
      if (v85 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v84 > 0x7FFFFFFF)
      {
        goto LABEL_86;
      }

      v87 = *(v92 + 16);
      v86 = *(v92 + 24);
      if (v87 >= v86 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v86 > 1, v87 + 1, 1);
      }

      *(v92 + 16) = v87 + 1;
      *(v92 + 4 * v87 + 32) = v84;
      if (!--v80)
      {
        goto LABEL_80;
      }
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_80:
  vImageMatrixMultiply_ARGB8888(&src, &dest, v68 + 16, a4, (v73 + 32), (v81 + 32), 0);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, float a2, float a3, float a4)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *v4;
  if (!*(*v4 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v5[6];
  if (v6 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v5[5];
  if (v7 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8[6];
  if (v9 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v8[5];
  if (v10 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 != v9)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v7 != v10)
  {
    goto LABEL_25;
  }

  post_bias = a4;
  pre_bias = a3;
  v11 = v5[4];
  v12 = v5[7];
  v22[0] = v11;
  v22[1] = v7;
  v22[2] = v6;
  v22[3] = v12;
  v13 = v8[4];
  v14 = v8[7];
  v21[0] = v13;
  v21[1] = v7;
  v21[2] = v6;
  v21[3] = v14;
  srcs = v22;
  dests = v21;
  v18 = a2;
  return vImageMatrixMultiply_PlanarF(&srcs, &dests, 1u, 1u, &v18, &pre_bias, &post_bias, 0);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v11 = *v10;
  if (!*(*v10 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11[6];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v11[5];
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14[6];
  if (v15 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = v14[5];
  if (v16 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v12 != v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v13 != v16)
  {
    goto LABEL_25;
  }

  v25[0] = a2;
  v25[1] = a3;
  v25[2] = a4;
  v25[3] = a5;
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a9;
  v17 = v11[4];
  v18 = v11[7];
  src.data = v17;
  src.height = v13;
  src.width = v12;
  src.rowBytes = v18;
  v19 = v14[4];
  v20 = v14[7];
  dest.data = v19;
  dest.height = v13;
  dest.width = v12;
  dest.rowBytes = v20;
  return vImageMatrixMultiply_ARGBFFFFToPlanarF(&src, &dest, v25, v24, a10, 0);
}

uint64_t vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v13 = v12;
  v36[16] = *MEMORY[0x1E69E9840];
  if ((*(a4 + 16))(a3, a4) != 16)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = *v13;
  if (!*(*v13 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26[6];
  if (v27 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = v26[5];
  if (v28 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v27)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = *(v29 + 48);
  if (v30 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = *(v29 + 40);
  if (v31 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v27 != v30)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v28 != v31)
  {
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B7E770E0;
  *(inited + 32) = a5;
  *(inited + 36) = a6;
  *(inited + 40) = a7;
  *(inited + 44) = a8;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_1B7E770E0;
  *(v33 + 32) = a9;
  *(v33 + 36) = a10;
  *(v33 + 40) = a11;
  *(v33 + 44) = a12;
  v34 = v26[7];
  v36[0] = v26[4];
  v36[1] = v28;
  v36[2] = v27;
  v36[3] = v34;
  closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(v36, a2, a1, inited, v33, a3, a4);
  swift_setDeallocating();
  return swift_setDeallocating();
}

uint64_t closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (!*(*a2 + 16))
  {
    __break(1u);
  }

  v8 = *(v7 + 48);
  v10[0] = *(v7 + 32);
  v10[1] = v8;
  v12 = a1;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  return (*(a7 + 24))(partial apply for closure #1 in closure #1 in closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:), v11, MEMORY[0x1E69E7CA8] + 8, a6, a7);
}

vImage_Error vImage.PixelBuffer<>.multiply(by:preBias:postBias:destination:)(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v33 = *MEMORY[0x1E69E9840];
  v14 = *v13;
  if (!*(*v13 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v15 = v14[6];
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v14[5];
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = *a1;
  if (!*(*a1 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17[6];
  if (v18 < 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v17[5];
  if (v19 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 != v18)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  if (v16 != v19)
  {
    goto LABEL_25;
  }

  v32[0] = a6;
  v32[1] = a7;
  v32[2] = a8;
  v32[3] = a9;
  v31[0] = a10;
  v31[1] = a11;
  v31[2] = a12;
  v31[3] = a13;
  *&v20 = vzip1q_s32(a2, a3).u64[0];
  *(&v20 + 1) = vextq_s8(*&a4, vzip1q_s32(a4, a5), 8uLL).i64[1];
  *&v21 = vtrn2q_s32(a2, a3).u64[0];
  *(&v21 + 1) = __PAIR64__(a5.u32[1], a4.u32[1]);
  v30[0] = v20;
  v30[1] = v21;
  *&v20 = vzip2q_s32(a2, a3).u64[0];
  *(&v20 + 1) = __PAIR64__(a5.u32[2], a4.u32[2]);
  *&v22 = vuzp2q_s32(vuzp2q_s32(a2, a3), a2).u64[0];
  *(&v22 + 1) = __PAIR64__(a5.u32[3], a4.u32[3]);
  v30[2] = v20;
  v30[3] = v22;
  v23 = v14[4];
  v24 = v14[7];
  src.data = v23;
  src.height = v16;
  src.width = v15;
  src.rowBytes = v24;
  v25 = v17[4];
  v26 = v17[7];
  dest.data = v25;
  dest.height = v16;
  dest.width = v15;
  dest.rowBytes = v26;
  return vImageMatrixMultiply_ARGBFFFF(&src, &dest, v30, v32, v31, 0);
}

const float *partial apply for closure #1 in closure #1 in closure #1 in vImage.PixelBuffer<>.multiply<A>(by:preBias:postBias:destination:)(const float *matrix)
{
  if (matrix)
  {
    return vImageMatrixMultiply_ARGBFFFF(*(v1 + 16), *(v1 + 24), matrix, (*(v1 + 32) + 32), (*(v1 + 40) + 32), 0);
  }

  __break(1u);
  return matrix;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t vImage.PixelBuffer<>.extractChannel(at:destination:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E6958920];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958928];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

{
  v2 = MEMORY[0x1E6958918];

  return vImage.PixelBuffer<>.extractChannel(at:destination:)(a1, a2, v2);
}

uint64_t vImage.PixelBuffer<>._extractChannel<A>(channelIndex:destination:extractFunc:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *, uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a1 > 3)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  vImage.PixelBuffer.size.getter(&v25);
  v12 = v25;
  v11 = v26;
  type metadata accessor for vImage.PixelBuffer(0, a6, *(*(a8 + 8) + 8), v13);
  vImage.PixelBuffer.size.getter(&v22);
  if (__PAIR128__(v11, v12) != v22)
  {
    goto LABEL_5;
  }

  *&v22 = vImage.PixelBuffer<>.vImageBuffer.getter();
  *(&v22 + 1) = v14;
  v23 = v15;
  v24 = v16;
  v25 = vImage.PixelBuffer<>.vImageBuffer.getter();
  v26 = v17;
  v27 = v18;
  v28 = v19;
  return a3(&v22, &v25, a1, 0);
}

uint64_t vImage.PixelBuffer<>.extractChannel(at:destination:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, void *, uint64_t, void))
{
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 > 3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *v3;
  if (!*(*v3 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = v4[6];
  if (v5 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v4[5];
  if (v6 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *a2;
  if (!*(*a2 + 16))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8 = v7[6];
  if (v8 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v7[5];
  if (v9 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 != v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v6 != v9)
  {
    goto LABEL_27;
  }

  v10 = v4[4];
  v11 = v4[7];
  v16[0] = v10;
  v16[1] = v6;
  v16[2] = v5;
  v16[3] = v11;
  v12 = v7[4];
  v13 = v7[7];
  v15[0] = v12;
  v15[1] = v6;
  v15[2] = v5;
  v15[3] = v13;
  return a3(v16, v15, a1, 0);
}

double BNNS.ActivationFunction.bnnsActivation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  switch(*(v1 + 8))
  {
    case 1:
      v3 = HIDWORD(v2);
      v4 = 5;
      break;
    case 2:
      LODWORD(v3) = 2143289344;
      v4 = 7;
      break;
    case 3:
      v3 = HIDWORD(v2);
      v4 = 8;
      break;
    case 4:
      v3 = HIDWORD(v2);
      v4 = 12;
      break;
    case 5:
    case 0x11:
      v3 = HIDWORD(v2);
      v4 = 30;
      break;
    case 6:
      v3 = HIDWORD(v2);
      v4 = 13;
      break;
    case 7:
      v3 = HIDWORD(v2);
      v4 = 14;
      break;
    case 8:
      v3 = HIDWORD(v2);
      v4 = 15;
      break;
    case 9:
      v3 = HIDWORD(v2);
      v4 = 16;
      break;
    case 0xA:
      LODWORD(v3) = 2143289344;
      v4 = 18;
      break;
    case 0xB:
      LODWORD(v3) = 2143289344;
      v4 = 24;
      break;
    case 0xC:
      v3 = HIDWORD(v2);
      v4 = 19;
      break;
    case 0xD:
      v3 = HIDWORD(v2);
      v4 = 20;
      break;
    case 0xE:
      LODWORD(v3) = 2143289344;
      v4 = 25;
      break;
    case 0xF:
      LODWORD(v3) = 2143289344;
      v4 = 26;
      break;
    case 0x10:
      v3 = HIDWORD(v2);
      v4 = 28;
      break;
    case 0x12:
      v4 = dword_1B7E771B4[v2];
      LODWORD(v2) = 2143289344;
      LODWORD(v3) = 2143289344;
      break;
    default:
      LODWORD(v3) = 2143289344;
      v4 = 2;
      break;
  }

  *a1 = v4;
  *(a1 + 4) = v2;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t BNNS.ActivationLayer.__allocating_init(function:input:output:filterParameters:)(uint64_t a1, _OWORD *a2, __int128 *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3[8];
  v12 = a3[9];
  v13 = a3[6];
  __src[18] = a3[7];
  __src[19] = v11;
  v14 = a3[10];
  __src[20] = v12;
  __src[21] = v14;
  v15 = a3[4];
  v16 = a3[5];
  v17 = a3[2];
  __src[14] = a3[3];
  __src[15] = v15;
  __src[16] = v16;
  __src[17] = v13;
  v18 = *a3;
  __src[12] = a3[1];
  __src[13] = v17;
  v19 = a2[9];
  __src[8] = a2[8];
  __src[9] = v19;
  __src[10] = a2[10];
  __src[11] = v18;
  v20 = a2[5];
  __src[4] = a2[4];
  __src[5] = v20;
  v21 = a2[7];
  __src[6] = a2[6];
  __src[7] = v21;
  v22 = a2[1];
  __src[0] = *a2;
  __src[1] = v22;
  v23 = a2[3];
  __src[2] = a2[2];
  __src[3] = v23;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  memcpy(__dst, __src, sizeof(__dst));
  v32 = 0;
  if (a6 == 1)
  {
    v24 = 0;
  }

  else
  {
    v27 = a4;
    v28 = a5;
    v29 = a6;
    v30 = a7;
    v24 = &v27;
  }

  v25 = MEMORY[0x1B8CB1A10](__dst, v24);
  type metadata accessor for BNNS.ActivationLayer();
  result = swift_allocObject();
  if (v25)
  {
    *(result + 16) = v25;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t BNNS.ActivationLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t static BNNS.applyActivation(activation:input:output:batchSize:filterParameters:)(uint64_t *a1, _OWORD *a2, __int128 *a3, size_t a4, uint32_t a5, size_t a6, int (__cdecl *a7)(void **, size_t, size_t), void (__cdecl *a8)(void *))
{
  v42 = *MEMORY[0x1E69E9840];
  v13 = a3[8];
  v14 = a3[9];
  v15 = a3[6];
  __src[18] = a3[7];
  __src[19] = v13;
  v16 = a3[10];
  __src[20] = v14;
  __src[21] = v16;
  v17 = a3[4];
  v18 = a3[5];
  v19 = a3[2];
  __src[14] = a3[3];
  __src[15] = v17;
  __src[16] = v18;
  __src[17] = v15;
  v20 = *a3;
  __src[12] = a3[1];
  __src[13] = v19;
  v21 = a2[9];
  __src[8] = a2[8];
  __src[9] = v21;
  __src[10] = a2[10];
  __src[11] = v20;
  v22 = a2[5];
  __src[4] = a2[4];
  __src[5] = v22;
  v23 = a2[7];
  __src[6] = a2[6];
  __src[7] = v23;
  v24 = a2[1];
  __src[0] = *a2;
  __src[1] = v24;
  v25 = a2[3];
  __src[2] = a2[2];
  __src[3] = v25;
  v26 = *(a1 + 8);
  v38 = *a1;
  v39 = v26;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  memcpy(&__dst, __src, 0x190uLL);
  __dst.axis_flags = 0;
  if (a7 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(&v38);
    BNNS.Shape.batchStride.getter();
    v28 = v27;
    BNNSNDArrayDescriptor.shape.getter(v37);
    BNNS.Shape.batchStride.getter();
    v30 = v29;
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a5;
    filter_params.n_threads = a6;
    filter_params.alloc_memory = a7;
    filter_params.free_memory = a8;
    BNNSNDArrayDescriptor.shape.getter(&v38);
    BNNS.Shape.batchStride.getter();
    v28 = v32;
    BNNSNDArrayDescriptor.shape.getter(v37);
    BNNS.Shape.batchStride.getter();
    v30 = v33;
    p_filter_params = &filter_params;
  }

  result = BNNSDirectApplyActivationBatch(&__dst, p_filter_params, a4, v28, v30);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v35 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t BNNS.ActivationLayer.__allocating_init(function:axes:input:output:filterParameters:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = *MEMORY[0x1E69E9840];
  v13 = a4[8];
  v14 = a4[9];
  v15 = a4[6];
  __src[18] = a4[7];
  __src[19] = v13;
  v16 = a4[10];
  __src[20] = v14;
  __src[21] = v16;
  v17 = a4[4];
  v18 = a4[5];
  v19 = a4[2];
  __src[14] = a4[3];
  __src[15] = v17;
  __src[16] = v18;
  __src[17] = v15;
  v20 = *a4;
  __src[12] = a4[1];
  __src[13] = v19;
  v21 = a3[9];
  __src[8] = a3[8];
  __src[9] = v21;
  __src[10] = a3[10];
  __src[11] = v20;
  v22 = a3[5];
  __src[4] = a3[4];
  __src[5] = v22;
  v23 = a3[7];
  __src[6] = a3[6];
  __src[7] = v23;
  v24 = a3[1];
  __src[0] = *a3;
  __src[1] = v24;
  v25 = a3[3];
  __src[2] = a3[2];
  __src[3] = v25;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  v26 = specialized static BNNS.computeAxisFlags(_:)(a2);

  memcpy(__dst, __src, sizeof(__dst));
  v35 = v26;
  if (a7 == 1)
  {
    v27 = 0;
  }

  else
  {
    v30 = a5;
    v31 = a6;
    v32 = a7;
    v33 = a8;
    v27 = &v30;
  }

  v28 = MEMORY[0x1B8CB1A10](__dst, v27);
  type metadata accessor for BNNS.ActivationLayer();
  result = swift_allocObject();
  if (v28)
  {
    *(result + 16) = v28;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t static BNNS.applyActivation(activation:axes:input:output:batchSize:filterParameters:)(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4, size_t a5, uint32_t a6, size_t a7, int (__cdecl *a8)(void **, size_t, size_t), void (__cdecl *a9)(void *))
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = a4[8];
  v15 = a4[9];
  v16 = a4[6];
  __src[18] = a4[7];
  __src[19] = v14;
  v17 = a4[10];
  __src[20] = v15;
  __src[21] = v17;
  v18 = a4[4];
  v19 = a4[5];
  v20 = a4[2];
  __src[14] = a4[3];
  __src[15] = v18;
  __src[16] = v19;
  __src[17] = v16;
  v21 = *a4;
  __src[12] = a4[1];
  __src[13] = v20;
  v22 = a3[9];
  __src[8] = a3[8];
  __src[9] = v22;
  __src[10] = a3[10];
  __src[11] = v21;
  v23 = a3[5];
  __src[4] = a3[4];
  __src[5] = v23;
  v24 = a3[7];
  __src[6] = a3[6];
  __src[7] = v24;
  v25 = a3[1];
  __src[0] = *a3;
  __src[1] = v25;
  v26 = a3[3];
  __src[2] = a3[2];
  __src[3] = v26;
  v27 = *(a1 + 8);
  v40 = *a1;
  v41 = v27;
  BNNS.ActivationFunction.bnnsActivation.getter(&__src[22]);
  v28 = specialized static BNNS.computeAxisFlags(_:)(a2);
  memcpy(&__dst, __src, 0x190uLL);
  __dst.axis_flags = v28;
  if (a8 == 1)
  {
    BNNSNDArrayDescriptor.shape.getter(&v40);
    BNNS.Shape.batchStride.getter();
    v30 = v29;
    BNNSNDArrayDescriptor.shape.getter(v39);
    BNNS.Shape.batchStride.getter();
    v32 = v31;
    p_filter_params = 0;
  }

  else
  {
    filter_params.flags = a6;
    filter_params.n_threads = a7;
    filter_params.alloc_memory = a8;
    filter_params.free_memory = a9;
    BNNSNDArrayDescriptor.shape.getter(&v40);
    BNNS.Shape.batchStride.getter();
    v30 = v34;
    BNNSNDArrayDescriptor.shape.getter(v39);
    BNNS.Shape.batchStride.getter();
    v32 = v35;
    p_filter_params = &filter_params;
  }

  result = BNNSDirectApplyActivationBatch(&__dst, p_filter_params, a5, v30, v32);
  if (result)
  {
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v37 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.ActivationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 9))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.ActivationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 8) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BNNS.ActivationFunction(uint64_t a1)
{
  if (*(a1 + 8) <= 0x11u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 18);
  }
}

uint64_t destructiveInjectEnumTag for BNNS.ActivationFunction(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    LOBYTE(a2) = 18;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t BNNS.DataLayout.rank.getter()
{
  v1 = *v0;
  if (v1 > 0x14)
  {
    return 8;
  }

  else
  {
    return qword_1B7E77500[v1];
  }
}

uint64_t static BNNS.defaultLayoutForDimensions(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if ((result - 1) >= 8)
  {
    v2 = 21;
  }

  else
  {
    v2 = 0x110F0D0B09060300uLL >> (8 * (result - 1));
  }

  *a2 = v2;
  return result;
}

Swift::Int BNNS.DataLayout.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BNNS.DataLayout()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B8CB1810](v1);
  return Hasher._finalize()();
}

uint64_t (*BNNSFilterParameters.options.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return BNNSFilterParameters.options.modify;
}

uint64_t (*BNNSFilterParameters.threadCount.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;
  return BNNSFilterParameters.threadCount.modify;
}

uint64_t (*BNNSFilterParameters.allocator.modify(void *a1))()
{
  *a1 = *(v1 + 16);
  a1[1] = v1;
  return BNNSFilterParameters.allocator.modify;
}

uint64_t (*BNNSFilterParameters.deallocator.modify(void *a1))()
{
  *a1 = *(v1 + 24);
  a1[1] = v1;
  return BNNSFilterParameters.deallocator.modify;
}

unint64_t lazy protocol witness table accessor for type BNNS.DataLayout and conformance BNNS.DataLayout()
{
  result = lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout;
  if (!lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BNNS.DataLayout and conformance BNNS.DataLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [BNNS.DataLayout] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A];
  if (!lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Accelerate4BNNSO10DataLayoutOGMd, &_sSay10Accelerate4BNNSO10DataLayoutOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [BNNS.DataLayout] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type BNNSFlags and conformance BNNSFlags(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BNNSFlags(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance BNNSFlags@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.DataLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.DataLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

double specialized static BNNS.makeArrayDescriptor(shape:data:dataType:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[5];
  v9 = a1[7];
  v167 = a1[6];
  v168 = v9;
  v10 = a1[1];
  v11 = a1[3];
  v163 = a1[2];
  v164 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v165 = a1[4];
  v166 = v13;
  v14 = a1[1];
  v161 = *a1;
  v162 = v14;
  v15 = a1[7];
  v170[6] = v167;
  v170[7] = v15;
  v170[2] = v163;
  v170[3] = v12;
  v170[4] = v165;
  v170[5] = v8;
  v169 = *(a1 + 128);
  v171 = *(a1 + 128);
  v170[0] = v161;
  v170[1] = v10;
  switch(_s10Accelerate4BNNSO5ShapeOWOg(v170))
  {
    case 1u:
      destructiveProjectEnumData for vImage();
      v89 = a1[7];
      v158 = a1[6];
      v159 = v89;
      v160 = *(a1 + 128);
      v90 = a1[3];
      v154 = a1[2];
      v155 = v90;
      v91 = a1[5];
      v156 = a1[4];
      v157 = v91;
      v92 = a1[1];
      v152 = *a1;
      v153 = v92;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v93;
      *&v94 = v93[1];
      v151 = v94;
      v149 = 0u;
      v150 = 0u;
      v27 = 131073;
      goto LABEL_27;
    case 2u:
      destructiveProjectEnumData for vImage();
      v66 = a1[7];
      v158 = a1[6];
      v159 = v66;
      v160 = *(a1 + 128);
      v67 = a1[3];
      v154 = a1[2];
      v155 = v67;
      v68 = a1[5];
      v156 = a1[4];
      v157 = v68;
      v69 = a1[1];
      v152 = *a1;
      v153 = v69;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v70;
      *&v71 = v70[1];
      v151 = v71;
      v149 = 0u;
      v150 = 0u;
      v27 = 0x20000;
      goto LABEL_27;
    case 3u:
      destructiveProjectEnumData for vImage();
      v78 = a1[7];
      v158 = a1[6];
      v159 = v78;
      v160 = *(a1 + 128);
      v79 = a1[3];
      v154 = a1[2];
      v155 = v79;
      v80 = a1[5];
      v156 = a1[4];
      v157 = v80;
      v81 = a1[1];
      v152 = *a1;
      v153 = v81;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v82;
      *&v83 = v82[1];
      v151 = v83;
      v27 = 163841;
      goto LABEL_24;
    case 4u:
      v27 = 163840;
      destructiveProjectEnumData for vImage();
      v49 = a1[7];
      v158 = a1[6];
      v159 = v49;
      v160 = *(a1 + 128);
      v50 = a1[3];
      v154 = a1[2];
      v155 = v50;
      v51 = a1[5];
      v156 = a1[4];
      v157 = v51;
      v52 = a1[1];
      v152 = *a1;
      v153 = v52;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v53;
      *&v54 = v53[1];
      goto LABEL_23;
    case 5u:
      destructiveProjectEnumData for vImage();
      v105 = a1[7];
      v158 = a1[6];
      v159 = v105;
      v160 = *(a1 + 128);
      v106 = a1[3];
      v154 = a1[2];
      v155 = v106;
      v107 = a1[5];
      v156 = a1[4];
      v157 = v107;
      v108 = a1[1];
      v152 = *a1;
      v153 = v108;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v109;
      v150 = 0u;
      v151 = *(v109 + 1);
      v27 = 196608;
      v149 = 0u;
      goto LABEL_27;
    case 6u:
      destructiveProjectEnumData for vImage();
      v115 = a1[7];
      v158 = a1[6];
      v159 = v115;
      v160 = *(a1 + 128);
      v116 = a1[3];
      v154 = a1[2];
      v155 = v116;
      v117 = a1[5];
      v156 = a1[4];
      v157 = v117;
      v118 = a1[1];
      v152 = *a1;
      v153 = v118;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v119;
      v151 = *(v119 + 1);
      v27 = 229377;
      goto LABEL_24;
    case 7u:
      destructiveProjectEnumData for vImage();
      v84 = a1[7];
      v158 = a1[6];
      v159 = v84;
      v160 = *(a1 + 128);
      v85 = a1[3];
      v154 = a1[2];
      v155 = v85;
      v86 = a1[5];
      v156 = a1[4];
      v157 = v86;
      v87 = a1[1];
      v152 = *a1;
      v153 = v87;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v88;
      v150 = 0u;
      v151 = *(v88 + 1);
      v27 = 229376;
      v149 = 0u;
      goto LABEL_27;
    case 8u:
      v27 = 196609;
      destructiveProjectEnumData for vImage();
      v131 = a1[7];
      v158 = a1[6];
      v159 = v131;
      v160 = *(a1 + 128);
      v132 = a1[3];
      v154 = a1[2];
      v155 = v132;
      v133 = a1[5];
      v156 = a1[4];
      v157 = v133;
      v134 = a1[1];
      v152 = *a1;
      v153 = v134;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v135;
      v54 = *(v135 + 1);
LABEL_23:
      v151 = v54;
      goto LABEL_24;
    case 9u:
      destructiveProjectEnumData for vImage();
      v61 = a1[7];
      v158 = a1[6];
      v159 = v61;
      v160 = *(a1 + 128);
      v62 = a1[3];
      v154 = a1[2];
      v155 = v62;
      v63 = a1[5];
      v156 = a1[4];
      v157 = v63;
      v64 = a1[1];
      v152 = *a1;
      v153 = v64;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v65;
      v151 = *(v65 + 1);
      v27 = 196610;
LABEL_24:
      v149 = 0u;
      v150 = 0u;
      goto LABEL_27;
    case 0xAu:
      destructiveProjectEnumData for vImage();
      v125 = a1[7];
      v158 = a1[6];
      v159 = v125;
      v160 = *(a1 + 128);
      v126 = a1[3];
      v154 = a1[2];
      v155 = v126;
      v127 = a1[5];
      v156 = a1[4];
      v157 = v127;
      v128 = a1[1];
      v152 = *a1;
      v153 = v128;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v129;
      *&v130 = v129[3];
      v150 = v130;
      v151 = *(v129 + 1);
      v149 = 0u;
      v27 = 0x40000;
      goto LABEL_27;
    case 0xBu:
      destructiveProjectEnumData for vImage();
      v43 = a1[7];
      v158 = a1[6];
      v159 = v43;
      v160 = *(a1 + 128);
      v44 = a1[3];
      v154 = a1[2];
      v155 = v44;
      v45 = a1[5];
      v156 = a1[4];
      v157 = v45;
      v46 = a1[1];
      v152 = *a1;
      v153 = v46;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v47;
      *&v48 = v47[3];
      v150 = v48;
      v151 = *(v47 + 1);
      v27 = 294913;
      goto LABEL_8;
    case 0xCu:
      v27 = 294912;
      destructiveProjectEnumData for vImage();
      v55 = a1[7];
      v158 = a1[6];
      v159 = v55;
      v160 = *(a1 + 128);
      v56 = a1[3];
      v154 = a1[2];
      v155 = v56;
      v57 = a1[5];
      v156 = a1[4];
      v157 = v57;
      v58 = a1[1];
      v152 = *a1;
      v153 = v58;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v59;
      *&v60 = v59[3];
      v150 = v60;
      v151 = *(v59 + 1);
      goto LABEL_8;
    case 0xDu:
      destructiveProjectEnumData for vImage();
      v110 = a1[7];
      v158 = a1[6];
      v159 = v110;
      v160 = *(a1 + 128);
      v111 = a1[3];
      v154 = a1[2];
      v155 = v111;
      v112 = a1[5];
      v156 = a1[4];
      v157 = v112;
      v113 = a1[1];
      v152 = *a1;
      v153 = v113;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v114;
      v150 = *(v114 + 3);
      v151 = *(v114 + 1);
      v149 = 0u;
      v27 = 360449;
      goto LABEL_27;
    case 0xEu:
      destructiveProjectEnumData for vImage();
      v38 = a1[7];
      v158 = a1[6];
      v159 = v38;
      v160 = *(a1 + 128);
      v39 = a1[3];
      v154 = a1[2];
      v155 = v39;
      v40 = a1[5];
      v156 = a1[4];
      v157 = v40;
      v41 = a1[1];
      v152 = *a1;
      v153 = v41;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v42;
      v150 = *(v42 + 3);
      v151 = *(v42 + 1);
      v27 = 360448;
LABEL_8:
      v149 = 0u;
      goto LABEL_27;
    case 0xFu:
      destructiveProjectEnumData for vImage();
      v72 = a1[7];
      v158 = a1[6];
      v159 = v72;
      v160 = *(a1 + 128);
      v73 = a1[3];
      v154 = a1[2];
      v155 = v73;
      v74 = a1[5];
      v156 = a1[4];
      v157 = v74;
      v75 = a1[1];
      v152 = *a1;
      v153 = v75;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v76;
      v150 = *(v76 + 3);
      *(&v77 + 1) = v76[4];
      v151 = *(v76 + 1);
      *&v77 = v76[5];
      v149 = v77;
      v27 = 425985;
      goto LABEL_27;
    case 0x10u:
      v27 = 425984;
      destructiveProjectEnumData for vImage();
      v32 = a1[7];
      v158 = a1[6];
      v159 = v32;
      v160 = *(a1 + 128);
      v33 = a1[3];
      v154 = a1[2];
      v155 = v33;
      v34 = a1[5];
      v156 = a1[4];
      v157 = v34;
      v35 = a1[1];
      v152 = *a1;
      v153 = v35;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v36;
      v150 = *(v36 + 3);
      *(&v37 + 1) = v36[4];
      v151 = *(v36 + 1);
      *&v37 = v36[5];
      v149 = v37;
      goto LABEL_27;
    case 0x11u:
      destructiveProjectEnumData for vImage();
      v95 = a1[7];
      v158 = a1[6];
      v159 = v95;
      v160 = *(a1 + 128);
      v96 = a1[3];
      v154 = a1[2];
      v155 = v96;
      v97 = a1[5];
      v156 = a1[4];
      v157 = v97;
      v98 = a1[1];
      v152 = *a1;
      v153 = v98;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v99;
      v150 = *(v99 + 3);
      v151 = *(v99 + 1);
      v149 = *(v99 + 5);
      v27 = 491521;
      goto LABEL_27;
    case 0x12u:
      destructiveProjectEnumData for vImage();
      v120 = a1[7];
      v158 = a1[6];
      v159 = v120;
      v160 = *(a1 + 128);
      v121 = a1[3];
      v154 = a1[2];
      v155 = v121;
      v122 = a1[5];
      v156 = a1[4];
      v157 = v122;
      v123 = a1[1];
      v152 = *a1;
      v153 = v123;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v24 = *v124;
      v150 = *(v124 + 3);
      v151 = *(v124 + 1);
      v149 = *(v124 + 5);
      v27 = 491520;
      goto LABEL_27;
    case 0x13u:
      destructiveProjectEnumData for vImage();
      v136 = a1[7];
      v158 = a1[6];
      v159 = v136;
      v160 = *(a1 + 128);
      v137 = a1[3];
      v154 = a1[2];
      v155 = v137;
      v138 = a1[5];
      v156 = a1[4];
      v157 = v138;
      v139 = a1[1];
      v152 = *a1;
      v153 = v139;
      destructiveProjectEnumData for vImage();
      v24 = *v104;
      v150 = *(v104 + 3);
      v151 = *(v104 + 1);
      v149 = *(v104 + 5);
      v27 = 557057;
      goto LABEL_26;
    case 0x14u:
      v27 = 557056;
      destructiveProjectEnumData for vImage();
      v100 = a1[7];
      v158 = a1[6];
      v159 = v100;
      v160 = *(a1 + 128);
      v101 = a1[3];
      v154 = a1[2];
      v155 = v101;
      v102 = a1[5];
      v156 = a1[4];
      v157 = v102;
      v103 = a1[1];
      v152 = *a1;
      v153 = v103;
      destructiveProjectEnumData for vImage();
      v24 = *v104;
      v150 = *(v104 + 3);
      v151 = *(v104 + 1);
      v149 = *(v104 + 5);
LABEL_26:
      v20 = v104[7];
LABEL_27:
      v158 = v167;
      v159 = v168;
      v160 = v169;
      v154 = v163;
      v155 = v164;
      v156 = v165;
      v157 = v166;
      v152 = v161;
      v153 = v162;
      switch(_s10Accelerate4BNNSO5ShapeOWOg(&v152))
      {
        case 1u:
        case 2u:
        case 3u:
        case 4u:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          v25 = *(v142 + 16);
          goto LABEL_31;
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          v25 = *(v146 + 24);
          *&v30 = *(v146 + 40);
          goto LABEL_36;
        case 0xAu:
        case 0xBu:
        case 0xCu:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          v25 = *(v145 + 32);
          v30 = *(v145 + 48);
          goto LABEL_36;
        case 0xDu:
        case 0xEu:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          v30 = *(v143 + 56);
          v25 = *(v143 + 40);
          *&v31 = *(v143 + 72);
          goto LABEL_37;
        case 0xFu:
        case 0x10u:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          v30 = v141[4];
          v31 = v141[5];
          v25 = v141[3];
          goto LABEL_37;
        case 0x11u:
        case 0x12u:
          destructiveProjectEnumData for vImage();
          v22 = 0;
          v21 = *(v144 + 104);
          v31 = *(v144 + 88);
          v30 = *(v144 + 72);
          v25 = *(v144 + 56);
          goto LABEL_37;
        case 0x13u:
        case 0x14u:
          destructiveProjectEnumData for vImage();
          v21 = *(v148 + 112);
          v22 = *(v148 + 120);
          v30 = *(v148 + 80);
          v31 = *(v148 + 96);
          v25 = *(v148 + 64);
          goto LABEL_37;
        default:
          destructiveProjectEnumData for vImage();
          v21 = 0;
          v22 = 0;
          *&v25 = *(v140 + 8);
LABEL_31:
          v30 = 0uLL;
LABEL_36:
          v31 = 0uLL;
LABEL_37:
          v28 = v150;
          v26 = v151;
          v29 = v149;
          break;
      }

      break;
    default:
      destructiveProjectEnumData for vImage();
      v16 = a1[7];
      v158 = a1[6];
      v159 = v16;
      v160 = *(a1 + 128);
      v17 = a1[3];
      v154 = a1[2];
      v155 = v17;
      v18 = a1[5];
      v156 = a1[4];
      v157 = v18;
      v19 = a1[1];
      v152 = *a1;
      v153 = v19;
      destructiveProjectEnumData for vImage();
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v24 = *v23;
      *&v25 = v23[1];
      v26 = 0uLL;
      v27 = 0x10000;
      v28 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      break;
  }

  *a4 = 0;
  *(a4 + 4) = v27;
  *(a4 + 8) = v24;
  *(a4 + 16) = v26;
  *(a4 + 32) = v28;
  *(a4 + 48) = v29;
  *(a4 + 64) = v20;
  *(a4 + 72) = v25;
  *(a4 + 88) = v30;
  *(a4 + 104) = v31;
  *(a4 + 120) = v21;
  *(a4 + 128) = v22;
  *(a4 + 136) = a2;
  *(a4 + 144) = a3;
  *(a4 + 152) = 0;
  *(a4 + 160) = a3;
  *&result = 1065353216;
  *(a4 + 164) = 1065353216;
  return result;
}

uint64_t BNNS.PoolingType.bnnsPoolingFunction.getter()
{
  v1 = v0[11];
  v10[10] = v0[10];
  v11[0] = v1;
  *(v11 + 9) = *(v0 + 185);
  v2 = v0[7];
  v10[6] = v0[6];
  v10[7] = v2;
  v3 = v0[9];
  v10[8] = v0[8];
  v10[9] = v3;
  v4 = v0[3];
  v10[2] = v0[2];
  v10[3] = v4;
  v5 = v0[5];
  v10[4] = v0[4];
  v10[5] = v5;
  v6 = v0[1];
  v10[0] = *v0;
  v10[1] = v6;
  v7 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v10);
  if (v7 > 2)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        goto LABEL_4;
      }

      return 4;
    }

LABEL_8:
    destructiveProjectEnumData for vImage();
    return 0;
  }

  if (!v7)
  {
    goto LABEL_8;
  }

  if (v7 == 1)
  {
LABEL_4:
    destructiveProjectEnumData for vImage();
    return 3;
  }

  destructiveProjectEnumData for vImage();
  if (*v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _s10Accelerate4BNNSO11PoolingTypeOWOg(uint64_t a1)
{
  if (*(a1 + 200) <= 4u)
  {
    return *(a1 + 200);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t BNNS.PoolingLayer.__allocating_init(type:input:output:bias:activation:kernelSize:stride:padding:filterParameters:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, int a11, uint64_t a12, __int128 a13)
{
  v199 = *MEMORY[0x1E69E9840];
  v14 = a3[9];
  v173 = a3[8];
  v174 = v14;
  v15 = a3[5];
  v169 = a3[4];
  v170 = v15;
  v16 = a3[7];
  v171 = a3[6];
  v172 = v16;
  v17 = a3[1];
  v165 = *a3;
  v166 = v17;
  v18 = a3[3];
  v167 = a3[2];
  v168 = v18;
  v19 = a2[8];
  v20 = a2[9];
  v21 = a2[6];
  v183 = a2[7];
  v184 = v19;
  v22 = a2[10];
  v185 = v20;
  v186 = v22;
  v23 = a2[4];
  v24 = a2[5];
  v25 = a2[2];
  v179 = a2[3];
  v180 = v23;
  v26 = a3[10];
  v181 = v24;
  v182 = v21;
  v27 = *a2;
  v28 = a2[1];
  v175 = v26;
  v176 = v27;
  v177 = v28;
  v178 = v25;
  v29 = a1[10];
  v30 = a1[11];
  v31 = a1[8];
  v196 = a1[9];
  v197 = v29;
  v198[0] = v30;
  *(v198 + 9) = *(a1 + 185);
  v32 = a1[7];
  v193 = a1[6];
  v194 = v32;
  v195 = v31;
  v33 = a1[3];
  v189 = a1[2];
  v190 = v33;
  v34 = a1[5];
  v191 = a1[4];
  v192 = v34;
  v35 = a1[1];
  v187 = *a1;
  v188 = v35;
  if (*(a10 + 32) == 1)
  {
    v94 = a10[1];
    v93 = *a10;
    v95 = 0u;
  }

  else
  {
    v95 = *a10;
    v94 = 0uLL;
    v93 = 0u;
  }

  v36 = *a5;
  v37 = *(a5 + 8);
  v38 = a1[10];
  v39 = a1[11];
  v40 = a1[8];
  v151[9] = a1[9];
  v151[10] = v38;
  v152[0] = v39;
  *(v152 + 9) = *(a1 + 185);
  v41 = a1[7];
  v151[6] = a1[6];
  v151[7] = v41;
  v151[8] = v40;
  v42 = a1[3];
  v151[2] = a1[2];
  v151[3] = v42;
  v43 = a1[5];
  v151[4] = a1[4];
  v151[5] = v43;
  v44 = a1[1];
  v151[0] = *a1;
  v151[1] = v44;
  v45 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v151);
  if (v45 <= 2)
  {
    if (v45 <= 1)
    {
      destructiveProjectEnumData for vImage();
      v56 = v55[3];
      v89 = *(v55 + 16);
      v90 = v55[1];
      v91 = *v55;
      v92 = v55[4];
      _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v139);
      goto LABEL_14;
    }

    destructiveProjectEnumData for vImage();
LABEL_12:
    _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v139);
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v56 = 0;
    goto LABEL_13;
  }

  if (v45 != 3)
  {
    if (v45 == 4)
    {
      destructiveProjectEnumData for vImage();
      v56 = *(v46 + 176);
      v92 = *(v46 + 184);
      v48 = *(v46 + 16);
      v47 = *(v46 + 32);
      __dst[0] = *v46;
      __dst[1] = v48;
      __dst[2] = v47;
      v49 = *(v46 + 96);
      v51 = *(v46 + 48);
      v50 = *(v46 + 64);
      __dst[5] = *(v46 + 80);
      __dst[6] = v49;
      __dst[3] = v51;
      __dst[4] = v50;
      v52 = *(v46 + 160);
      v54 = *(v46 + 112);
      v53 = *(v46 + 128);
      __dst[9] = *(v46 + 144);
      __dst[10] = v52;
      __dst[7] = v54;
      __dst[8] = v53;
      _sSo21BNNSNDArrayDescriptoraSgWOi_(__dst);
      v90 = 0;
      v91 = 0;
      v147 = __dst[8];
      v148 = __dst[9];
      v149 = __dst[10];
      v150 = __dst[11];
      v143 = __dst[4];
      v144 = __dst[5];
      v145 = __dst[6];
      v146 = __dst[7];
      v139 = __dst[0];
      v140 = __dst[1];
      v89 = 1;
      v141 = __dst[2];
      v142 = __dst[3];
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  destructiveProjectEnumData for vImage();
  v90 = 0;
  v91 = 0;
  v56 = *(v57 + 23);
  v92 = *(v57 + 24);
  v58 = v57[3];
  v60 = *v57;
  v59 = v57[1];
  v141 = v57[2];
  v142 = v58;
  v139 = v60;
  v140 = v59;
  v61 = v57[7];
  v63 = v57[4];
  v62 = v57[5];
  v145 = v57[6];
  v146 = v61;
  v143 = v63;
  v144 = v62;
  v65 = v57[9];
  v64 = v57[10];
  v66 = v57[8];
  v150 = *(v57 + 176);
  v148 = v65;
  v149 = v64;
  v147 = v66;
LABEL_13:
  v89 = 1;
LABEL_14:
  v67 = a4[9];
  v161 = a4[8];
  v162 = v67;
  v163 = a4[10];
  v164 = *(a4 + 176);
  v68 = a4[5];
  v157 = a4[4];
  v158 = v68;
  v69 = a4[7];
  v159 = a4[6];
  v160 = v69;
  v70 = a4[1];
  v153 = *a4;
  v154 = v70;
  v71 = a4[3];
  v155 = a4[2];
  v156 = v71;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v153) == 1)
  {
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v128 = 0u;
  }

  else
  {
    v136 = v161;
    v137 = v162;
    v138 = v163;
    v132 = v157;
    v133 = v158;
    v134 = v159;
    v135 = v160;
    v128 = v153;
    v129 = v154;
    v130 = v155;
    v131 = v156;
  }

  v112 = v36;
  v113 = v37;
  BNNS.ActivationFunction.bnnsActivation.getter(v125);
  v126[9] = v196;
  v126[10] = v197;
  v127[0] = v198[0];
  *(v127 + 9) = *(v198 + 9);
  v126[6] = v193;
  v126[7] = v194;
  v126[8] = v195;
  v126[2] = v189;
  v126[3] = v190;
  v126[4] = v191;
  v126[5] = v192;
  v126[0] = v187;
  v126[1] = v188;
  v72 = _s10Accelerate4BNNSO11PoolingTypeOWOg(v126);
  if (v72 <= 2)
  {
    if (v72)
    {
      if (v72 != 1)
      {
        destructiveProjectEnumData for vImage();
        if (*v74)
        {
          v73 = 1;
        }

        else
        {
          v73 = 2;
        }

        goto LABEL_30;
      }

      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (v72 == 3)
  {
LABEL_24:
    destructiveProjectEnumData for vImage();
    v73 = 0;
    goto LABEL_30;
  }

  if (v72 == 4)
  {
LABEL_20:
    destructiveProjectEnumData for vImage();
    v73 = 3;
    goto LABEL_30;
  }

  v73 = 4;
LABEL_30:
  __src[8] = v184;
  __src[9] = v185;
  __src[4] = v180;
  __src[5] = v181;
  __src[6] = v182;
  __src[7] = v183;
  __src[0] = v176;
  __src[1] = v177;
  __src[2] = v178;
  __src[3] = v179;
  __src[18] = v172;
  __src[19] = v173;
  __src[20] = v174;
  __src[21] = v175;
  __src[14] = v168;
  __src[15] = v169;
  __src[16] = v170;
  __src[17] = v171;
  __src[10] = v186;
  __src[11] = v165;
  __src[12] = v166;
  __src[13] = v167;
  __src[30] = v136;
  __src[31] = v137;
  __src[26] = v132;
  __src[27] = v133;
  __src[28] = v134;
  __src[29] = v135;
  __src[22] = v128;
  __src[23] = v129;
  __src[24] = v130;
  __src[25] = v131;
  __src[32] = v138;
  __src[33] = v125[0];
  __src[34] = v125[1];
  __src[35] = v125[2];
  memcpy(__dst, __src, sizeof(__dst));
  v115 = v73;
  v116 = a6;
  v117 = a7;
  v118 = a8;
  v119 = a9;
  v120 = v56;
  v121 = v92;
  v122 = v95;
  v123 = v93;
  v124 = v94;
  if (a13 == 1)
  {
    v75 = 0;
  }

  else
  {
    LODWORD(v99) = a11;
    *(&v99 + 1) = a12;
    v100 = a13;
    v75 = &v99;
  }

  v76 = MEMORY[0x1B8CB1AD0](__dst, v75);
  type metadata accessor for BNNS.PoolingLayer();
  v77 = swift_allocObject();
  *(v77 + 24) = 0;
  *(v77 + 32) = 0;
  *(v77 + 40) = 1;
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(&v99);
  v78 = v108;
  *(v77 + 176) = v107;
  *(v77 + 192) = v78;
  *(v77 + 208) = v109;
  *(v77 + 224) = v110;
  v79 = v104;
  *(v77 + 112) = v103;
  *(v77 + 128) = v79;
  v80 = v106;
  *(v77 + 144) = v105;
  *(v77 + 160) = v80;
  v81 = v100;
  *(v77 + 48) = v99;
  *(v77 + 64) = v81;
  v82 = v102;
  *(v77 + 80) = v101;
  *(v77 + 96) = v82;
  *(v77 + 232) = 0;
  if (v76)
  {
    *(v77 + 16) = v76;
    *(v77 + 24) = v91;
    *(v77 + 32) = v90;
    *(v77 + 40) = v89;
    v83 = v148;
    *(v77 + 176) = v147;
    *(v77 + 192) = v83;
    *(v77 + 208) = v149;
    *(v77 + 224) = v150;
    v84 = v144;
    *(v77 + 112) = v143;
    *(v77 + 128) = v84;
    v85 = v146;
    *(v77 + 144) = v145;
    *(v77 + 160) = v85;
    v86 = v140;
    *(v77 + 48) = v139;
    *(v77 + 64) = v86;
    v87 = v142;
    *(v77 + 80) = v141;
    *(v77 + 96) = v87;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v77;
}

uint64_t BNNS.PoolingLayer.__allocating_init(bnnsFilter:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  _sSo21BNNSNDArrayDescriptoraSgWOi0_(v9);
  v3 = v9[9];
  *(v2 + 176) = v9[8];
  *(v2 + 192) = v3;
  *(v2 + 208) = v9[10];
  *(v2 + 224) = v10;
  v4 = v9[5];
  *(v2 + 112) = v9[4];
  *(v2 + 128) = v4;
  v5 = v9[7];
  *(v2 + 144) = v9[6];
  *(v2 + 160) = v5;
  v6 = v9[1];
  *(v2 + 48) = v9[0];
  *(v2 + 64) = v6;
  v7 = v9[3];
  *(v2 + 80) = v9[2];
  *(v2 + 96) = v7;
  *(v2 + 232) = 0;
  if (a1)
  {
    *(v2 + 16) = a1;
  }

  else
  {
    type metadata accessor for BNNS.Layer();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t _sSo21BNNSNDArrayDescriptoraSgWOg(uint64_t a1)
{
  if (*(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double _sSo21BNNSNDArrayDescriptoraSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 176) = 1;
  return result;
}

uint64_t BNNS.PoolingLayer.__deallocating_deinit()
{
  BNNSFilterDestroy(*(v0 + 16));

  return swift_deallocClassInstance();
}

void specialized static BNNS.poolingFilterApply(_:batchSize:input:output:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 192);
  *indices = *(a1 + 176);
  *indices_data_type = v9;
  v55 = *(a1 + 208);
  v56 = *(a1 + 224);
  v10 = *(a1 + 128);
  v49 = *(a1 + 112);
  v50 = v10;
  v11 = *(a1 + 160);
  v51 = *(a1 + 144);
  v52 = v11;
  v12 = *(a1 + 64);
  v45 = *(a1 + 48);
  v46 = v12;
  v13 = *(a1 + 96);
  v47 = *(a1 + 80);
  v48 = v13;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v45) != 1)
  {
    v42 = *indices;
    v43 = *indices_data_type;
    v44 = v55;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v34 = v45;
    v35 = v46;
    v36 = v47;
    v37 = v48;
    BNNSNDArrayDescriptor.shape.getter(v33);
    BNNS.Shape.batchStride.getter();
    v24 = *(a3 + 136);
    if (v24)
    {
      idx_stride = v23;
      v26 = *(a1 + 16);
      BNNSNDArrayDescriptor.shape.getter(v33);
      BNNS.Shape.batchStride.getter();
      v28 = *(a4 + 136);
      if (v28)
      {
        v29 = v27;
        BNNSNDArrayDescriptor.shape.getter(v32);
        BNNS.Shape.batchStride.getter();
        if (indices[1])
        {
          if (!BNNSPoolingFilterApplyBatchEx(v26, a2, v24, v29, v28, v30, indices_data_type[0], indices[1], idx_stride))
          {
            return;
          }

          goto LABEL_19;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v57 = v4;
  if (*(a1 + 40))
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a1 + 32);
  }

  if (!a2)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_22;
  }

  v15 = *(a3 + 136);
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(a1 + 16);
  BNNSNDArrayDescriptor.shape.getter(v33);
  BNNS.Shape.batchStride.getter();
  v18 = *(a4 + 136);
  if (!v18)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v19 = v17;
  v20 = v14 / a2;
  BNNSNDArrayDescriptor.shape.getter(v32);
  BNNS.Shape.batchStride.getter();
  if (*(a1 + 40))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 24);
  }

  if (BNNSPoolingFilterApplyBatch(v16, a2, v15, v19, v18, v21, v22, v20))
  {
LABEL_19:
    lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
  }
}

void specialized static BNNS.poolingLayerApplyBackward(_:batchSize:input:output:outputGradient:generatingInputGradient:generatingBiasGradient:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, __int128 *a6, uint64_t a7)
{
  v135 = *MEMORY[0x1E69E9840];
  v11 = a6[6];
  *&in_delta.stride[5] = a6[7];
  v12 = a6[9];
  *&in_delta.stride[7] = a6[8];
  *&in_delta.data_type = v12;
  *&in_delta.table_data_type = a6[10];
  v13 = a6[4];
  v14 = a6[5];
  v15 = a6[2];
  *&in_delta.size[5] = a6[3];
  *&in_delta.size[7] = v13;
  *&in_delta.stride[1] = v14;
  *&in_delta.stride[3] = v11;
  v16 = *a6;
  *&in_delta.size[1] = a6[1];
  *&in_delta.size[3] = v15;
  v17 = a5[9];
  *&out_delta.stride[7] = a5[8];
  *&out_delta.data_type = v17;
  *&out_delta.table_data_type = a5[10];
  *&in_delta.flags = v16;
  v18 = a5[5];
  *&out_delta.size[7] = a5[4];
  *&out_delta.stride[1] = v18;
  v19 = a5[7];
  *&out_delta.stride[3] = a5[6];
  *&out_delta.stride[5] = v19;
  v20 = a5[1];
  *&out_delta.flags = *a5;
  *&out_delta.size[1] = v20;
  v21 = a5[3];
  *&out_delta.size[3] = a5[2];
  *&out_delta.size[5] = v21;
  v22 = *(a7 + 144);
  *&v111.stride[7] = *(a7 + 128);
  *&v111.data_type = v22;
  *&v111.table_data_type = *(a7 + 160);
  v23 = *(a7 + 80);
  *&v111.size[7] = *(a7 + 64);
  *&v111.stride[1] = v23;
  v24 = *(a7 + 112);
  *&v111.stride[3] = *(a7 + 96);
  *&v111.stride[5] = v24;
  v25 = *(a7 + 16);
  *&v111.flags = *a7;
  *&v111.size[1] = v25;
  v26 = *(a7 + 48);
  *&v111.size[3] = *(a7 + 32);
  v112 = *(a7 + 176);
  *&v111.size[5] = v26;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v111) == 1)
  {
    v27 = *(a1 + 192);
    v105 = *(a1 + 176);
    indices_data_type = v27;
    v107 = *(a1 + 208);
    v108 = *(a1 + 224);
    v28 = *(a1 + 128);
    v101 = *(a1 + 112);
    v102 = v28;
    v29 = *(a1 + 160);
    v103 = *(a1 + 144);
    v104 = v29;
    v30 = *(a1 + 64);
    v97 = *(a1 + 48);
    v98 = v30;
    v31 = *(a1 + 96);
    v99 = *(a1 + 80);
    v100 = v31;
    if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v97) == 1)
    {
      v32 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v32 = 1;
      }

      if (a2)
      {
        if (v32 != 0x8000000000000000 || a2 != -1)
        {
          v86 = *(a1 + 16);
          batch_size = *(a3 + 136);
          v33 = v32 / a2;
          BNNSNDArrayDescriptor.shape.getter(&v93);
          BNNS.Shape.batchStride.getter();
          v35 = v34;
          BNNSNDArrayDescriptor.shape.getter(v96);
          BNNS.Shape.batchStride.getter();
          v37 = v36;
          v38 = *(a4 + 136);
          BNNSNDArrayDescriptor.shape.getter(v95);
          BNNS.Shape.batchStride.getter();
          v40 = v39;
          BNNSNDArrayDescriptor.shape.getter(v94);
          BNNS.Shape.batchStride.getter();
          indices = *(a1 + 24);
          if (*(a1 + 40))
          {
            indices = 0;
          }

          v43 = BNNSPoolingFilterApplyBackwardBatch(v86, a2, batch_size, v35, &in_delta, v37, v38, v40, &out_delta, out_delta_stride, 0, indices, v33);
          goto LABEL_20;
        }

        goto LABEL_30;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    batch_sizeb = a2;
    v131 = v104;
    v132 = v105;
    v133 = indices_data_type;
    v134 = v107;
    v127 = v100;
    v128 = v101;
    v129 = v102;
    v130 = v103;
    v124 = v97;
    v125 = v98;
    v126 = v99;
    BNNSNDArrayDescriptor.shape.getter(&v93);
    BNNS.Shape.batchStride.getter();
    v61 = v60;
    v62 = *(a1 + 16);
    v63 = *(a3 + 136);
    BNNSNDArrayDescriptor.shape.getter(&v93);
    BNNS.Shape.batchStride.getter();
    v65 = v64;
    BNNSNDArrayDescriptor.shape.getter(v96);
    BNNS.Shape.batchStride.getter();
    v67 = v66;
    v68 = *(a4 + 136);
    BNNSNDArrayDescriptor.shape.getter(v95);
    BNNS.Shape.batchStride.getter();
    v70 = v69;
    BNNSNDArrayDescriptor.shape.getter(v94);
    BNNS.Shape.batchStride.getter();
    if (*(&v105 + 1))
    {
      v72 = BNNSPoolingFilterApplyBackwardBatchEx(v62, batch_sizeb, v63, v65, &in_delta, v67, v68, v70, &out_delta, v71, 0, indices_data_type, *(&v105 + 1), v61);
      goto LABEL_26;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v93 = v111;
  v44 = *(a1 + 192);
  v105 = *(a1 + 176);
  indices_data_type = v44;
  v107 = *(a1 + 208);
  v108 = *(a1 + 224);
  v45 = *(a1 + 128);
  v101 = *(a1 + 112);
  v102 = v45;
  v46 = *(a1 + 160);
  v103 = *(a1 + 144);
  v104 = v46;
  v47 = *(a1 + 64);
  v97 = *(a1 + 48);
  v98 = v47;
  v48 = *(a1 + 96);
  v99 = *(a1 + 80);
  v100 = v48;
  if (_sSo21BNNSNDArrayDescriptoraSgWOg(&v97) == 1)
  {
    v49 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v49 = 1;
    }

    if (a2)
    {
      if (v49 != 0x8000000000000000 || a2 != -1)
      {
        v87 = *(a1 + 16);
        batch_sizea = *(a3 + 136);
        v50 = v49 / a2;
        BNNSNDArrayDescriptor.shape.getter(v96);
        BNNS.Shape.batchStride.getter();
        v52 = v51;
        BNNSNDArrayDescriptor.shape.getter(v95);
        BNNS.Shape.batchStride.getter();
        v54 = v53;
        v55 = *(a4 + 136);
        BNNSNDArrayDescriptor.shape.getter(v94);
        BNNS.Shape.batchStride.getter();
        v57 = v56;
        BNNSNDArrayDescriptor.shape.getter(v92);
        BNNS.Shape.batchStride.getter();
        v59 = *(a1 + 24);
        if (*(a1 + 40))
        {
          v59 = 0;
        }

        v43 = BNNSPoolingFilterApplyBackwardBatch(v87, a2, batch_sizea, v52, &in_delta, v54, v55, v57, &out_delta, v58, &v93, v59, v50);
LABEL_20:
        if (!v43)
        {
          return;
        }

LABEL_27:
        lazy protocol witness table accessor for type BNNS.Error and conformance BNNS.Error();
        swift_allocError();
        *v85 = 0;
        swift_willThrow();
        return;
      }

LABEL_31:
      __break(1u);
    }

    goto LABEL_29;
  }

  batch_sizec = a2;
  v120 = v104;
  v121 = v105;
  v122 = indices_data_type;
  v123 = v107;
  v116 = v100;
  v117 = v101;
  v118 = v102;
  v119 = v103;
  v113 = v97;
  v114 = v98;
  v115 = v99;
  BNNSNDArrayDescriptor.shape.getter(v96);
  BNNS.Shape.batchStride.getter();
  v74 = v73;
  v75 = *(a1 + 16);
  v76 = *(a3 + 136);
  BNNSNDArrayDescriptor.shape.getter(v96);
  BNNS.Shape.batchStride.getter();
  v78 = v77;
  BNNSNDArrayDescriptor.shape.getter(v95);
  BNNS.Shape.batchStride.getter();
  v80 = v79;
  v81 = *(a4 + 136);
  BNNSNDArrayDescriptor.shape.getter(v94);
  BNNS.Shape.batchStride.getter();
  v83 = v82;
  BNNSNDArrayDescriptor.shape.getter(v92);
  BNNS.Shape.batchStride.getter();
  if (!*(&v105 + 1))
  {
    goto LABEL_33;
  }

  v72 = BNNSPoolingFilterApplyBackwardBatchEx(v75, batch_sizec, v76, v78, &in_delta, v80, v81, v83, &out_delta, v84, &v93, indices_data_type, *(&v105 + 1), v74);
LABEL_26:
  if (v72)
  {
    goto LABEL_27;
  }
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BNNS.PoolingType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 201))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 200);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BNNS.PoolingType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 200) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 200) = -a2;
    }
  }

  return result;
}