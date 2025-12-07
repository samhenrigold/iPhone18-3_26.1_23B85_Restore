double sub_1AFB45F5C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED73B840;
  v4 = 0;
  v5 = 2;
  v6 = 0;
  v7 = 2;
  v8 = 0;

  sub_1AF702F3C(1, v1);

  result = *v1;
  xmmword_1ED7259E0 = v1[0];
  *algn_1ED7259F0 = v1[1];
  qword_1ED725A00 = v2;
  return result;
}

uint64_t sub_1AFB46024(uint64_t a1, uint64_t a2)
{
  v68 = *(a2 + 40);
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  sub_1AF65C8F0(v7);
  v84 = v2;
  if (v7 >= 1 && v6)
  {
    v9 = 0;
    v75 = *(v8 + 32);
    v73 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v10 = *(a2 + 16);
    v80[0] = *a2;
    v80[1] = v10;
    v81 = *(a2 + 32);
    v67 = v6;
    do
    {
      v71 = v9;
      v11 = (v68 + 48 * v9);
      v70 = *v11;
      v69 = v11[1];
      v13 = *(v11 + 2);
      v12 = *(v11 + 3);
      v15 = *(v11 + 4);
      v14 = *(v11 + 5);
      if (v73)
      {
        v16 = *(v14 + 376);

        os_unfair_lock_lock(v16);
        os_unfair_lock_lock(*(v14 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v75);
      v17 = *(v8 + 64);
      v82[0] = *(v8 + 48);
      v82[1] = v17;
      v83 = *(v8 + 80);
      v18 = v14;
      v19 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
      *(v8 + 48) = ecs_stack_allocator_allocate(*(v8 + 32), 48 * v19, 8);
      *(v8 + 56) = v19;
      *(v8 + 72) = 0;
      *(v8 + 80) = 0;
      *(v8 + 64) = 0;
      v20 = sub_1AF64B110(&type metadata for DrawCallComponent, &off_1F2560850, v13, v12, v15, v8);
      v21 = v20;
      if (v13)
      {
        for (; v15; --v15)
        {
          v26 = *v21;
          *(v26 + 16) = 3;
          *(v26 + 24) = 0;
          *(v26 + 32) = 0u;
          *(v26 + 48) = 0u;
          *(v26 + 64) = 0u;
          *(v26 + 80) = 0u;
          *(v26 + 96) = 1;
          *(v26 + 104) = 0u;
          *(v26 + 120) = 0u;
          *(v26 + 136) = 0u;
          *(v26 + 152) = 0;
          *(v26 + 160) = 0u;
          *(v26 + 176) = 0u;
          *(v26 + 192) = 0u;
          *(v26 + 208) = 0u;
          *(v26 + 224) = 0;
          if (*(*(v26 + 232) + 16))
          {
            swift_isUniquelyReferenced_nonNull_native();
            v79[0] = *(v26 + 232);
            *(v26 + 232) = 0x8000000000000000;
            sub_1AFB49F58(0);
            sub_1AFDFE4B8();
            *(v26 + 232) = v79[0];
          }

          sub_1AF8949C0(1);
          *(v26 + 352) = 0;
          *(v26 + 360) = 0;

          MEMORY[0x1B2718E00](v27);
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
          v21 += 8;
        }
      }

      else if (v70 != v69)
      {
        v22 = v69 - v70;
        v23 = &v20[8 * v70];
        do
        {
          v24 = *v23;
          *(v24 + 16) = 3;
          *(v24 + 24) = 0;
          *(v24 + 32) = 0u;
          *(v24 + 48) = 0u;
          *(v24 + 64) = 0u;
          *(v24 + 80) = 0u;
          *(v24 + 96) = 1;
          *(v24 + 104) = 0u;
          *(v24 + 120) = 0u;
          *(v24 + 136) = 0u;
          *(v24 + 152) = 0;
          *(v24 + 160) = 0u;
          *(v24 + 176) = 0u;
          *(v24 + 192) = 0u;
          *(v24 + 208) = 0u;
          *(v24 + 224) = 0;
          if (*(*(v24 + 232) + 16))
          {
            swift_isUniquelyReferenced_nonNull_native();
            v79[0] = *(v24 + 232);
            *(v24 + 232) = 0x8000000000000000;
            sub_1AFB49F58(0);
            sub_1AFDFE4B8();
            *(v24 + 232) = v79[0];
          }

          sub_1AF8949C0(1);
          *(v24 + 352) = 0;
          *(v24 + 360) = 0;

          MEMORY[0x1B2718E00](v25);
          if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
          v23 += 8;
          --v22;
        }

        while (v22);
      }

      v28 = v84;
      sub_1AF630994(v8, v80, v82);
      v84 = v28;
      sub_1AF62D29C(v18);
      ecs_stack_allocator_pop_snapshot(v75);
      if (v73)
      {
        os_unfair_lock_unlock(*(v18 + 344));
        os_unfair_lock_unlock(*(v18 + 376));
      }

      v9 = v71 + 1;
    }

    while (v71 + 1 != v67);
  }

  v29 = (a1 + 8);
  v30 = *(a1 + 8);
  v31 = 1 << *(v30 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v30 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  while (v33)
  {
LABEL_39:
    v42 = (v35 << 9) | (8 * __clz(__rbit64(v33)));
    v43 = *(*(v30 + 48) + v42);
    v44 = *(*(v30 + 56) + v42);
    if (v44 >> 62)
    {
      v76 = v43;
      v45 = sub_1AFDFE108();
      v43 = v76;
      if (v45)
      {
LABEL_41:
        v74 = v36;
        goto LABEL_48;
      }
    }

    else if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v77 = v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_1AF4217DC(0, *(v36 + 2) + 1, 1, v36);
    }

    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    v43 = v77;
    if (v47 >= v46 >> 1)
    {
      v59 = sub_1AF4217DC(v46 > 1, v47 + 1, 1, v36);
      v43 = v77;
      v36 = v59;
    }

    *(v36 + 2) = v47 + 1;
    v74 = v36;
    *&v36[8 * v47 + 32] = v43;
LABEL_48:
    v33 &= v33 - 1;
    v78 = sub_1AF6B0CF0(v79, v43);
    v49 = *v48;
    if (!*v48)
    {
      goto LABEL_34;
    }

    v50 = v48;
    if (v49 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v49 = *v50, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (v49 >> 62)
      {
        v37 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        if (v37 < 1)
        {
          goto LABEL_61;
        }
      }

      else if (!(*((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
LABEL_61:
        v38 = MEMORY[0x1E69E7CC0];
LABEL_33:
        *v50 = v38;

        goto LABEL_34;
      }

      sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v38 = swift_allocObject();
      v39 = j__malloc_size_0(v38);
      v40 = v39 - 32;
      if (v39 < 32)
      {
        v40 = v39 - 25;
      }

      v38[2] = 0;
      v38[3] = (2 * (v40 >> 3)) | 1;
      goto LABEL_33;
    }

    if (!(v49 >> 62))
    {
      v72 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
      v52 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_54;
    }

    v72 = sub_1AFDFE108();
    v49 = *v50;
    if (!(*v50 >> 62))
    {
      goto LABEL_53;
    }

    sub_1AFDFE108();
    v52 = sub_1AFDFE108();
    v49 = *v50;
LABEL_54:
    v53 = v52 - v72;
    v54 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v50 = v49;
    if (v54)
    {
      if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
      {
        v55 = v53;
        v56 = v49 & 0xFFFFFFFFFFFFFF8;
        if (v55 <= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }

    else if ((v49 & 0x8000000000000000) == 0 && (v49 & 0x4000000000000000) == 0)
    {
      goto LABEL_65;
    }

    sub_1AFDFE108();
LABEL_65:
    v49 = sub_1AFDFE268();
    *v50 = v49;
    v56 = v49 & 0xFFFFFFFFFFFFFF8;
LABEL_66:
    type metadata accessor for DrawCall();
    swift_arrayDestroy();
    if (v72)
    {
      if (v49 >> 62)
      {
        v57 = sub_1AFDFE108();
      }

      else
      {
        v57 = *(v56 + 16);
      }

      memmove((v56 + 32), (v56 + 8 * v72 + 32), 8 * (v57 - v72));
      if (v49 >> 62)
      {
        v58 = sub_1AFDFE108();
      }

      else
      {
        v58 = *(v56 + 16);
      }

      *(v56 + 16) = v58 - v72;
    }

LABEL_34:
    (v78)(v79, 0);
    v36 = v74;
  }

  while (1)
  {
    v41 = v35 + 1;
    if (v35 + 1 >= v34)
    {
      break;
    }

    v33 = *(v30 + 8 * v35++ + 72);
    if (v33)
    {
      v35 = v41;
      goto LABEL_39;
    }
  }

  v60 = *(v36 + 2);
  if (v60)
  {
    v61 = (v36 + 32);
    do
    {
      v62 = *v61++;
      sub_1AF449D3C(v62);
      if (v63)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = *v29;
        v79[0] = *v29;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF84F9A8();
          v65 = v79[0];
        }

        sub_1AF6B7628();
        *v29 = v65;
      }

      --v60;
    }

    while (v60);
  }

  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1AFB4691C(void *a1, char a2, unsigned __int8 a3)
{
  if ([a1 isDrawingBlur])
  {
    v6 = 8256;
  }

  else
  {
    v6 = 0;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_useDitherFade))
  {
    v6 |= 0xCu;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableBreakthrough))
  {
    v6 |= 0x20u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableClipping))
  {
    v6 |= 2u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableNearFieldVignetting))
  {
    v6 |= 0x200u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_depthOnly))
  {
    v6 |= 0x800u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_renderInGBuffer))
  {
    v6 |= 0x4000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsNormalRoughness))
  {
    v6 |= 0x10000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsAlbedoMetalness))
  {
    v6 |= 0x40000000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_outputsRadianceAO))
  {
    v6 |= 0x80000000;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_enableSSAO))
  {
    v6 |= 0x20000000u;
  }

  if ([a1 respondsToSelector_])
  {
    v7 = [a1 renderMode];
    if (v7 <= 3)
    {
      switch(v7)
      {
        case 1:
          v6 |= 0x20000u;
          goto LABEL_53;
        case 2:
          v6 |= 0x40000u;
          goto LABEL_53;
        case 3:
          v6 |= 0x80000u;
          goto LABEL_53;
      }
    }

    else
    {
      if (v7 <= 5)
      {
        if (v7 == 4)
        {
          v6 |= 0x100000u;
        }

        else
        {
          v6 |= 0x200000u;
        }

        goto LABEL_53;
      }

      if (v7 == 6)
      {
        v6 |= 0x400000u;
        goto LABEL_53;
      }

      if (v7 == 7)
      {
        v6 |= 0x800000u;
        goto LABEL_53;
      }
    }

    if (v7 == 8)
    {
      v6 |= 0x1000000u;
    }
  }

LABEL_53:
  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_portalClippingMode) - 1 < 3)
  {
    v6 |= 0xC000000u;
  }

  if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_isLayeredRendering))
  {
    v6 |= 0x2000000u;
  }

  if ([a1 respondsToSelector_])
  {
    v6 |= ([a1 renderPassOptions] << 9) & 0x1000;
  }

  else if (!a2 && (v6 & 0x800) == 0)
  {
    if ([a1 respondsToSelector_])
    {
      [a1 fadeOpacity];
      if (v8 < 1.0)
      {
        v6 |= 0x1000u;
      }
    }

    if ((v6 & 0x1020) == 0x20)
    {
      v6 |= 0x1000u;
    }
  }

  v9 = a2 == 1 && (v6 & 0x2800) == 2048;
  v10 = v6 | 0x2000;
  if (!v9)
  {
    v10 = v6;
  }

  return v10 | a3 & ((v10 & 1) == 0) | 0x400u;
}

id sub_1AFB46D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = [a1 colorPixelFormatAtIndex_];
  v17 = [a1 colorPixelFormatAtIndex_];
  v4 = [a1 colorPixelFormatAtIndex_];
  v5 = [a1 colorPixelFormatAtIndex_];
  v6 = [a1 colorPixelFormatAtIndex_];
  v7 = [a1 colorPixelFormatAtIndex_];
  v8 = [a1 colorPixelFormatAtIndex_];
  v9 = [a1 colorPixelFormatAtIndex_];
  v10 = [a1 depthPixelFormat];
  v11 = [a1 stencilPixelFormat];
  result = [a1 sampleCount];
  v13 = qword_1EB63E310;
  v14 = result;
  if ((result & 0xFE) == 0)
  {
    v14 = 1;
  }

  *a2 = v18;
  *(a2 + 8) = v17;
  v15 = v10 != 260 && v13 >= 0x2540BE407;
  v16 = 253;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  if (!v15)
  {
    v16 = v11;
  }

  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v10;
  *(a2 + 72) = v16;
  *(a2 + 80) = v14;
  return result;
}

uint64_t sub_1AFB46E90(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1AF12E2A0(Strong);

    if (v4)
    {
      return 4;
    }
  }

  if (*(a1 + 393) == 1)
  {
    v6 = swift_unknownObjectUnownedLoadStrong();
    if (v6)
    {

      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (*(a1 + 396))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AFB46F1C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v15 = result;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if ((a5 & 0x100000000) == 0 && (a5 & 0x7FFFFFFF) == 0)
    {

      goto LABEL_6;
    }

    v169 = a1;
    *(Strong + 240) = 1;
    sub_1AFB46D20([a2 renderTargetInfo], v185);
    swift_unknownObjectRelease();
    v18 = sub_1AFB4691C(a2, a6, a7 & 1);
    *&v184[4] = v185[0];
    *&v184[20] = v185[1];
    *&v184[36] = v185[2];
    *&v184[52] = v185[3];
    *&v184[68] = v185[4];
    *&v184[84] = v186;
    v165 = v18;
    v187 = v18;
    v188 = *v184;
    v189 = *&v184[16];
    *(v192 + 12) = *&v184[76];
    v192[0] = *&v184[64];
    v191 = *&v184[48];
    v190 = *&v184[32];
    if ([a2 respondsToSelector_])
    {
      v19 = [a2 renderGraphMaterialOverride];
      v20 = *(a8 + 368);
      v21 = *(a8 + 372);
      if (__PAIR64__(v21, v20) == 0xFFFFFFFF)
      {
        if (v19 == -1)
        {
          goto LABEL_17;
        }

LABEL_20:

        *(v17 + 240) = 0;
      }

      if (v19 != -1)
      {
        if (v19 == (v20 | (v21 << 32)))
        {
          goto LABEL_17;
        }

        goto LABEL_20;
      }
    }

    else
    {
      LODWORD(v20) = *(a8 + 368);
      v21 = *(a8 + 372);
      if (__PAIR64__(v21, v20) == 0xFFFFFFFF)
      {
LABEL_17:
        v160 = a2;
        v22 = v15;
        v23 = *(v17 + 520);
        v24 = v17;
        v170 = a8;
        v25 = *(v23 + 56);

        os_unfair_lock_lock(v25);
        v26 = *(*(v23 + 24) + 8 * a6 + 32);
        os_unfair_lock_unlock(v25);

        if (*(*(v170 + 232) + 16) < v26)
        {

LABEL_75:
          *(v24 + 240) = 0;
        }

        v161 = v24;
        v27 = sub_1AFB43678(&v187);
        v162 = v22;
        if (!v27)
        {

          v38 = sub_1AF0D8F8C(&v187);

          if (v38)
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            HIDWORD(v177[1]) = -335544320;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF48BF0);
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x6E6169726176202CLL, 0xEB00000000203A74);
            LODWORD(v171[0]) = v165;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](2108962, 0xE300000000000000);
            strcpy(v177, "PassFormat: ");
            v39 = _sSo17CFXRenderPassDescas28CustomDebugStringConvertible3VFXsACP16debugDescriptionSSvgTW_0();
            MEMORY[0x1B2718AE0](v39);

            v40 = v177[1];
            v177[1] = 0xE000000000000000;

            MEMORY[0x1B2718AE0](v177[0], v40);

            v41 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v145 = v41;
              swift_once();
              v41 = v145;
            }

            v177[0] = 0;
            sub_1AF0D4F18(v41, v177, 0, 0xE000000000000000);

            *(v161 + 276) = 1;
            sub_1AF885E08(v22);
          }

          *(v161 + 240) = 0;
        }

        v30 = v28;
        v157 = v29;
        v159 = v27;
        v31 = v160;
        if ([v160 respondsToSelector_])
        {
          v32 = [v160 stencilInfo];
          DepthStencilDesc = CFXGPUDeviceGetDepthStencilDesc(*(v161 + 16), v30);
          v35 = sub_1AF755D74(v32, DepthStencilDesc, v34);
          DepthStencil = CFXGPUDeviceCreateDepthStencil(*(v161 + 16), v35, v36);
          *(v170 + 116) = [v32 backReferenceValue];
          *(v170 + 112) = [v32 frontReferenceValue];
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          sub_1AF8263A0(DepthStencil, DepthStencil);
          swift_unknownObjectRelease();
          v30 = DepthStencil;
        }

        v158 = v30;
        if ((a7 & 1) == 0)
        {
          [objc_msgSend(v160 renderTargetInfo)];
          swift_unknownObjectRelease();
        }

        v24 = v161;
        v42 = v170;
        v43 = **(v162 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        v172 = &type metadata for REExternalDataTable;
        v173 = &off_1F253A1B8;
        v171[0] = v160;
        memset(v179, 0, sizeof(v179));
        v180 = 0u;
        v181 = xmmword_1AFE22A20;
        v182 = xmmword_1AFE22A20;
        v183 = xmmword_1AFE22A20;
        v178 = a6;
        v177[0] = v162;
        v177[1] = v161;
        v177[2] = v43;
        v177[3] = 1;

        swift_unknownObjectRetain();
        sub_1AF5FD5D8(v171, v179);
        if (*(v170 + 208) <= 0)
        {
          v44 = 3;
        }

        else
        {
          v44 = 26;
        }

        v45 = sub_1AFB46E90(v161);
        if (v45 > 2u)
        {
          if (v45 == 3)
          {
            v84 = swift_unknownObjectUnownedLoadStrong();
            if (v84)
            {
              v167 = v84;
              v87 = sub_1AF1311B0(v84, v85, v86);
              v89 = v88;
              v49 = v169;
              swift_getObjectType();
              sub_1AF6F3458(v87, v89, 0, 1, v44);
              MEMORY[0x1EEE9AC00](v90);
              v91 = *(v162 + 184);

              sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v91, sub_1AFB49C00);
              v93 = v92;
              v95 = v94;

              if (v93)
              {
                sub_1AF6F3458(v93, v95, 0, 12, v44);
              }

              MEMORY[0x1EEE9AC00](v96);
              v97 = *(v162 + 184);
              MEMORY[0x1EEE9AC00](v98);
              v156 = v44;

              sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v97, sub_1AFB4A454);

              MEMORY[0x1EEE9AC00](v99);
              v100 = *(v162 + 184);

              sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v100, sub_1AFB4A430);
              v102 = v101;
              v104 = v103;

              if (v102)
              {
                sub_1AF6F3458(v102, v104, 0, 0, v156);
              }

              MEMORY[0x1EEE9AC00](v105);
              v106 = *(v162 + 184);
              MEMORY[0x1EEE9AC00](v107);

              sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v106, sub_1AFB4A454);

              goto LABEL_71;
            }
          }

          else
          {
            v124 = swift_unknownObjectUnownedLoadStrong();
            if (v124)
            {
              v125 = v124;
              v126 = sub_1AF1310A0(v124);
              *(&v180 + 1) = v126;
              if (v126)
              {
                v127 = v126;
                sub_1AF22DB5C(v127, 3u, 0, 1u);
                sub_1AF22DB5C(v127, 3u, 1u, 2u);
              }

              else
              {
              }

              v123 = v169;
              goto LABEL_73;
            }
          }
        }

        else if (v45 - 1 < 2)
        {
          v152 = v45;
          MEMORY[0x1EEE9AC00](v45);
          v46 = *(v162 + 184);
          MEMORY[0x1EEE9AC00](v47);

          sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v46, sub_1AFB49B48);

          MEMORY[0x1EEE9AC00](v48);
          v155 = v44;
          v49 = v169;
          v50 = *(v162 + 184);

          sub_1AF6D3DD4(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v50, sub_1AFB49B88);
          v52 = v51;
          v54 = v53;

          if (v52)
          {
            swift_getObjectType();
            sub_1AF6F3458(v52, v54, 0, 0, v44);
          }

          MEMORY[0x1EEE9AC00](v55);
          v56 = *(v162 + 184);
          MEMORY[0x1EEE9AC00](v57);

          sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v56, sub_1AFB4A454);

          if ((v157 & 1) == 0)
          {
            MEMORY[0x1EEE9AC00](v58);
            v109 = *(v162 + 184);

            sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v109, sub_1AFB49BA8);

            v111 = v171[0];
            v112 = v171[2];
            v113 = v174;
            v164 = v172;
            v168 = v173;
            v115 = v175;
            v114 = v176;
            v116 = v155;
            if (v171[0])
            {
              v154 = v174;
              v117 = v175;
              v118 = v171[1];
              swift_getObjectType();
              v116 = v155;
              v115 = v117;
              v113 = v154;
              sub_1AF6F3458(v111, v118, 0, 10, v155);
            }

            if (v112)
            {
              swift_getObjectType();
              sub_1AF6F3458(v112, v164, 0, 11, v116);
            }

            v119 = v169;
            if (v168)
            {
              swift_getObjectType();
              v119 = v169;
              sub_1AF6F3458(v168, v113, 0, 12, v116);
            }

            v31 = v160;
            if (v115)
            {
              swift_getObjectType();
              v119 = v169;
              sub_1AF6F3458(v115, v114, 0, 14, 2);
              sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
              v120 = swift_allocObject();
              *(v120 + 16) = xmmword_1AFE4C3E0;
              *(v120 + 32) = v115;
              swift_unknownObjectRetain();
              sub_1AFB41F64(v120, 1, 2);
            }

            MEMORY[0x1EEE9AC00](v110);
            v121 = *(v162 + 184);
            MEMORY[0x1EEE9AC00](v122);

            sub_1AF6D2ADC(&type metadata for FrameConstantsStorage, &off_1F255F3C8, v121, sub_1AFB4A454);

            v123 = v119;
            v24 = v161;
            goto LABEL_72;
          }

          v59 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
          if (v152 == 2)
          {
            v60 = swift_unknownObjectUnownedLoadStrong();
            if (v60)
            {
              v61 = v60;
              sub_1AF1311B8(v60, v160);
              v64 = sub_1AF1311C4(v61, v62, v63);
              v151 = v65;
              v153 = v64;
              v67 = sub_1AF131210(v61, v65, v66);
              v69 = v68;
              v71 = sub_1AF13125C(v61, v68, v70);
              v149 = v72;
              v150 = v71;
              v74 = sub_1AF1312A8(v61, v72, v73);
              v163 = v75;
              v166 = v74;
              v77 = sub_1AF1312F4(v61, v59, v76);
              v79 = v78;
              v80 = v59;
              sub_1AF131350(v61, v80, v81);
              v147 = v83;
              v148 = v82;
LABEL_68:

              swift_getObjectType();
              sub_1AF6F3458(v153, v151, 0, 15, v155);
              sub_1AF6F3458(v77, v79, 0, 18, 2);
              sub_1AF6F3458(v67, v69, 0, 16, 2);
              sub_1AF6F3458(v150, v149, 0, 17, 2);
              sub_1AF6F3458(v148, v147, 0, 19, 2);
              sub_1AF6F3458(v166, v163, 0, 20, v155);
              v171[0] = 0;
              sub_1AF64E46C();
              v144 = v59;
              sub_1AFDFD408();

              if (v171[0])
              {
                sub_1AFB41F64(v171[0], 1, 2);
              }

LABEL_71:
              v123 = v49;
              v31 = v160;
              v24 = v161;
LABEL_72:
              v42 = v170;
LABEL_73:
              sub_1AFB416F0(v42, &v187, v159, v158, v108, v157 & 1, v123, v177, v31);

              sub_1AF5FD668(v177);
              swift_unknownObjectRelease();
              goto LABEL_74;
            }
          }

          else
          {
            v128 = *(v161 + 56);
            if (v128)
            {
              v129 = *(v161 + 248);
              v130 = v128;
              v131 = v129;
              sub_1AFDEB10C(v130);
              v80 = v131;
              v132 = sub_1AFDEB2FC(v130);
              v151 = v133;
              v153 = v132;
              v67 = sub_1AFDEB410(v130);
              v146 = v134;
              v135 = sub_1AFDEB248(v130) - 1;
              v136 = sub_1AFDEB530(v130);
              v149 = v137;
              v150 = v136;
              v138 = sub_1AFDEB644(v130);
              v163 = v139;
              v166 = v138;
              v140 = v59;
              v77 = sub_1AFDEB738(v130, v80, v140);
              v79 = v141;
              sub_1AFDEB928(v130, v80, v140, v135);
              v147 = v143;
              v148 = v142;

              v69 = v146;
              v61 = v80;
              goto LABEL_68;
            }
          }

          sub_1AF5FD668(v177);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          *(v161 + 240) = 0;
        }

        sub_1AF5FD668(v177);
        swift_unknownObjectRelease();
LABEL_74:
        swift_unknownObjectRelease();
        goto LABEL_75;
      }
    }

    if ((v21 & v20) == 0xFFFFFFFFLL)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

LABEL_6:
}

void sub_1AFB4816C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v31 = *MEMORY[0x1E69E9840];
  sub_1AFB1A01C(a2, a2);
  memcpy(__dst, (a1 + 48), sizeof(__dst));
  v11 = sub_1AFB19B34(v10);
  v12 = v11;
  v13 = *(a1 + 1216);
  if (*(v13 + 16) && (v14 = sub_1AF449CB8(v11), (v15 & 1) != 0))
  {
    v16 = *(v13 + 56) + 16 * v14;
    v17 = *v16;
    LODWORD(v18) = *(v16 + 8);
    v19 = *(v16 + 12);
  }

  else
  {
    v20 = *(a3 + 232);
    memcpy(aBlock, (a1 + 48), sizeof(aBlock));
    v17 = CFXBufferAllocatorPerFrameAllocateWithBytes(v20, aBlock, 0x480uLL);
    v18 = v21;
    v22 = HIDWORD(v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = *(a1 + 1216);
    sub_1AF85904C(v17, v18, v12, isUniquelyReferenced_nonNull_native);
    *(a1 + 1216) = aBlock[0];
    v19 = v22;
  }

  v24 = [swift_unknownObjectRetain() storageMode];
  swift_unknownObjectRelease();
  if (v24 != 2)
  {
    [swift_unknownObjectRetain() contents];
    v25 = v17;
  }

  sub_1AFB1D694(a4 & 1);
  swift_getObjectType();
  sub_1AF6F3458(v17, v18 | (v19 << 32), 0, 1, a6);
  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  *(v26 + 24) = v18;
  *(v26 + 28) = v19;
  *(v26 + 32) = a4 & 1;
  aBlock[4] = sub_1AFB49CF8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AFB483E8;
  aBlock[3] = &unk_1F24E6230;
  v27 = _Block_copy(aBlock);

  [a2 setLateLatchingPatchHandler_];
  _Block_release(v27);
}

uint64_t sub_1AFB483E8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(a1 + 32);

  v6(a2, a3, a4);
}

double sub_1AFB48458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1416);
  if (v5)
  {
    swift_getObjectType();
    result = sub_1AFB41F64(v5, 1, a3);
  }

  v7 = *(a1 + 1504);
  if (v7)
  {
    swift_getObjectType();
    return sub_1AFB41F64(v7, 1, a3);
  }

  return result;
}

uint64_t sub_1AFB484E0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 16) = (*(a1 + 16) | a2) & 1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a1 + 8);
  if (a4)
  {
    v10 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = a3;
  }

  v11 = sub_1AF449D3C(v10);
  v13 = v12;
  v14 = v9[2] + ((v12 & 1) == 0);
  if (v9[3] < v14)
  {
    sub_1AF84120C(v14, isUniquelyReferenced_nonNull_native);
    v11 = sub_1AF449D3C(v10);
    if ((v13 & 1) == (v15 & 1))
    {
      goto LABEL_8;
    }

    v11 = sub_1AFDFF1A8();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_8:
    *(a1 + 8) = v9;
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20 = v11;
  sub_1AF84F9A8();
  v11 = v20;
  *(a1 + 8) = v9;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    v16 = v11;
    sub_1AF85B950();
    v11 = v16;
  }

