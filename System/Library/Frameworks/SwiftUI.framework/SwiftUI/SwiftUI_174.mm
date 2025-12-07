uint64_t assignWithTake for StackItemModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a1 + 88);
  if (v4 == 1)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 88);
  if (v5 != 1)
  {
    if (v4)
    {
      if (v5)
      {
        v7 = *(a2 + 80);
        v8 = *(a1 + 64);
        v9 = *(a1 + 72);
        v10 = *(a1 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v7;
        outlined consume of Text.Storage(v8, v9, v10);
        *(a1 + 88) = v5;

        goto LABEL_10;
      }

      outlined destroy of Text(a1 + 64);
    }

    v11 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v11;
LABEL_10:
    v12 = (a1 + 96);
    v13 = *(a2 + 96);
    if (*(a1 + 96) != 1)
    {
      if (v13 != 1)
      {
        *v12 = v13;

        goto LABEL_15;
      }

      outlined destroy of Transaction(a1 + 96);
      v13 = 1;
    }

    *v12 = v13;
LABEL_15:
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);

    *(a1 + 120) = *(a2 + 120);
    goto LABEL_16;
  }

  outlined destroy of EquatableNavigationTitle(a1 + 64);
LABEL_4:
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 105) = *(a2 + 105);
LABEL_16:
  *(a1 + 128) = *(a2 + 128);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);

  v14 = *(a2 + 248);
  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v14;
  outlined consume of Environment<NSManagedObjectContext>.Content(v15, v16);
  v17 = *(a2 + 264);
  v18 = *(a1 + 256);
  v19 = *(a1 + 264);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a2 + 280);
  v21 = *(a1 + 272);
  v22 = *(a1 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  return a1;
}

uint64_t getEnumTagSinglePayload for StackItemModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StackItemModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for StackItemsView(uint64_t a1)
{

  v2 = *(a1 + 456);
  if (v2 == 2)
  {

    v4 = *(a1 + 32);
    if (v4)
    {
      if (v4 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(a1 + 48))
    {
    }

    if (*(a1 + 72))
    {

LABEL_34:
    }
  }

  else if (v2 == 1)
  {
    if (*(a1 + 56))
    {
    }

    if (*(a1 + 112))
    {
    }

    v3 = *(a1 + 216);
    if (*(a1 + 248))
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 160))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 136));
          }

          if (*(a1 + 184) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 128));
        }
      }
    }

    else
    {
      if (v3 != 255)
      {
        if (v3)
        {

          if (*(a1 + 160))
          {
            __swift_destroy_boxed_opaque_existential_1((a1 + 136));
          }

          if (*(a1 + 184) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((a1 + 128));
        }
      }
    }

    if (*(a1 + 368))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(a1 + 520), *(a1 + 528));
  outlined consume of Environment<NSManagedObjectContext>.Content(*(a1 + 536), *(a1 + 544));

  return result;
}

uint64_t initializeWithCopy for StackItemsView(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 361);
  v5 = a2 + 361;
  *a1 = *a2;
  v6 = *(a2 + 456);

  if (v6 == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    v12 = *(a2 + 32);

    if (v12 == 1)
    {
      v13 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v13;
      *(a1 + 80) = *(a2 + 80);
      v14 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v14;
LABEL_32:
      *(a1 + 456) = 2;
      goto LABEL_51;
    }

    *(a1 + 16) = *(a2 + 16);
    if (v12)
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = v12;
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
    }

    v26 = *(a2 + 48);
    *(a1 + 41) = *(a2 + 41);
    if (v26)
    {
      v27 = *(a2 + 56);
      *(a1 + 48) = v26;
      *(a1 + 56) = v27;

      v28 = *(a2 + 72);
      if (v28)
      {
LABEL_28:
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v28;
        *(a1 + 80) = *(a2 + 80);

LABEL_31:
        *(a1 + 81) = *(a2 + 81);
        goto LABEL_32;
      }
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      v28 = *(a2 + 72);
      if (v28)
      {
        goto LABEL_28;
      }
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_31;
  }

  if (v6 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    v7 = *(a2 + 56);
    if (v7)
    {
      *(a1 + 48) = *(a2 + 48);
      v8 = *(a2 + 64);
      v9 = *(a2 + 72);
      *(a1 + 56) = v7;
      *(a1 + 64) = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 88);
      *(a1 + 72) = v9;
      *(a1 + 80) = v10;
      *(a1 + 88) = v11;
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v15 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v15;
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
    }

    *(a1 + 100) = *(a2 + 100);
    v16 = *(a2 + 112);
    if (v16)
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = v16;
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    v17 = *(a2 + 216);
    v58 = v5;
    v59 = v4;
    if (*(a2 + 248))
    {
      if (v17 == 255)
      {
        v22 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v22;
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        v23 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v23;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v18 = *(a2 + 160);

        if (v18)
        {
          v19 = *(a2 + 168);
          *(a1 + 160) = v18;
          *(a1 + 168) = v19;
          (**(v18 - 8))(a1 + 136, a2 + 136, v18);
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
        }

        v31 = *(a2 + 184);
        if (v31 == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 184) = v31;
        }

        v32 = *(a2 + 200);
        v33 = *(a2 + 208);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = v32;
        *(a1 + 208) = v33;
        *(a1 + 216) = 1;
      }

      else
      {
        v29 = *(a2 + 152);
        *(a1 + 152) = v29;
        (**(v29 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 248) = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v24;
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        v25 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v25;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v20 = *(a2 + 160);

        if (v20)
        {
          v21 = *(a2 + 168);
          *(a1 + 160) = v20;
          *(a1 + 168) = v21;
          (**(v20 - 8))(a1 + 136, a2 + 136, v20);
        }

        else
        {
          *(a1 + 136) = *(a2 + 136);
          *(a1 + 152) = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
        }

        v34 = *(a2 + 184);
        if (v34 == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 184) = v34;
        }

        v35 = *(a2 + 200);
        v36 = *(a2 + 208);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 200) = v35;
        *(a1 + 208) = v36;
        *(a1 + 216) = 1;
      }

      else
      {
        v30 = *(a2 + 152);
        *(a1 + 152) = v30;
        (**(v30 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      v37 = *(a2 + 232);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = v37;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = 0;
    }

    v38 = *(a2 + 264);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = v38;
    v39 = *(a2 + 280);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = v39;
    v40 = *(a2 + 296);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = v40;
    v41 = *(a2 + 312);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v41;
    v42 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v42;
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *v59 = *v5;
    v43 = *(a2 + 368);

    if (v43)
    {
      v44 = *(a2 + 376);
      v45 = *(a2 + 384);
      *(a1 + 368) = v43;
      *(a1 + 376) = v44;
      v46 = *(a2 + 392);
      v47 = *(a2 + 400);
      *(a1 + 384) = v45;
      *(a1 + 392) = v46;
      v48 = *(a2 + 408);
      v49 = *(a2 + 416);
      *(a1 + 400) = v47;
      *(a1 + 408) = v48;
      v50 = *(a2 + 424);
      *(a1 + 416) = v49;
      *(a1 + 424) = v50;
      *(a1 + 432) = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
    }

    else
    {
      v51 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v51;
      *(a1 + 432) = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      v52 = *(a2 + 384);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = v52;
    }

    *(a1 + 456) = 1;
    v5 = v58;
    v4 = v59;
  }

  else
  {
    memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  }

LABEL_51:
  swift_weakCopyInit();
  v53 = *(a2 + 480);
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = v53;
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 497) = *(a2 + 497);
  v54 = *(a2 + 520);
  v55 = *(v5 + 167);

  outlined copy of Environment<Selector?>.Content(v54, v55);
  *(a1 + 520) = v54;
  *(v4 + 167) = v55;
  v56 = *(a2 + 536);
  LOBYTE(v54) = *(v5 + 183);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v56, v54);
  *(a1 + 536) = v56;
  *(v4 + 183) = v54;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t assignWithCopy for StackItemsView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 361;
  v5 = a2 + 361;
  v6 = (a2 + 8);
  *a1 = *a2;

  if (a1 == a2)
  {
    goto LABEL_52;
  }

  outlined destroy of NavigationState.Base(a1 + 8);
  v7 = *(a2 + 456);
  if (v7 == 2)
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 32);

    if (v9 == 1)
    {
      *(a1 + 16) = *(a2 + 16);
      v10 = *(a2 + 32);
      v11 = *(a2 + 48);
      v12 = *(a2 + 64);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 48) = v11;
      *(a1 + 64) = v12;
      *(a1 + 32) = v10;
LABEL_33:
      *(a1 + 456) = 2;
      goto LABEL_52;
    }

    *(a1 + 16) = *(a2 + 16);
    if (*(a2 + 32))
    {
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      v28 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v28;
    }

    *(a1 + 41) = *(a2 + 41);
    v29 = *(a2 + 48);
    if (v29)
    {
      v30 = *(a2 + 56);
      *(a1 + 48) = v29;
      *(a1 + 56) = v30;

      if (*(a2 + 72))
      {
LABEL_29:
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);

LABEL_32:
        *(a1 + 81) = *(a2 + 81);
        goto LABEL_33;
      }
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      if (*(a2 + 72))
      {
        goto LABEL_29;
      }
    }

    v31 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v31;
    goto LABEL_32;
  }

  if (v7 == 1)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v8;
    if (*(a2 + 56))
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      v13 = *(a2 + 48);
      v14 = *(a2 + 64);
      v15 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v14;
      *(a1 + 80) = v15;
      *(a1 + 48) = v13;
    }

    *(a1 + 100) = *(a2 + 100);
    if (*(a2 + 112))
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
    }

    else
    {
      v16 = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 104) = v16;
    }

    v17 = *(a2 + 216);
    if (*(a2 + 248))
    {
      if (v17 == 255)
      {
        v20 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v20;
        v21 = *(a2 + 160);
        v22 = *(a2 + 176);
        v23 = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 176) = v22;
        *(a1 + 192) = v23;
        *(a1 + 160) = v21;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v18 = *(a2 + 160);

        if (v18)
        {
          *(a1 + 160) = v18;
          *(a1 + 168) = *(a2 + 168);
          (**(v18 - 8))(a1 + 136, a2 + 136, v18);
        }

        else
        {
          v34 = *(a2 + 136);
          v35 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v35;
          *(a1 + 136) = v34;
        }

        if (*(a2 + 184) == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 180) = *(a2 + 180);
          *(a1 + 184) = *(a2 + 184);
        }

        *(a1 + 192) = *(a2 + 192);
        v36 = *(a2 + 208);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = v36;
        *(a1 + 216) = 1;
      }

      else
      {
        v32 = *(a2 + 152);
        *(a1 + 152) = v32;
        *(a1 + 160) = *(a2 + 160);
        (**(v32 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 248) = 1;
    }

    else
    {
      if (v17 == 255)
      {
        v24 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v24;
        v25 = *(a2 + 160);
        v26 = *(a2 + 176);
        v27 = *(a2 + 192);
        *(a1 + 201) = *(a2 + 201);
        *(a1 + 176) = v26;
        *(a1 + 192) = v27;
        *(a1 + 160) = v25;
      }

      else if (v17)
      {
        *(a1 + 128) = *(a2 + 128);
        v19 = *(a2 + 160);

        if (v19)
        {
          *(a1 + 160) = v19;
          *(a1 + 168) = *(a2 + 168);
          (**(v19 - 8))(a1 + 136, a2 + 136, v19);
        }

        else
        {
          v37 = *(a2 + 136);
          v38 = *(a2 + 152);
          *(a1 + 168) = *(a2 + 168);
          *(a1 + 152) = v38;
          *(a1 + 136) = v37;
        }

        if (*(a2 + 184) == 1)
        {
          *(a1 + 176) = *(a2 + 176);
        }

        else
        {
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 180) = *(a2 + 180);
          *(a1 + 184) = *(a2 + 184);
        }

        *(a1 + 192) = *(a2 + 192);
        v39 = *(a2 + 208);
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = v39;
        *(a1 + 216) = 1;
      }

      else
      {
        v33 = *(a2 + 152);
        *(a1 + 152) = v33;
        *(a1 + 160) = *(a2 + 160);
        (**(v33 - 8))(a1 + 128, a2 + 128);
        *(a1 + 216) = 0;
      }

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = 0;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    v40 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 320) = v40;
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 348) = *(a2 + 348);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 360) = *(a2 + 360);
    *v4 = *v5;
    v41 = *(a2 + 368);

    if (v41)
    {
      *(a1 + 368) = v41;
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 408) = *(a2 + 408);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
      v42 = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 432) = v42;
    }

    else
    {
      v43 = *(a2 + 384);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = v43;
      v44 = *(a2 + 400);
      v45 = *(a2 + 416);
      v46 = *(a2 + 432);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 416) = v45;
      *(a1 + 432) = v46;
      *(a1 + 400) = v44;
    }

    *(a1 + 456) = 1;
  }

  else
  {
    memcpy((a1 + 8), v6, 0x1C1uLL);
  }

LABEL_52:
  swift_weakCopyAssign();
  *(a1 + 472) = *(a2 + 472);

  *(a1 + 480) = *(a2 + 480);

  v47 = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 488) = v47;
  v48 = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 504) = v48;
  v49 = *(a2 + 520);
  v50 = *(v5 + 167);
  outlined copy of Environment<Selector?>.Content(v49, v50);
  v51 = *(a1 + 520);
  v52 = *(v4 + 167);
  *(a1 + 520) = v49;
  *(v4 + 167) = v50;
  outlined consume of Environment<Selector?>.Content(v51, v52);
  v53 = *(a2 + 536);
  v54 = *(v5 + 183);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(v53, v54);
  v55 = *(a1 + 536);
  v56 = *(v4 + 183);
  *(a1 + 536) = v53;
  *(v4 + 183) = v54;
  outlined consume of Environment<NSManagedObjectContext>.Content(v55, v56);
  *(a1 + 552) = *(v5 + 191);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(v5 + 207);
  *(a1 + 576) = *(a2 + 576);

  *(a1 + 584) = *(v5 + 223);
  *(a1 + 592) = *(a2 + 592);

  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t initializeWithTake for StackItemsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  swift_weakTakeInit();
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 497) = *(a2 + 497);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  return a1;
}

uint64_t assignWithTake for StackItemsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  if (a1 != a2)
  {
    outlined destroy of NavigationState.Base(a1 + 8);
    memcpy((a1 + 8), (a2 + 8), 0x1C1uLL);
  }

  swift_weakTakeAssign();
  *(a1 + 472) = *(a2 + 472);

  *(a1 + 480) = *(a2 + 480);

  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  v4 = *(a2 + 528);
  v5 = *(a1 + 520);
  v6 = *(a1 + 528);
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  v7 = *(a2 + 544);
  v8 = *(a1 + 536);
  v9 = *(a1 + 544);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = v7;
  outlined consume of Environment<NSManagedObjectContext>.Content(v8, v9);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);

  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);

  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);

  return a1;
}

uint64_t getEnumTagSinglePayload for StackItemsView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 616))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StackItemsView(uint64_t result, int a2, int a3)
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
    *(result + 584) = 0u;
    *(result + 600) = 0u;
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
      *(result + 616) = 1;
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

    *(result + 616) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackItemsView and conformance StackItemsView()
{
  result = lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView;
  if (!lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StackItemsView, &unk_1F0009880, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StackItemsView and conformance StackItemsView);
  }

  return result;
}

uint64_t specialized RootItemModifier.localizedApplicationName()()
{
  v0 = [objc_opt_self() mainBundle];
  result = *MEMORY[0x1E695E120];
  if (!*MEMORY[0x1E695E120])
  {
    __break(1u);
    goto LABEL_44;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = *MEMORY[0x1E695E4F8];
  if (!*MEMORY[0x1E695E4F8])
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v4 = v2;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = [v0 localizedInfoDictionary];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000018CD59D60), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v41);

      if (swift_dynamicCast())
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v12 = [v0 infoDictionary];
  if (v12)
  {
    v13 = v12;
    v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001CLL, 0x800000018CD59D60), (v16 & 1) != 0))
    {
      outlined init with copy of Any(*(v14 + 56) + 32 * v15, v41);

      if (swift_dynamicCast())
      {
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v17 = [v0 localizedInfoDictionary];
  if (v17)
  {
    v18 = v17;
    v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v21 & 1) != 0))
    {
      outlined init with copy of Any(*(v19 + 56) + 32 * v20, v41);

      if (swift_dynamicCast())
      {
LABEL_19:

LABEL_38:

        return v40;
      }
    }

    else
    {
    }
  }

  v22 = [v0 infoDictionary];
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v22;
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v24 + 16))
  {

    goto LABEL_27;
  }

  v25 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  outlined init with copy of Any(*(v24 + 56) + 32 * v25, v41);

  if (swift_dynamicCast())
  {
    goto LABEL_32;
  }

LABEL_28:
  v28 = [v0 localizedInfoDictionary];
  if (v28)
  {
    v29 = v28;
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v30 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v6), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v30 + 56) + 32 * v31, v41);

      if (swift_dynamicCast())
      {
LABEL_32:

        goto LABEL_38;
      }
    }

    else
    {
    }
  }

  v33 = [v0 infoDictionary];
  if (v33)
  {
    v34 = v33;
    v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v35 + 16))
    {
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v6);
      v38 = v37;

      if (v38)
      {
        outlined init with copy of Any(*(v35 + 56) + 32 * v36, v41);

        if (swift_dynamicCast())
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }
    }

    else
    {
    }
  }

LABEL_41:

  return 0;
}

unint64_t lazy protocol witness table accessor for type Image.ResizableProvider and conformance Image.ResizableProvider()
{
  result = lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider;
  if (!lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6981668], MEMORY[0x1E6981670], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Image.ResizableProvider and conformance Image.ResizableProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _ShadowEffect>, MEMORY[0x1E6981748], MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981710];
    v4[1] = MEMORY[0x1E697E280];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>(255);
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _InsetViewModifier<MultimodalNavigationTitleBar>, lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, MEMORY[0x1E697F590]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ViewModifier_Content<StackItemModifier>, lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier, &type metadata for StackItemModifier, MEMORY[0x1E697FDE8]);
    v3 = v2;
    v4 = lazy protocol witness table accessor for type _ViewModifier_Content<StackItemModifier> and conformance _ViewModifier_Content<A>();
    v6 = type metadata accessor for MultimodalNavigationStackViewHost(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<StackItemModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<StackItemModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<StackItemModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ViewModifier_Content<StackItemModifier>, lazy protocol witness table accessor for type StackItemModifier and conformance StackItemModifier, &type metadata for StackItemModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<StackItemModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>(255);
    v4[0] = &protocol witness table for MultimodalNavigationStackViewHost<A>;
    v4[1] = MEMORY[0x1E6980A30];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>)
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<GradientBackground, _ShadowEffect>, &type metadata for GradientBackground, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<GradientBackground, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for _BackgroundModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GradientBackground, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GradientBackground, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GradientBackground, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<GradientBackground, _ShadowEffect>, &type metadata for GradientBackground, MEMORY[0x1E697E288], MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GradientBackground and conformance GradientBackground();
    v5[1] = MEMORY[0x1E697E280];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GradientBackground, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GradientBackground and conformance GradientBackground()
{
  result = lazy protocol witness table cache variable for type GradientBackground and conformance GradientBackground;
  if (!lazy protocol witness table cache variable for type GradientBackground and conformance GradientBackground)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GradientBackground, &type metadata for GradientBackground, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GradientBackground and conformance GradientBackground);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar()
{
  result = lazy protocol witness table cache variable for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar;
  if (!lazy protocol witness table cache variable for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar);
  }

  return result;
}

