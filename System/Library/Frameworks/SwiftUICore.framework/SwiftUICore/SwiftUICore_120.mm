uint64_t assignWithTake for PlatformItemTraitWriter.AddTrait(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
LABEL_4:
    v6 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v6;
    *(a1 + 264) = *(a2 + 264);
    v7 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v7;
    v8 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v8;
    v9 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v9;
    v10 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v10;
    v11 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v11;
    v12 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v12;
    goto LABEL_21;
  }

  *(a1 + 40) = v4;

  v13 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  if (*(a1 + 192) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 192) >> 1 != 4294967294)
  {
    v20 = *(a1 + 72);
    if (v20 != 255)
    {
      v21 = *(a2 + 72);
      if (v21 != 255)
      {
        v22 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v21;
        outlined consume of GraphicsImage.Contents(v22, v20);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 64);
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
LABEL_14:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    v23 = *(a1 + 192);
    *(a1 + 170) = *(a2 + 170);
    if (v23 >> 1 != 0xFFFFFFFF)
    {
      v24 = *(a2 + 192);
      if (v24 >> 1 != 0xFFFFFFFF)
      {
        v26 = *(a2 + 200);
        v27 = *(a1 + 176);
        v28 = *(a1 + 184);
        v29 = *(a1 + 200);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v24;
        *(a1 + 200) = v26;
        outlined consume of AccessibilityImageLabel(v27, v28, v23, v29);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 176);
    }

    v25 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v25;
LABEL_19:
    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v30 = *(a1 + 240);
    *(a1 + 240) = *(a2 + 240);

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 64);
LABEL_8:
  v15 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v16 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  v17 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v17;
  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
  v19 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v19;
LABEL_20:
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

LABEL_21:
  *(a1 + 280) = *(a2 + 280);

  if (*(a1 + 312) == 1)
  {
LABEL_24:
    v32 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v32;
    goto LABEL_26;
  }

  v31 = *(a2 + 312);
  if (v31 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    goto LABEL_24;
  }

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = v31;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 616))
  {
    if (*(a2 + 616))
    {
      v33 = *(a2 + 344);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = v33;

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      v34 = *(a1 + 424);
      if (v34 != 1)
      {
        v35 = *(a2 + 424);
        if (v35 != 1)
        {
          if (v34)
          {
            v37 = (a1 + 400);
            if (v35)
            {
              __swift_destroy_boxed_opaque_existential_1(v37);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v37);
            }
          }

          v38 = *(a2 + 416);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v38;
          v39 = *(a2 + 440);
          *(a1 + 432) = *(a2 + 432);
          *(a1 + 440) = v39;

LABEL_39:
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          if (*(a1 + 576) != 1)
          {
            v40 = *(a2 + 576);
            if (v40 != 1)
            {
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              v45 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v45;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = v40;

              *(a1 + 584) = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 608) = *(a2 + 608);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
          }

          v41 = *(a2 + 576);
          *(a1 + 560) = *(a2 + 560);
          *(a1 + 576) = v41;
          *(a1 + 592) = *(a2 + 592);
          *(a1 + 608) = *(a2 + 608);
          v42 = *(a2 + 512);
          *(a1 + 496) = *(a2 + 496);
          *(a1 + 512) = v42;
          v43 = *(a2 + 544);
          *(a1 + 528) = *(a2 + 528);
          *(a1 + 544) = v43;
          v44 = *(a2 + 480);
          *(a1 + 464) = *(a2 + 464);
          *(a1 + 480) = v44;
LABEL_44:
          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 400);
      }

      v36 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v36;
      *(a1 + 432) = *(a2 + 432);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
  }

  memcpy((a1 + 336), (a2 + 336), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemTraitWriter.AddTrait(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 633))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemTraitWriter.AddTrait(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 632) = 0;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 633) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 633) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PlatformItemsReader.Child(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for PlatformItemsReader.Child(_DWORD *a1, int *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && (*(v6 + 80) & 0x100000) == 0 && ((-9 - v7) | v7) - *(*(AssociatedTypeWitness - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *a2;
    v11 = a2 + 7;
    *a1 = v12;
    v13 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v13 = *(v11 & 0xFFFFFFFFFFFFFFFCLL);
    (*(v6 + 16))((v13 + v7 + 4) & ~v7, ((v11 & 0xFFFFFFFFFFFFFFFCLL) + v7 + 4) & ~v7, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 & 0xFC ^ 0x1FC) & (v7 + 16)));
  }

  return a1;
}

uint64_t destroy for PlatformItemsReader.Child(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 8);
  v6 = (v2 + *(v4 + 80) + 4) & ~*(v4 + 80);

  return v5(v6, AssociatedTypeWitness);
}

_DWORD *initializeWithCopy for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))((v4 + *(v7 + 80) + 4) & ~*(v7 + 80), (v5 + *(v7 + 80) + 4) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithCopy for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 24))((v4 + *(v7 + 80) + 4) & ~*(v7 + 80), (v5 + *(v7 + 80) + 4) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 32))((v4 + *(v7 + 80) + 4) & ~*(v7 + 80), (v5 + *(v7 + 80) + 4) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

_DWORD *assignWithTake for PlatformItemsReader.Child(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 40))((v4 + *(v7 + 80) + 4) & ~*(v7 + 80), (v5 + *(v7 + 80) + 4) & ~*(v7 + 80), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsReader.Child(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
  }

  v9 = ((v8 + 8) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v13) + 1;
}

void storeEnumTagSinglePayload for PlatformItemsReader.Child(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v7 + 56);

  v17((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v9 + 4) & ~v9, a2);
}

void type metadata accessor for (PlatformItem, Bool)()
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlatformItem, Bool));
    }
  }
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance IgnoresAutomaticPaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(unsigned int a1@<W0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a6@<X8>)
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = *(a2 + 9);
  if ((v9 & 0x22) != 0)
  {
    v11 = *(a2 + 2);
    swift_beginAccess();
    v12 = *MEMORY[0x1E698D3F8];
    *&v84 = __PAIR64__(*(v11 + 16), a1);
    DWORD2(v84) = v12;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryLayoutComputer);
    lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>, &lazy cache variable for type metadata for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, type metadata accessor for UnaryLayoutComputer, protocol conformance descriptor for UnaryLayoutComputer<A>);
    v13 = Attribute.init<A>(body:value:flags:update:)();
    v14 = a2[1];
    v73 = *a2;
    v74 = v14;
    v15 = *(a2 + 8);
    v16 = *(a2 + 9);
    v71 = *(a2 + 40);
    v72 = *(a2 + 7);
    v53 = *(a2 + 17);
    v54 = *(a2 + 76);
    v49 = v13;
    if ((v9 & 0x20) != 0)
    {
      v32 = v13;
      v51 = v15;
      outlined init with copy of _ViewInputs(a2, &v84);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v33 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v84) = *(a2 + 18);
      *(&v84 + 4) = __PAIR64__(v32, v34);
      HIDWORD(v84) = v12;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryChildGeometry<A>, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, type metadata accessor for UnaryChildGeometry, protocol conformance descriptor for UnaryChildGeometry<A>);
      Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v35 = *(a2 + 16);
      *&v84 = __PAIR64__(AGGraphCreateOffsetAttribute2(), v35);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v18 = Attribute.init<A>(body:value:flags:update:)();
      v15 = v51 | 0x18;
      v16 = v9 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v18 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, &v84);
    }

    v36 = v9 & 2;
    v68 = v73;
    *v69 = v74;
    *&v69[16] = v15;
    *&v69[20] = v16;
    *&v70[0] = v72;
    *&v69[24] = v71;
    *(&v70[0] + 1) = __PAIR64__(v53, v18);
    LODWORD(v70[1]) = OffsetAttribute2;
    *(&v70[1] + 4) = v54;
    v65 = v73;
    v66 = v74;
    v52 = v15;
    v67 = v15;
    v58 = v71;
    *v59 = v70[0];
    *&v59[12] = *(v70 + 12);
    v75 = v73;
    v76 = v74;
    LODWORD(v77[0]) = v15;
    DWORD1(v77[0]) = v16 | 2;
    *(&v77[2] + 4) = *(v70 + 12);
    *(&v77[1] + 8) = v70[0];
    *(v77 + 8) = v71;
    *v86 = v77[0];
    *&v86[16] = v77[1];
    *&v86[32] = v77[2];
    *&v86[48] = HIDWORD(v54);
    v84 = v73;
    v85 = v74;
    outlined init with copy of _ViewInputs(&v68, &v78);
    outlined init with copy of _ViewInputs(&v68, &v78);
    v37 = outlined init with copy of _ViewInputs(&v75, &v78);
    a3(&v55, v37, &v84);
    v80 = *v86;
    v81 = *&v86[16];
    v82 = *&v86[32];
    v83 = *&v86[48];
    v78 = v84;
    v79 = v85;
    v38 = outlined destroy of _ViewInputs(&v78);
    v39 = v55;
    v41 = v56;
    v40 = v57;
    MEMORY[0x1EEE9AC00](v38);
    MEMORY[0x1EEE9AC00](v42);
    AGGraphMutateAttribute();
    v84 = v65;
    v85 = v66;
    *v86 = v67;
    *&v86[4] = v16 | 2;
    *&v86[8] = v58;
    *&v86[24] = *v59;
    *&v86[36] = *&v59[12];
    outlined destroy of _ViewInputs(&v84);
    v43 = outlined destroy of _ViewInputs(&v68);
    if ((v9 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v43);
      MEMORY[0x1EEE9AC00](v44);
      v45 = AGGraphMutateAttribute();
      MEMORY[0x1EEE9AC00](v45);
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v46);
      AGGraphMutateAttribute();
    }

    if ((v9 & 2) != 0)
    {
      v47 = v49;
    }

    else
    {
      v47 = v40;
    }

    v58 = v73;
    *v59 = v74;
    *&v59[16] = v52;
    *&v59[20] = v16;
    *&v59[24] = v71;
    v60 = v72;
    v61 = v18;
    v62 = v53;
    v63 = OffsetAttribute2;
    v64 = v54;
    outlined destroy of _ViewInputs(&v58);

    *a6 = v39;
    *(a6 + 8) = v41 | (v36 << 6);
    *(a6 + 12) = v47;
  }

  else
  {
    v19 = a2[1];
    v58 = *a2;
    *v59 = v19;
    *&v59[16] = *(a2 + 8);
    v20 = *(a2 + 56);
    v68 = *(a2 + 40);
    *v69 = v20;
    *&v69[12] = *(a2 + 68);
    v21 = v9 | 2;
    v22 = a2[1];
    v23 = *(a2 + 8);
    v75 = *a2;
    v76 = v22;
    LODWORD(v77[0]) = v23;
    DWORD1(v77[0]) = v9 | 2;
    v24 = *(a2 + 40);
    v25 = *(a2 + 56);
    *(&v77[2] + 4) = *(a2 + 68);
    *(&v77[1] + 8) = v25;
    *(v77 + 8) = v24;
    *v86 = v77[0];
    *&v86[16] = v77[1];
    *&v86[32] = v77[2];
    *&v86[48] = v77[3];
    v84 = v75;
    v85 = v76;
    outlined init with copy of _ViewInputs(a2, &v78);
    v26 = outlined init with copy of _ViewInputs(&v75, &v78);
    a3(&v65, v26, &v84);
    v80 = *v86;
    v81 = *&v86[16];
    v82 = *&v86[32];
    v83 = *&v86[48];
    v78 = v84;
    v79 = v85;
    v27 = outlined destroy of _ViewInputs(&v78);
    v28 = v65;
    v29 = DWORD2(v65);
    v30 = HIDWORD(v65);
    MEMORY[0x1EEE9AC00](v27);
    MEMORY[0x1EEE9AC00](v31);
    AGGraphMutateAttribute();
    v84 = v58;
    v85 = *v59;
    *v86 = *&v59[16];
    *&v86[4] = v21;
    *&v86[8] = v68;
    *&v86[24] = *v69;
    *&v86[36] = *&v69[12];
    outlined destroy of _ViewInputs(&v84);

    *a6 = v28;
    *(a6 + 8) = v29;
    *(a6 + 12) = v30;
  }
}

void *specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 9);
  if ((v6 & 0x22) != 0)
  {
    v38 = a4;
    v8 = *(a2 + 2);
    swift_beginAccess();
    v9 = *MEMORY[0x1E698D3F8];
    *&v53[0] = __PAIR64__(*(v8 + 16), a1);
    DWORD2(v53[0]) = v9;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryLayoutComputer);
    v11 = v10;
    lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>, &lazy cache variable for type metadata for UnaryLayoutComputer<_FrameLayout>, type metadata accessor for UnaryLayoutComputer, protocol conformance descriptor for UnaryLayoutComputer<A>);
    v35 = v11;
    v39 = Attribute.init<A>(body:value:flags:update:)();
    v12 = a2[1];
    v51 = *a2;
    v52 = v12;
    v13 = *(a2 + 8);
    v14 = *(a2 + 9);
    v49 = *(a2 + 40);
    v50 = *(a2 + 7);
    v15 = *(a2 + 17);
    v16 = *(a2 + 76);
    if ((v6 & 0x20) != 0)
    {
      v33 = v4;
      v36 = v13;
      LODWORD(v37) = v15;
      outlined init with copy of _ViewInputs(a2, v53);
      if (one-time initialization token for layoutDirection != -1)
      {
        swift_once();
      }

      v20 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v21 = specialized CachedEnvironment.attribute<A>(id:_:)(v20, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v53[0]) = *(a2 + 18);
      *(v53 + 4) = __PAIR64__(v39, v21);
      HIDWORD(v53[0]) = v9;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(&lazy protocol witness table cache variable for type UnaryChildGeometry<_FrameLayout> and conformance UnaryChildGeometry<A>, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, type metadata accessor for UnaryChildGeometry, protocol conformance descriptor for UnaryChildGeometry<A>);
      v22 = Attribute.init<A>(body:value:flags:update:)();
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v23 = *(a2 + 16);
      v34 = v22;
      *&v53[0] = __PAIR64__(AGGraphCreateOffsetAttribute2(), v23);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for CGPoint(0);
      lazy protocol witness table accessor for type LayoutPositionQuery and conformance LayoutPositionQuery();
      v18 = Attribute.init<A>(body:value:flags:update:)();
      v15 = v37;
      v13 = v36 | 0x18;
      v14 = v6 | 2;
    }

    else
    {
      OffsetAttribute2 = *(a2 + 18);
      v18 = *(a2 + 16);
      outlined init with copy of _ViewInputs(a2, v53);
      v34 = 0;
    }

    v53[0] = v51;
    v53[1] = v52;
    v54 = v13;
    v55 = v14;
    v56 = v49;
    v57 = v50;
    v58 = v18;
    v59 = v15;
    v36 = OffsetAttribute2;
    v60 = OffsetAttribute2;
    v37 = v16;
    v61 = v16;
    outlined init with copy of _ViewInputs(v53, v40);
    specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(v53, v40);
    v24 = outlined destroy of _ViewInputs(v53);
    v25 = *&v40[0];
    v26 = DWORD2(v40[0]);
    v27 = HIDWORD(v40[0]);
    if ((v6 & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v24);
      MEMORY[0x1EEE9AC00](v28);
      v29 = AGGraphMutateAttribute();
      v35 = &v33;
      MEMORY[0x1EEE9AC00](v29);
      type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(0, &lazy cache variable for type metadata for UnaryChildGeometry<_FrameLayout>, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, type metadata accessor for UnaryChildGeometry);
      MEMORY[0x1EEE9AC00](v30);
      AGGraphMutateAttribute();
    }

    v31 = v26 | ((v6 & 2) << 6);
    if ((v6 & 2) != 0)
    {
      v27 = v39;
    }

    v40[0] = v51;
    v40[1] = v52;
    v41 = v13;
    v42 = v14;
    v43 = v49;
    v44 = v50;
    v45 = v18;
    v46 = v15;
    v47 = v36;
    v48 = v37;
    result = outlined destroy of _ViewInputs(v40);
    v32 = v38;
    *v38 = v25;
    *(v32 + 2) = v31;
    *(v32 + 3) = v27;
  }

  else
  {

    return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(a2, a4);
  }

  return result;
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance MoveTransition.MoveLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance ConcentricPaddingLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _PositionLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

uint64_t LayoutPositionQuery.init(parentPosition:localPosition:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double UnaryPositionAwareLayoutEngine.init(layout:layoutContext:child:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  v13 = type metadata accessor for UnaryPositionAwareLayoutEngine(0, a4, a5, a4);
  v14 = a6 + v13[11];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 1;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 1;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 1;
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v15 = a6 + v13[9];
  *v15 = *a2;
  *(v15 + 8) = v11;
  v16 = a6 + v13[10];
  result = *a3;
  *v16 = *a3;
  *(v16 + 8) = v12;
  return result;
}

float64x2_t *UnaryPositionAwareChildGeometry.value.getter@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = HIDWORD(a4);
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = CurrentAttribute;
  v6 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v12 = *Value;
  v13 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
LABEL_12:
    v35 = v13;
    v37 = v12;
    swift_once();
    v13 = v35;
    v12 = v37;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  v34 = v13;
  v36 = v12;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v13 = v34;
  v12 = v36;
  if (!IsOwner)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v40 = v12;
    *rect = v13;
    LODWORD(v43) = v5;
    HIDWORD(v43) = v5;
    v44 = a2;
    v45 = HIDWORD(a3);
    v46 = __PAIR64__(HIDWORD(a2), a3);
    v47 = v7;
    (*(*v6 + 160))(&v48, &v40, &v43);

    v16 = v48;
    v17 = v49;
    v18 = v50;
    v19 = v51;
    v20 = v52;
    v21 = v53;
    v22 = v54;
    v23 = v55;
    v24 = *AGGraphGetValue();
    v25 = *AGGraphGetValue();
    v43 = v16;
    LOBYTE(v44) = v17;
    v46 = v18;
    LOBYTE(v47) = v19;
    LayoutProxy.dimensions(in:)(&v43, &v40);
    v26 = v40;
    v27 = *rect;
    v28 = v42;
    v29 = v22 - v20 * *rect;
    v30 = *&rect[8];
    v31 = v23 - v21 * *&rect[8];
    *a5 = v29;
    *(a5 + 8) = v31;
    *(a5 + 16) = v26;
    *(a5 + 32) = v27;
    *(a5 + 40) = v30;
    *(a5 + 56) = v28;
    v39 = v31;
    if (v25 == 1)
    {
      v38 = v24 - CGRectGetMaxX(*&v29);
      *a5 = v38;
    }

    else
    {
      v38 = v29;
    }

    type metadata accessor for CGPoint(0);
    result = AGGraphGetValue();
    v33.f64[0] = v38;
    v33.f64[1] = v39;
    *a5 = vaddq_f64(v33, *result);
  }

  return result;
}

uint64_t UnaryLayoutEngine.ignoresAutomaticPadding()(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v3 = *(v2 + 2);
  v5 = *v2;
  v6 = v3;
  return (*(*(a1 + 24) + 72))(&v5, *(a1 + 16)) & 1;
}

double LayoutPositionQuery.value.getter()
{
  type metadata accessor for CGPoint(0);
  v0 = *AGGraphGetValue();
  return v0 + *AGGraphGetValue();
}

float64x2_t protocol witness for Rule.value.getter in conformance LayoutPositionQuery@<Q0>(float64x2_t *a1@<X8>)
{
  type metadata accessor for CGPoint(0);
  v3 = *AGGraphGetValue();
  result = vaddq_f64(v3, *AGGraphGetValue());
  *a1 = result;
  return result;
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance _AlignmentLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a5@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v6;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v5, v9, a3, a5);
}

void *protocol witness for static UnaryLayout.makeViewImpl(modifier:inputs:body:) in conformance ContainerCornerOffsetLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static UnaryLayout<>.makeViewImpl(modifier:inputs:body:)(v4, v8, a3, a4);
}

uint64_t implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v11, v15);
  dispatch thunk of Rule.value.getter();
  (*(v9 + 8))(v11, a5);
  v22 = a5;
  v23 = a6;
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in static Rule._updateDefault(_:), v21, a4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v18);
  return (*(v13 + 8))(v17, a4);
}

void lazy protocol witness table accessor for type UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout> and conformance UnaryLayoutComputer<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(255, a2, lazy protocol witness table accessor for type AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout and conformance AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, &type metadata for AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t specialized UnaryChildGeometry.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(20);
  v1 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000012, 0x800000018DD7C4B0);
  return v1;
}

uint64_t specialized UnaryPositionAwareChildGeometry.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(19);
  v1 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000011, 0x800000018DD7C470);
  return v1;
}

uint64_t specialized UnaryLayoutComputer.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(21);
  v1 = _typeName(_:qualified:)();

  MEMORY[0x193ABEDD0](0x1000000000000013, 0x800000018DD7C490);
  return v1;
}

void type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void lazy protocol witness table accessor for type UnaryLayoutComputer<_FrameLayout> and conformance UnaryLayoutComputer<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for UnaryLayoutComputer<AutomaticPaddingViewModifier.PaddingLayout.WrappedLayout>(255, a2, lazy protocol witness table accessor for type _FrameLayout and conformance _FrameLayout, &type metadata for _FrameLayout, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

uint64_t (*partial apply for closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1, uint64_t a2)
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return partial apply for implicit closure #1 in closure #1 in closure #1 in Attribute.init<A>(_:);
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryPositionAwareLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v12) = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v12;
    v15 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    *v15 = *v16;
    *(v15 + 16) = v18;
    *(v15 + 32) = v17;
    v19 = *(v16 + 96);
    v21 = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v15 + 80) = *(v16 + 80);
    *(v15 + 96) = v19;
    *(v15 + 48) = v21;
    *(v15 + 64) = v20;
    v23 = *(v16 + 128);
    v22 = *(v16 + 144);
    v24 = *(v16 + 112);
    *(v15 + 160) = *(v16 + 160);
    *(v15 + 128) = v23;
    *(v15 + 144) = v22;
    *(v15 + 112) = v24;
  }

  return v3;
}

uint64_t initializeWithCopy for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithCopy for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  return a1;
}

uint64_t initializeWithTake for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  return a1;
}

uint64_t assignWithTake for UnaryPositionAwareLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  return a1;
}