LABEL_10:
  v17 = (v9[7] + 8 * v11);

  MEMORY[0x1B2718E00](v18);
  if (*((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  return sub_1AFDFD4B8();
}

void *sub_1AFB48658@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AF42C508(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void *sub_1AFB48690(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1AFDFE108();
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v3 = sub_1AFB48720(v2, 0);

  sub_1AFB487C4((v3 + 4), v2, a1);

  return v3;
}

void *sub_1AFB48720(uint64_t a1, uint64_t a2)
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

  sub_1AFB49E28(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
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

unint64_t sub_1AFB487C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    if (a2 >= 1)
    {
      sub_1AFDFE108();
      sub_1AFDFE108();
      sub_1AFDFE108();

      sub_1AFDFE578();
    }
  }

  else if (a2 >= 1)
  {
    sub_1AF64E46C();
    swift_arrayInitWithCopy();
  }

  return a3;
}

void sub_1AFB488A0(void *a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  if (a4)
  {
    v116 = *a1;
    v7 = *(v116 + 16);
    if (v7)
    {
      v8 = ( + 72);
      do
      {
        v9 = *(v8 - 5);
        v10 = *(v8 - 3);
        v124 = *(v8 - 8);
        v123[0] = v9;
        v123[1] = v10;
        v11 = *v8;
        v8 += 6;
        sub_1AF88DAE0(v123, &v102);
        sub_1AFB442D0(v123, 1, v11, v5);
        sub_1AF88DB3C(v123);
        --v7;
      }

      while (v7);
      sub_1AFB49620(&v116, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v115 = v6[1];
    v12 = *(v115 + 16);
    if (v12)
    {
      v13 = ( + 64);
      do
      {
        v14 = *(v13 - 4);
        v15 = *(v13 - 3);
        v16 = *(v13 - 2);
        v17 = *v13;
        v18 = *(v13 - 8);
        sub_1AF64E4D0(v14, v15, v16, v18);
        v19 = v17;
        v5 = a3;
        sub_1AFB445B8(v14, v15, v16, v18, 1, v19, a3);
        sub_1AF88DCFC(v14, v15, v16, v18);
        v13 += 5;
        --v12;
      }

      while (v12);
      sub_1AFB49620(&v115, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v114 = v6[2];
    v20 = *(v114 + 16);
    if (v20)
    {
      v21 = ( + 64);
      do
      {
        v24 = *(v21 - 4);
        v23 = *(v21 - 3);
        v25 = *(v21 - 2);
        v26 = *(v21 - 8);
        v27 = *v21;
        if (v26 == 1)
        {
          v97 = *(v21 - 3);
          sub_1AFB4967C((a3 + 5), &v100);
          if (!v101)
          {
            sub_1AF8949B0(v24, v97, v25, 1);

            sub_1AFB4970C(&v100);
            goto LABEL_79;
          }

          sub_1AF0FBA54(&v100, &v102);
          if (!v25)
          {
            sub_1AF8949B0(v24, v97, 0, 1);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
LABEL_79:
            v102 = 0;
            v103 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
            LOBYTE(v100) = v24;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x2064656D616E20, 0xE700000000000000);
            v92 = v25 == 0;
            if (v25)
            {
              v93 = v97;
            }

            else
            {
              v93 = 7104878;
            }

            goto LABEL_88;
          }

          v28 = *sub_1AF441150(&v102, v104);

          v23 = v97;
          v29 = sub_1AFDFCEC8();
          v22 = [v28 sampler:v24 :v29];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
        }

        else
        {
          sub_1AF8949B0(*(v21 - 4), *(v21 - 3), *(v21 - 2), 0);
          swift_unknownObjectRetain();
          v22 = v24;
        }

        v21 += 5;
        [a2 setVertexSamplerState:v22 atIndex:v27];
        swift_unknownObjectRelease();
        sub_1AF894E80(v24, v23, v25, v26);
        --v20;
      }

      while (v20);
      sub_1AFB49620(&v114, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 8) != 0)
  {
    v113 = v6[6];
    v30 = *(v113 + 16);
    if (v30)
    {
      v31 = ( + 72);
      do
      {
        v32 = *(v31 - 5);
        v33 = *(v31 - 3);
        v122 = *(v31 - 8);
        v121[0] = v32;
        v121[1] = v33;
        v34 = *v31;
        v31 += 6;
        sub_1AF88DAE0(v121, &v102);
        sub_1AFB442D0(v121, 8, v34, v5);
        sub_1AF88DB3C(v121);
        --v30;
      }

      while (v30);
      sub_1AFB49620(&v113, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v112 = v6[7];
    v35 = *(v112 + 16);
    if (v35)
    {
      v36 = ( + 64);
      do
      {
        v37 = *(v36 - 4);
        v38 = *(v36 - 3);
        v39 = *(v36 - 2);
        v40 = *v36;
        v41 = *(v36 - 8);
        sub_1AF64E4D0(v37, v38, v39, v41);
        v42 = v40;
        v5 = a3;
        sub_1AFB445B8(v37, v38, v39, v41, 8, v42, a3);
        sub_1AF88DCFC(v37, v38, v39, v41);
        v36 += 5;
        --v35;
      }

      while (v35);
      sub_1AFB49620(&v112, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v111 = v6[8];
    v43 = *(v111 + 16);
    if (v43)
    {
      v44 = ( + 64);
      do
      {
        v47 = *(v44 - 4);
        v46 = *(v44 - 3);
        v25 = *(v44 - 2);
        v48 = *(v44 - 8);
        v49 = *v44;
        if (v48 == 1)
        {
          sub_1AFB4967C((a3 + 5), &v100);
          if (!v101)
          {
LABEL_74:
            sub_1AF8949B0(v47, v46, v25, 1);

            sub_1AFB4970C(&v100);
LABEL_76:
            v102 = 0;
            v103 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
            LOBYTE(v100) = v47;
            goto LABEL_85;
          }

          sub_1AF0FBA54(&v100, &v102);
          if (!v25)
          {
LABEL_75:
            sub_1AF8949B0(v47, v46, 0, 1);
            _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
            goto LABEL_76;
          }

          v50 = *sub_1AF441150(&v102, v104);

          v51 = sub_1AFDFCEC8();
          v45 = [v50 sampler:v47 :v51];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
        }

        else
        {
          sub_1AF8949B0(*(v44 - 4), *(v44 - 3), *(v44 - 2), 0);
          swift_unknownObjectRetain();
          v45 = v47;
        }

        v44 += 5;
        [a2 setObjectSamplerState:v45 atIndex:v49];
        swift_unknownObjectRelease();
        sub_1AF894E80(v47, v46, v25, v48);
        --v43;
      }

      while (v43);
      sub_1AFB49620(&v111, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 0x10) != 0)
  {
    v110 = v6[9];
    v52 = *(v110 + 16);
    if (v52)
    {
      v53 = ( + 72);
      do
      {
        v54 = *(v53 - 5);
        v55 = *(v53 - 3);
        v120 = *(v53 - 8);
        v119[0] = v54;
        v119[1] = v55;
        v56 = *v53;
        v53 += 6;
        sub_1AF88DAE0(v119, &v102);
        sub_1AFB442D0(v119, 16, v56, v5);
        sub_1AF88DB3C(v119);
        --v52;
      }

      while (v52);
      sub_1AFB49620(&v110, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
    }

    v109 = v6[10];
    v57 = *(v109 + 16);
    if (v57)
    {
      v58 = ( + 64);
      do
      {
        v59 = *(v58 - 4);
        v60 = *(v58 - 3);
        v61 = *(v58 - 2);
        v62 = *v58;
        v63 = *(v58 - 8);
        sub_1AF64E4D0(v59, v60, v61, v63);
        v64 = v62;
        v5 = a3;
        sub_1AFB445B8(v59, v60, v61, v63, 16, v64, a3);
        sub_1AF88DCFC(v59, v60, v61, v63);
        v58 += 5;
        --v57;
      }

      while (v57);
      sub_1AFB49620(&v109, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
      v6 = a1;
    }

    v108 = v6[11];
    v65 = *(v108 + 16);
    if (v65)
    {
      v66 = ( + 64);
      do
      {
        v47 = *(v66 - 4);
        v46 = *(v66 - 3);
        v25 = *(v66 - 2);
        v68 = *(v66 - 8);
        v69 = *v66;
        if (v68 == 1)
        {
          sub_1AFB4967C((a3 + 5), &v100);
          if (!v101)
          {
            goto LABEL_74;
          }

          sub_1AF0FBA54(&v100, &v102);
          if (!v25)
          {
            goto LABEL_75;
          }

          v70 = *sub_1AF441150(&v102, v104);

          v71 = sub_1AFDFCEC8();
          v67 = [v70 sampler:v47 :v71];

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
        }

        else
        {
          sub_1AF8949B0(*(v66 - 4), *(v66 - 3), *(v66 - 2), 0);
          swift_unknownObjectRetain();
          v67 = v47;
        }

        v66 += 5;
        [a2 setMeshSamplerState:v67 atIndex:v69];
        swift_unknownObjectRelease();
        sub_1AF894E80(v47, v46, v25, v68);
        --v65;
      }

      while (v65);
      sub_1AFB49620(&v108, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      v5 = a3;
    }
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_73;
  }

  v107 = v6[3];
  v72 = *(v107 + 16);
  if (v72)
  {
    v73 = ( + 72);
    do
    {
      v74 = *(v73 - 5);
      v75 = *(v73 - 3);
      v118 = *(v73 - 8);
      v117[0] = v74;
      v117[1] = v75;
      v76 = *v73;
      v73 += 6;
      sub_1AF88DAE0(v117, &v102);
      sub_1AFB442D0(v117, 2, v76, v5);
      sub_1AF88DB3C(v117);
      --v72;
    }

    while (v72);
    sub_1AFB49620(&v107, qword_1ED725B00, &type metadata for BufferArgument, type metadata accessor for IndexedArray);
  }

  v106 = v6[4];
  v77 = *(v106 + 16);
  if (v77)
  {
    v78 = ( + 64);
    do
    {
      v79 = *(v78 - 4);
      v80 = *(v78 - 3);
      v81 = *(v78 - 2);
      v82 = *v78;
      v83 = *(v78 - 8);
      sub_1AF64E4D0(v79, v80, v81, v83);
      sub_1AFB445B8(v79, v80, v81, v83, 2, v82, a3);
      sub_1AF88DCFC(v79, v80, v81, v83);
      v78 += 5;
      --v77;
    }

    while (v77);
    sub_1AFB49620(&v106, &qword_1EB642AA8, &type metadata for TextureArgument, type metadata accessor for IndexedArray);
    v6 = a1;
  }

  v105 = v6[5];
  v84 = *(v105 + 16);
  if (!v84)
  {
LABEL_73:
    sub_1AFB41F64(v6[13], 1, v4);
    return;
  }

  v85 = ( + 64);
  while (1)
  {
    v87 = *(v85 - 4);
    v46 = *(v85 - 3);
    v25 = *(v85 - 2);
    v88 = *(v85 - 8);
    v89 = *v85;
    if (v88 == 1)
    {
      break;
    }

    sub_1AF8949B0(*(v85 - 4), *(v85 - 3), *(v85 - 2), 0);
    swift_unknownObjectRetain();
    v86 = v87;
LABEL_67:
    v85 += 5;
    [a2 setFragmentSamplerState:v86 atIndex:v89];
    swift_unknownObjectRelease();
    sub_1AF894E80(v87, v46, v25, v88);
    if (!--v84)
    {
      sub_1AFB49620(&v105, &unk_1EB642AB0, &type metadata for SamplerArgument, type metadata accessor for IndexedArray);
      v4 = a4;
      v6 = a1;
      goto LABEL_73;
    }
  }

  sub_1AFB4967C((a3 + 5), &v100);
  if (!v101)
  {
    sub_1AF8949B0(v87, v46, v25, 1);

    sub_1AFB4970C(&v100);
    goto LABEL_84;
  }

  sub_1AF0FBA54(&v100, &v102);
  if (v25)
  {
    v90 = *sub_1AF441150(&v102, v104);

    v91 = sub_1AFDFCEC8();
    v86 = [v90 sampler:v87 :v91];

    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
    goto LABEL_67;
  }

  sub_1AF8949B0(v87, v46, 0, 1);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v102);
LABEL_84:
  v102 = 0;
  v103 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF48B90);
  LOBYTE(v100) = v87;
LABEL_85:
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x2064656D616E20, 0xE700000000000000);
  v92 = v25 == 0;
  if (v25)
  {
    v93 = v46;
  }

  else
  {
    v93 = 7104878;
  }

LABEL_88:
  if (v92)
  {
    v94 = 0xE300000000000000;
  }

  else
  {
    v94 = v25;
  }

  MEMORY[0x1B2718AE0](v93, v94);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AFB49620(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AFB49E28(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFB4967C(uint64_t a1, uint64_t a2)
{
  sub_1AF5FD6BC(0, &unk_1ED72ADD0, qword_1ED72ADE0, &protocol descriptor for ExternalDataTable, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFB4970C(uint64_t a1)
{
  sub_1AF5FD6BC(0, &unk_1ED72ADD0, qword_1ED72ADE0, &protocol descriptor for ExternalDataTable, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1AFB4979C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1AFB497F8(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_1ED7259D0 != -1)
  {
    swift_once();
  }

  v27[0] = xmmword_1ED7259E0;
  v27[1] = *algn_1ED7259F0;
  v28 = qword_1ED725A00;
  sub_1AF6B06C0(a1, v27, 0x200000000, &v6);
  if (v6)
  {
    v13 = v6;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v15 = v8;
    v22 = v8;
    v21 = v7;
    v25 = v11;
    v24 = v10;
    v23 = v9;
    v19 = v12;
    v20 = v6;
    v14 = v7;
    v26 = v12;
    MEMORY[0x1EEE9AC00](v4);
    v5 = *(a1 + 184);

    sub_1AF6D2ADC(&type metadata for DrawCallPool, &off_1F25608D0, v5, a2);

    sub_1AF6B8EAC(0);
    sub_1AFB49620(&v6, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720]);
  }
}

uint64_t sub_1AFB499A4(uint64_t result, int8x16_t *a2, unint64_t a3)
{
  a2[1].i64[0] = *result;
  a2[5] = vextq_s8(*(result + 8), *(result + 8), 8uLL);
  if (a3 >= 1 && (v3 = *(result + 88), *(v3 + 16) >= a3))
  {
    v7 = (v3 + 40 * a3);
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v10;
    a2[2].i64[0] = v8;
    a2[2].i64[1] = v9 | (v10 << 32);
    v12 = *(result + 80);
    a2[3].i64[0] = v12 != 2;
    a2[3].i64[1] = v11 / v12;
  }

  else
  {
    v4 = *(result + 32);
    if (v4)
    {
      v5 = *(result + 40) | (*(result + 48) << 32);
      a2[2].i64[0] = v4;
      a2[2].i64[1] = v5;
      v6 = *(result + 72);
      a2[3].i64[0] = *(result + 80) != 2;
      a2[3].i64[1] = v6;
    }

    else
    {
      a2[3].i64[1] = 0;
      a2[2] = 0uLL;
    }
  }

  v13 = *(result + 88);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 40 * v14);
    v16 = *(v15 - 1);
    v17 = *v15 | (*(v15 + 1) << 32);
    a2[4].i64[0] = v16;
    a2[4].i64[1] = v17;
  }

  return result;
}

uint64_t sub_1AFB49A68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (*(*a1 + 16) && (sub_1AF449CB8(a2), (v5 & 1) != 0))
    {
    }

    else
    {
      v6 = sub_1AF42C624(MEMORY[0x1E69E7CC0]);
    }

    *(a4 + 232) = v6;
  }

  else
  {
    *(a4 + 232) = a1[1];
  }
}

double sub_1AFB49C38(uint64_t a1)
{
  v2 = *(a1 + 1504);
  if (v2)
  {
    v3 = *(v1 + 24);
    swift_getObjectType();
    return sub_1AFB41F64(v2, 1, v3);
  }

  return result;
}

double sub_1AFB49CA4(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_getObjectType();
  return sub_1AFB41F64(*(a1 + 1280), 1, v3);
}

void sub_1AFB49CF8(uint64_t a1, float32x4_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = sub_1AF6F2CC8(v4, v5);

  sub_1AFB1D3E4(v7, a1, v6, a2);
}

double sub_1AFB49D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1AFB49D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AFB49E28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFB49F58(uint64_t a1)
{
  if (!qword_1ED7230A0)
  {
    sub_1AF43D914();
    v1 = sub_1AFDFE4C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7230A0);
    }
  }
}

unint64_t sub_1AFB4A148()
{
  result = qword_1EB642AE0;
  if (!qword_1EB642AE0)
  {
    result = swift_getWitnessTable(a9_3, &type metadata for DrawCallLayer, v0, v1);
    atomic_store(result, &qword_1EB642AE0);
  }

  return result;
}

unint64_t sub_1AFB4A1BC()
{
  result = qword_1ED725980;
  if (!qword_1ED725980)
  {
    result = swift_getWitnessTable(byte_1AFE9B8B8, &_s28DrawCallEntityClassesContextVN, v0, v1);
    atomic_store(result, &qword_1ED725980);
  }

  return result;
}

unint64_t sub_1AFB4A210()
{
  result = qword_1EB642AF0;
  if (!qword_1EB642AF0)
  {
    result = swift_getWitnessTable(byte_1AFE9BB04, &type metadata for RenderingOrder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642AF0);
  }

  return result;
}

void sub_1AFB4A264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFB4A210();
    v7 = a3(a1, &type metadata for RenderingOrder.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFB4A2DC()
{
  result = qword_1EB642B00;
  if (!qword_1EB642B00)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for RenderingOrder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B00);
  }

  return result;
}

unint64_t sub_1AFB4A334()
{
  result = qword_1EB642B08;
  if (!qword_1EB642B08)
  {
    result = swift_getWitnessTable(byte_1AFE9BA4C, &type metadata for RenderingOrder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B08);
  }

  return result;
}

unint64_t sub_1AFB4A38C()
{
  result = qword_1EB642B10;
  if (!qword_1EB642B10)
  {
    result = swift_getWitnessTable(byte_1AFE9BA74, &type metadata for RenderingOrder.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B10);
  }

  return result;
}

uint64_t sub_1AFB4A474(float32x4_t *a1, __n128 *a2, char a3, uint64_t a4, uint64_t a5)
{
  v569 = *a2;
  v570 = a2[1];
  v571 = a2[2];
  v572 = a2[3];
  v9 = a1->i64[0];
  v10 = a1[2].i64[1];
  v11 = a1[3].i64[1];
  if (a1->i8[8])
  {
    if ((a3 & 1) == 0)
    {
      result = sub_1AFB3CAA4(102, 204, 255);
      v28 = result;
      if (v9 > 5)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    v563 = a1[6];
    v565 = a1[5];
    result = sub_1AFB3CAA4(255, 111, 207);
    v567 = result;
  }

  else
  {
    v563 = a1[6];
    v565 = a1[5];
    result = sub_1AFB3CAA4(128, 128, 128);
    v567 = result;
    if ((a3 & 1) == 0)
    {
      v28 = result;
      if (v9 > 5)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  if (v10 <= 2)
  {
    v15 = v565;
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_125;
      }

      *&v16 = 0;
      DWORD2(v16) = 0;
      HIDWORD(v16) = v565.i32[0];
      v599 = v16;
      v602 = 3;
      v17 = a2[4].n128_u8[0];
      v18 = (a4 + 32);
      ecs_stack_allocator_push_snapshot(*(a4 + 32));
      v19 = *(a5 + 16);
      v20 = *(a4 + 32);
      v21 = 16 * v19;
      if (v17)
      {
        v22 = ecs_stack_allocator_allocate(v20, v21 + 32, 8);
        *v22 = &type metadata for DebugInfoWireframePrimitive;
        v22[1] = &off_1F25604A8;
        v22[2] = &type metadata for DebugInfoColor;
        v22[3] = &off_1F2560488;
        if (v19)
        {
          if (v19 > 5 && ((v22 + 4) >= a5 + v21 + 32 || a5 + 32 >= &v22[v21 / 8 + 4]))
          {
            v23 = v19 & 0x7FFFFFFFFFFFFFFCLL;
            v24 = v19 & 0x7FFFFFFFFFFFFFFCLL | 2;
            v488 = v22 + 8;
            v489 = (a5 + 64);
            v490 = v19 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v492 = *(v489 - 2);
              v491 = *(v489 - 1);
              v494 = *v489;
              v493 = v489[1];
              v489 += 4;
              *(v488 - 2) = v492;
              *(v488 - 1) = v491;
              *v488 = v494;
              v488[1] = v493;
              v488 += 4;
              v490 -= 4;
            }

            while (v490);
            if (v19 == v23)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v23 = 0;
            v24 = 2;
          }

          v25 = v19 - v23;
          v26 = (a5 + 16 * v23 + 32);
          do
          {
            v27 = *v26++;
            *&v22[2 * v24++] = v27;
            --v25;
          }

          while (v25);
LABEL_102:
          LOBYTE(v596[0]) = 1;
          sub_1AF63C898(v22, v24, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567);
LABEL_124:
          result = ecs_stack_allocator_pop_snapshot(*v18);
          goto LABEL_125;
        }

        goto LABEL_101;
      }

      v108 = ecs_stack_allocator_allocate(v20, v21 + 64, 8);
      *v108 = &type metadata for DebugInfoWireframePrimitive;
      v108[1] = &off_1F25604A8;
      v108[2] = &type metadata for DebugInfoColor;
      v108[3] = &off_1F2560488;
      v108[4] = &type metadata for WorldTransform;
      v108[5] = &off_1F2529FC0;
      v108[6] = &type metadata for Beamed;
      v108[7] = &off_1F2529FA0;
      if (v19)
      {
        if (v19 > 0x13)
        {
          v109 = 0;
          v363 = 2 * (v19 - 1);
          v110 = 4;
          if (&v108[v363 + 8] < v108 + 8 || &v108[v363 + 9] < v108 + 9 || (v19 - 1) >> 60)
          {
            goto LABEL_106;
          }

          if ((v108 + 8) >= a5 + v21 + 32 || a5 + 32 >= &v108[v21 / 8 + 8])
          {
            v109 = v19 & 0x1FFFFFFFFFFFFFFCLL;
            v110 = (v19 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v364 = v108 + 12;
            v365 = (a5 + 64);
            v366 = v19 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v368 = *(v365 - 2);
              v367 = *(v365 - 1);
              v370 = *v365;
              v369 = v365[1];
              v365 += 4;
              *(v364 - 2) = v368;
              *(v364 - 1) = v367;
              *v364 = v370;
              v364[1] = v369;
              v364 += 4;
              v366 -= 4;
            }

            while (v366);
            if (v19 == v109)
            {
              goto LABEL_122;
            }

            goto LABEL_106;
          }
        }

        v109 = 0;
        v110 = 4;
LABEL_106:
        v111 = v19 - v109;
        v112 = (a5 + 16 * v109 + 32);
        do
        {
          v113 = *v112++;
          *&v108[2 * v110++] = v113;
          --v111;
        }

        while (v111);
        goto LABEL_122;
      }

LABEL_121:
      v110 = 4;
LABEL_122:
      LOBYTE(v596[0]) = 1;
      v122 = MEMORY[0x1E69E7CC0];
      v123 = &v599;
      v124 = a4;
      v125 = v567;
      v126 = v569;
      v127 = v570;
      v128 = v571;
      v129 = v572;
LABEL_123:
      sub_1AF63D8A8(v108, v110, v122, 1, 0x100000000uLL, v124, v123, v125, v126, v127, v128, v129);
      goto LABEL_124;
    }

    v15.i32[3] = 0;
    v599 = xmmword_1AFE201A0;
    v600 = v15;
    v602 = 6;
    v74 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v75 = *(a5 + 16);
    v76 = *(a4 + 32);
    v77 = 16 * v75;
    if (v74)
    {
      v22 = ecs_stack_allocator_allocate(v76, v77 + 32, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for DebugInfoColor;
      v22[3] = &off_1F2560488;
      if (v75)
      {
        if (v75 > 5 && ((v22 + 4) >= a5 + v77 + 32 || a5 + 32 >= &v22[v77 / 8 + 4]))
        {
          v78 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          v24 = v75 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v502 = v22 + 8;
          v503 = (a5 + 64);
          v504 = v75 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v506 = *(v503 - 2);
            v505 = *(v503 - 1);
            v508 = *v503;
            v507 = v503[1];
            v503 += 4;
            *(v502 - 2) = v506;
            *(v502 - 1) = v505;
            *v502 = v508;
            v502[1] = v507;
            v502 += 4;
            v504 -= 4;
          }

          while (v504);
          if (v75 == v78)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v78 = 0;
          v24 = 2;
        }

        v79 = v75 - v78;
        v80 = (a5 + 16 * v78 + 32);
        do
        {
          v81 = *v80++;
          *&v22[2 * v24++] = v81;
          --v79;
        }

        while (v79);
        goto LABEL_102;
      }

LABEL_101:
      v24 = 2;
      goto LABEL_102;
    }

    v108 = ecs_stack_allocator_allocate(v76, v77 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (!v75)
    {
      goto LABEL_121;
    }

    if (v75 > 0x13)
    {
      v118 = 0;
      v379 = 2 * (v75 - 1);
      v110 = 4;
      if (&v108[v379 + 8] < v108 + 8 || &v108[v379 + 9] < v108 + 9 || (v75 - 1) >> 60)
      {
        goto LABEL_118;
      }

      if ((v108 + 8) >= a5 + v77 + 32 || a5 + 32 >= &v108[v77 / 8 + 8])
      {
        v118 = v75 & 0x1FFFFFFFFFFFFFFCLL;
        v110 = (v75 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v380 = v108 + 12;
        v381 = (a5 + 64);
        v382 = v75 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v384 = *(v381 - 2);
          v383 = *(v381 - 1);
          v386 = *v381;
          v385 = v381[1];
          v381 += 4;
          *(v380 - 2) = v384;
          *(v380 - 1) = v383;
          *v380 = v386;
          v380[1] = v385;
          v380 += 4;
          v382 -= 4;
        }

        while (v382);
        if (v75 == v118)
        {
          goto LABEL_122;
        }

        goto LABEL_118;
      }
    }

    v118 = 0;
    v110 = 4;
LABEL_118:
    v119 = v75 - v118;
    v120 = (a5 + 16 * v118 + 32);
    do
    {
      v121 = *v120++;
      *&v108[2 * v110++] = v121;
      --v119;
    }

    while (v119);
    goto LABEL_122;
  }

  if (v10 != 3)
  {
    if (v10 != 4)
    {
      goto LABEL_125;
    }

    v13.i64[0] = 1;
    v14.i64[0] = v11;
    v42.i64[1] = 3212836864;
    v43 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v13).i64[0], 0), 0, xmmword_1AFE206C0);
    v42.i64[0] = 2;
    v44 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v14, v42).i64[0], 0), 0, xmmword_1AFE20180);
    *&v45 = vmulq_n_f32(v43, v565.f32[0]).u64[0];
    *(&v45 + 1) = __PAIR64__(v565.u32[0], COERCE_UNSIGNED_INT(vmuls_lane_f32(v565.f32[0], v43, 2)));
    v43.i64[0] = vmulq_n_f32(v44, v565.f32[0]).u64[0];
    v43.i64[1] = __PAIR64__(v565.u32[0], COERCE_UNSIGNED_INT(vmuls_lane_f32(v565.f32[0], v44, 2)));
    v599 = v45;
    v600 = v43;
    v601 = 4;
    v602 = 7;
    v46 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v47 = *(a5 + 16);
    v48 = *(a4 + 32);
    v49 = 16 * v47;
    if (v46)
    {
      v22 = ecs_stack_allocator_allocate(v48, v49 + 32, 8);
      *v22 = &type metadata for DebugInfoWireframePrimitive;
      v22[1] = &off_1F25604A8;
      v22[2] = &type metadata for DebugInfoColor;
      v22[3] = &off_1F2560488;
      if (v47)
      {
        if (v47 > 5 && ((v22 + 4) >= a5 + v49 + 32 || a5 + 32 >= &v22[v49 / 8 + 4]))
        {
          v50 = v47 & 0x7FFFFFFFFFFFFFFCLL;
          v24 = v47 & 0x7FFFFFFFFFFFFFFCLL | 2;
          v495 = v22 + 8;
          v496 = (a5 + 64);
          v497 = v47 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v499 = *(v496 - 2);
            v498 = *(v496 - 1);
            v501 = *v496;
            v500 = v496[1];
            v496 += 4;
            *(v495 - 2) = v499;
            *(v495 - 1) = v498;
            *v495 = v501;
            v495[1] = v500;
            v495 += 4;
            v497 -= 4;
          }

          while (v497);
          if (v47 == v50)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v50 = 0;
          v24 = 2;
        }

        v51 = v47 - v50;
        v52 = (a5 + 16 * v50 + 32);
        do
        {
          v53 = *v52++;
          *&v22[2 * v24++] = v53;
          --v51;
        }

        while (v51);
        goto LABEL_102;
      }

      goto LABEL_101;
    }

    v108 = ecs_stack_allocator_allocate(v48, v49 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (!v47)
    {
      goto LABEL_121;
    }

    if (v47 > 0x13)
    {
      v114 = 0;
      v371 = 2 * (v47 - 1);
      v110 = 4;
      if (&v108[v371 + 8] < v108 + 8 || &v108[v371 + 9] < v108 + 9 || (v47 - 1) >> 60)
      {
        goto LABEL_112;
      }

      if ((v108 + 8) >= a5 + v49 + 32 || a5 + 32 >= &v108[v49 / 8 + 8])
      {
        v114 = v47 & 0x1FFFFFFFFFFFFFFCLL;
        v110 = (v47 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v372 = v108 + 12;
        v373 = (a5 + 64);
        v374 = v47 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v376 = *(v373 - 2);
          v375 = *(v373 - 1);
          v378 = *v373;
          v377 = v373[1];
          v373 += 4;
          *(v372 - 2) = v376;
          *(v372 - 1) = v375;
          *v372 = v378;
          v372[1] = v377;
          v372 += 4;
          v374 -= 4;
        }

        while (v374);
        if (v47 == v114)
        {
          goto LABEL_122;
        }

        goto LABEL_112;
      }
    }

    v114 = 0;
    v110 = 4;
LABEL_112:
    v115 = v47 - v114;
    v116 = (a5 + 16 * v114 + 32);
    do
    {
      v117 = *v116++;
      *&v108[2 * v110++] = v117;
      --v115;
    }

    while (v115);
    goto LABEL_122;
  }

  if (v11 == 2)
  {
LABEL_503:
    sub_1AF6DE910();
    v596[0] = v474;
    v596[1] = v475;
    v597 = 4;
    v598 = 7;
    v476 = a2[4].n128_u8[0];
    v18 = (a4 + 32);
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v477 = *(a5 + 16);
    v478 = *(a4 + 32);
    v479 = 16 * v477;
    if (v476)
    {
      v480 = ecs_stack_allocator_allocate(v478, v479 + 32, 8);
      *v480 = &type metadata for DebugInfoWireframePrimitive;
      v480[1] = &off_1F25604A8;
      v480[2] = &type metadata for DebugInfoColor;
      v480[3] = &off_1F2560488;
      if (v477)
      {
        if (v477 > 5)
        {
          if ((v480 + 4) >= a5 + v479 + 32 || a5 + 32 >= &v480[v479 / 8 + 4])
          {
            v481 = v477 & 0x7FFFFFFFFFFFFFFCLL;
            v482 = v477 & 0x7FFFFFFFFFFFFFFCLL | 2;
            v517 = v480 + 8;
            v518 = (a5 + 64);
            v519 = v477 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v521 = *(v518 - 2);
              v520 = *(v518 - 1);
              v523 = *v518;
              v522 = v518[1];
              v518 += 4;
              *(v517 - 2) = v521;
              *(v517 - 1) = v520;
              *v517 = v523;
              v517[1] = v522;
              v517 += 4;
              v519 -= 4;
            }

            while (v519);
            if (v477 == v481)
            {
              goto LABEL_551;
            }
          }

          else
          {
            v481 = 0;
            v482 = 2;
          }
        }

        else
        {
          v481 = 0;
          v482 = 2;
        }

        v524 = v477 - v481;
        v525 = (a5 + 16 * v481 + 32);
        do
        {
          v526 = *v525++;
          *&v480[2 * v482++] = v526;
          --v524;
        }

        while (v524);
      }

      else
      {
        v482 = 2;
      }

LABEL_551:
      LOBYTE(v593) = 1;
      sub_1AF63C898(v480, v482, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v596, v567);
      goto LABEL_124;
    }

    v108 = ecs_stack_allocator_allocate(v478, v479 + 64, 8);
    *v108 = &type metadata for DebugInfoWireframePrimitive;
    v108[1] = &off_1F25604A8;
    v108[2] = &type metadata for DebugInfoColor;
    v108[3] = &off_1F2560488;
    v108[4] = &type metadata for WorldTransform;
    v108[5] = &off_1F2529FC0;
    v108[6] = &type metadata for Beamed;
    v108[7] = &off_1F2529FA0;
    if (v477)
    {
      v483 = 0;
      if (v477 > 0x13)
      {
        v487 = 2 * (v477 - 1);
        v110 = 4;
        if (&v108[v487 + 8] >= v108 + 8 && &v108[v487 + 9] >= v108 + 9 && !((v477 - 1) >> 60))
        {
          if ((v108 + 8) >= a5 + v479 + 32 || a5 + 32 >= &v108[v479 / 8 + 8])
          {
            v483 = v477 & 0x1FFFFFFFFFFFFFFCLL;
            v110 = (v477 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v555 = v108 + 12;
            v556 = (a5 + 64);
            v557 = v477 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v559 = *(v556 - 2);
              v558 = *(v556 - 1);
              v561 = *v556;
              v560 = v556[1];
              v556 += 4;
              *(v555 - 2) = v559;
              *(v555 - 1) = v558;
              *v555 = v561;
              v555[1] = v560;
              v555 += 4;
              v557 -= 4;
            }

            while (v557);
            if (v477 == v483)
            {
              goto LABEL_515;
            }
          }

          else
          {
            v483 = 0;
            v110 = 4;
          }
        }
      }

      else
      {
        v110 = 4;
      }

      v484 = v477 - v483;
      v485 = (a5 + 16 * v483 + 32);
      do
      {
        v486 = *v485++;
        *&v108[2 * v110++] = v486;
        --v484;
      }

      while (v484);
    }

    else
    {
      v110 = 4;
    }

LABEL_515:
    LOBYTE(v593) = 1;
    v122 = MEMORY[0x1E69E7CC0];
    v123 = v596;
    v124 = a4;
    v125 = v567;
    v126 = v569;
    v127 = v570;
    v128 = v571;
    v129 = v572;
    goto LABEL_123;
  }

  sub_1AF6DE910();
  v599 = v82;
  v600 = v83;
  v601 = 4;
  v602 = 7;
  v84 = a2[4].n128_u8[0];
  ecs_stack_allocator_push_snapshot(*(a4 + 32));
  v85 = *(a5 + 16);
  v86 = *(a4 + 32);
  v87 = 16 * v85;
  if (v84)
  {
    v88 = ecs_stack_allocator_allocate(v86, v87 + 32, 8);
    *v88 = &type metadata for DebugInfoWireframePrimitive;
    v88[1] = &off_1F25604A8;
    v88[2] = &type metadata for DebugInfoColor;
    v88[3] = &off_1F2560488;
    if (v85)
    {
      if (v85 > 5 && ((v88 + 4) >= a5 + v87 + 32 || a5 + 32 >= &v88[v87 / 8 + 4]))
      {
        v89 = v85 & 0x7FFFFFFFFFFFFFFCLL;
        v90 = v85 & 0x7FFFFFFFFFFFFFFCLL | 2;
        v548 = v88 + 8;
        v549 = (a5 + 64);
        v550 = v85 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v552 = *(v549 - 2);
          v551 = *(v549 - 1);
          v554 = *v549;
          v553 = v549[1];
          v549 += 4;
          *(v548 - 2) = v552;
          *(v548 - 1) = v551;
          *v548 = v554;
          v548[1] = v553;
          v548 += 4;
          v550 -= 4;
        }

        while (v550);
        if (v85 == v89)
        {
          goto LABEL_499;
        }
      }

      else
      {
        v89 = 0;
        v90 = 2;
      }

      v91 = v85 - v89;
      v92 = (a5 + 16 * v89 + 32);
      do
      {
        v93 = *v92++;
        *&v88[2 * v90++] = v93;
        --v91;
      }

      while (v91);
    }

    else
    {
      v90 = 2;
    }

LABEL_499:
    LOBYTE(v596[0]) = 1;
    sub_1AF63C898(v88, v90, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567);
    goto LABEL_502;
  }

  v204 = ecs_stack_allocator_allocate(v86, v87 + 64, 8);
  *v204 = &type metadata for DebugInfoWireframePrimitive;
  v204[1] = &off_1F25604A8;
  v204[2] = &type metadata for DebugInfoColor;
  v204[3] = &off_1F2560488;
  v204[4] = &type metadata for WorldTransform;
  v204[5] = &off_1F2529FC0;
  v204[6] = &type metadata for Beamed;
  v204[7] = &off_1F2529FA0;
  if (v85)
  {
    if (v85 > 0x13)
    {
      v205 = 0;
      v509 = 2 * (v85 - 1);
      v206 = 4;
      if (&v204[v509 + 8] < v204 + 8 || &v204[v509 + 9] < v204 + 9 || (v85 - 1) >> 60)
      {
        goto LABEL_225;
      }

      if ((v204 + 8) >= a5 + v87 + 32 || a5 + 32 >= &v204[v87 / 8 + 8])
      {
        v205 = v85 & 0x1FFFFFFFFFFFFFFCLL;
        v206 = (v85 & 0x1FFFFFFFFFFFFFFCLL) + 4;
        v510 = v204 + 12;
        v511 = (a5 + 64);
        v512 = v85 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v514 = *(v511 - 2);
          v513 = *(v511 - 1);
          v516 = *v511;
          v515 = v511[1];
          v511 += 4;
          *(v510 - 2) = v514;
          *(v510 - 1) = v513;
          *v510 = v516;
          v510[1] = v515;
          v510 += 4;
          v512 -= 4;
        }

        while (v512);
        if (v85 == v205)
        {
          goto LABEL_501;
        }

        goto LABEL_225;
      }
    }

    v205 = 0;
    v206 = 4;
LABEL_225:
    v207 = v85 - v205;
    v208 = (a5 + 16 * v205 + 32);
    do
    {
      v209 = *v208++;
      *&v204[2 * v206++] = v209;
      --v207;
    }

    while (v207);
    goto LABEL_501;
  }

  v206 = 4;
LABEL_501:
  LOBYTE(v596[0]) = 1;
  sub_1AF63D8A8(v204, v206, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v599, v567, v569, v570, v571, v572);
LABEL_502:
  result = ecs_stack_allocator_pop_snapshot(*(a4 + 32));
  if (v11 != 1)
  {
    goto LABEL_503;
  }

LABEL_125:
  if (v9 > 5)
  {
    v28 = v567;
    if (v9 == 6)
    {
      goto LABEL_148;
    }

    if (v9 == 8)
    {
      goto LABEL_139;
    }

    goto LABEL_160;
  }

  v28 = v567;
  if ((v9 - 3) < 2)
  {
    return result;
  }

  if (v9)
  {
LABEL_160:
    if (a2[4].n128_u8[0])
    {
      v156 = -1;
    }

    else
    {
      v156 = 0;
    }

    v157 = vdupq_n_s32(v156);
    v568 = vbslq_s8(v157, xmmword_1AFE20150, v569);
    v566 = vbslq_s8(v157, xmmword_1AFE20160, v570);
    v562 = vbslq_s8(v157, xmmword_1AFE20180, v571);
    v158 = vbslq_s8(v157, xmmword_1AFE201A0, v572);
    v159 = vaddq_f32(v563, v158);
    v159.i32[3] = v158.i32[3];
    v564 = v159;
    LOBYTE(v588) = 0;
    v593 = 1028443341;
    v594 = 0;
    v595 = 2;
    ecs_stack_allocator_push_snapshot(*(a4 + 32));
    v160 = *(a5 + 16);
    v161 = 2 * v160;
    v162 = ecs_stack_allocator_allocate(*(a4 + 32), 16 * v160 + 64, 8);
    *v162 = &type metadata for DebugInfoWireframePrimitive;
    v162[1] = &off_1F25604A8;
    v162[2] = &type metadata for DebugInfoColor;
    v162[3] = &off_1F2560488;
    v162[4] = &type metadata for WorldTransform;
    v162[5] = &off_1F2529FC0;
    v162[6] = &type metadata for Beamed;
    v162[7] = &off_1F2529FA0;
    if (!v160)
    {
      v164 = 4;
      goto LABEL_211;
    }

    if (v160 <= 0x13)
    {
      goto LABEL_165;
    }

    v163 = 0;
    v196 = 2 * (v160 - 1);
    v164 = 4;
    if (&v162[v196 + 8] < v162 + 8 || &v162[v196 + 9] < v162 + 9 || (v160 - 1) >> 60)
    {
      goto LABEL_166;
    }

    if ((v162 + 8) < a5 + v161 * 8 + 32 && a5 + 32 < &v162[v161 + 8])
    {
LABEL_165:
      v163 = 0;
      v164 = 4;
    }

    else
    {
      v163 = v160 & 0x1FFFFFFFFFFFFFFCLL;
      v164 = (v160 & 0x1FFFFFFFFFFFFFFCLL) + 4;
      v197 = v162 + 12;
      v198 = (a5 + 64);
      v199 = v160 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v201 = *(v198 - 2);
        v200 = *(v198 - 1);
        v203 = *v198;
        v202 = v198[1];
        v198 += 4;
        *(v197 - 2) = v201;
        *(v197 - 1) = v200;
        *v197 = v203;
        v197[1] = v202;
        v197 += 4;
        v199 -= 4;
      }

      while (v199);
      if (v160 == v163)
      {
LABEL_211:
        LOBYTE(v585[0]) = 1;
        sub_1AF63D8A8(v162, v164, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v593, v28, v568, v566, v562, v564);
        result = ecs_stack_allocator_pop_snapshot(*(a4 + 32));
        if (v9 > 5)
        {
LABEL_23:
          if (v9 <= 7)
          {
            if (v9 != 6)
            {
              sub_1AF6DE920();
              v588 = v29;
              v589 = v30;
              v590 = 0x3F00000040000000;
              v592 = 4;
              v31 = a2[4].n128_u8[0];
              v32 = (a4 + 32);
              ecs_stack_allocator_push_snapshot(*(a4 + 32));
              v33 = *(a5 + 16);
              v34 = *(a4 + 32);
              v35 = 16 * v33;
              if (v31)
              {
                v36 = ecs_stack_allocator_allocate(v34, v35 + 32, 8);
                *v36 = &type metadata for DebugInfoWireframePrimitive;
                v36[1] = &off_1F25604A8;
                v36[2] = &type metadata for DebugInfoColor;
                v36[3] = &off_1F2560488;
                if (v33)
                {
                  if (v33 > 5 && ((v36 + 4) >= a5 + v35 + 32 || a5 + 32 >= &v36[v35 / 8 + 4]))
                  {
                    v37 = v33 & 0x7FFFFFFFFFFFFFFCLL;
                    v38 = v33 & 0x7FFFFFFFFFFFFFFCLL | 2;
                    v534 = v36 + 8;
                    v535 = (a5 + 64);
                    v536 = v33 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v538 = *(v535 - 2);
                      v537 = *(v535 - 1);
                      v540 = *v535;
                      v539 = v535[1];
                      v535 += 4;
                      *(v534 - 2) = v538;
                      *(v534 - 1) = v537;
                      *v534 = v540;
                      v534[1] = v539;
                      v534 += 4;
                      v536 -= 4;
                    }

                    while (v536);
                    if (v33 == v37)
                    {
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v37 = 0;
                    v38 = 2;
                  }

                  v39 = v33 - v37;
                  v40 = (a5 + 16 * v37 + 32);
                  do
                  {
                    v41 = *v40++;
                    *&v36[2 * v38++] = v41;
                    --v39;
                  }

                  while (v39);
                  goto LABEL_158;
                }

LABEL_157:
                v38 = 2;
                goto LABEL_158;
              }

              v168 = ecs_stack_allocator_allocate(v34, v35 + 64, 8);
              *v168 = &type metadata for DebugInfoWireframePrimitive;
              v168[1] = &off_1F25604A8;
              v168[2] = &type metadata for DebugInfoColor;
              v168[3] = &off_1F2560488;
              v168[4] = &type metadata for WorldTransform;
              v168[5] = &off_1F2529FC0;
              v168[6] = &type metadata for Beamed;
              v168[7] = &off_1F2529FA0;
              if (!v33)
              {
                goto LABEL_205;
              }

              if (v33 > 0x13)
              {
                v186 = 0;
                v458 = 2 * (v33 - 1);
                v170 = 4;
                if (&v168[v458 + 8] < v168 + 8 || &v168[v458 + 9] < v168 + 9 || (v33 - 1) >> 60)
                {
                  goto LABEL_196;
                }

                if ((v168 + 8) >= a5 + v35 + 32 || a5 + 32 >= &v168[v35 / 8 + 8])
                {
                  v186 = v33 & 0x1FFFFFFFFFFFFFFCLL;
                  v170 = (v33 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                  v459 = v168 + 12;
                  v460 = (a5 + 64);
                  v461 = v33 & 0x1FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v463 = *(v460 - 2);
                    v462 = *(v460 - 1);
                    v465 = *v460;
                    v464 = v460[1];
                    v460 += 4;
                    *(v459 - 2) = v463;
                    *(v459 - 1) = v462;
                    *v459 = v465;
                    v459[1] = v464;
                    v459 += 4;
                    v461 -= 4;
                  }

                  while (v461);
                  if (v33 == v186)
                  {
                    goto LABEL_206;
                  }

                  goto LABEL_196;
                }
              }

              v186 = 0;
              v170 = 4;
LABEL_196:
              v187 = v33 - v186;
              v188 = (a5 + 16 * v186 + 32);
              do
              {
                v189 = *v188++;
                *&v168[2 * v170++] = v189;
                --v187;
              }

              while (v187);
              goto LABEL_206;
            }

LABEL_148:
            v589 = xmmword_1AFE20160;
            v588 = 0uLL;
            v590 = 0x3F8000003F000000;
            v591 = xmmword_1AFE9AB20;
            v592 = 9;
            v146 = a2[4].n128_u8[0];
            v32 = (a4 + 32);
            ecs_stack_allocator_push_snapshot(*(a4 + 32));
            v147 = *(a5 + 16);
            v148 = *(a4 + 32);
            v149 = 16 * v147;
            if (v146)
            {
              v36 = ecs_stack_allocator_allocate(v148, v149 + 32, 8);
              *v36 = &type metadata for DebugInfoWireframePrimitive;
              v36[1] = &off_1F25604A8;
              v36[2] = &type metadata for DebugInfoColor;
              v36[3] = &off_1F2560488;
              if (v147)
              {
                if (v147 > 5 && ((v36 + 4) >= a5 + v149 + 32 || a5 + 32 >= &v36[v149 / 8 + 4]))
                {
                  v150 = v147 & 0x7FFFFFFFFFFFFFFCLL;
                  v38 = v147 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v387 = v36 + 8;
                  v388 = (a5 + 64);
                  v389 = v147 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v391 = *(v388 - 2);
                    v390 = *(v388 - 1);
                    v393 = *v388;
                    v392 = v388[1];
                    v388 += 4;
                    *(v387 - 2) = v391;
                    *(v387 - 1) = v390;
                    *v387 = v393;
                    v387[1] = v392;
                    v387 += 4;
                    v389 -= 4;
                  }

                  while (v389);
                  if (v147 == v150)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  v150 = 0;
                  v38 = 2;
                }

                v151 = v147 - v150;
                v152 = (a5 + 16 * v150 + 32);
                do
                {
                  v153 = *v152++;
                  *&v36[2 * v38++] = v153;
                  --v151;
                }

                while (v151);
                goto LABEL_158;
              }

              goto LABEL_157;
            }

            v168 = ecs_stack_allocator_allocate(v148, v149 + 64, 8);
            *v168 = &type metadata for DebugInfoWireframePrimitive;
            v168[1] = &off_1F25604A8;
            v168[2] = &type metadata for DebugInfoColor;
            v168[3] = &off_1F2560488;
            v168[4] = &type metadata for WorldTransform;
            v168[5] = &off_1F2529FC0;
            v168[6] = &type metadata for Beamed;
            v168[7] = &off_1F2529FA0;
            if (!v147)
            {
              goto LABEL_205;
            }

            if (v147 > 0x13)
            {
              v169 = 0;
              v291 = 2 * (v147 - 1);
              v170 = 4;
              if (&v168[v291 + 8] < v168 + 8 || &v168[v291 + 9] < v168 + 9 || (v147 - 1) >> 60)
              {
                goto LABEL_172;
              }

              if ((v168 + 8) >= a5 + v149 + 32 || a5 + 32 >= &v168[v149 / 8 + 8])
              {
                v169 = v147 & 0x1FFFFFFFFFFFFFFCLL;
                v170 = (v147 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v292 = v168 + 12;
                v293 = (a5 + 64);
                v294 = v147 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v296 = *(v293 - 2);
                  v295 = *(v293 - 1);
                  v298 = *v293;
                  v297 = v293[1];
                  v293 += 4;
                  *(v292 - 2) = v296;
                  *(v292 - 1) = v295;
                  *v292 = v298;
                  v292[1] = v297;
                  v292 += 4;
                  v294 -= 4;
                }

                while (v294);
                if (v147 == v169)
                {
                  goto LABEL_206;
                }

                goto LABEL_172;
              }
            }

            v169 = 0;
            v170 = 4;
LABEL_172:
            v171 = v147 - v169;
            v172 = (a5 + 16 * v169 + 32);
            do
            {
              v173 = *v172++;
              *&v168[2 * v170++] = v173;
              --v171;
            }

            while (v171);
            goto LABEL_206;
          }

          if (v9 != 8)
          {
            if (v9 != 9)
            {
              return result;
            }

            v588 = xmmword_1AFE201A0;
            v589 = xmmword_1AFE9BB90;
            v592 = 6;
            v66 = a2[4].n128_u8[0];
            v32 = (a4 + 32);
            ecs_stack_allocator_push_snapshot(*(a4 + 32));
            v67 = *(a5 + 16);
            v68 = *(a4 + 32);
            v69 = 16 * v67;
            if (v66)
            {
              v36 = ecs_stack_allocator_allocate(v68, v69 + 32, 8);
              *v36 = &type metadata for DebugInfoWireframePrimitive;
              v36[1] = &off_1F25604A8;
              v36[2] = &type metadata for DebugInfoColor;
              v36[3] = &off_1F2560488;
              if (v67)
              {
                if (v67 > 5 && ((v36 + 4) >= a5 + v69 + 32 || a5 + 32 >= &v36[v69 / 8 + 4]))
                {
                  v70 = v67 & 0x7FFFFFFFFFFFFFFCLL;
                  v38 = v67 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v541 = v36 + 8;
                  v542 = (a5 + 64);
                  v543 = v67 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v545 = *(v542 - 2);
                    v544 = *(v542 - 1);
                    v547 = *v542;
                    v546 = v542[1];
                    v542 += 4;
                    *(v541 - 2) = v545;
                    *(v541 - 1) = v544;
                    *v541 = v547;
                    v541[1] = v546;
                    v541 += 4;
                    v543 -= 4;
                  }

                  while (v543);
                  if (v67 == v70)
                  {
                    goto LABEL_158;
                  }
                }

                else
                {
                  v70 = 0;
                  v38 = 2;
                }

                v71 = v67 - v70;
                v72 = (a5 + 16 * v70 + 32);
                do
                {
                  v73 = *v72++;
                  *&v36[2 * v38++] = v73;
                  --v71;
                }

                while (v71);
                goto LABEL_158;
              }

              goto LABEL_157;
            }

            v168 = ecs_stack_allocator_allocate(v68, v69 + 64, 8);
            *v168 = &type metadata for DebugInfoWireframePrimitive;
            v168[1] = &off_1F25604A8;
            v168[2] = &type metadata for DebugInfoColor;
            v168[3] = &off_1F2560488;
            v168[4] = &type metadata for WorldTransform;
            v168[5] = &off_1F2529FC0;
            v168[6] = &type metadata for Beamed;
            v168[7] = &off_1F2529FA0;
            if (!v67)
            {
              goto LABEL_205;
            }

            if (v67 > 0x13)
            {
              v190 = 0;
              v466 = 2 * (v67 - 1);
              v170 = 4;
              if (&v168[v466 + 8] < v168 + 8 || &v168[v466 + 9] < v168 + 9 || (v67 - 1) >> 60)
              {
                goto LABEL_202;
              }

              if ((v168 + 8) >= a5 + v69 + 32 || a5 + 32 >= &v168[v69 / 8 + 8])
              {
                v190 = v67 & 0x1FFFFFFFFFFFFFFCLL;
                v170 = (v67 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v467 = v168 + 12;
                v468 = (a5 + 64);
                v469 = v67 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v471 = *(v468 - 2);
                  v470 = *(v468 - 1);
                  v473 = *v468;
                  v472 = v468[1];
                  v468 += 4;
                  *(v467 - 2) = v471;
                  *(v467 - 1) = v470;
                  *v467 = v473;
                  v467[1] = v472;
                  v467 += 4;
                  v469 -= 4;
                }

                while (v469);
                if (v67 == v190)
                {
                  goto LABEL_206;
                }

                goto LABEL_202;
              }
            }

            v190 = 0;
            v170 = 4;
LABEL_202:
            v191 = v67 - v190;
            v192 = (a5 + 16 * v190 + 32);
            do
            {
              v193 = *v192++;
              *&v168[2 * v170++] = v193;
              --v191;
            }

            while (v191);
            goto LABEL_206;
          }

LABEL_139:
          v588 = xmmword_1AFE201A0;
          v589 = xmmword_1AFE9BB90;
          v592 = 6;
          v138 = a2[4].n128_u8[0];
          v32 = (a4 + 32);
          ecs_stack_allocator_push_snapshot(*(a4 + 32));
          v139 = *(a5 + 16);
          v140 = *(a4 + 32);
          v141 = 16 * v139;
          if (v138)
          {
            v36 = ecs_stack_allocator_allocate(v140, v141 + 32, 8);
            *v36 = &type metadata for DebugInfoWireframePrimitive;
            v36[1] = &off_1F25604A8;
            v36[2] = &type metadata for DebugInfoColor;
            v36[3] = &off_1F2560488;
            if (v139)
            {
              if (v139 > 5 && ((v36 + 4) >= a5 + v141 + 32 || a5 + 32 >= &v36[v141 / 8 + 4]))
              {
                v142 = v139 & 0x7FFFFFFFFFFFFFFCLL;
                v38 = v139 & 0x7FFFFFFFFFFFFFFCLL | 2;
                v401 = v36 + 8;
                v402 = (a5 + 64);
                v403 = v139 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v405 = *(v402 - 2);
                  v404 = *(v402 - 1);
                  v407 = *v402;
                  v406 = v402[1];
                  v402 += 4;
                  *(v401 - 2) = v405;
                  *(v401 - 1) = v404;
                  *v401 = v407;
                  v401[1] = v406;
                  v401 += 4;
                  v403 -= 4;
                }

                while (v403);
                if (v139 == v142)
                {
                  goto LABEL_158;
                }
              }

              else
              {
                v142 = 0;
                v38 = 2;
              }

              v143 = v139 - v142;
              v144 = (a5 + 16 * v142 + 32);
              do
              {
                v145 = *v144++;
                *&v36[2 * v38++] = v145;
                --v143;
              }

              while (v143);
              goto LABEL_158;
            }

            goto LABEL_157;
          }

          v168 = ecs_stack_allocator_allocate(v140, v141 + 64, 8);
          *v168 = &type metadata for DebugInfoWireframePrimitive;
          v168[1] = &off_1F25604A8;
          v168[2] = &type metadata for DebugInfoColor;
          v168[3] = &off_1F2560488;
          v168[4] = &type metadata for WorldTransform;
          v168[5] = &off_1F2529FC0;
          v168[6] = &type metadata for Beamed;
          v168[7] = &off_1F2529FA0;
          if (!v139)
          {
            goto LABEL_205;
          }

          if (v139 > 0x13)
          {
            v178 = 0;
            v307 = 2 * (v139 - 1);
            v170 = 4;
            if (&v168[v307 + 8] < v168 + 8 || &v168[v307 + 9] < v168 + 9 || (v139 - 1) >> 60)
            {
              goto LABEL_184;
            }

            if ((v168 + 8) >= a5 + v141 + 32 || a5 + 32 >= &v168[v141 / 8 + 8])
            {
              v178 = v139 & 0x1FFFFFFFFFFFFFFCLL;
              v170 = (v139 & 0x1FFFFFFFFFFFFFFCLL) + 4;
              v308 = v168 + 12;
              v309 = (a5 + 64);
              v310 = v139 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v312 = *(v309 - 2);
                v311 = *(v309 - 1);
                v314 = *v309;
                v313 = v309[1];
                v309 += 4;
                *(v308 - 2) = v312;
                *(v308 - 1) = v311;
                *v308 = v314;
                v308[1] = v313;
                v308 += 4;
                v310 -= 4;
              }

              while (v310);
              if (v139 == v178)
              {
                goto LABEL_206;
              }

              goto LABEL_184;
            }
          }

          v178 = 0;
          v170 = 4;
LABEL_184:
          v179 = v139 - v178;
          v180 = (a5 + 16 * v178 + 32);
          do
          {
            v181 = *v180++;
            *&v168[2 * v170++] = v181;
            --v179;
          }

          while (v179);
          goto LABEL_206;
        }