void type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnimationModifier<EquatableNavigationTitle?>)
  {
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type EquatableNavigationTitle? and conformance <A> A?(&lazy protocol witness table cache variable for type EquatableNavigationTitle? and conformance <A> A?, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, lazy protocol witness table accessor for type EquatableNavigationTitle and conformance EquatableNavigationTitle);
    v1 = type metadata accessor for _AnimationModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _AnimationModifier<EquatableNavigationTitle?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EquatableNavigationTitle and conformance EquatableNavigationTitle()
{
  result = lazy protocol witness table cache variable for type EquatableNavigationTitle and conformance EquatableNavigationTitle;
  if (!lazy protocol witness table cache variable for type EquatableNavigationTitle and conformance EquatableNavigationTitle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EquatableNavigationTitle, &unk_1F0009780, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EquatableNavigationTitle and conformance EquatableNavigationTitle);
  }

  return result;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t partial apply for closure #2 in StackItemModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 168))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

uint64_t partial apply for closure #3 in StackItemModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 192))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

uint64_t partial apply for closure #4 in StackItemModifier.body(content:)(uint64_t result)
{
  if (*(v1 + 248))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return v2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>(255);
    type metadata accessor for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>(255, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>(255);
    type metadata accessor for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>(255, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>, &type metadata for MultimodalNavigationTitleHorizontalPaddingKey, &protocol witness table for MultimodalNavigationTitleHorizontalPaddingKey);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ZIndexTraitKey>, MEMORY[0x1E697E5A8], MEMORY[0x1E697E598], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>(255);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>(255);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _OverlayStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E697FDA8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _LayoutRoot<StackItemLayout>, lazy protocol witness table accessor for type StackItemLayout and conformance StackItemLayout, &unk_1F0009D98, MEMORY[0x1E697DDC0]);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
    lazy protocol witness table accessor for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>();
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StackItemLayout and conformance StackItemLayout()
{
  result = lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout;
  if (!lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StackItemLayout, &unk_1F0009D98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout;
  if (!lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StackItemLayout, &unk_1F0009D98, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StackItemLayout and conformance StackItemLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _LayoutRoot<StackItemLayout>, lazy protocol witness table accessor for type StackItemLayout and conformance StackItemLayout, &unk_1F0009D98, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _LayoutRoot<StackItemLayout>, lazy protocol witness table accessor for type StackItemLayout and conformance StackItemLayout, &unk_1F0009D98, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDD0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EquatableNavigationTitle? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for State<BarTransitionProgress>(255, a2, a3, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = a4();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C80], v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type EquatableNavigationTitle? and conformance <A> A?(&lazy protocol witness table cache variable for type CGFloat? and conformance <A> A?, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    v5 = type metadata accessor for _PreferenceActionModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Preference()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Pref;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Pref)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<M();
    v5[1] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<UIKeyboardAppearance> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Pref);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<M()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModi;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModi)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<MultimodalCustomKeyboardActionKey> and conformance _PreferenceActionModifier<A>, type metadata accessor for _PreferenceActionModifier<MultimodalCustomKeyboardActionKey>, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModi);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, ;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A, )
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceActionModifier<A>, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>, &type metadata for MultimodalNavigationTitleBottomPaddingKey, &protocol witness table for MultimodalNavigationTitleBottomPaddingKey);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>> and conformance <> ModifiedContent<A,);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>,  &protocol witness table for AccessibilityAttachmentModifier);
    v5[1] = lazy protocol witness table accessor for type _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceActionModifier<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey> and conformance _PreferenceActionModifier<A>, &lazy cache variable for type metadata for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>, &type metadata for MultimodalNavigationTitleHorizontalPaddingKey, &protocol witness table for MultimodalNavigationTitleHorizontalPaddingKey);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>> and conformance <> _VariadicView.Tree<A, B>();
    v5[1] = lazy protocol witness table accessor for type _OverlayStyleModifier<Color> and conformance _OverlayStyleModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _LayoutRoot<StackItemLayout> and conformance _LayoutRoot<A>();
    v5[1] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<EquatableNavigationTitle?> and conformance _AnimationModifier<A>, type metadata accessor for _AnimationModifier<EquatableNavigationTitle?>, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>> and conformance <> ModifiedContent<A, B>, &protocol witness table for OnScrollStateChange);
    v5[1] = lazy protocol witness table accessor for type _InsetViewModifier<MultimodalNavigationTitleBar> and conformance _InsetViewModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>> and conformance GeometryReader<A>, type metadata accessor for GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, MEMORY[0x1E697E378]);
    v5[1] = &protocol witness table for NavigationTitleActionModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _InsetViewModifier<MultimodalNavigationTitleBar> and conformance _InsetViewModifier<A>()
{
  result = lazy protocol witness table cache variable for type _InsetViewModifier<MultimodalNavigationTitleBar> and conformance _InsetViewModifier<A>;
  if (!lazy protocol witness table cache variable for type _InsetViewModifier<MultimodalNavigationTitleBar> and conformance _InsetViewModifier<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _InsetViewModifier<MultimodalNavigationTitleBar>, lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, MEMORY[0x1E697F590]);
    result = swift_getWitnessTable(MEMORY[0x1E697F598], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _InsetViewModifier<MultimodalNavigationTitleBar> and conformance _InsetViewModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _OverlayStyleModifier<Color> and conformance _OverlayStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _OverlayStyleModifier<Color> and conformance _OverlayStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _OverlayStyleModifier<Color> and conformance _OverlayStyleModifier<A>)
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _OverlayStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E697FDA8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDB0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _OverlayStyleModifier<Color> and conformance _OverlayStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ZIndexTraitKey>, MEMORY[0x1E697E5A8], MEMORY[0x1E697E598], MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ZIndexTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey> and conformance _PreferenceActionModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>(255, a2, a3, a4);
    result = swift_getWitnessTable(MEMORY[0x1E6980620], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BarTransitionProgress and conformance BarTransitionProgress()
{
  result = lazy protocol witness table cache variable for type BarTransitionProgress and conformance BarTransitionProgress;
  if (!lazy protocol witness table cache variable for type BarTransitionProgress and conformance BarTransitionProgress)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BarTransitionProgress, &type metadata for BarTransitionProgress, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BarTransitionProgress and conformance BarTransitionProgress);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceAct(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>,)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActi, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceActionModifier<MultimodalCustomKeyb, type metadata accessor for _EnvironmentKeyWritingModifier<UIKeyboardAppearance>);
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ValueActionModifier2<BarTransitionProgress>, lazy protocol witness table accessor for type BarTransitionProgress and conformance BarTransitionProgress, &type metadata for BarTransitionProgress, MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>,);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKe()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPad;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPad)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _PreferenceAct(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>, _Preference();
    v5[1] = lazy protocol witness table accessor for type _ValueActionModifier2<BarTransitionProgress> and conformance _ValueActionModifier2<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPad);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<BarTransitionProgress> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<BarTransitionProgress> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<BarTransitionProgress> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ValueActionModifier2<BarTransitionProgress>, lazy protocol witness table accessor for type BarTransitionProgress and conformance BarTransitionProgress, &type metadata for BarTransitionProgress, MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<BarTransitionProgress> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in StackItemModifier.updateScene(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(a2 + 48))(v4, v5, ObjectType, a2);
}

uint64_t outlined init with copy of (offset: Int, element: NavigationState.StackContent.PositionedView)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of _InsetViewModifier<MultimodalNavigationTitleBar>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ImageProviderBox<Image.ResizableProvider>(0, &lazy cache variable for type metadata for _InsetViewModifier<MultimodalNavigationTitleBar>, lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, MEMORY[0x1E697F590]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of _InsetViewModifier<MultimodalNavigationTitleBar>(uint64_t a1)
{
  type metadata accessor for ImageProviderBox<Image.ResizableProvider>(0, &lazy cache variable for type metadata for _InsetViewModifier<MultimodalNavigationTitleBar>, lazy protocol witness table accessor for type MultimodalNavigationTitleBar and conformance MultimodalNavigationTitleBar, &type metadata for MultimodalNavigationTitleBar, MEMORY[0x1E697F590]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for NavigationTitleStorage??(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for State<BarTransitionProgress>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with take of StackItemsView(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  memcpy((a2 + 8), (a1 + 8), 0x1C1uLL);
  swift_weakTakeInit();
  *(a2 + 472) = *(a1 + 472);
  v4 = *(a1 + 488);
  *(a2 + 497) = *(a1 + 497);
  *(a2 + 488) = v4;
  v5 = *(a1 + 520);
  *(a2 + 528) = *(a1 + 528);
  *(a2 + 520) = v5;
  v6 = *(a1 + 536);
  *(a2 + 544) = *(a1 + 544);
  *(a2 + 536) = v6;
  *(a2 + 552) = *(a1 + 552);
  *(a2 + 568) = *(a1 + 568);
  *(a2 + 584) = *(a1 + 584);
  *(a2 + 600) = *(a1 + 600);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [StackItem] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [StackItem] and conformance [A];
  if (!lazy protocol witness table cache variable for type [StackItem] and conformance [A])
  {
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for [StackItem], &type metadata for StackItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6338], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [StackItem] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981900];
    v4[1] = &protocol witness table for AccessibilityAttachmentModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackItem and conformance StackItem()
{
  result = lazy protocol witness table cache variable for type StackItem and conformance StackItem;
  if (!lazy protocol witness table cache variable for type StackItem and conformance StackItem)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StackItem, &type metadata for StackItem, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StackItem and conformance StackItem);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>(255);
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, type metadata accessor for ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, type metadata accessor for _AnimationModifier<[Int]>);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for [StackItem], &type metadata for StackItem, MEMORY[0x1E69E62F8]);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type [StackItem] and conformance [A]();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E69819D0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

void type metadata accessor for _AnimationModifier<[Int]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnimationModifier<[Int]>)
  {
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    v1 = type metadata accessor for _AnimationModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _AnimationModifier<[Int]>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Int] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Int] and conformance <A> [A])
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v4[0] = MEMORY[0x1E69E6550];
    result = swift_getWitnessTable(MEMORY[0x1E69E6320], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type [Int] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>(255, &lazy cache variable for type metadata for ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, type metadata accessor for ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, type metadata accessor for _AnimationModifier<[Int]>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>> and conformance ZStack<A>, type metadata accessor for ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, MEMORY[0x1E6981880]);
    v5[1] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<[Int]> and conformance _AnimationModifier<A>, type metadata accessor for _AnimationModifier<[Int]>, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>>)
  {
    v2 = type metadata accessor for NSNotificationCenter.Publisher();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>(255);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    v6[3] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69805D0]);
    v4 = type metadata accessor for SubscriptionView(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for SubscriptionView<NSNotificationCenter.Publisher, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>, _AppearanceActionModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>(255);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier> and conformance NavigationState.StackContent.Views.ViewsSequence<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _ValueActionModifier2<Int> and conformance _ValueActionModifier2<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ZStack<ForEach<[StackItem], Int, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>>, _AnimationModifier<[Int]>>, MultimodalNavigationChromeModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _ValueActionModifier2<Int>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<Int> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<Int> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<Int> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<Int> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

uint64_t objectdestroy_62Tm_0()
{

  v1 = *(v0 + 472);
  if (v1 == 2)
  {

    v3 = *(v0 + 48);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 64))
    {
    }

    if (*(v0 + 88))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 72))
    {
    }

    if (*(v0 + 128))
    {
    }

    v2 = *(v0 + 232);
    if (*(v0 + 264))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 152));
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 144));
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 176))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 152));
          }

          if (*(v0 + 200) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 144));
        }
      }
    }

    if (*(v0 + 384))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(v0 + 536), *(v0 + 544));
  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 552), *(v0 + 560));

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for Task<(), Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Task<(), Error>)
  {
    type metadata accessor for Error();
    v1 = type metadata accessor for Task();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Task<(), Error>);
    }
  }
}

uint64_t partial apply for closure #1 in StackItemsView.navigateBack(isAnimated:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in StackItemsView.navigateBack(isAnimated:)(a1, v4, v5, v1 + 32);
}

uint64_t partial apply for closure #1 in StackItemsView.updateClientSettings(numberOfStackItems:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *(a2 + 16);

  return v4(v5, ObjectType, a2);
}

uint64_t initializeWithCopy for OnScrollStateChange(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 25) = *(a2 + 25);

  return a1;
}

uint64_t assignWithCopy for OnScrollStateChange(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  v5 = a2[4];
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v5;
  return a1;
}

uint64_t assignWithTake for OnScrollStateChange(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<RootItemModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RootItemModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ViewModifier_Content<RootItemModifier>, lazy protocol witness table accessor for type RootItemModifier and conformance RootItemModifier, &type metadata for RootItemModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RootItemModifier>, TransactionalPreferenceTransformModifier<NavigationTitleKey>>);
    }
  }
}

void type metadata accessor for ImageProviderBox<Image.ResizableProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<RootItemModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<RootItemModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<RootItemModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ImageProviderBox<Image.ResizableProvider>(255, &lazy cache variable for type metadata for _ViewModifier_Content<RootItemModifier>, lazy protocol witness table accessor for type RootItemModifier and conformance RootItemModifier, &type metadata for RootItemModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<RootItemModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBo(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNa)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>(255);
    type metadata accessor for ModifiedContent<Image, _ShadowEffect>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNa);
    }
  }
}

void type metadata accessor for ModifiedContent<Image, _ShadowEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<Multimod()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<Mu;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<Mu)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBo(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionM( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigati,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKey>>,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<MultimodalNavigationTitleBottomPaddingKe,  MEMORY[0x1E69805D0]);
    v5[1] = lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_VariadicView.Tree<_LayoutRoot<StackItemLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<GeometryReader<ModifiedContent<MultimodalNavigationStackViewHost<_ViewModifier_Content<StackItemModifier>>, _SafeAreaRegionsIgnoringLayout>>, NavigationTitleActionModifier>, _BackgroundModifier<ModifiedContent<GradientBackground, _ShadowEffect>>>, OnScrollStateChange>, _InsetViewModifier<MultimodalNavigationTitleBar>>, _AnimationModifier<EquatableNavigationTitle?>>>, _OverlayStyleModifier<Color>>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<ZIndexTraitKey>>, _AllowsHitTestingModifier>, AccessibilityAttachmentModifier>, _PreferenceActionModifier<MultimodalNavigationTitleHorizontalPaddingKey>>, _PreferenceActionModifier<Mu);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for StackItemLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StackItemLayout and conformance StackItemLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static ScrollStateActionBinding.bottomBarTransitionProgress(state:)(uint64_t a1)
{
  if (one-time initialization token for bottomBarTransitionDistance != -1)
  {
    swift_once();
  }

  ScrollGeometry.contentSize.getter();
  ScrollGeometry.bounds.getter();
  CGRectGetHeight(v2);
  return ScrollGeometry.contentOffset.getter();
}

uint64_t specialized static ScrollStateActionBinding.barTransitionProgress(topState:bottomState:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v27 = a1[4];
  v28 = v3;
  v29[0] = a1[6];
  *(v29 + 13) = *(a1 + 109);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  v5 = a1[3];
  v25 = a1[2];
  v26 = v5;
  if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v23) == 1)
  {
    goto LABEL_2;
  }

  if (one-time initialization token for topBarTransitionDistance != -1)
  {
    swift_once();
  }

  v7 = *&static ClarityUIMetrics.topBarTransitionDistance;
  v20 = v27;
  v21 = v28;
  v22[0] = v29[0];
  v16 = v23;
  v17 = v24;
  v18 = v25;
  v19 = v26;
  ScrollGeometry.contentOffset.getter();
  v9 = v8 + *&v25;
  if (v7 <= v8 + *&v25)
  {
    v6 = 1.0;
  }

  else
  {
    if (v9 <= 0.0)
    {
LABEL_2:
      v6 = 0.0;
      goto LABEL_9;
    }

    v6 = v9 / v7;
  }

LABEL_9:
  v10 = a2[5];
  v20 = a2[4];
  v21 = v10;
  v22[0] = a2[6];
  *(v22 + 13) = *(a2 + 109);
  v11 = a2[1];
  v16 = *a2;
  v17 = v11;
  v12 = a2[3];
  v18 = a2[2];
  v19 = v12;
  if (_s7SwiftUI19ScrollGeometryStateVSgWOg(&v16) != 1)
  {
    v14[4] = v20;
    v14[5] = v21;
    v15[0] = v22[0];
    *(v15 + 12) = *(v22 + 12);
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    specialized static ScrollStateActionBinding.bottomBarTransitionProgress(state:)(v14);
  }

  return *&v6;
}

uint64_t specialized StackItemLayout.placeSubviews(in:proposal:subviews:cache:)(int *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, __int16 a7)
{
  if (a7 & 0x100) != 0 || (a7)
  {
    v8 = a4;
    v10 = a5;
  }

  else
  {
    *&a2 = CGRectOffset(*&a2, a4 / -3.0, 0.0);
    v8 = v7;
    v10 = v9;
  }

  v11 = a2;
  v13 = v8;
  v14 = v10;
  CGRectGetMidX(*&a2);
  v18.origin.x = v11;
  v18.origin.y = a3;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMidY(v18);
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    if (result)
    {
      result = 0;
      do
      {
        v17 = result + 1;
        LayoutSubviews.subscript.getter();
        static UnitPoint.center.getter();
        LayoutSubview.place(at:anchor:proposal:)();
        result = v17;
      }

      while (v16 != v17);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationTitleBinder and conformance NavigationTitleBinder()
{
  result = lazy protocol witness table cache variable for type NavigationTitleBinder and conformance NavigationTitleBinder;
  if (!lazy protocol witness table cache variable for type NavigationTitleBinder and conformance NavigationTitleBinder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationTitleBinder, &unk_1F0009F08, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationTitleBinder and conformance NavigationTitleBinder);
  }

  return result;
}

uint64_t outlined destroy of NavigationTitleStorage??(uint64_t a1)
{
  type metadata accessor for NavigationTitleStorage??(0, &lazy cache variable for type metadata for NavigationTitleStorage??, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of EnumeratedSequence<NavigationState.StackContent.Views.ViewsSequence<ModifiedContent<_VariadicView.Tree<_VStackLayout, _VariadicView_Children>, RootItemModifier>, StackItemModifier>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for (EquatableNavigationTitle?, EquatableNavigationTitle?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (EquatableNavigationTitle?, EquatableNavigationTitle?))
  {
    type metadata accessor for State<BarTransitionProgress>(255, &lazy cache variable for type metadata for EquatableNavigationTitle?, &unk_1F0009780, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (EquatableNavigationTitle?, EquatableNavigationTitle?));
    }
  }
}

uint64_t partial apply for closure #2 in NavigationTitleBinder.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  v5[0] = *(v0 + 64);
  *(v5 + 9) = *(v0 + 73);
  return v1(v4);
}

unint64_t lazy protocol witness table accessor for type ScrollStateActionBinding and conformance ScrollStateActionBinding()
{
  result = lazy protocol witness table cache variable for type ScrollStateActionBinding and conformance ScrollStateActionBinding;
  if (!lazy protocol witness table cache variable for type ScrollStateActionBinding and conformance ScrollStateActionBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollStateActionBinding, &unk_1F0009E68, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollStateActionBinding and conformance ScrollStateActionBinding);
  }

  return result;
}

void type metadata accessor for State<BarTransitionProgress>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ScrollStateActionBinding(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollStateActionBinding(uint64_t result, unsigned int a2, unsigned int a3)
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

double destroy for NavigationTitleBinder(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 - 1) >= 2)
  {
    if (v1)
    {
      outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
    }

    if (*(a1 + 64) != 1)
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationTitleBinder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 56);
  if (v4)
  {
    if (v4 == 1 || v4 == 2)
    {
      v5 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v5;
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      return a1;
    }

    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    outlined copy of Text.Storage(v7, v8, v9);
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v4;
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
  }

  v10 = *(a2 + 64);
  if (v10 != 1)
  {
  }

  *(a1 + 64) = v10;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

uint64_t assignWithCopy for NavigationTitleBinder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  if (v4 == 2)
  {
    if (v5)
    {
      if (v5 != 1 && v5 != 2)
      {
        goto LABEL_5;
      }

LABEL_12:
      v12 = *(a2 + 32);
      v13 = *(a2 + 48);
      v14 = *(a2 + 64);
      *(a1 + 73) = *(a2 + 73);
      *(a1 + 48) = v13;
      *(a1 + 64) = v14;
      *(a1 + 32) = v12;
      return a1;
    }

LABEL_13:
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    goto LABEL_14;
  }

  if (v5 == 2)
  {
    _sypSgWOhTm_7(a1 + 32, &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
LABEL_8:
    v10 = *(a2 + 48);
    v9 = *(a2 + 64);
    v11 = *(a2 + 32);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 48) = v10;
    *(a1 + 64) = v9;
    *(a1 + 32) = v11;
    return a1;
  }

  if (v4 != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of NavigationTitleStorage(a1 + 32);
      goto LABEL_8;
    }

    if (v4)
    {
      if (v5)
      {
        v18 = *(a2 + 32);
        v19 = *(a2 + 40);
        v20 = *(a2 + 48);
        outlined copy of Text.Storage(v18, v19, v20);
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v23 = *(a1 + 48);
        *(a1 + 32) = v18;
        *(a1 + 40) = v19;
        *(a1 + 48) = v20;
        outlined consume of Text.Storage(v21, v22, v23);
        *(a1 + 56) = *(a2 + 56);
      }

      else
      {
        outlined destroy of Text(a1 + 32);
        v27 = *(a2 + 48);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = v27;
      }
    }

    else if (v5)
    {
      v24 = *(a2 + 32);
      v25 = *(a2 + 40);
      v26 = *(a2 + 48);
      outlined copy of Text.Storage(v24, v25, v26);
      *(a1 + 32) = v24;
      *(a1 + 40) = v25;
      *(a1 + 48) = v26;
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      v28 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v28;
    }

    v29 = (a1 + 64);
    v30 = *(a2 + 64);
    if (*(a1 + 64) == 1)
    {
      if (v30 != 1)
      {
        *v29 = v30;

        goto LABEL_35;
      }

      v31 = 1;
    }

    else
    {
      if (v30 != 1)
      {
        *v29 = v30;

        goto LABEL_35;
      }

      outlined destroy of Transaction(a1 + 64);
      v31 = *(a2 + 64);
    }

    *v29 = v31;
LABEL_35:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);

    *(a1 + 88) = *(a2 + 88);
    return a1;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  outlined copy of Text.Storage(v6, v7, v8);
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = *(a2 + 56);

LABEL_14:
  v16 = *(a2 + 64);
  if (v16 != 1)
  {
  }

  *(a1 + 64) = v16;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