uint64_t getEnumTagSinglePayload for UnaryPositionAwareLayoutEngine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFC) + 15) & 0xFC) + 19) & 0xF8) - 95));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for UnaryPositionAwareLayoutEngine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 19) & 0xFFFFFFFFFFFFFFF8) + 161;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for UnaryLayoutEngine(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a2 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = *v11;
    *(v10 + 8) = *(v11 + 8);
    *v10 = v12;
    v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFFCLL;
    LODWORD(v12) = *(v14 + 8);
    *v13 = *v14;
    *(v13 + 8) = v12;
    v15 = (v13 + 19) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v14 + 19) & 0xFFFFFFFFFFFFFFF8;
    v18 = *(v16 + 16);
    v17 = *(v16 + 32);
    *v15 = *v16;
    *(v15 + 16) = v18;
    *(v15 + 32) = v17;
    v19 = *(v16 + 96);
    v21 = *(v16 + 48);
    v20 = *(v16 + 64);
    *(v15 + 80) = *(v16 + 80);
    *(v15 + 96) = v19;
    *(v15 + 48) = v21;
    *(v15 + 64) = v20;
    v23 = *(v16 + 128);
    v22 = *(v16 + 144);
    v24 = *(v16 + 112);
    *(v15 + 160) = *(v16 + 160);
    *(v15 + 128) = v23;
    *(v15 + 144) = v22;
    *(v15 + 112) = v24;
    memcpy(((v13 + 187) & 0xFFFFFFFFFFFFFFF8), ((v14 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  }

  return v3;
}

uint64_t assignWithCopy for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  v22 = (v9 + 187) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 187) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 48);
  *(v22 + 96) = *(v23 + 96);
  *(v22 + 64) = v25;
  *(v22 + 80) = v24;
  *(v22 + 48) = v26;
  v27 = *v23;
  v28 = *(v23 + 32);
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 32) = v28;
  *v22 = v27;
  v29 = *(v23 + 136);
  v30 = *(v23 + 120);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 120) = v30;
  *(v22 + 136) = v29;
  LOBYTE(v11) = *(v23 + 200);
  v31 = *(v23 + 184);
  v32 = *(v23 + 168);
  *(v22 + 152) = *(v23 + 152);
  *(v22 + 168) = v32;
  *(v22 + 184) = v31;
  *(v22 + 200) = v11;
  v34 = *(v23 + 272);
  v33 = *(v23 + 288);
  v35 = *(v23 + 256);
  *(v22 + 304) = *(v23 + 304);
  *(v22 + 256) = v35;
  *(v22 + 272) = v34;
  *(v22 + 288) = v33;
  v36 = *(v23 + 208);
  v37 = *(v23 + 240);
  *(v22 + 224) = *(v23 + 224);
  *(v22 + 240) = v37;
  *(v22 + 208) = v36;
  return a1;
}

uint64_t initializeWithTake for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 3;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFFCLL;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = (v7 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *v11;
  *(v10 + 8) = *(v11 + 8);
  *v10 = v12;
  v13 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v11 + 19) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v14 + 32);
  v16 = *v14;
  *(v13 + 16) = *(v14 + 16);
  *(v13 + 32) = v15;
  *v13 = v16;
  v17 = *(v14 + 96);
  v19 = *(v14 + 48);
  v18 = *(v14 + 64);
  *(v13 + 80) = *(v14 + 80);
  *(v13 + 96) = v17;
  *(v13 + 48) = v19;
  *(v13 + 64) = v18;
  v21 = *(v14 + 128);
  v20 = *(v14 + 144);
  v22 = *(v14 + 112);
  *(v13 + 160) = *(v14 + 160);
  *(v13 + 128) = v21;
  *(v13 + 144) = v20;
  *(v13 + 112) = v22;
  memcpy(((v10 + 187) & 0xFFFFFFFFFFFFFFF8), ((v11 + 187) & 0xFFFFFFFFFFFFFFF8), 0x131uLL);
  return a1;
}

uint64_t assignWithTake for UnaryLayoutEngine(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 3;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFFCLL);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFFCLL);
  *v7 = *v8;
  v7[1] = v8[1];
  v7[2] = v8[2];
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFFCLL);
  *v9 = *v10;
  v9[1] = v10[1];
  v9[2] = v10[2];
  v11 = (v9 + 19) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 19) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 48);
  v15 = *(v12 + 16);
  v14 = *(v12 + 32);
  *v11 = *v12;
  *(v11 + 16) = v15;
  *(v11 + 32) = v14;
  *(v11 + 48) = v13;
  v16 = *(v12 + 56);
  v17 = *(v12 + 72);
  v18 = *(v12 + 88);
  *(v11 + 104) = *(v12 + 104);
  *(v11 + 88) = v18;
  *(v11 + 72) = v17;
  *(v11 + 56) = v16;
  v19 = *(v12 + 112);
  v20 = *(v12 + 128);
  v21 = *(v12 + 144);
  *(v11 + 160) = *(v12 + 160);
  *(v11 + 128) = v20;
  *(v11 + 144) = v21;
  *(v11 + 112) = v19;
  v22 = (v9 + 187) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v10 + 187) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v23 + 64);
  v24 = *(v23 + 80);
  v26 = *(v23 + 48);
  *(v22 + 96) = *(v23 + 96);
  *(v22 + 64) = v25;
  *(v22 + 80) = v24;
  *(v22 + 48) = v26;
  v27 = *v23;
  v28 = *(v23 + 32);
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 32) = v28;
  *v22 = v27;
  v29 = *(v23 + 136);
  v30 = *(v23 + 120);
  *(v22 + 104) = *(v23 + 104);
  *(v22 + 120) = v30;
  *(v22 + 136) = v29;
  LOBYTE(v11) = *(v23 + 200);
  v31 = *(v23 + 184);
  v32 = *(v23 + 168);
  *(v22 + 152) = *(v23 + 152);
  *(v22 + 168) = v32;
  *(v22 + 184) = v31;
  *(v22 + 200) = v11;
  v34 = *(v23 + 272);
  v33 = *(v23 + 288);
  v35 = *(v23 + 256);
  *(v22 + 304) = *(v23 + 304);
  *(v22 + 256) = v35;
  *(v22 + 272) = v34;
  *(v22 + 288) = v33;
  v36 = *(v23 + 208);
  v37 = *(v23 + 240);
  *(v22 + 224) = *(v23 + 224);
  *(v22 + 240) = v37;
  *(v22 + 208) = v36;
  return a1;
}

uint64_t getEnumTagSinglePayload for UnaryLayoutEngine(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * (((((((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFC) + 15) & 0xFC) - 69) & 0xF8) + 49));
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void storeEnumTagSinglePayload for UnaryLayoutEngine(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((((((*(v6 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFFCLL) + 187) & 0xFFFFFFFFFFFFFFF8) + 305;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI21_ValueActionModifier2VySiG_s5NeverOSbTB5(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7[0] = a3;
    v7[1] = a4;
    v7[2] = a5;

    (a1)(&v8, v7);

    if (v5)
    {
      __break(1u);
    }
  }
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD16RedactionReasonsVG_s5NeverOSbTB5(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6[0] = a3;
    v6[1] = a4;

    (a1)(&v7, v6);

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10Foundation4DateV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, &v12 - v9, &lazy cache variable for type metadata for Date?, v7, _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v6, v10, v3);
  v13(&v14, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v14;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10Foundation4DateV_s5NeverOSdTg5(void (*a1)(void *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_3(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v12 - v9;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_1(v1, v12 - v9, &lazy cache variable for type metadata for Date?, v7, _s11Observation0A8TrackingV11_AccessListVSgMaTm_3);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v10, v3);
  v13(v12, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v12[0];
  }

  return result;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_EnvironmentKeyWritingModifierVyAD4FontVSgG_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6[0] = a3;
    v6[1] = a4;

    (a1)(&v7, v6);

    if (v4)
    {
      __break(1u);
    }
  }
}

uint64_t GeometryProxy.init(owner:size:environment:transform:position:safeAreaInsets:seed:)@<X0>(int a7@<W6>, uint64_t a8@<X8>)
{
  v9 = AGCreateWeakAttribute();
  v10 = v9;
  v24 = HIDWORD(v9);
  v11 = AGCreateWeakAttribute();
  v12 = v11;
  v23 = HIDWORD(v11);
  v13 = AGCreateWeakAttribute();
  v14 = v13;
  v15 = HIDWORD(v13);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v21 = HIDWORD(v19);
  result = AGCreateWeakAttribute();
  *a8 = v10;
  *(a8 + 4) = v24;
  *(a8 + 8) = v12;
  *(a8 + 12) = v23;
  *(a8 + 16) = v14;
  *(a8 + 20) = v15;
  *(a8 + 24) = v17;
  *(a8 + 28) = v18;
  *(a8 + 32) = v20;
  *(a8 + 36) = v21;
  *(a8 + 40) = result;
  *(a8 + 48) = a7;
  return result;
}

double GeometryProxy.rect(_:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = v5[1];
  v19 = *v5;
  v20 = v11;
  v21 = v5[2];
  v22 = *(v5 + 12);
  specialized static Update.begin()();
  *v23 = a2;
  *&v23[1] = a3;
  *&v23[2] = a4;
  *&v23[3] = a5;
  GeometryProxy.placementContext.getter(v16);
  v14[2] = v23;
  v14[3] = a1;
  v15 = v18;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(_s7SwiftUI13GeometryProxyV4rect_2inSo6CGRectVAG_AA15CoordinateSpaceOtFyAA30_PositionAwarePlacementContextVXEfU_TA_0, v14, v16[0], v16[1], v16[2], v17 | (v18 << 32));
  v12 = *v23;
  static Update.end()();
  return v12;
}

void *GeometryProxy.asCurrent<A>(do:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 16);
  v11[0] = *v3;
  v11[1] = v7;
  v11[2] = *(v3 + 32);
  v12 = *(v3 + 48);
  _threadGeometryProxyData();
  v14 = a3;
  v15 = a1;
  v16 = a2;
  v8 = type metadata accessor for Error();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, partial apply for closure #1 in GeometryProxy.asCurrent<A>(do:), v13, &type metadata for GeometryProxy, v8, a3, MEMORY[0x1E69E7288], &v10);
  return _setThreadGeometryProxyData();
}

uint64_t GeometryProxy.viewSize.getter@<X0>(_OWORD *a1@<X8>)
{
  specialized static Update.begin()();
  Attribute = AGWeakAttributeGetAttribute();
  v3 = 0uLL;
  v4 = 0uLL;
  if (Attribute != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v3 = *InputValue;
    v4 = InputValue[1];
  }

  *a1 = v3;
  a1[1] = v4;

  return static Update.end()();
}

void GeometryReader.content.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance GeometryReader<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _LayoutRoot<GeometryReaderLayout>(255);
  v5 = type metadata accessor for _VariadicView.Tree(0, v4, *(a1 + 16), &protocol witness table for _LayoutRoot<A>);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 1, 1, v5);
}

double GeometryProxy.frame(in:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  specialized static Update.begin()();
  v7 = 0;
  v8 = 0;
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v7 = *InputValue;
    v8 = InputValue[1];
  }

  static Update.end()();
  specialized static Update.begin()();
  v29[0] = 0;
  v29[1] = 0;
  v29[2] = v7;
  v29[3] = v8;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v10 = *(v1 + 2);
  v26 = *(v1 + 1);
  v27 = v10;
  v28 = v1[12];
  v11 = GeometryProxy.placementContext.getter(&v21);
  MEMORY[0x1EEE9AC00](v11);
  v19[2] = v29;
  v19[3] = a1;
  v20 = v12;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(closure #1 in GeometryProxy.rect(_:in:)partial apply, v19, v14, v15, v16, v13 | (v12 << 32));
  v17 = *v29;
  static Update.end()();
  return v17;
}

uint64_t GeometryProxy.environment.getter@<X0>(uint64_t *a1@<X8>)
{
  specialized static Update.begin()();
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {
    EnvironmentValues.init()(a1);
  }

  else
  {
    AGWeakAttributeGetAttribute();
    InputValue = AGGraphGetInputValue();
    v4 = *InputValue;
    v3 = InputValue[1];
    *a1 = v4;
    a1[1] = v3;
  }

  return static Update.end()();
}

uint64_t static GeometryProxy.current.getter@<X0>(uint64_t a1@<X8>)
{
  result = _threadGeometryProxyData();
  if (result)
  {
    v3 = 0;
    v4 = *(result + 16);
    *a1 = *result;
    *(a1 + 16) = v4;
    *(a1 + 32) = *(result + 32);
    *(a1 + 48) = *(result + 48);
  }

  else
  {
    v3 = 1;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
  }

  *(a1 + 52) = v3;
  return result;
}

double GeometryProxy.convert<A>(globalPoint:to:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = a2;
  (*(a5 + 8))(v6, a4, a5);
  GeometryProxy.transform.getter(v9);
  specialized ApplyViewTransform.convertGlobal(to:transform:)(v6, v9);
  outlined destroy of ViewTransform(v9);
  outlined destroy of CoordinateSpace(v6);
  return v7;
}

double specialized ApplyViewTransform.convertGlobal(to:transform:)(uint64_t a1, float64x2_t *a2)
{
  v3 = v2;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = a2[2];
  ViewTransform.coordinateSpaceTag(_:)(a1, &v11);
  if (v12)
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    *&v14.f64[0] = static CoordinateSpace.ID.worldReference;
    BYTE8(v16) = 1;
    v7 = specialized static CoordinateSpace.== infix(_:_:)(a1, &v14);
    outlined destroy of CoordinateSpace(&v14);
    v8 = -3;
    if (v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = a2[2];
  v11 = 0;
  v12 = v8;
  v13 = 4;
  return specialized ViewTransform.convert(_:_:)(&v11, &v14, v3);
}

uint64_t *specialized ApplyViewTransform.convertGlobal(to:transform:)(uint64_t a1, float64x2_t *a2)
{
  v3 = v2;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v16 = a2[2];
  ViewTransform.coordinateSpaceTag(_:)(a1, &v11);
  if (v12)
  {
    if (one-time initialization token for worldReference != -1)
    {
      swift_once();
    }

    *&v14.f64[0] = static CoordinateSpace.ID.worldReference;
    BYTE8(v16) = 1;
    v7 = specialized static CoordinateSpace.== infix(_:_:)(a1, &v14);
    outlined destroy of CoordinateSpace(&v14);
    v8 = -3;
    if (v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  v9 = a2[1];
  v14 = *a2;
  v15 = v9;
  v16 = a2[2];
  v11 = 0;
  v12 = v8;
  v13 = 4;
  return specialized ViewTransform.convert(_:_:)(&v11, &v14, v3);
}

__n128 GeometryProxy.containerCornerInsets.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = v1[1];
  v30 = *v1;
  v31 = v3;
  v32 = v1[2];
  v33 = *(v1 + 12);
  specialized static Update.begin()();
  GeometryProxy.placementContext.getter(&v25);
  if (v29)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    v4 = v28;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    if (v28 != *MEMORY[0x1E698D3F8])
    {
      v10 = v26;
      v9 = v27;
      v11 = HIDWORD(v27);
      v12 = v25;
      v13 = HIDWORD(v26);
      v14 = HIDWORD(v25);
      InputValue = AGGraphGetInputValue();
      v16 = *(InputValue + 16);
      v23 = *InputValue;
      v24 = v16;
      v22[0] = v12;
      v22[1] = v14;
      v22[2] = v10;
      v22[3] = v13;
      v22[4] = v9;
      v22[5] = v11;
      v22[6] = v4;
      SafeAreaInsets.resolveCorners(in:)(v22, v34[0].n128_f64);
      v5 = v34[0];
      v6 = v34[1];
      v7 = v34[2];
      v8 = v34[3];
    }

    v18 = v8;
    v19 = v6;
    v20 = v7;
    v21 = v5;
  }

  static Update.end()();
  *a1 = v21;
  a1[1] = v19;
  result = v20;
  a1[2] = v20;
  a1[3] = v18;
  return result;
}

uint64_t static GeometryReaderLayout.layoutProperties.getter@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for v2 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v2;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v2;
  }

  *a1 = 2;
  a1[1] = result ^ 1;
  a1[2] = result ^ 1;
  return result;
}

uint64_t partial apply for closure #1 in GeometryProxy.asCurrent<A>(do:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 24);
  v6 = _setThreadGeometryProxyData();
  result = v5(v6);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeometryProxy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t initializeWithCopy for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v12 = *(a1 + 32);
  *(a1 + 32) = v7;
  outlined consume of GlassContainer.Entry.ModelID(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry.ModelID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a1 + 32);
  *(a1 + 32) = v3;
  outlined consume of GlassContainer.Entry.ModelID(v4, v6, v5, v7, v9);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry.ModelID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry.ModelID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for GlassContainer.Entry.ModelID(uint64_t a1)
{
  if (*(a1 + 32) <= 1u)
  {
    return *(a1 + 32);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for GlassContainer.Entry.ModelID(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

double destroy for GlassContainer.EntryState(void *a1)
{

  if (a1[57] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[54], a1[55]);

    if (a1[67] != 1)
    {
      outlined consume of _Glass.Variant.Role(a1[64], a1[65]);
    }

    if (a1[73] != 1)
    {
      outlined consume of _Glass.Variant.Role(a1[70], a1[71]);
    }
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.EntryState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v7 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v7;
  v8 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v8;
  v9 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v9;
  v10 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v10;
  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  v12 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v12;
  v13 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v13;
  *(a1 + 336) = *(a2 + 336);
  v14 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v14;
  *(a1 + 408) = *(a2 + 408);
  v15 = *(a2 + 360);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v15;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  v16 = *(a2 + 456);

  if (v16 == 1)
  {
    v17 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v17;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v18 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v18;
    v19 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v19;
    v20 = *(a2 + 448);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 448) = v20;
    v21 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v21;
  }

  else
  {
    v22 = *(a2 + 432);
    v23 = *(a2 + 440);
    outlined copy of _Glass.Variant.Role(v22, v23);
    *(a1 + 432) = v22;
    *(a1 + 440) = v23;
    *(a1 + 448) = *(a2 + 448);
    v24 = *(a2 + 464);
    *(a1 + 456) = v16;
    *(a1 + 464) = v24;
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    v25 = *(a2 + 504);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = v25;
    v26 = *(a2 + 536);

    if (v26 == 1)
    {
      v27 = *(a2 + 528);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 528) = v27;
      *(a1 + 537) = *(a2 + 537);
    }

    else
    {
      v28 = *(a2 + 512);
      v29 = *(a2 + 520);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 512) = v28;
      *(a1 + 520) = v29;
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = v26;
      *(a1 + 544) = *(a2 + 544);
      *(a1 + 552) = *(a2 + 552);
    }

    v30 = *(a2 + 584);
    if (v30 == 1)
    {
      v31 = *(a2 + 576);
      *(a1 + 560) = *(a2 + 560);
      *(a1 + 576) = v31;
      *(a1 + 585) = *(a2 + 585);
    }

    else
    {
      v32 = *(a2 + 560);
      v33 = *(a2 + 568);
      outlined copy of _Glass.Variant.Role(v32, v33);
      *(a1 + 560) = v32;
      *(a1 + 568) = v33;
      *(a1 + 576) = *(a2 + 576);
      *(a1 + 584) = v30;
      *(a1 + 592) = *(a2 + 592);
      *(a1 + 600) = *(a2 + 600);
    }

    *(a1 + 604) = *(a2 + 604);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for GlassContainer.EntryState(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  *(a1 + 16) = a2[2];

  *(a1 + 24) = a2[3];

  *(a1 + 32) = a2[4];
  v5 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];
  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  *(a1 + 120) = a2[15];
  *(a1 + 128) = a2[16];
  *(a1 + 136) = a2[17];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = a2[20];
  *(a1 + 168) = a2[21];
  *(a1 + 176) = a2[22];
  *(a1 + 184) = a2[23];
  *(a1 + 192) = a2[24];
  *(a1 + 200) = a2[25];
  *(a1 + 208) = a2[26];
  *(a1 + 216) = a2[27];
  *(a1 + 224) = a2[28];
  *(a1 + 232) = a2[29];
  *(a1 + 240) = a2[30];
  *(a1 + 248) = a2[31];
  *(a1 + 256) = a2[32];
  *(a1 + 264) = a2[33];
  *(a1 + 272) = a2[34];
  *(a1 + 280) = a2[35];
  *(a1 + 288) = a2[36];
  *(a1 + 296) = a2[37];
  *(a1 + 304) = a2[38];
  *(a1 + 312) = a2[39];
  *(a1 + 320) = a2[40];
  *(a1 + 328) = a2[41];

  *(a1 + 336) = a2[42];
  *(a1 + 344) = a2[43];
  *(a1 + 352) = a2[44];
  *(a1 + 360) = a2[45];
  *(a1 + 368) = a2[46];
  *(a1 + 376) = a2[47];
  *(a1 + 384) = a2[48];
  *(a1 + 392) = a2[49];
  *(a1 + 400) = a2[50];
  *(a1 + 408) = a2[51];
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = a2[53];

  v6 = a2[57];
  if (*(a1 + 456) != 1)
  {
    if (v6 == 1)
    {
      outlined destroy of GlassContainer.DisplayMaterial(a1 + 432);
      v16 = *(a2 + 30);
      v18 = *(a2 + 27);
      v17 = *(a2 + 28);
      *(a1 + 464) = *(a2 + 29);
      *(a1 + 480) = v16;
      *(a1 + 432) = v18;
      *(a1 + 448) = v17;
      v19 = *(a2 + 34);
      v21 = *(a2 + 31);
      v20 = *(a2 + 32);
      *(a1 + 528) = *(a2 + 33);
      *(a1 + 544) = v19;
      *(a1 + 496) = v21;
      *(a1 + 512) = v20;
      v23 = *(a2 + 36);
      v22 = *(a2 + 37);
      v24 = *(a2 + 35);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 576) = v23;
      *(a1 + 592) = v22;
      *(a1 + 560) = v24;
      goto LABEL_26;
    }

    v31 = a2[54];
    v32 = a2[55];
    outlined copy of _Glass.Variant.Role(v31, v32);
    v33 = *(a1 + 432);
    v34 = *(a1 + 440);
    *(a1 + 432) = v31;
    *(a1 + 440) = v32;
    outlined consume of _Glass.Variant.Role(v33, v34);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = a2[57];

    *(a1 + 464) = a2[58];
    *(a1 + 472) = *(a2 + 472);
    v35 = a2[60];
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v35;
    *(a1 + 496) = a2[62];

    *(a1 + 504) = a2[63];

    v36 = (a1 + 512);
    v37 = a2 + 64;
    v38 = a2[67];
    if (*(a1 + 536) == 1)
    {
      if (v38 == 1)
      {
        v39 = *v37;
        v40 = *(a2 + 33);
        *(a1 + 537) = *(a2 + 537);
        *v36 = v39;
        *(a1 + 528) = v40;
      }

      else
      {
        v47 = a2[64];
        v48 = a2[65];
        outlined copy of _Glass.Variant.Role(v47, v48);
        *(a1 + 512) = v47;
        *(a1 + 520) = v48;
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 536) = a2[67];
        *(a1 + 544) = a2[68];
        *(a1 + 552) = *(a2 + 552);
      }
    }

    else if (v38 == 1)
    {
      outlined destroy of _Glass(a1 + 512);
      v45 = *(a2 + 537);
      v46 = *(a2 + 33);
      *v36 = *v37;
      *(a1 + 528) = v46;
      *(a1 + 537) = v45;
    }

    else
    {
      v49 = a2[64];
      v50 = a2[65];
      outlined copy of _Glass.Variant.Role(v49, v50);
      v51 = *(a1 + 512);
      v52 = *(a1 + 520);
      *(a1 + 512) = v49;
      *(a1 + 520) = v50;
      outlined consume of _Glass.Variant.Role(v51, v52);
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = a2[67];

      *(a1 + 544) = a2[68];
      *(a1 + 552) = *(a2 + 552);
    }

    v53 = (a1 + 560);
    v54 = a2 + 70;
    v55 = a2[73];
    if (*(a1 + 584) != 1)
    {
      if (v55 == 1)
      {
        outlined destroy of _Glass(a1 + 560);
        v60 = *(a2 + 585);
        v61 = *(a2 + 36);
        *v53 = *v54;
        *(a1 + 576) = v61;
        *(a1 + 585) = v60;
      }

      else
      {
        v62 = a2[70];
        v63 = a2[71];
        outlined copy of _Glass.Variant.Role(v62, v63);
        v64 = *(a1 + 560);
        v65 = *(a1 + 568);
        *(a1 + 560) = v62;
        *(a1 + 568) = v63;
        outlined consume of _Glass.Variant.Role(v64, v65);
        *(a1 + 576) = *(a2 + 576);
        *(a1 + 584) = a2[73];

        *(a1 + 592) = a2[74];
        *(a1 + 600) = *(a2 + 600);
      }

      goto LABEL_25;
    }

    if (v55 == 1)
    {
      v56 = *v54;
      v57 = *(a2 + 36);
      *(a1 + 585) = *(a2 + 585);
      *v53 = v56;
      *(a1 + 576) = v57;
      goto LABEL_25;
    }

LABEL_21:
    v58 = a2[70];
    v59 = a2[71];
    outlined copy of _Glass.Variant.Role(v58, v59);
    *(a1 + 560) = v58;
    *(a1 + 568) = v59;
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 584) = a2[73];
    *(a1 + 592) = a2[74];
    *(a1 + 600) = *(a2 + 600);

    goto LABEL_25;
  }

  if (v6 != 1)
  {
    v25 = a2[54];
    v26 = a2[55];
    outlined copy of _Glass.Variant.Role(v25, v26);
    *(a1 + 432) = v25;
    *(a1 + 440) = v26;
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = a2[57];
    *(a1 + 464) = a2[58];
    *(a1 + 472) = *(a2 + 472);
    v27 = a2[60];
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v27;
    *(a1 + 496) = a2[62];
    *(a1 + 504) = a2[63];
    v28 = a2[67];

    if (v28 == 1)
    {
      v29 = *(a2 + 32);
      v30 = *(a2 + 33);
      *(a1 + 537) = *(a2 + 537);
      *(a1 + 512) = v29;
      *(a1 + 528) = v30;
    }

    else
    {
      v41 = a2[64];
      v42 = a2[65];
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 512) = v41;
      *(a1 + 520) = v42;
      *(a1 + 528) = *(a2 + 528);
      *(a1 + 536) = a2[67];
      *(a1 + 544) = a2[68];
      *(a1 + 552) = *(a2 + 552);
    }

    if (a2[73] == 1)
    {
      v43 = *(a2 + 35);
      v44 = *(a2 + 36);
      *(a1 + 585) = *(a2 + 585);
      *(a1 + 560) = v43;
      *(a1 + 576) = v44;
LABEL_25:
      v66 = *(a2 + 151);
      *(a1 + 608) = *(a2 + 608);
      *(a1 + 604) = v66;
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  v7 = *(a2 + 27);
  v8 = *(a2 + 28);
  v9 = *(a2 + 30);
  *(a1 + 464) = *(a2 + 29);
  *(a1 + 480) = v9;
  *(a1 + 432) = v7;
  *(a1 + 448) = v8;
  v10 = *(a2 + 31);
  v11 = *(a2 + 32);
  v12 = *(a2 + 34);
  *(a1 + 528) = *(a2 + 33);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a2 + 35);
  v14 = *(a2 + 36);
  v15 = *(a2 + 37);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
LABEL_26:
  *(a1 + 616) = a2[77];

  *(a1 + 624) = a2[78];

  return a1;
}

uint64_t assignWithTake for GlassContainer.EntryState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  v4 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v4;
  *(a1 + 304) = *(a2 + 304);
  v5 = *(a2 + 328);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = v5;

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  v6 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v6;
  v7 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v7;
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);

  if (*(a1 + 456) == 1)
  {
    goto LABEL_4;
  }

  if (*(a2 + 456) != 1)
  {
    v13 = *(a1 + 432);
    v14 = *(a1 + 440);
    *(a1 + 432) = *(a2 + 432);
    outlined consume of _Glass.Variant.Role(v13, v14);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = *(a2 + 456);

    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);

    *(a1 + 504) = *(a2 + 504);

    if (*(a1 + 536) != 1)
    {
      if (*(a2 + 536) != 1)
      {
        v16 = *(a1 + 512);
        v17 = *(a1 + 520);
        *(a1 + 512) = *(a2 + 512);
        outlined consume of _Glass.Variant.Role(v16, v17);
        *(a1 + 528) = *(a2 + 528);
        *(a1 + 536) = *(a2 + 536);

        *(a1 + 544) = *(a2 + 544);
        *(a1 + 552) = *(a2 + 552);
LABEL_10:
        if (*(a1 + 584) != 1)
        {
          if (*(a2 + 584) != 1)
          {
            v19 = *(a1 + 560);
            v20 = *(a1 + 568);
            *(a1 + 560) = *(a2 + 560);
            outlined consume of _Glass.Variant.Role(v19, v20);
            *(a1 + 576) = *(a2 + 576);
            *(a1 + 584) = *(a2 + 584);

            *(a1 + 592) = *(a2 + 592);
            *(a1 + 600) = *(a2 + 600);
            goto LABEL_15;
          }

          outlined destroy of _Glass(a1 + 560);
        }

        v18 = *(a2 + 576);
        *(a1 + 560) = *(a2 + 560);
        *(a1 + 576) = v18;
        *(a1 + 585) = *(a2 + 585);
LABEL_15:
        *(a1 + 604) = *(a2 + 604);
        *(a1 + 608) = *(a2 + 608);
        goto LABEL_16;
      }

      outlined destroy of _Glass(a1 + 512);
    }

    v15 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v15;
    *(a1 + 537) = *(a2 + 537);
    goto LABEL_10;
  }

  outlined destroy of GlassContainer.DisplayMaterial(a1 + 432);