LABEL_18:
        if (v9 <= 1)
        {
          if (!v9)
          {
            goto LABEL_128;
          }

          if (v9 != 1)
          {
            return result;
          }

LABEL_47:
          sub_1AF6DE920();
          v588 = v54;
          v589 = v55;
          LOBYTE(v590) = 2;
          v592 = 0;
          v56 = a2[4].n128_u8[0];
          v32 = (a4 + 32);
          ecs_stack_allocator_push_snapshot(*(a4 + 32));
          v57 = *(a5 + 16);
          v58 = *(a4 + 32);
          v59 = 16 * v57;
          if (v56)
          {
            v60 = ecs_stack_allocator_allocate(v58, v59 + 32, 8);
            *v60 = &type metadata for DebugInfoWireframePrimitive;
            v60[1] = &off_1F25604A8;
            v60[2] = &type metadata for DebugInfoColor;
            v60[3] = &off_1F2560488;
            if (v57)
            {
              if (v57 > 5 && ((v60 + 4) >= a5 + v59 + 32 || a5 + 32 >= &v60[v59 / 8 + 4]))
              {
                v61 = v57 & 0x7FFFFFFFFFFFFFFCLL;
                v62 = v57 & 0x7FFFFFFFFFFFFFFCLL | 2;
                v416 = v60 + 8;
                v417 = (a5 + 64);
                v418 = v57 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v420 = *(v417 - 2);
                  v419 = *(v417 - 1);
                  v422 = *v417;
                  v421 = v417[1];
                  v417 += 4;
                  *(v416 - 2) = v420;
                  *(v416 - 1) = v419;
                  *v416 = v422;
                  v416[1] = v421;
                  v416 += 4;
                  v418 -= 4;
                }

                while (v418);
                if (v57 == v61)
                {
                  goto LABEL_229;
                }
              }

              else
              {
                v61 = 0;
                v62 = 2;
              }

              v63 = v57 - v61;
              v64 = (a5 + 16 * v61 + 32);
              do
              {
                v65 = *v64++;
                *&v60[2 * v62++] = v65;
                --v63;
              }

              while (v63);
            }

            else
            {
              v62 = 2;
            }

LABEL_229:
            LOBYTE(v585[0]) = 1;
            sub_1AF63C898(v60, v62, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v588, v28);
            goto LABEL_232;
          }

          v102 = ecs_stack_allocator_allocate(v58, v59 + 64, 8);
          *v102 = &type metadata for DebugInfoWireframePrimitive;
          v102[1] = &off_1F25604A8;
          v102[2] = &type metadata for DebugInfoColor;
          v102[3] = &off_1F2560488;
          v102[4] = &type metadata for WorldTransform;
          v102[5] = &off_1F2529FC0;
          v102[6] = &type metadata for Beamed;
          v102[7] = &off_1F2529FA0;
          if (!v57)
          {
            v104 = 4;
LABEL_231:
            LOBYTE(v585[0]) = 1;
            sub_1AF63D8A8(v102, v104, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, &v588, v28, v569, v570, v571, v572);
LABEL_232:
            ecs_stack_allocator_pop_snapshot(*v32);
            sub_1AF6DE920();
            v585[0] = v210;
            v585[1] = v211;
            v586 = 2;
            v587 = 0;
            ecs_stack_allocator_push_snapshot(*v32);
            v212 = *(a5 + 16);
            v213 = *v32;
            v214 = 16 * v212;
            if (v56)
            {
              v215 = ecs_stack_allocator_allocate(v213, v214 + 32, 8);
              *v215 = &type metadata for DebugInfoWireframePrimitive;
              v215[1] = &off_1F25604A8;
              v215[2] = &type metadata for DebugInfoColor;
              v215[3] = &off_1F2560488;
              if (v212)
              {
                if (v212 > 5 && ((v215 + 4) >= a5 + v214 + 32 || a5 + 32 >= &v215[v214 / 8 + 4]))
                {
                  v216 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                  v217 = v212 & 0x7FFFFFFFFFFFFFFCLL | 2;
                  v423 = v215 + 8;
                  v424 = (a5 + 64);
                  v425 = v212 & 0x7FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v427 = *(v424 - 2);
                    v426 = *(v424 - 1);
                    v429 = *v424;
                    v428 = v424[1];
                    v424 += 4;
                    *(v423 - 2) = v427;
                    *(v423 - 1) = v426;
                    *v423 = v429;
                    v423[1] = v428;
                    v423 += 4;
                    v425 -= 4;
                  }

                  while (v425);
                  if (v212 == v216)
                  {
                    goto LABEL_248;
                  }
                }

                else
                {
                  v216 = 0;
                  v217 = 2;
                }

                v218 = v212 - v216;
                v219 = (a5 + 16 * v216 + 32);
                do
                {
                  v220 = *v219++;
                  *&v215[2 * v217++] = v220;
                  --v218;
                }

                while (v218);
              }

              else
              {
                v217 = 2;
              }

LABEL_248:
              LOBYTE(v582[0]) = 1;
              sub_1AF63C898(v215, v217, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v585, v28);
              goto LABEL_251;
            }

            v221 = ecs_stack_allocator_allocate(v213, v214 + 64, 8);
            *v221 = &type metadata for DebugInfoWireframePrimitive;
            v221[1] = &off_1F25604A8;
            v221[2] = &type metadata for DebugInfoColor;
            v221[3] = &off_1F2560488;
            v221[4] = &type metadata for WorldTransform;
            v221[5] = &off_1F2529FC0;
            v221[6] = &type metadata for Beamed;
            v221[7] = &off_1F2529FA0;
            if (!v212)
            {
              v223 = 4;
LABEL_250:
              LOBYTE(v582[0]) = 1;
              sub_1AF63D8A8(v221, v223, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v585, v28, v569, v570, v571, v572);
LABEL_251:
              ecs_stack_allocator_pop_snapshot(*v32);
              sub_1AF6DE920();
              v582[0] = v227;
              v582[1] = v228;
              v583 = 2;
              v584 = 0;
              ecs_stack_allocator_push_snapshot(*v32);
              v229 = *(a5 + 16);
              v230 = *v32;
              v231 = 16 * v229;
              if (v56)
              {
                v232 = ecs_stack_allocator_allocate(v230, v231 + 32, 8);
                *v232 = &type metadata for DebugInfoWireframePrimitive;
                v232[1] = &off_1F25604A8;
                v232[2] = &type metadata for DebugInfoColor;
                v232[3] = &off_1F2560488;
                if (v229)
                {
                  if (v229 > 5 && ((v232 + 4) >= a5 + v231 + 32 || a5 + 32 >= &v232[v231 / 8 + 4]))
                  {
                    v233 = v229 & 0x7FFFFFFFFFFFFFFCLL;
                    v234 = v229 & 0x7FFFFFFFFFFFFFFCLL | 2;
                    v430 = v232 + 8;
                    v431 = (a5 + 64);
                    v432 = v229 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v434 = *(v431 - 2);
                      v433 = *(v431 - 1);
                      v436 = *v431;
                      v435 = v431[1];
                      v431 += 4;
                      *(v430 - 2) = v434;
                      *(v430 - 1) = v433;
                      *v430 = v436;
                      v430[1] = v435;
                      v430 += 4;
                      v432 -= 4;
                    }

                    while (v432);
                    if (v229 == v233)
                    {
                      goto LABEL_267;
                    }
                  }

                  else
                  {
                    v233 = 0;
                    v234 = 2;
                  }

                  v235 = v229 - v233;
                  v236 = (a5 + 16 * v233 + 32);
                  do
                  {
                    v237 = *v236++;
                    *&v232[2 * v234++] = v237;
                    --v235;
                  }

                  while (v235);
                }

                else
                {
                  v234 = 2;
                }

LABEL_267:
                LOBYTE(v579[0]) = 1;
                sub_1AF63C898(v232, v234, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v582, v28);
                goto LABEL_270;
              }

              v238 = ecs_stack_allocator_allocate(v230, v231 + 64, 8);
              *v238 = &type metadata for DebugInfoWireframePrimitive;
              v238[1] = &off_1F25604A8;
              v238[2] = &type metadata for DebugInfoColor;
              v238[3] = &off_1F2560488;
              v238[4] = &type metadata for WorldTransform;
              v238[5] = &off_1F2529FC0;
              v238[6] = &type metadata for Beamed;
              v238[7] = &off_1F2529FA0;
              if (!v229)
              {
                v240 = 4;
LABEL_269:
                LOBYTE(v579[0]) = 1;
                sub_1AF63D8A8(v238, v240, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v582, v28, v569, v570, v571, v572);
LABEL_270:
                ecs_stack_allocator_pop_snapshot(*v32);
                sub_1AF6DE920();
                v579[0] = v244;
                v579[1] = v245;
                v580 = 2;
                v581 = 0;
                ecs_stack_allocator_push_snapshot(*v32);
                v246 = *(a5 + 16);
                v247 = *v32;
                v248 = 16 * v246;
                if (v56)
                {
                  v249 = ecs_stack_allocator_allocate(v247, v248 + 32, 8);
                  *v249 = &type metadata for DebugInfoWireframePrimitive;
                  v249[1] = &off_1F25604A8;
                  v249[2] = &type metadata for DebugInfoColor;
                  v249[3] = &off_1F2560488;
                  if (v246)
                  {
                    if (v246 > 5 && ((v249 + 4) >= a5 + v248 + 32 || a5 + 32 >= &v249[v248 / 8 + 4]))
                    {
                      v250 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      v251 = v246 & 0x7FFFFFFFFFFFFFFCLL | 2;
                      v437 = v249 + 8;
                      v438 = (a5 + 64);
                      v439 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v441 = *(v438 - 2);
                        v440 = *(v438 - 1);
                        v443 = *v438;
                        v442 = v438[1];
                        v438 += 4;
                        *(v437 - 2) = v441;
                        *(v437 - 1) = v440;
                        *v437 = v443;
                        v437[1] = v442;
                        v437 += 4;
                        v439 -= 4;
                      }

                      while (v439);
                      if (v246 == v250)
                      {
                        goto LABEL_286;
                      }
                    }

                    else
                    {
                      v250 = 0;
                      v251 = 2;
                    }

                    v252 = v246 - v250;
                    v253 = (a5 + 16 * v250 + 32);
                    do
                    {
                      v254 = *v253++;
                      *&v249[2 * v251++] = v254;
                      --v252;
                    }

                    while (v252);
                  }

                  else
                  {
                    v251 = 2;
                  }

LABEL_286:
                  LOBYTE(v576[0]) = 1;
                  sub_1AF63C898(v249, v251, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v579, v28);
                  goto LABEL_289;
                }

                v255 = ecs_stack_allocator_allocate(v247, v248 + 64, 8);
                *v255 = &type metadata for DebugInfoWireframePrimitive;
                v255[1] = &off_1F25604A8;
                v255[2] = &type metadata for DebugInfoColor;
                v255[3] = &off_1F2560488;
                v255[4] = &type metadata for WorldTransform;
                v255[5] = &off_1F2529FC0;
                v255[6] = &type metadata for Beamed;
                v255[7] = &off_1F2529FA0;
                if (!v246)
                {
                  v257 = 4;
LABEL_288:
                  LOBYTE(v576[0]) = 1;
                  sub_1AF63D8A8(v255, v257, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v579, v28, v569, v570, v571, v572);
LABEL_289:
                  ecs_stack_allocator_pop_snapshot(*v32);
                  sub_1AF6DE920();
                  v576[0] = v261;
                  v576[1] = v262;
                  v577 = 2;
                  v578 = 0;
                  ecs_stack_allocator_push_snapshot(*v32);
                  v263 = *(a5 + 16);
                  v264 = *v32;
                  v265 = 16 * v263;
                  if (v56)
                  {
                    v266 = ecs_stack_allocator_allocate(v264, v265 + 32, 8);
                    *v266 = &type metadata for DebugInfoWireframePrimitive;
                    v266[1] = &off_1F25604A8;
                    v266[2] = &type metadata for DebugInfoColor;
                    v266[3] = &off_1F2560488;
                    if (v263)
                    {
                      if (v263 > 5 && ((v266 + 4) >= a5 + v265 + 32 || a5 + 32 >= &v266[v265 / 8 + 4]))
                      {
                        v267 = v263 & 0x7FFFFFFFFFFFFFFCLL;
                        v268 = v263 & 0x7FFFFFFFFFFFFFFCLL | 2;
                        v444 = v266 + 8;
                        v445 = (a5 + 64);
                        v446 = v263 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v448 = *(v445 - 2);
                          v447 = *(v445 - 1);
                          v450 = *v445;
                          v449 = v445[1];
                          v445 += 4;
                          *(v444 - 2) = v448;
                          *(v444 - 1) = v447;
                          *v444 = v450;
                          v444[1] = v449;
                          v444 += 4;
                          v446 -= 4;
                        }

                        while (v446);
                        if (v263 == v267)
                        {
                          goto LABEL_305;
                        }
                      }

                      else
                      {
                        v267 = 0;
                        v268 = 2;
                      }

                      v269 = v263 - v267;
                      v270 = (a5 + 16 * v267 + 32);
                      do
                      {
                        v271 = *v270++;
                        *&v266[2 * v268++] = v271;
                        --v269;
                      }

                      while (v269);
                    }

                    else
                    {
                      v268 = 2;
                    }

LABEL_305:
                    LOBYTE(v573[0]) = 1;
                    sub_1AF63C898(v266, v268, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v576, v28);
                    goto LABEL_308;
                  }

                  v272 = ecs_stack_allocator_allocate(v264, v265 + 64, 8);
                  *v272 = &type metadata for DebugInfoWireframePrimitive;
                  v272[1] = &off_1F25604A8;
                  v272[2] = &type metadata for DebugInfoColor;
                  v272[3] = &off_1F2560488;
                  v272[4] = &type metadata for WorldTransform;
                  v272[5] = &off_1F2529FC0;
                  v272[6] = &type metadata for Beamed;
                  v272[7] = &off_1F2529FA0;
                  if (!v263)
                  {
                    v274 = 4;
LABEL_307:
                    LOBYTE(v573[0]) = 1;
                    sub_1AF63D8A8(v272, v274, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, a4, v576, v28, v569, v570, v571, v572);
LABEL_308:
                    ecs_stack_allocator_pop_snapshot(*v32);
                    sub_1AF6DE920();
                    v573[0] = v278;
                    v573[1] = v279;
                    v574 = 2;
                    v575 = 0;
                    ecs_stack_allocator_push_snapshot(*v32);
                    v280 = *(a5 + 16);
                    v281 = *v32;
                    v282 = 16 * v280;
                    if (v56)
                    {
                      v36 = ecs_stack_allocator_allocate(v281, v282 + 32, 8);
                      *v36 = &type metadata for DebugInfoWireframePrimitive;
                      v36[1] = &off_1F25604A8;
                      v36[2] = &type metadata for DebugInfoColor;
                      v36[3] = &off_1F2560488;
                      if (v280)
                      {
                        if (v280 > 5 && ((v36 + 4) >= a5 + v282 + 32 || a5 + 32 >= &v36[v282 / 8 + 4]))
                        {
                          v283 = v280 & 0x7FFFFFFFFFFFFFFCLL;
                          v38 = v280 & 0x7FFFFFFFFFFFFFFCLL | 2;
                          v451 = v36 + 8;
                          v452 = (a5 + 64);
                          v453 = v280 & 0x7FFFFFFFFFFFFFFCLL;
                          do
                          {
                            v455 = *(v452 - 2);
                            v454 = *(v452 - 1);
                            v457 = *v452;
                            v456 = v452[1];
                            v452 += 4;
                            *(v451 - 2) = v455;
                            *(v451 - 1) = v454;
                            *v451 = v457;
                            v451[1] = v456;
                            v451 += 4;
                            v453 -= 4;
                          }

                          while (v453);
                          if (v280 == v283)
                          {
                            goto LABEL_324;
                          }
                        }

                        else
                        {
                          v283 = 0;
                          v38 = 2;
                        }

                        v284 = v280 - v283;
                        v285 = (a5 + 16 * v283 + 32);
                        do
                        {
                          v286 = *v285++;
                          *&v36[2 * v38++] = v286;
                          --v284;
                        }

                        while (v284);
                      }

                      else
                      {
                        v38 = 2;
                      }

LABEL_324:
                      v154 = MEMORY[0x1E69E7CC0];
                      v155 = v573;
                      goto LABEL_159;
                    }

                    v168 = ecs_stack_allocator_allocate(v281, v282 + 64, 8);
                    *v168 = &type metadata for DebugInfoWireframePrimitive;
                    v168[1] = &off_1F25604A8;
                    v168[2] = &type metadata for DebugInfoColor;
                    v168[3] = &off_1F2560488;
                    v168[4] = &type metadata for WorldTransform;
                    v168[5] = &off_1F2529FC0;
                    v168[6] = &type metadata for Beamed;
                    v168[7] = &off_1F2529FA0;
                    if (!v280)
                    {
                      v170 = 4;
LABEL_326:
                      v194 = MEMORY[0x1E69E7CC0];
                      v195 = v573;
                      goto LABEL_207;
                    }

                    if (v280 > 0x13)
                    {
                      v287 = 0;
                      v355 = 2 * (v280 - 1);
                      v170 = 4;
                      if (&v168[v355 + 8] < v168 + 8 || &v168[v355 + 9] < v168 + 9 || (v280 - 1) >> 60)
                      {
                        goto LABEL_320;
                      }

                      if ((v168 + 8) >= a5 + v282 + 32 || a5 + 32 >= &v168[v282 / 8 + 8])
                      {
                        v287 = v280 & 0x1FFFFFFFFFFFFFFCLL;
                        v170 = (v280 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                        v356 = v168 + 12;
                        v357 = (a5 + 64);
                        v358 = v280 & 0x1FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v360 = *(v357 - 2);
                          v359 = *(v357 - 1);
                          v362 = *v357;
                          v361 = v357[1];
                          v357 += 4;
                          *(v356 - 2) = v360;
                          *(v356 - 1) = v359;
                          *v356 = v362;
                          v356[1] = v361;
                          v356 += 4;
                          v358 -= 4;
                        }

                        while (v358);
                        if (v280 == v287)
                        {
                          goto LABEL_326;
                        }

                        goto LABEL_320;
                      }
                    }

                    v287 = 0;
                    v170 = 4;
LABEL_320:
                    v288 = v280 - v287;
                    v289 = (a5 + 16 * v287 + 32);
                    do
                    {
                      v290 = *v289++;
                      *&v168[2 * v170++] = v290;
                      --v288;
                    }

                    while (v288);
                    goto LABEL_326;
                  }

                  if (v263 > 0x13)
                  {
                    v273 = 0;
                    v347 = 2 * (v263 - 1);
                    v274 = 4;
                    if (&v272[v347 + 8] < v272 + 8 || &v272[v347 + 9] < v272 + 9 || (v263 - 1) >> 60)
                    {
                      goto LABEL_301;
                    }

                    if ((v272 + 8) >= a5 + v265 + 32 || a5 + 32 >= &v272[v265 / 8 + 8])
                    {
                      v273 = v263 & 0x1FFFFFFFFFFFFFFCLL;
                      v274 = (v263 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                      v348 = v272 + 12;
                      v349 = (a5 + 64);
                      v350 = v263 & 0x1FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v352 = *(v349 - 2);
                        v351 = *(v349 - 1);
                        v354 = *v349;
                        v353 = v349[1];
                        v349 += 4;
                        *(v348 - 2) = v352;
                        *(v348 - 1) = v351;
                        *v348 = v354;
                        v348[1] = v353;
                        v348 += 4;
                        v350 -= 4;
                      }

                      while (v350);
                      if (v263 == v273)
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_301;
                    }
                  }

                  v273 = 0;
                  v274 = 4;