_OWORD *assignWithTake for NavigationTitleBinder(_OWORD *result, uint64_t a2)
{
  *result = *a2;
  *(result + 2) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 7) = *(a2 + 28);
  v3 = *(result + 7);
  if (v3 == 2)
  {
    goto LABEL_2;
  }

  v5 = *(a2 + 56);
  if (v5 == 2)
  {
    v6 = result;
    _sypSgWOhTm_7((result + 2), &lazy cache variable for type metadata for NavigationTitleStorage?, &type metadata for NavigationTitleStorage);
LABEL_5:
    result = v6;
    v7 = *(a2 + 48);
    v6[2] = *(a2 + 32);
    v6[3] = v7;
    v6[4] = *(a2 + 64);
    *(v6 + 73) = *(a2 + 73);
    return result;
  }

  if (v3 == 1)
  {
LABEL_2:
    v4 = *(a2 + 48);
    result[2] = *(a2 + 32);
    result[3] = v4;
    result[4] = *(a2 + 64);
    *(result + 73) = *(a2 + 73);
    return result;
  }

  if (v5 == 1)
  {
    v6 = result;
    outlined destroy of NavigationTitleStorage((result + 2));
    goto LABEL_5;
  }

  if (v3)
  {
    if (v5)
    {
      v8 = *(a2 + 48);
      v10 = *(result + 4);
      v9 = *(result + 5);
      v11 = *(result + 48);
      result[2] = *(a2 + 32);
      *(result + 48) = v8;
      v12 = result;
      outlined consume of Text.Storage(v10, v9, v11);
      *(v12 + 7) = v5;

      result = v12;
    }

    else
    {
      v14 = result;
      outlined destroy of Text((result + 2));
      result = v14;
      v15 = *(a2 + 48);
      v14[2] = *(a2 + 32);
      v14[3] = v15;
    }
  }

  else
  {
    v13 = *(a2 + 48);
    result[2] = *(a2 + 32);
    result[3] = v13;
  }

  v16 = result + 4;
  v17 = *(a2 + 64);
  if (*(result + 8) == 1)
  {
    if (v17 == 1)
    {
      *v16 = 1;
    }

    else
    {
      *v16 = v17;
    }
  }

  else
  {
    v18 = result;
    if (v17 == 1)
    {
      outlined destroy of Transaction((result + 4));
      *v16 = 1;
    }

    else
    {
      *v16 = v17;
    }

    result = v18;
  }

  *(result + 72) = *(a2 + 72);
  *(result + 10) = *(a2 + 80);
  v19 = result;

  result = v19;
  *(v19 + 88) = *(a2 + 88);
  return result;
}

uint64_t getEnumTagSinglePayload for NavigationTitleBinder(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 89))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationTitleBinder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

void ScrollViewNode.scrollableDirections(includeAlwaysBounceOptions:)(char a1@<W0>, _BYTE *a2@<X8>)
{
  swift_beginAccess();
  v6 = *(v2 + 64);
  v5 = *(v2 + 72);
  v7 = *(v2 + 336);
  v8 = *(v2 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v10 = v7 - v9;
  CGSize.inset(by:)();
  v12 = v8 - v11;
  if (v10 >= 0.0)
  {
    v14 = v10 - v6;
    if (v12 >= 0.0)
    {
LABEL_9:
      if (v14 <= 0.5)
      {
        v15 = 0;
LABEL_13:
        if (v6 <= 0.5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v13 = v12;
LABEL_11:
      v15 = 1;
      v12 = v13;
      goto LABEL_13;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0 - v6;
    if (v12 >= 0.0)
    {
      goto LABEL_9;
    }
  }

  if (v14 > 0.5)
  {
    goto LABEL_11;
  }

  v15 = 0;
  if (v6 > 0.5)
  {
    v12 = 0.0;
LABEL_14:
    v15 |= 2u;
LABEL_15:
    if (v12 - v5 <= 0.5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (0.0 - v5 > 0.5)
  {
LABEL_16:
    v15 |= 4u;
  }

LABEL_17:
  if (v5 > 0.5)
  {
    v16 = v15 | 8;
  }

  else
  {
    v16 = v15;
  }

  if (swift_weakLoadStrong())
  {
    ScrollViewNode.scrollableDirections(includeAlwaysBounceOptions:)(0, &v24);

    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  v18 = ~v17 & 3;
  if ((v18 & ~v16) == 0)
  {
    v18 = 0;
  }

  v19 = v18 | v16;
  if ((v16 & 3) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  v21 = ~v17 & 0xC;
  if ((v21 & ~v20) == 0)
  {
    v21 = 0;
  }

  v22 = v21 | v20;
  if ((v20 & 0xC) == 0)
  {
    v22 = v20;
  }

  if (a1)
  {
    if ((((~v22 & 3) != 0) & *(v2 + 249)) != 0)
    {
      v23 = v22 | 3;
    }

    else
    {
      v23 = v22;
    }

    if ((*(v2 + 248) & ((~v23 & 0xC) != 0)) != 0)
    {
      LOBYTE(v22) = v23 | 0xC;
    }

    else
    {
      LOBYTE(v22) = v23;
    }
  }

  *a2 = v22;
}

uint64_t static _ScrollView.Main._makeView(view:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v57 = a5;
  v91 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = a2[3];
  v87 = a2[2];
  v88 = v8;
  v89 = a2[4];
  v90 = *(a2 + 20);
  v9 = a2[1];
  v85 = *a2;
  v86 = v9;
  type metadata accessor for ScrollViewNode();
  v10 = Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (!v12)
    {
      swift_unknownObjectRelease();
      Strong = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = AGCreateWeakAttribute();
  swift_allocObject();
  v14 = specialized ScrollViewNode.init(host:attribute:)(Strong, v12, v13);
  swift_unknownObjectRelease();
  *&v79 = v14;
  AGGraphSetValue();
  v15 = DWORD2(v89);
  LODWORD(v79) = v7;
  type metadata accessor for _ScrollView.Main(255, a3, a4, v16);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v59 = a3;
  closure #1 in static _ScrollView.Main._makeView(view:inputs:)(1, a3, a4, v17);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v58 = a4;
  LODWORD(v56) = *MEMORY[0x1E698D3F8];
  *&v79 = __PAIR64__(OffsetAttribute2, v15);
  DWORD2(v79) = v56;
  *&v80 = v14;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ContentSize and conformance ContentSize();

  v60 = Attribute.init<A>(body:value:flags:update:)();

  LODWORD(v79) = v7;
  v19 = _GraphValue.value.getter();
  v20 = DWORD2(v85);
  v55 = v7;
  v21 = v86;
  v22 = swift_beginAccess();
  v23 = *(v21 + 16);
  *&v79 = __PAIR64__(v19, v10);
  *(&v79 + 1) = __PAIR64__(v23, v15);
  LODWORD(v80) = v20;
  *(&v80 + 4) = vrev64_s32(*(&v21 + 8));
  BYTE12(v80) = 0;
  *(&v80 + 13) = v62;
  HIBYTE(v80) = v63;
  v81 = 0uLL;
  LOWORD(v82) = 1;
  MEMORY[0x1EEE9AC00](v22);
  v52 = type metadata accessor for ScrollViewUpdate(0, a3, a4, v24);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScrollViewUpdate<A>, v52);
  type metadata accessor for Attribute<_ScrollViewProxy>(0, &lazy cache variable for type metadata for Attribute<_ScrollViewProxy>, &type metadata for _ScrollViewProxy, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v79, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_26, v51, v52, MEMORY[0x1E69E73E0], v25, MEMORY[0x1E69E7410], v26);
  v27 = LODWORD(v77[0]);
  _GraphValue.init(_:)();
  type metadata accessor for Attribute<_ScrollViewProxy>(0, &lazy cache variable for type metadata for _GraphValue<_ScrollViewProxy>, &type metadata for _ScrollViewProxy, MEMORY[0x1E697DDB8]);
  v54 = _GraphValue.value.getter();
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v76 = v90;
  v71 = v85;
  v72 = v86;
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  swift_beginAccess();

  outlined init with copy of _ViewInputs(&v85, v77);
  v28 = CachedEnvironment.animatedSize(for:)();
  swift_endAccess();
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  v29 = _ViewInputs.animatedPosition()();
  v30 = HIDWORD(v88);
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v84 = v90;
  v79 = v85;
  v80 = v86;
  v31 = _ViewInputs.weakScrollable.getter();
  *&v79 = __PAIR64__(v29, v28);
  *(&v79 + 1) = __PAIR64__(v60, v30);
  v32 = v60;
  *&v80 = v31;
  DWORD2(v80) = v56;
  MEMORY[0x1EEE9AC00](v31);
  v34 = type metadata accessor for _ScrollView.Main.ScrollableProvider(0, v59, v58, v33);
  v52 = v34;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableProvider, v34);
  type metadata accessor for Attribute<Scrollable>(0, &lazy cache variable for type metadata for Attribute<Scrollable>, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v79, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_36, v51, v34, MEMORY[0x1E69E73E0], v35, MEMORY[0x1E69E7410], v36);
  v37 = v77[0];
  _ViewInputs.scrollable.setter();
  v56 = v27;
  *&v79 = v27 | (v32 << 32);
  BYTE8(v79) = 0;
  lazy protocol witness table accessor for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput();
  PropertyList.subscript.setter();
  LODWORD(v79) = *(v21 + 16);
  *(&v79 + 1) = v14;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewEnvironment and conformance ScrollViewEnvironment();

  Attribute.init<A>(body:value:flags:update:)();

  _GraphInputs.environment.setter();
  DWORD1(v73) |= 2u;
  PreferenceKeys.remove(_:)();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture>(0);
  LODWORD(v79) = v54;
  *(&v79 + 1) = v14;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollViewChildModifier and conformance ScrollViewChildModifier();

  v38 = Attribute.init<A>(body:value:flags:update:)();

  v64[0] = v38;
  v77[2] = v73;
  v77[3] = v74;
  v77[4] = v75;
  v78 = v76;
  v77[0] = v71;
  v77[1] = v72;
  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  v39 = swift_allocObject();
  v41 = v58;
  v40 = v59;
  *(v39 + 16) = v59;
  *(v39 + 24) = v41;
  *(v39 + 32) = v55;
  outlined init with copy of _ViewInputs(v77, &v79);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, &protocol witness table for ScrollViewGesture);
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

  v81 = v67;
  v82 = v68;
  v83 = v69;
  v84 = v70;
  v79 = v65;
  v80 = v66;
  v42 = outlined destroy of _ViewInputs(&v79);
  MEMORY[0x1EEE9AC00](v42);
  v51[0] = v40;
  v51[1] = v41;
  v52 = v61;
  MEMORY[0x1EEE9AC00](v43);
  AGGraphMutateAttribute();
  v44 = v88;
  v45 = DWORD2(v88);
  *&v65 = v88;
  DWORD2(v65) = DWORD2(v88);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    LODWORD(v65) = v37;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for Attribute<Scrollable>(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v65) = 0;
    PreferencesOutputs.subscript.setter();
  }

  type metadata accessor for ScrollViewResponder(0);
  *(swift_allocObject() + 216) = v14;
  v67 = v87;
  v68 = v88;
  v69 = v89;
  v70 = v90;
  v65 = v85;
  v66 = v86;

  outlined init with copy of _ViewInputs(&v85, v64);
  DefaultLayoutViewResponder.init(inputs:)();
  *&v65 = v44;
  DWORD2(v65) = v45;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();

  *&v65 = v44;
  DWORD2(v65) = v45;
  MEMORY[0x1EEE9AC00](v46);
  LODWORD(v52) = v56;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  MEMORY[0x1EEE9AC00](v47);
  v52 = v61;
  MEMORY[0x1EEE9AC00](v48);
  AGGraphMutateAttribute();
  LOBYTE(v65) = 1;
  _ViewOutputs.layoutComputer.setter();

  v67 = v73;
  v68 = v74;
  v69 = v75;
  v70 = v76;
  v65 = v71;
  v66 = v72;
  result = outlined destroy of _ViewInputs(&v65);
  v50 = v57;
  *v57 = v61[0];
  v50[1] = v61[1];
  return result;
}

uint64_t closure #1 in static _ScrollView.Main._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + *(type metadata accessor for _ScrollView(0, a2, a3, a4) + 36);
  v12[2] = type metadata accessor for _ScrollView.Main(0, a2, a3, v7);
  v8 = MEMORY[0x1E697DA60];
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v6 + 40, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_28, v12, v8, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v12[5];
}

uint64_t closure #2 in static _ScrollView.Main._makeView(view:inputs:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v24 = a2[2];
  v25 = v7;
  v26 = a2[4];
  v27 = *(a2 + 20);
  v8 = a2[1];
  v22 = *a2;
  v23 = v8;
  type metadata accessor for _ScrollView.Main(255, a4, a5, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for _ScrollView(0, a4, a5, v9);
  AGGraphCreateOffsetAttribute2();
  v20 = a4;
  v21 = a5;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v14 = partial apply for closure #1 in Attribute.subscript.getter;
  KeyPath = swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Map();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v18);
  v10 = type metadata accessor for Attribute();

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&OffsetAttribute2, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v16, v18, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);

  _GraphValue.init(_:)();
  swift_getAssociatedConformanceWitness();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #3 in static _ScrollView.Main._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = PreferencesOutputs.subscript.getter();
  result = type metadata accessor for _ScrollView.Main.ScrollableProvider(0, a3, a4, v8);
  if ((v7 & 0x100000000) != 0)
  {
    v10 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v10 = v7;
  }

  *(a1 + 24) = v10;
  return result;
}

uint64_t implicit closure #1 in static _ScrollView.Main._makeView(view:inputs:)(uint64_t a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type ScrollViewResponderFilter and conformance ScrollViewResponderFilter();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t implicit closure #2 in static _ScrollView.Main._makeView(view:inputs:)(int a1)
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for Attribute<_ScrollViewProxy>(0, &lazy cache variable for type metadata for _ScrollViewProxy?, &type metadata for _ScrollViewProxy, MEMORY[0x1E69E6720]);
  type metadata accessor for Map<_ScrollViewProxy, _ScrollViewProxy?>(0);
  lazy protocol witness table accessor for type Map<_ScrollViewProxy, _ScrollViewProxy?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type Map<_ScrollViewProxy, _ScrollViewProxy?> and conformance Map<A, B>, type metadata accessor for Map<_ScrollViewProxy, _ScrollViewProxy?>, MEMORY[0x1E698D3A0]);
  return Attribute.init<A>(body:value:flags:update:)();
}

double closure #4 in implicit closure #2 in static _ScrollView.Main._makeView(view:inputs:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  *a2 = *a1;
  *(a2 + 8) = v2;

  return result;
}

_DWORD *_ScrollView.Main.ScrollableProvider.value.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v12 = HIDWORD(a1);
  v13 = HIDWORD(a2);
  v14 = HIDWORD(a3);
  v15 = type metadata accessor for _ScrollView.Main.ScrollableLayoutScrollable(0, a5, a6, a4);
  a7[3] = v15;
  a7[4] = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableLayoutScrollable, v15);
  result = swift_allocObject();
  *a7 = result;
  result[4] = v10;
  result[5] = v12;
  result[6] = v9;
  result[7] = v13;
  result[8] = v8;
  result[9] = v14;
  result[10] = v7;
  return result;
}

double _ScrollView.Main.ScrollableLayoutScrollable.parent.getter@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0]);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    outlined init with copy of _Benchmark(WeakValue, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double _ScrollView.Main.ScrollableLayoutScrollable.children.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*MEMORY[0x1E698D3F8] != a4)
  {
    type metadata accessor for Attribute<Scrollable>(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, MEMORY[0x1E697DAE0], MEMORY[0x1E69E62F8]);
    AGGraphGetValue();
  }

  return result;
}

uint64_t protocol witness for Scrollable.scroll<A>(to:) in conformance _ScrollView<A>.Main.ScrollableLayoutScrollable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableLayoutScrollable, a4);

  return MEMORY[0x1EEDE1050](a1, a4, a2, WitnessTable, a3);
}

uint64_t protocol witness for Scrollable.setContentTarget(_:) in conformance _ScrollView<A>.Main.ScrollableLayoutScrollable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableLayoutScrollable, a3);

  return MEMORY[0x1EEDE1040](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Scrollable.adjustContentOffset(by:reason:) in conformance _ScrollView<A>.Main.ScrollableLayoutScrollable(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableLayoutScrollable);
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return MEMORY[0x1EEDE1048](a1, a2, WitnessTable, v9, v10);
}

uint64_t protocol witness for Scrollable.mapFirstChild<A, B>(ofType:body:) in conformance _ScrollView<A>.Main.ScrollableLayoutScrollable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>.Main.ScrollableLayoutScrollable, a6);

  return MEMORY[0x1EEDE1038](a1, a2, a3, a6, a4, a5, WitnessTable);
}

void ScrollViewUpdate.updateValue()(uint64_t a1)
{
  v2 = v1;
  v115 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v91 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v5;
  v6 = *(v5 + 24);
  v94 = type metadata accessor for _ScrollView(0, v3, v6, v7);
  v97 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v86 - v8;
  v101 = v6;
  v102 = v3;
  v100 = type metadata accessor for _ScrollView.Main(255, v3, v6, v9);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v86 - v14;
  type metadata accessor for ScrollViewNode();
  Value = AGGraphGetValue();
  v18 = v17;
  v19 = *Value;

  v20 = AGGraphGetValue();
  v21 = ScrollViewNode.update(resetSeed:)(*v20 >> 1);
  v103 = v2;
  v22 = AGGraphGetValue();
  v96 = v23;
  if (v23)
  {
    v25 = v22[1];
    v110 = *v22;
    v111 = v25;
    *(v19 + 352) = MEMORY[0x18D00B390]();
    *(v19 + 360) = v26;
    ++*(v19 + 408);
    v24 = 1;
  }

  else
  {
    v24 = v21 | v18;
  }

  LODWORD(v107) = v24;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v100;
  v29 = AGGraphGetValue();
  v31 = v30;
  v32 = *(v28 - 8);
  (*(v32 + 16))(v15, v29, v28);
  v15[v27] = v31 & 1;
  v34 = v105 + 16;
  v33 = *(v105 + 16);
  v33(v12, v15, TupleTypeMetadata2);
  v35 = v12[*(TupleTypeMetadata2 + 48)];
  v99 = *(v32 + 8);
  v36 = v99(v12, v28);
  v106 = TupleTypeMetadata2;
  v104 = v15;
  if (v35 == 1)
  {
    v33(v12, v15, TupleTypeMetadata2);
    v37 = *(v97 + 2);
    v88 = v97 + 16;
    v107 = v37;
    v38 = v92;
    v39 = v94;
    v37(v92, v12, v94);
    v99(v12, v28);
    v89 = v33;
    v40 = v93;
    v41 = v91;
    v42 = v102;
    (*(v93 + 16))(v91, v38, v102);
    v90 = v34;
    v98 = v12;
    v43 = *(v97 + 1);
    v43(v38, v39);
    v97 = implicit closure #1 in ScrollViewUpdate.updateValue()(v41, v42, v101);
    v87 = v44;
    (*(v40 + 8))(v41, v42);
    v33 = v89;
    v45 = v87;
    *(v19 + 368) = v97;
    *(v19 + 376) = v45;
    v28 = v100;

    v33(v98, v104, v106);
    v107(v38, v98, v39);
    v99(v98, v28);
    outlined init with copy of _ScrollViewConfig(&v38[*(v39 + 36)], &v110);
    v43(v38, v39);
    v12 = v98;
    swift_beginAccess();
    outlined assign with take of _ScrollViewConfig(&v110, v19 + 168);
    v36 = swift_endAccess();
    ++*(v19 + 408);
    LODWORD(v107) = 1;
  }

  if ((v96 & 1) != 0 || (v46 = v106, v33(v12, v104, v106), LODWORD(v46) = v12[*(v46 + 48)], v36 = v99(v12, v28), v46 == 1))
  {
    ScrollViewNode.clampContentOffset()(v36);
  }

  v47 = v103;
  v48 = *(v103 + 28);
  v49 = AGGraphGetValue();
  v51 = *v49;
  v50 = v49[1];
  v100 = v50;
  if (v52)
  {
    *&v110 = v51;
    *(&v110 + 1) = v50;

    v53 = ScrollViewNode.update(environment:)(&v110);
    LODWORD(v107) = v53 | v107;
  }

  else
  {
  }

  swift_beginAccess();
  if (*(v19 + 200) == 1)
  {
    v55 = *(v19 + 184);
    v54 = *(v19 + 192);
    v56 = *(v19 + 168);
    v57 = *(v19 + 176);

    if (v48 & 1) == 0 && (dispatch thunk of AnyLocation.wasRead.getter())
    {
      MEMORY[0x18D009810](0xD000000000000137, 0x800000018CD5A020);
      *(v47 + 28) = 1;
    }

    v58.n128_u64[0] = v55;
    v59 = ScrollViewUpdate.updateBindingOffset(_:)(v56, v57, v58, v54);
    v61 = v60;
    v63 = v62;
    v64 = v59;

    v65 = v61;
    v66 = v63;
    v67 = v64;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    *(v47 + 32) = 0;
    *(v47 + 40) = 0;
    *(v47 + 48) = 1;
    v67 = 2;
  }

  swift_beginAccess();
  v68 = *(v19 + 128);
  v112 = *(v19 + 112);
  v113[0] = v68;
  *(v113 + 15) = *(v19 + 143);
  v69 = *(v19 + 96);
  v110 = *(v19 + 80);
  v111 = v69;
  outlined init with copy of ScrollViewBehavior.Phase(&v110, v114);
  AGGraphClearUpdate();
  closure #1 in ScrollViewUpdate.updateValue()(v102, v101, v114, v70);
  AGGraphSetUpdate();
  if (v67 == 2)
  {
    v71 = 0;
  }

  else
  {
    v71 = v65;
  }

  if (v67 == 2)
  {
    v72 = 0;
  }

  else
  {
    v72 = v66;
  }

  if (v67 == 2)
  {
    v73 = 2;
  }

  else
  {
    v73 = v67 & 1;
  }

  ScrollViewNode.updateContentOffset(in:bindingOffset:)(v114[0], v71, v72, v73);
  if (v74)
  {
    ++*(v19 + 408);
    LODWORD(v107) = 1;
  }

  v75 = v106;
  v76 = v104;
  if (((*(v19 + 146) << 16) & 0xC00000) != 0x400000)
  {
    outlined destroy of ScrollViewBehavior.Phase(&v110);
    goto LABEL_41;
  }

  v77 = *AGGraphGetValue();
  if ((v78 & 1) == 0)
  {
    outlined destroy of ScrollViewBehavior.Phase(&v110);
LABEL_36:
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_41;
    }

    v80 = v76;
    goto LABEL_38;
  }

  v79 = (BYTE2(v113[1]) << 16) & 0xC00000;
  outlined destroy of ScrollViewBehavior.Phase(&v110);
  if (v79 != 0x400000)
  {
    goto LABEL_36;
  }

  *v114 = v77;
  ScrollViewNode.iterateDeceleration(at:)(v114);
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_44:
    v85 = *(v19 + 408) + *(v19 + 148);
    v108 = v19;
    v109 = v85;

    AGGraphSetOutputValue();

    (*(v105 + 8))(v76, v75);
    goto LABEL_45;
  }

  v80 = v76;
  LODWORD(v107) = 1;