LABEL_4:
  v8 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v8;
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 608) = *(a2 + 608);
  v9 = *(a2 + 512);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = v9;
  v10 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v10;
  v11 = *(a2 + 448);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = v11;
  v12 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v12;
LABEL_16:
  *(a1 + 616) = *(a2 + 616);

  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.EntryState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.EntryState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for GlassContainer.DisplayMaterial(uint64_t *a1)
{
  outlined consume of _Glass.Variant.Role(*a1, a1[1]);

  if (a1[13] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[10], a1[11]);
  }

  if (a1[19] != 1)
  {
    outlined consume of _Glass.Variant.Role(a1[16], a1[17]);
  }

  return result;
}

uint64_t initializeWithCopy for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v8 = *(a2 + 104);

  if (v8 == 1)
  {
    v9 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v9;
    *(a1 + 105) = *(a2 + 105);
  }

  else
  {
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v10, v11);
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    *(a1 + 96) = *(a2 + 96);
    v12 = *(a2 + 112);
    *(a1 + 104) = v8;
    *(a1 + 112) = v12;
    *(a1 + 120) = *(a2 + 120);
  }

  v13 = *(a2 + 152);
  if (v13 == 1)
  {
    v14 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v14;
    *(a1 + 153) = *(a2 + 153);
  }

  else
  {
    v15 = *(a2 + 128);
    v16 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v15, v16);
    *(a1 + 128) = v15;
    *(a1 + 136) = v16;
    *(a1 + 144) = *(a2 + 144);
    v17 = *(a2 + 160);
    *(a1 + 152) = v13;
    *(a1 + 160) = v17;
    *(a1 + 168) = *(a2 + 168);
  }

  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of _Glass.Variant.Role(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of _Glass.Variant.Role(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 48) = v8;
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  v9 = *(a2 + 104);
  if (*(a1 + 104) == 1)
  {
    if (v9 == 1)
    {
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      *(a1 + 105) = *(a2 + 105);
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
    }

    else
    {
      v14 = *(a2 + 80);
      v15 = *(a2 + 88);
      outlined copy of _Glass.Variant.Role(v14, v15);
      *(a1 + 80) = v14;
      *(a1 + 88) = v15;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
    v12 = *(a2 + 105);
    v13 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v13;
    *(a1 + 105) = v12;
  }

  else
  {
    v16 = *(a2 + 80);
    v17 = *(a2 + 88);
    outlined copy of _Glass.Variant.Role(v16, v17);
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    *(a1 + 80) = v16;
    *(a1 + 88) = v17;
    outlined consume of _Glass.Variant.Role(v18, v19);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);

    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
  }

  v20 = *(a2 + 152);
  if (*(a1 + 152) == 1)
  {
    if (v20 == 1)
    {
      v21 = *(a2 + 128);
      v22 = *(a2 + 144);
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 128) = v21;
      *(a1 + 144) = v22;
    }

    else
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      outlined copy of _Glass.Variant.Role(v25, v26);
      *(a1 + 128) = v25;
      *(a1 + 136) = v26;
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }
  }

  else if (v20 == 1)
  {
    outlined destroy of _Glass(a1 + 128);
    v23 = *(a2 + 153);
    v24 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v24;
    *(a1 + 153) = v23;
  }

  else
  {
    v27 = *(a2 + 128);
    v28 = *(a2 + 136);
    outlined copy of _Glass.Variant.Role(v27, v28);
    v29 = *(a1 + 128);
    v30 = *(a1 + 136);
    *(a1 + 128) = v27;
    *(a1 + 136) = v28;
    outlined consume of _Glass.Variant.Role(v29, v30);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  v31 = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 172) = v31;
  return a1;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t assignWithTake for GlassContainer.DisplayMaterial(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  outlined consume of _Glass.Variant.Role(v4, v5);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  if (*(a1 + 104) == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 104);
  if (v6 == 1)
  {
    outlined destroy of _Glass(a1 + 80);
LABEL_4:
    v7 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v7;
    *(a1 + 105) = *(a2 + 105);
    goto LABEL_6;
  }

  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  *(a1 + 80) = *(a2 + 80);
  outlined consume of _Glass.Variant.Role(v8, v9);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
LABEL_6:
  if (*(a1 + 152) != 1)
  {
    v10 = *(a2 + 152);
    if (v10 != 1)
    {
      v12 = *(a1 + 128);
      v13 = *(a1 + 136);
      *(a1 + 128) = *(a2 + 128);
      outlined consume of _Glass.Variant.Role(v12, v13);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = v10;

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 128);
  }

  v11 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v11;
  *(a1 + 153) = *(a2 + 153);
LABEL_11:
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.DisplayMaterial(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 177))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for GlassContainer.DisplayMaterial(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t assignWithCopy for GlassContainer.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of GlassContainer.Entry.ModelID(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of _Glass.Variant.Role(v16, v17);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v18 = *(a2 + 144);
  v19 = *(a2 + 152);
  outlined copy of _Glass.Variant.Role(v18, v19);
  v20 = *(a1 + 144);
  v21 = *(a1 + 152);
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  outlined consume of _Glass.Variant.Role(v20, v21);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  v22 = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 192) = v22;
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  v23 = *(a2 + 248);
  if (*(a1 + 248) == 1)
  {
    if (v23 == 1)
    {
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      *(a1 + 249) = *(a2 + 249);
      *(a1 + 224) = v24;
      *(a1 + 240) = v25;
    }

    else
    {
      v28 = *(a2 + 224);
      v29 = *(a2 + 232);
      outlined copy of _Glass.Variant.Role(v28, v29);
      *(a1 + 224) = v28;
      *(a1 + 232) = v29;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v23 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
    v26 = *(a2 + 249);
    v27 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v27;
    *(a1 + 249) = v26;
  }

  else
  {
    v30 = *(a2 + 224);
    v31 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v30, v31);
    v32 = *(a1 + 224);
    v33 = *(a1 + 232);
    *(a1 + 224) = v30;
    *(a1 + 232) = v31;
    outlined consume of _Glass.Variant.Role(v32, v33);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  v34 = (a1 + 272);
  v35 = (a2 + 272);
  v36 = *(a2 + 296);
  if (*(a1 + 296) == 1)
  {
    if (v36 == 1)
    {
      v37 = *v35;
      v38 = *(a2 + 288);
      *(a1 + 297) = *(a2 + 297);
      *v34 = v37;
      *(a1 + 288) = v38;
    }

    else
    {
      v41 = *(a2 + 272);
      v42 = *(a2 + 280);
      outlined copy of _Glass.Variant.Role(v41, v42);
      *(a1 + 272) = v41;
      *(a1 + 280) = v42;
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
    }
  }

  else if (v36 == 1)
  {
    outlined destroy of _Glass(a1 + 272);
    v39 = *(a2 + 297);
    v40 = *(a2 + 288);
    *v34 = *v35;
    *(a1 + 288) = v40;
    *(a1 + 297) = v39;
  }

  else
  {
    v43 = *(a2 + 272);
    v44 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v43, v44);
    v45 = *(a1 + 272);
    v46 = *(a1 + 280);
    *(a1 + 272) = v43;
    *(a1 + 280) = v44;
    outlined consume of _Glass.Variant.Role(v45, v46);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);

    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
  }

  v47 = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 316) = v47;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  return a1;
}

uint64_t assignWithTake for GlassContainer.Entry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of GlassContainer.Entry.ModelID(v5, v6, v7, v8, v10);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  outlined consume of _Glass.Variant.Role(v11, v12);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a1 + 144);
  v14 = *(a1 + 152);
  *(a1 + 144) = *(a2 + 144);
  outlined consume of _Glass.Variant.Role(v13, v14);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);

  if (*(a1 + 248) == 1)
  {
    goto LABEL_4;
  }

  v15 = *(a2 + 248);
  if (v15 == 1)
  {
    outlined destroy of _Glass(a1 + 224);
LABEL_4:
    v16 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v16;
    *(a1 + 249) = *(a2 + 249);
    goto LABEL_6;
  }

  v17 = *(a1 + 224);
  v18 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);
  outlined consume of _Glass.Variant.Role(v17, v18);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v15;

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
LABEL_6:
  if (*(a1 + 296) != 1)
  {
    v19 = *(a2 + 296);
    if (v19 != 1)
    {
      v21 = *(a1 + 272);
      v22 = *(a1 + 280);
      *(a1 + 272) = *(a2 + 272);
      outlined consume of _Glass.Variant.Role(v21, v22);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = v19;

      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      goto LABEL_11;
    }

    outlined destroy of _Glass(a1 + 272);
  }

  v20 = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v20;
  *(a1 + 297) = *(a2 + 297);
LABEL_11:
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  return a1;
}

uint64_t getEnumTagSinglePayload for GlassContainer.Entry(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 340))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassContainer.Entry(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 336) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 340) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 340) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlassContainer.ResolvedPhase(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FFE)
  {
    goto LABEL_17;
  }

  if (a2 + 49154 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 49154 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 49154;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 49154;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3E00 | (*a1 >> 14) & 0xFFFFFE03 | (4 * (*a1 >> 1))) ^ 0x3FFF;
  if (v6 >= 0x3FFD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for GlassContainer.ResolvedPhase(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49154 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 49154 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3FFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3FFD)
  {
    v6 = ((a2 - 16382) >> 16) + 1;
    *result = a2 - 16382;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0xFFF) - (a2 << 12);
    *result = (4 * v7) & 0xFE00 | (2 * (v7 & 0x7F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTag for GlassContainer.ResolvedPhase(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_WORD *destructiveInjectEnumTag for GlassContainer.ResolvedPhase(_WORD *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0x101 | (a2 << 14);
  }

  else
  {
    *result = (a2 & 1 | (((a2 >> 1) & 1) << 8)) ^ 0x8100;
  }

  return result;
}

void GlassContainer.DisplayMaterial.id.getter(uint64_t a1@<X8>)
{
  v20 = *(v1 + 48);
  v19 = *(v1 + 56);
  v18 = *(v1 + 64);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 104);
  v13 = *(v1 + 128);
  v14 = *(v1 + 96);
  v12 = *(v1 + 136);
  v15 = *(v1 + 152);
  v16 = *(v1 + 176);
  v17 = *(v1 + 172);
  if (v5 == 1)
  {
    v6 = *v1;
    v7 = *(v1 + 8);
    outlined copy of _Glass.Variant.Role(*v1, v7);
  }

  else
  {
    v6 = *(v1 + 80);
    v7 = *(v1 + 88);
  }

  v21 = v6;
  v22 = v7;
  outlined copy of _Glass.Variant.Role(v6, v7);
  outlined copy of _Glass?(v3, v4, v14, v5);
  _Glass.Variant.ID.init(_:)(&v21, &v23);
  outlined consume of _Glass.Variant.Role(v6, v7);

  v8 = v23;
  v9 = v24;
  if (v15 == 1)
  {
    v10 = 0;
    v11 = -4;
  }

  else
  {
    v21 = v13;
    v22 = v12;
    outlined copy of _Glass.Variant.Role(v13, v12);
    _Glass.Variant.ID.init(_:)(&v21, &v23);
    v10 = v23;
    v11 = v24;
  }

  outlined consume of _Glass.Variant.ID?(0, 0xFCu);
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 28) = v17;
  *(a1 + 32) = v16;
  *(a1 + 40) = v20;
  *(a1 + 48) = v19;
  *(a1 + 56) = v18;
}

Swift::Void __swiftcall GlassContainer.Entry.resetTransition()()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    if (v2 > *(v1 + 2))
    {
      __break(1u);
    }

    else
    {
      v3 = v1 + 208;
      do
      {
        *(v3 - 3) = 0;
        *(v3 - 2) = 0;
        *(v3 - 1) = 0;
        *v3 = 1;
        v3 += 656;
        --v2;
      }

      while (v2);
      *(v0 + 128) = v1;
    }
  }
}