LABEL_301:
                  v275 = v263 - v273;
                  v276 = (a5 + 16 * v273 + 32);
                  do
                  {
                    v277 = *v276++;
                    *&v272[2 * v274++] = v277;
                    --v275;
                  }

                  while (v275);
                  goto LABEL_307;
                }

                if (v246 > 0x13)
                {
                  v256 = 0;
                  v339 = 2 * (v246 - 1);
                  v257 = 4;
                  if (&v255[v339 + 8] < v255 + 8 || &v255[v339 + 9] < v255 + 9 || (v246 - 1) >> 60)
                  {
                    goto LABEL_282;
                  }

                  if ((v255 + 8) >= a5 + v248 + 32 || a5 + 32 >= &v255[v248 / 8 + 8])
                  {
                    v256 = v246 & 0x1FFFFFFFFFFFFFFCLL;
                    v257 = (v246 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                    v340 = v255 + 12;
                    v341 = (a5 + 64);
                    v342 = v246 & 0x1FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v344 = *(v341 - 2);
                      v343 = *(v341 - 1);
                      v346 = *v341;
                      v345 = v341[1];
                      v341 += 4;
                      *(v340 - 2) = v344;
                      *(v340 - 1) = v343;
                      *v340 = v346;
                      v340[1] = v345;
                      v340 += 4;
                      v342 -= 4;
                    }

                    while (v342);
                    if (v246 == v256)
                    {
                      goto LABEL_288;
                    }

                    goto LABEL_282;
                  }
                }

                v256 = 0;
                v257 = 4;
LABEL_282:
                v258 = v246 - v256;
                v259 = (a5 + 16 * v256 + 32);
                do
                {
                  v260 = *v259++;
                  *&v255[2 * v257++] = v260;
                  --v258;
                }

                while (v258);
                goto LABEL_288;
              }

              if (v229 > 0x13)
              {
                v239 = 0;
                v331 = 2 * (v229 - 1);
                v240 = 4;
                if (&v238[v331 + 8] < v238 + 8 || &v238[v331 + 9] < v238 + 9 || (v229 - 1) >> 60)
                {
                  goto LABEL_263;
                }

                if ((v238 + 8) >= a5 + v231 + 32 || a5 + 32 >= &v238[v231 / 8 + 8])
                {
                  v239 = v229 & 0x1FFFFFFFFFFFFFFCLL;
                  v240 = (v229 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                  v332 = v238 + 12;
                  v333 = (a5 + 64);
                  v334 = v229 & 0x1FFFFFFFFFFFFFFCLL;
                  do
                  {
                    v336 = *(v333 - 2);
                    v335 = *(v333 - 1);
                    v338 = *v333;
                    v337 = v333[1];
                    v333 += 4;
                    *(v332 - 2) = v336;
                    *(v332 - 1) = v335;
                    *v332 = v338;
                    v332[1] = v337;
                    v332 += 4;
                    v334 -= 4;
                  }

                  while (v334);
                  if (v229 == v239)
                  {
                    goto LABEL_269;
                  }

                  goto LABEL_263;
                }
              }

              v239 = 0;
              v240 = 4;
LABEL_263:
              v241 = v229 - v239;
              v242 = (a5 + 16 * v239 + 32);
              do
              {
                v243 = *v242++;
                *&v238[2 * v240++] = v243;
                --v241;
              }

              while (v241);
              goto LABEL_269;
            }

            if (v212 > 0x13)
            {
              v222 = 0;
              v323 = 2 * (v212 - 1);
              v223 = 4;
              if (&v221[v323 + 8] < v221 + 8 || &v221[v323 + 9] < v221 + 9 || (v212 - 1) >> 60)
              {
                goto LABEL_244;
              }

              if ((v221 + 8) >= a5 + v214 + 32 || a5 + 32 >= &v221[v214 / 8 + 8])
              {
                v222 = v212 & 0x1FFFFFFFFFFFFFFCLL;
                v223 = (v212 & 0x1FFFFFFFFFFFFFFCLL) + 4;
                v324 = v221 + 12;
                v325 = (a5 + 64);
                v326 = v212 & 0x1FFFFFFFFFFFFFFCLL;
                do
                {
                  v328 = *(v325 - 2);
                  v327 = *(v325 - 1);
                  v330 = *v325;
                  v329 = v325[1];
                  v325 += 4;
                  *(v324 - 2) = v328;
                  *(v324 - 1) = v327;
                  *v324 = v330;
                  v324[1] = v329;
                  v324 += 4;
                  v326 -= 4;
                }

                while (v326);
                if (v212 == v222)
                {
                  goto LABEL_250;
                }

                goto LABEL_244;
              }
            }

            v222 = 0;
            v223 = 4;
LABEL_244:
            v224 = v212 - v222;
            v225 = (a5 + 16 * v222 + 32);
            do
            {
              v226 = *v225++;
              *&v221[2 * v223++] = v226;
              --v224;
            }

            while (v224);
            goto LABEL_250;
          }

          if (v57 > 0x13)
          {
            v103 = 0;
            v315 = 2 * (v57 - 1);
            v104 = 4;
            if (&v102[v315 + 8] < v102 + 8 || &v102[v315 + 9] < v102 + 9 || (v57 - 1) >> 60)
            {
              goto LABEL_98;
            }

            if ((v102 + 8) >= a5 + v59 + 32 || a5 + 32 >= &v102[v59 / 8 + 8])
            {
              v103 = v57 & 0x1FFFFFFFFFFFFFFCLL;
              v104 = (v57 & 0x1FFFFFFFFFFFFFFCLL) + 4;
              v316 = v102 + 12;
              v317 = (a5 + 64);
              v318 = v57 & 0x1FFFFFFFFFFFFFFCLL;
              do
              {
                v320 = *(v317 - 2);
                v319 = *(v317 - 1);
                v322 = *v317;
                v321 = v317[1];
                v317 += 4;
                *(v316 - 2) = v320;
                *(v316 - 1) = v319;
                *v316 = v322;
                v316[1] = v321;
                v316 += 4;
                v318 -= 4;
              }

              while (v318);
              if (v57 == v103)
              {
                goto LABEL_231;
              }

              goto LABEL_98;
            }
          }

          v103 = 0;
          v104 = 4;
LABEL_98:
          v105 = v57 - v103;
          v106 = (a5 + 16 * v103 + 32);
          do
          {
            v107 = *v106++;
            *&v102[2 * v104++] = v107;
            --v105;
          }

          while (v105);
          goto LABEL_231;
        }

        if (v9 != 2)
        {
          if (v9 != 5)
          {
            return result;
          }

          goto LABEL_47;
        }

        v588 = 0u;
        *&v589 = 0x400000003F000000;
        v592 = 5;
        v94 = a2[4].n128_u8[0];
        v32 = (a4 + 32);
        ecs_stack_allocator_push_snapshot(*(a4 + 32));
        v95 = *(a5 + 16);
        v96 = *(a4 + 32);
        v97 = 16 * v95;
        if (v94)
        {
          v36 = ecs_stack_allocator_allocate(v96, v97 + 32, 8);
          *v36 = &type metadata for DebugInfoWireframePrimitive;
          v36[1] = &off_1F25604A8;
          v36[2] = &type metadata for DebugInfoColor;
          v36[3] = &off_1F2560488;
          if (v95)
          {
            if (v95 > 5 && ((v36 + 4) >= a5 + v97 + 32 || a5 + 32 >= &v36[v97 / 8 + 4]))
            {
              v98 = v95 & 0x7FFFFFFFFFFFFFFCLL;
              v38 = v95 & 0x7FFFFFFFFFFFFFFCLL | 2;
              v527 = v36 + 8;
              v528 = (a5 + 64);
              v529 = v95 & 0x7FFFFFFFFFFFFFFCLL;
              do
              {
                v531 = *(v528 - 2);
                v530 = *(v528 - 1);
                v533 = *v528;
                v532 = v528[1];
                v528 += 4;
                *(v527 - 2) = v531;
                *(v527 - 1) = v530;
                *v527 = v533;
                v527[1] = v532;
                v527 += 4;
                v529 -= 4;
              }

              while (v529);
              if (v95 == v98)
              {
                goto LABEL_158;
              }
            }

            else
            {
              v98 = 0;
              v38 = 2;
            }

            v99 = v95 - v98;
            v100 = (a5 + 16 * v98 + 32);
            do
            {
              v101 = *v100++;
              *&v36[2 * v38++] = v101;
              --v99;
            }

            while (v99);
            goto LABEL_158;
          }

          goto LABEL_157;
        }

        v168 = ecs_stack_allocator_allocate(v96, v97 + 64, 8);
        *v168 = &type metadata for DebugInfoWireframePrimitive;
        v168[1] = &off_1F25604A8;
        v168[2] = &type metadata for DebugInfoColor;
        v168[3] = &off_1F2560488;
        v168[4] = &type metadata for WorldTransform;
        v168[5] = &off_1F2529FC0;
        v168[6] = &type metadata for Beamed;
        v168[7] = &off_1F2529FA0;
        if (!v95)
        {
          goto LABEL_205;
        }

        if (v95 > 0x13)
        {
          v182 = 0;
          v408 = 2 * (v95 - 1);
          v170 = 4;
          if (&v168[v408 + 8] < v168 + 8 || &v168[v408 + 9] < v168 + 9 || (v95 - 1) >> 60)
          {
            goto LABEL_190;
          }

          if ((v168 + 8) >= a5 + v97 + 32 || a5 + 32 >= &v168[v97 / 8 + 8])
          {
            v182 = v95 & 0x1FFFFFFFFFFFFFFCLL;
            v170 = (v95 & 0x1FFFFFFFFFFFFFFCLL) + 4;
            v409 = v168 + 12;
            v410 = (a5 + 64);
            v411 = v95 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v413 = *(v410 - 2);
              v412 = *(v410 - 1);
              v415 = *v410;
              v414 = v410[1];
              v410 += 4;
              *(v409 - 2) = v413;
              *(v409 - 1) = v412;
              *v409 = v415;
              v409[1] = v414;
              v409 += 4;
              v411 -= 4;
            }

            while (v411);
            if (v95 == v182)
            {
              goto LABEL_206;
            }

            goto LABEL_190;
          }
        }

        v182 = 0;
        v170 = 4;