LABEL_38:
  v81 = *(v19 + 24);
  ObjectType = swift_getObjectType();
  v83 = (*(*(v81 + 8) + 8))(ObjectType);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v84 = *(v83 + 376);
  if (v77 < v84)
  {
    v84 = v77;
  }

  *(v83 + 376) = v84;

  v76 = v80;
LABEL_41:
  if ((v107 & 1) != 0 || !AGGraphGetOutputValue())
  {
    goto LABEL_44;
  }

  (*(v105 + 8))(v76, v75);

LABEL_45:
}

Swift::Bool __swiftcall ScrollViewNode.update(resetSeed:)(Swift::UInt32 resetSeed)
{
  v4 = *(v1 + 164);
  if (v4 != resetSeed)
  {
    v5 = v1;
    *(v1 + 164) = resetSeed;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    swift_beginAccess();
    *(v1 + 160) = 0;
    *(v1 + 64) = 0;
    *(v1 + 72) = 0;
    swift_beginAccess();
    v6 = *(v1 + 152);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = (v6 + 56);
      do
      {
        v9 = *(v8 - 3);
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v13 = *(v9 + 148);
        swift_unownedRetain();

        if (v13 == v12)
        {
          swift_unownedRetainStrong();
          v14 = *(v9 + 336);
          v15 = *(v9 + 344);
          swift_beginAccess();
          CGSize.inset(by:)();
          v17 = v14 - v16;
          CGSize.inset(by:)();
          if (v17 < 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = v17;
          }

          if (v15 - v18 < 0.0)
          {
            v20 = 0.0;
          }

          else
          {
            v20 = v15 - v18;
          }

          v21 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v20, *&v19));
          v2 &= 1u;
          *&v38[0] = v10;
          *(&v38[0] + 1) = v11;
          v38[1] = v21;
          v39 = v2;
          ScrollViewNode.commitScrollTransaction(_:value:)(v38, v21.x, v21.y);
        }

        v8 += 8;
        swift_unownedRelease();
        --v7;
      }

      while (v7);
    }

    *&v37[15] = *(v5 + 143);
    v22 = *(v5 + 128);
    v36 = *(v5 + 112);
    *v37 = v22;
    v23 = *(v5 + 96);
    v35[0] = *(v5 + 80);
    v35[1] = v23;
    if (((v37[18] << 16) & 0xC00000) == 0x400000)
    {
      v24 = *(&v36 + 1);
      if (*(&v36 + 1))
      {
        v25 = *v37;
        v26 = swift_allocObject();
        *(v26 + 16) = *(&v36 + 1);
        *(v26 + 24) = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        *(v27 + 24) = v26;
        v28 = swift_allocObject();
        *(v28 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
        *(v28 + 24) = v27;
        v29 = swift_allocObject();
        *(v29 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
        *(v29 + 24) = v28;
        *(v29 + 32) = 0;
        outlined init with copy of ScrollViewBehavior.Phase(v35, v33);
        outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v24, v25);

        static Update.enqueueAction(reason:_:)();

        outlined destroy of ScrollViewBehavior.Phase(v35);
      }
    }

    v30 = *(v5 + 128);
    v33[2] = *(v5 + 112);
    v34[0] = v30;
    *(v34 + 15) = *(v5 + 143);
    v31 = *(v5 + 96);
    v33[0] = *(v5 + 80);
    v33[1] = v31;
    *(v5 + 80) = 0u;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 128) = 0u;
    *(v5 + 146) = 0x80;
    *(v5 + 144) = 0;
    ++*(v5 + 148);
    *(v5 + 152) = MEMORY[0x1E69E7CC0];
    swift_endAccess();
    outlined destroy of ScrollViewBehavior.Phase(v33);
  }

  return v4 != resetSeed;
}

uint64_t (*implicit closure #1 in ScrollViewUpdate.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in ScrollViewUpdate.updateValue();
}

void ScrollViewNode.clampContentOffset()(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[43];
  static CGSize.invalidValue.getter();
  if (v2 != v5 || v3 != v4)
  {
    v7 = v1[42];
    v8 = v1[43];
    swift_beginAccess();
    CGSize.inset(by:)();
    v10 = v7 - v9;
    CGSize.inset(by:)();
    if (v10 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v10;
    }

    if (v8 - v11 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v8 - v11;
    }

    v14 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v13, *&v12));
    if (v14.x != v1[6] || v14.y != v1[7])
    {
      ScrollViewNode.bindingSafeOffset(_:)();
      v18 = v14;
      v19 = v16;
      v20 = v17;
      v21 = 0;
      ScrollViewNode.commitScrollTransaction(_:value:)(&v18, v16, v17);
    }
  }
}

uint64_t ScrollViewNode.update(environment:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  EnvironmentValues.containingScrollView.getter(&v13);
  v5 = v13;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v5)
    {
      v7 = Strong;

      if (v7 == v5)
      {
        v8 = 0;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  else if (!v5)
  {

    v8 = 0;
    goto LABEL_9;
  }

  swift_weakAssign();
  v8 = 1;
LABEL_9:
  type metadata accessor for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey>, &type metadata for TopScrollIndicatorFollowsContentOffsetKey, &protocol witness table for TopScrollIndicatorFollowsContentOffsetKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey> and conformance EnvironmentPropertyKey<A>(v9);
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (v14 != *(v2 + 392))
  {
    *(v2 + 392) = v14;
    v8 = 1;
  }

  v14 = v3;
  v15 = v4;
  EnvironmentValues.pixelLength.getter();
  v11 = v10;

  if (*(v2 + 400) == v11)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    *(v2 + 400) = v11;
  }

  ++*(v2 + 408);
  return 1;
}

BOOL ScrollViewUpdate.updateBindingOffset(_:)(uint64_t a1, uint64_t a2, __n128 a3, double a4)
{
  v5 = v4;
  type metadata accessor for ObservationCenter();
  static ObservationCenter.current.getter();
  type metadata accessor for (CGPoint, Bool)(0);
  v6 = ObservationCenter._withObservationStashed<A>(do:)();

  if (v10)
  {
    goto LABEL_2;
  }

  if (*(v5 + 49) != 1)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((*(v5 + 48) & 1) != 0 || v8 != *(v5 + 32))
  {
LABEL_2:
    result = 1;
  }

  else
  {
    result = v9 != *(v5 + 40);
  }

LABEL_8:
  *(v5 + 49) = v6 & 1;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  *(v5 + 48) = 0;
  return result;
}

double closure #1 in ScrollViewUpdate.updateValue()@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for ScrollViewUpdate(0, a2, a3, x3_0);
  *a4 = *AGGraphGetValue();

  return result;
}

void ScrollViewNode.updateContentOffset(in:bindingOffset:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if ((*(v4 + 160) & 1) == 0)
  {
    swift_beginAccess();
    if (*(v4 + 200))
    {
      if (a4 == 2)
      {
        __break(1u);
        return;
      }

      swift_beginAccess();
      *(v4 + 64) = *&a2;
      *(v4 + 72) = *&a3;
      v9 = a2;
      v10 = a3;
    }

    else
    {
      v12 = *(v4 + 168);
      v11 = *(v4 + 176);
      v10 = v11;
      v9 = v12;
      swift_beginAccess();
      *(v4 + 64) = v12;
      *(v4 + 72) = v11;
    }

    *(v4 + 48) = v9;
    *(v4 + 56) = v10;
    *(v4 + 160) = 1;
  }

  v13 = &v96;
  Transaction.subscript.getter(*(v4 + 40), &v101);
  v14 = v110;
  if (v110 >> 1 == 0xFFFFFFFF)
  {
    swift_beginAccess();
    v15 = *(v4 + 146);
    if (v15 > 0x3F)
    {
      if (a4 == 2)
      {
        return;
      }
    }

    else
    {
      LOBYTE(v13) = 0;
      if ((v15 & 1) == 0 || a4 == 2)
      {
        return;
      }
    }

    if ((a4 & 1) != 0 && (*(v4 + 48) != *&a2 || *(v4 + 56) != *&a3))
    {
      *(v4 + 48) = *&a2;
      *(v4 + 56) = *&a3;
      if (Transaction.disablesAnimations.getter() & 1) != 0 || (Transaction.subscript.getter(), !v113) || v113 == 1 && (Transaction.isContinuous.getter())
      {
        swift_beginAccess();
        if (*(v4 + 64) != *&a2 || *(v4 + 72) != *&a3)
        {
          swift_beginAccess();
          if (((*(v4 + 146) << 16) & 0xC00000) == 0x400000)
          {
            v89 = a2;
            v35 = *(v4 + 152);
            v36 = *(v35 + 16);
            if (v36)
            {
              v37 = (v35 + 56);
              do
              {
                v38 = *(v37 - 3);
                v39 = *(v37 - 2);
                v40 = *(v37 - 1);
                v41 = *v37;
                swift_unownedRetainStrong();
                swift_beginAccess();
                v42 = *(v38 + 148);
                swift_unownedRetain();

                if (v42 == v41)
                {
                  swift_unownedRetainStrong();
                  v43 = *(v38 + 336);
                  v44 = *(v38 + 344);
                  swift_beginAccess();
                  CGSize.inset(by:)();
                  v46 = v43 - v45;
                  CGSize.inset(by:)();
                  if (v46 < 0.0)
                  {
                    v48 = 0.0;
                  }

                  else
                  {
                    v48 = v46;
                  }

                  if (v44 - v47 < 0.0)
                  {
                    v49 = 0.0;
                  }

                  else
                  {
                    v49 = v44 - v47;
                  }

                  v50 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v49, *&v48));
                  v13 = (v13 & 1);
                  *&v113 = v39;
                  *(&v113 + 1) = v40;
                  v114 = v50;
                  v115 = v13;
                  ScrollViewNode.commitScrollTransaction(_:value:)(&v113, v50.x, v50.y);
                }

                v37 += 8;
                swift_unownedRelease();
                --v36;
              }

              while (v36);
            }

            *&v99[15] = *(v5 + 143);
            v75 = *(v5 + 128);
            v98 = *(v5 + 112);
            *v99 = v75;
            v76 = *(v5 + 96);
            v96 = *(v5 + 80);
            v97 = v76;
            if (((v99[18] << 16) & 0xC00000) == 0x400000)
            {
              v77 = *(&v98 + 1);
              if (*(&v98 + 1))
              {
                v78 = *v99;
                v79 = swift_allocObject();
                *(v79 + 16) = v77;
                *(v79 + 24) = v78;
                v80 = swift_allocObject();
                *(v80 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                *(v80 + 24) = v79;
                v81 = swift_allocObject();
                *(v81 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ());
                *(v81 + 24) = v80;
                v82 = swift_allocObject();
                *(v82 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
                *(v82 + 24) = v81;
                *(v82 + 32) = 0;
                outlined init with copy of ScrollViewBehavior.Phase(&v96, &v92);
                outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v77, v78);

                static Update.enqueueAction(reason:_:)();

                outlined destroy of ScrollViewBehavior.Phase(&v96);
              }
            }

            v83 = *(v5 + 128);
            v94 = *(v5 + 112);
            v95[0] = v83;
            *(v95 + 15) = *(v5 + 143);
            v84 = *(v5 + 96);
            v92 = *(v5 + 80);
            v93 = v84;
            outlined destroy of ScrollViewBehavior.Phase(&v92);
            *(v5 + 80) = 0u;
            *(v5 + 96) = 0u;
            *(v5 + 112) = 0u;
            *(v5 + 128) = 0u;
            *(v5 + 146) = 0x80;
            *(v5 + 144) = 0;
            v85 = *(v5 + 148);
            *(v5 + 148) = v85 + 1;

            *(v5 + 152) = MEMORY[0x1E69E7CC0];
            *(v5 + 148) = v85 + 2;
            a2 = v89;
          }

          swift_endAccess();
          *(v5 + 64) = *&a2;
          *(v5 + 72) = *&a3;
        }
      }

      else
      {
        swift_beginAccess();
        ScrollViewBehavior.updateDeceleration(node:target:velocity:completion:)(v4, a2, a3, 0, 0, 0, 1, 0, 0);
        swift_endAccess();
      }
    }
  }

  else
  {
    v16 = *&v101;
    v17 = *&v106;
    if ((v110 & 0x8000000000000000) != 0)
    {
      v51 = *&a2;
      v52 = v108;
      v53 = v109;
      v55 = v111;
      v54 = v112;
      v56 = *&v107;
      if (v51 == v106 && v107 == *&a3)
      {
        v57 = *&v101;
      }

      else
      {
        *&v57 = v51;
      }

      if (v51 == v106 && v107 == *&a3)
      {
        v58 = *(&v101 + 1);
      }

      else
      {
        v58 = a3;
      }

      if (a4 == 2)
      {
        v59 = v106;
      }

      else
      {
        v59 = v51;
      }

      if (a4 == 2)
      {
        v60 = *(&v101 + 1);
      }

      else
      {
        v56 = a3;
        v16 = v57;
        v60 = v58;
      }

      if (a4 == 2)
      {
        v61 = v102;
      }

      else
      {
        v61 = (v51 == v106 && v107 == *&a3) & v102;
      }

      *(v5 + 48) = v59;
      *(v5 + 56) = v56;
      swift_beginAccess();
      ScrollViewBehavior.updateDeceleration(node:target:velocity:completion:)(v5, v16, v60, v61 & 1, v52, v53, v14 & 1, v55, v54);
      swift_endAccess();
      outlined destroy of ScrollViewCommitInfo?(&v101, &lazy cache variable for type metadata for ScrollViewCommitInfo?, &type metadata for ScrollViewCommitInfo);
    }

    else
    {
      v91 = *(&v101 + 1);
      v18 = *&v101;
      v19 = v102 | ((v103 | ((v104 | (v105 << 16)) << 32)) << 8);
      swift_beginAccess();
      if (((*(v5 + 146) << 16) & 0xC00000) == 0x400000)
      {
        v86 = v19;
        v87 = a3;
        v88 = a2;
        v90 = *(v5 + 152);
        v20 = *(v90 + 16);
        if (v20)
        {
          v21 = (v90 + 56);
          do
          {
            v22 = *(v21 - 3);
            v24 = *(v21 - 2);
            v23 = *(v21 - 1);
            v25 = *v21;
            swift_unownedRetainStrong();
            swift_beginAccess();
            v26 = *(v22 + 148);
            swift_unownedRetain();

            if (v26 == v25)
            {
              swift_unownedRetainStrong();
              v27 = *(v22 + 336);
              v28 = *(v22 + 344);
              swift_beginAccess();
              CGSize.inset(by:)();
              v30 = v27 - v29;
              CGSize.inset(by:)();
              if (v30 < 0.0)
              {
                v32 = 0.0;
              }

              else
              {
                v32 = v30;
              }

              if (v28 - v31 < 0.0)
              {
                v33 = 0.0;
              }

              else
              {
                v33 = v28 - v31;
              }

              v34 = CGPoint.clamp(min:max:)(0, __PAIR128__(*&v33, *&v32));
              a3 &= 1u;
              *&v113 = v24;
              *(&v113 + 1) = v23;
              v114 = v34;
              v115 = a3;
              ScrollViewNode.commitScrollTransaction(_:value:)(&v113, v34.x, v34.y);
            }

            v21 += 8;
            swift_unownedRelease();
            --v20;
          }

          while (v20);
        }

        *&v99[15] = *(v5 + 143);
        v62 = *(v5 + 128);
        v98 = *(v5 + 112);
        *v99 = v62;
        v63 = *(v5 + 96);
        v96 = *(v5 + 80);
        v97 = v63;
        if (((v99[18] << 16) & 0xC00000) == 0x400000)
        {
          v64 = *(&v98 + 1);
          if (*(&v98 + 1))
          {
            v65 = *v99;
            v66 = swift_allocObject();
            *(v66 + 16) = v64;
            *(v66 + 24) = v65;
            v67 = swift_allocObject();
            *(v67 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v67 + 24) = v66;
            v68 = swift_allocObject();
            *(v68 + 16) = thunk for @escaping @callee_guaranteed (@in_guaranteed Bool) -> (@out ())partial apply;
            *(v68 + 24) = v67;
            v100 = 17;
            v69 = swift_allocObject();
            *(v69 + 16) = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()partial apply;
            *(v69 + 24) = v68;
            *(v69 + 32) = 0;
            outlined init with copy of ScrollViewBehavior.Phase(&v96, &v92);
            outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v64, v65);

            static Update.enqueueAction(reason:_:)();

            outlined destroy of ScrollViewBehavior.Phase(&v96);
          }
        }

        v70 = *(v5 + 128);
        v94 = *(v5 + 112);
        v95[0] = v70;
        *(v95 + 15) = *(v5 + 143);
        v71 = *(v5 + 96);
        v92 = *(v5 + 80);
        v93 = v71;
        outlined destroy of ScrollViewBehavior.Phase(&v92);
        *(v5 + 80) = 0u;
        *(v5 + 96) = 0u;
        *(v5 + 112) = 0u;
        *(v5 + 128) = 0u;
        *(v5 + 146) = 0x80;
        *(v5 + 144) = 0;
        v72 = *(v5 + 148);
        *(v5 + 148) = v72 + 1;

        *(v5 + 152) = MEMORY[0x1E69E7CC0];
        *(v5 + 148) = v72 + 2;
        a3 = v87;
        a2 = v88;
        v18 = *&v16;
        v19 = v86;
      }

      swift_endAccess();
      if (a4 == 2)
      {
        v73 = v19;
      }

      else
      {
        v73 = a2;
      }

      if (a4 == 2)
      {
        v74 = v17;
      }

      else
      {
        v74 = a3;
      }

      *(v5 + 48) = v73;
      *(v5 + 56) = v74;
      swift_beginAccess();
      if (*(v5 + 64) != v18 || *(v5 + 72) != v91)
      {
        *(v5 + 64) = *&v16;
        *(v5 + 72) = v91;
      }
    }
  }
}

void ScrollViewNode.iterateDeceleration(at:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  if (((*(v1 + 146) << 16) & 0xC00000) == 0x400000)
  {
    v8 = v3;
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);
    swift_beginAccess();
    swift_beginAccess();
    ScrollViewBehavior.iterateDeceleration(node:time:offset:estimatedTarget:)(v1, &v8, (v1 + 64), v4, v5, 0);
    v7 = v6;
    swift_endAccess();
    swift_endAccess();
    if (v7)
    {
      *(v2 + 64) = *(v2 + 48);
    }
  }
}

double ScrollViewEnvironment.value.getter@<D0>(uint64_t *a3@<X8>)
{
  Value = AGGraphGetValue();
  v5 = Value[1];
  *a3 = *Value;
  a3[1] = v5;
  type metadata accessor for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollViewKey>, &type metadata for ScrollViewKey, &protocol witness table for ScrollViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScrollViewKey> and conformance EnvironmentPropertyKey<A>();
  swift_retain_n();
  swift_retain_n();

  PropertyList.subscript.setter();
  if (v5)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void protocol witness for static Rule.initialValue.getter in conformance ScrollViewChildModifier(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

double protocol witness for Rule.value.getter in conformance ScrollViewChildModifier@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  Value = AGGraphGetValue();
  v5 = *Value;
  v6 = *(Value + 8);
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

  return result;
}

uint64_t static ScrollViewGeometry._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v33 = a2[2];
  v34 = v4;
  v35 = a2[4];
  v36 = *(a2 + 20);
  v5 = a2[1];
  v31 = *a2;
  v32 = v5;
  lazy protocol witness table accessor for type _ViewInputs.ContainingScrollViewInput and conformance _ViewInputs.ContainingScrollViewInput();
  PropertyList.subscript.getter();
  if (BYTE8(v25))
  {
    __break(1u);
  }

  v6 = v25;
  v17 = v33;
  v18 = v34;
  v19 = v35;
  v20 = v36;
  v15 = v31;
  v16 = v32;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  outlined init with copy of _ViewInputs(&v31, v23);
  LODWORD(v25) = _ViewInputs.position.getter();
  DWORD1(v25) = v6;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for CGPoint(0);
  lazy protocol witness table accessor for type ContentOffset and conformance ContentOffset();
  Attribute.init<A>(body:value:flags:update:)();
  _ViewInputs.position.setter();
  _ViewInputs.size.setter();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, &v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v25 = v15;
  v26 = v16;
  return outlined destroy of _ViewInputs(&v25);
}