void GlassContainer.Entry.shapeBounds(data:proxy:cache:options:)(CGFloat a1@<X0>, uint64_t a2@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  rect1.origin.x = a1;
  v7 = *(a2 + 16);
  v134 = *a2;
  v135 = v7;
  v136 = *(a2 + 32);
  v137 = *(a2 + 48);
  v8 = v4[5];
  v154 = v4[4];
  v155 = v8;
  v9 = v4[7];
  v156 = v4[6];
  v157 = v9;
  v10 = v4[1];
  v150 = *v4;
  v151 = v10;
  v11 = v4[3];
  v152 = v4[2];
  v153 = v11;
  v12 = *(v4 + 16);
  v13 = *(v4 + 296);
  v149 = *(v4 + 312);
  v148 = v13;
  v14 = *(v4 + 264);
  v147 = *(v4 + 280);
  v146 = v14;
  v15 = *(v4 + 232);
  v145 = *(v4 + 248);
  v144 = v15;
  v16 = *(v4 + 200);
  v143 = *(v4 + 216);
  v142 = v16;
  v17 = *(v4 + 168);
  v141 = *(v4 + 184);
  v140 = v17;
  v18 = *(v4 + 136);
  v139 = *(v4 + 152);
  v138 = v18;
  v19 = *(v4 + 41);
  v20 = *(v4 + 84);
  GlassContainerCache.entryState(id:)(v19, v158);
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v24 = *(MEMORY[0x1E695F050] + 16);
  v23 = *(MEMORY[0x1E695F050] + 24);
  v25 = *MEMORY[0x1E695F050];
  v26 = v22;
  v27 = v24;
  v28 = v23;
  if (*(v159 + 16))
  {
    v29 = v4[5];
    __dst[4] = v4[4];
    __dst[5] = v29;
    v30 = v4[7];
    __dst[6] = v4[6];
    __dst[7] = v30;
    v31 = v4[1];
    __dst[0] = *v4;
    __dst[1] = v31;
    v32 = v4[3];
    __dst[2] = v4[2];
    __dst[3] = v32;
    v33 = *(v4 + 312);
    *(&__dst[18] + 8) = *(v4 + 296);
    *(&__dst[19] + 8) = v33;
    v34 = *(v4 + 280);
    *(&__dst[16] + 8) = *(v4 + 264);
    *(&__dst[17] + 8) = v34;
    v35 = *(v4 + 232);
    *(&__dst[15] + 8) = *(v4 + 248);
    *(&__dst[14] + 8) = v35;
    v36 = *(v4 + 200);
    *(&__dst[13] + 8) = *(v4 + 216);
    *(&__dst[12] + 8) = v36;
    v37 = *(v4 + 168);
    *(&__dst[11] + 8) = *(v4 + 184);
    *(&__dst[10] + 8) = v37;
    v38 = *(v4 + 136);
    *(&__dst[9] + 8) = *(v4 + 152);
    *(&__dst[8] + 8) = v38;
    *&__dst[8] = v12;
    *(&__dst[20] + 1) = v19;
    LODWORD(__dst[21]) = v20;
    v39 = *(a2 + 16);
    rect1.size = *a2;
    v129 = v39;
    v130 = *(a2 + 32);
    v131 = *(a2 + 48);
    GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v159, &rect1.size);
  }

  v123 = v26;
  v124 = v25;
  v122 = v27;
  v126 = v28;
  v160.origin.x = v21;
  v160.origin.y = v22;
  v160.size.width = v24;
  v160.size.height = v23;
  if (!CGRectEqualToRect(*&v25, v160))
  {
    goto LABEL_45;
  }

  if (a3)
  {
  }

  else
  {
    v40 = MEMORY[0x1E69E7CC0];
  }

  v127 = v40;
  v117 = v20;
  v118 = v19;
  v41 = *(v12 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v120 = v12;
  v115 = MEMORY[0x1E69E7CC0];
  if (v41)
  {
    v43 = 0;
    v44 = v12 + 32;
    x = rect1.origin.x;
    while (2)
    {
      v46 = *(v12 + 16);
      v47 = (v44 + 656 * v43);
      v48 = v43;
      while (1)
      {
        if (v48 >= v46)
        {
          goto LABEL_71;
        }

        memcpy(__dst, v47, 0x289uLL);
        v43 = v48 + 1;
        if (*&__dst[14] == 1)
        {
          break;
        }

        v47 += 656;
        ++v48;
        if (v41 == v43)
        {
          v12 = v120;
LABEL_19:
          v52 = v42[2];
          if (!v52)
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }
      }

      outlined init with copy of GlassContainer.Item(__dst, &rect1.size);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1);
        v42 = v133;
      }

      v51 = v42[2];
      v50 = v42[3];
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v42 = v133;
      }

      v42[2] = v51 + 1;
      memcpy(&v42[82 * v51 + 4], __dst, 0x289uLL);
      v12 = v120;
      x = rect1.origin.x;
      if (v41 - 1 != v48)
      {
        continue;
      }

      goto LABEL_19;
    }
  }

  x = rect1.origin.x;
  v52 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v52)
  {
LABEL_20:
    v125 = a4;
    *&__dst[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
    v53 = *&__dst[0];
    v54 = *(*&__dst[0] + 16);
    v55 = 24 * v54 + 48;
    v56 = v42 + 6;
    do
    {
      v57 = *(v56 - 4);
      v58 = *(v56 - 1);
      v59 = *v56;
      *&__dst[0] = v53;
      v60 = v54 + 1;
      v61 = *(v53 + 24);

      if (v54 >= v61 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v60, 1);
        v53 = *&__dst[0];
      }

      v56 += 82;
      *(v53 + 16) = v60;
      v62 = (v53 + v55);
      *(v62 - 4) = v57;
      *(v62 - 1) = v58;
      *v62 = v59;
      v55 += 24;
      ++v54;
      --v52;
    }

    while (v52);

    a4 = v125;
    v12 = v120;
    x = rect1.origin.x;
  }

  else
  {
LABEL_26:

    v53 = MEMORY[0x1E69E7CC0];
  }

  v63 = MEMORY[0x1E69E7CC0];
  v64 = *(v127 + 16);
  v65 = v118;
  v66 = v117;
  if (v64)
  {
    v133 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v64 = *(v53 + 16);

  v133 = v63;
  v127 = v53;
  if (v64)
  {
LABEL_30:
    v67 = 0;
    v68 = v127 + 40;
    v116 = MEMORY[0x1E69E7CC0];
LABEL_31:
    v69 = v68 + 24 * v67;
    v70 = v67;
    while (v70 < v64)
    {
      v67 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        goto LABEL_70;
      }

      if (*(*&x + 16))
      {
        v71 = specialized __RawDictionaryStorage.find<A>(_:)(*(v69 - 8));
        if (v72)
        {
          v73 = *(*&x + 56) + 40 * v71;
          v74 = *(v73 + 32);
          v75 = *(v73 + 16);
          __dst[0] = *v73;
          __dst[1] = v75;
          *&__dst[2] = v74;
          type metadata accessor for Anchor<CGRect>(0);

          outlined init with copy of GlassContainer.ItemData(__dst, &rect1.size);
          if (AGGraphGetWeakValue())
          {

            outlined destroy of GlassContainer.ItemData(__dst);

            MEMORY[0x193ABF170](v76);
            if (*(v133 + 16) >= *(v133 + 24) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v116 = v133;
            x = rect1.origin.x;
            v68 = v127 + 40;
            if (v67 == v64)
            {
LABEL_42:
              v12 = v120;
              v65 = v118;
              v66 = v117;
              v63 = MEMORY[0x1E69E7CC0];
              goto LABEL_43;
            }

            goto LABEL_31;
          }

          outlined destroy of GlassContainer.ItemData(__dst);

          x = rect1.origin.x;
        }
      }

      ++v70;
      v69 += 24;
      if (v67 == v64)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v116 = v63;
LABEL_43:
  __dst[4] = v154;
  __dst[5] = v155;
  __dst[6] = v156;
  __dst[7] = v157;
  __dst[0] = v150;
  __dst[1] = v151;
  __dst[2] = v152;
  __dst[3] = v153;
  *(&__dst[18] + 8) = v148;
  *(&__dst[19] + 8) = v149;
  *(&__dst[16] + 8) = v146;
  *(&__dst[17] + 8) = v147;
  *(&__dst[15] + 8) = v145;
  *(&__dst[14] + 8) = v144;
  *(&__dst[13] + 8) = v143;
  *(&__dst[12] + 8) = v142;
  *(&__dst[11] + 8) = v141;
  *(&__dst[10] + 8) = v140;
  *(&__dst[9] + 8) = v139;
  *(&__dst[8] + 8) = v138;
  *&__dst[8] = v12;
  *(&__dst[20] + 1) = v65;
  LODWORD(__dst[21]) = v66;
  rect1.size = v134;
  v129 = v135;
  v130 = v136;
  v131 = v137;
  GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v116, &rect1.size);
  v123 = v78;
  v124 = v77;
  v122 = v79;
  v126 = v80;

  if ((a3 & 2) == 0)
  {

LABEL_45:
    v81 = v21;
    v82 = v22;
    v83 = v24;
    v84 = v23;
LABEL_62:
    rect1.origin.x = v81;
    v121 = v82;
    v101 = v83;
    v102 = v84;
    v161.origin.x = v21;
    v161.origin.y = v22;
    v161.size.width = v24;
    v161.size.height = v23;
    v103 = CGRectEqualToRect(*&v81, v161);
    v105 = v123;
    v104 = v124;
    v106 = v126;
    v107 = v122;
    if (v103)
    {
      rect1.origin.x = v124;
      v121 = v123;
      v83 = v122;
      v84 = v126;
    }

    v162.origin.x = v21;
    v162.origin.y = v22;
    v162.size.width = v24;
    v162.size.height = v23;
    v108 = CGRectEqualToRect(*&v104, v162);
    outlined destroy of GlassContainer.EntryState(v158);
    if (v108)
    {
      v109 = 0uLL;
      v110 = 1;
      v111 = 0.0;
      v112 = 0.0;
      v113 = 0.0;
      v114 = 0.0;
      v83 = 0.0;
      v84 = 0.0;
    }

    else
    {
      v110 = 0;
      *&v109 = v126;
      *(&v109 + 1) = *&rect1.origin.x;
      v112 = v123;
      v111 = v124;
      v114 = v121;
      v113 = v122;
    }

    *a4 = v111;
    *(a4 + 8) = v112;
    *(a4 + 16) = v113;
    *(a4 + 24) = v109;
    *(a4 + 40) = v114;
    *(a4 + 48) = v83;
    *(a4 + 56) = v84;
    *(a4 + 64) = v110;
    return;
  }

  v133 = v63;
  v85 = *(v53 + 16);
  if (!v85)
  {
LABEL_61:
    *(&__dst[18] + 8) = v148;
    *(&__dst[19] + 8) = v149;
    *(&__dst[16] + 8) = v146;
    *(&__dst[17] + 8) = v147;
    __dst[4] = v154;
    __dst[5] = v155;
    __dst[6] = v156;
    __dst[7] = v157;
    __dst[0] = v150;
    __dst[1] = v151;
    __dst[2] = v152;
    __dst[3] = v153;
    *(&__dst[15] + 8) = v145;
    *(&__dst[14] + 8) = v144;
    *(&__dst[13] + 8) = v143;
    *(&__dst[12] + 8) = v142;
    *(&__dst[11] + 8) = v141;
    *(&__dst[10] + 8) = v140;
    *(&__dst[9] + 8) = v139;
    *(&__dst[8] + 8) = v138;
    *&__dst[8] = v12;
    *(&__dst[20] + 1) = v118;
    LODWORD(__dst[21]) = v117;
    rect1.size = v134;
    v129 = v135;
    v130 = v136;
    v131 = v137;
    GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(v115, &rect1.size);
    rect1.origin.x = v96;
    v98 = v97;
    v83 = v99;
    v84 = v100;

    v81 = rect1.origin.x;
    v82 = v98;
    goto LABEL_62;
  }

  v86 = 0;
  v87 = v53 + 40;
  v115 = MEMORY[0x1E69E7CC0];
LABEL_48:
  v88 = v87 + 24 * v86;
  v89 = v86;
  while (v89 < v85)
  {
    v86 = v89 + 1;
    if (__OFADD__(v89, 1))
    {
      goto LABEL_73;
    }

    if (*(*&x + 16))
    {
      v90 = specialized __RawDictionaryStorage.find<A>(_:)(*(v88 - 8));
      if (v91)
      {
        v92 = *(*&rect1.origin.x + 56) + 40 * v90;
        v93 = *(v92 + 32);
        v94 = *(v92 + 16);
        __dst[0] = *v92;
        __dst[1] = v94;
        *&__dst[2] = v93;
        type metadata accessor for Anchor<CGRect>(0);

        outlined init with copy of GlassContainer.ItemData(__dst, &rect1.size);
        if (AGGraphGetWeakValue())
        {

          outlined destroy of GlassContainer.ItemData(__dst);

          MEMORY[0x193ABF170](v95);
          if (*(v133 + 16) >= *(v133 + 24) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v115 = v133;
          v87 = v53 + 40;
          v12 = v120;
          x = rect1.origin.x;
          if (v86 != v85)
          {
            goto LABEL_48;
          }

          goto LABEL_61;
        }

        outlined destroy of GlassContainer.ItemData(__dst);
      }
    }

    ++v89;
    v88 += 24;
    x = rect1.origin.x;
    if (v86 == v85)
    {
      v12 = v120;
      goto LABEL_61;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Item.ID.Explicit()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v4);
  MEMORY[0x193AC11A0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GlassContainer.Item.ID.Explicit()
{
  v1 = v0[1];
  (*(**v0 + 120))();
  return MEMORY[0x193AC11A0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Item.ID.Explicit(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  (*(*v2 + 120))(v5);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

BOOL GlassContainer.Item.ID.matches(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return *v1 == *a1;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(v1 + 16);
    if (v3 != v2)
    {
      v8 = *(*v3 + 112);

      v10 = v8(v9);

      if ((v10 & 1) == 0)
      {
        return 0;
      }
    }

    return v7 == v6;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Item.ID()
{
  v1 = *v0;
  v3 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    (*(*v3 + 120))(v5);
    MEMORY[0x193AC11A0](v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance GlassContainer.Item.ID(uint64_t a1)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher._combine(_:)(*v1);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 120))(a1);
    MEMORY[0x193AC11A0](v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Item.ID(uint64_t a1)
{
  v2 = *v1;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 120))(v6);
    MEMORY[0x193AC11A0](v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.ItemData(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for AGSubgraphRef(0);
  lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef();
  if ((static _CFObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Anchor<CGRect>(0);
  if ((static WeakAttribute.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static WeakAttribute.== infix(_:_:)();
}

uint64_t GlassContainer.Storage.appendToExistingEntry(item:)(void *__src)
{
  memcpy(__dst, __src, 0x289uLL);
  v2 = *(v1 + 16);
  v3 = *(v2 + 2);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    *(v1 + 16) = v2;
    if (v3)
    {
LABEL_3:
      v386 = v1;
      v4 = 0;
      v5 = 0;
      v400 = LODWORD(__dst[0]);
      v398 = __dst[2];
      v399 = __dst[1];
      v396 = __dst[5];
      v397 = __dst[4];
      v401 = v3;
      v402 = __dst[17];
      v404 = (__dst[16] == 0) | LOBYTE(__dst[18]);
      v381 = LOBYTE(__dst[3]);
      v6 = 256;
      if (!LOBYTE(__dst[3]))
      {
        v6 = 0;
      }

      v395 = v6;
      v405 = v2;
      v403 = __dst[16];
      while (1)
      {
        if (v5 >= *(v2 + 2))
        {
          __break(1u);
          goto LABEL_474;
        }

        v7 = &v2[v4];
        if (v404)
        {
          v1 = *(v7 + 4);
          v8 = *(v7 + 5);
          v9 = *(v7 + 6);
          v10 = *(v7 + 7);
          v11 = v7[64];
          v416 = v400;
          v417 = v399;
          v418 = v398;
          v419 = 0;
          v420 = 1;
          v421 = v1;
          v422 = v8;
          v423 = v9;
          v424 = v10;
          v425 = v11;
          if (v11 == 1)
          {
            LODWORD(v411) = v400;
            v412 = v399;
            v413 = v398;
            LODWORD(v406) = v1;
            v407 = v8;
            v408 = v9;

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);
            v12 = specialized static GlassContainer.Item.ID.== infix(_:_:)(&v411, &v406);
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
            outlined consume of GlassContainer.Entry.ModelID(v1, v8, v9, v10, 1);

            if (v12)
            {
              goto LABEL_467;
            }
          }

          else
          {

            outlined copy of GlassContainer.Entry.ModelID(v1, v8, v9, v10, v11);
            outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
          }

          goto LABEL_7;
        }

        v1 = v397;
        v411 = v397;
        v412 = v396;

        v13 = v403;
        outlined copy of _Glass.Variant.Role(v397, v396);
        _Glass.Variant.ID.init(_:)(&v411, &v406);
        v14 = v406;
        v15 = v407;
        v16 = *(v7 + 4);
        v17 = *(v7 + 5);
        v18 = *(v7 + 6);
        v19 = *(v7 + 7);
        v20 = v7[64];
        v416 = v406;
        v417 = v395 | v407;
        v418 = v403;
        v419 = v402;
        v420 = 0;
        v421 = v16;
        v422 = v17;
        v423 = v18;
        v424 = v19;
        v425 = v20;
        if (v20)
        {
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, v20);
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
          goto LABEL_88;
        }

        if (!(v407 >> 6))
        {
          break;
        }

        if (v407 >> 6 == 1)
        {
          if ((v17 & 0xC0) != 0x40)
          {
            goto LABEL_48;
          }

          v411 = v406;
          LOBYTE(v412) = v407 & 0x3F;
          v406 = v16;
          LOBYTE(v407) = v17 & 0x3F;
          v21 = v18;
          v22 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v15);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v393 = v22;
          v394 = v21;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v21, v22, 0);
          outlined copy of _Glass.Variant.ID(v14, v15);

          outlined copy of _Glass.Variant.ID(v14, v15);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v1 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v14, v15);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v14, v15);
          if ((v1 & 1) == 0)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v406 | v407 ^ 0x80)
          {
            v31 = v17 & 0xC0;
            if (v407 == 128 && v406 == 1)
            {
              if (v31 != 128 || v16 != 1 || v17 != 128)
              {
                goto LABEL_48;
              }

              v33 = v407;
              v34 = v406;
              v35 = v18;
              v36 = v19;
              v1 = 1;
            }

            else
            {
              if (v31 != 128 || v16 != 2 || v17 != 128)
              {
                goto LABEL_48;
              }

              v33 = v407;
              v34 = v406;
              v35 = v18;
              v36 = v19;
              v1 = 2;
            }
          }

          else
          {
            if ((v17 & 0xC0) != 0x80 || v16 || v17 != 128)
            {
LABEL_48:
              v1 = v18;
              v39 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v1, v39, 0);
              outlined copy of _Glass.Variant.ID(v14, v15);

              outlined copy of _Glass.Variant.ID(v14, v15);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined consume of _Glass.Variant.ID(v14, v15);
              outlined consume of _Glass.Variant.ID(v16, v17);
              outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
              v40 = v16;
              v41 = v17;
              v42 = v1;
              v43 = v39;
              goto LABEL_87;
            }

            v33 = v407;
            v34 = v406;
            v35 = v18;
            v36 = v19;
            v1 = 0;
          }

          outlined copy of GlassContainer.Entry.ModelID(v1, v17, v35, v36, 0);
          v393 = v36;
          v394 = v35;
          outlined copy of GlassContainer.Entry.ModelID(v1, v17, v35, v36, 0);
          v14 = v34;
          v37 = v34;
          v15 = v33;
          outlined copy of _Glass.Variant.ID(v37, v33);

          outlined consume of _Glass.Variant.ID(v14, v33);
          outlined consume of _Glass.Variant.ID(v1, 0x80u);
        }

LABEL_45:
        if (v381 == ((v17 & 0x100) == 0))
        {
          goto LABEL_86;
        }

        v1 = v394;
        if (v13 == v394)
        {
          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
          v38 = v393;
          outlined consume of GlassContainer.Entry.ModelID(v16, v17, v13, v393, 0);
          outlined consume of _Glass.Variant.ID(v14, v15);
        }

        else
        {
          v57 = *(*v13 + 112);

          v1 = v57(v58);

          outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
          v38 = v393;
          outlined consume of GlassContainer.Entry.ModelID(v16, v17, v394, v393, 0);
          outlined consume of _Glass.Variant.ID(v14, v15);

          if ((v1 & 1) == 0)
          {
            goto LABEL_88;
          }
        }

        v3 = v401;
        if (v402 == v38)
        {
LABEL_467:
          v2 = v405;
          v303 = &v405[v4];
          v304 = *&v405[v4 + 160];
          outlined init with copy of GlassContainer.Item(__dst, &v416);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v405[v4 + 160] = v304;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v304 + 2) + 1, 1, v304);
            *(v303 + 20) = v304;
          }

          v307 = *(v304 + 2);
          v306 = *(v304 + 3);
          if (v307 >= v306 >> 1)
          {
            v304 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v306 > 1), v307 + 1, 1, v304);
            *(v303 + 20) = v304;
          }

          v302 = v386;
          *(v304 + 2) = v307 + 1;
          memcpy(&v304[656 * v307 + 32], __dst, 0x289uLL);
          v405[v4 + 169] = (v405[v4 + 169] | BYTE1(__dst[22])) & 1;
          result = 1;
          goto LABEL_472;
        }

LABEL_7:
        ++v5;
        v4 += 344;
        v2 = v405;
        if (v3 == v5)
        {
          result = 0;
          v302 = v386;
LABEL_472:
          *(v302 + 16) = v2;
          return result;
        }
      }

      if (v17 >= 0x40u)
      {
        goto LABEL_48;
      }

      v380 = v407;
      v23 = *(v406 + 16);
      v24 = *(v406 + 24);
      v25 = *(v406 + 48);
      v26 = *(v16 + 16);
      v27 = *(v16 + 24);
      v28 = *(v16 + 48);
      v393 = v19;
      v394 = v18;
      v387 = v27;
      v382 = v26;
      if (v24 >> 6)
      {
        if (v24 >> 6 == 1)
        {
          if ((v27 & 0xC0) != 0x40)
          {
            goto LABEL_82;
          }

          v367 = *(v16 + 32);
          v368 = *(v406 + 40);
          v366 = *(v16 + 40);
          v369 = *(v406 + 32);
          v411 = *(v406 + 16);
          LOBYTE(v412) = v24 & 0x3F;
          v406 = v26;
          LOBYTE(v407) = v27 & 0x3F;
          v29 = v23;
          v375 = v23;
          v30 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          v15 = v380;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v29, v24);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v394, v30, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          v1 = v375;
          outlined copy of _Glass.Variant.ID(v375, v24);
          outlined copy of _Glass.Variant.ID(v382, v387);
          v359 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v375, v24);
          outlined consume of _Glass.Variant.ID(v382, v387);
          outlined consume of _Glass.Variant.ID(v382, v387);
          outlined consume of _Glass.Variant.ID(v375, v24);
          if ((v359 & 1) == 0)
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v23 | v24 ^ 0x80)
          {
            v54 = v27 & 0xC0;
            if (*(v406 + 24) == 128 && v23 == 1)
            {
              if (v54 != 128 || v26 != 1 || v27 != 128)
              {
                goto LABEL_82;
              }

              v372 = *(v406 + 24);
              v377 = *(v406 + 16);
              v367 = *(v16 + 32);
              v368 = *(v406 + 40);
              v366 = *(v16 + 40);
              v369 = *(v406 + 32);
              v56 = 1;
            }

            else
            {
              if (v54 != 128 || v26 != 2 || v27 != 128)
              {
                goto LABEL_82;
              }

              v372 = *(v406 + 24);
              v377 = *(v406 + 16);
              v367 = *(v16 + 32);
              v368 = *(v406 + 40);
              v366 = *(v16 + 40);
              v369 = *(v406 + 32);
              v56 = 2;
            }
          }

          else
          {
            if ((v27 & 0xC0) != 0x80 || v26 || v27 != 128)
            {
LABEL_82:
              v64 = *(v406 + 24);
              v65 = *(v406 + 16);
              v66 = v18;
              v67 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              v15 = v380;
              outlined copy of _Glass.Variant.ID(v14, v380);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v66, v67, 0);
              outlined copy of _Glass.Variant.ID(v14, v380);

              outlined copy of _Glass.Variant.ID(v14, v380);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v65, v64);
              v1 = v382;
              outlined copy of _Glass.Variant.ID(v382, v387);
              outlined consume of _Glass.Variant.ID(v65, v64);
              v68 = v382;
              v69 = v387;
              goto LABEL_83;
            }

            v372 = *(v406 + 24);
            v377 = *(v406 + 16);
            v367 = *(v16 + 32);
            v368 = *(v406 + 40);
            v366 = *(v16 + 40);
            v369 = *(v406 + 32);
            v56 = 0;
          }

          v59 = v18;
          v60 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          v15 = v380;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v59, v60, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v377, v372);
          outlined consume of _Glass.Variant.ID(v56, 0x80u);
        }

LABEL_77:
        v61 = v368;
        if (v368 >> 6)
        {
          v62 = v369;
          v1 = v366;
          v63 = v367;
          if (v368 >> 6 == 1)
          {
            if ((v366 & 0xC0) != 0x40)
            {
              goto LABEL_132;
            }

            v411 = v369;
            LOBYTE(v412) = v368 & 0x3F;
            v406 = v367;
            LOBYTE(v407) = v366 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            v388 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v367, v366);
            outlined consume of _Glass.Variant.ID(v367, v366);
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v14, v15);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v14, v15);
            if ((v388 & 1) == 0)
            {
              goto LABEL_86;
            }

            goto LABEL_130;
          }

          if (v369 | v368 ^ 0x80)
          {
            v78 = v366 & 0xC0;
            if (v368 == 128 && v369 == 1)
            {
              if (v78 != 128 || v367 != 1 || v366 != 128)
              {
                goto LABEL_132;
              }

              v1 = 1;
            }

            else
            {
              if (v78 != 128 || v367 != 2 || v366 != 128)
              {
                goto LABEL_132;
              }

              v1 = 2;
            }
          }

          else
          {
            if ((v366 & 0xC0) != 0x80 || v367 || v366 != 128)
            {
LABEL_132:
              v370 = v62;
              v96 = v1;
              v1 = v63;
              outlined copy of _Glass.Variant.ID(v62, v368);
              outlined copy of _Glass.Variant.ID(v1, v96);
              outlined consume of _Glass.Variant.ID(v370, v368);
              v68 = v1;
              v69 = v96;
              goto LABEL_83;
            }

            v1 = 0;
          }

          outlined consume of _Glass.Variant.ID(v369, v368);
          outlined consume of _Glass.Variant.ID(v1, 0x80u);
          outlined consume of _Glass.Variant.ID(v14, v15);
          outlined consume of _Glass.Variant.ID(v16, v17);
          outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_129:
          outlined consume of _Glass.Variant.ID(v14, v15);