LABEL_190:
        v183 = v95 - v182;
        v184 = (a5 + 16 * v182 + 32);
        do
        {
          v185 = *v184++;
          *&v168[2 * v170++] = v185;
          --v183;
        }

        while (v183);
        goto LABEL_206;
      }
    }

LABEL_166:
    v165 = v160 - v163;
    v166 = (a5 + 16 * v163 + 32);
    do
    {
      v167 = *v166++;
      *&v162[2 * v164++] = v167;
      --v165;
    }

    while (v165);
    goto LABEL_211;
  }

LABEL_128:
  v588 = xmmword_1AFE201A0;
  v589 = xmmword_1AFE9BBB0;
  LOBYTE(v590) = 2;
  v592 = 0;
  v130 = a2[4].n128_u8[0];
  v32 = (a4 + 32);
  ecs_stack_allocator_push_snapshot(*(a4 + 32));
  v131 = *(a5 + 16);
  v132 = *(a4 + 32);
  v133 = 16 * v131;
  if ((v130 & 1) == 0)
  {
    v168 = ecs_stack_allocator_allocate(v132, v133 + 64, 8);
    *v168 = &type metadata for DebugInfoWireframePrimitive;
    v168[1] = &off_1F25604A8;
    v168[2] = &type metadata for DebugInfoColor;
    v168[3] = &off_1F2560488;
    v168[4] = &type metadata for WorldTransform;
    v168[5] = &off_1F2529FC0;
    v168[6] = &type metadata for Beamed;
    v168[7] = &off_1F2529FA0;
    if (v131)
    {
      if (v131 > 0x13)
      {
        v174 = 0;
        v299 = 2 * (v131 - 1);
        v170 = 4;
        if (&v168[v299 + 8] < v168 + 8 || &v168[v299 + 9] < v168 + 9 || (v131 - 1) >> 60)
        {
          goto LABEL_178;
        }

        if ((v168 + 8) >= a5 + v133 + 32 || a5 + 32 >= &v168[v133 / 8 + 8])
        {
          v174 = v131 & 0x1FFFFFFFFFFFFFFCLL;
          v170 = (v131 & 0x1FFFFFFFFFFFFFFCLL) + 4;
          v300 = v168 + 12;
          v301 = (a5 + 64);
          v302 = v131 & 0x1FFFFFFFFFFFFFFCLL;
          do
          {
            v304 = *(v301 - 2);
            v303 = *(v301 - 1);
            v306 = *v301;
            v305 = v301[1];
            v301 += 4;
            *(v300 - 2) = v304;
            *(v300 - 1) = v303;
            *v300 = v306;
            v300[1] = v305;
            v300 += 4;
            v302 -= 4;
          }

          while (v302);
          if (v131 == v174)
          {
            goto LABEL_206;
          }

          goto LABEL_178;
        }
      }

      v174 = 0;
      v170 = 4;
LABEL_178:
      v175 = v131 - v174;
      v176 = (a5 + 16 * v174 + 32);
      do
      {
        v177 = *v176++;
        *&v168[2 * v170++] = v177;
        --v175;
      }

      while (v175);
      goto LABEL_206;
    }

LABEL_205:
    v170 = 4;
LABEL_206:
    LOBYTE(v585[0]) = 1;
    v194 = MEMORY[0x1E69E7CC0];
    v195 = &v588;
LABEL_207:
    sub_1AF63D8A8(v168, v170, v194, 1, 0x100000000uLL, a4, v195, v28, v569, v570, v571, v572);
    return ecs_stack_allocator_pop_snapshot(*v32);
  }

  v36 = ecs_stack_allocator_allocate(v132, v133 + 32, 8);
  *v36 = &type metadata for DebugInfoWireframePrimitive;
  v36[1] = &off_1F25604A8;
  v36[2] = &type metadata for DebugInfoColor;
  v36[3] = &off_1F2560488;
  if (!v131)
  {
    goto LABEL_157;
  }

  if (v131 > 5 && ((v36 + 4) >= a5 + v133 + 32 || a5 + 32 >= &v36[v133 / 8 + 4]))
  {
    v134 = v131 & 0x7FFFFFFFFFFFFFFCLL;
    v38 = v131 & 0x7FFFFFFFFFFFFFFCLL | 2;
    v394 = v36 + 8;
    v395 = (a5 + 64);
    v396 = v131 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v398 = *(v395 - 2);
      v397 = *(v395 - 1);
      v400 = *v395;
      v399 = v395[1];
      v395 += 4;
      *(v394 - 2) = v398;
      *(v394 - 1) = v397;
      *v394 = v400;
      v394[1] = v399;
      v394 += 4;
      v396 -= 4;
    }

    while (v396);
    if (v131 == v134)
    {
      goto LABEL_158;
    }
  }

  else
  {
    v134 = 0;
    v38 = 2;
  }

  v135 = v131 - v134;
  v136 = (a5 + 16 * v134 + 32);
  do
  {
    v137 = *v136++;
    *&v36[2 * v38++] = v137;
    --v135;
  }

  while (v135);
LABEL_158:
  LOBYTE(v585[0]) = 1;
  v154 = MEMORY[0x1E69E7CC0];
  v155 = &v588;
LABEL_159:
  sub_1AF63C898(v36, v38, v154, 1, 0x100000000uLL, a4, v155, v28);
  return ecs_stack_allocator_pop_snapshot(*v32);
}

double sub_1AFB4D3D8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 257;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 12) = _D0;
  *(a1 + 20) = 0;
  *(a1 + 24) = xmmword_1AFE9BBC0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 1;
  *(a1 + 64) = 1065353216;
  *(a1 + 68) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = xmmword_1AFE208C0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0x3F80000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 132) = 0xFFFFFFFFLL;
  return result;
}

unint64_t sub_1AFB4D500(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6874676E65727473;
      break;
    case 2:
      result = 0x6E696E65706D6164;
      break;
    case 3:
      result = 2003790950;
      break;
    case 4:
      result = 0x6F6D416573696F6ELL;
      break;
    case 5:
      result = 0x6565536573696F6ELL;
      break;
    case 6:
      result = 0x5073746365666661;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x73726579616CLL;
      break;
    case 9:
      result = 0x6F69746365726964;
      break;
    case 10:
      result = 0x66664F6C6C6166;
      break;
    case 11:
      result = 0x5066664F6C6C6166;
      break;
    case 12:
    case 13:
      result = 0x5266664F6C6C6166;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x65727574786574;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1AFB4D8B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB50548(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1AFB4D8E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AFB4D500(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFB4D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFB50548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB4D95C(uint64_t a1)
{
  v2 = sub_1AFB53F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4D998(uint64_t a1)
{
  v2 = sub_1AFB53F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4D9D4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6465657073;
    v7 = 0x746E65747865;
    if (a1 != 10)
    {
      v7 = 0x6C61636F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4566666F6C6C6166;
    v9 = 0x65727574786574;
    if (a1 != 7)
    {
      v9 = 0x657669746361;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1684957547;
    v2 = 0x6F6D416573696F6ELL;
    v3 = 0x6565536573696F6ELL;
    if (a1 != 4)
    {
      v3 = 0x79726F6765746163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6874676E65727473;
    if (a1 != 1)
    {
      v4 = 0x6E696E65706D6164;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

__n128 sub_1AFB4DB5C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFB50C60(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AFB4DBC0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1AFDFEE28();
  }

  return v12 & 1;
}

uint64_t sub_1AFB4DC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1AFDFF288();
  a3(v5);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB4DCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1AFDFD038();
}

uint64_t sub_1AFB4DD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1AFDFF288();
  a4(v6);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFB4DDC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB504FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AFB4DDF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB4D9D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFB4DE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFB504FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB4DE68(uint64_t a1)
{
  v2 = sub_1AFB51804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4DEA4(uint64_t a1)
{
  v2 = sub_1AFB51804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4DEE0(void *a1)
{
  v3 = v1;
  sub_1AFB53EDC(0, &qword_1EB642B38, sub_1AFB51804, &type metadata for ForceField.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB51804();
  sub_1AFDFF3F8();
  v15 = *(v3 + 8);
  v14 = *(v3 + 9);
  v11 = *(v3 + 80);
  LOBYTE(v12) = 0;
  sub_1AFDFE8F8();
  if (!v2)
  {
    LOBYTE(v12) = 11;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 1;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 4;
    sub_1AFDFE998();
    LOBYTE(v12) = 5;
    sub_1AFDFE998();
    LOBYTE(v12) = 6;
    sub_1AFDFE8E8();
    *&v12 = *(v3 + 132);
    v13 = 7;
    sub_1AF480018();
    sub_1AFDFE918();
    LOBYTE(v12) = 8;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 9;
    sub_1AFDFE8E8();
    v12 = v11;
    v13 = 10;
    sub_1AFB53EDC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AFB518AC(&qword_1ED72F758, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v9, v6);
}

__n128 sub_1AFB4E29C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFB505E0(a2, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 124) = *(v9 + 12);
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AFB4E310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB50474();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_1AFB4E360(uint64_t a1)
{
  v2 = *(v1 + 32);
  v17[0] = *(v1 + 16);
  v17[1] = v2;
  v18 = *(v1 + 48);
  sub_1AF6B06C0(a1, v17, 0x200000000, &v3);
  if (v3)
  {
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    v11 = v4;
    v12 = v5;
    v10 = v3;
    sub_1AFD06C54(&v10);
    sub_1AFB53B70(&v3, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

void sub_1AFB4E438(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v5 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v4 + 40));
  sub_1AF6B1714(a1, v3);

  sub_1AF6B1B20(a1, v5, v3);
  v6 = *(v4 + 40);

  os_unfair_lock_unlock(v6);
}

uint64_t sub_1AFB4E514(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6573696F6ELL;
    v7 = 0x6E656C7562727574;
    if (a1 != 10)
    {
      v7 = 0x676E69727073;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73726579616CLL;
    v9 = 0x65727574786574;
    if (a1 != 7)
    {
      v9 = 0x7261656E696CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C6169646172;
    v2 = 0x636974656E67616DLL;
    v3 = 0x63696E6F6D726168;
    if (a1 != 4)
    {
      v3 = 1734439524;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1684957559;
    if (a1 != 1)
    {
      v4 = 0x786574726F76;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1AFB4E66C@<D0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.4S, #1.0 }

  *a1 = _Q0;
  *(a1 + 16) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 32) = result;
  *(a1 + 40) = 255;
  return result;
}

unint64_t sub_1AFB4E6E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB50594(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AFB4E718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB4E514(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFB4E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFB50594(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB4E788(uint64_t a1)
{
  v2 = sub_1AFB519B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB4E7C4(uint64_t a1)
{
  v2 = sub_1AFB519B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB4E800(void *a1)
{
  v3 = v1;
  sub_1AFB53EDC(0, &qword_1EB642B50, sub_1AFB519B0, &type metadata for ParticleForceField.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFB519B0();
  sub_1AFDFF3F8();
  v20 = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v19 = 2;
    sub_1AFDFE8E8();
    v18 = 3;
    sub_1AFDFE8E8();
    v17 = 4;
    sub_1AFDFE8E8();
    v16 = 5;
    sub_1AFDFE8E8();
    v12 = *(v3 + 40);
    v15 = 6;
    sub_1AFA08840();
    sub_1AFDFE918();
    v14 = 7;
    sub_1AFDFE8E8();
    v13 = 8;
    sub_1AFDFE8E8();
    v11[11] = 9;
    sub_1AFDFE8E8();
    v11[10] = 10;
    sub_1AFDFE8E8();
    v11[9] = 11;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v9, v6);
}

double sub_1AFB4EADC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFB51250(a2, &v6);
  if (!v2)
  {
    v5 = *v7;
    *a1 = v6;
    a1[1] = v5;
    result = *&v7[12];
    *(a1 + 28) = *&v7[12];
  }

  return result;
}

void sub_1AFB4EB3C(uint64_t a1, float32x4_t a2)
{
  v2 = a2.i64[0];
  v3 = a2.f32[2];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  if (v6 == 1 && a2.f32[2] < 0.0 || v6 == 2 && a2.f32[2] > 0.0)
  {
    return;
  }

  if (v4 <= 1)
  {
    v15 = 1.0;
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_39;
      }

      v16 = fabsf(*&v2);
      v17 = 0.0;
      v18 = 0.0;
      v34 = *(a1 + 80);
      if (*&v8 >= v16)
      {
        v32 = HIDWORD(v2);
        v19 = powf(v16 / *&v8, v7);
        HIDWORD(v2) = v32;
        v8 = v34;
        v18 = 1.0 - v19;
      }

      v20 = fabsf(*(&v2 + 1));
      if (*(&v8 + 1) >= v20)
      {
        v21 = powf(v20 / *(&v8 + 1), v7);
        DWORD2(v8) = DWORD2(v34);
        v17 = 1.0 - v21;
      }

      v22 = fabsf(v3);
      v23 = 0.0;
      if (*(&v8 + 2) >= v22)
      {
        v23 = 1.0 - powf(v22 / *(&v8 + 2), v7);
      }

      if (v17 >= v18)
      {
        v15 = v18;
      }

      else
      {
        v15 = v17;
      }

      if (v23 < v15)
      {
        v15 = v23;
        if (v5 != 1)
        {
          return;
        }

        goto LABEL_31;
      }
    }

LABEL_30:
    if (v5 != 1)
    {
      return;
    }

    goto LABEL_31;
  }

  if (v4 == 2)
  {
    v24 = vmulq_f32(a2, a2);
    v25 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
    v15 = 0.0;
    if (*(&v8 + 2) >= v25)
    {
      v15 = 1.0 - powf(v25 / *(&v8 + 2), *(a1 + 64));
    }

    goto LABEL_30;
  }

  if (v4 == 3)
  {
    v9 = fabsf(a2.f32[2]);
    LODWORD(v10) = *(a1 + 88);
    if (*(&v8 + 2) < v9)
    {
      return;
    }

    v30 = *a2.f32;
    v33 = *(a1 + 80);
    v11 = 1.0 - powf(v9 / *(&v8 + 2), v7);
    if (v11 == 0.0)
    {
      return;
    }

    v12 = (v9 * *&v33) / fmaxf(v10, 0.001);
    v13 = sqrtf(vaddv_f32(vmul_f32(v30, v30)));
    v14 = 0.0;
    if (v12 >= v13)
    {
      v14 = 1.0 - powf(v13 / v12, v7);
    }

    v15 = v11 * v14;
    if (v5 != 1)
    {
      return;
    }

LABEL_31:
    ceilf(v15);
    return;
  }

  if (v4 != 4)
  {
LABEL_39:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v26 = fabsf(a2.f32[2]);
  if (*(&v8 + 2) >= v26)
  {
    v31 = *a2.f32;
    v35 = *(a1 + 80);
    v27 = 1.0 - powf(v26 / *(&v8 + 2), v7);
    if (v27 != 0.0)
    {
      v28 = sqrtf(vaddv_f32(vmul_f32(v31, v31)));
      v29 = 0.0;
      if (*&v35 >= v28)
      {
        v29 = 1.0 - powf(v28 / *&v35, v7);
      }

      v15 = v27 * v29;
      if (v5 == 1)
      {
        goto LABEL_31;
      }
    }
  }
}

void sub_1AFB4EE18(void *a1, __int128 *a2, void *a3, uint64_t a4, float a5, float32_t a6, int32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11, float32x4_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17, float a18, float a19)
{
  v111 = *MEMORY[0x1E69E9840];
  v25 = a1[11];
  v26 = a1[12];
  v27 = a1[13];
  v28 = a1[2];
  v29 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v25, v26, v27, v28);
  v30 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v25, v26, v27, v28);
  v31 = sub_1AF9C5EE8();
  v33 = a1[6];
  v34 = a1[7];
  v35 = v34 - v33;
  if (v34 != v33)
  {
    v36 = v32;
    v90 = vaddq_f32(a8, a9);
    v88 = vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL);
    v87 = vnegq_f32(a7);
    v37 = &v31[4 * v33];
    v38 = 16 * v33;
    v39 = &v30[v38];
    for (i = &v29[v38]; ; ++i)
    {
      v44 = a2[7];
      v109 = a2[6];
      v110[0] = v44;
      *(v110 + 12) = *(a2 + 124);
      v45 = a2[3];
      v105 = a2[2];
      v106 = v45;
      v46 = a2[5];
      v107 = a2[4];
      v108 = v46;
      v47 = a2[1];
      v103 = *a2;
      v104 = v47;
      v48 = 1.0;
      if ((v36 & 1) == 0)
      {
        v48 = *v37;
      }

      v95 = v48;
      v49 = *i;
      v94 = *v39;
      v50 = v103;
      v51 = *(&v103 + 3);
      v52 = *(&v104 + 1);
      v53 = *&v110[0];
      v54 = *(&v103 + 3);
      if (*(&v104 + 1) > 0.0)
      {
        v55 = a3[1];
        v56 = a3[2] ^ *a3;
        v57 = a3[3] ^ v55;
        *a3 ^= v57;
        a3[1] = v56 ^ v55;
        a3[2] = v56 ^ (v55 << 17);
        a3[3] = __ROR8__(v57, 19);
        v58 = vcvts_n_f32_u64((9 * ((((5 * v55) >> 32) >> 25) | (640 * v55))) & 0xFFFFFFLL, 0x18uLL);
        v54 = v51 + (v52 * ((v58 + v58) + -1.0));
      }

      v59 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a17, a12, v49, 2), a11, *v49.f32, 1), a10, v49.f32[0]);
      v96 = v49;
      v98 = v59;
      v59.i32[3] = a9.i32[3];
      v60 = v54 * a5;
      sub_1AFB4EB3C(&v103, v59);
      v63 = v60 * v61;
      v41 = 0uLL;
      if ((v60 * v61) == 0.0)
      {
        goto LABEL_6;
      }

      v64 = v63 * a19;
      if (v50 <= 4)
      {
        if (v50 > 2)
        {
          v70 = 0.0;
          if (*&v53 >= 0.0)
          {
            v70 = *&v53;
          }

          v102 = 0uLL;
          v99 = v63 * a19;
          v71 = srdnoise3(&v102, ((1.25 / (v70 + 0.083333)) + -1.0) * v96.f32[0], vmuls_lane_f32((1.25 / (v70 + 0.083333)) + -1.0, *v96.f32, 1), vmuls_lane_f32((1.25 / (v70 + 0.083333)) + -1.0, v96, 2), *(&v53 + 1) * a18);
          *v41.f32 = vmul_n_f32(vmul_n_f32(*v102.f32, v71), v99);
          v42 = v99 * vmuls_lane_f32(v71, v102, 2);
          if (v50 == 4)
          {
            v72 = vmulq_f32(v94, v94);
            v72.f32[0] = sqrtf(v72.f32[2] + vaddv_f32(*v72.f32)) * v95;
            *v41.f32 = vmul_n_f32(*v41.f32, v72.f32[0]);
            v42 = v72.f32[0] * v42;
          }
        }

        else
        {
          v65 = v95 * v64;
          if (v50)
          {
            if (v50 == 1)
            {
              v66 = vsubq_f32(v96, v90);
              v67 = vsub_f32(*v96.f32, *v90.f32);
              v68 = v65 / fmaxf(sqrtf(vmuls_lane_f32(v66.f32[2], v66, 2) + vaddv_f32(vmul_f32(v67, v67))), 0.00001);
              *v41.f32 = vmul_n_f32(v67, v68);
              v42 = vmuls_lane_f32(v68, v66, 2);
            }

            else
            {
              if (v50 != 2)
              {
                goto LABEL_39;
              }

              v77 = vsubq_f32(v96, v90);
              v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), v87), v77, v88);
              v77.i32[0] = vextq_s8(v78, v78, 8uLL).u32[0];
              v77.i32[1] = v78.i32[0];
              *v41.f32 = vmul_n_f32(*v77.f32, v64);
              v42 = vmuls_lane_f32(v64, *v78.i8, 1);
            }
          }

          else
          {
            v41.i64[0] = vmulq_n_f32(a7, v65).u64[0];
            v42 = *&a7.i32[2] * v65;
          }
        }

        goto LABEL_5;
      }

      if (v50 <= 6)
      {
        v73 = vsubq_f32(v96, v90);
        if (v50 == 5)
        {
          v74 = vsub_f32(*v96.f32, *v90.f32);
          v73.f32[0] = sqrtf(vmuls_lane_f32(v73.f32[2], v73, 2) + vaddv_f32(vmul_f32(v74, v74)));
          *v41.f32 = vmul_n_f32(vmul_n_f32(vmul_n_f32(vsub_f32(0, v74), v73.f32[0]), v95), v64);
          v42 = (((0.0 - v73.f32[2]) * v73.f32[0]) * v95) * v64;
        }

        else
        {
          v82 = vmlaq_f32(vmulq_f32(v88, vnegq_f32(v94)), a7, vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL));
          v83 = vsub_f32(*v96.f32, *v90.f32);
          v84 = (1.0 / sqrtf(COERCE_FLOAT(vmulq_f32(v73, v73).i32[2]) + vaddv_f32(vmul_f32(v83, v83)))) * v64;
          v83.i32[0] = vextq_s8(v82, v82, 8uLL).u32[0];
          v83.i32[1] = v82.i32[0];
          *v41.f32 = vmul_n_f32(v83, v84);
          v42 = vmuls_lane_f32(v84, *v82.i8, 1);
        }

        goto LABEL_5;
      }

      if (v50 == 7)
      {
        v75 = (a6 * -2.0) * sqrtf(fabsf(v51));
        v76 = vmuls_lane_f32(v75, v94, 2);
        *v41.f32 = vsub_f32(vmul_n_f32(*v94.f32, v75), vmul_n_f32(vsub_f32(*v96.f32, *v90.f32), v64));
        v42 = v76 - vmuls_lane_f32(v64, vsubq_f32(v96, v90), 2);
LABEL_5:
        v41.i64[1] = LODWORD(v42);
        goto LABEL_6;
      }

      if (v50 == 8)
      {
        break;
      }

      if (v50 != 9)
      {
LABEL_39:
        sub_1AFDFE518();
        __break(1u);
        return;
      }

      v79 = *(a4 + 72);
      if (v79 != 1)
      {
        v80.n128_u32[3] = v98.u32[3];
        v80.n128_u64[0] = vadd_f32(vmul_f32(*v98.f32, 0x3F0000003F000000), 0x3F0000003F000000);
        v80.n128_f32[2] = vmuls_lane_f32(0.5, v98, 2) + 0.5;
        v100 = v63 * a19;
        *v81.i64 = v79(a4, v80);
        v41.i64[0] = vmulq_n_f32(v81, v100).u64[0];
        v42 = vmuls_lane_f32(v100, v81, 2);
        goto LABEL_5;
      }

LABEL_6:
      v43 = vaddq_f32(v41, *v39);
      v43.i32[3] = 0;
      *v39++ = v43;
      ++v37;
      if (!--v35)
      {
        return;
      }
    }

    v41.i32[0] = 2.0;
    if (v51 <= 2.0)
    {
      v69 = v51 * a19;
      if (a6 > 2.0)
      {
LABEL_38:
        v85 = vmulq_f32(v94, v94);
        v85.f32[0] = sqrtf(v85.f32[2] + vaddv_f32(*v85.f32));
        *v62.i32 = fmaxf(v85.f32[0], 0.00001);
        v86 = -(v61 * v85.f32[0]) * (v41.f32[0] + (v85.f32[0] * v69));
        *v41.f32 = vdup_lane_s32(v62, 0);
        v41.i64[0] = vmulq_n_f32(vdivq_f32(v94, v41), v86).u64[0];
        v42 = (v94.f32[2] / *v62.i32) * v86;
        goto LABEL_5;
      }
    }

    else
    {
      v69 = a19 + a19;
      if (a6 > 2.0)
      {
        goto LABEL_38;
      }
    }

    v41.f32[0] = a6;
    goto LABEL_38;
  }
}

uint64_t sub_1AFB4F490(uint64_t a1)
{
  v1 = *(a1 + 88);
  v180 = *(a1 + 72);
  v181 = v1;
  v2 = *(a1 + 120);
  v182 = *(a1 + 104);
  v183 = v2;
  v3 = *(a1 + 24);
  v177[0] = *(a1 + 8);
  v177[1] = v3;
  v4 = *(a1 + 40);
  v145 = a1;
  v5 = *(a1 + 56);
  v178 = v4;
  v179 = v5;
  v6 = *&v177[0];

  sub_1AF3CF4B8(*(&v177[0] + 1), &v151);
  v149 = v6;

  if (v153.columns[0].u8[12] == 1)
  {
    v9 = 1.0;
    v130 = 1.0;
    v131 = 1.0;
    v10 = 1.0;
    v11 = 1.0;
    v12 = 1.0;
    v13 = 1.0;
    v14 = 1.0;
    v15 = 1.0;
    v16 = 1.0;
  }

  else
  {
    if (!v153.columns[0].i32[2])
    {
      return result;
    }

    v16 = *v151.i32;
    v14 = *&v151.i32[3];
    v15 = *&v151.i32[2];
    v12 = *&v152.i32[1];
    v13 = *v152.i32;
    v10 = *&v152.i32[3];
    v11 = *&v152.i32[2];
    v130 = *&v151.i32[1];
    v9 = v153.columns[0].i32[1];
    v131 = v153.columns[0].i32[0];
  }

  LODWORD(v8) = *(v149 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 64);
  v141 = v8;
  v17 = v178;
  swift_retain_n();
  v140 = v17;
  sub_1AFB95040(v17, &v166);
  *v144 = v166.columns[0];
  v146 = v166.columns[1];
  v147 = v166.columns[2];
  v148 = v166.columns[3];

  if (v167)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v142 + 64);
  v186[0] = *(v142 + 48);
  v186[1] = v19;
  v187 = *(v142 + 80);
  sub_1AF6B06C0(v149, v186, 0x200000000, v168);
  v122 = *&v168[0];
  if (*&v168[0])
  {
    v121 = *(&v168[2] + 1);
    v20 = *(&v169 + 1);
    v129 = v170.i64[1];
    v172 = *(v168 + 8);
    v173 = *(&v168[1] + 8);
    if (v171.i64[0] <= 0)
    {
      sub_1AFB53B70(v168, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      if (*(&v169 + 1))
      {
        v21 = vdupq_n_s32(v18);
        v139 = vbslq_s8(v21, xmmword_1AFE20150, *v144);
        v138 = vbslq_s8(v21, xmmword_1AFE20160, v146);
        v137 = vbslq_s8(v21, xmmword_1AFE20180, v147);
        v136 = vbslq_s8(v21, xmmword_1AFE201A0, v148);
        v128 = v129[4];
        v127 = *(v170.i64[0] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v165[2] = v168[2];
        v165[3] = v169;
        v165[4] = v170;
        v165[5] = v171;
        v165[0] = v168[0];
        v165[1] = v168[1];
        sub_1AF5DD298(v165, &v151);
        v22 = 0;
        v148.i64[0] = 0;
        v135 = 0x80000001AFF48D50;
        v134 = xmmword_1AFE431C0;
        v133 = xmmword_1AFE9BBD0;
        v120 = v20;
        do
        {
          v126 = v22;
          v23 = (v121 + 48 * v22);
          v25 = *v23;
          v24 = v23[1];
          v27 = *(v23 + 2);
          v26 = *(v23 + 3);
          v29 = *(v23 + 4);
          v28 = *(v23 + 5);
          v132 = v28;
          v147.i64[0] = v24;
          if (v127)
          {
            v30 = *(v132 + 47);

            v31 = v30;
            v28 = v132;
            os_unfair_lock_lock(v31);
            os_unfair_lock_lock(*(v28 + 43));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v128);
          v32 = v129;
          v33 = *(v129 + 4);
          v184[0] = *(v129 + 3);
          v184[1] = v33;
          v185 = v129[10];
          v34 = v129[4];
          v35 = *(*(*(*(v28 + 5) + 16) + 32) + 16) + 1;

          v32[6] = ecs_stack_allocator_allocate(v34, 48 * v35, 8);
          v32[7] = v35;
          v32[9] = 0;
          v32[10] = 0;
          v32[8] = 0;

          v36 = sub_1AF64B110(&type metadata for ForceField, &off_1F2560F10, v27, v26, v29, v32);
          sub_1AF64B110(&type metadata for ForceFieldRuntime, &off_1F2560FC0, v27, v26, v29, v32);
          v37 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v27, v26, v29, v32);
          if (v27)
          {
            v39 = v148.i64[0];
            v40 = v146;
            v42 = v143;
            v41 = *v144;
            if (v29)
            {
              v43 = v36 + 56;
              v44 = (v37 + 32);
              do
              {
                v45 = *(v43 - 7);
                if (v45 > 4)
                {
                  if (v45 <= 6)
                  {
                    LODWORD(v38) = v9;
                    if (v45 != 5)
                    {
                      *&v38 = v14;
                    }
                  }

                  else
                  {
                    *&v38 = v13;
                    if (v45 != 7)
                    {
                      *&v38 = v12;
                      if (v45 != 8)
                      {
                        *&v38 = v11;
                        if (v45 != 9)
                        {
                          goto LABEL_71;
                        }
                      }
                    }
                  }
                }

                else if (v45 <= 1)
                {
                  *&v38 = v16;
                  if (v45)
                  {
                    *&v38 = v130;
                    if (v45 != 1)
                    {
                      goto LABEL_71;
                    }
                  }
                }

                else
                {
                  *&v38 = v15;
                  if (v45 != 2)
                  {
                    *&v38 = v10;
                    if (v45 != 3)
                    {
                      LODWORD(v38) = v131;
                    }
                  }
                }

                if (*&v38 != 0.0)
                {
                  v46 = *v44;
                  v47 = v44[1];
                  v48 = vmulq_f32(v46, v46);
                  *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
                  *v48.f32 = vrsqrte_f32(v49);
                  *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
                  v50 = vmulq_n_f32(*v44, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
                  v51 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v137, v50, 2), v138, *v50.f32, 1), v139, v50.f32[0]);
                  *v144 = v38;
                  v52 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v136, v137, v47, 2), v138, *v47.f32, 1), v139, v47.f32[0]);
                  v53 = v44[-2];
                  v54 = v44[-1];
                  v55 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v46, *(v43 + 40), 2), v54, *(v43 + 40), 1), v53, COERCE_FLOAT(*(v43 + 40)));
                  v189.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v53.f32[0]), v138, *v53.f32, 1), v137, v53, 2), v136, v53, 3);
                  v189.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v54.f32[0]), v138, *v54.f32, 1), v137, v54, 2), v136, v54, 3);
                  v189.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v46.f32[0]), v138, *v46.f32, 1), v137, v46, 2), v136, v46, 3);
                  v189.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v47.f32[0]), v138, *v47.f32, 1), v137, v47, 2), v136, v47, 3);
                  v51.i32[3] = v42.i32[3];
                  v52.i32[3] = v41.i32[3];
                  v147 = v52;
                  v148 = v51;
                  v55.i32[3] = v40.i32[3];
                  v146 = v55;
                  v190 = __invert_f4(v189);
                  v56 = *(v43 + 24);
                  DWORD2(v56) = fmaxf(COERCE_FLOAT(*(v43 + 4)), 0.001);
                  v57 = *(v43 - 9);
                  v58 = *(v43 + 2);
                  v59 = *(v43 - 2);
                  v60 = *(v43 - 1) == 1;
                  v61 = *v43;
                  v62 = vmul_f32(__PAIR64__(v141, v144[0]), *(v43 - 44));
                  v63 = *(v43 + 7);
                  v151 = v147;
                  v152 = v148;
                  v153 = v190;
                  v154 = v146;
                  v155 = v56;
                  v157 = v62;
                  v156 = v141;
                  v158 = v144[0];
                  v160 = v63;
                  v159 = v57;
                  v161 = v58;
                  v162 = v60;
                  v163 = v61;
                  v164 = v59;
                  if (*v145)
                  {
                    ObjectType = swift_getObjectType();
                    type metadata accessor for particle_force_field_uniforms(0);
                    sub_1AF6F4524(&v151, 1, ObjectType, v65, v66, v67, v68, v69);
                  }

                  sub_1AFB54454(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                  v70 = swift_allocObject();
                  v150 = 0;
                  v71 = v133;
                  *(v70 + 16) = v134;
                  *(v70 + 32) = v71;
                  *(v70 + 48) = 0;
                  *(v70 + 64) = v45;
                  *(v70 + 128) = 14;
                  v72 = v145;
                  v73 = v145[18];
                  v74 = *(v149 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                  v75 = *(v149 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                  v144[0] = v75;

                  v143.i64[0] = &v119;
                  MEMORY[0x1EEE9AC00](v76);
                  v77 = v142;
                  *(&v119 - 10) = v72;
                  *(&v119 - 9) = v77;
                  *(&v119 - 8) = 0xD000000000000014;
                  *(&v119 - 7) = v135;
                  *(&v119 - 6) = v70;
                  *(&v119 - 5) = v73;
                  *(&v119 - 4) = 0;
                  *(&v119 - 24) = v74;
                  v117 = v75;
                  v118 = v177;
                  sub_1AFCBF008(v140, sub_1AFA09F2C);

                  v40 = v146;
                  v41 = v147;
                  v42 = v148;
                }

                v43 += 144;
                v44 += 4;
                --v29;
              }

              while (v29);
              v143 = v42;
              *v144 = v41;
              v146 = v40;
            }
          }

          else
          {
            v78 = v147.i64[0] + 1;
            v79 = (v36 - 132);
            v80 = (v37 - 32);
            v39 = v148.i64[0];
LABEL_41:
            v81 = v79 + 144 * v25;
            v82 = (v80 + (v25 << 6));
            while (v78 != ++v25)
            {
              v83 = *(v81 + 132);
              if (v83 > 4)
              {
                if (v83 <= 6)
                {
                  LODWORD(v38) = v9;
                  if (v83 != 5)
                  {
                    *&v38 = v14;
                  }
                }

                else
                {
                  *&v38 = v13;
                  if (v83 != 7)
                  {
                    *&v38 = v12;
                    if (v83 != 8)
                    {
                      *&v38 = v11;
                      if (v83 != 9)
                      {
LABEL_71:
                        LODWORD(v118) = 0;
                        v117 = 465;
                        result = sub_1AFDFE518();
                        __break(1u);
                        return result;
                      }
                    }
                  }
                }
              }

              else if (v83 <= 1)
              {
                *&v38 = v16;
                if (v83)
                {
                  *&v38 = v130;
                  if (v83 != 1)
                  {
                    goto LABEL_71;
                  }
                }
              }

              else
              {
                *&v38 = v15;
                if (v83 != 2)
                {
                  *&v38 = v10;
                  if (v83 != 3)
                  {
                    LODWORD(v38) = v131;
                  }
                }
              }

              v81 += 144;
              v82 += 4;
              if (*&v38 != 0.0)
              {
                v147.i64[0] = v80;
                v148.i64[0] = v79;
                v84 = *v82;
                v85 = v82[1];
                v86 = vmulq_f32(v84, v84);
                *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
                *v86.f32 = vrsqrte_f32(v87);
                *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
                v88 = vmulq_n_f32(*v82, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
                v119 = v38;
                v89 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v137, v88, 2), v138, *v88.f32, 1), v139, v88.f32[0]);
                v90 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v136, v137, v85, 2), v138, *v85.f32, 1), v139, v85.f32[0]);
                v91 = v82[-2];
                v92 = v82[-1];
                v93 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v84, *(v81 + 84), 2), v92, *(v81 + 84), 1), v91, COERCE_FLOAT(*(v81 + 84)));
                v191.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v91.f32[0]), v138, *v91.f32, 1), v137, v91, 2), v136, v91, 3);
                v191.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v92.f32[0]), v138, *v92.f32, 1), v137, v92, 2), v136, v92, 3);
                v191.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v84.f32[0]), v138, *v84.f32, 1), v137, v84, 2), v136, v84, 3);
                v191.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v139, v85.f32[0]), v138, *v85.f32, 1), v137, v85, 2), v136, v85, 3);
                v89.i32[3] = v125.i32[3];
                v90.i32[3] = v124.i32[3];
                v124 = v90;
                v125 = v89;
                v93.i32[3] = v123.i32[3];
                v123 = v93;
                v192 = __invert_f4(v191);
                v94 = *(v81 + 68);
                DWORD2(v94) = fmaxf(COERCE_FLOAT(*(v81 + 76)), 0.001);
                v95 = *(v81 + 8);
                v96 = *(v81 + 52);
                v97 = *(v81 + 36) == 1;
                v98 = *(v81 + 44);
                v99 = *(v81 + 28);
                v100 = vmul_f32(__PAIR64__(v141, v119), *v81);
                v101 = *(v81 + 100);
                v151 = v124;
                v152 = v125;
                v153 = v192;
                v154 = v123;
                v155 = v94;
                v157 = v100;
                v156 = v141;
                v158 = v119;
                v160 = v101;
                v159 = v95;
                v161 = v96;
                v162 = v97;
                v163 = v98;
                v164 = v99;
                if (*v145)
                {
                  v102 = swift_getObjectType();
                  type metadata accessor for particle_force_field_uniforms(0);
                  sub_1AF6F4524(&v151, 1, v102, v103, v104, v105, v106, v107);
                }

                sub_1AFB54454(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
                v108 = swift_allocObject();
                v150 = 0;
                v109 = v133;
                *(v108 + 16) = v134;
                *(v108 + 32) = v109;
                *(v108 + 48) = 0;
                *(v108 + 64) = v83;
                *(v108 + 128) = 14;
                v110 = v145;
                v111 = v145[18];
                v112 = *(v149 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
                v113 = *(v149 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
                *&v119 = v113;

                MEMORY[0x1EEE9AC00](v114);
                v115 = v142;
                *(&v119 - 10) = v110;
                *(&v119 - 9) = v115;
                *(&v119 - 8) = 0xD000000000000014;
                *(&v119 - 7) = v135;
                *(&v119 - 6) = v108;
                *(&v119 - 5) = v111;
                *(&v119 - 4) = 0;
                *(&v119 - 24) = v112;
                v117 = v113;
                v118 = v177;
                sub_1AFCBF008(v140, sub_1AFA09E00);

                v79 = v148.i64[0];
                v80 = v147.i64[0];
                goto LABEL_41;
              }
            }
          }

          v174 = v122;
          v175 = v172;
          v176 = v173;
          sub_1AF630994(v129, &v174, v184);
          v148.i64[0] = v39;
          v116 = v132;
          sub_1AF62D29C(v132);
          ecs_stack_allocator_pop_snapshot(v128);
          if (v127)
          {
            os_unfair_lock_unlock(*(v116 + 43));
            os_unfair_lock_unlock(*(v116 + 47));
          }

          v22 = v126 + 1;
        }

        while (v126 + 1 != v120);
      }

      else
      {
        v153.columns[0] = v168[2];
        v153.columns[1] = v169;
        v153.columns[2] = v170;
        v153.columns[3] = v171;
        v151 = v168[0];
        v152 = v168[1];
        sub_1AF5DD298(&v151, v165);
      }

      sub_1AFB53B70(v168, &qword_1ED725EA0, &type metadata for QueryResult);
      return sub_1AFB53B70(v168, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  else
  {
  }
}