double ContentOffset.value.getter(unint64_t a1)
{
  v1 = *AGGraphGetValue();
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *AGGraphGetValue();
  swift_beginAccess();
  v4 = v2 - *(v3 + 216);
  type metadata accessor for CGPoint(0);
  return *AGGraphGetValue() - v4;
}

double ContentSize.value.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  AGGraphGetValue();
  MEMORY[0x18D00B390]();
  AGGraphGetValue();
  CGSize.inset(by:)();
  _ProposedSize.init(_:)();
  if (*MEMORY[0x1E698D3F8] == v5)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  v6 = LayoutComputer.sizeThatFits(_:)();
  if (*(a3 + 336) != v7 || *(a3 + 344) != v8)
  {
    *(a3 + 336) = v7;
    *(a3 + 344) = v8;
    ++*(a3 + 408);
    ScrollViewNode.clampContentOffset()(v6);
  }

  ViewSize.init(_:proposal:)();

  return result;
}

uint64_t Transaction.subscript.getter@<X0>(int a1@<W0>, _OWORD *a3@<X8>)
{
  Transaction.subscript.getter();
  if (*(v28 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = (*(v28 + 56) + 80 * v5);
    v23 = *v7;
    v9 = v7[3];
    v8 = v7[4];
    v10 = v7[2];
    v24 = v7[1];
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v20 = v24;
    v21 = v23;
    v18 = v9;
    v19 = v10;
    v17 = v8;
    outlined init with copy of ScrollViewCommitInfo(&v23, v22);

    v13 = v17;
    v12 = v18;
    v15 = v19;
    v14 = v20;
    v16 = v21;
  }

  else
  {

    v12 = xmmword_18CD647F0;
    v16 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v13 = 0uLL;
  }

  *a3 = v16;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v12;
  a3[4] = v13;
  return result;
}

void ScrollViewNode.bindingSafeOffset(_:)()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  swift_beginAccess();
  CGSize.inset(by:)();
  v4 = v1 - v3;
  CGSize.inset(by:)();
  if (v4 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  if (v2 - v5 < 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2 - v5;
  }

  CGPoint.clamp(min:max:)(0, __PAIR128__(*&v7, *&v6));
}

void ScrollViewNode.commitScrollTransaction(_:value:)(_OWORD *a1, double a2, double a3)
{
  swift_beginAccess();
  if (*(v3 + 200) == 1)
  {
    v8 = *(v3 + 184);
    v7 = *(v3 + 192);
    v9 = *(v3 + 176);
    v22 = *(v3 + 168);
    v21[0] = v22;
    v21[1] = v9;
    v21[2] = v8;
    v21[3] = v7;
    _sSay7SwiftUI13ViewResponderCGMaTm_5(0, &lazy cache variable for type metadata for Binding<CGPoint>, type metadata accessor for CGPoint, MEMORY[0x1E6981948]);
    v11 = v10;

    MEMORY[0x18D00ACC0](v20, v11);
    if (v20[0] != a2 || v20[1] != a3)
    {
      v16 = *(v3 + 40);
      outlined init with copy of ScrollViewCommitInfo(a1, v21);
      Transaction.subscript.getter();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20[0] = *v21;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v16, isUniquelyReferenced_nonNull_native);
      Transaction.subscript.setter();
      LOBYTE(v21[0]) = 17;
      v18 = v22;
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v9;
      *(v19 + 32) = v8;
      *(v19 + 40) = v7;
      *(v19 + 48) = a2;
      *(v19 + 56) = a3;

      static Update.enqueueAction(reason:_:)();

      goto LABEL_8;
    }
  }

  v20[0] = 0.0;
  v12 = *(v3 + 40);
  outlined init with copy of ScrollViewCommitInfo(a1, v21);
  Transaction.subscript.getter();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v22 = v21[0];
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v12, v13);
  Transaction.subscript.setter();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(*(v14 + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    LOBYTE(v22) = 1;
    default argument 1 of GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
    GraphHost.asyncTransaction<A>(_:id:invalidating:style:mayDeferUpdate:)();
  }

LABEL_8:
}

double ScrollViewNode.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  outlined consume of ScrollViewBehavior.Phase(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144) | (*(v0 + 146) << 16));

  outlined destroy of _ScrollViewConfig(v0 + 168);

  swift_weakDestroy();

  swift_deallocClassInstance();
  return result;
}

Swift::Int _ScrollViewAnimationMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

double (*Transaction._scrollViewAnimates.modify(void *a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  Transaction.subscript.getter();
  return Transaction._scrollViewAnimates.modify;
}

double Transaction._scrollViewAnimates.modify(uint64_t a1, double a2)
{
  *(a1 + 9) = *(a1 + 8);
  Transaction.subscript.setter();
  return result;
}

double protocol witness for static TransactionKey.defaultValue.getter in conformance Transaction.ScrollInfoKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Transaction.ScrollInfoKey.defaultValue;

  return result;
}

uint64_t ScrollViewGesture.gestureMask.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  swift_beginAccess();
  if (*(v1 + 297) != 1)
  {
    return 1;
  }

  outlined init with copy of _Benchmark(v1 + 256, v10);
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = v1;
  v9 = v2;
  v5 = *(v4 + 16);

  v6 = v5(&v8, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v6;
}

void *ScrollViewGesture.gesture.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  swift_beginAccess();
  outlined init with copy of _Benchmark(v3 + 256, v13);
  v5 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v9 = v3;
  v10 = v4;
  swift_retain_n();
  _ScrollViewGestureProvider.gesture(proxy:)(&v9, v5, &v11);

  v6 = v11;
  v7 = v12;

  __swift_destroy_boxed_opaque_existential_1(v13);

  v13[0] = v3;
  result = AnyHashable.init<A>(_:)();
  *(a1 + 72) = 0;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

double closure #1 in ScrollViewGesture.dispatch(phase:state:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(a2 + 16);
    v12[0] = *a2;
    v12[1] = v5;
    v12[2] = *(a2 + 32);
    v13 = *(a2 + 48);
    v6 = Strong;
    swift_beginAccess();
    ScrollViewBehavior.dispatchPhase(_:node:)(v12, v6, v7, v8, v9, v10, v11);
    swift_endAccess();
  }

  return result;
}

double (*protocol witness for GestureCallbacks.dispatch(phase:state:) in conformance ScrollViewGesture(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = *(a1 + 16);
  *(v3 + 24) = *a1;
  *(v3 + 40) = v4;
  *(v3 + 56) = *(a1 + 32);
  *(v3 + 72) = *(a1 + 48);
  return closure #1 in ScrollViewGesture.dispatch(phase:state:)partial apply;
}

double (*protocol witness for GestureCallbacks.cancel(state:) in conformance ScrollViewGesture())()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 3;
  return partial apply for closure #1 in ScrollViewGesture.dispatch(phase:state:);
}

uint64_t ScrollViewResponder.bindEvent(_:)(uint64_t a1)
{
  type metadata accessor for DefaultLayoutViewResponder();
  v2 = method lookup function for ResponderNode();
  result = v2(a1);
  if (!result)
  {
    outlined init with copy of _Benchmark(a1, &v12);
    PanEvent.init(_:)();
    v30 = v20[0];
    v31 = v20[1];
    v32 = v20[2];
    v4 = v21;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    v29 = v25;
    if (v21 == 1)
    {
      return 0;
    }

    ScrollViewNode.scrollableDirections(includeAlwaysBounceOptions:)(1, &v12);
    v5 = v12;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v16 = v26;
    v15 = v4;
    v17 = v27;
    v18 = v28;
    v19 = v29;
    PanEvent.translation.getter();
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v16 = v26;
    v7 = v6 == 0.0 ? 0 : 3;
    v15 = v4;
    v17 = v27;
    v18 = v28;
    v19 = v29;
    PanEvent.translation.getter();
    v9 = v8;
    outlined destroy of ScrollViewCommitInfo?(v20, &lazy cache variable for type metadata for PanEvent?, MEMORY[0x1E6981CA8]);
    v10 = v7 | 0xC;
    if (v9 == 0.0)
    {
      v10 = v7;
    }

    if ((v10 & v5) == 0)
    {
      return 0;
    }

    else
    {
      result = MultiViewResponder.children.getter();
      if ((result & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x18D00E9C0](0, result);
        goto LABEL_12;
      }

      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(result + 32);

LABEL_12:

        return v11;
      }

      __break(1u);
    }
  }

  return result;
}

double ScrollViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

double closure #1 in ScrollViewResponderFilter.updateValue()(uint64_t *a1, uint64_t a2, __n128 a3)
{
  MultiViewResponder.children.setter();
  type metadata accessor for Attribute<_ScrollViewProxy>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_18CD69590;
  *(v5 + 32) = a2;
  *a1 = v5;

  return result;
}

double protocol witness for StatefulRule.updateValue() in conformance ScrollViewResponderFilter()
{
  type metadata accessor for (_:)();
  if (!AGGraphGetOutputValue())
  {

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t specialized ScrollViewNode.init(host:attribute:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = HIDWORD(a3);
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 146) = 0x80;
  *(v3 + 144) = 0;
  *(v3 + 148) = 0;
  *(v3 + 152) = MEMORY[0x1E69E7CC0];
  *(v3 + 160) = 0;
  *(v3 + 164) = 0u;
  *(v3 + 180) = 0u;
  *(v3 + 193) = 0;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0x3FEFEF9DB22D0E56;
  *(v3 + 248) = 0;
  *(v3 + 280) = &type metadata for EmptyGestureProvider;
  *(v3 + 288) = &protocol witness table for EmptyGestureProvider;
  *(v3 + 296) = 16843008;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  static CGSize.invalidValue.getter();
  *(v3 + 336) = v7;
  *(v3 + 344) = v8;
  static CGSize.invalidValue.getter();
  *(v3 + 352) = v9;
  *(v3 + 360) = v10;
  swift_weakInit();
  *(v3 + 392) = 0;
  *(v3 + 400) = 0;
  *(v3 + 408) = 0;
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  *(v3 + 32) = v4;
  *(v3 + 36) = v6;
  *(v3 + 368) = protocol witness for UIViewControllerRepresentable.sizeThatFits(_:uiViewController:context:) in conformance MulticolumnSplitViewRepresentable<A, B, C>;
  *(v3 + 376) = 0;
  v11 = static ScrollViewNode.nextUniqueId;
  *(v3 + 40) = static ScrollViewNode.nextUniqueId;
  static ScrollViewNode.nextUniqueId = v11 + 1;
  return v3;
}

unint64_t lazy protocol witness table accessor for type ContentSize and conformance ContentSize()
{
  result = lazy protocol witness table cache variable for type ContentSize and conformance ContentSize;
  if (!lazy protocol witness table cache variable for type ContentSize and conformance ContentSize)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentSize, &unk_1F000A2C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentSize and conformance ContentSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewEnvironment and conformance ScrollViewEnvironment()
{
  result = lazy protocol witness table cache variable for type ScrollViewEnvironment and conformance ScrollViewEnvironment;
  if (!lazy protocol witness table cache variable for type ScrollViewEnvironment and conformance ScrollViewEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewEnvironment, &unk_1F000A190, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewEnvironment and conformance ScrollViewEnvironment);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollViewChildModifier and conformance ScrollViewChildModifier()
{
  result = lazy protocol witness table cache variable for type ScrollViewChildModifier and conformance ScrollViewChildModifier;
  if (!lazy protocol witness table cache variable for type ScrollViewChildModifier and conformance ScrollViewChildModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewChildModifier, &unk_1F000A070, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewChildModifier and conformance ScrollViewChildModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, lazy protocol witness table accessor for type ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry> and conformance <> ModifiedContent<A, B>, &protocol witness table for _CoordinateSpaceModifier<A>);
    v5[1] = lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E840], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, _CoordinateSpaceModifier<ObjectIdentifier>>, _ContentShapeModifier<Rectangle>>, ScrollViewGesture> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E840], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry> and conformance <> ModifiedContent<A, B>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry> and conformance <> ModifiedContent<A, B>)
  {
    v5[2] = v1;
    v5[3] = v2;
    type metadata accessor for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>(255, &lazy cache variable for type metadata for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>, MEMORY[0x1E697FB10], &type metadata for ScrollViewGeometry, MEMORY[0x1E697E830]);
    v5[0] = MEMORY[0x1E697FB08];
    v5[1] = &protocol witness table for ScrollViewGeometry;
    result = swift_getWitnessTable(MEMORY[0x1E697E840], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for ScrollViewResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScrollViewResponder;
  if (!type metadata singleton initialization cache for ScrollViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #5 in static _ScrollView.Main._makeView(view:inputs:)(uint64_t a1)
{
  result = _ViewOutputs.layoutComputer.getter();
  v3 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v3 = result;
  }

  *(a1 + 8) = v3;
  return result;
}

void type metadata accessor for Attribute<Scrollable>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ScrollViewAnimationMode and conformance _ScrollViewAnimationMode()
{
  result = lazy protocol witness table cache variable for type _ScrollViewAnimationMode and conformance _ScrollViewAnimationMode;
  if (!lazy protocol witness table cache variable for type _ScrollViewAnimationMode and conformance _ScrollViewAnimationMode)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewAnimationMode, &type metadata for _ScrollViewAnimationMode, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ScrollViewAnimationMode and conformance _ScrollViewAnimationMode);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrollViewUpdate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 50))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 28);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollViewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 28) = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewGesture and conformance ScrollViewGesture()
{
  result = lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture;
  if (!lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewGesture, &type metadata for ScrollViewGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture;
  if (!lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewGesture, &type metadata for ScrollViewGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture;
  if (!lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewGesture, &type metadata for ScrollViewGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture;
  if (!lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewGesture, &type metadata for ScrollViewGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewGesture and conformance ScrollViewGesture);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Map<_ScrollViewProxy, _ScrollViewProxy?> and conformance Map<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifierGesture<CoordinateSpaceGesture<ScrollGesture.Value>, ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<ScrollGesture.Value>, ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>>)
  {
    type metadata accessor for Attribute<_ScrollViewProxy>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<ScrollGesture.Value>, &type metadata for ScrollGesture.Value, MEMORY[0x1E697FE18]);
    type metadata accessor for ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>(255);
    lazy protocol witness table accessor for type CoordinateSpaceGesture<ScrollGesture.Value> and conformance CoordinateSpaceGesture<A>();
    lazy protocol witness table accessor for type Map<_ScrollViewProxy, _ScrollViewProxy?> and conformance Map<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>, MEMORY[0x1E697E860]);
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CoordinateSpaceGesture<ScrollGesture.Value>, ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>>);
    }
  }
}

void type metadata accessor for ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>)
  {
    type metadata accessor for _ContentShapeModifier<Rectangle>(255, &lazy cache variable for type metadata for CallbacksGesture<ScrollViewGesture>, lazy protocol witness table accessor for type ScrollViewGesture and conformance ScrollViewGesture, &type metadata for ScrollViewGesture, MEMORY[0x1E697E950]);
    lazy protocol witness table accessor for type CallbacksGesture<ScrollViewGesture> and conformance CallbacksGesture<A>();
    lazy protocol witness table accessor for type ScrollGesture and conformance ScrollGesture();
    v1 = type metadata accessor for ModifierGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifierGesture<CallbacksGesture<ScrollViewGesture>, ScrollGesture>);
    }
  }
}

void type metadata accessor for _ContentShapeModifier<Rectangle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type CallbacksGesture<ScrollViewGesture> and conformance CallbacksGesture<A>()
{
  result = lazy protocol witness table cache variable for type CallbacksGesture<ScrollViewGesture> and conformance CallbacksGesture<A>;
  if (!lazy protocol witness table cache variable for type CallbacksGesture<ScrollViewGesture> and conformance CallbacksGesture<A>)
  {
    type metadata accessor for _ContentShapeModifier<Rectangle>(255, &lazy cache variable for type metadata for CallbacksGesture<ScrollViewGesture>, lazy protocol witness table accessor for type ScrollViewGesture and conformance ScrollViewGesture, &type metadata for ScrollViewGesture, MEMORY[0x1E697E950]);
    result = swift_getWitnessTable(MEMORY[0x1E697E958], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CallbacksGesture<ScrollViewGesture> and conformance CallbacksGesture<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGesture and conformance ScrollGesture()
{
  result = lazy protocol witness table cache variable for type ScrollGesture and conformance ScrollGesture;
  if (!lazy protocol witness table cache variable for type ScrollGesture and conformance ScrollGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollGesture, &type metadata for ScrollGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGesture and conformance ScrollGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CoordinateSpaceGesture<ScrollGesture.Value> and conformance CoordinateSpaceGesture<A>()
{
  result = lazy protocol witness table cache variable for type CoordinateSpaceGesture<ScrollGesture.Value> and conformance CoordinateSpaceGesture<A>;
  if (!lazy protocol witness table cache variable for type CoordinateSpaceGesture<ScrollGesture.Value> and conformance CoordinateSpaceGesture<A>)
  {
    type metadata accessor for Attribute<_ScrollViewProxy>(255, &lazy cache variable for type metadata for CoordinateSpaceGesture<ScrollGesture.Value>, &type metadata for ScrollGesture.Value, MEMORY[0x1E697FE18]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE20], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type CoordinateSpaceGesture<ScrollGesture.Value> and conformance CoordinateSpaceGesture<A>);
  }

  return result;
}

void type metadata accessor for (proxy: Attribute<_ScrollViewProxy>, contentSize: Attribute<ViewSize>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (proxy: Attribute<_ScrollViewProxy>, contentSize: Attribute<ViewSize>))
  {
    v1 = MEMORY[0x1E698D388];
    type metadata accessor for Attribute<_ScrollViewProxy>(255, &lazy cache variable for type metadata for Attribute<_ScrollViewProxy>, &type metadata for _ScrollViewProxy, MEMORY[0x1E698D388]);
    type metadata accessor for Attribute<_ScrollViewProxy>(255, &lazy cache variable for type metadata for Attribute<ViewSize>, MEMORY[0x1E6981D18], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (proxy: Attribute<_ScrollViewProxy>, contentSize: Attribute<ViewSize>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey> and conformance EnvironmentPropertyKey<A>(__n128 a1)
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey>, &type metadata for TopScrollIndicatorFollowsContentOffsetKey, &protocol witness table for TopScrollIndicatorFollowsContentOffsetKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v4, v1, v2);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TopScrollIndicatorFollowsContentOffsetKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in ScrollViewUpdate.updateBindingOffset(_:)@<X0>(uint64_t a1@<X8>)
{
  result = dispatch thunk of AnyLocation.update()();
  *(a1 + 16) = result & 1;
  return result;
}

void type metadata accessor for (CGPoint, Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CGPoint, Bool))
  {
    type metadata accessor for CGPoint(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CGPoint, Bool));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ContentOffset and conformance ContentOffset()
{
  result = lazy protocol witness table cache variable for type ContentOffset and conformance ContentOffset;
  if (!lazy protocol witness table cache variable for type ContentOffset and conformance ContentOffset)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentOffset, &unk_1F000A660, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ContentOffset and conformance ContentOffset);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_GeometryGroupEffect, ScrollViewGeometry>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of ScrollViewCommitInfo?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Attribute<_ScrollViewProxy>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for Map<_ScrollViewProxy, _ScrollViewProxy?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<_ScrollViewProxy, _ScrollViewProxy?>)
  {
    type metadata accessor for Attribute<_ScrollViewProxy>(255, &lazy cache variable for type metadata for _ScrollViewProxy?, &type metadata for _ScrollViewProxy, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<_ScrollViewProxy, _ScrollViewProxy?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponderFilter and conformance ScrollViewResponderFilter()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponderFilter and conformance ScrollViewResponderFilter;
  if (!lazy protocol witness table cache variable for type ScrollViewResponderFilter and conformance ScrollViewResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScrollViewResponderFilter, &unk_1F000A5E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponderFilter and conformance ScrollViewResponderFilter);
  }

  return result;
}

void type metadata accessor for Attribute<_ScrollViewProxy>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined copy of ScrollViewCommitInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 < 0)
  {
    return outlined copy of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(a9, a10);
  }

  return result;
}

uint64_t outlined consume of ScrollViewCommitInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a8 < 0)
  {
    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a9, a10);
  }

  return result;
}