LABEL_130:
          if (v25 != v28)
          {
            goto LABEL_86;
          }

          goto LABEL_45;
        }

        v1 = v366;
        v62 = v369;
        v63 = v367;
        if (v366 >= 0x40)
        {
          goto LABEL_132;
        }

        v70 = *(v369 + 16);
        v71 = *(v369 + 24);
        v72 = *(v369 + 48);
        v73 = *(v367 + 16);
        v74 = *(v367 + 24);
        v75 = *(v367 + 48);
        v389 = *(v369 + 24);
        v378 = v70;
        v373 = *(v367 + 24);
        v383 = v73;
        if (v71 >> 6)
        {
          if (v71 >> 6 == 1)
          {
            if ((v74 & 0xC0) != 0x40)
            {
              goto LABEL_222;
            }

            v353 = *(v367 + 32);
            v357 = *(v369 + 40);
            v350 = *(v367 + 40);
            v361 = *(v369 + 32);
            v411 = *(v369 + 16);
            LOBYTE(v412) = v71 & 0x3F;
            v406 = v73;
            LOBYTE(v407) = v74 & 0x3F;
            v76 = v70;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v76, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v378, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            v77 = v367;
            v345 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            outlined consume of _Glass.Variant.ID(v378, v389);
            outlined consume of _Glass.Variant.ID(v383, v373);
            outlined consume of _Glass.Variant.ID(v383, v373);
            outlined consume of _Glass.Variant.ID(v378, v389);
            if ((v345 & 1) == 0)
            {
              goto LABEL_224;
            }
          }

          else
          {
            if (v70 | v71 ^ 0x80)
            {
              v133 = v74 & 0xC0;
              if (*(v369 + 24) == 128 && v70 == 1)
              {
                if (v133 != 128 || v73 != 1 || v74 != 128)
                {
                  goto LABEL_222;
                }

                v353 = *(v367 + 32);
                v357 = *(v369 + 40);
                v350 = *(v367 + 40);
                v361 = *(v369 + 32);
                v135 = 1;
              }

              else
              {
                if (v133 != 128 || v73 != 2 || v74 != 128)
                {
                  goto LABEL_222;
                }

                v353 = *(v367 + 32);
                v357 = *(v369 + 40);
                v350 = *(v367 + 40);
                v361 = *(v369 + 32);
                v135 = 2;
              }

              v384 = v135;
            }

            else
            {
              if ((v74 & 0xC0) != 0x80 || v73 || v74 != 128)
              {
LABEL_222:
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v367, v366);
                outlined copy of _Glass.Variant.ID(v369, v368);
                outlined copy of _Glass.Variant.ID(v367, v366);
                outlined copy of _Glass.Variant.ID(v378, v389);
                outlined copy of _Glass.Variant.ID(v383, v373);
                outlined consume of _Glass.Variant.ID(v378, v389);
                v154 = v383;
                v155 = v373;
LABEL_223:
                outlined consume of _Glass.Variant.ID(v154, v155);
                v1 = v366;
                v77 = v367;
LABEL_224:
                outlined consume of _Glass.Variant.ID(v369, v368);
                outlined consume of _Glass.Variant.ID(v77, v1);
                outlined consume of _Glass.Variant.ID(v77, v1);
LABEL_225:
                v69 = v368;
                v68 = v369;
LABEL_83:
                outlined consume of _Glass.Variant.ID(v68, v69);
LABEL_84:
                outlined consume of _Glass.Variant.ID(v14, v15);
                outlined consume of _Glass.Variant.ID(v16, v17);
                outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_85:
                outlined consume of _Glass.Variant.ID(v14, v15);
LABEL_86:
                outlined destroy of (GlassContainer.Entry.ModelID, GlassContainer.Entry.ModelID)(&v416);
                v40 = v16;
                v41 = v17;
                v43 = v393;
                v42 = v394;
LABEL_87:
                outlined consume of GlassContainer.Entry.ModelID(v40, v41, v42, v43, 0);
                outlined consume of _Glass.Variant.ID(v14, v15);

LABEL_88:
                v3 = v401;
                goto LABEL_7;
              }

              v353 = *(v367 + 32);
              v357 = *(v369 + 40);
              v350 = *(v367 + 40);
              v361 = *(v369 + 32);
              v384 = 0;
            }

            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined consume of _Glass.Variant.ID(v378, v389);
            outlined consume of _Glass.Variant.ID(v384, 0x80u);
          }

LABEL_217:
          v366 = v1;
          if (v357 >> 6)
          {
            v152 = v361;
            v153 = v350;
            if (v357 >> 6 == 1)
            {
              if ((v350 & 0xC0) != 0x40)
              {
                goto LABEL_322;
              }

              v411 = v361;
              LOBYTE(v412) = v357 & 0x3F;
              v406 = v353;
              LOBYTE(v407) = v350 & 0x3F;
              outlined copy of _Glass.Variant.ID(v361, v357);
              outlined copy of _Glass.Variant.ID(v353, v350);
              outlined copy of _Glass.Variant.ID(v361, v357);
              outlined copy of _Glass.Variant.ID(v353, v350);
              v390 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
              outlined consume of _Glass.Variant.ID(v361, v357);
              outlined consume of _Glass.Variant.ID(v353, v350);
              outlined consume of _Glass.Variant.ID(v353, v350);
              outlined consume of _Glass.Variant.ID(v361, v357);
              outlined consume of _Glass.Variant.ID(v369, v368);
              v1 = v367;
              outlined consume of _Glass.Variant.ID(v367, v366);
              outlined consume of _Glass.Variant.ID(v367, v366);
              outlined consume of _Glass.Variant.ID(v369, v368);
              outlined consume of _Glass.Variant.ID(v14, v15);
              outlined consume of _Glass.Variant.ID(v16, v17);
              outlined consume of _Glass.Variant.ID(v16, v17);
              if ((v390 & 1) == 0)
              {
                goto LABEL_85;
              }

              goto LABEL_320;
            }

            if (v361 | v357 ^ 0x80)
            {
              v190 = v350 & 0xC0;
              if (v357 == 128 && v361 == 1)
              {
                if (v190 != 128 || v353 != 1 || v350 != 128)
                {
                  goto LABEL_322;
                }

                v192 = 1;
              }

              else
              {
                if (v190 != 128 || v353 != 2 || v350 != 128)
                {
                  goto LABEL_322;
                }

                v192 = 2;
              }
            }

            else
            {
              if ((v350 & 0xC0) != 0x80 || v353 || v350 != 128)
              {
LABEL_322:
                v364 = v152;
                v220 = v153;
                outlined copy of _Glass.Variant.ID(v152, v357);
                outlined copy of _Glass.Variant.ID(v353, v220);
                outlined consume of _Glass.Variant.ID(v364, v357);
                v154 = v353;
                v155 = v220;
                goto LABEL_223;
              }

              v192 = 0;
            }

            outlined consume of _Glass.Variant.ID(v361, v357);
            outlined consume of _Glass.Variant.ID(v192, 0x80u);
            outlined consume of _Glass.Variant.ID(v369, v368);
            v1 = v366;
            outlined consume of _Glass.Variant.ID(v367, v366);
            outlined consume of _Glass.Variant.ID(v367, v366);
LABEL_319:
            outlined consume of _Glass.Variant.ID(v369, v368);
            outlined consume of _Glass.Variant.ID(v14, v15);
            outlined consume of _Glass.Variant.ID(v16, v17);
            outlined consume of _Glass.Variant.ID(v16, v17);
LABEL_320:
            if (v72 != v75)
            {
              goto LABEL_85;
            }

            goto LABEL_129;
          }

          v153 = v350;
          v152 = v361;
          if (v350 >= 0x40)
          {
            goto LABEL_322;
          }

          v181 = *(v361 + 16);
          v182 = *(v361 + 24);
          v183 = *(v361 + 48);
          v184 = *(v353 + 16);
          v185 = *(v353 + 24);
          v186 = *(v353 + 48);
          v391 = *(v353 + 24);
          v385 = v184;
          v374 = v181;
          v379 = *(v361 + 24);
          if (!(v182 >> 6))
          {
            if (v185 >= 0x40)
            {
              goto LABEL_436;
            }

            v337 = *(v353 + 32);
            v340 = *(v361 + 32);
            v343 = *(v353 + 40);
            v347 = *(v361 + 40);
            v268 = *(v181 + 48);
            v269 = *(v181 + 40);
            v270 = *(v181 + 32);
            v271 = *(v181 + 24);
            v272 = *(v184 + 16);
            v273 = *(v184 + 24);
            v274 = *(v184 + 32);
            v275 = *(v184 + 40);
            v276 = *(v184 + 48);
            v411 = *(v181 + 16);
            LOBYTE(v412) = v271;
            v413 = v270;
            v414 = v269;
            v415 = v268;
            v406 = v272;
            LOBYTE(v407) = v273;
            v408 = v274;
            v409 = v275;
            v410 = v276;
            outlined copy of _Glass.Variant.ID(v361, v357);
            v187 = v350;
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v385, v391);
            v188 = v361;
            outlined copy of _Glass.Variant.ID(v361, v357);
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined copy of _Glass.Variant.ID(v181, v379);
            outlined copy of _Glass.Variant.ID(v385, v391);
            v189 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
LABEL_390:
            v333 = v189;
            outlined consume of _Glass.Variant.ID(v181, v379);
            outlined consume of _Glass.Variant.ID(v385, v391);
            v277 = v357;
            outlined consume of _Glass.Variant.ID(v385, v391);
            outlined consume of _Glass.Variant.ID(v374, v379);
            if ((v333 & 1) == 0)
            {
              goto LABEL_437;
            }

LABEL_432:
            v282 = v188;
            v283 = v277;
            v310 = v17;
            v313 = v16;
            v284 = v15;
            if (v347 >> 6)
            {
              if (v347 >> 6 != 1)
              {
                if (v340 | v347 ^ 0x80)
                {
                  if (v347 == 128 && v340 == 1)
                  {
                    if ((v343 & 0xC0) != 0x80 || v337 != 1 || v343 != 128)
                    {
                      goto LABEL_444;
                    }

                    v300 = 1;
                  }

                  else
                  {
                    if ((v343 & 0xC0) != 0x80 || v337 != 2 || v343 != 128)
                    {
                      goto LABEL_444;
                    }

                    v300 = 2;
                  }
                }

                else
                {
                  if ((v343 & 0xC0) != 0x80 || v337 || v343 != 128)
                  {
                    goto LABEL_444;
                  }

                  v300 = 0;
                }

                outlined copy of _Glass.Variant.ID(v300, 0x80u);
                outlined consume of _Glass.Variant.ID(v340, v347);
                outlined consume of _Glass.Variant.ID(v300, 0x80u);
                outlined consume of _Glass.Variant.ID(v340, v347);
                v188 = v282;
                outlined consume of _Glass.Variant.ID(v282, v277);
                v187 = v350;
                outlined consume of _Glass.Variant.ID(v353, v350);
                v13 = v403;
                v15 = v284;
                v16 = v313;
                goto LABEL_464;
              }

              if ((v343 & 0xC0) != 0x40)
              {
                goto LABEL_443;
              }

              v285 = v347;
              v287 = v337;
              v286 = v340;
              v411 = v340;
              v288 = v343;
              LOBYTE(v412) = v347 & 0x3F;
              v406 = v337;
              LOBYTE(v407) = v343 & 0x3F;
              outlined copy of _Glass.Variant.ID(v337, v343);
              outlined copy of _Glass.Variant.ID(v340, v347);
              outlined copy of _Glass.Variant.ID(v337, v343);
              outlined copy of _Glass.Variant.ID(v340, v347);
              v289 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            }

            else
            {
              if (v343 >= 0x40)
              {
LABEL_443:
                outlined copy of _Glass.Variant.ID(v340, v347);
LABEL_444:
                outlined copy of _Glass.Variant.ID(v337, v343);
                outlined consume of _Glass.Variant.ID(v340, v347);
                outlined consume of _Glass.Variant.ID(v337, v343);
                v16 = v313;
                v188 = v282;
                v187 = v350;
                goto LABEL_437;
              }

              v287 = v337;
              v286 = v340;
              v290 = *(v340 + 48);
              v291 = *(v340 + 40);
              v292 = *(v340 + 32);
              v293 = *(v340 + 24);
              v294 = *(v337 + 16);
              v295 = *(v337 + 24);
              v296 = *(v337 + 32);
              v297 = *(v337 + 40);
              v298 = *(v337 + 48);
              v411 = *(v340 + 16);
              LOBYTE(v412) = v293;
              v413 = v292;
              v414 = v291;
              v415 = v290;
              v406 = v294;
              LOBYTE(v407) = v295;
              v408 = v296;
              v409 = v297;
              v410 = v298;
              v288 = v343;
              outlined copy of _Glass.Variant.ID(v337, v343);
              v285 = v347;
              outlined copy of _Glass.Variant.ID(v340, v347);
              outlined copy of _Glass.Variant.ID(v337, v343);
              outlined copy of _Glass.Variant.ID(v340, v347);
              v289 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
            }

            v392 = v289;
            outlined consume of _Glass.Variant.ID(v286, v285);
            outlined consume of _Glass.Variant.ID(v287, v288);
            outlined consume of _Glass.Variant.ID(v287, v288);
            outlined consume of _Glass.Variant.ID(v286, v285);
            v277 = v283;
            v188 = v282;
            outlined consume of _Glass.Variant.ID(v282, v277);
            v187 = v350;
            outlined consume of _Glass.Variant.ID(v353, v350);
            v13 = v403;
            v15 = v284;
            v17 = v310;
            v16 = v313;
            if ((v392 & 1) == 0)
            {
              goto LABEL_438;
            }

LABEL_464:
            outlined consume of _Glass.Variant.ID(v353, v187);
            outlined consume of _Glass.Variant.ID(v188, v277);
            outlined consume of _Glass.Variant.ID(v369, v368);
            v1 = v366;
            outlined consume of _Glass.Variant.ID(v367, v366);
            outlined consume of _Glass.Variant.ID(v367, v366);
            if (v183 != v186)
            {
              goto LABEL_225;
            }

            goto LABEL_319;
          }

          if (v182 >> 6 == 1)
          {
            if ((v185 & 0xC0) != 0x40)
            {
              goto LABEL_436;
            }

            v337 = *(v353 + 32);
            v340 = *(v361 + 32);
            v343 = *(v353 + 40);
            v347 = *(v361 + 40);
            v411 = *(v361 + 16);
            LOBYTE(v412) = v182 & 0x3F;
            v406 = v184;
            LOBYTE(v407) = v185 & 0x3F;
            outlined copy of _Glass.Variant.ID(v361, v357);
            v187 = v350;
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v385, v391);
            v188 = v361;
            outlined copy of _Glass.Variant.ID(v361, v357);
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined copy of _Glass.Variant.ID(v181, v379);
            outlined copy of _Glass.Variant.ID(v385, v391);
            v189 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            goto LABEL_390;
          }

          if (v181 | v182 ^ 0x80)
          {
            v278 = v185 & 0xC0;
            if (*(v361 + 24) != 128 || v181 != 1)
            {
              if (v278 != 128 || v184 != 2 || v185 != 128)
              {
                goto LABEL_436;
              }

              v337 = *(v353 + 32);
              v340 = *(v361 + 32);
              v343 = *(v353 + 40);
              v347 = *(v361 + 40);
              v277 = v357;
              outlined copy of _Glass.Variant.ID(v361, v357);
              outlined copy of _Glass.Variant.ID(v353, v350);
              outlined copy of _Glass.Variant.ID(v361, v357);
              v188 = v361;
              outlined copy of _Glass.Variant.ID(v353, v350);
              outlined consume of _Glass.Variant.ID(v374, v379);
              v280 = 2;
              v281 = 0x80;
              goto LABEL_431;
            }

            if (v278 != 128 || v184 != 1)
            {
              goto LABEL_436;
            }
          }

          else if ((v185 & 0xC0) != 0x80 || v184)
          {
LABEL_436:
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v181, v182);
            outlined copy of _Glass.Variant.ID(v385, v391);
            outlined copy of _Glass.Variant.ID(v361, v357);
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined copy of _Glass.Variant.ID(v361, v357);
            v187 = v350;
            outlined copy of _Glass.Variant.ID(v353, v350);
            outlined consume of _Glass.Variant.ID(v181, v379);
            outlined consume of _Glass.Variant.ID(v385, v391);
            v277 = v357;
            v188 = v361;
            outlined consume of _Glass.Variant.ID(v374, v379);
LABEL_437:
            outlined consume of _Glass.Variant.ID(v188, v277);
            outlined consume of _Glass.Variant.ID(v353, v187);
LABEL_438:
            outlined consume of _Glass.Variant.ID(v353, v187);
            v154 = v188;
            v155 = v277;
            goto LABEL_223;
          }

          if (v185 != 128)
          {
            goto LABEL_436;
          }

          v337 = *(v353 + 32);
          v340 = *(v361 + 32);
          v343 = *(v353 + 40);
          v347 = *(v361 + 40);
          v277 = v357;
          outlined copy of _Glass.Variant.ID(v361, v357);
          outlined copy of _Glass.Variant.ID(v353, v350);
          outlined copy of _Glass.Variant.ID(v361, v357);
          v188 = v361;
          outlined copy of _Glass.Variant.ID(v353, v350);
          outlined consume of _Glass.Variant.ID(v374, v379);
          outlined consume of _Glass.Variant.ID(v385, v391);
          v280 = v374;
          v281 = v379;