double sub_1AFB501F8()
{
  swift_unknownObjectRelease();

  swift_deallocClassInstance();
  return result;
}

__n128 initializeWithCopy for ForceField(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ForceField(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 140))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 140) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 140) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AFB50380()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF5C7EC8(v4);
  v1 = v4[1];
  *(v0 + 48) = v4[0];
  *(v0 + 64) = v1;
  *(v0 + 80) = v5;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = v2;
  return v0;
}

uint64_t sub_1AFB50474()
{
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v0 = v2;
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  v2 = 0;
  MEMORY[0x1B271DEC0](&v2, 8);
  return v0;
}

unint64_t sub_1AFB504FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFB50548(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AFB50594(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AFB505E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB53EDC(0, &qword_1EB642B20, sub_1AFB51804, &type metadata for ForceField.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  v55 = 0;
  v54 = 0;
  v52 = 0uLL;
  v53 = 0;
  v10 = a1[3];
  v11 = a1[4];
  sub_1AF441150(a1, v10);
  if (sub_1AF694FF8(2025, v10, v11))
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFB51804();
    sub_1AFDFF3B8();
    if (!v2)
    {
      LOBYTE(v41) = 0;
      v12 = sub_1AFDFE748();
      LOBYTE(v41) = 11;
      if (sub_1AFDFE808())
      {
        LOBYTE(v41) = 11;
        LOBYTE(v39) = sub_1AFDFE718() & 1;
        v39 = v39;
      }

      else
      {
        v39 = 0;
      }

      LOBYTE(v41) = 1;
      sub_1AFDFE738();
      v13 = v28;
      LOBYTE(v41) = 8;
      v29 = sub_1AFDFE718();
      LOBYTE(v41) = 2;
      sub_1AFDFE738();
      v14 = v30;
      LOBYTE(v41) = 3;
      sub_1AFDFE738();
      v15 = v31;
      LOBYTE(v41) = 4;
      v38 = sub_1AFDFE7E8();
      LOBYTE(v41) = 5;
      v32 = sub_1AFDFE7E8();
      v37 = v12;
      v33 = v32;
      LOBYTE(v41) = 6;
      sub_1AFDFE738();
      v18 = v34;
      v36 = v33;
      LOBYTE(v41) = 9;
      sub_1AFDFE738();
      v25 = v35;
      sub_1AFB53EDC(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
      LOBYTE(v51[0]) = 10;
      sub_1AFB518AC(&qword_1ED72F748, MEMORY[0x1E69E7468]);
      sub_1AFDFE768();
      v40 = v41;
      LOBYTE(v51[0]) = 7;
      sub_1AF47FEB4();
      sub_1AFDFE768();
      v24 = v29 & 1;
      (*(v7 + 8))(v9, v6);
      v56 = 0;
      v22 = 0;
      v19 = v41;
      v23 = v39;
      v16 = v38;
      v17 = v36;
      v21 = v37;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1AF441150(a1, a1[3]);
    sub_1AFDFF398();
    if (!v2)
    {
      sub_1AF441150(v51, v51[3]);
      sub_1AFB51858();
      sub_1AFDFEE88();
      v14 = DWORD2(v41);
      v13 = DWORD1(v41);
      v15 = v42;
      v16 = v43;
      v17 = v44;
      v18 = v47;
      v19 = v50;
      LODWORD(v20) = v49;
      DWORD1(v20) = v49;
      *(&v20 + 1) = v48;
      v40 = v20;
      v21 = qword_1AFE9C608[v41];
      v56 = 2 - v45;
      v22 = qword_1AFE9C640[v46];
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
      v23 = 0;
      v24 = 1;
      v25 = 0;
LABEL_7:
      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      *a2 = v21;
      *(a2 + 8) = v24;
      *(a2 + 9) = v23;
      *(a2 + 10) = 0;
      *(a2 + 12) = v13;
      *(a2 + 16) = v14;
      *(a2 + 20) = v15;
      *(a2 + 24) = v16;
      *(a2 + 32) = v17;
      *(a2 + 40) = v22;
      *(a2 + 48) = 0;
      *(a2 + 56) = v56;
      *(a2 + 64) = v18;
      *(a2 + 68) = v54;
      *(a2 + 76) = v55;
      v27 = v52;
      *(a2 + 112) = v53;
      *(a2 + 80) = v40;
      *(a2 + 96) = v27;
      *(a2 + 116) = v25;
      *(a2 + 120) = 0;
      *(a2 + 128) = 1;
      *(a2 + 132) = v19;
      return result;
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
}

uint64_t sub_1AFB50C60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFB53EDC(0, &qword_1EB642B90, sub_1AFB53F44, &type metadata for ForceField_LEGACY.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v39 = a1;
  sub_1AF441150(a1, v10);
  sub_1AFB53F44();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  }

  v11 = v7;
  v42 = 0;
  sub_1AFB53F98();
  sub_1AFDFE768();
  v12 = v40;
  LOBYTE(v40) = 1;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v40) = 2;
  sub_1AFDFE738();
  v16 = v15;
  LOBYTE(v40) = 3;
  sub_1AFDFE738();
  v18 = v17;
  LOBYTE(v40) = 4;
  sub_1AFDFE738();
  v20 = v19;
  LOBYTE(v40) = 5;
  v38 = sub_1AFDFE7E8();
  LOBYTE(v40) = 6;
  v41 = sub_1AFDFE718();
  LOBYTE(v40) = 7;
  v37 = sub_1AFDFE718();
  v42 = 8;
  sub_1AFA08788();
  sub_1AFDFE768();
  v22 = v40;
  v42 = 9;
  sub_1AFB53FEC();
  v23 = v6;
  sub_1AFDFE768();
  v36 = v40;
  v42 = 10;
  sub_1AFB54040();
  sub_1AFDFE768();
  v35 = v40;
  LOBYTE(v40) = 11;
  sub_1AFDFE738();
  v25 = v24;
  sub_1AFA3B754(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v42 = 12;
  v34 = sub_1AFB54094();
  sub_1AFDFE768();
  v26 = v40;
  v42 = 13;
  sub_1AFDFE768();
  v27 = v40;
  v42 = 14;
  sub_1AFDFE768();
  v34 = v40;
  v28 = v39[3];
  v29 = v39[4];
  sub_1AF441150(v39, v28);
  if (sub_1AF694FF8(1097, v28, v29))
  {
    v42 = 15;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    (*(v11 + 8))(v9, v23);
    v30 = v40;
  }

  else
  {
    (*(v11 + 8))(v9, v23);
    v30 = 0xFFFFFFFFLL;
  }

  v31 = v41 & 1;
  v32 = v37 & 1;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
  *a2 = v12;
  *(a2 + 4) = v14;
  *(a2 + 8) = v16;
  *(a2 + 12) = v18;
  *(a2 + 16) = v20;
  *(a2 + 24) = v38;
  *(a2 + 32) = v31;
  *(a2 + 33) = v32;
  *(a2 + 36) = v22;
  v33 = v35;
  *(a2 + 40) = v36;
  *(a2 + 41) = v33;
  *(a2 + 44) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v34;
  *(a2 + 72) = v30;
  return result;
}

uint64_t sub_1AFB51250@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v46 = a2;
  sub_1AFB53EDC(0, &qword_1EB642B40, sub_1AFB519B0, &type metadata for ParticleForceField.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v44 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB519B0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v6;
  v10 = v46;
  v11 = a1[3];
  v12 = a1[4];
  sub_1AF441150(a1, v11);
  v13 = sub_1AF694FF8(2025, v11, v12);
  v14 = a1;
  if (v13)
  {
    LOBYTE(v48) = 8;
    v15 = v5;
    v16 = v8;
    sub_1AFDFE738();
    v18 = v17;
    LOBYTE(v48) = 9;
    sub_1AFDFE738();
    v20 = v19;
    LOBYTE(v48) = 10;
    sub_1AFDFE738();
    v22 = v21;
    LOBYTE(v48) = 11;
    sub_1AFDFE738();
    v24 = v23;
  }

  else
  {
    LOBYTE(v48) = 1;
    v15 = v5;
    v16 = v8;
    sub_1AFDFE738();
    v18 = v25;
    v20 = 1.0;
    v22 = 1.0;
    v24 = 1.0;
  }

  LOBYTE(v48) = 0;
  sub_1AFDFE738();
  v27 = v26;
  LOBYTE(v48) = 2;
  sub_1AFDFE738();
  v29 = v28;
  LOBYTE(v48) = 3;
  sub_1AFDFE738();
  v31 = v30;
  LOBYTE(v48) = 4;
  sub_1AFDFE738();
  v33 = v32;
  LOBYTE(v48) = 5;
  sub_1AFDFE738();
  v45 = v34;
  v47 = 6;
  sub_1AFA08788();
  sub_1AFDFE768();
  v36 = v14;
  v37 = v48;
  v38 = v14[3];
  v39 = v14[4];
  v40 = v36;
  sub_1AF441150(v36, v38);
  if (sub_1AF694FF8(1097, v38, v39))
  {
    LOBYTE(v48) = 7;
    sub_1AFDFE738();
    v44 = v41;
    (*(v9 + 8))(v16, v15);
  }

  else
  {
    (*(v9 + 8))(v16, v15);
    v44 = 1.0;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v40);
  *v10 = v18;
  *(v10 + 1) = v27;
  *(v10 + 2) = v29;
  *(v10 + 3) = v31;
  v42 = v44;
  v43 = v45;
  *(v10 + 4) = v33;
  *(v10 + 5) = v43;
  v10[6] = v42;
  v10[7] = v20;
  v10[8] = v22;
  v10[9] = v24;
  *(v10 + 10) = v37;
  return result;
}

uint64_t sub_1AFB516E0()
{
  type metadata accessor for ForceFieldSystem();
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v8 = qword_1ED73B840;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  v12 = 2;
  v13 = 0;
  sub_1AF703348(1, v4);
  sub_1AF6C0CEC(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ForceFieldRuntime;
  *(inited + 40) = &off_1F2560F40;
  sub_1AF5D1EC0(inited);
  sub_1AFB51928(v4);
  swift_setDeallocating();
  v2 = v6;
  *(v0 + 16) = v5;
  *(v0 + 32) = v2;
  *(v0 + 48) = v7;
  return v0;
}

unint64_t sub_1AFB51804()
{
  result = qword_1EB642B28;
  if (!qword_1EB642B28)
  {
    result = swift_getWitnessTable(byte_1AFE9C0C4, &type metadata for ForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B28);
  }

  return result;
}

unint64_t sub_1AFB51858()
{
  result = qword_1EB642B30;
  if (!qword_1EB642B30)
  {
    result = swift_getWitnessTable(byte_1AFE9C09C, &type metadata for ForceField_LEGACY, v0, v1);
    atomic_store(result, &qword_1EB642B30);
  }

  return result;
}

uint64_t sub_1AFB518AC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB53EDC(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFB51928(uint64_t a1)
{
  sub_1AFA3B754(0, &qword_1ED723E88, &type metadata for ForceField, &off_1F2560F10, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AFB519B0()
{
  result = qword_1EB642B48;
  if (!qword_1EB642B48)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for ParticleForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B48);
  }

  return result;
}

uint64_t sub_1AFB51A04(uint64_t *a1)
{
  v405 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74(0);
  v276 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v275 = &v254 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1AFDFC298();
  v4 = *(v274 - 8);
  MEMORY[0x1EEE9AC00](v274);
  v273 = &v254 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = a1;
  v7 = *a1;
  v6 = a1[1];

  sub_1AF3CF4B8(v6, &v397);

  if (BYTE12(v399) == 1)
  {
    v256 = 1.0;
    v257 = 1.0;
    v289 = 255;
    v9 = 1.0;
    v10 = 1.0;
    v11 = 1.0;
    v12 = 1.0;
    DWORD2(v255) = 1.0;
    HIDWORD(v255) = 1.0;
    LODWORD(v255) = 1.0;
    DWORD1(v255) = 1.0;
  }

  else
  {
    if (!DWORD2(v399))
    {
      return result;
    }

    v289 = DWORD2(v399);
    v255 = v397;
    v11 = *(&v398 + 2);
    v12 = *(&v398 + 1);
    v10 = *(&v398 + 3);
    v9 = *&v399;
    v256 = *&v398;
    v257 = *(&v399 + 1);
  }

  v13 = v267;
  sub_1AFB93E58();
  v15 = v14;
  v16 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  v17 = v13[4];

  sub_1AFB95040(v17, &v348);
  v312 = v348.columns[1];
  v313 = v348.columns[0];
  v310 = v348.columns[3];
  v311 = v348.columns[2];

  if (v349)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v333 = qword_1ED73B840;
  v334 = 0;
  v335 = 2;
  v336 = 0;
  v337 = 2;
  v338 = 0;
  sub_1AF5C7EC8(v316);
  v331[0] = v316[0];
  v331[1] = v316[1];
  v332 = v317;
  v264 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  sub_1AF6B06C0(v7, v331, 0x200000000, v350);
  v266 = *&v350[0];
  if (*&v350[0])
  {
    v19 = *(&v351 + 1);
    v281 = *(&v352 + 1);
    v265 = v352;
    v385 = *(v350 + 8);
    v386 = *(&v350[1] + 8);
    v262 = v353;
    v263 = *(&v350[2] + 1);
    if (v353 <= 0 || !*(&v351 + 1))
    {
      v399 = v350[2];
      v400 = v351;
      v401 = v352;
      v402 = v353;
      v397 = v350[0];
      v398 = v350[1];
      sub_1AF5DD298(&v397, v392);
LABEL_243:

      sub_1AFB53A80(v316, sub_1AFB53AE0);
      sub_1AFB53B70(v350, &qword_1ED725EA0, &type metadata for QueryResult);
      return sub_1AFB53B70(v350, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v20 = vdupq_n_s32(v18);
    v21 = v16;
    v286 = vbslq_s8(v20, xmmword_1AFE20150, v313);
    v285 = vbslq_s8(v20, xmmword_1AFE20160, v312);
    v284 = vbslq_s8(v20, xmmword_1AFE20180, v311);
    v283 = vbslq_s8(v20, xmmword_1AFE201A0, v310);
    v280 = v281[4];
    v279 = *(v265 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v347[2] = v350[2];
    v347[3] = v351;
    v347[4] = v352;
    v347[5] = v353;
    v347[0] = v350[0];
    v347[1] = v350[1];
    sub_1AF5DD298(v347, &v397);
    v22 = 0;
    v23 = 0;
    v272 = 0x80000001AFF48D10;
    v269 = (v4 + 32);
    v268 = xmmword_1AFE431C0;
    v302 = v7;
    v261 = v19;
    while (1)
    {
      v278 = v22;
      v24 = (v263 + 48 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[2];
      v28 = *(v24 + 2);
      v29 = *(v24 + 3);
      v30 = *(v24 + 4);
      v31 = *(v24 + 5);
      if (v279)
      {
        v32 = *(v31 + 376);

        os_unfair_lock_lock(v32);
        os_unfair_lock_lock(*(v31 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v280);

      v34 = v281;
      sub_1AF630914(v33, v281, v354);

      LOBYTE(v339) = 1;
      *&v397 = v265;
      *(&v397 + 1) = v31;
      *&v398 = v34;
      *(&v398 + 1) = v27;
      *&v399 = (v26 - v25 + v27);
      *(&v399 + 1) = v262;
      *&v400 = v25;
      *(&v400 + 1) = v26;
      v401 = 0uLL;
      LOBYTE(v402) = 1;
      *(&v402 + 1) = v28;
      v403 = v29;
      v404 = v30;
      v290 = sub_1AF705EA8(v31, &v397);
      v271 = sub_1AF705F44(v31, &v397);
      v277 = v31;
      v287 = sub_1AF705994(v31, &v397);
      v282 = 32;
      if (!*(&v402 + 1))
      {
        break;
      }

      v35 = v404;
      v36 = v289;
      v37 = v302;
      v39 = v312;
      v38 = v313;
      if (v404)
      {
        v270 = v23;
        v40 = 0;
        v41 = v290;
        v288 = v404;
        while (1)
        {
          v44 = &v41[144 * v40];
          if ((v36 & *(v44 + 8)) == 0 || (v44[8] & 1) == 0)
          {
            goto LABEL_24;
          }

          v297 = v40;
          v45 = &v287[64 * v40];
          v47 = *v45[4].f32;
          v46 = *v45[6].f32;
          v48 = vmulq_f32(v47, v47);
          *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
          v50 = *v45[2].f32;
          *v48.f32 = vrsqrte_f32(v49);
          *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
          v51 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
          v52 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v284, v51, 2), v285, *v51.f32, 1), v286, v51.f32[0]);
          v53 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v283, v284, v46, 2), v285, *v46.f32, 1), v286, v46.f32[0]);
          v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, COERCE_FLOAT(*v45->f32)), v285, *v45, 1), v284, *v45->f32, 2);
          v312 = *v45->f32;
          v313 = v47;
          v406.columns[0] = vmlaq_laneq_f32(v54, v283, v312, 3);
          v406.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v50.f32[0]), v285, *v50.f32, 1), v284, v50, 2), v283, v50, 3);
          v406.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v47.f32[0]), v285, *v47.f32, 1), v284, v47, 2), v283, v47, 3);
          v406.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v46.f32[0]), v285, *v46.f32, 1), v284, v46, 2), v283, v46, 3);
          v52.i32[3] = v39.i32[3];
          v311 = v52;
          v53.i32[3] = v38.i32[3];
          v309 = v50;
          v310 = v53;
          v407 = __invert_f4(v406);
          v300 = v407.columns[1];
          v301 = v407.columns[0];
          v298 = v407.columns[3];
          v299 = v407.columns[2];
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          v343 = 0;
          v344 = 1;
          v345 = 0;
          v346 = 0;
          v55 = *v44;
          if (*v44 == 9)
          {
            sub_1AF8E60EC(*(v44 + 132), 1, v355);
            if (!v358)
            {
              goto LABEL_31;
            }

            v379[0] = v355[0];
            v379[1] = v355[1];
            v379[2] = v356;
            v380 = v357;
            v381 = v358;
            v314 = v356;
            v315 = v357;
            if (sub_1AF8FE1C4(&v314) != 7)
            {
              sub_1AFB53B70(v355, &unk_1ED725420, &type metadata for TextureCPURuntime);
LABEL_31:
              if (qword_1ED730EA0 != -1)
              {
                swift_once();
              }

              v56 = sub_1AFDFDA08();
              if (qword_1ED731058 != -1)
              {
                swift_once();
              }

              if (qword_1ED730E98 != -1)
              {
                swift_once();
              }

              v57 = qword_1ED73B890;
              sub_1AF6EFB60(0);
              v58 = swift_allocObject();
              *(v58 + 16) = v268;
              *(v58 + 56) = MEMORY[0x1E69E6158];
              *(v58 + 64) = sub_1AF0D544C();
              v59 = v272;
              *(v58 + 32) = 0xD00000000000001ELL;
              *(v58 + 40) = v59;
              sub_1AFDFC4C8(v56, &dword_1AF0CE000, v57, "%{public}s", 10, 2, v58);

              v60 = v273;
              sub_1AFDFC288();
              v61 = v275;
              v62 = v276[12];
              v63 = v276[16];
              v64 = &v275[v276[20]];
              (*v269)(v275, v60, v274);
              *(v61 + v62) = v56;
              *(v61 + v63) = 0;
              *v64 = 0xD00000000000001ELL;
              *(v64 + 1) = v59;
              sub_1AFDFC608();

              sub_1AFB53A80(v61, sub_1AF0D4E74);
              v38 = v310;
              v39 = v311;
              v36 = v289;
              v41 = v290;
              v37 = v302;
              v35 = v288;
              v40 = v297;
              goto LABEL_24;
            }

            sub_1AF478ACC(v379, 2, 1, &v339);
            v42 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v313, *(v44 + 6), 2), v309, *(v44 + 96), 1), v312, COERCE_FLOAT(*(v44 + 6)));
            v42.i32[3] = v308.i32[3];
            v303 = v42;
            v43 = v11;
            v36 = v289;
            v41 = v290;
            v35 = v288;
            v40 = v297;
          }

          else
          {
            v65 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v313, *(v44 + 6), 2), v309, *(v44 + 96), 1), v312, COERCE_FLOAT(*(v44 + 6)));
            v65.i32[3] = v308.i32[3];
            v303 = v65;
            if (v55 <= 3)
            {
              v36 = v289;
              v41 = v290;
              v35 = v288;
              v40 = v297;
              if (v55 > 1)
              {
                v43 = v55 == 2 ? *(&v255 + 2) : v10;
              }

              else if (v55)
              {
                v43 = *(&v255 + 1);
                if (v55 != 1)
                {
                  goto LABEL_246;
                }
              }

              else
              {
                v43 = *&v255;
              }
            }

            else
            {
              v36 = v289;
              v41 = v290;
              v35 = v288;
              v40 = v297;
              if (v55 <= 5)
              {
                v43 = v55 == 4 ? v9 : v257;
              }

              else if (v55 == 6)
              {
                v43 = *(&v255 + 3);
              }

              else if (v55 == 7)
              {
                v43 = v256;
              }

              else
              {
                v43 = v12;
                if (v55 != 8)
                {
                  goto LABEL_246;
                }
              }
            }
          }

          if (v43 != 0.0)
          {
            break;
          }

          v308 = v303;
          v38 = v310;
          v39 = v311;