uint64_t *initializeWithCopy for ScrollViewCommitInfo(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v13 = a2[9];
  outlined copy of ScrollViewCommitInfo(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  return a1;
}

uint64_t *assignWithCopy for ScrollViewCommitInfo(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v23 = a2[9];
  outlined copy of ScrollViewCommitInfo(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v23);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  v21 = a1[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v23;
  outlined consume of ScrollViewCommitInfo(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
  return a1;
}

uint64_t *assignWithTake for ScrollViewCommitInfo(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = a1[9];
  v13 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v13;
  v14 = a2[3];
  *(a1 + 2) = a2[2];
  *(a1 + 3) = v14;
  *(a1 + 4) = a2[4];
  outlined consume of ScrollViewCommitInfo(v3, v5, v4, v6, v7, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScrollViewCommitInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ScrollViewCommitInfo(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = 2 * -a2;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double key path getter for _PreferenceTransformModifier.transform : <A>_PreferenceTransformModifier<A>@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> ();
  a4[1] = v8;

  return result;
}

void key path setter for _PreferenceTransformModifier.transform : <A>_PreferenceTransformModifier<A>(uint64_t *a1, uint64_t (**a2)(), uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@out ());
  a2[1] = v8;
}

uint64_t ControlWidgetTemplate.preference<A>(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = type metadata accessor for _PreferenceWritingModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a2, AssociatedTypeWitness, v13);
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  _PreferenceWritingModifier.init(key:value:)();
  ControlWidgetTemplate.modifier<A>(_:)(v15, v18, v11);
  return (*(v12 + 8))(v15, v11);
}

double ControlWidgetTemplate.transformPreference<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();

  v11[0] = _PreferenceTransformModifier.init(key:transform:)();
  v11[1] = v8;
  v9 = type metadata accessor for _PreferenceTransformModifier();
  ControlWidgetTemplate.modifier<A>(_:)(v11, a4, v9);

  return result;
}

uint64_t static _PreferenceWritingModifier._makeControlWidgetTemplate(modifier:inputs:body:)(int *a1, _OWORD *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v9 = *a2;
  v8 = a2[1];
  *v16 = a2[2];
  *&v16[12] = *(a2 + 44);
  v12 = v9;
  v13 = v8;
  *v14 = a2[2];
  *&v14[12] = *(a2 + 44);
  outlined init with copy of _WidgetInputs(v15, &v21);
  PreferencesInputs.remove<A>(_:)();
  v17[0] = v12;
  v17[1] = v13;
  v18[0] = *v14;
  *(v18 + 12) = *&v14[12];
  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  v10 = outlined init with copy of _WidgetInputs(v17, v19);
  a3(v10, &v21);
  v19[0] = v21;
  v19[1] = v22;
  v20[0] = v23[0];
  *(v20 + 12) = *(v23 + 12);
  outlined destroy of _WidgetInputs(v19);

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v21 = v12;
  v22 = v13;
  v23[0] = *v14;
  *(v23 + 12) = *&v14[12];
  return outlined destroy of _WidgetInputs(&v21);
}

uint64_t static _PreferenceTransformModifier._makeControlWidgetTemplate(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

uint64_t implicit closure #1 in static _PreferenceTransformModifier._makeControlWidgetTemplate(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a1;
  type metadata accessor for _PreferenceTransformModifier();
  type metadata accessor for _GraphValue();
  v5 = _GraphValue.value.getter();
  v20 = a2;
  v21 = a3;
  KeyPath = swift_getKeyPath();
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v17 = v5;
    v18 = partial apply for closure #1 in Attribute.subscript.getter;
    v19 = KeyPath;
    MEMORY[0x1EEE9AC00](v7);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v13[2] = swift_getFunctionTypeMetadata();
    v14 = type metadata accessor for Map();
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E698D3A8], v14);
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v17, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v13, v14, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    return AssociatedTypeWitness;
  }

  else
  {
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();

    return OffsetAttribute2;
  }
}

uint64_t get_witness_table_7SwiftUI21ControlWidgetTemplateRzAA13PreferenceKeyRd__r__lAA15ModifiedContentVyxAA01_F15WritingModifierVyqd__GGAaBHpxAaBHD1__AhA0cdeK0HpyHCHCTm(void *a1, void (*a2)(uint64_t, void, void), uint64_t a3)
{
  v4 = a1[2];
  a2(255, a1[1], a1[3]);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double closure #1 in View.presentationSource<A>(id:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 48);
  v5 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;

  return result;
}

void *View.presentationSource<A>(id:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for _sharedNamespaceID != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  MEMORY[0x1EEE9AC00](a1);
  return View.matchedTransitionSource<A, B>(id:in:configuration:)(v8, v11, a4, &unk_1F000A968, a6, v10, v9, &protocol witness table for BridgedConfiguration);
}

void *View.presentationSource<A>(id:cornerRadius:style:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6 = *a2;
  *&v8[2] = a6;
  v9 = v6;
  return View.presentationSource<A>(id:configuration:)(a1, partial apply for closure #1 in View.presentationSource<A>(id:cornerRadius:style:), v8, a3, a4, a5);
}

double closure #1 in View.presentationSource<A>(id:cornerRadius:style:)@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(a1 + 4);
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v4;
  *(a3 + 40) = a4;
  *(a3 + 48) = a2 & 1;

  return result;
}

double PresentationSourceConfiguration.cornerRadius(_:stye:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *a1;
  v5 = *(v3 + 32);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = a3;
  *(a2 + 48) = v4;

  return result;
}

double closure #1 in View.presentationSource<A>(id:configuration:)@<D0>(void (*a1)(_OWORD *__return_ptr, _OWORD *)@<X1>, uint64_t a2@<X8>)
{
  memset(v7, 0, sizeof(v7));
  v8 = 1;
  a1(v9, v7);

  v3 = v10;
  result = v11;
  v5 = v12;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 40) = result;
  *(a2 + 48) = v5;
  return result;
}

double PresentationSourceConfiguration.shadow(color:radius:x:y:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v6 = *(v5 + 40);
  v7 = *(v5 + 48);
  *(a2 + 32) = *(v5 + 32);
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;

  return result;
}

double PresentationSourceConfiguration.backgroundColor(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 32) = a1;

  return result;
}

void protocol witness for MatchedTransitionSourceConfiguration._update(configuration:) in conformance BridgedConfiguration(uint64_t a1)
{
  v5 = v1[1];
  v6 = *v1;
  v3 = *(v1 + 5);
  v4 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 4);

  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = v4;
  if (v6)
  {

    *a1 = v6;
    *(a1 + 16) = v5;
  }
}

id UIView.findPresentationSourceView<A>(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for _sharedNamespaceID != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v5 = static _PresentationTransitionCompatibility._sharedNamespaceID;

  return UIView.findMatchedTransitionSource<A>(id:in:)(a1, v5, a2, a3);
}

id UIView.findPresentationSourceView<A>(id:zoomingViewController:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for _sharedNamespaceID != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v7 = static _PresentationTransitionCompatibility._sharedNamespaceID;

  return UIView.findMatchedTransitionSource<A>(id:in:zoomingViewController:)(a1, v7, a2, a3, a4);
}

uint64_t initializeWithCopy for PresentationSourceConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 1);
  v4 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithCopy for PresentationSourceConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for PresentationSourceConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresentationSourceConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for PresentationSourceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CommandGroup._resolve(into:)(uint64_t a1)
{
  result = type metadata accessor for CommandOperation(0);
  v4 = *(v1 + *(result + 24));
  if (v4)
  {
    return v4(v1, a1);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HashableCommandGroupPlacementWrapper()
{
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  UUID.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HashableCommandGroupPlacementWrapper(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  UUID.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CommandGroupPlacement(0);

  return static UUID.== infix(_:_:)();
}

uint64_t one-time initialization function for importExport()
{
  v0 = type metadata accessor for CommandGroupPlacement(0);
  __swift_allocate_value_buffer(v0, static CommandGroupPlacement.importExport);
  v1 = __swift_project_value_buffer(v0, static CommandGroupPlacement.importExport);
  MEMORY[0x18D009CE0](&v4);
  v2 = MEMORY[0x1E69E7CC0];
  Text.assertUnstyled(_:options:)();
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x800000018CD5A260;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  return UUID.init()();
}

uint64_t one-time initialization function for windowArrangement()
{
  v0 = type metadata accessor for CommandGroupPlacement(0);
  __swift_allocate_value_buffer(v0, static CommandGroupPlacement.windowArrangement);
  v1 = __swift_project_value_buffer(v0, static CommandGroupPlacement.windowArrangement);
  MEMORY[0x18D009CE0](&v4);
  v2 = MEMORY[0x1E69E7CC0];
  Text.assertUnstyled(_:options:)();
  *v1 = 0xD000000000000012;
  *(v1 + 8) = 0x800000018CD5A240;
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  return UUID.init()();
}

void *initializeBufferWithCopyOfBuffer for CommandGroup(void *a1, void *a2)
{
  v4 = type metadata accessor for CommandOperation(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    a1 = (v20 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(v4 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    v9 = *(a2 + v6);
    v10 = *(a2 + v6 + 8);
    v11 = *(a2 + v6 + 16);
    v12 = v4;
    outlined copy of Text.Storage(v9, v10, v11);
    *v7 = v9;
    *(v7 + 1) = v10;
    v7[16] = v11;
    *(v7 + 3) = *(v8 + 3);
    v13 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 16);

    v15(&v7[v13], &v8[v13], v14);
    v16 = *(v12 + 24);
    v17 = (a1 + v16);
    v18 = (a2 + v16);
    if (*v18)
    {
      v19 = v18[1];
      *v17 = *v18;
      v17[1] = v19;
    }

    else
    {
      *v17 = *v18;
    }
  }

  return a1;
}

_BYTE *initializeWithTake for CommandGroup(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for CommandOperation(0);
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  v8 = *&a2[v5 + 16];
  *v6 = *&a2[v5];
  *(v6 + 1) = v8;
  v9 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 32))(&v6[v9], &v7[v9], v10);
  *&a1[*(v4 + 24)] = *&a2[*(v4 + 24)];
  return a1;
}

_BYTE *assignWithTake for CommandGroup(_BYTE *a1, _BYTE *a2)
{
  *a1 = *a2;
  v4 = type metadata accessor for CommandOperation(0);
  v5 = *(v4 + 20);
  v6 = &a1[v5];
  v7 = &a2[v5];
  LOBYTE(v5) = a2[v5 + 16];
  v8 = *v6;
  v9 = *(v6 + 1);
  v10 = v6[16];
  *v6 = *v7;
  v6[16] = v5;
  outlined consume of Text.Storage(v8, v9, v10);
  *(v6 + 3) = *(v7 + 3);

  v11 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 40))(&v6[v11], &v7[v11], v12);
  v13 = *(v4 + 24);
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *&a1[v13];
  v17 = *v15;
  if (!v16)
  {
    if (v17)
    {
      v19 = v15[1];
      *v14 = v17;
      v14[1] = v19;
      return a1;
    }

LABEL_7:
    *v14 = *v15;
    return a1;
  }

  if (!v17)
  {

    goto LABEL_7;
  }

  v18 = v15[1];
  *v14 = v17;
  v14[1] = v18;

  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for CommandGroupPlacement(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v4 + 16) & ~v4);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v7, v8);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = *(a2 + 24);
    v10 = *(a3 + 20);
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 16);

    v12(a1 + v10, a2 + v10, v11);
  }

  return a1;
}

uint64_t assignWithCopy for CommandGroupPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(a1 + 24) = *(a2 + 24);

  v12 = *(a3 + 20);
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 24))(a1 + v12, a2 + v12, v13);
  return a1;
}

char *initializeWithTake for CommandGroupPlacement(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t assignWithTake for CommandGroupPlacement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a3 + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  return a1;
}

unint64_t initializeBufferWithCopyOfBuffer for HashableCommandGroupPlacementWrapper(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandGroupPlacement(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = v4;
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v8, v9);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
    v10 = *(v6 + 20);
    v11 = type metadata accessor for UUID();
    v12 = *(*(v11 - 8) + 16);

    v12(a1 + v10, a2 + v10, v11);
  }

  return a1;
}

uint64_t destroy for HashableCommandGroupPlacementWrapper(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  v2 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t initializeWithCopy for HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithCopy for HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  return a1;
}

char *initializeWithTake for HashableCommandGroupPlacementWrapper(char *a1, char *a2)
{
  v4 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v4;
  v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t assignWithTake for HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 40))(a1 + v8, a2 + v8, v9);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper()
{
  result = lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper;
  if (!lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper)
  {
    v3 = type metadata accessor for HashableCommandGroupPlacementWrapper(255);
    result = swift_getWitnessTable(protocol conformance descriptor for HashableCommandGroupPlacementWrapper, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper);
  }

  return result;
}

uint64_t UIKitTextInput<>.update(in:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v22 = v7;
  v23 = v8;
  v20[0] = v7;
  v9 = *(a3 + 8);

  v9(&v21, v20, a2, a3);
  LOBYTE(v20[0]) = v21;
  v11 = specialized NSTextAlignment.init(in:fallbackAlignment:)(&v22, v20, v10);
  (*(a4 + 128))(v11, a2, a4);
  v22 = v7;
  v23 = v8;
  EnvironmentValues.minimumScaleFactor.getter();
  v13 = v12;
  static MinimumScaleFactorKey.defaultValue.getter();
  v15 = v14;
  if (v13 < v14)
  {
    v22 = v7;
    v23 = v8;
    EnvironmentValues.effectiveFont.getter();
    v20[0] = v7;
    v20[1] = v8;
    v16 = Font.platformFont(in:)();

    CTFontRef.pointSize.getter();
    v18 = v17;

    (*(a4 + 152))(a2, a4, v13 * v18);
  }

  result = (*(a4 + 168))(a2, a4);
  if (v13 < v15 != (result & 1))
  {
    return (*(a4 + 176))(v13 < v15, a2, a4);
  }

  return result;
}

uint64_t UIKitTextInputTraits.updateTraits(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  (*(a3 + 64))(v12, a2, a3);
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  (*(a3 + 88))(v12, a2, a3);
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = 1;
  if ((v12 & 1) == 0)
  {
    v6 = 2;
  }

  if (v12 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  (*(a3 + 40))(v7, a2, a3);
  if (v5)
  {
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    v8 = v13;
    if (v13)
    {
LABEL_17:

      v9 = MEMORY[0x18D00C850](v12, v8);
      swift_bridgeObjectRelease_n();
      goto LABEL_20;
    }
  }

  else
  {
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v8 = v13;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
LABEL_20:
  (*(a3 + 112))(v9, a2, a3);
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  (*(a3 + 16))(v12, a2, a3);
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, &type metadata for EnvironmentValues.SubmitLabelKey, &protocol witness table for EnvironmentValues.SubmitLabelKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v10 = qword_18CDF7328[v12];
  if ((*(a3 + 128))(a2, a3) != v10)
  {
    (*(a3 + 136))(v10, a2, a3);
  }

  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, &type metadata for EnvironmentValues.WritingToolsBehaviorKey, &protocol witness table for EnvironmentValues.WritingToolsBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return (*(a3 + 160))(qword_18CDF7370[v12], a2, a3);
}

void UITextInputTraits_Private.updatePrivateTraits(in:)(uint64_t *a1)
{
  v2 = v1;
  if (a1[1])
  {
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v3 = v4 | (v5 << 16);
  if (v4 != 2)
  {
    if ([v2 respondsToSelector_])
    {
      if ([v2 forceEnableDictation] == (v4 & 1))
      {
LABEL_10:
        if (([v2 respondsToSelector_] & 1) == 0)
        {
          if (v4)
          {
LABEL_16:
            if ([v2 respondsToSelector_])
            {
              if ([v2 forceSpellingDictation] == (v4 & 0x100) >> 8)
              {
LABEL_21:
                if ([v2 respondsToSelector_])
                {
                  if ([v2 preferOnlineDictation] == (v3 & 0x10000) >> 16)
                  {
                    return;
                  }
                }

                else if ((v3 & 0x10000) == 0)
                {
                  return;
                }

                _UITextInputTraitSetPreferOnlineDictation(v2, HIWORD(v3) & 1);
                return;
              }
            }

            else if ((v4 & 0x100) == 0)
            {
              goto LABEL_21;
            }

            _UITextInputTraitSetForceSpellingDictation(v2, (v3 >> 8) & 1);
            goto LABEL_21;
          }

LABEL_15:
          _UITextInputTraitSetForceDisableDictation(v2, (v4 ^ 1) & 1);
          goto LABEL_16;
        }

LABEL_14:
        if (([v2 forceDisableDictation] ^ v3))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if ((v4 & 1) == 0)
    {
      if (([v2 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    _UITextInputTraitSetForceEnableDictation(v2, v4 & 1);
    goto LABEL_10;
  }
}

uint64_t _s7SwiftUI15SelectionRangesOyACyxGSnyxGSgcfCSS5IndexV_Tt1g5@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  if (a3)
  {
    v13 = MEMORY[0x1E69E60D0];
    v14 = MEMORY[0x1E69E60E0];
    RangeSet.init()();
    (*(v10 + 32))(a4, v12, v9);
LABEL_8:
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v13, v14, MEMORY[0x1E697E8A8]);
    return swift_storeEnumTagMultiPayload();
  }

  if ((a2 ^ a1) >= 0x4000)
  {
    v16[0] = a1;
    v16[1] = a2;
    v13 = MEMORY[0x1E69E60D0];
    v14 = MEMORY[0x1E69E60E0];
    RangeSet.init(_:)();
    goto LABEL_8;
  }

  *a4 = a1;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);

  return swift_storeEnumTagMultiPayload();
}

unint64_t specialized SelectionRanges.union.getter()
{
  v1 = MEMORY[0x1E69E60D0];
  v2 = MEMORY[0x1E69E60E0];
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>.Ranges, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BA8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-1] - v9;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, v1, v2, MEMORY[0x1E69E7BE0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27[-1] - v14;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, v1, v2, MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27[-1] - v17;
  outlined init with copy of SelectionRanges<String.Index>(v0, &v27[-1] - v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v18;
  }

  (*(v13 + 32))(v15, v18, v12);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v27[4] == v27[0])
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    (*(v13 + 8))(v15, v12);
    return 0;
  }

  v20 = dispatch thunk of Collection.subscript.read();
  v26 = *v21;
  v20(v27, 0);
  v22 = *(v5 + 8);
  v22(v10, v4);
  RangeSet.ranges.getter();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    v22(v7, v4);
    goto LABEL_7;
  }

  dispatch thunk of Collection.endIndex.getter();
  lazy protocol witness table accessor for type RangeSet<String.Index>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of BidirectionalCollection.index(before:)();
  v23 = dispatch thunk of Collection.subscript.read();
  v25 = *(v24 + 8);
  v23(v27, 0);
  v22(v7, v4);
  (*(v13 + 8))(v15, v12);
  result = v26;
  if (v25 >> 14 < v26 >> 14)
  {
    __break(1u);
  }

  return result;
}

void UIKitTextView.enqueueScrollIfNeeded()()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
      if (!v3)
      {
        return;
      }
    }

    v4 = [objc_opt_self() defaultCenter];
    v5 = *MEMORY[0x1E69DDF78];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v21 = partial apply for closure #1 in UIKitTextView.enqueueScrollIfNeeded();
    v22 = v8;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v20 = &block_descriptor_82;
    v9 = _Block_copy(&v17);

    v10 = [v4 addObserverForName:v5 object:0 queue:0 usingBlock:v9];
    _Block_release(v9);
    *&v0[OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver] = v10;
    swift_unknownObjectRelease();
    v11 = *MEMORY[0x1E69DE078];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v4;
    v21 = partial apply for closure #2 in UIKitTextView.enqueueScrollIfNeeded();
    v22 = v13;
    v17 = MEMORY[0x1E69E9820];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    v20 = &block_descriptor_66_2;
    v14 = _Block_copy(&v17);
    v15 = v4;

    v16 = [v15 addObserverForName:v11 object:0 queue:0 usingBlock:v14];

    _Block_release(v14);
    *&v0[OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver] = v16;
    swift_unknownObjectRelease();
  }
}

id UITextView.selection.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    v4 = [v1 selectedRanges];
    type metadata accessor for NSValue();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    result = [v2 text];
    if (result)
    {
      v6 = result;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for [NSValue], type metadata accessor for NSValue, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_NSRange] and conformance [A](&lazy protocol witness table cache variable for type [NSValue] and conformance [A], &lazy cache variable for type metadata for [NSValue], type metadata accessor for NSValue);
      return SelectionRanges<>.init<A>(_:in:)();
    }

    __break(1u);
    goto LABEL_9;
  }

  [v1 selectedRange];
  result = [v1 text];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = Range<>.init(_:in:)();
  v10 = v9;
  v12 = v11;

  return _s7SwiftUI15SelectionRangesOyACyxGSnyxGSgcfCSS5IndexV_Tt1g5(v8, v10, v12 & 1, a1);
}