LABEL_431:
          outlined consume of _Glass.Variant.ID(v280, v281);
          goto LABEL_432;
        }

        if (v74 >= 0x40)
        {
          goto LABEL_222;
        }

        v123 = *(v70 + 16);
        v124 = *(v70 + 24);
        v327 = *(v70 + 32);
        v331 = *(v70 + 40);
        v125 = *(v70 + 48);
        v126 = *(v73 + 16);
        v127 = *(v73 + 24);
        v321 = *(v73 + 32);
        v128 = *(v73 + 48);
        v357 = *(v369 + 40);
        v361 = *(v369 + 32);
        v350 = *(v367 + 40);
        v353 = *(v367 + 32);
        v324 = *(v73 + 40);
        v339 = *(v70 + 24);
        v342 = v123;
        v346 = *(v73 + 24);
        v336 = v126;
        if (!(v124 >> 6))
        {
          if (v127 < 0x40)
          {
            v207 = *(v123 + 48);
            v208 = *(v123 + 40);
            v209 = *(v123 + 32);
            v210 = *(v123 + 24);
            v211 = *(v126 + 16);
            v212 = *(v126 + 24);
            v213 = *(v126 + 32);
            v214 = *(v126 + 40);
            v215 = *(v126 + 48);
            v411 = *(v123 + 16);
            LOBYTE(v412) = v210;
            v413 = v209;
            v414 = v208;
            v415 = v207;
            v406 = v211;
            LOBYTE(v407) = v212;
            v408 = v213;
            v409 = v214;
            v410 = v215;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            v129 = v389;
            outlined copy of _Glass.Variant.ID(v378, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            outlined copy of _Glass.Variant.ID(v342, v339);
            outlined copy of _Glass.Variant.ID(v336, v346);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v378, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            v130 = v339;
            outlined copy of _Glass.Variant.ID(v342, v339);
            v131 = v336;
            outlined copy of _Glass.Variant.ID(v336, v346);
            v132 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
            goto LABEL_300;
          }

          goto LABEL_347;
        }

        if (v124 >> 6 == 1)
        {
          if ((v127 & 0xC0) == 0x40)
          {
            v411 = *(v70 + 16);
            LOBYTE(v412) = v124 & 0x3F;
            v406 = v126;
            LOBYTE(v407) = v127 & 0x3F;
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            v129 = v389;
            outlined copy of _Glass.Variant.ID(v378, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            outlined copy of _Glass.Variant.ID(v342, v339);
            outlined copy of _Glass.Variant.ID(v336, v346);
            outlined copy of _Glass.Variant.ID(v369, v368);
            outlined copy of _Glass.Variant.ID(v367, v366);
            outlined copy of _Glass.Variant.ID(v378, v389);
            outlined copy of _Glass.Variant.ID(v383, v373);
            v130 = v339;
            outlined copy of _Glass.Variant.ID(v342, v339);
            v131 = v336;
            outlined copy of _Glass.Variant.ID(v336, v346);
            v132 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
LABEL_300:
            v319 = v132;
            outlined consume of _Glass.Variant.ID(v342, v130);
            outlined consume of _Glass.Variant.ID(v131, v346);
            outlined consume of _Glass.Variant.ID(v131, v346);
            v217 = v339;
            v216 = v342;
            goto LABEL_349;
          }

          goto LABEL_347;
        }

        if (v123 | v124 ^ 0x80)
        {
          v218 = v127 & 0xC0;
          if (*(v70 + 24) != 128 || v123 != 1)
          {
            if (v218 == 128 && v126 == 2 && v127 == 128)
            {
              outlined copy of _Glass.Variant.ID(v369, v368);
              outlined copy of _Glass.Variant.ID(v367, v366);
              outlined copy of _Glass.Variant.ID(v378, v389);
              outlined copy of _Glass.Variant.ID(v383, v373);
              outlined copy of _Glass.Variant.ID(v369, v368);
              outlined copy of _Glass.Variant.ID(v367, v366);
              outlined copy of _Glass.Variant.ID(v378, v389);
              outlined copy of _Glass.Variant.ID(v383, v373);
              outlined consume of _Glass.Variant.ID(v342, v339);
              outlined consume of _Glass.Variant.ID(2, 0x80u);
              goto LABEL_350;
            }

            goto LABEL_347;
          }

          if (v218 != 128 || v126 != 1)
          {
LABEL_347:
            v230 = *(v70 + 24);
            v231 = *(v70 + 16);
            v232 = *(v73 + 16);
            outlined copy of _Glass.Variant.ID(v123, v124);
            outlined copy of _Glass.Variant.ID(v231, v230);
            outlined copy of _Glass.Variant.ID(v232, v346);
            v61 = v368;
            v319 = 0;
            goto LABEL_348;
          }
        }

        else if ((v127 & 0xC0) != 0x80 || v126)
        {
          goto LABEL_347;
        }

        if (v127 == 128)
        {
          v319 = 1;
LABEL_348:
          v233 = v61;
          outlined copy of _Glass.Variant.ID(v369, v61);
          outlined copy of _Glass.Variant.ID(v367, v366);
          outlined copy of _Glass.Variant.ID(v378, v389);
          outlined copy of _Glass.Variant.ID(v383, v373);
          outlined copy of _Glass.Variant.ID(v369, v233);
          outlined copy of _Glass.Variant.ID(v367, v366);
          outlined copy of _Glass.Variant.ID(v378, v389);
          outlined copy of _Glass.Variant.ID(v383, v373);
          outlined consume of _Glass.Variant.ID(v342, v339);
          outlined consume of _Glass.Variant.ID(v336, v346);
          v216 = v342;
          v129 = v389;
          v217 = v339;
LABEL_349:
          outlined consume of _Glass.Variant.ID(v216, v217);
          if ((v319 & 1) == 0)
          {
            goto LABEL_360;
          }

LABEL_350:
          if (v331 >> 6)
          {
            v234 = v327;
            v235 = v324;
            if (v331 >> 6 != 1)
            {
              if (v327 | v331 ^ 0x80)
              {
                v253 = v324 & 0xC0;
                if (v331 == 128 && v327 == 1)
                {
                  if (v253 != 128 || v321 != 1 || v324 != 128)
                  {
                    goto LABEL_359;
                  }

                  v255 = 1;
                }

                else
                {
                  if (v253 != 128 || v321 != 2 || v324 != 128)
                  {
                    goto LABEL_359;
                  }

                  v255 = 2;
                }
              }

              else
              {
                if ((v324 & 0xC0) != 0x80 || v321 || v324 != 128)
                {
                  goto LABEL_359;
                }

                v255 = 0;
              }

              outlined copy of _Glass.Variant.ID(v255, 0x80u);
              outlined consume of _Glass.Variant.ID(v327, v331);
              outlined consume of _Glass.Variant.ID(v255, 0x80u);
              outlined consume of _Glass.Variant.ID(v327, v331);
              v247 = v378;
              outlined consume of _Glass.Variant.ID(v378, v389);
              v248 = v383;
              v249 = v373;
              outlined consume of _Glass.Variant.ID(v383, v373);
              goto LABEL_410;
            }

            if ((v324 & 0xC0) != 0x40)
            {
              goto LABEL_358;
            }

            v411 = v327;
            LOBYTE(v412) = v331 & 0x3F;
            v406 = v321;
            LOBYTE(v407) = v324 & 0x3F;
            outlined copy of _Glass.Variant.ID(v321, v324);
            outlined copy of _Glass.Variant.ID(v327, v331);
            outlined copy of _Glass.Variant.ID(v321, v324);
            outlined copy of _Glass.Variant.ID(v327, v331);
            v348 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            outlined consume of _Glass.Variant.ID(v327, v331);
            outlined consume of _Glass.Variant.ID(v321, v324);
            outlined consume of _Glass.Variant.ID(v321, v324);
            v236 = v327;
            v237 = v331;
          }

          else
          {
            v235 = v324;
            v234 = v327;
            if (v324 >= 0x40)
            {
LABEL_358:
              v250 = v235;
              outlined copy of _Glass.Variant.ID(v234, v331);
              v235 = v250;
LABEL_359:
              v251 = v235;
              outlined copy of _Glass.Variant.ID(v321, v235);
              outlined consume of _Glass.Variant.ID(v327, v331);
              outlined consume of _Glass.Variant.ID(v321, v251);
              v129 = v389;
LABEL_360:
              v252 = v129;
              v247 = v378;
              outlined consume of _Glass.Variant.ID(v378, v252);
              v248 = v383;
              v249 = v373;
              outlined consume of _Glass.Variant.ID(v383, v373);
LABEL_361:
              outlined consume of _Glass.Variant.ID(v248, v249);
              v154 = v247;
              v155 = v389;
              goto LABEL_223;
            }

            v238 = *(v327 + 48);
            v239 = *(v327 + 40);
            v240 = *(v327 + 32);
            v241 = *(v327 + 24);
            v242 = *(v321 + 16);
            v243 = *(v321 + 24);
            v244 = *(v321 + 32);
            v245 = *(v321 + 40);
            v246 = *(v321 + 48);
            v411 = *(v327 + 16);
            LOBYTE(v412) = v241;
            v413 = v240;
            v414 = v239;
            v415 = v238;
            v406 = v242;
            LOBYTE(v407) = v243;
            v408 = v244;
            v409 = v245;
            v410 = v246;
            outlined copy of _Glass.Variant.ID(v321, v324);
            outlined copy of _Glass.Variant.ID(v327, v331);
            outlined copy of _Glass.Variant.ID(v321, v324);
            outlined copy of _Glass.Variant.ID(v327, v331);
            v348 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
            outlined consume of _Glass.Variant.ID(v327, v331);
            outlined consume of _Glass.Variant.ID(v321, v324);
            outlined consume of _Glass.Variant.ID(v321, v324);
            v236 = v327;
            v237 = v331;
          }

          outlined consume of _Glass.Variant.ID(v236, v237);
          v247 = v378;
          outlined consume of _Glass.Variant.ID(v378, v389);
          v248 = v383;
          v249 = v373;
          outlined consume of _Glass.Variant.ID(v383, v373);
          if ((v348 & 1) == 0)
          {
            goto LABEL_361;
          }

LABEL_410:
          outlined consume of _Glass.Variant.ID(v248, v249);
          outlined consume of _Glass.Variant.ID(v247, v389);
          v1 = v366;
          v77 = v367;
          if (v125 != v128)
          {
            goto LABEL_224;
          }

          goto LABEL_217;
        }

        goto LABEL_347;
      }

      if (v27 >= 0x40)
      {
        goto LABEL_82;
      }

      v44 = *(v23 + 16);
      v45 = *(v23 + 24);
      v46 = *(v23 + 48);
      v47 = *(v26 + 16);
      v48 = *(v26 + 24);
      v49 = *(v26 + 48);
      v371 = *(v406 + 24);
      v376 = *(v406 + 16);
      v356 = *(v23 + 24);
      v360 = v44;
      v352 = *(v26 + 24);
      v349 = v47;
      if (v45 >> 6)
      {
        if (v45 >> 6 == 1)
        {
          if ((v48 & 0xC0) != 0x40)
          {
            goto LABEL_149;
          }

          v341 = *(v23 + 40);
          v344 = *(v26 + 32);
          v335 = *(v26 + 40);
          v338 = *(v23 + 32);
          v367 = *(v16 + 32);
          v368 = *(v406 + 40);
          v366 = *(v16 + 40);
          v369 = *(v406 + 32);
          v411 = *(v23 + 16);
          LOBYTE(v412) = v45 & 0x3F;
          v406 = v47;
          LOBYTE(v407) = v48 & 0x3F;
          v50 = v23;
          v51 = v47;
          v52 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v50, v371);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of _Glass.Variant.ID(v360, v356);
          outlined copy of _Glass.Variant.ID(v51, v352);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v394, v52, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          v53 = v382;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v50, v371);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of _Glass.Variant.ID(v360, v356);
          outlined copy of _Glass.Variant.ID(v349, v352);
          v328 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v360, v356);
          outlined consume of _Glass.Variant.ID(v349, v352);
          outlined consume of _Glass.Variant.ID(v349, v352);
          outlined consume of _Glass.Variant.ID(v360, v356);
          if ((v328 & 1) == 0)
          {
            goto LABEL_151;
          }
        }

        else
        {
          if (v44 | v45 ^ 0x80)
          {
            v93 = v48 & 0xC0;
            if (*(v23 + 24) == 128 && v44 == 1)
            {
              if (v93 != 128 || v47 != 1 || v48 != 128)
              {
                goto LABEL_149;
              }

              v341 = *(v23 + 40);
              v344 = *(v26 + 32);
              v335 = *(v26 + 40);
              v338 = *(v23 + 32);
              v367 = *(v16 + 32);
              v368 = *(v406 + 40);
              v366 = *(v16 + 40);
              v369 = *(v406 + 32);
              v95 = 1;
            }

            else
            {
              if (v93 != 128 || v47 != 2 || v48 != 128)
              {
                goto LABEL_149;
              }

              v341 = *(v23 + 40);
              v344 = *(v26 + 32);
              v335 = *(v26 + 40);
              v338 = *(v23 + 32);
              v367 = *(v16 + 32);
              v368 = *(v406 + 40);
              v366 = *(v16 + 40);
              v369 = *(v406 + 32);
              v95 = 2;
            }

            v354 = v95;
          }

          else
          {
            if ((v48 & 0xC0) != 0x80 || v47 || v48 != 128)
            {
LABEL_149:
              v100 = v18;
              v101 = v19;
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
              outlined copy of _Glass.Variant.ID(v14, v380);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v376, v24);
              outlined copy of _Glass.Variant.ID(v382, v27);
              outlined copy of GlassContainer.Entry.ModelID(v16, v17, v100, v101, 0);
              outlined copy of _Glass.Variant.ID(v14, v380);

              outlined copy of _Glass.Variant.ID(v14, v380);
              outlined copy of _Glass.Variant.ID(v16, v17);
              outlined copy of _Glass.Variant.ID(v376, v24);
              outlined copy of _Glass.Variant.ID(v382, v27);
              outlined copy of _Glass.Variant.ID(v360, v356);
              outlined copy of _Glass.Variant.ID(v349, v352);
              v53 = v382;
              outlined consume of _Glass.Variant.ID(v360, v356);
              v102 = v349;
              v103 = v352;
              goto LABEL_150;
            }

            v341 = *(v23 + 40);
            v344 = *(v26 + 32);
            v335 = *(v26 + 40);
            v338 = *(v23 + 32);
            v367 = *(v16 + 32);
            v368 = *(v406 + 40);
            v366 = *(v16 + 40);
            v369 = *(v406 + 32);
            v354 = 0;
          }

          v97 = v19;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v24);
          outlined copy of _Glass.Variant.ID(v382, v27);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v394, v97, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          v53 = v382;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v24);
          outlined copy of _Glass.Variant.ID(v382, v27);
          outlined consume of _Glass.Variant.ID(v360, v356);
          outlined consume of _Glass.Variant.ID(v354, 0x80u);
        }

LABEL_143:
        if (v341 >> 6)
        {
          v98 = v338;
          v99 = v335;
          if (v341 >> 6 == 1)
          {
            if ((v335 & 0xC0) != 0x40)
            {
              goto LABEL_206;
            }

            v411 = v338;
            LOBYTE(v412) = v341 & 0x3F;
            v406 = v344;
            LOBYTE(v407) = v335 & 0x3F;
            outlined copy of _Glass.Variant.ID(v338, v341);
            outlined copy of _Glass.Variant.ID(v344, v335);
            outlined copy of _Glass.Variant.ID(v338, v341);
            outlined copy of _Glass.Variant.ID(v344, v335);
            v362 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
            outlined consume of _Glass.Variant.ID(v338, v341);
            outlined consume of _Glass.Variant.ID(v344, v335);
            outlined consume of _Glass.Variant.ID(v344, v335);
            outlined consume of _Glass.Variant.ID(v338, v341);
            outlined consume of _Glass.Variant.ID(v376, v371);
            v1 = v387;
            outlined consume of _Glass.Variant.ID(v382, v387);
            outlined consume of _Glass.Variant.ID(v382, v387);
            outlined consume of _Glass.Variant.ID(v376, v371);
            v15 = v380;
            if ((v362 & 1) == 0 || v46 != v49)
            {
              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v338 | v341 ^ 0x80)
          {
            v120 = v335 & 0xC0;
            if (v341 == 128 && v338 == 1)
            {
              if (v120 != 128 || v344 != 1 || v335 != 128)
              {
                goto LABEL_206;
              }

              v1 = v53;
              v122 = 1;
            }

            else
            {
              if (v120 != 128 || v344 != 2 || v335 != 128)
              {
                goto LABEL_206;
              }

              v1 = v53;
              v122 = 2;
            }
          }

          else
          {
            if ((v335 & 0xC0) != 0x80 || v344 || v335 != 128)
            {
LABEL_206:
              v150 = v98;
              outlined copy of _Glass.Variant.ID(v98, v341);
              outlined copy of _Glass.Variant.ID(v344, v99);
              v151 = v150;
              v53 = v382;
              outlined consume of _Glass.Variant.ID(v151, v341);
              v102 = v344;
              v103 = v99;
              goto LABEL_150;
            }

            v1 = v53;
            v122 = 0;
          }

          outlined consume of _Glass.Variant.ID(v338, v341);
          outlined consume of _Glass.Variant.ID(v122, 0x80u);
          outlined consume of _Glass.Variant.ID(v376, v371);
          outlined consume of _Glass.Variant.ID(v1, v387);
          outlined consume of _Glass.Variant.ID(v1, v387);
          v104 = v376;
LABEL_204:
          outlined consume of _Glass.Variant.ID(v104, v371);
          v15 = v380;
          if (v46 != v49)
          {
            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v99 = v335;
        v98 = v338;
        if (v335 >= 0x40)
        {
          goto LABEL_206;
        }

        v105 = *(v338 + 16);
        v106 = *(v338 + 24);
        v107 = *(v338 + 48);
        v108 = *(v344 + 16);
        v109 = *(v344 + 24);
        v110 = *(v344 + 48);
        v111 = *(v338 + 24);
        v351 = *(v344 + 24);
        v358 = v111;
        v363 = v105;
        v355 = v108;
        if (!(v106 >> 6))
        {
          if (v109 >= 0x40)
          {
            goto LABEL_336;
          }

          v326 = *(v344 + 32);
          v330 = *(v338 + 40);
          v323 = *(v344 + 40);
          v320 = *(v338 + 32);
          v193 = *(v105 + 48);
          v194 = *(v105 + 40);
          v195 = *(v105 + 32);
          v196 = *(v105 + 24);
          v197 = *(v105 + 16);
          v198 = *(v338 + 16);
          v199 = *(v108 + 16);
          v200 = *(v108 + 24);
          v201 = *(v344 + 16);
          v202 = *(v108 + 32);
          v203 = *(v201 + 40);
          v204 = *(v201 + 48);
          v411 = v197;
          LOBYTE(v412) = v196;
          v413 = v195;
          v414 = v194;
          v415 = v193;
          v406 = v199;
          LOBYTE(v407) = v200;
          v408 = v202;
          v409 = v203;
          v410 = v204;
          outlined copy of _Glass.Variant.ID(v338, v341);
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined copy of _Glass.Variant.ID(v198, v111);
          outlined copy of _Glass.Variant.ID(v201, v351);
          outlined copy of _Glass.Variant.ID(v338, v341);
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined copy of _Glass.Variant.ID(v198, v111);
          outlined copy of _Glass.Variant.ID(v201, v351);
          v114 = v341;
          v115 = v344;
          v318 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v363, v358);
          outlined consume of _Glass.Variant.ID(v355, v351);
          v116 = v335;
          outlined consume of _Glass.Variant.ID(v355, v351);
          v118 = v358;
          v117 = v363;
          v119 = v338;
LABEL_276:
          outlined consume of _Glass.Variant.ID(v117, v118);
          if ((v318 & 1) == 0)
          {
            goto LABEL_337;
          }

LABEL_332:
          if (v330 >> 6)
          {
            v223 = v323;
            if (v330 >> 6 != 1)
            {
              if (v320 | v330 ^ 0x80)
              {
                v265 = v323 & 0xC0;
                if (v330 == 128 && v320 == 1)
                {
                  if (v265 != 128 || v326 != 1 || v323 != 128)
                  {
                    goto LABEL_377;
                  }

                  v309 = v17;
                  v312 = v16;
                  v267 = 1;
                }

                else
                {
                  if (v265 != 128 || v326 != 2 || v323 != 128)
                  {
                    goto LABEL_377;
                  }

                  v309 = v17;
                  v312 = v16;
                  v267 = 2;
                }
              }

              else
              {
                if ((v323 & 0xC0) != 0x80 || v326 || v323 != 128)
                {
                  goto LABEL_377;
                }

                v309 = v17;
                v312 = v16;
                v267 = 0;
              }

              outlined copy of _Glass.Variant.ID(v267, 0x80u);
              outlined consume of _Glass.Variant.ID(v320, v330);
              outlined consume of _Glass.Variant.ID(v267, 0x80u);
              outlined consume of _Glass.Variant.ID(v320, v330);
              v119 = v338;
              v114 = v341;
              outlined consume of _Glass.Variant.ID(v338, v341);
              v115 = v344;
              v116 = v335;
              outlined consume of _Glass.Variant.ID(v344, v335);
              v13 = v403;
              v17 = v309;
              v16 = v312;
              goto LABEL_421;
            }

            if ((v323 & 0xC0) != 0x40)
            {
              goto LABEL_376;
            }

            v411 = v320;
            LOBYTE(v412) = v330 & 0x3F;
            v224 = v326;
            v406 = v326;
            LOBYTE(v407) = v323 & 0x3F;
            outlined copy of _Glass.Variant.ID(v326, v323);
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined copy of _Glass.Variant.ID(v326, v323);
            outlined copy of _Glass.Variant.ID(v320, v330);
            v225 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          }

          else
          {
            v223 = v323;
            if (v323 >= 0x40)
            {
LABEL_376:
              outlined copy of _Glass.Variant.ID(v320, v330);
LABEL_377:
              outlined copy of _Glass.Variant.ID(v326, v223);
              outlined consume of _Glass.Variant.ID(v320, v330);
              outlined consume of _Glass.Variant.ID(v326, v223);
              v119 = v338;
              v114 = v341;
              v116 = v335;
              v115 = v344;
LABEL_337:
              outlined consume of _Glass.Variant.ID(v119, v114);
              outlined consume of _Glass.Variant.ID(v115, v116);
LABEL_338:
              outlined consume of _Glass.Variant.ID(v115, v116);
              outlined consume of _Glass.Variant.ID(v119, v114);
              v53 = v382;
LABEL_151:
              v1 = v376;
              outlined consume of _Glass.Variant.ID(v376, v371);
              outlined consume of _Glass.Variant.ID(v53, v387);
              outlined consume of _Glass.Variant.ID(v53, v387);
              v104 = v376;
LABEL_152:
              outlined consume of _Glass.Variant.ID(v104, v371);
              v15 = v380;
              goto LABEL_84;
            }

            v256 = *(v320 + 48);
            v257 = *(v320 + 40);
            v258 = *(v320 + 32);
            v259 = *(v320 + 24);
            v224 = v326;
            v260 = *(v326 + 16);
            v261 = *(v326 + 24);
            v262 = *(v326 + 32);
            v263 = *(v326 + 40);
            v264 = *(v326 + 48);
            v411 = *(v320 + 16);
            LOBYTE(v412) = v259;
            v413 = v258;
            v414 = v257;
            v415 = v256;
            v406 = v260;
            LOBYTE(v407) = v261;
            v408 = v262;
            v409 = v263;
            v410 = v264;
            outlined copy of _Glass.Variant.ID(v326, v323);
            outlined copy of _Glass.Variant.ID(v320, v330);
            outlined copy of _Glass.Variant.ID(v326, v323);
            outlined copy of _Glass.Variant.ID(v320, v330);
            v225 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
          }

          v365 = v225;
          outlined consume of _Glass.Variant.ID(v320, v330);
          outlined consume of _Glass.Variant.ID(v224, v223);
          outlined consume of _Glass.Variant.ID(v224, v223);
          outlined consume of _Glass.Variant.ID(v320, v330);
          v119 = v338;
          v114 = v341;
          outlined consume of _Glass.Variant.ID(v338, v341);
          v115 = v344;
          v116 = v335;
          outlined consume of _Glass.Variant.ID(v344, v335);
          if ((v365 & 1) == 0)
          {
            goto LABEL_338;
          }

LABEL_421:
          outlined consume of _Glass.Variant.ID(v115, v116);
          outlined consume of _Glass.Variant.ID(v119, v114);
          outlined consume of _Glass.Variant.ID(v376, v371);
          v1 = v387;
          outlined consume of _Glass.Variant.ID(v382, v387);
          outlined consume of _Glass.Variant.ID(v382, v387);
          v104 = v376;
          if (v107 != v110)
          {
            goto LABEL_152;
          }

          goto LABEL_204;
        }

        if (v106 >> 6 == 1)
        {
          if ((v109 & 0xC0) != 0x40)
          {
            goto LABEL_336;
          }

          v326 = *(v344 + 32);
          v330 = *(v338 + 40);
          v323 = *(v344 + 40);
          v320 = *(v338 + 32);
          v411 = *(v338 + 16);
          LOBYTE(v412) = v106 & 0x3F;
          v406 = v108;
          LOBYTE(v407) = v109 & 0x3F;
          v112 = v105;
          v113 = v109;
          outlined copy of _Glass.Variant.ID(v338, v341);
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined copy of _Glass.Variant.ID(v112, v111);
          outlined copy of _Glass.Variant.ID(v355, v113);
          outlined copy of _Glass.Variant.ID(v338, v341);
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined copy of _Glass.Variant.ID(v363, v111);
          outlined copy of _Glass.Variant.ID(v355, v351);
          v114 = v341;
          v318 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v363, v111);
          outlined consume of _Glass.Variant.ID(v355, v351);
          v115 = v344;
          v116 = v335;
          outlined consume of _Glass.Variant.ID(v355, v351);
          v118 = v358;
          v117 = v363;
          v119 = v338;
          goto LABEL_276;
        }

        if (v105 | v106 ^ 0x80)
        {
          v205 = v109 & 0xC0;
          if (*(v338 + 24) != 128 || v105 != 1)
          {
            if (v205 != 128 || v108 != 2 || v109 != 128)
            {
              goto LABEL_336;
            }

            v326 = *(v344 + 32);
            v330 = *(v338 + 40);
            v323 = *(v344 + 40);
            v320 = *(v338 + 32);
            outlined copy of _Glass.Variant.ID(v338, v341);
            outlined copy of _Glass.Variant.ID(v344, v335);
            outlined copy of _Glass.Variant.ID(v338, v341);
            outlined copy of _Glass.Variant.ID(v344, v335);
            outlined consume of _Glass.Variant.ID(v363, v111);
            v221 = 2;
            v222 = 0x80;
            goto LABEL_331;
          }

          if (v205 != 128 || v108 != 1)
          {
            goto LABEL_336;
          }
        }

        else if ((v109 & 0xC0) != 0x80 || v108)
        {
LABEL_336:
          v226 = *(v338 + 24);
          v227 = *(v338 + 16);
          v228 = *(v344 + 24);
          v229 = *(v344 + 16);
          outlined copy of _Glass.Variant.ID(v105, v106);
          outlined copy of _Glass.Variant.ID(v227, v226);
          outlined copy of _Glass.Variant.ID(v229, v228);
          outlined copy of _Glass.Variant.ID(v338, v341);
          v115 = v344;
          v116 = v335;
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined copy of _Glass.Variant.ID(v338, v341);
          outlined copy of _Glass.Variant.ID(v344, v335);
          outlined consume of _Glass.Variant.ID(v363, v358);
          outlined consume of _Glass.Variant.ID(v355, v351);
          outlined consume of _Glass.Variant.ID(v363, v358);
          v119 = v338;
          v114 = v341;
          goto LABEL_337;
        }

        if (v109 != 128)
        {
          goto LABEL_336;
        }

        v326 = *(v344 + 32);
        v330 = *(v338 + 40);
        v323 = *(v344 + 40);
        v320 = *(v338 + 32);
        outlined copy of _Glass.Variant.ID(v338, v341);
        outlined copy of _Glass.Variant.ID(v344, v335);
        outlined copy of _Glass.Variant.ID(v338, v341);
        outlined copy of _Glass.Variant.ID(v344, v335);
        outlined consume of _Glass.Variant.ID(v363, v111);
        outlined consume of _Glass.Variant.ID(v355, v351);
        v221 = v363;
        v222 = v111;
LABEL_331:
        outlined consume of _Glass.Variant.ID(v221, v222);
        goto LABEL_332;
      }

      if (v48 >= 0x40)
      {
        goto LABEL_149;
      }

      v80 = *(v44 + 16);
      v81 = *(v44 + 24);
      v315 = *(v44 + 32);
      v317 = *(v44 + 40);
      v82 = *(v44 + 48);
      v83 = *(v47 + 16);
      v84 = *(v47 + 24);
      v316 = *(v47 + 32);
      v85 = *(v47 + 48);
      v368 = *(v406 + 40);
      v369 = *(v406 + 32);
      v366 = *(v16 + 40);
      v367 = *(v16 + 32);
      v338 = *(v23 + 32);
      v341 = *(v23 + 40);
      v335 = *(v26 + 40);
      v344 = *(v26 + 32);
      v314 = *(v47 + 40);
      v334 = v406;
      v329 = *(v47 + 24);
      v322 = *(v44 + 24);
      v325 = v80;
      if (!(v81 >> 6))
      {
        if (v84 < 0x40)
        {
          v136 = *(v80 + 48);
          v137 = *(v80 + 40);
          v138 = *(v80 + 32);
          v139 = *(v80 + 24);
          v140 = *(v83 + 16);
          v141 = *(v83 + 24);
          v142 = *(v83 + 32);
          v143 = *(v83 + 40);
          v144 = *(v83 + 48);
          v411 = *(v80 + 16);
          LOBYTE(v412) = v139;
          v413 = v138;
          v414 = v137;
          v415 = v136;
          v406 = v140;
          LOBYTE(v407) = v141;
          v408 = v142;
          v409 = v143;
          v410 = v144;
          v145 = v19;
          v146 = v81;
          v147 = v80;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v371);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of _Glass.Variant.ID(v360, v356);
          outlined copy of _Glass.Variant.ID(v349, v352);
          outlined copy of _Glass.Variant.ID(v147, v146);
          outlined copy of _Glass.Variant.ID(v83, v329);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v394, v145, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          v88 = v356;
          v89 = v360;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v371);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of _Glass.Variant.ID(v360, v356);
          v90 = v352;
          outlined copy of _Glass.Variant.ID(v349, v352);
          outlined copy of _Glass.Variant.ID(v147, v322);
          outlined copy of _Glass.Variant.ID(v83, v329);
          v308 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v325, v322);
          outlined consume of _Glass.Variant.ID(v83, v329);
          outlined consume of _Glass.Variant.ID(v83, v329);
          outlined consume of _Glass.Variant.ID(v325, v322);
          if ((v308 & 1) == 0)
          {
            goto LABEL_247;
          }

          goto LABEL_237;
        }

        goto LABEL_234;
      }

      if (v81 >> 6 == 1)
      {
        if ((v84 & 0xC0) == 0x40)
        {
          v411 = *(v44 + 16);
          LOBYTE(v412) = v81 & 0x3F;
          v406 = v83;
          LOBYTE(v407) = v84 & 0x3F;
          v86 = v19;
          v87 = v80;
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v371);
          outlined copy of _Glass.Variant.ID(v382, v27);
          v88 = v356;
          outlined copy of _Glass.Variant.ID(v360, v356);
          outlined copy of _Glass.Variant.ID(v349, v352);
          outlined copy of _Glass.Variant.ID(v87, v322);
          outlined copy of _Glass.Variant.ID(v83, v329);
          outlined copy of GlassContainer.Entry.ModelID(v16, v17, v394, v86, 0);
          outlined copy of _Glass.Variant.ID(v14, v380);

          v89 = v360;
          outlined copy of _Glass.Variant.ID(v14, v380);
          outlined copy of _Glass.Variant.ID(v16, v17);
          outlined copy of _Glass.Variant.ID(v376, v371);
          outlined copy of _Glass.Variant.ID(v382, v387);
          outlined copy of _Glass.Variant.ID(v360, v356);
          v90 = v352;
          outlined copy of _Glass.Variant.ID(v349, v352);
          outlined copy of _Glass.Variant.ID(v325, v322);
          outlined copy of _Glass.Variant.ID(v83, v329);
          v311 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v325, v322);
          outlined consume of _Glass.Variant.ID(v83, v329);
          outlined consume of _Glass.Variant.ID(v83, v329);
          v92 = v322;
          v91 = v325;
          goto LABEL_236;
        }

        goto LABEL_234;
      }

      if (v80 | v81 ^ 0x80)
      {
        v148 = v84 & 0xC0;
        if (*(v44 + 24) != 128 || v80 != 1)
        {
          if (v148 == 128 && v83 == 2 && v84 == 128)
          {
            v157 = v18;
            v158 = v19;
            outlined copy of GlassContainer.Entry.ModelID(v16, v17, v18, v19, 0);
            outlined copy of _Glass.Variant.ID(v14, v380);
            outlined copy of _Glass.Variant.ID(v16, v17);
            outlined copy of _Glass.Variant.ID(v376, v371);
            outlined copy of _Glass.Variant.ID(v382, v27);
            outlined copy of _Glass.Variant.ID(v360, v356);
            outlined copy of _Glass.Variant.ID(v349, v352);
            outlined copy of GlassContainer.Entry.ModelID(v16, v17, v157, v158, 0);
            outlined copy of _Glass.Variant.ID(v14, v380);

            outlined copy of _Glass.Variant.ID(v14, v380);
            outlined copy of _Glass.Variant.ID(v16, v17);
            outlined copy of _Glass.Variant.ID(v376, v371);
            outlined copy of _Glass.Variant.ID(v382, v27);
            outlined copy of _Glass.Variant.ID(v360, v356);
            outlined copy of _Glass.Variant.ID(v349, v352);
            outlined consume of _Glass.Variant.ID(v325, v322);
            outlined consume of _Glass.Variant.ID(2, 0x80u);
            goto LABEL_237;
          }

          goto LABEL_234;
        }

        if (v148 != 128 || v83 != 1)
        {
LABEL_234:
          v156 = v18;
          v159 = *(v44 + 24);
          v160 = *(v44 + 16);
          outlined copy of _Glass.Variant.ID(v80, v81);
          outlined copy of _Glass.Variant.ID(v160, v159);
          outlined copy of _Glass.Variant.ID(v83, v84);
          v311 = 0;
          goto LABEL_235;
        }
      }

      else if ((v84 & 0xC0) != 0x80 || v83)
      {
        goto LABEL_234;
      }

      if (v84 == 128)
      {
        v156 = v18;
        v311 = 1;
LABEL_235:
        outlined copy of GlassContainer.Entry.ModelID(v16, v17, v156, v393, 0);
        outlined copy of _Glass.Variant.ID(v334, v380);
        outlined copy of _Glass.Variant.ID(v16, v17);
        outlined copy of _Glass.Variant.ID(v376, v371);
        outlined copy of _Glass.Variant.ID(v382, v387);
        outlined copy of _Glass.Variant.ID(v360, v356);
        outlined copy of _Glass.Variant.ID(v349, v352);
        outlined copy of GlassContainer.Entry.ModelID(v16, v17, v156, v393, 0);
        outlined copy of _Glass.Variant.ID(v334, v380);

        outlined copy of _Glass.Variant.ID(v334, v380);
        outlined copy of _Glass.Variant.ID(v16, v17);
        v89 = v360;
        outlined copy of _Glass.Variant.ID(v376, v371);
        v88 = v356;
        outlined copy of _Glass.Variant.ID(v382, v387);
        outlined copy of _Glass.Variant.ID(v360, v356);
        v90 = v352;
        outlined copy of _Glass.Variant.ID(v349, v352);
        outlined consume of _Glass.Variant.ID(v325, v322);
        outlined consume of _Glass.Variant.ID(v83, v329);
        v91 = v325;
        v92 = v322;
LABEL_236:
        outlined consume of _Glass.Variant.ID(v91, v92);
        if ((v311 & 1) == 0)
        {
          goto LABEL_247;
        }

LABEL_237:
        if (v317 >> 6)
        {
          v14 = v334;
          v161 = v314;
          if (v317 >> 6 != 1)
          {
            v162 = v315;
            if (v315 | v317 ^ 0x80)
            {
              v178 = v314 & 0xC0;
              if (v317 == 128 && v315 == 1)
              {
                if (v178 != 128 || v316 != 1 || v314 != 128)
                {
                  goto LABEL_246;
                }

                v180 = 1;
              }

              else
              {
                if (v178 != 128 || v316 != 2 || v314 != 128)
                {
                  goto LABEL_246;
                }

                v180 = 2;
              }
            }

            else
            {
              if ((v314 & 0xC0) != 0x80 || v316 || v314 != 128)
              {
                goto LABEL_246;
              }

              v180 = 0;
            }

            outlined copy of _Glass.Variant.ID(v180, 0x80u);
            outlined consume of _Glass.Variant.ID(v315, v317);
            outlined consume of _Glass.Variant.ID(v180, 0x80u);
            outlined consume of _Glass.Variant.ID(v315, v317);
            outlined consume of _Glass.Variant.ID(v360, v356);
            outlined consume of _Glass.Variant.ID(v349, v352);
            v174 = v349;
            v175 = v352;
            v53 = v382;
            goto LABEL_296;
          }

          v162 = v315;
          if ((v314 & 0xC0) != 0x40)
          {
            goto LABEL_245;
          }

          v411 = v315;
          LOBYTE(v412) = v317 & 0x3F;
          v406 = v316;
          LOBYTE(v407) = v314 & 0x3F;
          outlined copy of _Glass.Variant.ID(v316, v314);
          outlined copy of _Glass.Variant.ID(v315, v317);
          outlined copy of _Glass.Variant.ID(v316, v314);
          outlined copy of _Glass.Variant.ID(v315, v317);
          v332 = specialized static Material.ID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v315, v317);
          outlined consume of _Glass.Variant.ID(v316, v314);
          outlined consume of _Glass.Variant.ID(v316, v314);
          v163 = v315;
          v164 = v317;
        }

        else
        {
          v161 = v314;
          v14 = v334;
          v162 = v315;
          if (v314 >= 0x40)
          {
LABEL_245:
            v176 = v161;
            outlined copy of _Glass.Variant.ID(v162, v317);
            v161 = v176;
LABEL_246:
            v177 = v161;
            outlined copy of _Glass.Variant.ID(v316, v161);
            outlined consume of _Glass.Variant.ID(v162, v317);
            outlined consume of _Glass.Variant.ID(v316, v177);
            v88 = v356;
            v89 = v360;
            v90 = v352;
LABEL_247:
            outlined consume of _Glass.Variant.ID(v89, v88);
            outlined consume of _Glass.Variant.ID(v349, v90);
            v174 = v349;
            v14 = v334;
            v53 = v382;
            v175 = v90;
LABEL_248:
            outlined consume of _Glass.Variant.ID(v174, v175);
            v103 = v356;
            v102 = v360;
LABEL_150:
            outlined consume of _Glass.Variant.ID(v102, v103);
            goto LABEL_151;
          }

          v165 = *(v315 + 48);
          v166 = *(v315 + 40);
          v167 = *(v315 + 32);
          v168 = *(v315 + 24);
          v169 = *(v316 + 16);
          v170 = *(v316 + 24);
          v171 = *(v316 + 32);
          v172 = *(v316 + 40);
          v173 = *(v316 + 48);
          v411 = *(v315 + 16);
          LOBYTE(v412) = v168;
          v413 = v167;
          v414 = v166;
          v415 = v165;
          v406 = v169;
          LOBYTE(v407) = v170;
          v408 = v171;
          v409 = v172;
          v410 = v173;
          outlined copy of _Glass.Variant.ID(v316, v314);
          outlined copy of _Glass.Variant.ID(v315, v317);
          outlined copy of _Glass.Variant.ID(v316, v314);
          outlined copy of _Glass.Variant.ID(v315, v317);
          v332 = specialized static _Glass.Variant.ID.MixID.== infix(_:_:)(&v411, &v406);
          outlined consume of _Glass.Variant.ID(v315, v317);
          outlined consume of _Glass.Variant.ID(v316, v314);
          outlined consume of _Glass.Variant.ID(v316, v314);
          v163 = v315;
          v164 = v317;
        }

        outlined consume of _Glass.Variant.ID(v163, v164);
        outlined consume of _Glass.Variant.ID(v360, v356);
        outlined consume of _Glass.Variant.ID(v349, v352);
        v174 = v349;
        v175 = v352;
        v53 = v382;
        if ((v332 & 1) == 0)
        {
          goto LABEL_248;
        }