LABEL_24:
          if (++v40 == v35)
          {
            v312 = v39;
            v313 = v38;
            goto LABEL_239;
          }
        }

        v66 = *(v44 + 4);
        v67 = *(v267 + 13);
        v327[0] = *(v267 + 11);
        v327[1] = v67;
        v328 = v267[15];
        sub_1AF6B06C0(v37, v327, 0x200000000, &v359);
        if (v359)
        {
          v296 = v366;
          if (v366 >= 1)
          {
            v295 = v363;
            if (v363)
            {
              v68 = 0;
              *&v293 = &v271[32 * v297];
              v69 = v15 * v66;
              v292 = v362;
              v291 = v364;
              v309.i32[0] = *(v364 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v308.i64[0] = *(v365 + 32);
              v324 = v359;
              v325 = v360;
              v326 = v361;
              *&v294 = v44;
              v313.i64[0] = v365;
              do
              {
                v307 = v68;
                v70 = (v292 + 48 * v68);
                v71 = *v70;
                v72 = v70[1];
                v73 = v70[2];
                v74 = *(v70 + 2);
                v75 = *(v70 + 3);
                v76 = *(v70 + 4);
                v77 = *(v70 + 5);
                if (v309.i32[0])
                {
                  v78 = *(v77 + 376);

                  os_unfair_lock_lock(v78);
                  os_unfair_lock_lock(*(v77 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v308.i64[0]);
                v79 = v313.i64[0];
                v80 = *(v313.i64[0] + 48);
                v305 = *(v313.i64[0] + 64);
                v306 = v80;
                v304.i64[0] = *(v313.i64[0] + 80);
                v81 = *(*(*(*(v77 + 40) + 16) + 32) + 16) + 1;
                v79[6] = ecs_stack_allocator_allocate(*(v313.i64[0] + 32), 48 * v81, 8);
                v79[7] = v81;
                v79[9] = 0;
                v79[10] = 0;
                v79[8] = 0;
                LOBYTE(v314) = 1;
                v387[0] = v291;
                v312.i64[0] = v77;
                v387[1] = v77;
                v387[2] = v79;
                v387[3] = v73;
                v387[4] = (v72 - v71 + v73);
                v387[5] = v296;
                v387[6] = v71;
                v387[7] = v72;
                v387[8] = 0;
                v387[9] = 0;
                v388 = 1;
                v389 = v74;
                v390 = v75;
                v391 = v76;
                sub_1AFB4EE18(v387, v294, v293, &v339, v43, v69, v311, v310, v303, v301, v300, v299, v82, v83, v84, v85, v298, v21, v15);
                v86 = v79[6];
                v87 = v79[8];
                if (!v87)
                {
                  v109 = v79[7];
                  v110 = v79[4];
                  goto LABEL_80;
                }

                for (i = 0; i != v87; ++i)
                {
                  v90 = (v86 + 48 * i);
                  v91 = *v90;
                  v92 = v90[4];
                  v93 = v79[9];
                  if (v93)
                  {
                    v94 = v91 == v93;
                  }

                  else
                  {
                    v94 = 0;
                  }

                  if (v94)
                  {
                    goto LABEL_53;
                  }

                  v95 = v324;
                  if (!v324[11])
                  {
                    goto LABEL_53;
                  }

                  v96 = v90[2];
                  v97 = v324 + 41;
                  v98 = v324[9];
                  if (v98 >= 0x10)
                  {
                    v99 = &v97[v324[8]];
                    v100 = v98 >> 4;
                    v101 = v324 + 41;
                    while (*v99 != v91)
                    {
                      ++v101;
                      v99 += 16;
                      if (!--v100)
                      {
                        goto LABEL_69;
                      }
                    }

                    v102 = v101[v324[10]];
                    v103 = v102 > 5;
                    v104 = (1 << v102) & 0x23;
                    if (v103 || v104 == 0)
                    {
LABEL_53:

                      v92(v89);

                      goto LABEL_54;
                    }
                  }

LABEL_69:
                  if (swift_conformsToProtocol2() && v96)
                  {
                    if (sub_1AF5FC8D8(v96))
                    {
                      goto LABEL_53;
                    }

                    v106 = v95[9];
                    if (v106 < 0x10)
                    {
                      goto LABEL_53;
                    }

                    v107 = &v97[v95[8]];
                    v108 = 16 * (v106 >> 4);
                    while (*v107 != v96)
                    {
                      v107 += 16;
                      v108 -= 16;
                      if (!v108)
                      {
                        goto LABEL_53;
                      }
                    }
                  }

LABEL_54:
                  v79 = v313.i64[0];
                }

                v109 = *(v313.i64[0] + 56);
                v86 = *(v313.i64[0] + 48);
                v110 = *(v313.i64[0] + 32);
                if (*(v313.i64[0] + 64) >= 1)
                {
                  swift_arrayDestroy();
                }

LABEL_80:
                v37 = v302;
                v111 = v312.i64[0];
                v112 = v304.i64[0];
                ecs_stack_allocator_deallocate(v110, v86, 48 * v109);
                v113 = v305;
                *(v79 + 3) = v306;
                *(v79 + 4) = v113;
                v79[10] = v112;
                if (*(v79[13] + 16))
                {

                  sub_1AF62F348(v114, v111);

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v116 = v79[13];
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v117 = v116[2];
                    v118 = swift_isUniquelyReferenced_nonNull_native();
                    v79[13] = v116;
                    if ((v118 & 1) == 0)
                    {
                      v116 = sub_1AF420EA0(0, v117, 1, v116);
                      v79[13] = v116;
                    }

                    sub_1AF43A540(0);
                    swift_arrayDestroy();
                    if (v117)
                    {
                      v119 = v116[2] - v117;
                      memmove(v116 + 4, &v116[9 * v117 + 4], 72 * v119);
                      v116[2] = v119;
                    }

                    v79[13] = v116;
                  }

                  else
                  {
                    v120 = MEMORY[0x1E69E7CC0];
                    if (v116[3] >= 2uLL)
                    {
                      sub_1AF6C0CEC(0, &qword_1ED7269C0, sub_1AF43A540);
                      v120 = swift_allocObject();
                      v121 = j__malloc_size_0(v120);
                      v120[2] = 0;
                      v120[3] = 2 * ((v121 - 32) / 72);
                    }

                    v79[13] = v120;
                  }

                  if (*(v79[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
                  {
                    v123 = (v111 + 232);
                    v122 = *(v111 + 232);
                    v124 = *(v111 + 256);
                    v125 = v122 - v124;
                    if (v122 == v124)
                    {
                      v126 = *(v111 + 240);
                    }

                    else
                    {
                      v127 = *(v111 + 56);
                      v128 = *(v127 + 16);
                      *&v306 = *(v111 + 232);
                      if (v128)
                      {
                        v129 = *(v111 + 128);
                        v305.i64[0] = *(v111 + 48);

                        swift_retain_n();

                        v130 = (v127 + 56);
                        do
                        {
                          sub_1AF640BC8(v129 + *(v130 - 1) * v124 + *v130, v125);
                          v130 += 5;
                          --v128;
                        }

                        while (v128);

                        v111 = v312.i64[0];
                        v122 = v306;
                        v37 = v302;
                      }

                      if ((*(v111 + 184) & 1) == 0)
                      {
                        v131 = *(v111 + 168);
                        v132 = *(v111 + 16);
                        v133 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_lock(v133);

                        v134 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                        v135 = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                        v136 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                        v305.i64[0] = v124 + *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                        v137 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                        v138 = (v131 + 4 * v124);
                        do
                        {
                          v139 = *v138++;
                          v140 = (v136 + 12 * v139);
                          *v140 = v137;
                          v140[1] = -1;
                          ++v140[2];
                          *(v132 + v134) = v139;
                          v137 = v139;
                          --v125;
                        }

                        while (v125);
                        v122 = v306;
                        *(v132 + v135) = v305.i64[0] - v306;

                        v141 = *(v132 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                        os_unfair_lock_unlock(v141);

                        v37 = v302;
                        v111 = v312.i64[0];
                      }

                      v142 = *(v111 + 192);
                      if (v142)
                      {
                        v143 = *(v111 + 208);
                        sub_1AF75D364(v124, v122, v142);
                        sub_1AF75D364(v124, v122, v143);
                      }

                      v124 = *(v111 + 232);
                      v126 = *(v111 + 240);
                      if (v126 == v124)
                      {
                        v126 = 0;
                        v124 = 0;
                        *v123 = 0;
                        v123[1] = 0;
                      }
                    }

                    *(v111 + 248) = v126;
                    *(v111 + 256) = v124;
                  }
                }

                ecs_stack_allocator_pop_snapshot(v308.i64[0]);
                if (v309.i8[0])
                {
                  os_unfair_lock_unlock(*(v111 + 344));
                  os_unfair_lock_unlock(*(v111 + 376));
                }

                v68 = v307 + 1;
              }

              while (v307 + 1 != v295);
            }
          }

          sub_1AFB53B70(&v359, &qword_1ED725EA0, &type metadata for QueryResult);
        }

        v40 = v297;
        v308 = v303;
        v38 = v310;
        v39 = v311;
        v36 = v289;
        v41 = v290;
        v35 = v288;
        goto LABEL_24;
      }

LABEL_240:
      v318 = v266;
      v319 = v385;
      v320 = v386;
      sub_1AF630994(v281, &v318, v354);
      v253 = v277;
      sub_1AF62D29C(v277);
      ecs_stack_allocator_pop_snapshot(v280);
      if (v279)
      {
        os_unfair_lock_unlock(*(v253 + 43));
        os_unfair_lock_unlock(*(v253 + 47));
      }

      v22 = v278 + 1;
      if (v278 + 1 == v261)
      {
        goto LABEL_243;
      }
    }

    v270 = v23;
    v144 = *(&v400 + 1);
    v145 = v400;
    v146 = v289;
    if (v400 == *(&v400 + 1))
    {
      goto LABEL_239;
    }

    v147 = v287 + 32;
    v148 = v259;
    v149 = v260;
    v150 = v290;
    while (1)
    {
      while (1)
      {
        v151 = v258;
        while (1)
        {
          v152 = &v271[32 * v145];
          v153 = v144 - v145;
          v154 = &v147[64 * v145];
          v155 = &v150[144 * v145++];
          while ((v146 & *(v155 + 8)) == 0 || v155[8] != 1)
          {
            v152 += 32;
            ++v145;
            v154 += 4;
            v155 += 144;
            if (!--v153)
            {
              v258 = v151;
              v259 = v148;
              v260 = v149;
              goto LABEL_239;
            }
          }

          v311 = v151;
          *&v306 = v147;
          v307 = v144;
          v157 = *v154;
          v156 = v154[1];
          v158 = vmulq_f32(v157, v157);
          *&v159 = v158.f32[2] + vaddv_f32(*v158.f32);
          v160 = v154[-1];
          *v158.f32 = vrsqrte_f32(v159);
          *v158.f32 = vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32)));
          v161 = vmulq_n_f32(*v154, vmul_f32(*v158.f32, vrsqrts_f32(v159, vmul_f32(*v158.f32, *v158.f32))).f32[0]);
          v162 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v284, v161, 2), v285, *v161.f32, 1), v286, v161.f32[0]);
          v163 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v283, v284, v156, 2), v285, *v156.f32, 1), v286, v156.f32[0]);
          v309 = v154[-2];
          v310 = v157;
          v408.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v309.f32[0]), v285, *v309.f32, 1), v284, v309, 2), v283, v309, 3);
          v300 = v160;
          v408.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v160.f32[0]), v285, *v160.f32, 1), v284, v160, 2), v283, v160, 3);
          v408.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v157.f32[0]), v285, *v157.f32, 1), v284, v157, 2), v283, v157, 3);
          v408.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v286, v156.f32[0]), v285, *v156.f32, 1), v284, v156, 2), v283, v156, 3);
          v162.i32[3] = v149.i32[3];
          v163.i32[3] = v148.i32[3];
          v259 = v163;
          v260 = v162;
          v409 = __invert_f4(v408);
          v304 = v409.columns[1];
          v305 = v409.columns[0];
          v303 = v409.columns[2];
          v301 = v409.columns[3];
          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          v343 = 0;
          v344 = 1;
          v345 = 0;
          v346 = 0;
          v164 = *v155;
          if (*v155 != 9)
          {
            break;
          }

          sub_1AF8E60EC(*(v155 + 132), 1, v367);
          if (v370)
          {
            v382[0] = v367[0];
            v382[1] = v367[1];
            v382[2] = v368;
            v383 = v369;
            v384 = v370;
            v314 = v368;
            v315 = v369;
            if (sub_1AF8FE1C4(&v314) == 7)
            {
              sub_1AF478ACC(v382, 2, 1, &v339);
              v173 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v310, *(v155 + 6), 2), v300, *(v155 + 96), 1), v309, COERCE_FLOAT(*(v155 + 6)));
              v173.i32[3] = v311.i32[3];
              v174 = v11;
              v146 = v289;
              v150 = v290;
              v144 = v307;
              v147 = v306;
              goto LABEL_150;
            }

            sub_1AFB53B70(v367, &unk_1ED725420, &type metadata for TextureCPURuntime);
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v165 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          v166 = qword_1ED73B890;
          sub_1AF6EFB60(0);
          v167 = swift_allocObject();
          *(v167 + 16) = v268;
          *(v167 + 56) = MEMORY[0x1E69E6158];
          *(v167 + 64) = sub_1AF0D544C();
          *(v167 + 32) = 0xD00000000000001ELL;
          *(v167 + 40) = v272;
          sub_1AFDFC4C8(v165, &dword_1AF0CE000, v166, "%{public}s", 10, 2, v167);

          v168 = v273;
          sub_1AFDFC288();
          v169 = v275;
          v170 = v276[12];
          v171 = v276[16];
          v172 = &v275[v276[20]];
          (*v269)(v275, v168, v274);
          *(v169 + v170) = v165;
          *(v169 + v171) = 0;
          *v172 = 0xD00000000000001ELL;
          *(v172 + 1) = v272;
          sub_1AFDFC608();

          sub_1AFB53A80(v169, sub_1AF0D4E74);
          v146 = v289;
          v148 = v259;
          v149 = v260;
          v150 = v290;
          v144 = v307;
          v147 = v306;
          v151 = v311;
          if (v153 == 1)
          {
            v258 = v311;
            v23 = v270;
            goto LABEL_240;
          }
        }

        v173 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v310, *(v155 + 6), 2), v300, *(v155 + 96), 1), v309, COERCE_FLOAT(*(v155 + 6)));
        v173.i32[3] = v311.i32[3];
        if (v164 <= 3)
        {
          v146 = v289;
          v150 = v290;
          v144 = v307;
          v147 = v306;
          if (v164 > 1)
          {
            v174 = v164 == 2 ? *(&v255 + 2) : v10;
          }

          else if (v164)
          {
            v174 = *(&v255 + 1);
            if (v164 != 1)
            {
              goto LABEL_246;
            }
          }

          else
          {
            v174 = *&v255;
          }
        }

        else
        {
          v146 = v289;
          v150 = v290;
          v144 = v307;
          v147 = v306;
          if (v164 <= 5)
          {
            v174 = v164 == 4 ? v9 : v257;
          }

          else if (v164 == 6)
          {
            v174 = *(&v255 + 3);
          }

          else
          {
            if (v164 == 7)
            {
              v174 = v256;
              goto LABEL_150;
            }

            v174 = v12;
            if (v164 != 8)
            {
LABEL_246:
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }
          }
        }