id UITextView.selection.setter(uint64_t a1)
{
  v2 = v1;
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = (&v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v75 - v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v75 - v17;
  result = [v1 text];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v20 = result;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v81 = v21;
  v82 = v23;
  lazy protocol witness table accessor for type String and conformance String();
  LOBYTE(v20) = SelectionRanges.isSafe<A>(in:)();

  v24 = a1;
  if (v20)
  {
    outlined init with copy of SelectionRanges<String.Index>(a1, v14);
  }

  else
  {
    result = [v2 text];
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = result;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26;
    }

    v30 = 7;
    if (((v28 >> 60) & ((v26 & 0x800000000000000) == 0)) != 0)
    {
      v30 = 11;
    }

    *v14 = v30 | (v29 << 16);
    swift_storeEnumTagMultiPayload();
    v24 = a1;
  }

  outlined init with take of SelectionRanges<String.Index>(v14, v18);
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v36 = specialized SelectionRanges.union.getter();
    if ((v38 & 1) == 0)
    {
      goto LABEL_32;
    }

    result = [v2 text];
    if (!result)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v39 = result;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    result = [v2 text];
    if (!result)
    {
LABEL_53:
      __break(1u);
      return result;
    }

    v43 = result;
    v44 = (v40 & 0x800000000000000) == 0;
    if ((v42 & 0x2000000000000000) != 0)
    {
      v45 = HIBYTE(v42) & 0xF;
    }

    else
    {
      v45 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (((v42 >> 60) & v44) != 0)
    {
      v46 = 11;
    }

    else
    {
      v46 = 7;
    }

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (((v49 >> 60) & ((v47 & 0x800000000000000) == 0)) != 0)
    {
      v51 = 11;
    }

    else
    {
      v51 = 7;
    }

    if (v50 >= v45)
    {
      v36 = v46 | (v45 << 16);
      v37 = v51 | (v50 << 16);
LABEL_32:
      v81 = v36;
      v82 = v37;
      result = [v2 text];
      if (result)
      {
        v52 = result;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        v79 = v53;
        v80 = v55;
        type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
        lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
        lazy protocol witness table accessor for type String and conformance String();
        v56 = _NSRange.init<A, B>(_:in:)();
        [v2 setSelectedRange_];
LABEL_39:
        outlined destroy of SelectionRanges<String.Index>(v24);
        return outlined destroy of SelectionRanges<String.Index>(v18);
      }

      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_48;
  }

  outlined init with copy of SelectionRanges<String.Index>(v18, v11);
  result = [v2 text];
  if (!result)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v31 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = Array<A>.init(_:in:)();
  v33 = v32;
  if (v32 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_14;
    }
  }

  else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    static Log.textEditor.getter();
    v34 = type metadata accessor for Logger();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v8, 1, v34) == 1)
    {
      outlined destroy of Logger?(v8);
    }

    else
    {

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();

      v78 = v58;
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v81 = v76;
        *v60 = 136315138;
        v61 = type metadata accessor for NSValue();
        v62 = MEMORY[0x18D00CC60](v33, v61);
        v77 = v24;
        v64 = v59;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v81);
        v24 = v77;

        *(v60 + 4) = v65;
        v66 = v78;
        _os_log_impl(&dword_18BD4A000, v78, v64, "Ask UITextView to set selection: %s", v60, 0xCu);
        v67 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x18D0110E0](v67, -1, -1);
        MEMORY[0x18D0110E0](v60, -1, -1);
      }

      else
      {
      }

      (*(v35 + 8))(v8, v34);
    }

    type metadata accessor for NSValue();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setSelectedRanges_];

    goto LABEL_39;
  }

  v69 = v78;
  static Log.textEditor.getter();
  v70 = type metadata accessor for Logger();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    outlined destroy of SelectionRanges<String.Index>(v24);
    outlined destroy of SelectionRanges<String.Index>(v18);
    return outlined destroy of Logger?(v69);
  }

  else
  {
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_18BD4A000, v72, v73, "Asked to set an empty range on UITextView.selectedRanges. Ignoring update.", v74, 2u);
      MEMORY[0x18D0110E0](v74, -1, -1);
    }

    outlined destroy of SelectionRanges<String.Index>(v24);
    outlined destroy of SelectionRanges<String.Index>(v18);
    return (*(v71 + 8))(v78, v70);
  }
}

uint64_t protocol witness for FallbackAlignmentProvider.fallbackAlignment(in:) in conformance UITextField@<X0>(BOOL *a1@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = 0;
  }

  else
  {
    result = EnvironmentValues.multilineTextAlignment.getter();
    v3 = result == 0;
  }

  *a1 = v3;
  return result;
}

uint64_t UITextField.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (v16 - v6);
  v8 = [v1 text];
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      v16[1] = UITextField._selectedRanges.getter();
      _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange, MEMORY[0x1E69E62F8]);
      lazy protocol witness table accessor for type [_NSRange] and conformance [A](&lazy protocol witness table cache variable for type [_NSRange] and conformance [A], &lazy cache variable for type metadata for [_NSRange], type metadata accessor for _NSRange);
      SelectionRanges<>.init<A>(_:in:)();
    }

    else
    {
      [v2 selectionRange];
      v11 = Range<>.init(_:in:)();
      v13 = v12;
      v15 = v14;

      _s7SwiftUI15SelectionRangesOyACyxGSnyxGSgcfCSS5IndexV_Tt1g5(v11, v13, v15 & 1, v7);
    }

    return outlined init with take of SelectionRanges<String.Index>(v7, a1);
  }

  else
  {
    RangeSet.init()();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t UITextField.selection.setter(uint64_t a1)
{
  _s2os6LoggerVSgMaTm_1(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v57 - v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v57 - v17;
  v19 = [v1 text];
  if (v19)
  {
    v60 = v1;
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v63 = v21;
    v64 = v23;
    lazy protocol witness table accessor for type String and conformance String();
    if (SelectionRanges.isSafe<A>(in:)())
    {
      outlined init with copy of SelectionRanges<String.Index>(a1, v14);
    }

    else
    {
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v21;
      }

      v26 = 7;
      if (((v23 >> 60) & ((v21 & 0x800000000000000) == 0)) != 0)
      {
        v26 = 11;
      }

      *v14 = v26 | (v25 << 16);
      swift_storeEnumTagMultiPayload();
    }

    outlined init with take of SelectionRanges<String.Index>(v14, v18);
    type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>();
    if (static SemanticFeature.isEnabled.getter())
    {
      outlined init with copy of SelectionRanges<String.Index>(v18, v11);
      v27 = Array<A>.init(_:in:)();
      static Log.textField.getter();
      v28 = type metadata accessor for Logger();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v8, 1, v28) == 1)
      {
        outlined destroy of Logger?(v8);
      }

      else
      {

        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          LODWORD(v59) = v34;
          v36 = v35;
          v58 = swift_slowAlloc();
          v63 = v58;
          *v36 = 136315138;
          type metadata accessor for _NSRange(0);
          v38 = MEMORY[0x18D00CC60](v27, v37);
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v63);

          *(v36 + 4) = v40;
          _os_log_impl(&dword_18BD4A000, v33, v59, "Ask UITextField to set selection: %s", v36, 0xCu);
          v41 = v58;
          __swift_destroy_boxed_opaque_existential_1(v58);
          MEMORY[0x18D0110E0](v41, -1, -1);
          MEMORY[0x18D0110E0](v36, -1, -1);
        }

        (*(v29 + 8))(v8, v28);
      }

      UITextField._selectedRanges.setter();
    }

    else
    {
      v30 = specialized SelectionRanges.union.getter();
      if (v32)
      {
      }

      else
      {
        v63 = v30;
        v64 = v31;
        v61 = v21;
        v62 = v23;
        type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for Range<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
        lazy protocol witness table accessor for type Range<String.Index> and conformance Range<A>();
        lazy protocol witness table accessor for type String and conformance String();
        v42 = _NSRange.init<A, B>(_:in:)();
        v44 = v43;
        static Log.textField.getter();
        v45 = type metadata accessor for Logger();
        v46 = *(v45 - 8);
        if ((*(v46 + 48))(v5, 1, v45) == 1)
        {
          outlined destroy of Logger?(v5);
        }

        else
        {
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v57 = v49;
            v58 = swift_slowAlloc();
            v63 = v58;
            *v49 = 136315138;
            v50 = _NSRange.description.getter();
            v59 = v42;
            v52 = v44;
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v63);
            v42 = v59;

            v54 = v57;
            *(v57 + 1) = v53;
            v44 = v52;
            v55 = v54;
            _os_log_impl(&dword_18BD4A000, v47, v48, "Ask UITextField to set selection: %s", v54, 0xCu);
            v56 = v58;
            __swift_destroy_boxed_opaque_existential_1(v58);
            MEMORY[0x18D0110E0](v56, -1, -1);
            MEMORY[0x18D0110E0](v55, -1, -1);
          }

          (*(v46 + 8))(v5, v45);
        }

        [v60 setSelectionRange_];
      }
    }

    outlined destroy of SelectionRanges<String.Index>(a1);
    return outlined destroy of SelectionRanges<String.Index>(v18);
  }

  else
  {

    return outlined destroy of SelectionRanges<String.Index>(a1);
  }
}

void protocol witness for UIKitTextInput.uiAttributedText.setter in conformance UITextField(void *a1)
{
  [v1 setAttributedText_];
}

void protocol witness for UIKitTextInput.uiAttributedPlaceholder.setter in conformance UITextField(void *a1)
{
  [v1 setAttributedPlaceholder_];
}

uint64_t protocol witness for UIKitTextInput.uiDefaultTextAttributes.getter in conformance UITextField()
{
  v1 = [v0 defaultTextAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void protocol witness for UIKitTextInput.uiDefaultTextAttributes.setter in conformance UITextField()
{
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 setDefaultTextAttributes_];
}

void protocol witness for UIKitTextInput.uiAttributedText.setter in conformance VerticalTextView(void *a1)
{
  if (a1)
  {
    [v1 setAttributedText_];
  }
}

void protocol witness for UIKitTextInput.uiAttributedPlaceholder.setter in conformance VerticalTextView(void *a1)
{
  if (a1)
  {
    [v1 setAttributedPlaceholder_];
  }
}

uint64_t protocol witness for UIKitTextInput.uiSelectedRanges.setter in conformance UITextField(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  type metadata accessor for SelectionRanges<String.Index>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  outlined init with copy of SelectionRanges<String.Index>(a1, &v10 - v7);
  a4(v8);
  return outlined destroy of SelectionRanges<String.Index>(a1);
}

void closure #1 in UIKitTextView.enqueueScrollIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [v4 bounds];
      [v6 convertRect:v4 fromCoordinateSpace:?];
      EdgeInsets.init(_all:)();
      CGRect.inset(by:)();
      [v6 scrollRectToVisible:1 animated:?];

      v4 = v6;
    }
  }
}

void closure #2 in UIKitTextView.enqueueScrollIfNeeded()(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC7SwiftUI13UIKitTextView_didShowObserver))
    {
      [a3 removeObserver_];
      if (*&v5[OBJC_IVAR____TtC7SwiftUI13UIKitTextView_willHideObserver])
      {
        [a3 removeObserver_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id UIKitTextView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UIKitTextView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t type metadata accessor for NSValue()
{
  result = lazy cache variable for type metadata for NSValue;
  if (!lazy cache variable for type metadata for NSValue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSValue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [_NSRange] and conformance [A](unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    _s2os6LoggerVSgMaTm_1(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v5);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for SelectionRanges<String.Index>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t specialized IsAnimated.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(25);

  v2 = static PreferenceKey.readableName.getter();
  MEMORY[0x18D00C9B0](v2);

  return 0xD000000000000017;
}

uint64_t Gesture.allowsIncompleteEventSequences()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for AllowsIncompleteEventSequences(0, AssociatedTypeWitness, v5, v6);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AllowsIncompleteEventSequences<A>, v7);

  return MEMORY[0x1EEDE4AD0](WitnessTable, a1, v7, a2, WitnessTable);
}

uint64_t static AllowsIncompleteEventSequences._makeGesture(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(__int128 *))
{
  *&v37[12] = *(a2 + 108);
  v5 = a2[5];
  v6 = a2[3];
  v35 = a2[4];
  v36 = v5;
  v7 = a2[5];
  *v37 = a2[6];
  v8 = a2[1];
  v32[0] = *a2;
  v32[1] = v8;
  v9 = a2[3];
  v11 = *a2;
  v10 = a2[1];
  v33 = a2[2];
  v34 = v9;
  v12 = a2[6];
  v25[5] = v7;
  *v26 = v12;
  v25[3] = v6;
  v25[4] = v35;
  v25[0] = v11;
  v25[1] = v10;
  v13 = *&v37[24] | 2;
  *&v26[16] = *(a2 + 14);
  v25[2] = v33;
  *&v26[24] = *&v37[24] | 2;
  *&v24[12] = *&v26[12];
  v22 = v35;
  v23 = v7;
  *v24 = v12;
  v18 = v11;
  v19 = v10;
  v20 = v33;
  v21 = v6;
  outlined init with copy of _GestureInputs(v32, v29);
  outlined init with copy of _GestureInputs(v25, v29);
  a3(&v18);
  v27[4] = v22;
  v27[5] = v23;
  v28[0] = *v24;
  *(v28 + 12) = *&v24[12];
  v27[0] = v18;
  v27[1] = v19;
  v27[2] = v20;
  v27[3] = v21;
  outlined destroy of _GestureInputs(v27);
  v14 = a2[5];
  v29[4] = a2[4];
  v29[5] = v14;
  v29[6] = a2[6];
  v30 = *(a2 + 14);
  v15 = a2[1];
  v29[0] = *a2;
  v29[1] = v15;
  v16 = a2[3];
  v29[2] = a2[2];
  v29[3] = v16;
  v31 = v13;
  return outlined destroy of _GestureInputs(v29);
}

unint64_t lazy protocol witness table accessor for type SquareBorderTextFieldStyle.BodyContent and conformance SquareBorderTextFieldStyle.BodyContent()
{
  result = lazy protocol witness table cache variable for type SquareBorderTextFieldStyle.BodyContent and conformance SquareBorderTextFieldStyle.BodyContent;
  if (!lazy protocol witness table cache variable for type SquareBorderTextFieldStyle.BodyContent and conformance SquareBorderTextFieldStyle.BodyContent)
  {
    v3 = type metadata accessor for SquareBorderTextFieldStyle.BodyContent(255);
    result = swift_getWitnessTable(protocol conformance descriptor for SquareBorderTextFieldStyle.BodyContent, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SquareBorderTextFieldStyle.BodyContent and conformance SquareBorderTextFieldStyle.BodyContent);
  }

  return result;
}

uint64_t type metadata accessor for SquareBorderTextFieldStyle.BodyContent(uint64_t a1)
{
  result = type metadata singleton initialization cache for SquareBorderTextFieldStyle.BodyContent;
  if (!type metadata singleton initialization cache for SquareBorderTextFieldStyle.BodyContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ListMenuPickerStyle._makeView<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v74 = *(a2 + 32);
  v75 = v6;
  v8 = *(a2 + 48);
  v76 = *(a2 + 64);
  v9 = *(a2 + 16);
  v73[0] = *a2;
  v73[1] = v9;
  v69 = v74;
  v70 = v8;
  v71 = *(a2 + 64);
  v10 = *a1;
  v77 = *(a2 + 80);
  v72 = *(a2 + 80);
  v67 = v73[0];
  v68 = v7;
  LOBYTE(v58[0]) = 1;
  outlined init with copy of _ViewInputs(v73, &v61);
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.setter();
  v60 = v10;
  *&v61 = &type metadata for ListMenuPickerStyle;
  *(&v61 + 1) = a3;
  *&v62 = &protocol witness table for ListMenuPickerStyle;
  *(&v62 + 1) = a4;
  type metadata accessor for _PickerValue(255, &v61);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for PickerStyleConfiguration(0, a3, a4, v11) - 8) + 64))
  {
    closure #1 in static ListMenuPickerStyle._makeView<A>(value:inputs:)(1, a3, a4, closure #1 in static PointerOffset.of(_:)partial apply);
  }

  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
  type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, v12);
  _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuPickerOptionSectionStyle>, lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle, &type metadata for MenuPickerOptionSectionStyle, type metadata accessor for SectionStyleModifier);
  v13 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v14 = type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, v15);
  v18 = type metadata accessor for PickerContentView(255, a3, a4, v17);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v18);
  *&v61 = v16;
  *(&v61 + 1) = v18;
  *&v62 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  *(&v62 + 1) = WitnessTable;
  v20 = type metadata accessor for Menu(255, &v61);
  _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(255, &lazy cache variable for type metadata for MenuStyleModifier<DefaultMenuStyle>, lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle, &type metadata for DefaultMenuStyle, type metadata accessor for MenuStyleModifier);
  v21 = type metadata accessor for ModifiedContent();
  v55[0] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v55[1] = &protocol witness table for SectionStyleModifier<A>;
  v22 = MEMORY[0x1E697E858];
  v54[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v13, v55);
  v54[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v23 = swift_getWitnessTable(v22, v14, v54);
  v53[0] = swift_getWitnessTable(protocol conformance descriptor for Menu<A, B>, v20);
  v53[1] = &protocol witness table for MenuStyleModifier<A>;
  v24 = swift_getWitnessTable(v22, v21, v53);
  *&v61 = v14;
  *(&v61 + 1) = v21;
  *&v62 = v23;
  *(&v62 + 1) = v24;
  v25 = type metadata accessor for GroupElementsOfContent();
  v26 = type metadata accessor for Group();
  v27 = MEMORY[0x1E697FE48];
  v52 = swift_getWitnessTable(MEMORY[0x1E697FE48], v25);
  v28 = MEMORY[0x1E6981600];
  swift_getWitnessTable(MEMORY[0x1E6981600], v26, &v52);
  v29 = type metadata accessor for _UnaryViewAdaptor();
  v31 = type metadata accessor for PopUpButton(255, a3, a4, v30);
  v32 = swift_getWitnessTable(protocol conformance descriptor for PopUpButton<A>, v31);
  *&v61 = v14;
  *(&v61 + 1) = v31;
  *&v62 = v23;
  *(&v62 + 1) = v32;
  v33 = type metadata accessor for GroupElementsOfContent();
  v34 = type metadata accessor for Group();
  v51 = swift_getWitnessTable(v27, v33);
  swift_getWitnessTable(v28, v34, &v51);
  v35 = type metadata accessor for _UnaryViewAdaptor();
  v36 = type metadata accessor for StaticIf();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v38 = MenuPickerStyle.Body.init(configuration:isBordered:)(OffsetAttribute2, 1);
  LODWORD(v61) = v38;
  BYTE4(v61) = BYTE4(v38) & 1;
  v40 = type metadata accessor for MenuPickerStyle.Body(0, a3, a4, v39);
  swift_getWitnessTable(protocol conformance descriptor for MenuPickerStyle.Body<A>, v40);
  _GraphValue.init<A>(_:)();
  v56[2] = v69;
  v56[3] = v70;
  v56[4] = v71;
  v57 = v72;
  v56[0] = v67;
  v56[1] = v68;
  v47 = v69;
  v48 = v70;
  v49 = v71;
  v50 = v72;
  v45 = v67;
  v46 = v68;
  outlined init with copy of _ViewInputs(v56, &v61);
  v41 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E69808F0]);
  v42 = MEMORY[0x1E697F380];
  v44[0] = v41;
  v44[1] = swift_getWitnessTable(MEMORY[0x1E697F380], v29);
  v44[2] = swift_getWitnessTable(v42, v35);
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v36, v44);
  static View.makeDebuggableView(view:inputs:)();
  v58[2] = v47;
  v58[3] = v48;
  v58[4] = v49;
  v59 = v50;
  v58[0] = v45;
  v58[1] = v46;
  outlined destroy of _ViewInputs(v58);
  v63 = v69;
  v64 = v70;
  v65 = v71;
  v66 = v72;
  v61 = v67;
  v62 = v68;
  return outlined destroy of _ViewInputs(&v61);
}