LABEL_296:
        outlined consume of _Glass.Variant.ID(v174, v175);
        outlined consume of _Glass.Variant.ID(v360, v356);
        if (v82 != v85)
        {
          goto LABEL_151;
        }

        goto LABEL_143;
      }

      goto LABEL_234;
    }
  }

  else
  {
LABEL_474:
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    *(v1 + 16) = v2;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

double GlassContainer.Storage.appendToNewEntry(item:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, 0x289uLL);
  v3 = BYTE8(__dst[1]);
  v4 = __dst[2];
  v5 = *(&__dst[3] + 1);
  v40 = *&__dst[4];
  v38 = __dst[3];
  v39 = BYTE8(__dst[4]);
  v6 = *&__dst[8];
  v37 = BYTE8(__dst[1]);
  if (*&__dst[8] && (__dst[9] & 1) == 0)
  {
    v36 = *(&__dst[8] + 1);
    v44[0] = __dst[2];

    outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));
    _Glass.Variant.ID.init(_:)(v44, &v42);
    v34 = 0;
    v35 = v42;
    v7 = 256;
    if (!v3)
    {
      v7 = 0;
    }

    v33 = v7 | v43;
  }

  else
  {
    v35 = LODWORD(__dst[0]);
    v6 = *&__dst[1];
    v33 = *(&__dst[0] + 1);

    v36 = 0;
    v34 = 1;
  }

  v31 = __dst[6];
  v32 = __dst[5];
  v8 = *&__dst[7];
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassContainer.Item>, &type metadata for GlassContainer.Item);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDA6EB0;
  memcpy((v9 + 32), __dst, 0x289uLL);
  v29 = BYTE1(__dst[11]);
  v30 = *(&__dst[11] + 1);
  v10 = *(&__dst[12] + 1);
  v11 = *&__dst[13];
  LOBYTE(v42) = __dst[12];
  outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));

  outlined copy of _Glass.Variant.Role(v4, DWORD2(v4));

  outlined init with copy of GlassContainer.Item(__dst, v44);

  outlined consume of _Glass?(0, 0, 0, 1);
  v12 = outlined consume of _Glass?(0, 0, 0, 1);
  LOBYTE(v44[0]) = 1;
  v27 = v42;
  v28 = (*(*v8 + 128))(v12);
  v41 = v2;
  v13 = *(v2 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[344 * v15];
  *(v16 + 4) = v35;
  *(v16 + 5) = v33;
  v16 += 32;
  *(v16 + 2) = v6;
  *(v16 + 3) = v36;
  v16[32] = v34;
  v17 = *(v44 + 3);
  *(v16 + 33) = v44[0];
  *(v16 + 9) = v17;
  *(v16 + 40) = v4;
  v16[56] = v38;
  v18 = v42;
  *(v16 + 15) = *(&v42 + 3);
  *(v16 + 57) = v18;
  *(v16 + 8) = v5;
  *(v16 + 9) = v40;
  v16[80] = v39;
  v19 = *v53;
  *(v16 + 21) = *&v53[3];
  *(v16 + 81) = v19;
  *(v16 + 104) = v31;
  *(v16 + 88) = v32;
  *(v16 + 15) = v8;
  *(v16 + 16) = v9;
  v16[136] = v37;
  v16[137] = v29;
  v20 = *&v51[7];
  *(v16 + 71) = v52;
  *(v16 + 138) = v20;
  *(v16 + 9) = v4;
  v16[160] = v38;
  v21 = *v51;
  *(v16 + 41) = *&v51[3];
  *(v16 + 161) = v21;
  *(v16 + 21) = v5;
  *(v16 + 22) = v40;
  v16[184] = v39;
  v22 = *v50;
  *(v16 + 47) = *&v50[3];
  *(v16 + 185) = v22;
  *(v16 + 24) = v30;
  v16[200] = v27;
  v23 = *v49;
  *(v16 + 51) = *&v49[3];
  *(v16 + 201) = v23;
  *(v16 + 26) = v10;
  *(v16 + 27) = v11;
  *(v16 + 28) = 0;
  *(v16 + 29) = 0;
  *(v16 + 30) = 0;
  *&result = 1;
  *(v16 + 248) = xmmword_18DD85500;
  v16[264] = 0;
  v25 = *v48;
  *(v16 + 67) = *&v48[3];
  *(v16 + 265) = v25;
  *(v16 + 34) = 0;
  *(v16 + 35) = 0;
  *(v16 + 36) = 0;
  *(v16 + 37) = 1;
  *(v16 + 38) = 0;
  v16[312] = 0;
  LOBYTE(v25) = v47;
  *(v16 + 313) = v46;
  v16[315] = v25;
  *(v16 + 79) = 0;
  v16[320] = 1;
  v26 = *v45;
  *(v16 + 81) = *&v45[3];
  *(v16 + 321) = v26;
  *(v16 + 41) = v28;
  *(v16 + 84) = 0;
  *(v41 + 16) = v13;
  return result;
}

void GlassContainer.Entry.matches(_:)(uint64_t a1)
{
  v30 = *(a1 + 8);
  v31 = *a1;
  v28 = *(a1 + 24);
  v29 = *(a1 + 16);
  v27 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v34 = *(a1 + 72);
  v33 = *(a1 + 80);
  v25 = *(v1 + 8);
  v26 = *v1;
  v24 = *(v1 + 16);
  v22 = *(a1 + 128);
  v23 = *(v1 + 24);
  v35 = *(a1 + 56);
  v36 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 80);
  v32 = *(v1 + 128);
  __dst[0] = *(v1 + 40);
  __dst[1] = v5;

  outlined copy of _Glass.Variant.Role(__dst[0], v5);
  _Glass.Variant.ID.init(_:)(__dst, v39);
  __dst[0] = v39[0];
  LOBYTE(__dst[1]) = v39[1];
  __dst[2] = v7;
  LOBYTE(__dst[3]) = v6;
  __dst[4] = v8;
  LOBYTE(__dst[5]) = v9;
  v39[0] = v2;
  v39[1] = v3;

  outlined copy of _Glass.Variant.Role(v2, v3);
  _Glass.Variant.ID.init(_:)(v39, &v37);
  v39[0] = v37;
  LOBYTE(v39[1]) = v38;
  v39[2] = v4;
  LOBYTE(v39[3]) = v35;
  v39[4] = v34;
  LOBYTE(v39[5]) = v33;
  LOBYTE(v5) = specialized static _Glass.ID.== infix(_:_:)(__dst, v39);
  outlined consume of _Glass.Variant.ID(v39[0], v39[1]);

  outlined consume of _Glass.Variant.ID(__dst[0], __dst[1]);

  if (v5)
  {
    __dst[0] = v26;
    __dst[1] = v25;
    __dst[2] = v24;
    __dst[3] = v23;
    LOBYTE(__dst[4]) = v36;
    v39[0] = v31;
    v39[1] = v30;
    v39[2] = v29;
    v39[3] = v28;
    LOBYTE(v39[4]) = v27;
    outlined copy of GlassContainer.Entry.ModelID(v26, v25, v24, v23, v36);
    outlined copy of GlassContainer.Entry.ModelID(v31, v30, v29, v28, v27);
    v10 = GlassContainer.Entry.ModelID.matches(_:)(v39);
    outlined consume of GlassContainer.Entry.ModelID(v31, v30, v29, v28, v27);
    outlined consume of GlassContainer.Entry.ModelID(v26, v25, v24, v23, v36);
    if (v10)
    {
      v11 = v32;
      v12 = *(v32 + 16);
      v13 = v22;
      if (v12 == *(v22 + 16))
      {
        if (v12)
        {
          v14 = 0;
          v15 = (v32 + 32);
          v16 = (v22 + 32);
          while (v14 < *(v11 + 16))
          {
            memcpy(__dst, v15, 0x289uLL);
            v17 = *(v13 + 16);
            if (v14 == v17)
            {
              return;
            }

            if (v14 >= v17)
            {
              goto LABEL_19;
            }

            memcpy(v39, v16, 0x289uLL);
            if (__dst[1] && (v18 = v39[1]) != 0)
            {
              v19 = v39[2];
              v20 = __dst[2];
              if (__dst[1] != v39[1])
              {
                v21 = *(*__dst[1] + 112);
                outlined init with copy of GlassContainer.Item(__dst, &v37);
                outlined init with copy of GlassContainer.Item(v39, &v37);

                v13 = v22;
                LOBYTE(v21) = v21(v18);
                outlined destroy of GlassContainer.Item(v39);
                outlined destroy of GlassContainer.Item(__dst);

                if ((v21 & 1) == 0)
                {
                  return;
                }
              }

              v11 = v32;
              if (v20 != v19)
              {
                return;
              }
            }

            else if (LODWORD(__dst[0]) != LODWORD(v39[0]))
            {
              return;
            }

            ++v14;
            v16 += 656;
            v15 += 656;
            if (v12 == v14)
            {
              return;
            }
          }

          __break(1u);
LABEL_19:
          __break(1u);
        }
      }
    }
  }
}

void GlassContainer.Entry.unionBounds(itemAnchors:proxy:)(uint64_t a1, uint64_t *a2)
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a2[2];
    v8 = (a1 + 32);
    v9 = *MEMORY[0x1E698D3F8];
    v29 = *(MEMORY[0x1E695F050] + 8);
    v30 = *MEMORY[0x1E695F050];
    v27 = *(MEMORY[0x1E695F050] + 24);
    v28 = *(MEMORY[0x1E695F050] + 16);
    while (1)
    {
      v10 = *v8;

      specialized static Update.begin()();
      if (one-time initialization token for lockAssertionsAreEnabled != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          break;
        }
      }

      if (AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9 || AGWeakAttributeGetAttribute() == v9)
      {
        (*(*v10 + 88))(&v31);
        x = v31;
        y = v32;
        width = v33;
        height = v34;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
        v26 = v7;
        v17 = *InputValue;
        v16 = *(InputValue + 8);
        v18 = *(InputValue + 16);
        v19 = *(InputValue + 24);
        v20 = *(InputValue + 32);
        v21 = *(InputValue + 40);
        type metadata accessor for CGPoint(0);

        v22 = AGGraphGetInputValue();
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v20 - (*v22 - v18);
        v31 = v17;
        v32 = v16;
        v33 = v23;
        v34 = v24;
        v35 = v25;
        v36 = v21 - (v24 - v19);
        (*(*v10 + 96))(v37, &v31);
        v7 = v26;

        x = *v37;
        y = *&v37[1];
        width = *&v37[2];
        height = *&v37[3];
      }

      static Update.end()();
      v38.origin.x = v2;
      v38.origin.y = v3;
      v38.size.width = v4;
      v38.size.height = v5;
      v41.origin.y = v29;
      v41.origin.x = v30;
      v41.size.height = v27;
      v41.size.width = v28;
      if (!CGRectEqualToRect(v38, v41))
      {
        v39.origin.x = v2;
        v39.origin.y = v3;
        v39.size.width = v4;
        v39.size.height = v5;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        v40 = CGRectUnion(v39, v42);
        x = v40.origin.x;
        y = v40.origin.y;
        width = v40.size.width;
        height = v40.size.height;
      }

      ++v8;
      v2 = x;
      v3 = y;
      v4 = width;
      v5 = height;
      if (!--v6)
      {
        return;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

BOOL GlassContainer.Entry.ModelID.matches(_:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *v1;
  v7 = *(v1 + 8);
  v10 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (!*(v1 + 32))
  {
    if (!*(a1 + 32))
    {
      v21 = *(a1 + 24);
      v22 = v8;
      LOWORD(v23) = v7 & 0x1FF;
      v24 = v10;
      v25 = v9;
      v18 = v3;
      LOWORD(v19) = v2 & 0x1FF;
      v20 = v5;
      v14 = v9;
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      v13 = specialized static GlassContainer.Entry.GroupID.== infix(_:_:)(&v22, &v18);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 0);
      outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v14, 0);
      return v13;
    }

    goto LABEL_11;
  }

  if (v11 != 1)
  {
    if (v6 == 2 && (v2 | v3 | v5 | v4) == 0)
    {
      outlined consume of GlassContainer.Entry.ModelID(*v1, *(v1 + 8), *(v1 + 16), v9, 2);
      outlined consume of GlassContainer.Entry.ModelID(0, 0, 0, 0, 2);
      return 1;
    }

    goto LABEL_11;
  }

  if (v6 != 1)
  {
LABEL_11:
    v16 = *(v1 + 24);
    outlined copy of GlassContainer.Entry.ModelID(*a1, v2, v5, v4, v6);
    outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v16, v11);
    outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v16, v11);
    outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, v6);
    return 0;
  }

  LODWORD(v22) = *v1;
  v23 = v7;
  v24 = v10;
  LODWORD(v18) = v3;
  v19 = v2;
  v20 = v5;
  v12 = v9;
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  outlined copy of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined copy of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  v13 = GlassContainer.Item.ID.matches(_:)(&v18);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v3, v2, v5, v4, 1);
  outlined consume of GlassContainer.Entry.ModelID(v8, v7, v10, v12, 1);
  return v13;
}