LABEL_150:
        v258 = v173;
        if (v174 != 0.0)
        {
          break;
        }

        v148 = v259;
        v149 = v260;
        if (v153 == 1)
        {
          goto LABEL_239;
        }
      }

      v175 = *(v155 + 4);
      v176 = *(v267 + 13);
      v329[0] = *(v267 + 11);
      v329[1] = v176;
      v330 = v267[15];
      sub_1AF6B06C0(v302, v329, 0x200000000, &v371);
      if (v371)
      {
        v291 = v378;
        if (v378 >= 1)
        {
          v288 = v375;
          if (v375)
          {
            v177 = 0;
            v178 = v15 * v175;
            v287 = v374;
            v254 = v376;
            LODWORD(v297) = *(v376 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v296 = *(v377 + 32);
            v321 = v371;
            v322 = v372;
            v323 = v373;
            v311.i64[0] = v377;
            do
            {
              v295 = v177;
              v179 = &v287[48 * v177];
              v181 = *v179;
              v180 = *(v179 + 1);
              v182 = *(v179 + 2);
              v183 = *(v179 + 3);
              v310.i64[0] = *(v179 + 2);
              v309.i64[0] = v183;
              v184 = *(v179 + 5);
              v300.i64[0] = *(v179 + 4);
              if (v297)
              {
                v185 = *(v184 + 376);

                os_unfair_lock_lock(v185);
                os_unfair_lock_lock(*(v184 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v296);
              v186 = v311.i64[0];
              v187 = *(v311.i64[0] + 48);
              v293 = *(v311.i64[0] + 64);
              v294 = v187;
              v292 = *(v311.i64[0] + 80);
              v188 = *(*(*(*(v184 + 40) + 16) + 32) + 16);
              v189 = *(v311.i64[0] + 32);
              v298.i64[0] = v184;
              v190 = v188 + 1;
              v186[6] = ecs_stack_allocator_allocate(v189, 48 * (v188 + 1), 8);
              v186[7] = v190;
              v191 = v298.i64[0];
              v186[9] = 0;
              v186[10] = 0;
              v186[8] = 0;
              LOBYTE(v314) = 1;
              v392[0] = v254;
              v392[1] = v191;
              v392[2] = v186;
              v392[3] = v182;
              v392[4] = (v180 - v181 + v182);
              v392[5] = v291;
              v392[6] = v181;
              v392[7] = v180;
              v392[8] = 0;
              v392[9] = 0;
              v393 = 1;
              v394 = v310.i64[0];
              v395 = v309.i64[0];
              v396 = v300.i64[0];
              sub_1AFB4EE18(v392, v155, v152, &v339, v174, v178, v260, v259, v258, v305, v304, v303, v192, v193, v194, v195, v301, v21, v15);
              v196 = v186[6];
              v310.i64[0] = v186[8];
              if (!v310.i64[0])
              {
                v216 = v186[7];
                v217 = v186[4];
                goto LABEL_191;
              }

              v197 = 0;
              v309.i64[0] = v196;
              do
              {
                v199 = (v196 + 48 * v197);
                v200 = *v199;
                v201 = v199[4];
                v202 = v186[9];
                if (v202)
                {
                  v203 = v200 == v202;
                }

                else
                {
                  v203 = 0;
                }

                if (v203)
                {
                  goto LABEL_163;
                }

                v204 = v321;
                if (!v321[11])
                {
                  goto LABEL_163;
                }

                v205 = v199[2];
                v206 = v321[9];
                if (v206 >= 0x10)
                {
                  v207 = (v321 + v321[8] + 41);
                  v208 = v206 >> 4;
                  v209 = v321 + 41;
                  while (*v207 != v200)
                  {
                    ++v209;
                    v207 += 2;
                    if (!--v208)
                    {
                      goto LABEL_179;
                    }
                  }

                  v210 = v209[v321[10]];
                  v103 = v210 > 5;
                  v211 = (1 << v210) & 0x23;
                  if (v103 || v211 == 0)
                  {
LABEL_163:

                    v201(v198);

                    goto LABEL_164;
                  }
                }

LABEL_179:
                v300.i64[0] = v321 + 41;
                if (swift_conformsToProtocol2() && v205)
                {
                  v299.i64[0] = v205;
                  if (sub_1AF5FC8D8(v205))
                  {
                    goto LABEL_163;
                  }

                  v213 = v204[9];
                  if (v213 < 0x10)
                  {
                    goto LABEL_163;
                  }

                  v214 = (v300.i64[0] + v204[8]);
                  v215 = 16 * (v213 >> 4);
                  while (*v214 != v299.i64[0])
                  {
                    v214 += 2;
                    v215 -= 16;
                    if (!v215)
                    {
                      goto LABEL_163;
                    }
                  }
                }

LABEL_164:
                ++v197;
                v186 = v311.i64[0];
                v196 = v309.i64[0];
              }

              while (v197 != v310.i64[0]);
              v216 = *(v311.i64[0] + 56);
              v196 = *(v311.i64[0] + 48);
              v217 = *(v311.i64[0] + 32);
              if (*(v311.i64[0] + 64) >= 1)
              {
                v218 = *(v311.i64[0] + 48);
                swift_arrayDestroy();
                v196 = v218;
              }

              v191 = v298.i64[0];
LABEL_191:
              v219 = v292;
              ecs_stack_allocator_deallocate(v217, v196, 48 * v216);
              v220 = v293;
              *(v186 + 3) = v294;
              *(v186 + 4) = v220;
              v186[10] = v219;
              if (!*(v186[13] + 16))
              {
                goto LABEL_202;
              }

              sub_1AF62F348(v221, v191);

              v222 = swift_isUniquelyReferenced_nonNull_native();
              v223 = v186[13];
              if (v222)
              {
                v224 = v223[2];
                v225 = swift_isUniquelyReferenced_nonNull_native();
                v186[13] = v223;
                if ((v225 & 1) == 0)
                {
                  v223 = sub_1AF420EA0(0, v224, 1, v223);
                  v186[13] = v223;
                }

                sub_1AF43A540(0);
                swift_arrayDestroy();
                if (v224)
                {
                  v226 = v223[2] - v224;
                  memmove(v223 + 4, &v223[9 * v224 + 4], 72 * v226);
                  v223[2] = v226;
                  v186 = v311.i64[0];
                }

                v186[13] = v223;
              }

              else
              {
                v227 = MEMORY[0x1E69E7CC0];
                if (v223[3] >= 2uLL)
                {
                  sub_1AF6C0CEC(0, &qword_1ED7269C0, sub_1AF43A540);
                  v227 = swift_allocObject();
                  v228 = j__malloc_size_0(v227);
                  v227[2] = 0;
                  v227[3] = 2 * ((v228 - 32) / 72);
                }

                v186[13] = v227;
              }

              v191 = v298.i64[0];
              if (*(v186[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
              {
                v230 = *(v298.i64[0] + 256);
                v300.i64[0] = *(v298.i64[0] + 232);
                v231 = v300.i64[0] - v230;
                if (v300.i64[0] == v230)
                {
                  v232 = *(v298.i64[0] + 240);
                }

                else
                {
                  v299.i64[0] = v298.i64[0] + 232;
                  v309.i64[0] = v230;
                  v233 = *(v298.i64[0] + 56);
                  v234 = *(v233 + 16);
                  if (v234)
                  {
                    v235 = *(v298.i64[0] + 48);
                    v236 = *(v298.i64[0] + 64);
                    v310.i64[0] = *(v298.i64[0] + 128);
                    *&v293 = v235;

                    swift_retain_n();
                    v292 = v236;

                    *&v294 = v233;
                    v237 = (v233 + 56);
                    v238 = v309.i64[0];
                    do
                    {
                      sub_1AF640BC8(v310.i64[0] + *(v237 - 1) * v238 + *v237, v231);
                      v237 += 5;
                      --v234;
                    }

                    while (v234);

                    v191 = v298.i64[0];
                  }

                  if ((*(v191 + 184) & 1) == 0)
                  {
                    *&v293 = *(v191 + 168);
                    v239 = *(v191 + 16);
                    v240 = *(v239 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                    os_unfair_lock_lock(v240);

                    v241 = OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex;
                    v310.i64[0] = OBJC_IVAR____TtC3VFX13EntityManager_entityCount;
                    v242 = *(v239 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
                    *&v294 = v309.i64[0] + *(v239 + OBJC_IVAR____TtC3VFX13EntityManager_entityCount);
                    v243 = *(v239 + OBJC_IVAR____TtC3VFX13EntityManager_firstFreeIndex);

                    v244 = (v293 + 4 * v309.i64[0]);
                    do
                    {
                      v245 = *v244++;
                      v246 = (v242 + 12 * v245);
                      *v246 = v243;
                      v246[1] = -1;
                      ++v246[2];
                      *(v239 + v241) = v245;
                      v243 = v245;
                      --v231;
                    }

                    while (v231);
                    *(v239 + v310.i64[0]) = v294 - v300.i64[0];

                    v247 = *(v239 + OBJC_IVAR____TtC3VFX13EntityManager_lock + 24);

                    os_unfair_lock_unlock(v247);

                    v191 = v298.i64[0];
                  }

                  v248 = *(v191 + 192);
                  if (v248)
                  {
                    v249 = *(v191 + 208);
                    v310.i64[0] = *(v191 + 216);
                    v250 = v309.i64[0];
                    v251 = v300.i64[0];
                    sub_1AF75D364(v309.i64[0], v300.i64[0], v248);
                    sub_1AF75D364(v250, v251, v249);
                  }

                  v230 = *(v191 + 232);
                  v232 = *(v191 + 240);
                  if (v232 == v230)
                  {
                    v232 = 0;
                    v230 = 0;
                    v252 = v299.i64[0];
                    *v299.i64[0] = 0;
                    *(v252 + 8) = 0;
                  }
                }

                v229 = v295;
                *(v191 + 248) = v232;
                *(v191 + 256) = v230;
              }

              else
              {
LABEL_202:
                v229 = v295;
              }

              ecs_stack_allocator_pop_snapshot(v296);
              if (v297)
              {
                os_unfair_lock_unlock(*(v191 + 344));
                os_unfair_lock_unlock(*(v191 + 376));
              }

              v177 = v229 + 1;
            }

            while (v177 != v288);
          }
        }

        sub_1AFB53B70(&v371, &qword_1ED725EA0, &type metadata for QueryResult);
      }

      v150 = v290;
      v146 = v289;
      v148 = v259;
      v149 = v260;
      v144 = v307;
      v147 = v306;
      if (v153 == 1)
      {
LABEL_239:
        v23 = v270;
        goto LABEL_240;
      }
    }
  }

  sub_1AFB53A80(v316, sub_1AFB53AE0);
}

uint64_t sub_1AFB53A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFB53AE0()
{
  if (!qword_1EB642B58)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = &type metadata for ForceField;
    v4[1] = &type metadata for ForceFieldRuntime;
    v4[2] = &type metadata for WorldTransform;
    v4[3] = &off_1F2560F10;
    v4[4] = &off_1F2560FC0;
    v4[5] = &off_1F2529FC0;
    v2 = type metadata accessor for Query3(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EB642B58);
    }
  }
}

uint64_t sub_1AFB53B70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFB54454(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForceField_LEGACY(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField_LEGACY(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFB53CD0()
{
  result = qword_1EB642B60;
  if (!qword_1EB642B60)
  {
    result = swift_getWitnessTable(asc_1AFE9BF0C, &type metadata for ForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B60);
  }

  return result;
}

unint64_t sub_1AFB53D28()
{
  result = qword_1EB642B68;
  if (!qword_1EB642B68)
  {
    result = swift_getWitnessTable(asc_1AFE9C024, &type metadata for ParticleForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B68);
  }

  return result;
}

unint64_t sub_1AFB53D80()
{
  result = qword_1EB642B70;
  if (!qword_1EB642B70)
  {
    result = swift_getWitnessTable(byte_1AFE9BF5C, &type metadata for ParticleForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B70);
  }

  return result;
}

unint64_t sub_1AFB53DD8()
{
  result = qword_1EB642B78;
  if (!qword_1EB642B78)
  {
    result = swift_getWitnessTable(byte_1AFE9BF84, &type metadata for ParticleForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B78);
  }

  return result;
}

unint64_t sub_1AFB53E30()
{
  result = qword_1EB642B80;
  if (!qword_1EB642B80)
  {
    result = swift_getWitnessTable(byte_1AFE9BE44, &type metadata for ForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B80);
  }

  return result;
}

unint64_t sub_1AFB53E88()
{
  result = qword_1EB642B88;
  if (!qword_1EB642B88)
  {
    result = swift_getWitnessTable(byte_1AFE9BE6C, &type metadata for ForceField.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B88);
  }

  return result;
}

void sub_1AFB53EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AFB53F44()
{
  result = qword_1EB642B98;
  if (!qword_1EB642B98)
  {
    result = swift_getWitnessTable(byte_1AFE9C5B4, &type metadata for ForceField_LEGACY.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642B98);
  }

  return result;
}

unint64_t sub_1AFB53F98()
{
  result = qword_1EB642BA0;
  if (!qword_1EB642BA0)
  {
    result = swift_getWitnessTable(byte_1AFE9C58C, &type metadata for ForceField_LEGACY.Kind, v0, v1);
    atomic_store(result, &qword_1EB642BA0);
  }

  return result;
}

unint64_t sub_1AFB53FEC()
{
  result = qword_1EB642BA8;
  if (!qword_1EB642BA8)
  {
    result = swift_getWitnessTable(asc_1AFE9C564, &type metadata for ForceField_LEGACY.Direction, v0, v1);
    atomic_store(result, &qword_1EB642BA8);
  }

  return result;
}

unint64_t sub_1AFB54040()
{
  result = qword_1EB642BB0;
  if (!qword_1EB642BB0)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for ForceField_LEGACY.FallOff, v0, v1);
    atomic_store(result, &qword_1EB642BB0);
  }

  return result;
}

unint64_t sub_1AFB54094()
{
  result = qword_1ED7231A0;
  if (!qword_1ED7231A0)
  {
    v4[1] = v0;
    v4[2] = v1;
    sub_1AFA3B754(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    v4[0] = MEMORY[0x1E69E6478];
    result = swift_getWitnessTable(MEMORY[0x1E69E66E0], v3, v4);
    atomic_store(result, &qword_1ED7231A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ForceField_LEGACY.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ForceField_LEGACY.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AFB542E0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1AFB54454(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFB54348()
{
  result = qword_1EB642BC8;
  if (!qword_1EB642BC8)
  {
    result = swift_getWitnessTable(asc_1AFE9C224, &type metadata for ForceField_LEGACY.Kind, v0, v1);
    atomic_store(result, &qword_1EB642BC8);
  }

  return result;
}

unint64_t sub_1AFB543D0()
{
  result = qword_1EB642BE0;
  if (!qword_1EB642BE0)
  {
    result = swift_getWitnessTable(asc_1AFE9C324, &type metadata for ForceField_LEGACY.Direction, v0, v1);
    atomic_store(result, &qword_1EB642BE0);
  }

  return result;
}

void sub_1AFB54454(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AFB544A8()
{
  result = qword_1EB642BF8;
  if (!qword_1EB642BF8)
  {
    result = swift_getWitnessTable(asc_1AFE9C424, &type metadata for ForceField_LEGACY.FallOff, v0, v1);
    atomic_store(result, &qword_1EB642BF8);
  }

  return result;
}

unint64_t sub_1AFB54500()
{
  result = qword_1EB642C00;
  if (!qword_1EB642C00)
  {
    result = swift_getWitnessTable(a5_1, &type metadata for ForceField_LEGACY.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642C00);
  }

  return result;
}

unint64_t sub_1AFB54558()
{
  result = qword_1EB642C08;
  if (!qword_1EB642C08)
  {
    result = swift_getWitnessTable(byte_1AFE9C44C, &type metadata for ForceField_LEGACY.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642C08);
  }

  return result;
}

unint64_t sub_1AFB545B0()
{
  result = qword_1EB642C10;
  if (!qword_1EB642C10)
  {
    result = swift_getWitnessTable(byte_1AFE9C474, &type metadata for ForceField_LEGACY.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB642C10);
  }

  return result;
}

unint64_t sub_1AFB54604()
{
  result = qword_1EB642C18;
  if (!qword_1EB642C18)
  {
    result = swift_getWitnessTable(byte_1AFE9C1AC, &type metadata for ForceField_LEGACY.Kind, v0, v1);
    atomic_store(result, &qword_1EB642C18);
  }

  return result;
}

unint64_t sub_1AFB54658()
{
  result = qword_1EB642C20;
  if (!qword_1EB642C20)
  {
    result = swift_getWitnessTable(byte_1AFE9C2AC, &type metadata for ForceField_LEGACY.Direction, v0, v1);
    atomic_store(result, &qword_1EB642C20);
  }

  return result;
}

unint64_t sub_1AFB546AC()
{
  result = qword_1EB642C28;
  if (!qword_1EB642C28)
  {
    result = swift_getWitnessTable(byte_1AFE9C3AC, &type metadata for ForceField_LEGACY.FallOff, v0, v1);
    atomic_store(result, &qword_1EB642C28);
  }

  return result;
}

void sub_1AFB5470C(unint64_t a1, id a2, void *a3)
{
  v7 = [a2 supportsFamily_];
  if (a1 >> 62)
  {
    v55 = v7;
    v8 = sub_1AFDFE108();
    v7 = v55;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v57 = v3;
  v56 = v7;
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v11 = MEMORY[0x1B2719C70](v9, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if (![v11 index])
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v8 == ++v9)
    {
      goto LABEL_20;
    }
  }

  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {
LABEL_39:
      sub_1AFDFE218();
      sub_1AFDFEDD8();
      MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF38D60);
      sub_1AFB57470();
      swift_allocError();
      *v49 = 0;
      v49[1] = 0xE000000000000000;
      swift_willThrow();
LABEL_44:
      swift_unknownObjectRelease();
      return;
    }

    v13 = v12;
    v14 = [a2 newArgumentEncoderWithBufferBinding_];
    if ([v14 encodedLength] < 1 || (objc_msgSend(v14, sel_setArgumentBuffer_offset_, a3, 0), v15 = objc_msgSend(v14, sel_constantDataAtIndex_, 0), v16 = objc_msgSend(swift_unknownObjectRetain(), sel_contents), v17 = a3, v18 = v15 - v16, v18 < 0))
    {
      v19 = 0;
    }

    else if (v18 >= [a3 length])
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    swift_getObjectType();
    v47 = [v13 bufferStructType];
    if (!v47)
    {
      sub_1AFDFE218();
      sub_1AFDFEDD8();
      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38D80);
      sub_1AFB57470();
      swift_allocError();
      *v54 = 0;
      v54[1] = 0xE000000000000000;
      swift_willThrow();
      swift_unknownObjectRelease();
      goto LABEL_44;
    }

    v48 = v47;
    sub_1AFB58670(29796, 0xE200000000000000, v19, 4, v47);
    if (v57)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return;
    }

    sub_1AFB58670(1701669236, 0xE400000000000000, (v19 + 4), 4, v48);
    sub_1AFB58E88(7103081, 0xE300000000000000, 10, 0xD0, 8, v48, v56);
    sub_1AFB58E88(0x70616D5F727276, 0xE700000000000000, 12, 0, 0x18, v48, v56);
    sub_1AFB58A60(0x6E61696461727269, 0xEA00000000006563, 20, 0x20, v48, v56);
    sub_1AFB58A60(0x65636E6169646172, 0xE800000000000000, 21, 0x28, v48, v56);
    sub_1AFB58A60(0x54554C66647262, 0xE700000000000000, 22, 0x30, v48, v56);
    sub_1AFB58A60(0x614D776F64616873, 0xE900000000000070, 23, 0x38, v48, v56);
    sub_1AFB58A60(0x7865546F617373, 0xE700000000000000, 24, 0x40, v48, v56);
    sub_1AFB58E88(0x696E556C65786F76, 0xE800000000000000, 33, 0x60, 0x48, v48, v56);
    sub_1AFB58A60(0x7865547474616373, 0xE800000000000000, 34, 0x50, v48, v56);
    v20 = 0;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_20:
    v20 = v3;
  }

  v21 = 0;
  while (1)
  {
    if (v10)
    {
      v22 = MEMORY[0x1B2719C70](v21, a1);
    }

    else
    {
      v22 = *(a1 + 8 * v21 + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    if ([v22 index] == 1)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v8 == ++v21)
    {
      return;
    }
  }

  v23 = swift_dynamicCastObjCProtocolConditional();
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = v23;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v25 = [v24 bufferStructType];
  if (v25)
  {
    v26 = v25;
    if ([v24 bufferDataSize] == 1152)
    {
      KeyPath = swift_getKeyPath();
      sub_1AFB5936C(0xD000000000000011, 0x80000001AFF48DE0, KeyPath, v26);
      if (!v20)
      {

        v28 = swift_getKeyPath();
        sub_1AFB5936C(0xD000000000000011, 0x80000001AFF48E00, v28, v26);

        v29 = swift_getKeyPath();
        sub_1AFB5936C(0x6F72665F6A6F7270, 0xEE00776569765F6DLL, v29, v26);

        v30 = swift_getKeyPath();
        sub_1AFB5936C(0x6F72665F77656976, 0xEE006A6F72705F6DLL, v30, v26);

        v31 = swift_getKeyPath();
        sub_1AFB5A9C4(0x6D61635F73777263, 0xEF736F705F617265, v31, v26);

        v32 = swift_getKeyPath();
        sub_1AFB597E4(0xD00000000000001BLL, 0x80000001AFF48E20, v32, v26);

        v33 = swift_getKeyPath();
        sub_1AFB597E4(0xD00000000000001DLL, 0x80000001AFF48E40, v33, v26);

        v34 = swift_getKeyPath();
        sub_1AFB5936C(0xD000000000000012, 0x80000001AFF48E60, v34, v26);

        v35 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000016, 0x80000001AFF48E80, v35, v26);

        v36 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000010, 0x80000001AFF48EA0, v36, v26);

        v37 = swift_getKeyPath();
        sub_1AFB5A0D4(0x74726F7077656976, 0xED0000746E756F43, v37, v26);

        v38 = swift_getKeyPath();
        sub_1AFB5A0D4(0xD000000000000016, 0x80000001AFF48EC0, v38, v26);

        v39 = swift_getKeyPath();
        sub_1AFB59C5C(0x536D6F724663646ELL, 0xED00006E65657263, v39, v26);

        v40 = swift_getKeyPath();
        sub_1AFB5A54C(0x7261467261656ELL, 0xE700000000000000, v40, v26);

        v41 = swift_getKeyPath();
        sub_1AFB5A54C(0xD000000000000014, 0x80000001AFF48EE0, v41, v26);

        v42 = swift_getKeyPath();
        sub_1AFB5A0D4(0x6361704F65646166, 0xEB00000000797469, v42, v26);

        v43 = swift_getKeyPath();
        sub_1AFB5A54C(0xD000000000000029, 0x80000001AFF48F00, v43, v26);

        v44 = swift_getKeyPath();
        sub_1AFB5A9C4(0xD000000000000017, 0x80000001AFF48F30, v44, v26);

        v45 = swift_getKeyPath();
        sub_1AFB5A9C4(0xD000000000000011, 0x80000001AFF48F50, v45, v26);

        v46 = swift_getKeyPath();
        sub_1AFB59C5C(0xD000000000000010, 0x80000001AFF48F70, v46, v26);
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
      sub_1AFDFE218();

      [v24 bufferDataSize];
      v51 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v51);

      MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
      v52 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v52);

      sub_1AFB57470();
      swift_allocError();
      *v53 = 0xD000000000000020;
      v53[1] = 0x80000001AFF48DB0;
      swift_willThrow();
      swift_unknownObjectRelease_n();
    }
  }

  else
  {
    sub_1AFDFE218();
    sub_1AFDFEDD8();
    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF38D80);
    sub_1AFB57470();
    swift_allocError();
    *v50 = 0;
    v50[1] = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease_n();
  }
}

void sub_1AFB55538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v108[2] = *MEMORY[0x1E69E9840];
  if (((*(a2 + 393) & 1) != 0 || (*(a2 + 395) & 1) != 0 || *(a2 + 396) == 1) && !*(a1 + 1528))
  {
    v12 = sub_1AF42680C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = v12[2];
    v13 = v12[3];
    v15 = v13 >> 1;
    v16 = v14 + 1;
    v106 = a3;
    if (v13 >> 1 <= v14)
    {
      v12 = sub_1AF42680C(v13 > 1, v14 + 1, 1, v12);
      v13 = v12[3];
      v15 = v13 >> 1;
    }

    v12[2] = v16;
    v17 = &v12[6 * v14];
    *(v17 + 32) = 8;
    strcpy(v17 + 40, "viewportCount");
    *(v17 + 27) = -4864;
    *(v17 + 7) = xmmword_1AFE9C660;
    *(v17 + 72) = 1;
    v18 = v14 + 2;
    if (v15 < (v14 + 2))
    {
      v12 = sub_1AF42680C(v13 > 1, v14 + 2, 1, v12);
    }

    v12[2] = v18;
    v19 = &v12[6 * v16];
    *(v19 + 32) = 8;
    v19[5] = 0xD000000000000012;
    v19[6] = 0x80000001AFF49170;
    *(v19 + 7) = xmmword_1AFE9C670;
    *(v19 + 72) = 1;
    v20 = v12[3];
    v21 = v14 + 3;
    if ((v14 + 3) > (v20 >> 1))
    {
      v12 = sub_1AF42680C(v20 > 1, v14 + 3, 1, v12);
    }

    v12[2] = v21;
    v22 = &v12[6 * v18];
    *(v22 + 32) = 8;
    v22[5] = 0xD000000000000012;
    v22[6] = 0x80000001AFF49190;
    *(v22 + 7) = vdupq_n_s64(0x80uLL);
    *(v22 + 72) = 1;
    v23 = v12[3];
    v24 = v14 + 4;
    if ((v14 + 4) > (v23 >> 1))
    {
      v12 = sub_1AF42680C(v23 > 1, v14 + 4, 1, v12);
    }

    v12[2] = v24;
    v25 = &v12[6 * v21];
    *(v25 + 32) = 8;
    v25[5] = 0x72506F5477656976;
    v25[6] = 0xEF79617272416A6FLL;
    *(v25 + 7) = xmmword_1AFE9C680;
    *(v25 + 72) = 1;
    v26 = v12[3];
    v27 = v14 + 5;
    if ((v14 + 5) > (v26 >> 1))
    {
      v12 = sub_1AF42680C(v26 > 1, v14 + 5, 1, v12);
    }

    v12[2] = v27;
    v28 = &v12[6 * v24];
    *(v28 + 32) = 8;
    v28[5] = 0x69566F546A6F7270;
    v28[6] = 0xEF79617272417765;
    *(v28 + 7) = xmmword_1AFE9C690;
    *(v28 + 72) = 1;
    v29 = v12[3];
    v30 = v14 + 6;
    if ((v14 + 6) > (v29 >> 1))
    {
      v12 = sub_1AF42680C(v29 > 1, v14 + 6, 1, v12);
    }

    v12[2] = v30;
    v31 = &v12[6 * v27];
    *(v31 + 32) = 8;
    v31[5] = 0xD000000000000017;
    v31[6] = 0x80000001AFF491B0;
    *(v31 + 7) = xmmword_1AFE9C6A0;
    *(v31 + 72) = 1;
    v32 = v12[3];
    v33 = v14 + 7;
    if ((v14 + 7) > (v32 >> 1))
    {
      v12 = sub_1AF42680C(v32 > 1, v14 + 7, 1, v12);
    }

    v12[2] = v33;
    v34 = &v12[6 * v30];
    *(v34 + 32) = 8;
    v34[5] = 0xD000000000000016;
    v34[6] = 0x80000001AFF48EC0;
    *(v34 + 7) = xmmword_1AFE9C6B0;
    *(v34 + 72) = 1;
    v35 = v12[3];
    v36 = v14 + 8;
    if ((v14 + 8) > (v35 >> 1))
    {
      v12 = sub_1AF42680C(v35 > 1, v14 + 8, 1, v12);
    }

    v12[2] = v36;
    v37 = &v12[6 * v33];
    *(v37 + 32) = 8;
    v37[5] = 0xD000000000000010;
    v37[6] = 0x80000001AFF48EA0;
    *(v37 + 7) = xmmword_1AFE9C6C0;
    *(v37 + 72) = 1;
    v38 = v12[3];
    v39 = v14 + 9;
    if ((v14 + 9) > (v38 >> 1))
    {
      v12 = sub_1AF42680C(v38 > 1, v14 + 9, 1, v12);
    }

    v12[2] = v39;
    v40 = &v12[6 * v36];
    *(v40 + 32) = 8;
    v40[5] = 0xD000000000000015;
    v40[6] = 0x80000001AFF491D0;
    *(v40 + 7) = xmmword_1AFE9C6D0;
    *(v40 + 72) = 1;
    v41 = v12[3];
    v42 = v14 + 10;
    if ((v14 + 10) > (v41 >> 1))
    {
      v12 = sub_1AF42680C(v41 > 1, v14 + 10, 1, v12);
    }

    v12[2] = v42;
    v43 = &v12[6 * v39];
    *(v43 + 32) = 8;
    v43[5] = 0xD000000000000029;
    v43[6] = 0x80000001AFF48F00;
    *(v43 + 7) = xmmword_1AFE9C6E0;
    *(v43 + 72) = 1;
    v44 = v12[3];
    v45 = v14 + 11;
    if ((v14 + 11) > (v44 >> 1))
    {
      v12 = sub_1AF42680C(v44 > 1, v14 + 11, 1, v12);
    }

    v12[2] = v45;
    v46 = &v12[6 * v42];
    *(v46 + 32) = 8;
    v46[5] = 0xD000000000000017;
    v46[6] = 0x80000001AFF48F30;
    *(v46 + 7) = xmmword_1AFE9C6F0;
    *(v46 + 72) = 1;
    v47 = v12[3];
    v48 = v14 + 12;
    if ((v14 + 12) > (v47 >> 1))
    {
      v12 = sub_1AF42680C(v47 > 1, v14 + 12, 1, v12);
    }

    v12[2] = v48;
    v49 = &v12[6 * v45];
    *(v49 + 32) = 8;
    v49[5] = 0xD000000000000010;
    v49[6] = 0x80000001AFF48F70;
    *(v49 + 7) = xmmword_1AFE9C700;
    *(v49 + 72) = 1;
    v50 = v12[3];
    v51 = v14 + 13;
    if ((v14 + 13) > (v50 >> 1))
    {
      v12 = sub_1AF42680C(v50 > 1, v14 + 13, 1, v12);
    }

    v12[2] = v51;
    v52 = &v12[6 * v48];
    *(v52 + 32) = 9;
    v52[5] = 0x6361704F65646166;
    v52[6] = 0xEB00000000797469;
    *(v52 + 7) = xmmword_1AFE9C710;
    *(v52 + 72) = 1;
    v53 = v12[3];
    v54 = v14 + 14;
    if ((v14 + 14) > (v53 >> 1))
    {
      v12 = sub_1AF42680C(v53 > 1, v14 + 14, 1, v12);
    }

    v12[2] = v54;
    v55 = &v12[6 * v51];
    *(v55 + 32) = 1;
    v55[5] = 0xD000000000000015;
    v55[6] = 0x80000001AFF491F0;
    *(v55 + 7) = xmmword_1AFE9C720;
    *(v55 + 72) = 1;
    v56 = v12[3];
    v57 = v14 + 15;
    if ((v14 + 15) > (v56 >> 1))
    {
      v12 = sub_1AF42680C(v56 > 1, v14 + 15, 1, v12);
    }

    v12[2] = v57;
    v58 = &v12[6 * v54];
    *(v58 + 32) = 1;
    v58[5] = 0xD000000000000015;
    v58[6] = 0x80000001AFF491F0;
    *(v58 + 7) = xmmword_1AFE9C730;
    *(v58 + 72) = 3;
    v59 = v12[3];
    v60 = v14 + 16;
    if ((v14 + 16) > (v59 >> 1))
    {
      v12 = sub_1AF42680C(v59 > 1, v14 + 16, 1, v12);
    }

    v12[2] = v60;
    v61 = &v12[6 * v57];
    *(v61 + 32) = 9;
    v61[5] = 0xD000000000000012;
    v61[6] = 0x80000001AFF49210;
    *(v61 + 7) = xmmword_1AFE9C740;
    *(v61 + 72) = 2;
    v62 = v12[3];
    v63 = v14 + 17;
    if ((v14 + 17) > (v62 >> 1))
    {
      v12 = sub_1AF42680C(v62 > 1, v14 + 17, 1, v12);
    }

    v12[2] = v63;
    v64 = &v12[6 * v60];
    *(v64 + 32) = 9;
    v64[5] = 0x6361704F65646166;
    v64[6] = 0xEB00000000797469;
    *(v64 + 7) = vdupq_n_s64(4uLL);
    *(v64 + 72) = 2;
    v65 = v12[3];
    v66 = v14 + 18;
    if ((v14 + 18) > (v65 >> 1))
    {
      v12 = sub_1AF42680C(v65 > 1, v14 + 18, 1, v12);
    }

    v12[2] = v66;
    v67 = &v12[6 * v63];
    *(v67 + 32) = 9;
    v67[5] = 0xD000000000000012;
    v67[6] = 0x80000001AFF49230;
    *(v67 + 7) = xmmword_1AFE9C750;
    *(v67 + 72) = 2;
    v68 = v12[3];
    v69 = v14 + 19;
    if ((v14 + 19) > (v68 >> 1))
    {
      v12 = sub_1AF42680C(v68 > 1, v14 + 19, 1, v12);
    }

    v12[2] = v69;
    v70 = &v12[6 * v66];
    *(v70 + 32) = 9;
    v70[5] = 0xD000000000000017;
    v70[6] = 0x80000001AFF49250;
    *(v70 + 7) = xmmword_1AFE9C760;
    *(v70 + 72) = 2;
    v71 = v12[3];
    v72 = v14 + 20;
    if ((v14 + 20) > (v71 >> 1))
    {
      v12 = sub_1AF42680C(v71 > 1, v14 + 20, 1, v12);
    }

    a6 = a6;
    v12[2] = v72;
    v73 = &v12[6 * v69];
    *(v73 + 32) = 9;
    v73[5] = 0xD000000000000019;
    v73[6] = 0x80000001AFF49270;
    *(v73 + 7) = xmmword_1AFE9C770;
    *(v73 + 72) = 2;
    v74 = v12[3];
    v75 = v14 + 21;
    if ((v14 + 21) > (v74 >> 1))
    {
      v12 = sub_1AF42680C(v74 > 1, v14 + 21, 1, v12);
    }

    v12[2] = v75;
    v76 = &v12[6 * v72];
    *(v76 + 32) = 9;
    v76[5] = 0x6C506C6174726F70;
    v76[6] = 0xEB00000000656E61;
    *(v76 + 7) = vdupq_n_s64(0x10uLL);
    *(v76 + 72) = 2;
    v77 = v12[3];
    if ((v14 + 22) > (v77 >> 1))
    {
      v12 = sub_1AF42680C(v77 > 1, v14 + 22, 1, v12);
    }

    v12[2] = v14 + 22;
    v78 = &v12[6 * v75];
    *(v78 + 32) = 9;
    v78[5] = 0xD000000000000019;
    v78[6] = 0x80000001AFF49290;
    *(v78 + 7) = xmmword_1AFE9C780;
    *(v78 + 72) = 2;
    *(a1 + 1528) = v12;
    a3 = v106;
    v7 = a5;
  }

  sub_1AFB56474(a2);
  *(a1 + 1272) = *(a1 + 8);
  v79 = sub_1AF5B47A0(a4, v7, a6);
  v81 = v80;
  if (v7)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v83 = sub_1AF130FD8(Strong);

  if (v83)
  {
    v108[1] = &unk_1F2629960;
    v84 = swift_dynamicCastObjCProtocolConditional();
    if (!v84)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v84 = 0;
  }

  if (qword_1ED72AB78 != -1)
  {
    swift_once();
  }

  if (byte_1ED73B6A0 == 1)
  {
    v85 = *(a1 + 1288);
    if (!v85)
    {
      goto LABEL_81;
    }

    swift_getObjectType();
    v86 = [swift_unknownObjectRetain() encodedLength];
    CFXBufferAllocatorPerFrameAllocateWithLength(*(a2 + 232), v86);
    *(a1 + 1256) = v87;
    *(a1 + 1264) = v88;
    sub_1AF471B58(v87, v88, 0);
    *[v85 constantDataAtIndex_] = *(a1 + 1272);
    if (*(a2 + 393))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v107 = a3;
      sub_1AF471CAC(v84, 24);
      v91 = swift_unknownObjectRetain();
      sub_1AF471CAC(v91, 20);
      swift_unknownObjectRelease();
      v92 = swift_unknownObjectRetain();
      sub_1AF471CAC(v92, 21);
      swift_unknownObjectRelease();
      v93 = sub_1AF7181D8();
      sub_1AF471CAC(v93, 22);
      sub_1AF8932F0(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1AFE55130;
      *(v94 + 32) = v79;
      *(v94 + 40) = v81;
      *(v94 + 48) = v93;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      *(a1 + 1280) = v94;
      if (v84)
      {
        v96 = swift_unknownObjectRetain();
        MEMORY[0x1B2718E00](v96);
        if (*((*(a1 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 1280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AFDFD458();
        }

        v95 = sub_1AFDFD4B8();
      }

      MEMORY[0x1EEE9AC00](v95);
      v97 = *(v107 + 184);
      MEMORY[0x1EEE9AC00](v98);

      sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v97, sub_1AFB49B48);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v89 = *(a2 + 232);
    v108[0] = *(a1 + 1272);
    *(a1 + 1256) = CFXBufferAllocatorPerFrameAllocateWithBytes(v89, v108, 8uLL);
    *(a1 + 1264) = v90;
  }

  v99 = (a1 + 1232);
  *(a1 + 1240) = 0u;
  v100 = *(a1 + 1232);
  if ((v100 & 0x8000000000000000) == 0 && (v100 & 0x4000000000000000) == 0)
  {
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v100 = *v99;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v100 >> 62)
      {
        v102 = sub_1AFDFE108();
      }

      else
      {
        v102 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF64E3CC(0, v102);
      if ((*(a2 + 393) & 1) == 0)
      {
        goto LABEL_81;
      }

LABEL_80:
      *(a1 + 1328) = 0;
      *(a1 + 1344) = 0u;
      *(a1 + 1360) = 0u;
      *(a1 + 1328) = *(a1 + 1536);
      sub_1AFB579B4(a1 + 1312);
      sub_1AFB57B2C(a1 + 1400, v104);
      goto LABEL_81;
    }
  }

  if (v100 >> 62)
  {
    sub_1AFDFE108();
    sub_1AFDFE108();
    sub_1AFDFE108();
  }

  v103 = sub_1AFC892CC();

  *v99 = v103;
  if (*(a2 + 393))
  {
    goto LABEL_80;
  }

LABEL_81:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}