uint64_t static ListMenuPickerStyle._makeViewList<A>(value:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  outlined init with copy of _ViewListInputs(a2, v51);
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.setter();
  v50 = v6;
  v46 = &type metadata for ListMenuPickerStyle;
  v47 = a3;
  v48 = &protocol witness table for ListMenuPickerStyle;
  v49 = a4;
  type metadata accessor for _PickerValue(255, &v46);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(type metadata accessor for PickerStyleConfiguration(0, a3, a4, v7) - 8) + 64))
  {
    closure #1 in static ListMenuPickerStyle._makeView<A>(value:inputs:)(1, a3, a4, partial apply for closure #1 in static PointerOffset.of(_:));
  }

  type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>();
  type metadata accessor for PickerStyleConfiguration.Content(255, a3, a4, v8);
  _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(255, &lazy cache variable for type metadata for SectionStyleModifier<MenuPickerOptionSectionStyle>, lazy protocol witness table accessor for type MenuPickerOptionSectionStyle and conformance MenuPickerOptionSectionStyle, &type metadata for MenuPickerOptionSectionStyle, type metadata accessor for SectionStyleModifier);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v10 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for PickerStyleConfiguration.Label(255, a3, a4, v11);
  v14 = type metadata accessor for PickerContentView(255, a3, a4, v13);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v14);
  v46 = v12;
  v47 = v14;
  v48 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v49 = WitnessTable;
  v16 = type metadata accessor for Menu(255, &v46);
  _s7SwiftUI20SectionStyleModifierVyAA016MenuPickerOptioncD0VGMaTm_0(255, &lazy cache variable for type metadata for MenuStyleModifier<DefaultMenuStyle>, lazy protocol witness table accessor for type DefaultMenuStyle and conformance DefaultMenuStyle, &type metadata for DefaultMenuStyle, type metadata accessor for MenuStyleModifier);
  v17 = type metadata accessor for ModifiedContent();
  v45[0] = &protocol witness table for PickerStyleConfiguration<A>.Content;
  v45[1] = &protocol witness table for SectionStyleModifier<A>;
  v18 = MEMORY[0x1E697E858];
  v44[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v45);
  v44[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v19 = swift_getWitnessTable(v18, v10, v44);
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for Menu<A, B>, v16);
  v43[1] = &protocol witness table for MenuStyleModifier<A>;
  v20 = swift_getWitnessTable(v18, v17, v43);
  v46 = v10;
  v47 = v17;
  v48 = v19;
  v49 = v20;
  v21 = type metadata accessor for GroupElementsOfContent();
  v22 = type metadata accessor for Group();
  v23 = MEMORY[0x1E697FE48];
  v42 = swift_getWitnessTable(MEMORY[0x1E697FE48], v21);
  v24 = MEMORY[0x1E6981600];
  swift_getWitnessTable(MEMORY[0x1E6981600], v22, &v42);
  v25 = type metadata accessor for _UnaryViewAdaptor();
  v27 = type metadata accessor for PopUpButton(255, a3, a4, v26);
  v28 = swift_getWitnessTable(protocol conformance descriptor for PopUpButton<A>, v27);
  v46 = v10;
  v47 = v27;
  v48 = v19;
  v49 = v28;
  v29 = type metadata accessor for GroupElementsOfContent();
  v30 = type metadata accessor for Group();
  v41 = swift_getWitnessTable(v23, v29);
  swift_getWitnessTable(v24, v30, &v41);
  v31 = type metadata accessor for _UnaryViewAdaptor();
  v32 = type metadata accessor for StaticIf();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v34 = MenuPickerStyle.Body.init(configuration:isBordered:)(OffsetAttribute2, 1);
  LODWORD(v46) = v34;
  BYTE4(v46) = BYTE4(v34) & 1;
  v36 = type metadata accessor for MenuPickerStyle.Body(0, a3, a4, v35);
  swift_getWitnessTable(protocol conformance descriptor for MenuPickerStyle.Body<A>, v36);
  _GraphValue.init<A>(_:)();
  v37 = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_1(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, type metadata accessor for StyleContextAcceptsPredicate<MenuStyleContext>, MEMORY[0x1E69808F0]);
  v38 = MEMORY[0x1E697F380];
  v40[0] = v37;
  v40[1] = swift_getWitnessTable(MEMORY[0x1E697F380], v25);
  v40[2] = swift_getWitnessTable(v38, v31);
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v32, v40);
  static View.makeDebuggableViewList(view:inputs:)();
  return outlined destroy of _ViewListInputs(v51);
}

uint64_t closure #1 in static ListMenuPickerStyle._makeView<A>(value:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = &type metadata for ListMenuPickerStyle;
  v14[1] = a2;
  v14[2] = &protocol witness table for ListMenuPickerStyle;
  v14[3] = a3;
  v12[2] = type metadata accessor for _PickerValue(0, v14);
  v13 = type metadata accessor for PickerStyleConfiguration(0, a2, a3, v8);
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a4, v12, v13, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v14[0];
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ShouldProvideBridgedPopUpButton(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ShouldProvideBridgedPopUpButton and conformance ShouldProvideBridgedPopUpButton();
  PropertyList.subscript.getter();
  return v3;
}

uint64_t NavigationView.internalBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  v9 = *(a1 + 24);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v11 = type metadata accessor for NavigationView.InternalBody(0, v4, v9, v10);
  return (*(v5 + 32))(a2 + *(v11 + 36), v8, v4);
}

uint64_t NavigationView.InternalBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v4 = *(a1 + 16);
  v5 = lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content();
  v6 = *(a1 + 24);
  v30[0] = &type metadata for _NavigationViewStyleConfiguration.Content;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v6;
  type metadata accessor for StaticSourceWriter(255, v30);
  v7 = type metadata accessor for ModifiedContent();
  v23[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v25 = v4;
  v26 = v6;
  v27 = v2;
  v17 = lazy protocol witness table accessor for type ResolvedNavigationViewStyle and conformance ResolvedNavigationViewStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for _NavigationViewStyleConfiguration.Content, partial apply for closure #1 in NavigationView.InternalBody.body.getter, v24, &type metadata for ResolvedNavigationViewStyle, &type metadata for _NavigationViewStyleConfiguration.Content, v4, v17);
  v29[0] = v17;
  v29[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v18 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v29);
  MEMORY[0x18D00A570](WitnessTable, v7, &type metadata for NavigationCommonModifier, WitnessTable);
  (*(v23[0] + 8))(v9, v7);
  v20 = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  v28[0] = WitnessTable;
  v28[1] = v20;
  swift_getWitnessTable(v18, v10, v28);
  static ViewBuilder.buildExpression<A>(_:)();
  v21 = *(v11 + 8);
  v21(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v21)(v16, v10);
}

uint64_t closure #1 in NavigationView.InternalBody.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationView.InternalBody(0, v6, v7, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t instantiation function for generic protocol witness table for NavigationView<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for NavigationView<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for NavigationView.InternalBody(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for NavigationView.InternalBody(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-10 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    outlined copy of Environment<Selector?>.Content(*a2, v11);
    *a1 = v10;
    *(a1 + 8) = v11;
    (*(v5 + 16))((a1 + v6 + 9) & ~v6, (a2 + v6 + 9) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for NavigationView.InternalBody(uint64_t a1, uint64_t a2)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 9) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithCopy for NavigationView.InternalBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  *a1 = v6;
  *(a1 + 8) = v7;
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 16))((*(v8 + 80) + 9 + a1) & ~*(v8 + 80), (*(v8 + 80) + 9 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t assignWithCopy for NavigationView.InternalBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 24))((*(v10 + 80) + 9 + a1) & ~*(v10 + 80), (*(v10 + 80) + 9 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t assignWithTake for NavigationView.InternalBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Bool>.Content(v8, v9);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 40))((*(v10 + 80) + 9 + a1) & ~*(v10 + 80), (a2 + *(v10 + 80) + 9) & ~*(v10 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationView.InternalBody(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      v15 = *(a1 + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for NavigationView.InternalBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 9) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 9] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = a2 - 255;
  }

  else
  {
    a1[8] = -a2;
  }
}

CGFloat specialized Sequence<>.reduceBoundingBox(_:)(uint64_t a1, CGFloat a2, CGFloat y, CGFloat width, CGFloat height)
{
  v10 = type metadata accessor for IntelligenceElement();
  v11 = *(v10 - 8);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*&width & 0x7FF0000000000000) == 0 && (*&width & 0xFFFFFFFFFFFFFLL) != 0 || (~*&height & 0x7FF0000000000000) == 0 && (*&height & 0xFFFFFFFFFFFFFLL) != 0)
  {
    a2 = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    v18 = *(v11 + 16);
    v16 = v11 + 16;
    v17 = v18;
    v19 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v20 = *(v16 + 56);
    do
    {
      v17(v14, v19, v10, v12);
      IntelligenceElement.boundingBox.getter();
      v29.origin.x = v21;
      v29.origin.y = v22;
      v29.size.width = v23;
      v29.size.height = v24;
      v27.origin.x = a2;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v28 = CGRectUnion(v27, v29);
      a2 = v28.origin.x;
      y = v28.origin.y;
      width = v28.size.width;
      height = v28.size.height;
      (*(v16 - 8))(v14, v10);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  return a2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScrapedImageProperties(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ArchivableScrapedItem(CGRect *a1, CGRect *a2, uint64_t a3)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    return (specialized static ArchivableScrapedItem.Content.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) != 0 && *(&a1->origin.x + *(a3 + 24)) == *(&a2->origin.x + *(a3 + 24));
  }

  return result;
}

uint64_t _s7SwiftUI21ArchivableScrapedItemV11makeElement2in21UIIntelligenceSupport012IntelligenceG0VAA0K7ContextVyxG_tAA0D12ContentErrorOYKAA0K4HostRzlF@<X0>(_BYTE *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IntelligenceElement.Content();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14[-v11];
  result = _s7SwiftUI21ArchivableScrapedItemV7content2in21UIIntelligenceSupport19IntelligenceElementV7ContentOAA0J7ContextVyxG_tAA0dL5ErrorOYKAA0J4HostRzlF(&v15, &v14[-v11]);
  if (v3)
  {
    *a2 = v15;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    IntelligenceElement.init(boundingBox:visibleRect:content:subelements:)();
    _s7SwiftUI21ArchivableScrapedItemV15populateElement_7contexty21UIIntelligenceSupport012IntelligenceG0Vz_AA0K7ContextVyxGtAA0D12ContentErrorOYKAA0K4HostRzlF(a3);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t _s7SwiftUI21ArchivableScrapedItemV7content2in21UIIntelligenceSupport19IntelligenceElementV7ContentOAA0J7ContextVyxG_tAA0dL5ErrorOYKAA0J4HostRzlF@<X0>(_BYTE *a1@<X3>, uint64_t a2@<X8>)
{
  v69 = a1;
  v75 = a2;
  v2 = type metadata accessor for IntelligenceElement.ControlEnablement();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntelligenceElement.Button.Role();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v57 - v7;
  v8 = MEMORY[0x1E69E6720];
  type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(0, &lazy cache variable for type metadata for IntelligenceElement?, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v57 - v12;
  v61 = type metadata accessor for IntelligenceElement.Button();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(0, &lazy cache variable for type metadata for IntelligenceImage?, MEMORY[0x1E69DB9D8], v8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v74 = &v57 - v15;
  type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(0, &lazy cache variable for type metadata for IntelligenceCollectionRequest.TextOptions?, MEMORY[0x1E69DBCF8], v8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v73 = &v57 - v17;
  type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(0, &lazy cache variable for type metadata for IntelligenceElement.Text.Editable?, MEMORY[0x1E69DBB50], v8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v72 = &v57 - v19;
  v20 = type metadata accessor for AttributedString();
  v70 = *(v20 - 8);
  v71 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ScrapedTextProperties(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for IntelligenceCollectionRequest();
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntelligenceFragmentCollector.context.getter();
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v31 = v30;
  dispatch thunk of IntelligenceCollectionContext.request.getter();
  __swift_destroy_boxed_opaque_existential_1(v78);
  v32 = type metadata accessor for ArchivableScrapedItem(0);
  outlined init with copy of ArchivableScrapedItem.Content(v76 + *(v32 + 20), v28, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v79 + 8))(v30, v77);
      outlined destroy of ArchivableScrapedItem.Content(v28, type metadata accessor for ArchivableScrapedItem.Content);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v34 = *v28;
        if (IntelligenceCollectionRequest.includeElements.getter())
        {
          v35 = type metadata accessor for IntelligenceElement();
          v36 = *(*(v35 - 8) + 56);
          v36(v58, 1, 1, v35);
          v36(v60, 1, 1, v35);
          v38 = v64;
          v37 = v65;
          v39 = v62;
          (*(v64 + 104))(v62, **(&unk_1E72389F0 + v34), v65);
          (*(v38 + 32))(v63, v39, v37);
          (*(v67 + 104))(v66, *MEMORY[0x1E69DBAB8], v68);
          v40 = v57;
          IntelligenceElement.Button.init(title:image:role:enablement:)();
          (*(v79 + 8))(v30, v77);
          v41 = v75;
          (*(v59 + 32))(v75, v40, v61);
          v42 = MEMORY[0x1E69DBBD8];
LABEL_14:
          v54 = *v42;
          v55 = type metadata accessor for IntelligenceElement.Content();
          return (*(*(v55 - 8) + 104))(v41, v54, v55);
        }

        LOBYTE(v78[0]) = 0;
        lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
        swift_willThrowTypedImpl();
        result = (*(v79 + 8))(v30, v77);
        goto LABEL_19;
      }

      (*(v79 + 8))(v30, v77);
    }

    v42 = MEMORY[0x1E69DBBC0];
    v41 = v75;
    goto LABEL_14;
  }

  v44 = v70;
  v43 = v71;
  v45 = v25;
  v47 = v72;
  v46 = v73;
  v48 = v74;
  if (EnumCaseMultiPayload)
  {
    if (IntelligenceCollectionRequest.includeElements.getter())
    {
      v53 = type metadata accessor for IntelligenceImage();
      (*(*(v53 - 8) + 56))(v48, 1, 1, v53);
      v41 = v75;
      IntelligenceElement.Image.init(name:textDescription:image:)();
      (*(v79 + 8))(v31, v77);
      v42 = MEMORY[0x1E69DBBD0];
      goto LABEL_14;
    }

    LOBYTE(v78[0]) = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_willThrowTypedImpl();
  }

  else
  {
    v49 = v28;
    v50 = v45;
    outlined init with take of ScrapedTextProperties(v49, v45, type metadata accessor for ScrapedTextProperties);
    if (IntelligenceCollectionRequest.includeElements.getter())
    {
      (*(v44 + 16))(v22, v50, v43);
      v51 = type metadata accessor for IntelligenceElement.Text.Editable();
      (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
      v52 = type metadata accessor for IntelligenceCollectionRequest.TextOptions();
      (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
      v41 = v75;
      IntelligenceElement.Text.init(attributedText:editable:textOptions:)();
      outlined destroy of ArchivableScrapedItem.Content(v50, type metadata accessor for ScrapedTextProperties);
      (*(v79 + 8))(v31, v77);
      v42 = MEMORY[0x1E69DBBC8];
      goto LABEL_14;
    }

    LOBYTE(v78[0]) = 0;
    lazy protocol witness table accessor for type ScrapedContentError and conformance ScrapedContentError();
    swift_willThrowTypedImpl();
    outlined destroy of ArchivableScrapedItem.Content(v50, type metadata accessor for ScrapedTextProperties);
  }

  result = (*(v79 + 8))(v31, v77);
LABEL_19:
  *v69 = 0;
  return result;
}

uint64_t _s7SwiftUI21ArchivableScrapedItemV15populateElement_7contexty21UIIntelligenceSupport012IntelligenceG0Vz_AA0K7ContextVyxGtAA0D12ContentErrorOYKAA0K4HostRzlF(uint64_t a1)
{
  v12 = a1;
  v2 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntelligenceCollectionRequest();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntelligenceFragmentCollector.context.getter();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  dispatch thunk of IntelligenceCollectionContext.request.getter();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = type metadata accessor for ArchivableScrapedItem(0);
  outlined init with copy of ArchivableScrapedItem.Content(v1 + *(v9 + 20), v4, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    (*(v6 + 8))(v8, v5);
    return outlined destroy of ArchivableScrapedItem.Content(v4, type metadata accessor for ArchivableScrapedItem.Content);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return (*(v6 + 8))(v8, v5);
    }

    if (IntelligenceCollectionRequest.includeAccessibilityProperties.getter())
    {
      IntelligenceElement.accessibilityLabel.setter();
      return (*(v6 + 8))(v8, v5);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t ArchivableScrapedItem.children<A, B>(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for ScrapedContentTree.Node(255, a3, a3, a4);
  v6 = type metadata accessor for Array();
  type metadata accessor for IntelligenceElement();
  swift_getWitnessTable(MEMORY[0x1E69E6328], v6);
  return Sequence.compactMap<A>(_:)();
}

uint64_t closure #1 in ArchivableScrapedItem.children<A, B>(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = type metadata accessor for ScrapedContentTree.Node(0, a3, a3, a4);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(v19 + 16))(&v23 - v17, a1, v16);
  v20 = *(a2 + 32);

  _s21UIIntelligenceSupport19IntelligenceElementV7SwiftUIE4node7contextAcD18ScrapedContentTreeV4NodeVyx_G_AD0C7ContextVyq_GtAD0iJ5ErrorOYKcAD0cD11ConvertibleRzAD0C4HostR_r0_lufC(v18, a2, a3, a4, a5, a6, &v24, a7);
  v21 = type metadata accessor for IntelligenceElement();
  return (*(*(v21 - 8) + 56))(a7, v7 != 0, 1, v21);
}

uint64_t ArchivableScrapedItem.coalesceElement(_:into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceElement.Content();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ArchivableScrapedItem.Content(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArchivableScrapedItem(0);
  outlined init with copy of ArchivableScrapedItem.Content(v2 + *(v14 + 20), v13, type metadata accessor for ArchivableScrapedItem.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    IntelligenceElement.content.getter();
    (*(v5 + 104))(v7, *MEMORY[0x1E69DBBC0], v4);
    v17 = MEMORY[0x18D001120](v10, v7);
    v18 = *(v5 + 8);
    v18(v7, v4);
    v18(v10, v4);
    if (v17)
    {
      IntelligenceElement.content.getter();
      IntelligenceElement.content.setter();
      type metadata accessor for _ContiguousArrayStorage<IntelligenceElement>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IntelligenceElement>, MEMORY[0x1E69DBC20], MEMORY[0x1E69E6F90]);
      v19 = type metadata accessor for IntelligenceElement();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_18CD63400;
      (*(v20 + 16))(v22 + v21, a2, v19);
      IntelligenceElement.boundingBox.getter();
      specialized Sequence<>.reduceBoundingBox(_:)(v22, v23, v24, v25, v26);
      swift_setDeallocating();
      (*(v20 + 8))(v22 + v21, v19);
      swift_deallocClassInstance();
      IntelligenceElement.boundingBox.setter();
      return 1;
    }

    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of ArchivableScrapedItem.Content(v13, type metadata accessor for ArchivableScrapedItem.Content);
    return 0;
  }

  outlined destroy of ArchivableScrapedItem.Content(v13, type metadata accessor for ArchivableScrapedItem.Content);
  IntelligenceElement.accessibilityLabel.getter();
  if (v16)
  {

    return 0;
  }

  IntelligenceElement.accessibilityLabel.getter();
  IntelligenceElement.accessibilityLabel.setter();
  return 1;
}

uint64_t _s7SwiftUI21ArchivableScrapedItemVAA30IntelligenceElementConvertibleA2aDP04makeG02in21UIIntelligenceSupport0fG0VAA0F7ContextVyqd__G_tAA0D12ContentErrorOYKAA0F4HostRd__lFTW@<X0>(_BYTE *a2@<X3>, uint64_t a3@<X8>)
{
  result = _s7SwiftUI21ArchivableScrapedItemV11makeElement2in21UIIntelligenceSupport012IntelligenceG0VAA0K7ContextVyxG_tAA0D12ContentErrorOYKAA0K4HostRzlF(&v6, a3);
  if (v3)
  {
    *a2 = v6;
  }

  return result;
}

void *ScrapedContentTree<A>.init<A>(archiving:host:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v46 = a3;
  *&v47 = a4;
  v48 = a2;
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node?(0, a5);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node(0);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  *&v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v39 - v13;
  v15 = *a1;
  v14 = a1[1];
  if (*a1 >> 62)
  {
    goto LABEL_42;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = 0;
    v43 = v15 & 0xFFFFFFFFFFFFFF8;
    v44 = v15 & 0xC000000000000001;
    v19 = (v41 + 48);
    v39 = v10;
    v42 = v16;
    do
    {
      if (v44)
      {
        v20 = MEMORY[0x18D00E9C0](v18, v15);
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v18 >= *(v43 + 16))
        {
          goto LABEL_40;
        }

        v20 = *(v15 + 8 * v18 + 32);

        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          v16 = __CocoaSet.count.getter();
          goto LABEL_3;
        }
      }

      *&v50 = v20;
      closure #1 in ScrapedContentTree<A>.init<A>(archiving:host:)(&v50, v48, v46, v47, v8);

      if ((*v19)(v8, 1, v10) == 1)
      {
        outlined destroy of ArchivableScrapedItem.Content(v8, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node?);
      }

      else
      {
        v22 = v40;
        outlined init with take of ScrapedTextProperties(v8, v40, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
        outlined init with take of ScrapedTextProperties(v22, v45, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        outlined init with take of ScrapedTextProperties(v45, v17 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, type metadata accessor for ScrapedContentTree<ArchivableScrapedItem>.Node);
        v10 = v39;
      }

      ++v18;
    }

    while (v21 != v42);
  }

  swift_bridgeObjectRelease_n();
  v25 = *(v14 + 16);
  if (v25)
  {
    v51[0] = MEMORY[0x1E69E7CC0];
    v8 = v51;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = 0;
    v27 = v51[0];
    while (v26 < *(v14 + 16))
    {
      v45 = *(v14 + 16 * v26 + 32);
      v49 = v45;

      closure #2 in ScrapedContentTree<A>.init<A>(archiving:host:)(&v49, v48, v46, v47, &v50);
      v8 = v49;

      v28 = v50;
      v51[0] = v27;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      v10 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v8 = v51;
        v45 = v50;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v28 = v45;
        v27 = v51[0];
      }

      ++v26;
      *(v27 + 16) = v10;
      *(v27 + 16 * v30 + 32) = v28;
      if (v25 == v26)
      {

        goto LABEL_27;
      }
    }

    goto LABEL_41;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v31 = 0;
  v32 = *(v27 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (v32 != v31)
  {
    v14 = v31;
    if (v31 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }

    v33 = *(v27 + 16 * v31 + 40);
    if (!*(*(v27 + 16 * v31 + 32) + 16))
    {
      ++v31;
      if (!*(v33 + 16))
      {
        continue;
      }
    }

    v47 = *(v27 + 16 * v14 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1);
      v8 = v50;
    }

    v35 = v47;
    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    if (v37 >= v36 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v35 = v47;
      v8 = v50;
    }

    v31 = v14 + 1;
    *(v8 + 2) = v37 + 1;
    *&v8[16 * v37 + 32] = v35;
  }

  swift_unknownObjectRelease();
  return v17;
}