__n128 GlassContainer.Appearance.init()@<Q0>(uint64_t a1@<X8>)
{
  v15 = 1;
  EnvironmentValues.init()(v14);
  v3 = v14[0];
  v2 = v14[1];
  static GlassContainer.AppearanceSettings.match.getter(&v11);
  v9 = v12;
  v4 = v13;
  if (v2)
  {

    v5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v3);
  }

  if (v5 == 2)
  {
    v11 = v3;
    v12.n128_u64[0] = v2;
    v10 = 2;
    v5 = EnvironmentValues.accessibilitySettingEnabled(_:)(&v10);
  }

  v6 = 1.2;
  if (v5)
  {
    v6 = 1.0;
  }

  v7 = v15;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 24) = xmmword_18DDAA020;
  *(a1 + 40) = v6;
  result = v9;
  *(a1 + 48) = v9;
  *(a1 + 64) = v4;
  return result;
}

void GlassContainer.ScalePulse.init()(uint64_t a1@<X8>)
{
  type metadata accessor for GlassContainerPTDomain();
  v50.receiver = swift_getObjCClassFromMetadata();
  v50.super_class = &OBJC_METACLASS____TtC7SwiftUI22GlassContainerPTDomain;
  v2 = objc_msgSendSuper2(&v50, sel_rootSettings);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for GlassContainerPTSettings();
    v4 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC7SwiftUI24GlassContainerPTSettings_scalePulse);

    GlassContainerScalePulsePTSettings.scalePulse.getter(&v39);
    v5 = v39;
    _Q16 = v40;
    v7 = v41;
    v8 = v42;
    v9 = v43;
    v10 = v44;
    v11 = v45;
    v12 = v46;
    v13 = v47;
    v14 = v48;
    v15 = v49;
    if (one-time initialization token for enableAdjustments != -1)
    {
      v32 = v41;
      v34 = v48;
      v29 = v44;
      v30 = v43;
      v26 = v45;
      v27 = v46;
      v24 = v40;
      v25 = v39;
      swift_once();
      _Q16 = v24;
      v5 = v25;
      v11 = v26;
      v12 = v27;
      v10 = v29;
      v9 = v30;
      v7 = v32;
      v14 = v34;
    }

    if (!enableAdjustments)
    {
      Spring.init(duration:bounce:)(0.5, 0.3);
      v33 = v39;
      v15 = v40;
      Spring.init(duration:bounce:)(0.35, 0.6);
      v31 = v39;
      v8 = v40;
      Spring.init(duration:bounce:)(0.5, 0.5);
      v16 = &unk_18DDA9FF8;
      v17 = vld1q_dup_f64(v16);
      v17.f64[0] = v38;
      v28 = v17;
      Spring.init(duration:bounce:)(0.5, 0.6);
      v10 = v28;
      v9 = v37;
      v7 = v31;
      v14 = v33;
      v18 = &unk_18DDAA008;
      v12 = vld1q_dup_f64(v18);
      v12.f64[0] = v36;
      v11 = v35;
      v5 = vdupq_n_s64(0x3FF3333333333333uLL);
      __asm { FMOV            V16.2D, #16.0 }

      v13 = 10.0;
    }

    *a1 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    *(a1 + 8) = _Q0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = v5;
    *(a1 + 56) = _Q16;
    *(a1 + 72) = v7;
    *(a1 + 88) = v8;
    *(a1 + 96) = v9;
    *(a1 + 112) = v10;
    *(a1 + 128) = v11;
    *(a1 + 144) = v12;
    *(a1 + 160) = v13;
    *(a1 + 168) = v14;
    *(a1 + 184) = v15;
  }

  else
  {
    __break(1u);
  }
}

double GlassContainer.TranslationKick.kickDistance.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0.0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0uLL;
  }

  else
  {
    v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
    v6 = (v1 + 48);
    v4 = 0uLL;
    v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v4 = vaddq_f64(vaddq_f64(v4, v6[-1]), *v6);
      v6 += 2;
      v7 -= 2;
    }

    while (v7);
    if (v2 == v3)
    {
      goto LABEL_10;
    }
  }

  v8 = v2 - v3;
  v9 = (v1 + 16 * v3 + 32);
  do
  {
    v10 = *v9++;
    v4 = vaddq_f64(v4, v10);
    --v8;
  }

  while (v8);
LABEL_10:
  *&result = *&vdivq_f64(vdivq_f64(v4, vdupq_lane_s64(COERCE__INT64(v2), 0)), vdupq_lane_s64(*(v0 + 88), 0));
  return result;
}

void GlassContainer.Entry.ModelID.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  if (*(v1 + 32))
  {
    if (*(v1 + 32) == 1)
    {
      MEMORY[0x193AC11A0](2);
      Hasher._combine(_:)(v4);
      if (!v3)
      {
        Hasher._combine(_:)(0);
        return;
      }

      Hasher._combine(_:)(1u);
      (*(*v3 + 120))(a1);
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = v1[3];
    MEMORY[0x193AC11A0](1);
    _Glass.Variant.ID.hash(into:)(a1);
    Hasher._combine(_:)(BYTE1(v3) & 1);
    (*(*v5 + 120))(a1);
    v6 = v7;
  }

  MEMORY[0x193AC11A0](v6);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Entry.ModelID()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Entry.ModelID(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  Hasher.init(_seed:)();
  GlassContainer.Entry.ModelID.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.Entry.GroupID()
{
  v1 = *(v0 + 9);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v5);
  Hasher._combine(_:)(v1);
  (*(*v2 + 120))(v5);
  MEMORY[0x193AC11A0](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GlassContainer.Entry.GroupID(uint64_t a1)
{
  v3 = *(v1 + 9);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  _Glass.Variant.ID.hash(into:)(a1);
  Hasher._combine(_:)(v3);
  (*(*v4 + 120))(a1);
  return MEMORY[0x193AC11A0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.Entry.GroupID(uint64_t a1)
{
  v2 = *(v1 + 9);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Hasher.init(_seed:)();
  _Glass.Variant.ID.hash(into:)(v6);
  Hasher._combine(_:)(v2);
  (*(*v3 + 120))(v6);
  MEMORY[0x193AC11A0](v4);
  return Hasher._finalize()();
}

void specialized GlassContainer.ResolvedStorage.forEachEntry(_:)(uint64_t a1, uint64_t a2)
{
  v88 = *(a1 + 16);
  if (!v88)
  {
    return;
  }

  v3 = 0;
  v87 = a1 + 32;
  while (1)
  {
    v4 = v87 + 200 * v3;
    v5 = *(v4 + 48);
    v92[2] = *(v4 + 32);
    v92[3] = v5;
    v6 = *(v4 + 112);
    v92[6] = *(v4 + 96);
    v92[7] = v6;
    v7 = *(v4 + 80);
    v92[4] = *(v4 + 64);
    v92[5] = v7;
    v93 = *(v4 + 192);
    v8 = *(v4 + 176);
    v92[10] = *(v4 + 160);
    v92[11] = v8;
    v9 = *(v4 + 144);
    v92[8] = *(v4 + 128);
    v92[9] = v9;
    v10 = *(v4 + 16);
    v92[0] = *v4;
    v92[1] = v10;
    v11 = v93;
    v12 = *(v93 + 16);
    if (v12)
    {
      break;
    }

LABEL_4:
    if (++v3 == v88)
    {
      return;
    }
  }

  v89 = v3;
  v13 = v93 + 32;
  outlined init with copy of GlassContainer.Effect(v92, v91);

  v14 = 0;
  v90 = v11 + 32;
  while (1)
  {
    v15 = v13 + 344 * v14;
    v16 = *v15;
    v17 = *(v15 + 16);
    v96 = *(v15 + 32);
    v94 = v16;
    v95 = v17;
    v18 = *(v15 + 64);
    v19 = *(a2 + 8);
    swift_beginAccess();
    v20 = *(v19 + 184);
    v21 = *(v20 + 16);

    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }

    v24 = v12;
    v25 = *(v20 + 56) + 32 * v22;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 12);
    v29 = *(v25 + 16);
    v30 = *(v25 + 20);
    v31 = *(v25 + 24);
    v32 = *(v19 + 192);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v19 + 184);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    v37 = v34[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      break;
    }

    v41 = v36;
    if (v34[3] < v40)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v35 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_56;
      }

LABEL_16:
      if (v41)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v44 = v35;
    specialized _NativeDictionary.copy()();
    v35 = v44;
    if (v41)
    {
LABEL_17:
      v43 = v34[7] + 32 * v35;
      *v43 = v26;
      *(v43 + 8) = v27;
      *(v43 + 12) = v28;
      *(v43 + 16) = v29;
      *(v43 + 20) = v30;
      *(v43 + 24) = v31;
      *(v43 + 28) = v32;
      goto LABEL_21;
    }

LABEL_19:
    v34[(v35 >> 6) + 8] |= 1 << v35;
    v45 = v34[6] + 40 * v35;
    v46 = v94;
    v47 = v95;
    *(v45 + 32) = v96;
    *v45 = v46;
    *(v45 + 16) = v47;
    v48 = v34[7] + 32 * v35;
    *v48 = v26;
    *(v48 + 8) = v27;
    *(v48 + 12) = v28;
    *(v48 + 16) = v29;
    *(v48 + 20) = v30;
    *(v48 + 24) = v31;
    *(v48 + 28) = v32;
    v49 = v34[2];
    v39 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v39)
    {
      goto LABEL_54;
    }

    v34[2] = v50;
    outlined init with copy of GlassContainer.Entry.ModelID(&v94, v91);
LABEL_21:
    *(v19 + 184) = v34;
    swift_endAccess();

    v12 = v24;
    if (!v18 || (v51 = *(a2 + 24), (v52 = *(v51 + 16)) == 0))
    {
LABEL_41:
      v76 = *(a2 + 8);
      swift_beginAccess();

      v77 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      v13 = v90;
      if (v78)
      {
        v79 = v77;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(v76 + 184);
        if (!v80)
        {
          specialized _NativeDictionary.copy()();
        }

        v82 = *(v81 + 48) + 40 * v79;
        outlined consume of GlassContainer.Entry.ModelID(*v82, *(v82 + 8), *(v82 + 16), *(v82 + 24), *(v82 + 32));
        specialized _NativeDictionary._delete(at:)(v79, v81);
        *(v76 + 184) = v81;
      }

LABEL_7:
      swift_endAccess();
      goto LABEL_8;
    }

    v53 = v27;
    v54 = v31;
    v55 = (v51 + 56);
    while (1)
    {
      v56 = *(v55 - 4);
      v57 = *(v55 - 3);
      v59 = *(v55 - 2);
      v58 = *(v55 - 1);
      v60 = v56 == v53 && v57 == v28;
      v61 = v60 && v59 == v29;
      if (v61 && v58 == v30)
      {
        v63 = *v55;
        if (*v55 == v54)
        {
          break;
        }
      }

      v55 += 8;
      if (!--v52)
      {
        goto LABEL_41;
      }
    }

    v64 = *(v55 - 3);
    v65 = *(a2 + 8);
    swift_beginAccess();
    v66 = *(v65 + 192);
    outlined init with copy of GlassContainer.Entry.ModelID(&v94, v91);

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = *(v65 + 184);
    v68 = v91[0];
    *(v65 + 184) = 0x8000000000000000;
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
    v71 = v68[2];
    v72 = (v70 & 1) == 0;
    v39 = __OFADD__(v71, v72);
    v73 = v71 + v72;
    if (v39)
    {
      goto LABEL_55;
    }

    v74 = v70;
    if (v68[3] >= v73)
    {
      if ((v67 & 1) == 0)
      {
        v86 = v69;
        specialized _NativeDictionary.copy()();
        v69 = v86;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, v67);
      v69 = specialized __RawDictionaryStorage.find<A>(_:)(&v94);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_56;
      }
    }

    *&v97 = v64;
    *(&v97 + 1) = __PAIR64__(LODWORD(v57), LODWORD(v56));
    *&v98 = __PAIR64__(LODWORD(v58), LODWORD(v59));
    *(&v98 + 1) = __PAIR64__(v66, LODWORD(v63));
    v83 = v91[0];
    if (v74)
    {
      v84 = (v91[0][7] + 32 * v69);
      v85 = v98;
      *v84 = v97;
      v84[1] = v85;
      outlined destroy of GlassContainer.Entry.ModelID(&v94);
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v69, &v94, &v97, v91[0]);
    }

    v12 = v24;
    *(v65 + 184) = v83;
    swift_endAccess();
    v13 = v90;
LABEL_8:
    ++v14;

    if (v14 == v12)
    {
      outlined destroy of GlassContainer.Effect(v92);

      v3 = v89;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void GlassContainer.DisplayMaterial.ID.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 28);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  _Glass.Variant.ID.hash(into:)(a1);
  if (v4 < 0xFC)
  {
    Hasher._combine(_:)(1u);
    outlined copy of _Glass.Variant.ID(v3, v4);
    _Glass.Variant.ID.hash(into:)(a1);
    outlined consume of _Glass.Variant.ID(v3, v4);
    if (!v6)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v5);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
  if (!v8)
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x193AC11E0](v10);
    if (v9)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

LABEL_11:
  Hasher._combine(_:)(0);
  if (v9)
  {
LABEL_8:
    Hasher._combine(_:)(1u);
    MEMORY[0x193AC11A0](v9);
    return;
  }

LABEL_12:
  Hasher._combine(_:)(0);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GlassContainer.DisplayMaterial.ID()
{
  Hasher.init(_seed:)();
  GlassContainer.DisplayMaterial.ID.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GlassContainer.DisplayMaterial.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  GlassContainer.DisplayMaterial.ID.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  return v2 < v3;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  return v3 >= v2;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  return v2 >= v3;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = 0.0;
  }

  if (*(a1 + 8))
  {
    v2 = 0.0;
  }

  return v3 < v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlassContainer.DisplayMaterial.ComparableID(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t GlassContainer.DataStorage.description.getter(uint64_t a1, double a2)
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18DDA6EB0;
  *(v3 + 32) = Double.description.getter();
  *(v3 + 40) = v4;
  if (*(a1 + 16))
  {
    lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity();
    v5 = Dictionary.description.getter();
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);
    if (v8 >= v7 >> 1)
    {
      v14 = v5;
      v15 = v6;
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v3);
      v6 = v15;
      v3 = v16;
      v5 = v14;
    }

    *(v3 + 16) = v8 + 1;
    v9 = v3 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  _StringGuts.grow(_:)(20);

  v10 = MEMORY[0x193ABF1C0](v3, MEMORY[0x1E69E6158]);
  v12 = v11;

  MEMORY[0x193ABEDD0](v10, v12);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t GlassContainer.ItemData.description.getter()
{
  Attribute = AGWeakAttributeGetAttribute();
  v1 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8])
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    strcpy(v5 + 32, "hasDisplayList");
    v5[47] = -18;
  }

  if (AGWeakAttributeGetAttribute() != v1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000011;
    *(v8 + 5) = 0x800000018DD7C4F0;
  }

  _StringGuts.grow(_:)(17);

  strcpy(v13, "GlassItemData(");
  v9 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v11 = v10;

  MEMORY[0x193ABEDD0](v9, v11);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v13[0];
}

uint64_t GlassContainer.Item.description.getter()
{
  v1 = *(v0 + 120);
  v24 = *(v0 + 128);
  v22 = *(v0 + 24);
  v23 = *(v0 + 177);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDAF080;
  *(v2 + 32) = GlassContainer.Item.ID.description.getter();
  *(v2 + 40) = v3;
  *(v2 + 48) = _Glass.debugDescription.getter();
  *(v2 + 56) = v4;
  if (v1 == -1)
  {
    v5 = 0xE700000000000000;
    v6 = 0x64696C61766E69;
  }

  else if (v1)
  {
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7974706D65;
  }

  *(v2 + 64) = v6;
  *(v2 + 72) = v5;
  if (v22)
  {
    v7 = 4;
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 4, 1, v2);
    *(v2 + 16) = 4;
    *(v2 + 80) = 0x656C62616E457369;
    *(v2 + 88) = 0xE900000000000064;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 3;
    if (!v23)
    {
      goto LABEL_13;
    }
  }

  v8 = *(v2 + 24);
  if (v7 >= v8 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v2);
  }

  *(v2 + 16) = v7 + 1;
  v9 = v2 + 16 * v7;
  *(v9 + 32) = 0x6E65646469487369;
  *(v9 + 40) = 0xE800000000000000;
LABEL_13:
  if (v24)
  {
    v10 = *(*v24 + 88);

    v12 = v10(v11);
    v14 = v13;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    if (v16 >= v15 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  v18 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v20 = v19;

  MEMORY[0x193ABEDD0](v18, v20);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x6574497373616C47;
}

uint64_t GlassContainer.Item.ID.description.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDA6EB0;

  _StringGuts.grow(_:)(16);

  strcpy(v15, "ViewIdentity(");
  HIWORD(v15[1]) = -4864;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v3);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  v4 = v15[1];
  *(v2 + 32) = v15[0];
  *(v2 + 40) = v4;
  if (v1)
  {
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    MEMORY[0x193ABEDD0](40, 0xE100000000000000);
    v5 = *(*v1 + 88);

    v7 = v5(v6);
    MEMORY[0x193ABEDD0](v7);

    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v9 >= v8 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 16) = v9 + 1;
    v10 = v2 + 16 * v9;
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
  }

  strcpy(v15, "GlassItemID(");
  v11 = MEMORY[0x193ABF1C0](v2, MEMORY[0x1E69E6158]);
  v13 = v12;

  MEMORY[0x193ABEDD0](v11, v13);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return v15[0];
}

uint64_t GlassContainer.Entry.ModelID.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 32))
  {
    if (*(v0 + 32) == 1)
    {
      v3 = GlassContainer.Item.ID.description.getter();
      MEMORY[0x193ABEDD0](v3);

      MEMORY[0x193ABEDD0](41, 0xE100000000000000);
      return 0x2844497972746E45;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    _StringGuts.grow(_:)(23);
    MEMORY[0x193ABEDD0](0x2844497972746E45, 0xE800000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    if ((v1 & 0x100) != 0)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if ((v1 & 0x100) != 0)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x193ABEDD0](v5, v6);

    v7 = MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    v8 = (*(*v2 + 88))(v7);
    MEMORY[0x193ABEDD0](v8);

    MEMORY[0x193ABEDD0](8236, 0xE200000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](41, 0xE100000000000000);
    return 0;
  }
}

uint64_t GlassContainer.Entry.description.getter()
{
  v25 = *(v0 + 128);
  v23 = *(v0 + 136);
  v24 = *(v0 + 137);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18DDACA80;
  *(v1 + 32) = GlassContainer.Entry.ModelID.description.getter();
  *(v1 + 40) = v2;
  *(v1 + 48) = _Glass.debugDescription.getter();
  *(v1 + 56) = v3;
  *(v1 + 64) = GlassContainer.DisplayMaterial.description.getter();
  *(v1 + 72) = v4;
  lazy protocol witness table accessor for type Int and conformance Int();
  *(v1 + 80) = BinaryInteger.description.getter();
  *(v1 + 88) = v5;
  v28 = v1;
  if (v23 == 1)
  {
    v6 = 5;
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 5, 1, v1);
    *(v1 + 16) = 5;
    *(v1 + 96) = 0x656C62616E457369;
    *(v1 + 104) = 0xE900000000000064;
    v28 = v1;
  }

  else
  {
    v6 = 4;
  }

  if (v24)
  {
    v7 = *(v1 + 24);
    if (v6 >= v7 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v6 + 1, 1, v1);
    }

    *(v1 + 16) = v6 + 1;
    v8 = v1 + 16 * v6;
    *(v8 + 32) = 0x6E65646469487369;
    *(v8 + 40) = 0xE800000000000000;
    v28 = v1;
  }

  v9 = *(v25 + 16);
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v26;
    v11 = v25 + 40;
    do
    {
      v12 = GlassContainer.Item.ID.description.getter();
      v27 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        v17 = v12;
        v18 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v12 = v17;
        v10 = v27;
      }

      *(v10 + 16) = v15 + 1;
      v16 = v10 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      v11 += 656;
      --v9;
    }

    while (v9);
    specialized Array.append<A>(contentsOf:)(v10);
    v1 = v28;
  }

  v19 = MEMORY[0x193ABF1C0](v1, MEMORY[0x1E69E6158]);
  v21 = v20;

  MEMORY[0x193ABEDD0](v19, v21);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0x287972746E45;
}

unint64_t GlassContainer.DisplayMaterial.description.getter()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v27 = *(v0 + 128);
  v29 = *(v0 + 144);
  v30 = *(v0 + 136);
  v31 = *(v0 + 152);
  v28 = *(v0 + 176);
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<String>, MEMORY[0x1E69E6158]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18DDA6EB0;
  v6 = v5;
  outlined copy of _Glass?(v2, v1, v4, v3);
  *(v6 + 4) = _Glass.debugDescription.getter();
  *(v6 + 5) = v7;
  if (v3 != 1)
  {
    if (v31 == 1 || (v28 & 1) != 0)
    {
      outlined consume of _Glass?(v2, v1, v4, v3);
    }

    else
    {
      outlined copy of _Glass.Variant.Role(v27, v30);

      v8 = _Glass.debugDescription.getter();
      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v33 = v9;
        v36 = v8;
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
        v9 = v33;
        v8 = v36;
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
      v13 = _Glass.debugDescription.getter();
      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v34 = v14;
        v37 = v13;
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        v14 = v34;
        v13 = v37;
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v13;
      *(v17 + 5) = v14;
      lazy protocol witness table accessor for type UInt32 and conformance UInt32();
      v18 = BinaryInteger.description.getter();
      v32 = v19;
      v35 = v18;
      v21 = *(v6 + 2);
      v20 = *(v6 + 3);
      if (v21 >= v20 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v6);
      }

      outlined consume of _Glass?(v2, v1, v4, v3);
      outlined consume of _Glass?(v27, v30, v29, v31);
      *(v6 + 2) = v21 + 1;
      v22 = &v6[16 * v21];
      *(v22 + 4) = v35;
      *(v22 + 5) = v32;
    }
  }

  _StringGuts.grow(_:)(19);

  v23 = MEMORY[0x193ABF1C0](v6, MEMORY[0x1E69E6158]);
  v25 = v24;

  MEMORY[0x193ABEDD0](v23, v25);

  MEMORY[0x193ABEDD0](41, 0xE100000000000000);
  return 0xD000000000000010;
}