uint64_t initializeWithTake for PlatformTickLabelItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v5;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  v8 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v8;
  v9 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v9;
  v10 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v10;
  v11 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v11;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  v12 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v12;
  v13 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v13;
  v14 = *(a2 + 456);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 456) = v14;
  *(a1 + 472) = *(a2 + 472);
  v15 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v15;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 489) = *(a2 + 489);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  memcpy((a1 + 536), (a2 + 536), 0x130uLL);
  v16 = *(a2 + 856);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 856) = v16;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 888) = *(a2 + 888);
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v17 = type metadata accessor for PlatformItemList.Item(0);
  v18 = v17[28];
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  v21 = type metadata accessor for CommandOperation(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21))
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v19, v20, *(*(v23 - 8) + 64));
  }

  else
  {
    *v19 = *v20;
    v24 = *(v21 + 20);
    v25 = &v19[v24];
    v26 = &v20[v24];
    v27 = *&v20[v24 + 16];
    *v25 = *&v20[v24];
    *(v25 + 1) = v27;
    v28 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 32))(&v25[v28], &v26[v28], v29);
    *&v19[*(v21 + 24)] = *&v20[*(v21 + 24)];
    (*(v22 + 56))(v19, 0, 1, v21);
  }

  *(a1 + v17[29]) = *(a2 + v17[29]);
  *(a1 + v17[30]) = *(a2 + v17[30]);
  *(a1 + v17[31]) = *(a2 + v17[31]);
  *(a1 + v17[32]) = *(a2 + v17[32]);
  *(a1 + v17[33]) = *(a2 + v17[33]);
  *(a1 + v17[34]) = *(a2 + v17[34]);
  return a1;
}

uint64_t assignWithTake for PlatformTickLabelItem(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 286;
  v5 = *a1;
  *a1 = *a2;

  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v8;

  *(a1 + 56) = *(a2 + 56);
  if (*(a1 + 192) >> 1 == 4294967294)
  {
LABEL_4:
    v9 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v9;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 235) = *(a2 + 235);
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    v13 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v13;
    if (!*(a1 + 264))
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (*(a2 + 192) >> 1 == 4294967294)
  {
    outlined destroy of Image.Resolved(a1 + 64);
    goto LABEL_4;
  }

  v14 = *(a1 + 72);
  if (v14 != 255)
  {
    v15 = *(a2 + 72);
    if (v15 != 255)
    {
      v16 = *(a1 + 64);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v15;
      outlined consume of GraphicsImage.Contents(v16, v14);
      goto LABEL_11;
    }

    outlined destroy of GraphicsImage.Contents(a1 + 64);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
LABEL_11:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 169) = *(a2 + 169);
  v17 = *(a1 + 192);
  *(a1 + 170) = *(a2 + 170);
  if (v17 >> 1 == 0xFFFFFFFF)
  {
LABEL_14:
    v19 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v19;
    goto LABEL_16;
  }

  v18 = *(a2 + 192);
  if (v18 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 176);
    goto LABEL_14;
  }

  v20 = *(a2 + 200);
  v21 = *(a1 + 176);
  v22 = *(a1 + 184);
  v23 = *(a1 + 200);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v18;
  *(a1 + 200) = v20;
  outlined consume of AccessibilityImageLabel(v21, v22, v17, v23);
LABEL_16:
  *(a1 + 208) = *(a2 + 208);
  swift_unknownObjectRelease();
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  v24 = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 250) = *(a2 + 250);
  if (!*(a1 + 264))
  {
LABEL_21:
    v28 = *(a2 + 272);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = v28;
    *(a1 + 288) = *(a2 + 288);
    goto LABEL_26;
  }

LABEL_17:
  v25 = *(a2 + 264);
  if (!v25)
  {
    outlined destroy of Image.NamedResolved(a1 + 256);
    goto LABEL_21;
  }

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = v25;

  v26 = *(a1 + 272);
  v27 = *(a2 + 272);
  if (v26 >= 2)
  {
    if (v27 >= 2)
    {
      *(a1 + 272) = v27;
    }

    else
    {

      *(a1 + 272) = *(a2 + 272);
    }
  }

  else
  {
    *(a1 + 272) = v27;
  }

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 284) = *(a2 + 284);
  *(a1 + 286) = *v4;
  *(a1 + 288) = *(a2 + 288);

  *(a1 + 296) = *(a2 + 296);

LABEL_26:
  v29 = *(a1 + 336);
  if (v29 >> 2 == 0xFFFFFFFF)
  {
LABEL_29:
    v31 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v31;
    *(a1 + 400) = *(a2 + 400);
    v32 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v32;
    v33 = *(a2 + 352);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v33;
    goto LABEL_31;
  }

  v30 = *(a2 + 336);
  if (v30 >> 2 == 0xFFFFFFFF)
  {
    outlined destroy of PlatformItemList.Item.SystemItem(a1 + 304);
    goto LABEL_29;
  }

  v34 = *(a1 + 304);
  v35 = *(a1 + 312);
  v36 = *(a1 + 320);
  v37 = *(a1 + 328);
  v38 = *(a1 + 344);
  v39 = *(a1 + 352);
  v40 = *(a1 + 360);
  v41 = *(a1 + 368);
  v42 = *(a1 + 384);
  v43 = *(a1 + 400);
  v44 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v44;
  *(a1 + 336) = v30;
  v45 = *(v4 + 74);
  *(a1 + 344) = *(v4 + 58);
  *(a1 + 360) = v45;
  v46 = *(v4 + 106);
  *(a1 + 376) = *(v4 + 90);
  *(a1 + 392) = v46;
  outlined consume of PlatformItemList.Item.SystemItem(v34, v35, v36, v37, v29, v38, v39, v40, v41, *(&v41 + 1), v42, SBYTE8(v42), v43);
LABEL_31:
  v47 = *(a1 + 416);
  if (v47 == 1)
  {
LABEL_34:
    v49 = *(v4 + 138);
    v50 = *(v4 + 170);
    *(a1 + 440) = *(v4 + 154);
    *(a1 + 456) = v50;
    *(a1 + 472) = *(v4 + 186);
    *(a1 + 408) = *(v4 + 122);
    *(a1 + 424) = v49;
    goto LABEL_57;
  }

  v48 = *(a2 + 416);
  if (v48 == 1)
  {
    outlined destroy of PlatformItemList.Item.SelectionBehavior(a1 + 408);
    goto LABEL_34;
  }

  *(a1 + 408) = *(v4 + 122);
  *(a1 + 409) = *(v4 + 123);
  *(a1 + 410) = *(v4 + 124);
  *(a1 + 411) = *(v4 + 125);
  *(a1 + 412) = *(a2 + 412);
  if (v47)
  {
    if (v48)
    {
      v51 = *(a2 + 424);
      *(a1 + 416) = v48;
      *(a1 + 424) = v51;

      goto LABEL_42;
    }
  }

  else if (v48)
  {
    v52 = *(a2 + 424);
    *(a1 + 416) = v48;
    *(a1 + 424) = v52;
    goto LABEL_42;
  }

  *(a1 + 416) = *(a2 + 416);
LABEL_42:
  v53 = *(a2 + 432);
  if (*(a1 + 432))
  {
    if (v53)
    {
      v54 = *(a2 + 440);
      *(a1 + 432) = v53;
      *(a1 + 440) = v54;

      goto LABEL_49;
    }
  }

  else if (v53)
  {
    v55 = *(a2 + 440);
    *(a1 + 432) = v53;
    *(a1 + 440) = v55;
    goto LABEL_49;
  }

  *(a1 + 432) = *(a2 + 432);
LABEL_49:
  v56 = *(a2 + 448);
  if (!*(a1 + 448))
  {
    if (v56)
    {
      v58 = *(a2 + 456);
      *(a1 + 448) = v56;
      *(a1 + 456) = v58;
      goto LABEL_56;
    }

LABEL_55:
    *(a1 + 448) = *(a2 + 448);
    goto LABEL_56;
  }

  if (!v56)
  {

    goto LABEL_55;
  }

  v57 = *(a2 + 456);
  *(a1 + 448) = v56;
  *(a1 + 456) = v57;

LABEL_56:
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 472) = *(a2 + 472);
LABEL_57:
  v59 = *(a2 + 488);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 488) = v59;

  *(a1 + 496) = *(a2 + 496);
  *(a1 + 504) = *(a2 + 504);
  v60 = *(a2 + 512);
  if (*(a1 + 512))
  {
    if (v60)
    {
      v61 = *(a2 + 520);
      *(a1 + 512) = v60;
      *(a1 + 520) = v61;

      goto LABEL_64;
    }
  }

  else if (v60)
  {
    v62 = *(a2 + 520);
    *(a1 + 512) = v60;
    *(a1 + 520) = v62;
    goto LABEL_64;
  }

  *(a1 + 512) = *(a2 + 512);
LABEL_64:
  *(a1 + 528) = *(a2 + 528);
  if (!*(a1 + 816))
  {
LABEL_71:
    memcpy((a1 + 536), (a2 + 536), 0x130uLL);
    goto LABEL_83;
  }

  if (!*(a2 + 816))
  {
    outlined destroy of PlatformItemList.Item.Accessibility(a1 + 536);
    goto LABEL_71;
  }

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 544) = *(a2 + 544);

  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  v63 = (a1 + 600);
  v64 = (a2 + 600);
  v65 = *(a1 + 624);
  if (v65 == 1)
  {
LABEL_69:
    v67 = *(a2 + 616);
    *v63 = *v64;
    *(a1 + 616) = v67;
    *(a1 + 632) = *(a2 + 632);
    goto LABEL_77;
  }

  v66 = *(a2 + 624);
  if (v66 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 600);
    goto LABEL_69;
  }

  if (v65)
  {
    v68 = (a1 + 600);
    if (v66)
    {
      __swift_destroy_boxed_opaque_existential_1(v68);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v68);
    }
  }

  v69 = *(a2 + 616);
  *v63 = *v64;
  *(a1 + 616) = v69;
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = *(a2 + 640);

LABEL_77:
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 656) = *(a2 + 656);
  v70 = (a1 + 664);
  v71 = (a2 + 664);
  if (*(a1 + 776) != 1)
  {
    v72 = *(a2 + 776);
    if (v72 != 1)
    {
      *v70 = *v71;
      *(a1 + 672) = *(a2 + 672);
      *(a1 + 680) = *(a2 + 680);
      *(a1 + 688) = *(a2 + 688);
      *(a1 + 689) = *(a2 + 689);
      *(a1 + 691) = *(v4 + 405);
      *(a1 + 692) = *(a2 + 692);
      *(a1 + 696) = *(a2 + 696);
      v77 = *(a2 + 720);
      *(a1 + 704) = *(a2 + 704);
      *(a1 + 720) = v77;
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(v4 + 458);
      *(a1 + 745) = *(v4 + 459);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = v72;

      *(a1 + 784) = *(a2 + 784);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      goto LABEL_82;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 664);
  }

  v73 = *(a2 + 776);
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 776) = v73;
  *(a1 + 792) = *(a2 + 792);
  *(a1 + 808) = *(a2 + 808);
  v74 = *(a2 + 712);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 712) = v74;
  v75 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v75;
  v76 = *(a2 + 680);
  *v70 = *v71;
  *(a1 + 680) = v76;
LABEL_82:
  *(a1 + 816) = *(a2 + 816);

  *(a1 + 824) = *(a2 + 824);

  *(a1 + 832) = *(a2 + 832);

LABEL_83:
  v78 = (a1 + 840);
  v79 = (a2 + 840);
  v80 = *(a1 + 864);
  if (v80 == 1)
  {
LABEL_86:
    v82 = *(a2 + 856);
    *v78 = *v79;
    *(a1 + 856) = v82;
    *(a1 + 872) = *(a2 + 872);
    *(a1 + 888) = *(a2 + 888);
    goto LABEL_87;
  }

  v81 = *(a2 + 864);
  if (v81 == 1)
  {
    outlined destroy of PlatformItemList.Item.SecondaryNavigationBehavior(a1 + 840);
    goto LABEL_86;
  }

  if (v80)
  {
    v101 = (a1 + 840);
    if (v81)
    {
      __swift_destroy_boxed_opaque_existential_1(v101);
    }

    else
    {
      outlined destroy of AnyNavigationLinkPresentedValue(v101);
    }
  }

  v115 = *(a2 + 856);
  *v78 = *v79;
  *(a1 + 856) = v115;
  *(a1 + 872) = *(a2 + 872);
  v116 = *(a2 + 880);
  if (*(a1 + 880))
  {
    if (v116)
    {
      v117 = *(a2 + 888);
      *(a1 + 880) = v116;
      *(a1 + 888) = v117;

      goto LABEL_87;
    }
  }

  else if (v116)
  {
    v118 = *(a2 + 888);
    *(a1 + 880) = v116;
    *(a1 + 888) = v118;
    goto LABEL_87;
  }

  *(a1 + 880) = *(a2 + 880);
LABEL_87:
  v83 = *(a1 + 896);
  *(a1 + 896) = *(a2 + 896);

  *(a1 + 904) = *(a2 + 904);
  *(a1 + 912) = *(a2 + 912);

  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);

  *(a1 + 936) = *(a2 + 936);

  *(a1 + 944) = *(a2 + 944);

  *(a1 + 952) = *(a2 + 952);
  *(a1 + 953) = *(a2 + 953);
  v84 = type metadata accessor for PlatformItemList.Item(0);
  v85 = v84[28];
  v86 = (a1 + v85);
  v87 = (a2 + v85);
  v88 = type metadata accessor for CommandOperation(0);
  v89 = *(v88 - 8);
  v90 = *(v89 + 48);
  v91 = v90(v86, 1, v88);
  v92 = v90(v87, 1, v88);
  if (!v91)
  {
    if (!v92)
    {
      *v86 = *v87;
      v102 = *(v88 + 20);
      v103 = &v86[v102];
      v104 = &v87[v102];
      LOBYTE(v102) = v87[v102 + 16];
      v105 = *v103;
      v106 = *(v103 + 1);
      v107 = v103[16];
      *v103 = *v104;
      v103[16] = v102;
      outlined consume of Text.Storage(v105, v106, v107);
      *(v103 + 3) = *(v104 + 3);

      v108 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
      v109 = type metadata accessor for UUID();
      (*(*(v109 - 8) + 40))(&v103[v108], &v104[v108], v109);
      v110 = *(v88 + 24);
      v111 = &v86[v110];
      v112 = &v87[v110];
      v113 = *v112;
      if (*v111)
      {
        if (v113)
        {
          v114 = v112[1];
          *v111 = v113;
          v111[1] = v114;

          goto LABEL_93;
        }
      }

      else if (v113)
      {
        v119 = v112[1];
        *v111 = v113;
        v111[1] = v119;
        goto LABEL_93;
      }

      *v111 = *v112;
      goto LABEL_93;
    }

    outlined destroy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(v86, type metadata accessor for CommandOperation);
    goto LABEL_92;
  }

  if (v92)
  {
LABEL_92:
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
    memcpy(v86, v87, *(*(v99 - 8) + 64));
    goto LABEL_93;
  }

  *v86 = *v87;
  v93 = *(v88 + 20);
  v94 = &v86[v93];
  v95 = &v87[v93];
  v96 = *&v87[v93 + 16];
  *v94 = *&v87[v93];
  *(v94 + 1) = v96;
  v97 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v98 = type metadata accessor for UUID();
  (*(*(v98 - 8) + 32))(&v94[v97], &v95[v97], v98);
  *&v86[*(v88 + 24)] = *&v87[*(v88 + 24)];
  (*(v89 + 56))(v86, 0, 1, v88);
LABEL_93:
  *(a1 + v84[29]) = *(a2 + v84[29]);
  *(a1 + v84[30]) = *(a2 + v84[30]);
  *(a1 + v84[31]) = *(a2 + v84[31]);
  *(a1 + v84[32]) = *(a2 + v84[32]);
  *(a1 + v84[33]) = *(a2 + v84[33]);
  *(a1 + v84[34]) = *(a2 + v84[34]);

  return a1;
}

double destroy for SystemSlider(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1);
  outlined consume of Environment<Bool>.Content(*(a1 + 16), *(a1 + 24));

  v2 = *(a1 + 144);
  if (v2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for SystemSlider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v8;
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;
  *(a1 + 104) = *(a2 + 104);
  v11 = *(a2 + 144);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);

  if (v11)
  {
    v13 = *(a2 + 152);
    v14 = *(a2 + 160);
    *(a1 + 144) = v11;
    *(a1 + 152) = v13;
    v15 = *(a2 + 168);
    *(a1 + 160) = v14;
    *(a1 + 168) = v15;
    v16 = v11;
    v17 = v13;
    v18 = v14;
    v19 = v15;
  }

  else
  {
    v20 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v20;
  }

  v21 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v21;
  v22 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v22;

  return a1;
}

uint64_t assignWithCopy for SystemSlider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v11;
  v12 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v12;

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);

  v13 = (a1 + 144);
  v14 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  v16 = (a2 + 144);
  v15 = *(a2 + 144);
  if (v14)
  {
    if (v15)
    {
      *(a1 + 144) = v15;
      v17 = v15;

      v18 = *(a1 + 152);
      v19 = *(a2 + 152);
      *(a1 + 152) = v19;
      v20 = v19;

      v21 = *(a1 + 160);
      v22 = *(a2 + 160);
      *(a1 + 160) = v22;
      v23 = v22;

      v24 = *(a1 + 168);
      v25 = *(a2 + 168);
      *(a1 + 168) = v25;
      v26 = v25;
    }

    else
    {
      outlined destroy of AccessibilityBoundedNumber(a1 + 144);
      v34 = *(a2 + 160);
      *v13 = *v16;
      *(a1 + 160) = v34;
    }
  }

  else if (v15)
  {
    *(a1 + 144) = v15;
    v27 = *(a2 + 152);
    *(a1 + 152) = v27;
    v28 = *(a2 + 160);
    *(a1 + 160) = v28;
    v29 = *(a2 + 168);
    *(a1 + 168) = v29;
    v30 = v15;
    v31 = v27;
    v32 = v28;
    v33 = v29;
  }

  else
  {
    v35 = *(a2 + 160);
    *v13 = *v16;
    *(a1 + 160) = v35;
  }

  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  return a1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t assignWithTake for SystemSlider(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  outlined consume of Environment<Bool>.Content(v7, v8);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;

  *(a1 + 128) = *(a2 + 128);

  v11 = *(a2 + 144);
  v12 = *(a1 + 144);
  *(a1 + 136) = *(a2 + 136);
  if (!v12)
  {
    goto LABEL_5;
  }

  if (!v11)
  {
    outlined destroy of AccessibilityBoundedNumber(a1 + 144);
LABEL_5:
    v16 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v16;
    goto LABEL_6;
  }

  *(a1 + 144) = v11;

  v13 = *(a1 + 152);
  *(a1 + 152) = *(a2 + 152);

  v14 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);

  v15 = *(a1 + 168);
  *(a1 + 168) = *(a2 + 168);

LABEL_6:
  *(a1 + 176) = *(a2 + 176);

  *(a1 + 184) = *(a2 + 184);

  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  return a1;
}

uint64_t getEnumTagSinglePayload for SystemSlider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemSlider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [SliderTick<Double>] and conformance [A](unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)>, type metadata accessor for (ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>, ModifiedContent<PlatformItemListReader<AllPlatformItemListFlags, ModifiedContent<ModifiedContent<ModifiedContent<SystemSlider, _FrameLayout>, StaticIf<Solarium, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, OutsetByRowInsets, EmptyModifier>, EmptyModifier>>, AccessibilityProxyTransformModifier<Never, SliderStyleConfiguration.Label>>, ModifiedContent<ForEach<[SliderTick<Double>], SliderTick<Double>.ID, AnyView?>, _PreferenceTransformModifier<PlatformItemList.Key>>>, ScrollEdgeEffectTagModifier>, ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MaximumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t specialized SystemSlider._overrideSizeThatFits(_:in:uiView:)(uint64_t *a1, __n128 a2)
{
  v3 = _ProposedSize.width.getter();
  if ((v4 & 1) == 0)
  {
    *a1 = v3;
  }

  result = _ProposedSize.height.getter();
  if ((v6 & 1) == 0)
  {
    a1[1] = result;
  }

  return result;
}

uint64_t outlined destroy of Image.Resolved?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<PlatformSliderStyle.ValueLabel<SliderStyleConfiguration.MinimumValueLabel>, _DiscreteSymbolEffectModifier<UInt32>>, ScrollEdgeEffectTagModifier>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for StyleContextAcceptsPredicate<AnyListStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t EnvironmentValues.isSceneCaptured.getter()
{
  v1 = *(v0 + 8);
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey, type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup);
  lazy protocol witness table accessor for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>();
  if (v1)
  {

    PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)();
  }

  else
  {
    PropertyList.valueWithSecondaryLookup<A>(_:)();
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>()
{
  result = lazy protocol witness table cache variable for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>;
  if (!lazy protocol witness table cache variable for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>)
  {
    type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(255, &lazy cache variable for type metadata for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey, type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup);
    result = swift_getWitnessTable(protocol conformance descriptor for UITraitBridgedEnvironmentPropertyKeyLookup<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>);
  }

  return result;
}

void key path getter for EnvironmentValues.isSceneCaptured : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey, type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup);
  lazy protocol witness table accessor for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>();
  if (v3)
  {

    PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)();
  }

  else
  {
    PropertyList.valueWithSecondaryLookup<A>(_:)();
  }

  *a2 = v4;
}

double (*EnvironmentValues.isSceneCaptured.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = *(v1 + 8);
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey, type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup);
  lazy protocol witness table accessor for type UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey> and conformance UITraitBridgedEnvironmentPropertyKeyLookup<A>();
  if (v3)
  {

    PropertyList.Tracker.valueWithSecondaryLookup<A>(_:secondaryLookupHandler:)();
  }

  else
  {
    PropertyList.valueWithSecondaryLookup<A>(_:)();
  }

  *(a1 + 8) = *(a1 + 9);
  return EnvironmentValues.isSceneCaptured.modify;
}

id protocol witness for static UITraitBridgedEnvironmentKey.read(from:) in conformance SceneCaptureStateKey@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 _swiftui_sceneIsCaptured];
  *a2 = result;
  return result;
}

double _s7SwiftUI17EnvironmentValuesV15setBridgedValue33_859636D0EA4E0B7C4D7D1B41B613A4D5LL5value3fory0G0Qz_xmtAA07UITraitfC3KeyRzlFAA017SceneCaptureStateV033_EA2D043F682A631C56CB9F812FD70F6FLLV_Tt0g5(char a1)
{
  v2 = *(v1 + 8);
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v3 = v12;
  v4 = *(v12 + 16);
  v5 = v4 + 1;
  v6 = 32;
  while (--v5)
  {
    v7 = *(v12 + v6);
    v6 += 16;
    if (v7 == &unk_1EFFAC620)
    {

      goto LABEL_15;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 + 1, 1, v12);
  }

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v10 = &v3[16 * v9];
  *(v10 + 4) = &unk_1EFFAC620;
  *(v10 + 5) = &protocol witness table for SceneCaptureStateKey;
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<BridgedEnvironmentKeysKey>, &type metadata for BridgedEnvironmentKeysKey, &protocol witness table for BridgedEnvironmentKeysKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

LABEL_15:
  type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneCaptureStateKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneCaptureStateKey>, &unk_1EFFAC620, &protocol witness table for SceneCaptureStateKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

void type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BridgedEnvironmentKeysKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UITraitBridgedEnvironmentPropertyKeyLookup<SceneCaptureStateKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t View.onContinuousHover(coordinateSpace:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  outlined init with copy of CoordinateSpace(a1, v10);
  v11 = a2;
  v12 = a3;
  v13 = 0;

  MEMORY[0x18D00A570](v10, a4, &type metadata for SpatialHoverRegionModifier, a5);
  return outlined destroy of SpatialHoverRegionModifier(v10);
}

uint64_t View.onContinuousHover<A>(coordinateSpace:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  (*(a7 + 8))(v12, a5, a7);
  v12[6] = a2;
  v12[7] = a3;
  v13 = 0;

  MEMORY[0x18D00A570](v12, a4, &type metadata for SpatialHoverRegionModifier, a6);
  return outlined destroy of SpatialHoverRegionModifier(v12);
}

BOOL static HoverPhase.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    return (a6 & 1) != 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a2 == *&a5 && *&a1 == *&a4;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HoverPhase(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *a1 == *a2;
    return v6 == *(a2 + 8) && v7;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HoverPhase(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t getEnumTag for HoverPhase(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for HoverPhase(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t destroy for SpatialHoverRegionModifier(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v2, v3);
}

uint64_t initializeWithCopy for SpatialHoverRegionModifier(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    *(a1 + 40) = 0;
  }

  v6 = *(a2 + 48);
  v7 = *(a2 + 56);
  v8 = *(a2 + 64);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v6, v7);
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  return a1;
}

uint64_t assignWithCopy for SpatialHoverRegionModifier(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1);
    if (*(a2 + 40))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v4;
      *(a1 + 16) = v5;
    }

    else
    {
      v6 = *(a2 + 3);
      *(a1 + 24) = v6;
      *(a1 + 32) = *(a2 + 4);
      (**(v6 - 8))(a1, a2);
      *(a1 + 40) = 0;
    }
  }

  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  v9 = *(a2 + 64);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(v7, v8);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v10, v11);
  return a1;
}

uint64_t assignWithTake for SpatialHoverRegionModifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of CoordinateSpace(a1);
    v4 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v4;
    *(a1 + 25) = *(a2 + 25);
  }

  v5 = *(a2 + 64);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialHoverRegionModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for SpatialHoverRegionModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

double static SpatialHoverRegionModifier._makeView(modifier:inputs:body:)@<D0>(__int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v36 = a2[2];
  v37 = v5;
  v7 = a2[3];
  v38 = a2[4];
  v8 = a2[1];
  v34 = *a2;
  v35 = v8;
  v30 = v36;
  v31 = v7;
  v32 = a2[4];
  v39 = *(a2 + 20);
  v33 = *(a2 + 20);
  v28 = v34;
  v29 = v6;
  a3(&v18);
  if (specialized static EventBindingManager.current.getter())
  {
    *&v28 = v37;
    DWORD2(v28) = DWORD2(v37);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      type metadata accessor for HoverResponder(0);
      swift_allocObject();
      outlined init with copy of _ViewInputs(&v34, &v19);
      v17 = HoverResponder.init(inputs:)(&v28);
      OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
      v10 = AGGraphCreateOffsetAttribute2();
      v28 = v18;

      v11 = _ViewOutputs.viewResponders()();

      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      v12 = _ViewInputs.animatedPosition()();
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v13 = HIDWORD(v37);
      v33 = v39;
      v28 = v34;
      v29 = v35;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v33 = v39;
      v28 = v34;
      v29 = v35;
      v15 = _ViewInputs.isEnabled.getter();
      v20 = v10;
      v21 = 1;
      v19 = v17;
      v22 = OffsetAttribute2;
      v23 = v11;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      type metadata accessor for [ViewResponder](0);
      lazy protocol witness table accessor for type HoverResponderChild and conformance HoverResponderChild();
      Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of HoverResponderChild(&v19);
      LOBYTE(v28) = 0;
      PreferencesOutputs.subscript.setter();
    }
  }

  *a4 = v18;
  result = *(&v18 + 1);
  a4[1] = *(&v18 + 1);
  return result;
}

unint64_t lazy protocol witness table accessor for type WindowInteractionBehavior.Guts and conformance WindowInteractionBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type WindowInteractionBehavior.Guts and conformance WindowInteractionBehavior.Guts;
  if (!lazy protocol witness table cache variable for type WindowInteractionBehavior.Guts and conformance WindowInteractionBehavior.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowInteractionBehavior.Guts, &type metadata for WindowInteractionBehavior.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowInteractionBehavior.Guts and conformance WindowInteractionBehavior.Guts);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowManagerRole.Guts and conformance WindowManagerRole.Guts()
{
  result = lazy protocol witness table cache variable for type WindowManagerRole.Guts and conformance WindowManagerRole.Guts;
  if (!lazy protocol witness table cache variable for type WindowManagerRole.Guts and conformance WindowManagerRole.Guts)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowManagerRole.Guts, &type metadata for WindowManagerRole.Guts, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowManagerRole.Guts and conformance WindowManagerRole.Guts);
  }

  return result;
}

void View.windowDismissBehavior(_:)()
{
  View.windowDockBehavior(_:)();
}

{
  View.windowDockBehavior(_:)();
}

void View.windowFullScreenBehavior(_:)()
{
  View.windowDockBehavior(_:)();
}

{
  View.windowDockBehavior(_:)();
}

void View.windowResizeBehavior(_:)()
{
  View.windowDockBehavior(_:)();
}

{
  View.windowDockBehavior(_:)();
}

uint64_t outlined destroy of WeakBox<UIWindowScene>?(uint64_t a1)
{
  type metadata accessor for WeakBox<UIWindowScene>?(0, &lazy cache variable for type metadata for WeakBox<UIWindowScene>?, &lazy cache variable for type metadata for WeakBox<UIWindowScene>, &lazy cache variable for type metadata for UIWindowScene, 0x1E69DD2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id key path getter for EnvironmentValues.sceneSession : EnvironmentValues@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

void key path setter for EnvironmentValues.sceneSession : EnvironmentValues(uint64_t a1)
{
  v1 = static os_log_type_t.fault.getter();
  v2 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v1, &dword_18BD4A000, v2, "Setting the scene session is not supported.", 43, 2, MEMORY[0x1E69E7CC0]);
}

void EnvironmentValues.sceneSession.setter(void *a1)
{
  v1 = static os_log_type_t.fault.getter();
  v2 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)(v1, &dword_18BD4A000, v2, "Setting the scene session is not supported.", 43, 2, MEMORY[0x1E69E7CC0]);
}

void EnvironmentValues.sceneSession.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v7 = v2;
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v3, &dword_18BD4A000, v4, "Setting the scene session is not supported.", 43, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = v2;
    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v5, &dword_18BD4A000, v6, "Setting the scene session is not supported.", 43, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance WindowSceneKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of WeakBox<UIWindowScene>?(&static WindowSceneKey.defaultValue, v1, &lazy cache variable for type metadata for WeakBox<UIWindowScene>?, &lazy cache variable for type metadata for WeakBox<UIWindowScene>, &lazy cache variable for type metadata for UIWindowScene, 0x1E69DD2F0);
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ConnectionOptionsKey@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v1 = a1;
  }

  return outlined init with copy of WeakBox<UIWindowScene>?(&static ConnectionOptionsKey.defaultValue, v1, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>?, &lazy cache variable for type metadata for WeakBox<UISceneConnectionOptions>, &lazy cache variable for type metadata for UISceneConnectionOptions, 0x1E69DCE90);
}

uint64_t outlined init with copy of WeakBox<UIWindowScene>?(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  type metadata accessor for WeakBox<UIWindowScene>?(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void type metadata accessor for _PreferenceWritingModifier<RemotePresentationDelayKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<RemotePresentationDelayKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<RemotePresentationDelayKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<RemotePresentationDelayKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<RemotePresentationDelayKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<RemotePresentationDelayKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for _PreferenceWritingModifier<RemotePresentationDelayKey>();
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<RemotePresentationDelayKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t static LabeledContentStyle<>.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

void key path getter for EnvironmentValues.labelsVisibility : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.labelsVisibility : EnvironmentValues(char *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<LabelsVisibilityKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t assignWithCopy for AutomaticLabeledContentStyle(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content();
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Bool>.Content(v5, v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledCon()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabe;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabe)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyMo(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, Empt();
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabe);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyMo(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContent)
  {
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyMod, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, Static, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type LeadingTrailingLabeledContentStyle and conformance LeadingTrailingLabeledContentStyle, &type metadata for LeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContent);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<GroupedFormLa(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticI)
  {
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, &type metadata for GroupedFormLabeledContentUsesLegacyLayout);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticI);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>)
  {
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, &type metadata for ListLabeledContentUsesLegacyLayout);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, lazy protocol witness table accessor for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout, &type metadata for ListLabeledContentUsesLegacyLayout, MEMORY[0x1E6980680]);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout()
{
  result = lazy protocol witness table cache variable for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout;
  if (!lazy protocol witness table cache variable for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListLabeledContentUsesLegacyLayout, &type metadata for ListLabeledContentUsesLegacyLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout);
  }

  return result;
}

void type metadata accessor for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = type metadata accessor for StaticIf();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, lazy protocol witness table accessor for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout, &type metadata for GroupedFormLabeledContentUsesLegacyLayout, MEMORY[0x1E6980680]);
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout()
{
  result = lazy protocol witness table cache variable for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout;
  if (!lazy protocol witness table cache variable for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroupedFormLabeledContentUsesLegacyLayout, &type metadata for GroupedFormLabeledContentUsesLegacyLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>)
  {
    type metadata accessor for LabeledContentStyleConfiguration.Label?(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<ListLabeledContentStyle>, lazy protocol witness table accessor for type ListLabeledContentStyle and conformance ListLabeledContentStyle, &type metadata for ListLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, Empt()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyMod, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, Static, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, Empt();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, _LabeledContentStyleModifier<AccessibilityLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, Empt()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, Static(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, Sta();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ColumnsFormStyleContext>, _LabeledContentStyleModifier<ColumnarLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, Sta()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<GroupedFormLa(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> M();
    v5[1] = lazy protocol witness table accessor for type StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> M()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformanc;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformanc)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformanc);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>(255, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>>, type metadata accessor for LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, type metadata accessor for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>, MEMORY[0x1E697E830]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>> and conformance <> LabeledContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StaticIf<LabelVisibilityConfigured, LabeledContentStyleConfiguration.Label?, LabeledContentStyleConfiguration.Label>, ModifiedContent<LabeledContentStyleConfiguration.Content, _LabeledContentStyleModifier<AutomaticLabeledContentStyle>>>, StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout> and conformance InvertedViewInputPredicate<A>, &lazy cache variable for type metadata for InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, lazy protocol witness table accessor for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout, &type metadata for ListLabeledContentUsesLegacyLayout);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, &type metadata for ListLabeledContentUsesLegacyLayout);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ListLabeledContentUsesLegacyLayout and conformance ListLabeledContentUsesLegacyLayout();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ListLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>, &type metadata for AnyListStyleContext);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout> and conformance InvertedViewInputPredicate<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout> and conformance InvertedViewInputPredicate<A>, &lazy cache variable for type metadata for InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, lazy protocol witness table accessor for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout, &type metadata for GroupedFormLabeledContentUsesLegacyLayout);
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<GroupedFormLabeledContentUsesLegacyLayout>, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<ListLabeledContentUsesLegacyLayout> and conformance InvertedViewInputPredicate<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _LabeledContentStyleModifier<AutomaticLabeledContentStyle>(255, a2, a3, a4, MEMORY[0x1E6980680]);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = _s7SwiftUI28StyleContextAcceptsPredicateVyAA026AccessibilityRepresentablecD0VGACyxGAA09ViewInputF0AAWlTm_0(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext);
    v5[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<ListLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, &type metadata for GroupedFormLabeledContentUsesLegacyLayout);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type GroupedFormLabeledContentUsesLegacyLayout and conformance GroupedFormLabeledContentUsesLegacyLayout();
    v5[1] = lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<GroupedFormLabeledContentUsesLegacyLayout, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, _LabeledContentStyleModifier<LeadingTrailingLabeledContentStyle>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t _IndefiniteSymbolEffectModifier.isActive.setter(char a1)
{
  result = type metadata accessor for _IndefiniteSymbolEffectModifier(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static _IndefiniteSymbolEffectModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{

  return static _IndefiniteSymbolEffectModifier._makeInputs(modifier:inputs:)(a1, a2, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1EFFACED0);
}

uint64_t _SymbolEffect.init(config:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v250 = a3;
  v251 = a2;
  v216 = type metadata accessor for BreatheSymbolEffect();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v213 = &v203 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v214 = &v203 - v6;
  v224 = type metadata accessor for RotateSymbolEffect();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v218 = &v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v222 = &v203 - v9;
  v221 = type metadata accessor for WiggleSymbolEffect();
  v225 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221);
  v220 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v226 = &v203 - v12;
  v208 = type metadata accessor for DrawOffSymbolEffect();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208);
  v205 = &v203 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v206 = &v203 - v15;
  v212 = type metadata accessor for DrawOnSymbolEffect();
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v209 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v210 = &v203 - v18;
  v229 = type metadata accessor for DisappearSymbolEffect();
  v228 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v227 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v233 = &v203 - v21;
  v232 = type metadata accessor for AppearSymbolEffect();
  v231 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v230 = &v203 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v238 = &v203 - v24;
  v237 = type metadata accessor for ScaleSymbolEffect();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v234 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v235 = &v203 - v27;
  v28 = type metadata accessor for VariableColorSymbolEffect();
  v241 = *(v28 - 8);
  v242 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v239 = &v203 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v240 = &v203 - v31;
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v217 = &v203 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v219 = &v203 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v247 = &v203 - v37;
  v38 = type metadata accessor for BounceSymbolEffect();
  v245 = *(v38 - 8);
  v246 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v243 = &v203 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v244 = &v203 - v41;
  v248 = type metadata accessor for SymbolEffectOptions();
  v42 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248);
  v44 = &v203 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for PulseSymbolEffect();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v203 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v203 - v50;
  v52 = type metadata accessor for SymbolEffectConfiguration.Effect();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v203 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = a1;
  SymbolEffectConfiguration.effect.getter();
  v56 = (*(v53 + 88))(v55, v52);
  if (v56 != *MEMORY[0x1E69821C8])
  {
    v72 = v248;
    v204 = v42;
    v73 = v251;
    if (v56 == *MEMORY[0x1E69821E0])
    {
      (*(v53 + 96))(v55, v52);
      (*(v245 + 32))(v244, v55, v246);
      v74 = v247;
      SymbolEffectOptions.repeat.getter();
      v75 = type metadata accessor for SymbolEffectOptions.RepeatOption();
      v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
      outlined destroy of SymbolEffectOptions.RepeatOption?(v74, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
      if (v76 == 1)
      {
        v77 = 16;
      }

      else
      {
        v86 = SymbolEffectOptions.prefersContinuous.getter();
        v77 = 16;
        if ((v86 & 1) == 0)
        {
          v77 = 0;
        }
      }

      v242 = v77;
      v87 = v44;
      v247 = 0xF000000000000006;
      v88 = v244;
      v89 = v245;
      v90 = v243;
      v91 = v246;
      (*(v245 + 16))(v243, v244, v246);
      v92 = ScaleSymbolEffect.isLayered.getter();
      v262 = (v92 == 2) | v92 & 1;
      v93 = ScaleSymbolEffect.isUp.getter();
      v94 = *(v89 + 8);
      v94(v90, v91);
      v95 = 1;
      if ((v93 & 1) == 0)
      {
        v95 = 2;
      }

      if (v93 == 2)
      {
        v96 = 0;
      }

      else
      {
        v96 = v95;
      }

      v97.n128_f64[0] = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
      v98 = 0x100000000;
      if (!v262)
      {
        v98 = 0;
      }

      v60 = v96 | v242 | v98;
      v99 = v204;
      (*(v204 + 16))(v87, v73, v72, v97);
      v100 = _SymbolEffect.Options.init(_:)(v87, &v256);
      (*(v99 + 8))(v73, v72, v100);
      v101 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v101 - 8) + 8))(v249, v101);
      result = (v94)(v88, v91);
      v67 = 0;
      v69 = v256;
      LOBYTE(v252) = v257;
      v263 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 0x2000;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E69821C0])
    {
      (*(v53 + 96))(v55, v52);
      v79 = v240;
      v78 = v241;
      v80 = v242;
      (*(v241 + 32))(v240, v55, v242);
      v81 = v239;
      (*(v78 + 16))(v239, v79, v80);
      v256 = 0xF000000000000006;
      _SymbolEffect.VariableColorConfiguration.init(_:trigger:)(v81, &v256, &v252);
      v82 = v251;
      v247 = v252;
      v60 = v253;
      v83 = v204;
      (*(v204 + 16))(v44, v251, v72);
      v84 = _SymbolEffect.Options.init(_:)(v44, &v256);
      (*(v83 + 8))(v82, v72, v84);
      v85 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v85 - 8) + 8))(v249, v85);
      result = (*(v78 + 8))(v79, v80);
      v67 = 0;
      v69 = v256;
      v263 = v257;
      v262 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 20480;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E69821D0])
    {
      (*(v53 + 96))(v55, v52);
      v104 = v236;
      v105 = v235;
      v106 = v237;
      (*(v236 + 32))(v235, v55, v237);
      v107 = v234;
      (*(v104 + 16))(v234, v105, v106);
      v108 = ScaleSymbolEffect.isLayered.getter();
      v262 = (v108 == 2) | v108 & 1;
      v109 = ScaleSymbolEffect.isUp.getter();
      v110 = *(v104 + 8);
      v110(v107, v106);
      v111 = 0xFFFFFFFFLL;
      if (v109)
      {
        v111 = 1;
      }

      if (v109 == 2)
      {
        v111 = 0;
      }

      v112 = 0x100000000;
      if (!v262)
      {
        v112 = 0;
      }

      v247 = v112 | v111;
      v113 = v204;
      v114 = v251;
      (*(v204 + 16))(v44, v251, v72);
      v115 = _SymbolEffect.Options.init(_:)(v44, &v256);
      (*(v113 + 8))(v114, v72, v115);
      v116 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v116 - 8) + 8))(v249, v116);
      result = (v110)(v105, v106);
      v60 = 0;
      v67 = 0;
      v69 = v256;
      LOBYTE(v252) = v257;
      v263 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 24576;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E69821D8])
    {
      (*(v53 + 96))(v55, v52);
      v117 = v231;
      v118 = v238;
      v119 = v55;
      v120 = v232;
      (*(v231 + 32))(v238, v119, v232);
      v121 = v230;
      (*(v117 + 16))(v230, v118, v120);
      v122 = ScaleSymbolEffect.isUp.getter();
      v262 = 0;
      v123 = ScaleSymbolEffect.isLayered.getter();
      v124 = *(v117 + 8);
      v124(v121, v120);
      v125 = 0x1000000000002;
      if ((v122 & 1) == 0)
      {
        v125 = 0x1000000000003;
      }

      v126 = 0x100000000;
      if (!v262)
      {
        v126 = 0;
      }

      v127 = 0x10000000000;
      if (!((v123 == 2) | v123 & 1))
      {
        v127 = 0;
      }

      if (v122 == 2)
      {
        v125 = 0x1000000000000;
      }

      v247 = v125 | v126 | v127;
      v128 = v204;
      v129 = v251;
      (*(v204 + 16))(v44, v251, v72);
      v130 = _SymbolEffect.Options.init(_:)(v44, &v256);
      (*(v128 + 8))(v129, v72, v130);
      v131 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v131 - 8) + 8))(v249, v131);
      result = (v124)(v238, v120);
LABEL_48:
      v60 = 0;
      v67 = 0;
      v69 = v256;
      LOBYTE(v252) = v257;
      v263 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 28672;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E6982220])
    {
      (*(v53 + 96))(v55, v52);
      v132 = v228;
      v133 = v233;
      v134 = v55;
      v135 = v229;
      (*(v228 + 32))(v233, v134, v229);
      v136 = v227;
      (*(v132 + 16))(v227, v133, v135);
      v137 = ScaleSymbolEffect.isUp.getter();
      v262 = 0;
      v138 = ScaleSymbolEffect.isLayered.getter();
      v139 = *(v132 + 8);
      v139(v136, v135);
      v140 = 0x1000000000002;
      if (v137)
      {
        v140 = 0x1000000000003;
      }

      v141 = 0x100000000;
      if (!v262)
      {
        v141 = 0;
      }

      v142 = 0x10000000000;
      if (!((v138 == 2) | v138 & 1))
      {
        v142 = 0;
      }

      if (v137 == 2)
      {
        v140 = 0x1000000000000;
      }

      v247 = v140 | v141 | v142;
      v143 = v204;
      v144 = v251;
      (*(v204 + 16))(v44, v251, v72);
      v145 = _SymbolEffect.Options.init(_:)(v44, &v256);
      (*(v143 + 8))(v144, v72, v145);
      v146 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v146 - 8) + 8))(v249, v146);
      result = (v139)(v233, v135);
      goto LABEL_48;
    }

    if (v56 == *MEMORY[0x1E6982210] || v56 == *MEMORY[0x1E6982218])
    {
      goto LABEL_75;
    }

    if (v56 == *MEMORY[0x1E69821F8])
    {
      (*(v53 + 96))(v55, v52);
      v147 = v221;
      (*(v225 + 32))(v226, v55, v221);
      v148 = v219;
      SymbolEffectOptions.repeat.getter();
      v149 = type metadata accessor for SymbolEffectOptions.RepeatOption();
      v150 = 1;
      v151 = (*(*(v149 - 8) + 48))(v148, 1, v149);
      outlined destroy of SymbolEffectOptions.RepeatOption?(v148, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
      if (v151 != 1)
      {
        v150 = SymbolEffectOptions.prefersContinuous.getter();
      }

      v152 = v225;
      v153 = v220;
      (*(v225 + 16))(v220, v226, v147);
      v252 = 0xF000000000000006;
      _SymbolEffect.WiggleConfiguration.init(_:isContinuous:trigger:)(v153, v150 & 1, &v252, &v256);
      v60 = v257;
      v247 = v256;
      v67 = v258 | (v259 << 32);
      v154 = 256;
      if (!v261)
      {
        v154 = 0;
      }

      v68 = v154 | v260 | 0x3000;
      v155 = v204;
      v156 = v251;
      (*(v204 + 16))(v44, v251, v72);
      v157 = _SymbolEffect.Options.init(_:)(v44, &v252);
      (*(v155 + 8))(v156, v72, v157);
      v158 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v158 - 8) + 8))(v249, v158);
      result = (*(v152 + 8))(v226, v147);
      v69 = v252;
      v263 = v253;
      v262 = v255;
      v70 = HIDWORD(v252) | (v253 << 32);
      v71 = v254 | (v255 << 32);
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E69821F0])
    {
      (*(v53 + 96))(v55, v52);
      (*(v223 + 32))(v222, v55, v224);
      v159 = v217;
      SymbolEffectOptions.repeat.getter();
      v160 = type metadata accessor for SymbolEffectOptions.RepeatOption();
      v161 = (*(*(v160 - 8) + 48))(v159, 1, v160);
      outlined destroy of SymbolEffectOptions.RepeatOption?(v159, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
      if (v161 == 1)
      {
        v162 = 16;
      }

      else
      {
        v172 = SymbolEffectOptions.prefersContinuous.getter();
        v162 = 16;
        if ((v172 & 1) == 0)
        {
          v162 = 0;
        }
      }

      v247 = v162;
      v173 = v204;
      v174 = v44;
      v175 = v223;
      v176 = v218;
      v177 = v222;
      v178 = v224;
      (*(v223 + 16))(v218, v222, v224);
      v179 = ScaleSymbolEffect.isLayered.getter();
      v262 = (v179 == 2) | v179 & 1;
      v180 = ScaleSymbolEffect.isUp.getter();
      v181 = *(v175 + 8);
      v181(v176, v178);
      v182 = 1;
      if ((v180 & 1) == 0)
      {
        v182 = 2;
      }

      if (v180 == 2)
      {
        v183 = 0;
      }

      else
      {
        v183 = v182;
      }

      v184.n128_f64[0] = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
      v185 = 0x100000000;
      if (!v262)
      {
        v185 = 0;
      }

      v60 = v183 | v247 | v185;
      v186 = v251;
      (*(v173 + 16))(v174, v251, v72, v184);
      v247 = 0xF000000000000006;
      v187 = _SymbolEffect.Options.init(_:)(v174, &v256);
      (*(v173 + 8))(v186, v72, v187);
      v188 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v188 - 8) + 8))(v249, v188);
      result = (v181)(v177, v178);
      v67 = 0;
      v69 = v256;
      LOBYTE(v252) = v257;
      v263 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 0x4000;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E6982200])
    {
      (*(v53 + 96))(v55, v52);
      v163 = v215;
      v164 = v214;
      v165 = v216;
      (*(v215 + 32))(v214, v55, v216);
      v166 = v213;
      (*(v163 + 16))(v213, v164, v165);
      v256 = 0xF000000000000006;
      _SymbolEffect.BreatheConfiguration.init(_:trigger:)(v166, &v256, &v252);
      v167 = v251;
      v247 = v252;
      v168 = 0x100000000;
      if (!v254)
      {
        v168 = 0;
      }

      v60 = v168 | v253;
      v169 = v204;
      (*(v204 + 16))(v44, v251, v72);
      v170 = _SymbolEffect.Options.init(_:)(v44, &v256);
      (*(v169 + 8))(v167, v72, v170);
      v171 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v171 - 8) + 8))(v249, v171);
      result = (*(v163 + 8))(v164, v165);
      v67 = 0;
      v69 = v256;
      v263 = v257;
      v262 = v258;
      v70 = HIDWORD(v256) | (v257 << 32);
      v71 = HIDWORD(v257) | (v258 << 32);
      v68 = 4096;
      goto LABEL_18;
    }

    if (v56 == *MEMORY[0x1E69821B8])
    {
LABEL_75:
      (*(v204 + 8))(v251, v248);
      v189 = type metadata accessor for SymbolEffectConfiguration();
      (*(*(v189 - 8) + 8))(v249, v189);
      result = (*(v53 + 8))(v55, v52);
      v70 = 0;
      v71 = 0;
      v103 = v250;
      *v250 = 0;
      v103[1] = 0;
      v103[2] = 4294967294;
      v102 = 2;
      goto LABEL_19;
    }

    if (v56 == *MEMORY[0x1E69821E8])
    {
      (*(v53 + 96))(v55, v52);
      v190 = v211;
      v191 = v210;
      v192 = v212;
      (*(v211 + 32))(v210, v55, v212);
      v193 = v209;
      (*(v190 + 16))(v209, v191, v192);
      _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v193, 1, &v252);
    }

    else
    {
      if (v56 != *MEMORY[0x1E6982208])
      {
        goto LABEL_75;
      }

      (*(v53 + 96))(v55, v52);
      v190 = v207;
      v191 = v206;
      v192 = v208;
      (*(v207 + 32))(v206, v55, v208);
      v194 = v205;
      (*(v190 + 16))(v205, v191, v192);
      _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v194, 1, &v252);
    }

    v195 = 0x100000000;
    if (!BYTE4(v252))
    {
      v195 = 0;
    }

    v196 = v195 | v252;
    v197 = 0x10000000000;
    if (!BYTE5(v252))
    {
      v197 = 0;
    }

    v198 = 0x1000000000000;
    if (!BYTE6(v252))
    {
      v198 = 0;
    }

    v247 = v196 | v197 | v198;
    v199 = v204;
    v200 = v251;
    (*(v204 + 16))(v44, v251, v72);
    v201 = _SymbolEffect.Options.init(_:)(v44, &v256);
    (*(v199 + 8))(v200, v72, v201);
    v202 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v202 - 8) + 8))(v249, v202);
    result = (*(v190 + 8))(v191, v192);
    v60 = 0;
    v67 = 0;
    v69 = v256;
    v263 = v257;
    v262 = v258;
    v70 = HIDWORD(v256) | (v257 << 32);
    v71 = HIDWORD(v257) | (v258 << 32);
    v68 = 28672;
    goto LABEL_18;
  }

  (*(v53 + 96))(v55, v52);
  (*(v46 + 32))(v51, v55, v45);
  (*(v46 + 16))(v48, v51, v45);
  v57 = PulseSymbolEffect.isLayered.getter();
  v58 = *(v46 + 8);
  v58(v48, v45);
  v59 = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
  v60 = (v57 == 2) | (v57 & 1);
  v61 = v251;
  v62 = v248;
  (*(v42 + 16))(v44, v251, v248, v59);
  v63 = _SymbolEffect.Options.init(_:)(v44, &v256);
  v64 = *(v42 + 8);
  v247 = 0xF000000000000006;
  v64(v61, v62, v63);
  v65 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v65 - 8) + 8))(v249, v65);
  result = (v58)(v51, v45);
  v67 = 0;
  v68 = 0;
  v69 = v256;
  LOBYTE(v252) = v257;
  v263 = v258;
  v70 = HIDWORD(v256) | (v257 << 32);
  v71 = HIDWORD(v257) | (v258 << 32);
LABEL_18:
  v102 = v68 | (v69 << 32);
  v103 = v250;
  *v250 = v247;
  v103[1] = v60;
  v103[2] = v67;
LABEL_19:
  v103[3] = v102;
  v103[4] = v70;
  *(v103 + 10) = v71;
  *(v103 + 44) = BYTE4(v71);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _IndefiniteSymbolEffectModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _IndefiniteSymbolEffectModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _IndefiniteSymbolEffectModifier(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1EFFACED0);
}

uint64_t _DiscreteSymbolEffectModifier.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymbolEffectConfiguration();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _DiscreteSymbolEffectModifier.config.setter(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEffectConfiguration();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _DiscreteSymbolEffectModifier.options.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for SymbolEffectOptions();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _DiscreteSymbolEffectModifier.options.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = type metadata accessor for SymbolEffectOptions();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static _DiscreteSymbolEffectModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13[0] = *a1;
  type metadata accessor for _DiscreteSymbolEffectModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  v7 = _GraphValue.value.getter();
  v8 = *(a2 + 16);
  swift_beginAccess();
  LODWORD(v8) = *(v8 + 16);
  v13[0] = v7;
  v13[1] = v8;
  v14 = AGMakeUniqueID();
  v16 = type metadata accessor for _DiscreteSymbolEffectModifier.EffectEnvironment(0, a3, a4, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _DiscreteSymbolEffectModifier<A>.EffectEnvironment, v16);
  type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v15, v16, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return _GraphInputs.environment.setter();
}

uint64_t _DiscreteSymbolEffectModifier.EffectEnvironment.modifier.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for _DiscreteSymbolEffectModifier(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

double _DiscreteSymbolEffectModifier.EffectEnvironment.value.getter@<D0>(unint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v34 = a5;
  v33 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SymbolEffectOptions();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SymbolEffectConfiguration();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _DiscreteSymbolEffectModifier(0, a3, a4, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(&v57);
  _DiscreteSymbolEffectModifier.EffectEnvironment.modifier.getter(a3, a4, v20);
  (*(v28 + 16))(v35, v20, v29);
  v21 = *(v12 + 8);
  v21(v20, v11);
  _DiscreteSymbolEffectModifier.EffectEnvironment.modifier.getter(a3, a4, v17);
  (*(v30 + 16))(v36, &v17[*(v11 + 36)], v31);
  v21(v17, v11);
  _DiscreteSymbolEffectModifier.EffectEnvironment.modifier.getter(a3, a4, v14);
  (*(v33 + 16))(v32, &v14[*(v11 + 40)], a3);
  v21(v14, v11);
  AnyEquatable.init<A>(_:)();
  v47 = v37;
  _SymbolEffect.init(config:options:trigger:)(v35, v36, &v47, &v48);
  v22 = v50;
  v23 = v51;
  if ((~v50 & 0xFFFFFFFE) != 0 || (v51 & 0xFEFE) != 2)
  {
    v25 = v48;
    v24 = v49;
    LOBYTE(v47) = v54 & 1;
    v46 = v56 & 1;
    v37 = v48;
    v38 = v49;
    v39 = v50;
    v40 = v51;
    v41 = v52;
    v42 = v53;
    v43 = v54 & 1;
    v44 = v55;
    v45 = v56 & 1;
    EnvironmentValues.appendSymbolEffect(_:for:)();
    outlined consume of SymbolEffect?(v25, v24, v22, v23);
  }

  result = *&v57;
  *v34 = v57;
  return result;
}

uint64_t _SymbolEffect.init(config:options:trigger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v164 = a3;
  v165 = a4;
  v162 = a2;
  v141 = type metadata accessor for BreatheSymbolEffect();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v137 - v7;
  v145 = type metadata accessor for RotateSymbolEffect();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v137 - v10;
  v151 = type metadata accessor for WiggleSymbolEffect();
  v149 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v147 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v137 - v13;
  v14 = type metadata accessor for VariableColorSymbolEffect();
  v154 = *(v14 - 8);
  v155 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v137 - v17;
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v142 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v146 = &v137 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v137 - v23;
  v24 = type metadata accessor for BounceSymbolEffect();
  v25 = *(v24 - 8);
  v158 = v24;
  v159 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v157 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v160 = &v137 - v28;
  v161 = type metadata accessor for SymbolEffectOptions();
  v29 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v31 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PulseSymbolEffect();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v137 - v37;
  v39 = type metadata accessor for SymbolEffectConfiguration.Effect();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *v164;
  v163 = a1;
  v164 = v43;
  SymbolEffectConfiguration.effect.getter();
  v44 = (*(v40 + 88))(v42, v39);
  if (v44 == *MEMORY[0x1E69821C8])
  {
    (*(v40 + 96))(v42, v39);
    (*(v33 + 32))(v38, v42, v32);
    (*(v33 + 16))(v35, v38, v32);
    v45 = PulseSymbolEffect.isLayered.getter();
    v46 = *(v33 + 8);
    v46(v35, v32);
    v47 = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
    v48 = (v45 == 2) | (v45 & 1);
    v50 = v161;
    v49 = v162;
    (*(v29 + 16))(v31, v162, v161, v47);
    v51 = _SymbolEffect.Options.init(_:)(v31, &v170);
    (*(v29 + 8))(v49, v50, v51);
    v52 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v52 - 8) + 8))(v163, v52);
    result = (v46)(v38, v32);
    v54 = 0;
    v55 = 0;
    v56 = v170;
    LOBYTE(v166) = v171;
    v177 = v172;
    v57 = HIDWORD(v170) | (v171 << 32);
    v58 = HIDWORD(v171) | (v172 << 32);
  }

  else
  {
    v59 = v31;
    v60 = v162;
    if (v44 != *MEMORY[0x1E69821E0])
    {
      v85 = v29;
      if (v44 == *MEMORY[0x1E69821C0])
      {
        (*(v40 + 96))(v42, v39);
        v86 = v153;
        v87 = v154;
        v88 = v155;
        (*(v154 + 32))(v153, v42, v155);
        v89 = v152;
        (*(v87 + 16))(v152, v86, v88);
        v170 = v164;
        _SymbolEffect.VariableColorConfiguration.init(_:trigger:)(v89, &v170, &v166);
        v83 = v166;
        v48 = v167;
        v90 = v59;
        v91 = v59;
        v92 = v161;
        (*(v29 + 16))(v91, v60, v161);
        v93 = _SymbolEffect.Options.init(_:)(v90, &v170);
        (*(v29 + 8))(v60, v92, v93);
        v94 = type metadata accessor for SymbolEffectConfiguration();
        (*(*(v94 - 8) + 8))(v163, v94);
        result = (*(v87 + 8))(v86, v88);
        v54 = 0;
        v56 = v170;
        v177 = v171;
        v176 = v172;
        v57 = HIDWORD(v170) | (v171 << 32);
        v58 = HIDWORD(v171) | (v172 << 32);
        v55 = 20480;
      }

      else
      {
        if (v44 == *MEMORY[0x1E69821D0] || v44 == *MEMORY[0x1E69821D8] || v44 == *MEMORY[0x1E6982220] || v44 == *MEMORY[0x1E6982210] || v44 == *MEMORY[0x1E6982218])
        {
          goto LABEL_51;
        }

        v95 = v31;
        if (v44 == *MEMORY[0x1E69821F8])
        {
          (*(v40 + 96))(v42, v39);
          (*(v149 + 32))(v150, v42, v151);
          v96 = v146;
          SymbolEffectOptions.repeat.getter();
          v97 = type metadata accessor for SymbolEffectOptions.RepeatOption();
          v98 = (*(*(v97 - 8) + 48))(v96, 1, v97);
          outlined destroy of SymbolEffectOptions.RepeatOption?(v96, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
          if (v98 == 1)
          {
            v99 = 0;
          }

          else
          {
            v99 = SymbolEffectOptions.prefersContinuous.getter();
          }

          v119 = v164;
          v82 = v165;
          v120 = v161;
          v121 = v147;
          v122 = v149;
          (*(v149 + 16))(v147, v150, v151);
          v166 = v119;
          _SymbolEffect.WiggleConfiguration.init(_:isContinuous:trigger:)(v121, v99 & 1, &v166, &v170);
          v83 = v170;
          v48 = v171;
          v54 = v172 | (v173 << 32);
          v123 = 256;
          if (!v175)
          {
            v123 = 0;
          }

          v55 = v123 | v174 | 0x3000;
          (*(v85 + 16))(v95, v60, v120);
          v124 = _SymbolEffect.Options.init(_:)(v95, &v166);
          (*(v85 + 8))(v60, v120, v124);
          v125 = type metadata accessor for SymbolEffectConfiguration();
          (*(*(v125 - 8) + 8))(v163, v125);
          result = (*(v122 + 8))(v150, v151);
          v56 = v166;
          v177 = v167;
          v176 = v169;
          v57 = HIDWORD(v166) | (v167 << 32);
          v58 = v168 | (v169 << 32);
          goto LABEL_17;
        }

        if (v44 == *MEMORY[0x1E69821F0])
        {
          v160 = v31;
          (*(v40 + 96))(v42, v39);
          v100 = v144;
          v101 = v145;
          (*(v144 + 32))(v148, v42, v145);
          v102 = v142;
          v103 = v60;
          SymbolEffectOptions.repeat.getter();
          v104 = type metadata accessor for SymbolEffectOptions.RepeatOption();
          v105 = (*(*(v104 - 8) + 48))(v102, 1, v104);
          outlined destroy of SymbolEffectOptions.RepeatOption?(v102, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
          v106 = 0;
          if (v105 != 1)
          {
            if (SymbolEffectOptions.prefersContinuous.getter())
            {
              v106 = 16;
            }

            else
            {
              v106 = 0;
            }
          }

          v107 = v143;
          (*(v100 + 16))(v143, v148, v101);
          v108 = ScaleSymbolEffect.isLayered.getter();
          v176 = (v108 == 2) | v108 & 1;
          v109 = ScaleSymbolEffect.isUp.getter();
          v110 = *(v100 + 8);
          v110(v107, v101);
          v111 = 1;
          if ((v109 & 1) == 0)
          {
            v111 = 2;
          }

          if (v109 == 2)
          {
            v112 = 0;
          }

          else
          {
            v112 = v111;
          }

          v113.n128_f64[0] = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
          v114 = 0x100000000;
          if (!v176)
          {
            v114 = 0;
          }

          v48 = v112 | v106 | v114;
          v115 = v160;
          v116 = v161;
          (*(v85 + 16))(v160, v103, v161, v113);
          v117 = _SymbolEffect.Options.init(_:)(v115, &v170);
          (*(v85 + 8))(v103, v116, v117);
          v118 = type metadata accessor for SymbolEffectConfiguration();
          (*(*(v118 - 8) + 8))(v163, v118);
          result = (v110)(v148, v101);
          v54 = 0;
          v56 = v170;
          LOBYTE(v166) = v171;
          v177 = v172;
          v57 = HIDWORD(v170) | (v171 << 32);
          v58 = HIDWORD(v171) | (v172 << 32);
          v55 = 0x4000;
          goto LABEL_16;
        }

        if (v44 != *MEMORY[0x1E6982200])
        {
LABEL_51:
          v135 = outlined consume of _SymbolEffect.Trigger(v164);
          (*(v85 + 8))(v60, v161, v135);
          v136 = type metadata accessor for SymbolEffectConfiguration();
          (*(*(v136 - 8) + 8))(v163, v136);
          result = (*(v40 + 8))(v42, v39);
          v57 = 0;
          v58 = 0;
          v82 = v165;
          *v165 = 0;
          v82[1] = 0;
          v82[2] = 4294967294;
          v84 = 2;
          goto LABEL_18;
        }

        (*(v40 + 96))(v42, v39);
        v126 = v140;
        v127 = v139;
        v128 = v141;
        (*(v140 + 32))(v139, v42, v141);
        v129 = v138;
        (*(v126 + 16))(v138, v127, v128);
        v170 = v164;
        _SymbolEffect.BreatheConfiguration.init(_:trigger:)(v129, &v170, &v166);
        v83 = v166;
        v130 = 0x100000000;
        if (!v168)
        {
          v130 = 0;
        }

        v48 = v130 | v167;
        v131 = v59;
        v132 = v161;
        (*(v85 + 16))(v131, v60, v161);
        v133 = _SymbolEffect.Options.init(_:)(v95, &v170);
        (*(v85 + 8))(v60, v132, v133);
        v134 = type metadata accessor for SymbolEffectConfiguration();
        (*(*(v134 - 8) + 8))(v163, v134);
        result = (*(v126 + 8))(v127, v128);
        v54 = 0;
        v56 = v170;
        v177 = v171;
        v176 = v172;
        v57 = HIDWORD(v170) | (v171 << 32);
        v58 = HIDWORD(v171) | (v172 << 32);
        v55 = 4096;
      }

      v82 = v165;
      goto LABEL_17;
    }

    (*(v40 + 96))(v42, v39);
    v61 = v158;
    (*(v159 + 32))(v160, v42, v158);
    v62 = v156;
    v63 = v60;
    SymbolEffectOptions.repeat.getter();
    v64 = type metadata accessor for SymbolEffectOptions.RepeatOption();
    v65 = (*(*(v64 - 8) + 48))(v62, 1, v64);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v62, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190]);
    v66 = 0;
    v67 = v29;
    if (v65 != 1)
    {
      if (SymbolEffectOptions.prefersContinuous.getter())
      {
        v66 = 16;
      }

      else
      {
        v66 = 0;
      }
    }

    v68 = v159;
    v69 = v157;
    (*(v159 + 16))(v157, v160, v61);
    v70 = ScaleSymbolEffect.isLayered.getter();
    v176 = (v70 == 2) | v70 & 1;
    v71 = ScaleSymbolEffect.isUp.getter();
    v72 = *(v68 + 8);
    v72(v69, v61);
    v73 = 1;
    if ((v71 & 1) == 0)
    {
      v73 = 2;
    }

    if (v71 == 2)
    {
      v74 = 0;
    }

    else
    {
      v74 = v73;
    }

    v75.n128_f64[0] = outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
    v76 = 0x100000000;
    if (!v176)
    {
      v76 = 0;
    }

    v48 = v74 | v66 | v76;
    v77 = v59;
    v78 = v59;
    v79 = v161;
    (*(v67 + 16))(v78, v63, v161, v75);
    v80 = _SymbolEffect.Options.init(_:)(v77, &v170);
    (*(v67 + 8))(v63, v79, v80);
    v81 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v81 - 8) + 8))(v163, v81);
    result = (v72)(v160, v61);
    v54 = 0;
    v56 = v170;
    LOBYTE(v166) = v171;
    v177 = v172;
    v57 = HIDWORD(v170) | (v171 << 32);
    v58 = HIDWORD(v171) | (v172 << 32);
    v55 = 0x2000;
  }

LABEL_16:
  v83 = v164;
  v82 = v165;
LABEL_17:
  v84 = v55 | (v56 << 32);
  *v82 = v83;
  v82[1] = v48;
  v82[2] = v54;
LABEL_18:
  v82[3] = v84;
  v82[4] = v57;
  *(v82 + 10) = v58;
  *(v82 + 44) = BYTE4(v58);
  return result;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _DiscreteSymbolEffectModifier<A>.EffectEnvironment(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _DiscreteSymbolEffectModifier<A>.EffectEnvironment, a1);

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

uint64_t _IndefiniteSymbolEffectModifier.options.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for SymbolEffectOptions();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _IndefiniteSymbolEffectModifier.options.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for SymbolEffectOptions();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t _ConditionalSymbolEffectModifier.condition.setter(char a1)
{
  result = type metadata accessor for _ConditionalSymbolEffectModifier(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static _ConditionalSymbolEffectModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2)
{

  return static _IndefiniteSymbolEffectModifier._makeInputs(modifier:inputs:)(a1, a2, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1EFFACDF0);
}

uint64_t static _IndefiniteSymbolEffectModifier._makeInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = AGMakeUniqueID();
  a3(v10, v8);
  a4();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

double _ConditionalSymbolEffectModifier.EffectEnvironment.value.getter@<D0>(uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v21[1] = a2;
  v22 = a3;
  v3 = type metadata accessor for SymbolEffectOptions();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolEffectConfiguration();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v12 = Value[1];
  *&v41 = *Value;
  *(&v41 + 1) = v12;
  v13 = type metadata accessor for _ConditionalSymbolEffectModifier(0);

  v14 = AGGraphGetValue();
  (*(v8 + 16))(v10, v14, v7);
  v15 = AGGraphGetValue();
  (*(v4 + 16))(v6, v15 + *(v13 + 20), v3);
  v23[0] = *(AGGraphGetValue() + *(v13 + 24)) | 0x8000000000000000;
  _SymbolEffect.init(config:options:trigger:)(v10, v6, v23, &v32);
  v16 = v34;
  v17 = v35;
  if ((~v34 & 0xFFFFFFFE) != 0 || (v35 & 0xFEFE) != 2)
  {
    v19 = v32;
    v18 = v33;
    v31 = v38 & 1;
    v30 = v40 & 1;
    v23[0] = v32;
    v23[1] = v33;
    v23[2] = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38 & 1;
    v28 = v39;
    v29 = v40 & 1;
    EnvironmentValues.appendSymbolEffect(_:for:)();
    outlined consume of SymbolEffect?(v19, v18, v16, v17);
  }

  result = *&v41;
  *v22 = v41;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _ConditionalSymbolEffectModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _IndefiniteSymbolEffectModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _ConditionalSymbolEffectModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _IndefiniteSymbolEffectModifier(a1, a2, a3, a4, protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key, lazy protocol witness table accessor for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment, specialized closure #1 in closure #1 in Attribute.init<A>(_:), &unk_1EFFACDF0);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance _IndefiniteSymbolEffectModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v12 = AGMakeUniqueID();
  a5(v12, v10);
  a6();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t _IndefiniteSymbolEffectModifier.config.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SymbolEffectConfiguration();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _IndefiniteSymbolEffectModifier.config.setter(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEffectConfiguration();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void SymbolEffectTransition.body(content:phase:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = type metadata accessor for SymbolEffectOptions();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for SymbolEffectConfiguration();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v2, v10);
  _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v12, v4 != 1, &v28);
  v14 = v29 | (v30 << 16);
  if ((~(v14 << 32) & 0xFF00000000) != 0)
  {
    v15 = v28 | ((v14 & 0xFFFFFF) << 32) & 0x10101FFFFFFFFLL;
    v20 = type metadata accessor for SymbolEffectTransition(0);
    (*(v6 + 16))(v8, v2 + *(v20 + 20), v5);
    _SymbolEffect.Options.init(_:)(v8, v22);
    v19 = 0;
    v27 = v23;
    v26 = v25;
    v16 = v22[1] | (v23 << 32);
    v17 = v24 | (v25 << 32);
    v18 = (v22[0] << 32) | 0x7000;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 2;
    v19 = 4294967294;
  }

  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 44) = BYTE4(v17);
}

uint64_t _SymbolEffect.HiddenConfiguration.init(_:hidden:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v74 = a3;
  v5 = type metadata accessor for DrawOffSymbolEffect();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v62 - v8;
  v9 = type metadata accessor for DrawOnSymbolEffect();
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v62 - v12;
  v13 = type metadata accessor for DisappearSymbolEffect();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  v19 = type metadata accessor for AppearSymbolEffect();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v26 = type metadata accessor for SymbolEffectConfiguration.Effect();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a1;
  SymbolEffectConfiguration.effect.getter();
  v30 = (*(v27 + 88))(v29, v26);
  if (v30 == *MEMORY[0x1E69821C8] || v30 == *MEMORY[0x1E69821E0] || v30 == *MEMORY[0x1E69821C0] || v30 == *MEMORY[0x1E69821D0])
  {
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69821D8])
  {
    (*(v27 + 96))(v29, v26);
    (*(v20 + 32))(v25, v29, v19);
    (*(v20 + 16))(v22, v25, v19);
    v31 = ScaleSymbolEffect.isUp.getter();
    v32 = v31;
    if (v31)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    LOBYTE(v75) = 0;
    v34 = ScaleSymbolEffect.isLayered.getter();
    v35 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v35 - 8) + 8))(v73, v35);
    v36 = *(v20 + 8);
    v36(v22, v19);
    result = (v36)(v25, v19);
    v38 = (v34 == 2) | v34;
    if (v32 == 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = v33;
    }

    v40 = v72;
    if (v75 == 1)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

  if (v30 != *MEMORY[0x1E6982220])
  {
    if (v30 != *MEMORY[0x1E6982210])
    {
      if (v30 == *MEMORY[0x1E6982218])
      {
        v53 = type metadata accessor for SymbolEffectConfiguration();
        (*(*(v53 - 8) + 8))(v73, v53);
        result = (*(v27 + 8))(v29, v26);
        v39 = 0;
        v41 = v74;
        v40 = v72;
        goto LABEL_29;
      }

      if (v30 != *MEMORY[0x1E69821F8] && v30 != *MEMORY[0x1E69821F0] && v30 != *MEMORY[0x1E6982200] && v30 != *MEMORY[0x1E69821B8])
      {
        if (v30 == *MEMORY[0x1E69821E8])
        {
          (*(v27 + 96))(v29, v26);
          v57 = v67;
          v56 = v68;
          v58 = v69;
          (*(v68 + 32))(v67, v29, v69);
          v59 = v66;
          (*(v56 + 16))(v66, v57, v58);
          _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v59, v72 & 1, &v75);
          goto LABEL_42;
        }

        if (v30 == *MEMORY[0x1E6982208])
        {
          (*(v27 + 96))(v29, v26);
          v57 = v63;
          v56 = v64;
          v58 = v65;
          (*(v64 + 32))(v63, v29, v65);
          v60 = v62;
          (*(v56 + 16))(v62, v57, v58);
          _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v60, v72 & 1, &v75);
LABEL_42:
          v61 = type metadata accessor for SymbolEffectConfiguration();
          (*(*(v61 - 8) + 8))(v73, v61);
          result = (*(v56 + 8))(v57, v58);
          v39 = v75;
          v38 = v77;
          v40 = v78;
          if (v76)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }
      }
    }

LABEL_26:
    v51 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v51 - 8) + 8))(v73, v51);
    result = (*(v27 + 8))(v29, v26);
    v52 = 0xFF00000000;
    v41 = v74;
    goto LABEL_33;
  }

  (*(v27 + 96))(v29, v26);
  v43 = v70;
  v42 = v71;
  (*(v70 + 32))(v18, v29, v71);
  (*(v43 + 16))(v15, v18, v42);
  v44 = ScaleSymbolEffect.isUp.getter();
  v45 = v44;
  if (v44)
  {
    v46 = 3;
  }

  else
  {
    v46 = 2;
  }

  LOBYTE(v75) = 0;
  v47 = ScaleSymbolEffect.isLayered.getter();
  v48 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v48 - 8) + 8))(v73, v48);
  v49 = *(v43 + 8);
  v49(v15, v42);
  result = (v49)(v18, v42);
  v38 = (v47 == 2) | v47;
  if (v45 == 2)
  {
    v39 = 0;
  }

  else
  {
    v39 = v46;
  }

  v40 = v72;
  if (v75)
  {
LABEL_13:
    v39 |= 0x100000000uLL;
    v41 = v74;
    if ((v38 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_29:
    v50 = 0x10000000000;
    goto LABEL_30;
  }

LABEL_23:
  v41 = v74;
  if (v38)
  {
    goto LABEL_29;
  }

LABEL_24:
  v50 = 0;
LABEL_30:
  v54 = v50 | v39;
  v55 = 0x1000000000000;
  if ((v40 & 1) == 0)
  {
    v55 = 0;
  }

  v52 = v54 | v55;
LABEL_33:
  *v41 = v52;
  *(v41 + 6) = BYTE6(v52);
  *(v41 + 4) = WORD2(v52);
  return result;
}

float _SymbolEffect.Options.init(_:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SymbolEffectOptions.RepeatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = 1;
  v28 = 1;
  v27 = 1;
  SymbolEffectOptions.repeat.getter();
  outlined init with take of SymbolEffectOptions.RepeatOption?(v13, v10);
  v15 = 0.0;
  if ((*(v5 + 48))(v10, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v10, v4);
    v16 = (*(v5 + 88))(v7, v4);
    if (v16 == *MEMORY[0x1E6982188])
    {
      (*(v5 + 96))(v7, v4);
      v14 = 0;
      v15 = *v7;
    }

    else if (v16 == *MEMORY[0x1E6982180])
    {
      v14 = 0;
      v15 = INFINITY;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  v28 = v14;
  v18 = COERCE_DOUBLE(SymbolEffectOptions.repeatDelay.getter());
  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v18;
  }

  v27 = v17 & 1;
  SymbolEffectOptions.speed.getter();
  v21 = v20;
  v22 = type metadata accessor for SymbolEffectOptions();
  (*(*(v22 - 8) + 8))(a1, v22);
  result = v21;
  v24 = v28;
  v25 = v27;
  *a2 = result;
  *(a2 + 4) = v15;
  *(a2 + 8) = v24;
  *(a2 + 12) = v19;
  *(a2 + 16) = v25;
  return result;
}

uint64_t SymbolEffectTransition._makeContentTransition(transition:)(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEffectConfiguration();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v7 + 16);
  if (*a1 != 3)
  {
    (*v8)(v6, v1, v4);
    result = _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v6, 1, &v19);
    v10 = v20 | (v21 << 16);
    if ((~(v10 << 32) & 0xFF00000000) == 0)
    {
      return result;
    }

    v11 = v19 | (v10 << 32);
    if ((v11 & 0x100000000) != 0)
    {
      v12 = 0;
      v13 = 0;
      if ((v11 & 0x10000000000) != 0)
      {
LABEL_11:
        type metadata accessor for SymbolEffectTransition(0);
        SymbolEffectOptions.speed.getter();
        v15 = v14;
        type metadata accessor for Attribute<EnvironmentValues>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ContentTransition.Effect>, MEMORY[0x1E697ED00], MEMORY[0x1E69E6F90]);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_18CD63400;
        *(v16 + 32) = 17;
        *(v16 + 36) = v12;
        *(v16 + 40) = 1;
        *(v16 + 44) = v15;
        *(v16 + 48) = 0;
        *(v16 + 52) = 0x3F80000000000000;
        *(v16 + 60) = 3;
        result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
        *(a1 + 24) = v16;
        *(a1 + 32) = 1;
        return result;
      }
    }

    else
    {
      if ((v11 & 0x10000000000) != 0)
      {
        v12 = v19;
        goto LABEL_11;
      }

      v12 = v19;
      v13 = v19;
      if ((v11 & 0x10) != 0)
      {
        goto LABEL_11;
      }
    }

    v12 = v13 | 0x10;
    goto LABEL_11;
  }

  (*v8)(v6, v1, v4);
  result = _SymbolEffect.HiddenConfiguration.init(_:hidden:)(v6, 1, v17);
  if ((~(v18 << 32) & 0xFF00000000) != 0)
  {
    result = outlined consume of _Transition_ContentTransition.Result(*(a1 + 24), *(a1 + 32));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
  }

  return result;
}

void _SymbolEffect.VariableColorConfiguration.init(_:trigger:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (VariableColorSymbolEffect.isReversing.getter())
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | VariableColorSymbolEffect.isIterative.getter() & 1;
  v8 = VariableColorSymbolEffect.hasReveal.getter();
  v9 = type metadata accessor for VariableColorSymbolEffect();
  (*(*(v9 - 8) + 8))(a1, v9);
  v10 = v7 | 2;
  if ((v8 & 1) == 0)
  {
    v10 = v7;
  }

  if (v8 == 2)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
  *a3 = v5;
  *(a3 + 8) = v11;
}

uint64_t _SymbolEffect.HiddenConfiguration.init(_:hidden:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X8>)
{
  v80 = a2;
  v81 = a3;
  v4 = type metadata accessor for DrawLayerBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v69 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v67[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67[-v11];
  v13 = MEMORY[0x1E69820B8];
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v70 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v67[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v67[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v82 = &v67[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67[-v26];
  v84 = 0;
  v77 = a1;
  DrawOnSymbolEffect.layerBehavior.getter();
  v28 = *MEMORY[0x1E69820B0];
  v72 = v5[13];
  v73 = v5 + 13;
  v72(v24, v28, v4);
  v71 = v5[7];
  v71(v24, 0, 1, v4);
  v75 = v8;
  v29 = *(v8 + 48);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v27, v12, &lazy cache variable for type metadata for DrawLayerBehavior?, v13);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v24, &v12[v29], &lazy cache variable for type metadata for DrawLayerBehavior?, v13);
  v78 = v5;
  v30 = v5[6];
  v31 = v30(v12, 1, v4);
  v74 = v30;
  if (v31 == 1)
  {
    v32 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v32);
    v33 = v30(&v12[v29], 1, v4);
    v34 = v77;
    if (v33 == 1)
    {
      outlined destroy of SymbolEffectOptions.RepeatOption?(v12, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
      v35 = 1;
      v36 = v79;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v12, v82, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  if (v30(&v12[v29], 1, v4) == 1)
  {
    v37 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v37);
    (v78[1])(v82, v4);
    v34 = v77;
LABEL_6:
    outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(v12);
    v35 = 0;
    v36 = v79;
    goto LABEL_8;
  }

  v38 = v78;
  v39 = v69;
  (v78[4])(v69, &v12[v29], v4);
  lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior();
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v38[1];
  v40(v39, v4);
  v41 = MEMORY[0x1E69820B8];
  outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v41);
  v40(v82, v4);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v12, &lazy cache variable for type metadata for DrawLayerBehavior?, v41);
  v35 = v68 & 1;
  v36 = v79;
  v34 = v77;
LABEL_8:
  v84 = 1;
  v42 = v76;
  DrawOnSymbolEffect.layerBehavior.getter();
  v43 = v83;
  v72(v83, *MEMORY[0x1E69820A8], v4);
  v71(v43, 0, 1, v4);
  v44 = *(v75 + 48);
  v45 = MEMORY[0x1E69820B8];
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v42, v36, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v43, v36 + v44, &lazy cache variable for type metadata for DrawLayerBehavior?, v45);
  v46 = v74;
  if (v74(v36, 1, v4) != 1)
  {
    v52 = v70;
    outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v36, v70, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    if (v46(v36 + v44, 1, v4) != 1)
    {
      v55 = v52;
      v56 = v42;
      v57 = v78;
      v58 = v36 + v44;
      v59 = v69;
      (v78[4])(v69, v58, v4);
      lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior();
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = type metadata accessor for DrawOnSymbolEffect();
      (*(*(v61 - 8) + 8))(v34, v61);
      v62 = v57[1];
      v62(v59, v4);
      v63 = MEMORY[0x1E69820B8];
      outlined destroy of SymbolEffectOptions.RepeatOption?(v83, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
      outlined destroy of SymbolEffectOptions.RepeatOption?(v56, &lazy cache variable for type metadata for DrawLayerBehavior?, v63);
      v62(v55, v4);
      result = outlined destroy of SymbolEffectOptions.RepeatOption?(v36, &lazy cache variable for type metadata for DrawLayerBehavior?, v63);
      v51 = v60 ^ 1;
      goto LABEL_15;
    }

    v53 = type metadata accessor for DrawOnSymbolEffect();
    (*(*(v53 - 8) + 8))(v34, v53);
    v54 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v83, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v42, &lazy cache variable for type metadata for DrawLayerBehavior?, v54);
    (v78[1])(v52, v4);
    goto LABEL_13;
  }

  v47 = type metadata accessor for DrawOnSymbolEffect();
  (*(*(v47 - 8) + 8))(v34, v47);
  v48 = v46;
  v49 = MEMORY[0x1E69820B8];
  outlined destroy of SymbolEffectOptions.RepeatOption?(v43, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v42, &lazy cache variable for type metadata for DrawLayerBehavior?, v49);
  if (v48(v36 + v44, 1, v4) != 1)
  {
LABEL_13:
    result = outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(v36);
    v51 = 1;
    goto LABEL_15;
  }

  result = outlined destroy of SymbolEffectOptions.RepeatOption?(v36, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  v51 = 0;
LABEL_15:
  v64 = v84;
  v65 = v80 & 1;
  v66 = v81;
  *v81 = v35;
  *(v66 + 4) = v64;
  *(v66 + 5) = v51 & 1;
  *(v66 + 6) = v65;
  return result;
}

{
  v82 = a2;
  v83 = a3;
  v4 = type metadata accessor for DrawLayerBehavior();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69[-v11];
  v13 = MEMORY[0x1E69820B8];
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v72 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v69[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v69[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v69[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69[-v23];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69[-v26];
  v86 = 0;
  v79 = a1;
  BreatheSymbolEffect.style.getter();
  v28 = *MEMORY[0x1E69820B0];
  v74 = v5[13];
  v75 = v5 + 13;
  v74(v24, v28, v4);
  v73 = v5[7];
  v73(v24, 0, 1, v4);
  v77 = v8;
  v29 = *(v8 + 48);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v27, v12, &lazy cache variable for type metadata for DrawLayerBehavior?, v13);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v24, &v12[v29], &lazy cache variable for type metadata for DrawLayerBehavior?, v13);
  v80 = v5;
  v30 = v5[6];
  v31 = v30(v12, 1, v4);
  v76 = v30;
  if (v31 == 1)
  {
    v32 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v32);
    v33 = v30(&v12[v29], 1, v4);
    v34 = v79;
    if (v33 == 1)
    {
      outlined destroy of SymbolEffectOptions.RepeatOption?(v12, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
      v35 = 1;
      v36 = v81;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v12, v84, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  if (v30(&v12[v29], 1, v4) == 1)
  {
    v37 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v37);
    (v80[1])(v84, v4);
    v34 = v79;
LABEL_6:
    outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(v12);
    v35 = 0;
    v36 = v81;
    goto LABEL_8;
  }

  v38 = v80;
  v39 = v71;
  (v80[4])(v71, &v12[v29], v4);
  lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior();
  v70 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = v38[1];
  v40(v39, v4);
  v41 = MEMORY[0x1E69820B8];
  outlined destroy of SymbolEffectOptions.RepeatOption?(v24, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v27, &lazy cache variable for type metadata for DrawLayerBehavior?, v41);
  v40(v84, v4);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v12, &lazy cache variable for type metadata for DrawLayerBehavior?, v41);
  v35 = v70 & 1;
  v36 = v81;
  v34 = v79;
LABEL_8:
  v42 = v85;
  LODWORD(v84) = ScaleSymbolEffect.isLayered.getter();
  v86 = 1;
  v43 = v78;
  BreatheSymbolEffect.style.getter();
  v74(v42, *MEMORY[0x1E69820A8], v4);
  v73(v42, 0, 1, v4);
  v44 = v43;
  v45 = *(v77 + 48);
  v46 = MEMORY[0x1E69820B8];
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v43, v36, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v42, v36 + v45, &lazy cache variable for type metadata for DrawLayerBehavior?, v46);
  v47 = v76;
  if (v76(v36, 1, v4) == 1)
  {
    v48 = type metadata accessor for DrawOffSymbolEffect();
    (*(*(v48 - 8) + 8))(v34, v48);
    v49 = v47;
    v50 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v42, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v43, &lazy cache variable for type metadata for DrawLayerBehavior?, v50);
    if (v49(v36 + v45, 1, v4) == 1)
    {
      result = outlined destroy of SymbolEffectOptions.RepeatOption?(v36, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
      v52 = 0;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v53 = v72;
  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v36, v72, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  if (v47(v36 + v45, 1, v4) == 1)
  {
    v54 = type metadata accessor for DrawOffSymbolEffect();
    (*(*(v54 - 8) + 8))(v34, v54);
    v55 = MEMORY[0x1E69820B8];
    outlined destroy of SymbolEffectOptions.RepeatOption?(v85, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
    outlined destroy of SymbolEffectOptions.RepeatOption?(v44, &lazy cache variable for type metadata for DrawLayerBehavior?, v55);
    (v80[1])(v53, v4);
LABEL_13:
    result = outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(v36);
    v52 = 1;
    goto LABEL_15;
  }

  v56 = v44;
  v57 = v80;
  v58 = v36 + v45;
  v59 = v71;
  (v80[4])(v71, v58, v4);
  lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior();
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = type metadata accessor for DrawOffSymbolEffect();
  (*(*(v61 - 8) + 8))(v34, v61);
  v62 = v57[1];
  v62(v59, v4);
  v63 = MEMORY[0x1E69820B8];
  outlined destroy of SymbolEffectOptions.RepeatOption?(v85, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8]);
  outlined destroy of SymbolEffectOptions.RepeatOption?(v56, &lazy cache variable for type metadata for DrawLayerBehavior?, v63);
  v62(v53, v4);
  result = outlined destroy of SymbolEffectOptions.RepeatOption?(v36, &lazy cache variable for type metadata for DrawLayerBehavior?, v63);
  v52 = v60 ^ 1;
LABEL_15:
  v64 = v35 | 2;
  if ((v84 & 1) == 0)
  {
    v64 = v35;
  }

  v65 = v86;
  if (v84 == 2)
  {
    v66 = v35;
  }

  else
  {
    v66 = v64;
  }

  v67 = v83;
  *v83 = v66;
  *(v67 + 4) = v65;
  v68 = v82 & 1;
  *(v67 + 5) = v52 & 1;
  *(v67 + 6) = v68;
  return result;
}

void _SymbolEffect.WiggleConfiguration.init(_:isContinuous:trigger:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for WiggleSymbolEffect.WiggleStyle?, MEMORY[0x1E6982120], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-v12];
  v14 = *a3;
  v30 = 1;
  v28 = 0;
  v15 = WiggleSymbolEffect.isLayered.getter();
  v29 = (v15 == 2) | v15 & 1;
  if (a2)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  WiggleSymbolEffect.style.getter();
  v17 = type metadata accessor for WiggleSymbolEffect();
  (*(*(v17 - 8) + 8))(a1, v17);
  v18 = type metadata accessor for WiggleSymbolEffect.WiggleStyle();
  v19 = *(v18 - 8);
  v20 = 0.0;
  if ((*(v19 + 48))(v13, 1, v18) != 1)
  {
    outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v13, v10, &lazy cache variable for type metadata for WiggleSymbolEffect.WiggleStyle?, MEMORY[0x1E6982120]);
    v21 = (*(v19 + 88))(v10, v18);
    if (v21 == *MEMORY[0x1E6982108])
    {
      (*(v19 + 96))(v10, v18);
      if (*v10)
      {
        v22 = 16;
      }

      else
      {
        v22 = 32;
      }

      v16 |= v22 | 3;
    }

    else if (v21 == *MEMORY[0x1E6982110])
    {
      (*(v19 + 96))(v10, v18);
      v20 = *v10 * 0.0174532925;
      v30 = 0;
    }

    else if (v21 == *MEMORY[0x1E6982118])
    {
      (*(v19 + 96))(v10, v18);
      if (*v10)
      {
        v23 = 16;
      }

      else
      {
        v23 = 32;
      }

      v16 |= v23 | 1;
      v28 = 1;
    }

    else
    {
      (*(v19 + 8))(v10, v18);
    }
  }

  outlined destroy of SymbolEffectOptions.RepeatOption?(v13, &lazy cache variable for type metadata for WiggleSymbolEffect.WiggleStyle?, MEMORY[0x1E6982120]);
  outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
  v24 = v30;
  v25 = v29;
  v26 = v28;
  *a4 = v14;
  *(a4 + 8) = v20;
  *(a4 + 16) = v24;
  *(a4 + 20) = v16;
  *(a4 + 24) = v25;
  *(a4 + 25) = v26;
}

void _SymbolEffect.BreatheConfiguration.init(_:trigger:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for BreatheSymbolEffect.BreatheStyle?, MEMORY[0x1E6982138], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10];
  v12 = *a2;
  v13 = ScaleSymbolEffect.isLayered.getter();
  v21 = (v13 == 2) | v13 & 1;
  BreatheSymbolEffect.style.getter();
  v14 = type metadata accessor for BreatheSymbolEffect();
  (*(*(v14 - 8) + 8))(a1, v14);
  v15 = type metadata accessor for BreatheSymbolEffect.BreatheStyle();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v11, 1, v15) == 1)
  {
    goto LABEL_6;
  }

  outlined init with copy of WiggleSymbolEffect.WiggleStyle?(v11, v8, &lazy cache variable for type metadata for BreatheSymbolEffect.BreatheStyle?, MEMORY[0x1E6982138]);
  v17 = (*(v16 + 88))(v8, v15);
  if (v17 == *MEMORY[0x1E6982128])
  {
    goto LABEL_6;
  }

  if (v17 != *MEMORY[0x1E6982130])
  {
    (*(v16 + 8))(v8, v15);
LABEL_6:
    v18 = 0;
    goto LABEL_7;
  }

  v18 = 1;
LABEL_7:
  outlined destroy of SymbolEffectOptions.RepeatOption?(v11, &lazy cache variable for type metadata for BreatheSymbolEffect.BreatheStyle?, MEMORY[0x1E6982138]);
  outlined consume of _SymbolEffect.Trigger?(0xF000000000000006);
  v19 = v21;
  *a3 = v12;
  *(a3 + 8) = v18;
  *(a3 + 12) = v19;
}

unint64_t lazy protocol witness table accessor for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment()
{
  result = lazy protocol witness table cache variable for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment;
  if (!lazy protocol witness table cache variable for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _IndefiniteSymbolEffectModifier.EffectEnvironment, &unk_1EFFACED0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _IndefiniteSymbolEffectModifier.EffectEnvironment and conformance _IndefiniteSymbolEffectModifier.EffectEnvironment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment()
{
  result = lazy protocol witness table cache variable for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment;
  if (!lazy protocol witness table cache variable for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _ConditionalSymbolEffectModifier.EffectEnvironment, &unk_1EFFACDF0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalSymbolEffectModifier.EffectEnvironment and conformance _ConditionalSymbolEffectModifier.EffectEnvironment);
  }

  return result;
}

uint64_t type metadata completion function for _DiscreteSymbolEffectModifier(uint64_t a1)
{
  result = type metadata accessor for SymbolEffectConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymbolEffectOptions();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _DiscreteSymbolEffectModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = (v8 + v11) & ~v11;
  v14 = *(v10 + 64);
  v15 = *(a3 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 80);
  v18 = (*(v10 + 80) | *(v7 + 80) | *(v16 + 80));
  if (v18 <= 7 && ((v14 + v13 + v17) & ~v17) + *(v16 + 64) <= 0x18 && ((*(v10 + 80) | *(v7 + 80) | *(v16 + 80)) & 0x100000) == 0)
  {
    v22 = ~v11;
    v26 = v15;
    v25 = v9;
    (*(v7 + 16))(a1, a2, v6);
    v23 = (a2 + v12) & v22;
    (*(v10 + 16))((a1 + v12) & v22, v23, v25);
    (*(v16 + 16))((((a1 + v12) & v22) + v14 + v17) & ~v17, (v23 + v14 + v17) & ~v17, v26);
  }

  else
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + ((v18 + 16) & ~v18));
  }

  return a1;
}

uint64_t destroy for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEffectConfiguration();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(v5 + 56) + a1;
  v7 = type metadata accessor for SymbolEffectOptions();
  v8 = *(v7 - 8);
  v9 = v8 + 8;
  v10 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v8 + 8))(v10, v7);
  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (v10 + *(v9 + 56) + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t initializeWithCopy for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 48);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 16))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 16))((*(v11 + 48) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 48) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t assignWithCopy for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 40);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 24))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 24))((*(v11 + 40) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 40) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t initializeWithTake for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 32))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 32))((*(v11 + 32) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 32) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t assignWithTake for _DiscreteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for SymbolEffectOptions();
  v10 = *(v9 - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = v8 + v12;
  v14 = (v8 + v12 + a1) & ~v12;
  v15 = (v13 + a2) & ~v12;
  (*(v10 + 40))(v14, v15, v9);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 40))((*(v11 + 24) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v11 + 24) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _DiscreteSymbolEffectModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(type metadata accessor for SymbolEffectOptions() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v14 + 80);
  if (*(v14 + 84) <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v7 + 64) + v15;
  if (a2 > v18)
  {
    v20 = ((v16 + (v19 & ~v15) + v17) & ~v17) + *(v14 + 64);
    v21 = 8 * v20;
    if (v20 <= 3)
    {
      v23 = ((a2 - v18 + ~(-1 << v21)) >> v21) + 1;
      if (HIWORD(v23))
      {
        v22 = *(a1 + v20);
        if (!v22)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 > 0xFF)
      {
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v23 < 2)
      {
LABEL_30:
        if (v18)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v22 = *(a1 + v20);
    if (!*(a1 + v20))
    {
      goto LABEL_30;
    }

LABEL_17:
    v24 = (v22 - 1) << v21;
    if (v20 > 3)
    {
      v24 = 0;
    }

    if (v20)
    {
      if (v20 <= 3)
      {
        v25 = ((v16 + (v19 & ~v15) + v17) & ~v17) + *(v14 + 64);
      }

      else
      {
        v25 = 4;
      }

      if (v25 > 2)
      {
        if (v25 == 3)
        {
          v26 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v26 = *a1;
        }
      }

      else if (v25 == 1)
      {
        v26 = *a1;
      }

      else
      {
        v26 = *a1;
      }
    }

    else
    {
      v26 = 0;
    }

    return v18 + (v26 | v24) + 1;
  }

LABEL_31:
  if (v8 == v18)
  {
    v27 = *(v7 + 48);
    v28 = a1;
    v29 = v8;
    v13 = v6;
LABEL_39:

    return v27(v28, v29, v13);
  }

  v31 = (a1 + v19) & ~v15;
  if (v11 != v18)
  {
    v27 = *(v14 + 48);
    v28 = ((v31 + v16 + v17) & ~v17);
    v29 = *(v14 + 84);
    goto LABEL_39;
  }

  v32 = *(v10 + 48);

  return v32(v31);
}

void storeEnumTagSinglePayload for _DiscreteSymbolEffectModifier(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymbolEffectConfiguration();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = type metadata accessor for SymbolEffectOptions();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a4 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v16 + 80);
  if (v17 <= v14)
  {
    v22 = v14;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = ((v20 + ((v18 + v19) & ~v19) + v21) & ~v21) + *(v16 + 64);
  if (a3 <= v22)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v22 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v22 < a2)
  {
    v25 = ~v22 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 <= 1)
  {
    if (v24)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v24 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_33;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v10 == v22)
  {
    v30 = *(v9 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v10;
    v15 = v8;
LABEL_44:

    v30(v31, v32, v33, v15);
    return;
  }

  if (v13 != v22)
  {
    v30 = *(v16 + 56);
    v31 = (((&a1[v18 + v19] & ~v19) + v20 + v21) & ~v21);
    v32 = a2;
    v33 = v17;
    goto LABEL_44;
  }

  v34 = *(v12 + 56);

  v34(&a1[v18 + v19] & ~v19, a2);
}

char *initializeBufferWithCopyOfBuffer for _IndefiniteSymbolEffectModifier(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for SymbolEffectOptions();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    a1[*(a3 + 24)] = a2[*(a3 + 24)];
  }

  return a1;
}

uint64_t initializeWithCopy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithCopy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t initializeWithTake for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t type metadata completion function for _IndefiniteSymbolEffectModifier(uint64_t a1)
{
  result = type metadata accessor for SymbolEffectConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymbolEffectOptions();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for SymbolEffectTransition(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for SymbolEffectConfiguration();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for SymbolEffectOptions();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t destroy for _IndefiniteSymbolEffectModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for SymbolEffectOptions();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t initializeWithCopy for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithCopy for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t initializeWithTake for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t assignWithTake for SymbolEffectTransition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for SymbolEffectOptions();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t type metadata completion function for SymbolEffectTransition(uint64_t a1)
{
  result = type metadata accessor for SymbolEffectConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SymbolEffectOptions();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>();
    v5[1] = &protocol witness table for _SymbolEffectModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>)
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffectTransition>, type metadata accessor for SymbolEffectTransition, MEMORY[0x1E697FEC0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<SymbolEffectTransition>, _SymbolEffectModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>)
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for PlaceholderContentView<SymbolEffectTransition>, type metadata accessor for SymbolEffectTransition, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FEC8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<SymbolEffectTransition> and conformance PlaceholderContentView<A>);
  }

  return result;
}

void type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (DrawLayerBehavior?, DrawLayerBehavior?))
  {
    type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(255, &lazy cache variable for type metadata for DrawLayerBehavior?, MEMORY[0x1E69820B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DrawLayerBehavior?, DrawLayerBehavior?));
    }
  }
}

uint64_t outlined init with copy of WiggleSymbolEffect.WiggleStyle?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (DrawLayerBehavior?, DrawLayerBehavior?)(uint64_t a1)
{
  type metadata accessor for (DrawLayerBehavior?, DrawLayerBehavior?)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DrawLayerBehavior and conformance DrawLayerBehavior()
{
  result = lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior;
  if (!lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior)
  {
    v3 = type metadata accessor for DrawLayerBehavior();
    result = swift_getWitnessTable(MEMORY[0x1E69820C0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DrawLayerBehavior and conformance DrawLayerBehavior);
  }

  return result;
}

uint64_t outlined init with take of SymbolEffectOptions.RepeatOption?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlaceholderContentView<SymbolEffectTransition>(0, &lazy cache variable for type metadata for SymbolEffectOptions.RepeatOption?, MEMORY[0x1E6982190], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SwiftUI::WindowLayoutProperties __swiftcall WindowLayoutProperties.init()()
{
  result.triggers.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::WindowLayoutUpdateTriggers __swiftcall WindowLayoutUpdateTriggers.init(rawValue:)(Swift::Int rawValue)
{
  result.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers()
{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLayoutUpdateTriggers, &type metadata for WindowLayoutUpdateTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLayoutUpdateTriggers, &type metadata for WindowLayoutUpdateTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLayoutUpdateTriggers, &type metadata for WindowLayoutUpdateTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers;
  if (!lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WindowLayoutUpdateTriggers, &type metadata for WindowLayoutUpdateTriggers, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type WindowLayoutUpdateTriggers and conformance WindowLayoutUpdateTriggers);
  }

  return result;
}

uint64_t ViewGraphDelegate.popoverBridge.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingViewProvider, &protocol descriptor for UIHostingViewProvider);
  (*(a2 + 16))(v9, v4, v4, a1, a2);
  if (!v9[0])
  {
    return 0;
  }

  v5 = v9[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 48))(ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

void ViewGraphDelegate.environmentOverride.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = type metadata accessor for ContainerBackgroundHost(0, &lazy cache variable for type metadata for UIHostingViewProvider, &protocol descriptor for UIHostingViewProvider);
  (*(a3 + 16))(&v10, v7, v7, a2, a3);
  if (v10)
  {
    v8 = v11;
    ObjectType = swift_getObjectType();
    v10 = v6;
    v11 = v5;
    (*(v8 + 16))(&v10, ObjectType, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    outlined consume of EnvironmentValues?(v6, v5);
  }
}

uint64_t ViewGraphDelegate.hostingView.getter(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = type metadata accessor for ContainerBackgroundHost(0, a3, a4);
  (*(a2 + 16))(&v8, v6, v6, a1, a2);
  return v8;
}

uint64_t outlined destroy of HostingControllerOverrides?(uint64_t a1)
{
  type metadata accessor for HostingControllerOverrides?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for HostingControllerOverrides?()
{
  if (!lazy cache variable for type metadata for HostingControllerOverrides?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HostingControllerOverrides?);
    }
  }
}

void specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = *(a1 + 56) + 80 * v11;
    v28 = *v13;
    v29 = *(v13 + 16);
    v30 = *(v13 + 32);
    v26 = *(v13 + 41);
    v27 = *(v13 + 57);
    if (!*(v13 + 40))
    {
      v14 = *(v2 + 16);
      if (*(v2 + 24) <= v14)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14 + 1, 1);
        v2 = v31;
      }

      Hasher.init(_seed:)();
      MEMORY[0x18D00F6F0](v12);
      v15 = Hasher._finalize()();
      v16 = v2 + 64;
      v17 = -1 << *(v2 + 32);
      v18 = v15 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v17) >> 6;
        while (++v19 != v22 || (v21 & 1) == 0)
        {
          v23 = v19 == v22;
          if (v19 == v22)
          {
            v19 = 0;
          }

          v21 |= v23;
          v24 = *(v16 + 8 * v19);
          if (v24 != -1)
          {
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            goto LABEL_22;
          }
        }

        goto LABEL_25;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v2 + 48) + 8 * v20) = v12;
      v25 = *(v2 + 56) + 80 * v20;
      *v25 = v28;
      *(v25 + 16) = v29;
      *(v25 + 41) = v26;
      *(v25 + 32) = v30;
      *(v25 + 40) = 0;
      *(v25 + 57) = v27;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

{
  v2 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (v8 << 9) | (8 * v10);
      v12 = *(*(a1 + 48) + v11);
      outlined init with copy of WeakBox<EntityGestureResponder>(*(a1 + 56) + v11, &v33, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
      v32 = v12;
      outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(&v32, v30);
      if (swift_weakLoadStrong())
      {
        break;
      }

      outlined destroy of (key: UInt64, value: WeakBox<EntityGestureResponder>)(v30);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    outlined init with copy of WeakBox<EntityGestureResponder>(&v31, v29, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
    outlined init with take of (key: UInt64, value: WeakBox<EntityGestureResponder>)(v30, &v27);
    outlined init with take of WeakBox<EntityGestureResponder>(v29, v26);
    v13 = *(v2 + 16);
    if (*(v2 + 24) <= v13)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13 + 1, 1);
      v2 = v34;
    }

    v14 = v27;
    v15 = MEMORY[0x18D00F6C0](*(v2 + 40), v27);
    v16 = v2 + 64;
    v17 = -1 << *(v2 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v16 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = 8 * v20;
    *(*(v2 + 48) + v25) = v14;
    outlined init with take of WeakBox<EntityGestureResponder>(v26, *(v2 + 56) + v25);
    ++*(v2 + 16);
    outlined destroy of WeakBox<EntityGestureResponder>(&v28, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for WeakBox<EntityGestureResponder>);
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t specialized Collection<>.indices.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;

  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  *(a2 + 8) = result;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1 << *(a1 + 32);
  *(a2 + 40) = v5;
  *(a2 + 48) = 0;
  return result;
}

Swift::Int SpatialEventCollection.Event.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t SpatialEventCollection.Event.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 72);
  MEMORY[0x18D00F6F0](*v0);
  v10 = 0.0;
  if (v1 != 0.0)
  {
    v10 = v1;
  }

  MEMORY[0x18D00F730](*&v10);
  if (v2 <= 2)
  {
    if (v2)
    {
      result = _diagnoseUnavailableCodeReached()();
      __break(1u);
      return result;
    }
  }

  else if (v2 == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x18D00F6F0](v2);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x18D00F730](*&v11);
  if (v3 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v3;
  }

  MEMORY[0x18D00F730](*&v12);
  MEMORY[0x18D00F6F0](v5);
  result = MEMORY[0x18D00F6F0](v6);
  if ((v9 & 1) == 0)
  {
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v7;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x18D00F730](v14);
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    return MEMORY[0x18D00F730](v15);
  }

  return result;
}

uint64_t SpatialEventCollection.Event.Kind.hash(into:)()
{
  v1 = *v0;
  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (!*v0)
  {
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.Event.InputDevicePose.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18D00F730](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x18D00F730](*&v3);
}

uint64_t static SpatialEventCollection.Event.Kind.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2u)
  {
    if (*a1)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v4 = v2 == 3;
    v2 = 1;
    if (!v4)
    {
      v2 = 2;
    }
  }

  if (*a2 > 2u)
  {
    v4 = v3 == 3;
    v3 = 1;
    if (!v4)
    {
      v3 = 2;
    }

    return v2 == v3;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

LABEL_13:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int SpatialEventCollection.Event.Kind.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SpatialEventCollection.Event.Kind(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 2u)
  {
    if (*a1)
    {
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v4 = v2 == 3;
    v2 = 1;
    if (!v4)
    {
      v2 = 2;
    }
  }

  if (*a2 > 2u)
  {
    v4 = v3 == 3;
    v3 = 1;
    if (!v4)
    {
      v3 = 2;
    }

    return v2 == v3;
  }

  if (!*a2)
  {
    return v2 == v3;
  }

LABEL_13:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialEventCollection.Event.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    goto LABEL_6;
  }

  if (!v1)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v1);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpatialEventCollection.Event.Kind()
{
  v1 = *v0;
  if (*v0 > 2u)
  {
    if (v1 == 3)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }

    return MEMORY[0x18D00F6F0](v1);
  }

  if (!*v0)
  {
    return MEMORY[0x18D00F6F0](v1);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event.Kind(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }

    goto LABEL_6;
  }

  if (!v2)
  {
LABEL_6:
    MEMORY[0x18D00F6F0](v2);
    return Hasher._finalize()();
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int SpatialEventCollection.Event.Phase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int SpatialEventCollection.Event.InputDevicePose.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x18D00F730](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x18D00F730](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event.InputDevicePose(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x18D00F730](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x18D00F730](*&v5);
  return Hasher._finalize()();
}

__n128 SpatialEventCollection.Event.inputDevicePose.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 SpatialEventCollection.Event.inputDevicePose.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

__n128 (*SpatialEventCollection.Event.inputDevicePose.modify(uint64_t a1))(__n128 *a1)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  return SpatialEventCollection.Event.inputDevicePose.modify;
}

__n128 SpatialEventCollection.Event.inputDevicePose.modify(__n128 *a1)
{
  v1 = a1[1].n128_u64[1];
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v2;
  return result;
}

Swift::Int SpatialEventCollection.Event.hashValue.getter()
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SpatialEventCollection.Event()
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialEventCollection.Event(uint64_t a1)
{
  Hasher.init(_seed:)();
  SpatialEventCollection.Event.hash(into:)();
  return Hasher._finalize()();
}

double SpatialEventCollection.subscript.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 80 * v5);
    v8 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v8;
    *(a2 + 57) = *(v7 + 57);
    v9 = v7[1];
    *a2 = *v7;
    *(a2 + 16) = v9;
  }

  else
  {
    *&v9 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
    *(a2 + 40) = 3;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a2 + 72) = 0;
  }

  return *&v9;
}

uint64_t SpatialEventCollection.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v5;
  if (v6)
  {
LABEL_9:
    v12 = (v6 - 1) & v6;
    v13 = (*(v2 + 56) + 80 * (__clz(__rbit64(v6)) | (v7 << 6)));
    v14 = v13[3];
    *(a1 + 32) = v13[2];
    *(a1 + 48) = v14;
    *(a1 + 57) = *(v13 + 57);
    v15 = v13[1];
    *a1 = *v13;
    *(a1 + 16) = v15;
    v10 = v7;
LABEL_10:
    outlined copy of [A : B].Iterator._Variant<A, B>(v2);
    result = outlined consume of Set<UIPress>.Iterator._Variant(v2);
    *v1 = v2;
    v1[1] = v3;
    v1[2] = v4;
    v1[3] = v10;
    v1[4] = v12;
  }

  else
  {
    v8 = (v4 + 64) >> 6;
    if (v8 <= v5 + 1)
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = (v4 + 64) >> 6;
    }

    v10 = v9 - 1;
    v11 = v1[3];
    while (1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        v12 = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0;
        *(a1 + 40) = 3;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
        *(a1 + 48) = 0;
        *(a1 + 72) = 0;
        goto LABEL_10;
      }

      v6 = *(v3 + 8 * v7);
      ++v11;
      if (v6)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

double SpatialEventCollection.makeIterator()@<D0>(void *a1@<X8>)
{
  v2 = -1 << *(*v1 + 32);
  v3 = ~v2;
  v4 = *v1 + 64;
  v5 = -v2;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(*v1 + 64);
  *a1 = *v1;
  a1[1] = v4;
  a1[2] = v3;
  a1[3] = 0;
  a1[4] = v7;

  return result;
}

uint64_t SpatialEventCollection.updateWithEvent(_:)(_OWORD *a1)
{
  v2 = a1[1];
  v8[0] = *a1;
  v8[1] = v2;
  v3 = a1[3];
  v8[2] = a1[2];
  v9[0] = v3;
  *(v9 + 9) = *(a1 + 57);
  v4 = *&v8[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v8, v4, isUniquelyReferenced_nonNull_native);

  *v1 = v7;
  return result;
}

Swift::Void __swiftcall SpatialEventCollection.updateAfterCallback()()
{
  specialized Dictionary.compactMapValues<A>(_:)(*v0);
  v2 = v1;

  *v0 = v2;
}

BOOL static SpatialEventCollection.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static SpatialEventCollection.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 >= *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result >= *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0 && (*(result + 16) & 1) == 0)
  {
    if (*(a2 + 8) == *(result + 8))
    {
      return *a2 < *result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SpatialEventCollection.Index(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void SpatialEventCollection.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

__n128 SpatialEventCollection.subscript.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized Dictionary.subscript.getter(&v6, v7, *a1, *(a1 + 8), *(a1 + 16), *v2);
  v4 = v8[0];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  *(a2 + 57) = *(v8 + 9);
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

void *specialized Dictionary.subscript.getter(void *result, _OWORD *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a6 + 36) == a4)
  {
    v6 = *(a6 + 56);
    *result = *(*(a6 + 48) + 8 * a3);
    v7 = (v6 + 80 * a3);
    v8 = v7[3];
    a2[2] = v7[2];
    a2[3] = v8;
    *(a2 + 57) = *(v7 + 57);
    v9 = v7[1];
    *a2 = *v7;
    a2[1] = v9;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    outlined init with copy of NavigationDestinationPresentation(*(a5 + 56) + 96 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t SpatialEventCollection.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance SpatialEventCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _HashTable.startBucket.getter();
  v5 = *(v3 + 36);
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  return result;
}

void protocol witness for Collection.endIndex.getter in conformance SpatialEventCollection(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void (*protocol witness for Collection.subscript.read in conformance SpatialEventCollection(void *a1, uint64_t a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x49uLL);
  }

  *a1 = v5;
  specialized Dictionary.subscript.getter(&v7, v5, *a2, *(a2 + 8), *(a2 + 16), *v2);
  return ListBatchUpdates.subscript.read;
}

uint64_t protocol witness for Collection.subscript.getter in conformance SpatialEventCollection@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return specialized Collection<>.subscript.getter(&v5, *v2, a2);
}

void specialized Collection.index(_:offsetBy:)(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v7 = a3;
  v8 = result;
  v9 = a6;
  if (a4)
  {
    v11 = a5 + 64;
    outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
    v13 = a2;
    v14 = 0;
    v15 = a4 - 1;
    v16 = v13;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v18 = 1 << *(a5 + 32);
      if (v8 >= v18)
      {
        break;
      }

      v19 = v8 >> 6;
      v20 = *(v11 + 8 * (v8 >> 6));
      if (((v20 >> v8) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != v13)
      {
        goto LABEL_22;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
        v8 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a5 + 72 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_5;
          }
        }

        outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v13, v7 & 1);
        v8 = v18;
      }

LABEL_5:
      v7 = 0;
      v13 = v16;
      if (v14++ == v15)
      {
        v9 = a6;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
  v16 = a2;
LABEL_19:
  *v9 = v8;
  *(v9 + 8) = v16;
  *(v9 + 16) = v7 & 1;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance SpatialEventCollection(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v2 != *(a2 + 32))
  {
    goto LABEL_11;
  }

  if (*result >= *(a2 + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a2 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != v2)
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_13;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*result < *a2)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((*(a2 + 40) | *(result + 40)))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_11;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t protocol witness for Collection.index(after:) in conformance SpatialEventCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized _NativeDictionary.index(after:)(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance SpatialEventCollection(uint64_t *a1)
{
  v3 = *v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = specialized _NativeDictionary.index(after:)(*a1, v5, v6, v3);
  v9 = v8;
  v11 = v10;
  result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v4, v5, v6);
  *a1 = v7;
  a1[1] = v9;
  *(a1 + 16) = v11 & 1;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance SpatialEventCollection@<X0>(void *a1@<X8>)
{
  SpatialEventCollection.makeIterator()(a1);
}

char *protocol witness for Sequence._copyToContiguousArray() in conformance SpatialEventCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t specialized _NativeDictionary.index(after:)(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t specialized static SpatialEventCollection.Event.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 56);
    v8 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = *(a2 + 24);
    v12 = *(a1 + 16);
    if (v12 <= 2)
    {
      if (v12)
      {
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        goto LABEL_41;
      }

      v13 = 0;
      v14 = 1;
      if (*(a2 + 16) <= 2u)
      {
LABEL_14:
        if (!*(a2 + 16))
        {
          if (v5 == v11)
          {
            v12 = v14;
          }

          else
          {
            v12 = 0;
          }

          goto LABEL_21;
        }

LABEL_41:
        result = _diagnoseUnavailableCodeReached()();
        __break(1u);
        return result;
      }
    }

    else if (v12 == 3)
    {
      v13 = 0;
      v14 = 0;
      v12 = 1;
      if (*(a2 + 16) <= 2u)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
      v14 = 0;
      v13 = 1;
      if (*(a2 + 16) <= 2u)
      {
        goto LABEL_14;
      }
    }

    if (*(a2 + 16) == 3)
    {
      if (v5 != v11)
      {
        v12 = 0;
      }
    }

    else if (v5 == v11)
    {
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

LABEL_21:
    if (v12 != 1 || v4 != *(a2 + 32) || v6 != *(a2 + 40) || v7 != *(a2 + 48))
    {
      return 0;
    }

    if (v10)
    {
      if (*(a2 + 72))
      {
        return 1;
      }
    }

    else if ((*(a2 + 72) & 1) == 0 && v9 == *(a2 + 56) && v8 == *(a2 + 64))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event.ID, &type metadata for SpatialEventCollection.Event.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event.ID, &type metadata for SpatialEventCollection.Event.ID, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event.Kind, &type metadata for SpatialEventCollection.Event.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.Kind and conformance SpatialEventCollection.Event.Kind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event.Phase, &type metadata for SpatialEventCollection.Event.Phase, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.Phase and conformance SpatialEventCollection.Event.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event.InputDevicePose, &type metadata for SpatialEventCollection.Event.InputDevicePose, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event.InputDevicePose and conformance SpatialEventCollection.Event.InputDevicePose);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Event, &type metadata for SpatialEventCollection.Event, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Event and conformance SpatialEventCollection.Event);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Index, &type metadata for SpatialEventCollection.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Index, &type metadata for SpatialEventCollection.Index, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection and conformance SpatialEventCollection()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection, &type metadata for SpatialEventCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection, &type metadata for SpatialEventCollection, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection and conformance SpatialEventCollection);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<SpatialEventCollection> and conformance DefaultIndices<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultIndices<SpatialEventCollection>(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for DefaultIndices<SpatialEventCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SpatialEventCollection and conformance SpatialEventCollection();
    v7 = a3(a1, &type metadata for SpatialEventCollection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator()
{
  result = lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator;
  if (!lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialEventCollection.Iterator, &type metadata for SpatialEventCollection.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialEventCollection.Iterator and conformance SpatialEventCollection.Iterator);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialEventCollection.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialEventCollection.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t *initializeWithCopy for SpatialEventCollection.Iterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of [A : B].Iterator._Variant<A, B>(*a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  return a1;
}

uint64_t *assignWithCopy for SpatialEventCollection.Iterator(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  outlined copy of [A : B].Iterator._Variant<A, B>(*a2);
  v8 = *a1;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  outlined consume of Set<UIPress>.Iterator._Variant(v8);
  return a1;
}

uint64_t assignWithTake for SpatialEventCollection.Iterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  outlined consume of Set<UIPress>.Iterator._Variant(v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpatialEventCollection.Iterator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 40))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SpatialEventCollection.Iterator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SpatialEventCollection.Index(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v4, v5, v6);
  return a1;
}

double ListRowConfiguration.insets.getter@<D0>(uint64_t a1@<X8>)
{
  EdgeInsets.init(_:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double ListRowConfiguration.insets.setter(uint64_t a1)
{
  OptionalEdgeInsets.init(_:)();
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  *(v1 + 40) = *v5;
  result = *&v5[9];
  *(v1 + 49) = *&v5[9];
  return result;
}

void (*ListRowConfiguration.insets.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  EdgeInsets.init(_:)();
  return ListRowConfiguration.insets.modify;
}

void ListRowConfiguration.insets.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 96);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v4;
    *(v2 + 32) = *(v2 + 112);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v4;
    *(v2 + 72) = *(v2 + 112);
  }

  OptionalEdgeInsets.init(_:)();
  *(v3 + 8) = v5;
  *(v3 + 24) = v6;
  *(v3 + 40) = *v7;
  *(v3 + 49) = *&v7[9];

  free(v2);
}

__n128 ListRowConfiguration.customInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 40);
  result = *(v1 + 49);
  *(a1 + 41) = result;
  return result;
}

__n128 ListRowConfiguration.customInsets.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  *(v1 + 40) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 49) = result;
  return result;
}

uint64_t key path getter for ListRowConfiguration.onMove : ListRowConfiguration@<X0>(uint64_t result@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(result + 72);
  if (v3 >= 2)
  {
    v5 = *(result + 80);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    result = outlined copy of AppIntentExecutor?(v3, v5);
    v3 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ListRowConfiguration.onMove : ListRowConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 >= 2uLL)
  {
    v5 = *(a1 + 8);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    outlined copy of AppIntentExecutor?(v3, v5);
    v3 = thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @in_guaranteed Int) -> (@out ())partial apply;
  }

  else
  {
    v4 = 0;
  }

  result = _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(*(a2 + 72), *(a2 + 80));
  *(a2 + 72) = v3;
  *(a2 + 80) = v4;
  return result;
}

uint64_t ListRowConfiguration.onMove.getter()
{
  v1 = *(v0 + 72);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())??(v1, *(v0 + 80));
  return v1;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())??(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
    return outlined copy of AppIntentExecutor?(result, a2);
  }

  return result;
}

uint64_t ListRowConfiguration.onMove.setter(uint64_t a1, uint64_t a2)
{
  result = _sxSo6UIViewCSgRi_zRi0_zly20PlatformViewProviderQzIsegno_SgSg7SwiftUI04CoreC13RepresentableRzlWOe(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void ListRowConfiguration.sectionSpacing.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 105);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t ListRowConfiguration.sectionSpacing.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  *(v1 + 105) = v3;
  return result;
}

__n128 ContainerValues.listRowConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  MEMORY[0x18D007000](&v10[8]);
  *&v11[16] = 0;
  *&v11[24] = 256;
  *&v12 = v3;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v9 = v3;
  ViewTraitCollection.listRowInsets.getter();
  *&v10[8] = v12;
  *&v10[24] = v13;
  *&v10[40] = v14[0];
  *&v10[49] = *(v14 + 9);
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v9;
    v5 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ArchivableMutation, @in_guaranteed Transaction) -> (@out ());
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  *&v10[72] = v5;
  *v11 = v4;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v11[8] = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  *&v11[16] = v3;
  *&v11[24] = WORD4(v9);
  v6 = *v11;
  *(a1 + 64) = *&v10[64];
  *(a1 + 80) = v6;
  *(a1 + 90) = *&v11[10];
  v7 = *&v10[16];
  *a1 = *v10;
  *(a1 + 16) = v7;
  result = *&v10[48];
  *(a1 + 32) = *&v10[32];
  *(a1 + 48) = result;
  return result;
}

double destroy for ListRowConfiguration(void *a1)
{

  if (a1[9] >= 2uLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for ListRowConfiguration(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 49) = *(a2 + 49);
  v4 = a2 + 9;
  v5 = a2[9];

  if (v5 > 1)
  {
    v6 = a2[10];
    *(a1 + 72) = v5;
    *(a1 + 80) = v6;
  }

  else
  {
    *(a1 + 72) = *v4;
  }

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = a2[12];
  *(a1 + 104) = *(a2 + 52);
  return a1;
}

uint64_t *assignWithCopy for ListRowConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[1] = v4;
  v5 = a2[3];
  *(a1 + 32) = *(a2 + 32);
  a1[3] = v5;
  v6 = a2[5];
  *(a1 + 48) = *(a2 + 48);
  a1[5] = v6;
  v7 = a2[7];
  *(a1 + 64) = *(a2 + 64);
  a1[7] = v7;
  v8 = a1[9];
  v9 = a2[9];
  if (v8 == 1)
  {
    if (v9 >= 2)
    {
      goto LABEL_11;
    }
  }

  else if (v9 == 1)
  {
    outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?((a1 + 9));
  }

  else if (v8)
  {
    if (v9)
    {
      v10 = a2[10];
      a1[9] = v9;
      a1[10] = v10;

      goto LABEL_12;
    }
  }

  else if (v9)
  {
LABEL_11:
    v11 = a2[10];
    a1[9] = v9;
    a1[10] = v11;

    goto LABEL_12;
  }

  *(a1 + 9) = *(a2 + 9);
LABEL_12:
  *(a1 + 88) = *(a2 + 88);
  v12 = a2[12];
  *(a1 + 52) = *(a2 + 52);
  a1[12] = v12;
  return a1;
}

uint64_t outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?(uint64_t a1)
{
  type metadata accessor for (())?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *assignWithTake for ListRowConfiguration(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[9];
  v5 = a1[9];
  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  a1[7] = a2[7];
  if (v5 != 1)
  {
    if (v4 == 1)
    {
      outlined destroy of (@escaping @callee_guaranteed (@in_guaranteed IndexSet, @unowned Int) -> ())?((a1 + 9));
    }

    else if (v5)
    {
      if (v4)
      {
        v7 = a2[10];
        a1[9] = v4;
        a1[10] = v7;

        goto LABEL_5;
      }
    }

    else if (v4)
    {
      v8 = a2[10];
      a1[9] = v4;
      a1[10] = v8;
      goto LABEL_5;
    }
  }

  *(a1 + 9) = *(a2 + 9);
LABEL_5:
  *(a1 + 88) = *(a2 + 88);
  a1[12] = a2[12];
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 106))
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

uint64_t storeEnumTagSinglePayload for ListRowConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t LinearProgressViewStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  result = swift_getKeyPath();
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t LinearProgressViewStyle.init(tint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  result = swift_getKeyPath();
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  *(a2 + 32) = a1;
  return result;
}

uint64_t LinearProgressViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v9 = *(v2 + 32);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>(0);
  return closure #1 in LinearProgressViewStyle.makeBody(configuration:)(v8, a1, (a2 + *(v6 + 44)));
}

uint64_t closure #1 in LinearProgressViewStyle.makeBody(configuration:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v44 = a3;
  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && specialized Environment.wrappedValue.getter(*(a1 + 2), *(a1 + 24)) == 2)
  {
    v43 = 0x100000000;
  }

  else
  {
    v43 = *(a2 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 28));
  }

  v10 = a1[1];
  v50 = *a1;
  v51 = v10;
  v52 = *(a1 + 4);
  v11 = v9;
  LinearProgressViewStyle.progressBar(configuration:)(a2, v9);
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && specialized Environment.wrappedValue.getter(*(a1 + 2), *(a1 + 24)) == 2)
  {
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
  }

  else
  {
    LOBYTE(v46) = *(a2 + *(type metadata accessor for ProgressViewStyleConfiguration(0) + 32));
    static Color.secondary.getter();
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel);
    lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    View.defaultForegroundColor(_:)();

    v12 = v50;
    v13 = *(&v50 + 1);
    v14 = v51;
    v15 = static Font.caption.getter();
    KeyPath = swift_getKeyPath();
    LOBYTE(v46) = v12;
    *(&v46 + 1) = v13;
    *&v47 = v14;
    *(&v47 + 1) = KeyPath;
    *&v48 = v15;
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(0);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.monospacedDigit()();

    v41 = *(&v50 + 1);
    v42 = v50;
    v39 = *(&v51 + 1);
    v40 = v51;
    v38 = v52;
    v37 = v53;
    v36 = v54;
    v35 = v55;
  }

  v34 = v11;
  v17 = v45;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v11, v45, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  v18 = v44;
  v19 = BYTE4(v43);
  *v44 = v43;
  v18[1] = v19;
  type metadata accessor for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)(0);
  v21 = v20;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v17, &v18[*(v20 + 48)], type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  v22 = &v18[*(v21 + 64)];
  v23 = v42;
  v24 = v41;
  *&v46 = v42;
  *(&v46 + 1) = v41;
  v25 = v40;
  v26 = v39;
  *&v47 = v40;
  *(&v47 + 1) = v39;
  v27 = v38;
  v28 = v37;
  *&v48 = v38;
  *(&v48 + 1) = v37;
  v29 = v36;
  v30 = v35;
  *&v49 = v36;
  *(&v49 + 1) = v35;
  v31 = v47;
  *v22 = v46;
  v22[1] = v31;
  v32 = v49;
  v22[2] = v48;
  v22[3] = v32;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(&v46, &v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?);
  outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v34, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
  *&v50 = v23;
  *(&v50 + 1) = v24;
  *&v51 = v25;
  *(&v51 + 1) = v26;
  v52 = v27;
  v53 = v28;
  v54 = v29;
  v55 = v30;
  outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(&v50, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?);
  return outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v17, type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
}

uint64_t LinearProgressViewStyle.progressBar(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = type metadata accessor for LinearUIKitProgressView(0);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v31 - v7;
  v8 = type metadata accessor for ProgressViewStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = type metadata accessor for ArchivableLinearProgressView(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *v2;
  v20 = *(v2 + 8);
  v21 = *(v2 + 32);
  v33 = a1;
  outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(a1, v12, type metadata accessor for ProgressViewStyleConfiguration);
  if (v21)
  {
    outlined init with take of ProgressViewStyleConfiguration(v12, v15, type metadata accessor for ProgressViewStyleConfiguration);
    *&v15[*(v13 + 20)] = v21;
    outlined init with take of ProgressViewStyleConfiguration(v15, v18, type metadata accessor for ArchivableLinearProgressView);
    v22 = v36;
    outlined init with take of ProgressViewStyleConfiguration(v18, v36, type metadata accessor for ArchivableLinearProgressView);
    v23 = v32;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v33, v32, type metadata accessor for ProgressViewStyleConfiguration);
    v24 = v21;
  }

  else
  {
    v25 = specialized Environment.wrappedValue.getter(v19, v20);
    outlined init with take of ProgressViewStyleConfiguration(v12, v15, type metadata accessor for ProgressViewStyleConfiguration);
    *&v15[*(v13 + 20)] = v25;
    outlined init with take of ProgressViewStyleConfiguration(v15, v18, type metadata accessor for ArchivableLinearProgressView);
    v22 = v36;
    outlined init with take of ProgressViewStyleConfiguration(v18, v36, type metadata accessor for ArchivableLinearProgressView);
    v23 = v32;
    outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(v33, v32, type metadata accessor for ProgressViewStyleConfiguration);
    v24 = specialized Environment.wrappedValue.getter(v19, v20);
  }

  type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(0);
  v27 = *(v26 + 44);
  outlined init with take of ProgressViewStyleConfiguration(v23, v5, type metadata accessor for ProgressViewStyleConfiguration);
  *&v5[*(v35 + 20)] = v24;
  v28 = v5;
  v29 = v34;
  outlined init with take of ProgressViewStyleConfiguration(v28, v34, type metadata accessor for LinearUIKitProgressView);
  outlined init with take of ProgressViewStyleConfiguration(v29, v22 + v27, type metadata accessor for LinearUIKitProgressView);
  return swift_retain_n();
}

uint64_t protocol witness for ProgressViewStyle.makeBody(configuration:) in conformance LinearProgressViewStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v5;
  v9 = *(v2 + 32);
  *a2 = static HorizontalAlignment.leading.getter();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>(0);
  return closure #1 in LinearProgressViewStyle.makeBody(configuration:)(v8, a1, (a2 + *(v6 + 44)));
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>)
  {
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>);
    }
  }
}

void type metadata accessor for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?))
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label??, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.Label?, &type metadata for ProgressViewStyleConfiguration.Label, MEMORY[0x1E69E6720]);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?));
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>();
    type metadata accessor for ArchivableLinearProgressView(255);
    type metadata accessor for LinearUIKitProgressView(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>);
    }
  }
}

void type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>()
{
  if (!lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>)
  {
    v0 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>);
    }
  }
}

void type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<[AnyFontModifier]>, type metadata accessor for [AnyFontModifier], MEMORY[0x1E6980B20]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for LinearProgressViewStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for LinearProgressViewStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>)
  {
    type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>(255);
    lazy protocol witness table accessor for type VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>, MEMORY[0x1E6981F48]);
    v1 = type metadata accessor for VStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ProgressViewStyleConfiguration.Label??, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>, ModifiedContent<ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>?)>> and conformance VStack<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for ProgressViewStyleConfiguration.CurrentValueLabel?, &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel);
    v4[0] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel? and conformance <A> A?();
    v5[1] = _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ProgressViewStyleConfiguration.CurrentValueLabel?, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ArchivableLinearProgressView, LinearUIKitProgressView>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void specialized MutableCollection<>.sort(by:)(char **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = (v4 + 32);
  v6[1] = v5;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, a2 & 1);
  *a1 = v4;
}

void PagingScrollTargetBehavior.updateTarget(_:context:)(__int128 *a1, __n128 *a2)
{
  v3 = a2[11];
  *&v67[96] = a2[10];
  *&v67[112] = v3;
  v4 = a2[13];
  v68 = a2[12];
  v69 = v4;
  v5 = a2[7];
  *&v67[32] = a2[6];
  *&v67[48] = v5;
  v6 = a2[9];
  *&v67[64] = a2[8];
  *&v67[80] = v6;
  v7 = a2[3];
  v65 = a2[2];
  v66 = v7;
  v8 = a2[5];
  *v67 = a2[4];
  *&v67[16] = v8;
  v9 = a2[1];
  v63 = *a2;
  v64 = v9;
  _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(a1, &v63);
  ScrollTarget.rect.getter();
  v12 = v11;
  v13 = v67[120];
  if ((v67[120] & 2) != 0)
  {
    v14 = v10;
    v60 = *&v67[72];
    v61 = *&v67[88];
    v62 = *&v67[104];
    v56 = *&v67[8];
    v57 = *&v67[24];
    v58 = *&v67[40];
    v59 = *&v67[56];
    v46 = *&v67[72];
    v47 = *&v67[88];
    v48 = *&v67[104];
    v42 = *&v67[8];
    v43 = *&v67[24];
    v44 = *&v67[40];
    v45 = *&v67[56];
    ScrollGeometry.containerSize.getter();
    v16 = v15;
    ScrollGeometry.contentSize.getter();
    if (v14 > 0.0 && v14 < v22 - v16)
    {
      v23 = *(a1 + 48);
      v24 = a1[1];
      v56 = *a1;
      v57 = v24;
      v58 = a1[2];
      LOBYTE(v59) = v23;
      v52 = *&v67[96];
      v53 = *&v67[112];
      v54 = v68;
      v55 = v69;
      v48 = *&v67[32];
      v49 = *&v67[48];
      v50 = *&v67[64];
      v51 = *&v67[80];
      v44 = v65;
      v45 = v66;
      v46 = *v67;
      v47 = *&v67[16];
      v42 = v63;
      v43 = v64;
      v25 = PagingScrollTargetBehavior.makeInfo(_:context:axis:)(&v56, v42.n128_f64, 1, v17, v18, v19, v20, v21);
      if ((v28 & 1) == 0)
      {
        _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(a1, &v63, 1, *&v25, v26, v27);
      }
    }
  }

  if (v13)
  {
    v60 = *&v67[72];
    v61 = *&v67[88];
    v62 = *&v67[104];
    v56 = *&v67[8];
    v57 = *&v67[24];
    v58 = *&v67[40];
    v59 = *&v67[56];
    v46 = *&v67[72];
    v47 = *&v67[88];
    v48 = *&v67[104];
    v42 = *&v67[8];
    v43 = *&v67[24];
    v44 = *&v67[40];
    v45 = *&v67[56];
    v29 = ScrollGeometry.containerSize.getter();
    ScrollGeometry.contentSize.getter();
    if (v12 > 0.0 && v12 < v35 - v29)
    {
      v36 = *(a1 + 48);
      v37 = a1[1];
      v56 = *a1;
      v57 = v37;
      v58 = a1[2];
      LOBYTE(v59) = v36;
      v52 = *&v67[96];
      v53 = *&v67[112];
      v54 = v68;
      v55 = v69;
      v48 = *&v67[32];
      v49 = *&v67[48];
      v50 = *&v67[64];
      v51 = *&v67[80];
      v44 = v65;
      v45 = v66;
      v46 = *v67;
      v47 = *&v67[16];
      v42 = v63;
      v43 = v64;
      v38 = PagingScrollTargetBehavior.makeInfo(_:context:axis:)(&v56, v42.n128_f64, 0, v30, v31, v32, v33, v34);
      if ((v41 & 1) == 0)
      {
        _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(a1, &v63, 0, *&v38, v39, v40);
      }
    }
  }
}

uint64_t _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 184);
  if (v3)
  {
    ScrollTarget.rect.getter();
    v5 = v4;
    v6 = *(a2 + 120);
    v7 = *(a2 + 152);
    v31 = *(a2 + 136);
    v32 = v7;
    v33 = *(a2 + 168);
    v8 = *(a2 + 88);
    v27 = *(a2 + 72);
    v28 = v8;
    v29 = *(a2 + 104);
    v30 = v6;
    v9 = ScrollGeometry.containerSize.getter();
    v10 = v5 - v9;
    if (v5 - v9 <= v5)
    {
      v10 = v5;
    }

    v11 = v5 + v9;
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = ScrollTarget.rect.modify();
    *v14 = v12;
    v15 = v13(&v27, 0);
  }

  if ((v3 & 2) != 0)
  {
    ScrollTarget.rect.getter();
    v17 = v16;
    v18 = *(a2 + 120);
    v19 = *(a2 + 152);
    v31 = *(a2 + 136);
    v32 = v19;
    v33 = *(a2 + 168);
    v20 = *(a2 + 88);
    v27 = *(a2 + 72);
    v28 = v20;
    v29 = *(a2 + 104);
    v30 = v18;
    ScrollGeometry.containerSize.getter();
    v22 = v17 - v21;
    if (v17 - v21 <= v17)
    {
      v22 = v17;
    }

    v23 = v17 + v21;
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = ScrollTarget.rect.modify();
    *(v26 + 8) = v24;
    return v25(&v27, 0);
  }

  return v15;
}

uint64_t PagingScrollTargetBehavior.makeInfo(_:context:axis:)(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3 & 1;
  if (a2[14] == a2[16])
  {
    EdgeInsets.subscript.getter();
    v10 = v9 * 0.5;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = ScrollGeometry.containerSize.getter();
  v13 = v12;
  ScrollTarget.rect.getter();
  v15 = v14;
  v17 = v16;
  ScrollTarget.rect.getter();
  if (v8)
  {
    v18 = v13;
  }

  else
  {
    v18 = v11;
  }

  v19 = v10 + v18;
  if (v8)
  {
    v20 = v17;
  }

  else
  {
    v20 = v15;
  }

  return round(v20 / v19);
}

uint64_t _s7SwiftUI20ScrollTargetBehaviorPAAE05alignD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7context4axis8itemInfoyAA0cD0Vz_AA0cdE7ContextVAA4AxisOAA04ItemS0AELLVtFAA06PagingcdE0V_Tt3B5(void *a1, __n128 *a2, char a3, double a4, double a5, double a6)
{
  v7 = a5;
  if (a2[11].n128_u8[9] == 4)
  {
    if (a3)
    {
      goto LABEL_20;
    }

    v10 = 0;
    goto LABEL_5;
  }

  v10 = a4 == a5;
  if ((a3 & 1) == 0)
  {
LABEL_5:
    v21[0] = a2[13];
    EnvironmentValues.layoutDirection.getter();
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = (a2 + 56);
    if (a3)
    {
      v11 = a2 + 4;
    }

    if (v11->n128_f64[0] > 0.0)
    {
      v12 = -1.0;
      if (v20)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (v11->n128_f64[0] >= 0.0)
    {
      goto LABEL_20;
    }

    v12 = 1.0;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    v12 = -1.0;
    goto LABEL_19;
  }

  if (a4 != a5)
  {
    goto LABEL_20;
  }

  v13 = a2[4].n128_f64[0];
  if (v13 <= 0.0)
  {
    if (v13 >= 0.0)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_13:
  v12 = 1.0;
LABEL_19:
  v7 = v12 + v7;
LABEL_20:
  ScrollTarget.rect.getter();
  if (a3)
  {
    v14 = v15;
  }

  if (v7 < 0.0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v7 * a6;
  }

  v17 = ScrollTarget.rect.modify();
  *(v18 + 8 * (a3 & 1)) = v16;
  return v17(v21, 0);
}

_BYTE *ViewAlignedScrollTargetBehavior.init(limitBehavior:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  return result;
}

_BYTE *ViewAlignedScrollTargetBehavior.init(limitBehavior:anchor:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t ViewAlignedScrollTargetBehavior.init(anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3 & 1;
  return result;
}

void ViewAlignedScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, __int128 *a2)
{
  v4 = a2[11];
  *&v73[96] = a2[10];
  *&v73[112] = v4;
  v5 = a2[13];
  v74 = a2[12];
  v75 = v5;
  v6 = a2[7];
  *&v73[32] = a2[6];
  *&v73[48] = v6;
  v7 = a2[9];
  *&v73[64] = a2[8];
  *&v73[80] = v7;
  v8 = a2[3];
  v71 = a2[2];
  v72 = v8;
  v9 = a2[5];
  *v73 = a2[4];
  *&v73[16] = v9;
  v10 = a2[1];
  v69 = *a2;
  v70 = v10;
  v11 = *v2;
  v12 = *(v2 + 1);
  v13 = *(v2 + 2);
  v14 = v2[24];
  if (v73[120] == 2)
  {
    v15 = 0;
  }

  else
  {
    if (v73[120] != 1)
    {
      return;
    }

    v15 = 1;
  }

  if (v73[121] == 2 && v11 != 2)
  {
    _s7SwiftUI20ScrollTargetBehaviorPAAE05clampD033_FE051BF4B66BEBAE7C12D6AAB4CD57D4LL_7contextyAA0cD0Vz_AA0cdE7ContextVtFAA011ViewAlignedcdE0V_Tt1B5Tm(a1, &v69);
  }

  ScrollTarget.rect.getter();
  v17 = v16;
  v19 = v18;
  v20 = ScrollGeometry.containerSize.getter();
  v22 = v21;
  v51 = *&v73[72];
  v52 = *&v73[88];
  v53 = *&v73[104];
  v47 = *&v73[8];
  v48 = *&v73[24];
  v49 = *&v73[40];
  v50 = *&v73[56];
  ScrollGeometry.contentSize.getter();
  if (v15)
  {
    v31 = v17;
  }

  else
  {
    v31 = v19;
  }

  if (v15)
  {
    v32 = v20;
  }

  else
  {
    v32 = v22;
  }

  if (!v15)
  {
    v29 = v30;
  }

  x = 0.0;
  v34 = 1;
  if (v31 <= 0.0 || v31 >= v29 - v32 || (v63 = v11, v64 = v12, v65 = v13, v66 = v14, v35 = *(a1 + 48), v36 = *(a1 + 16), v61[0] = *a1, v61[1] = v36, v61[2] = *(a1 + 32), v62 = v35, v57 = *&v73[96], v58 = *&v73[112], v59 = v74, v60 = v75, v53 = *&v73[32], v54 = *&v73[48], v55 = *&v73[64], v56 = *&v73[80], v49 = v71, v50 = v72, v51 = *v73, v52 = *&v73[16], v47 = v69, v48 = v70, ViewAlignedScrollTargetBehavior.makeTarget(_:context:)(v61, &v47, v23, v24, v25, v26, v27, v28, v67), v37 = v68, (v68 & 1) != 0))
  {
    y = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v37 = 1;
    if (v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v34 = 0;
    x = *v67;
    y = *&v67[1];
    v39 = *&v67[2];
    v40 = *&v67[3];
    if (v14)
    {
LABEL_20:
      if (v37)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  if (v37)
  {
    return;
  }

  v41 = UnitPoint.in(_:)(__PAIR128__(*&v40, *&v39));
  v51 = *&v73[72];
  v52 = *&v73[88];
  v53 = *&v73[104];
  v47 = *&v73[8];
  v48 = *&v73[24];
  v49 = *&v73[40];
  v50 = *&v73[56];
  v42 = ScrollGeometry.containerSize.getter();
  v44 = UnitPoint.in(_:)(__PAIR128__(v43, *&v42));
  if (v34)
  {
    return;
  }

  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = v39;
  v76.size.height = v40;
  v77 = CGRectOffset(v76, v44.x - v41.x, v44.y - v41.y);
  x = v77.origin.x;
  y = v77.origin.y;
LABEL_26:
  v46 = ScrollTarget.rect.modify();
  if (v15)
  {
    *v45 = x;
  }

  else
  {
    v45[1] = y;
  }

  v46(&v47, 0);
}

void ViewAlignedScrollTargetBehavior.makeTarget(_:context:)(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a9;
  v10 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v83 = *(a1 + 48);
  v16 = a2[9];
  *&v134[64] = a2[8];
  *&v134[80] = v16;
  *&v134[96] = a2[10];
  *&v134[112] = *(a2 + 22);
  v17 = a2[5];
  *v134 = a2[4];
  *&v134[16] = v17;
  v18 = a2[7];
  *&v134[32] = a2[6];
  *&v134[48] = v18;
  v19 = a2[1];
  v130 = *a2;
  v131 = v19;
  v20 = a2[3];
  v132 = a2[2];
  v133 = v20;
  v21 = *(a2 + 184);
  v129[0] = *(a2 + 185);
  *(v129 + 3) = *(a2 + 47);
  v22 = *(a2 + 24);
  v127 = *(a2 + 200);
  v128 = *(a2 + 27);
  v79 = v22;
  v23 = *(v22 + 16);
  if (!v23)
  {
    MEMORY[0x18D009810](0xD000000000000075, 0x800000018CD441A0, a3, a4, a5, a6, a7, a8);
    LOBYTE(v24) = 1;
    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    goto LABEL_38;
  }

  v24 = 1;
  if (v21 == 2)
  {
    v77 = 2;
    v78 = a9;
    goto LABEL_7;
  }

  v25 = v10;
  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
  if (v21 != 1)
  {
LABEL_38:
    *v9 = x;
    *(v9 + 8) = y;
    *(v9 + 16) = width;
    *(v9 + 24) = height;
    *(v9 + 32) = v24;
    return;
  }

  v77 = 1;
  v78 = a9;
  v24 = 0;
  v10 = v25;
LABEL_7:
  v30 = *(a2 + 120);
  v31 = *(a2 + 152);
  v99 = *(a2 + 136);
  v100 = v31;
  v101 = *(a2 + 168);
  v32 = *(a2 + 88);
  v95 = *(a2 + 72);
  v96 = v32;
  v97 = *(a2 + 104);
  v98 = v30;
  v33 = ScrollGeometry.containerSize.getter();
  v35 = 0;
  if (v24)
  {
    v36 = v34;
  }

  else
  {
    v36 = v33;
  }

  v124 = MEMORY[0x1E69E7CC0];
  v82 = v79 + 32;
  v80 = v13;
  v81 = v36 * 1.1;
  do
  {
    outlined init with copy of _Benchmark(v82 + 40 * v35, v121);
    v37 = v123;
    v38 = __swift_project_boxed_opaque_existential_1(v121, v122);
    v39 = MEMORY[0x1EEE9AC00](v38);
    (*(v37 + 24))(partial apply for closure #1 in ViewAlignedScrollTargetBehavior.makeTarget(_:context:), v39);
    v40 = v122;
    v41 = v123;
    __swift_project_boxed_opaque_existential_1(v121, v122);
    *&v87 = v10;
    *(&v87 + 1) = v11;
    *&v88 = v13;
    *(&v88 + 1) = v12;
    *&v89 = v15;
    *(&v89 + 1) = v14;
    LOBYTE(v90) = v83;
    ScrollTarget.rect.getter();
    (*(v41 + 32))(&v95, v40, v41);
    __swift_destroy_boxed_opaque_existential_1(v121);
    v112[4] = v99;
    v112[5] = v100;
    v112[6] = v101;
    v112[7] = v102;
    v112[0] = v95;
    v112[1] = v96;
    v112[2] = v97;
    v112[3] = v98;
    v119 = v101;
    v120 = v102;
    v117 = v99;
    v118 = v100;
    v115 = v97;
    v116 = v98;
    v113 = v95;
    v114 = v96;
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v113) != 1)
    {
      v42 = v12;
      v43 = v11;
      v44 = v10;
      v99 = v117;
      v100 = v118;
      v101 = v119;
      v102 = v120;
      v95 = v113;
      v96 = v114;
      v97 = v115;
      v98 = v116;
      ScrollableCollectionSubview.frameInContent.getter();
      v48 = v47;
      v50 = v49;
      if (v24)
      {
        v51 = v46;
      }

      else
      {
        v51 = v45;
      }

      if (v51 > v81)
      {
LABEL_11:
        outlined destroy of ScrollableCollectionSubview?(v112);
      }

      else
      {
        v52 = v45;
        v53 = v46;
        v54 = v124;
        v55 = v124 + 56;
        v56 = *(v124 + 2) + 1;
        while (--v56)
        {
          v57 = v55 + 32;
          v137.origin.x = v48;
          v137.origin.y = v50;
          v137.size.width = v52;
          v137.size.height = v53;
          v58 = CGRectEqualToRect(*(v55 - 24), v137);
          v55 = v57;
          if (v58)
          {
            goto LABEL_11;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 2) + 1, 1, v54);
        }

        v60 = *(v54 + 2);
        v59 = *(v54 + 3);
        if (v60 >= v59 >> 1)
        {
          v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v54);
        }

        outlined destroy of ScrollableCollectionSubview?(v112);
        *(v54 + 2) = v60 + 1;
        v61 = &v54[32 * v60];
        v61[4] = v48;
        v61[5] = v50;
        v61[6] = v52;
        v61[7] = v53;
        v124 = v54;
      }

      v10 = v44;
      v11 = v43;
      v12 = v42;
      v13 = v80;
    }

    ++v35;
  }

  while (v35 != v23);
  *&v87 = v10;
  *(&v87 + 1) = v11;
  *&v88 = v13;
  *(&v88 + 1) = v12;
  *&v89 = v15;
  *(&v89 + 1) = v14;
  LOBYTE(v90) = v83;
  ScrollTarget.rect.getter();
  v103 = *&v134[64];
  v104 = *&v134[80];
  v105 = *&v134[96];
  v106 = *&v134[112];
  v99 = *v134;
  v100 = *&v134[16];
  v101 = *&v134[32];
  v102 = *&v134[48];
  v95 = v130;
  v96 = v131;
  v97 = v132;
  v98 = v133;
  v107 = v77;
  *v108 = v129[0];
  *&v108[3] = *(v129 + 3);
  v110 = v127;
  v109 = v79;
  v111 = v128;
  ViewAlignedScrollTargetBehavior.findClosestRect(rects:targetOffset:context:)(&v124, &v95, v125, v62, v63);
  x = *v125;
  y = *&v125[1];
  width = *&v125[2];
  height = *&v125[3];
  v64 = v126;
  if (v126)
  {

    LOBYTE(v24) = v64;
    v9 = v78;
    goto LABEL_38;
  }

  v99 = *&v134[72];
  v100 = *&v134[88];
  v101 = *&v134[104];
  v95 = *&v134[8];
  v96 = *&v134[24];
  v97 = *&v134[40];
  v98 = *&v134[56];
  v65 = ScrollGeometry.containerSize.getter();
  v9 = v78;
  if (*(v79 + 16))
  {
    v67 = v65;
    v68 = v66;
    outlined init with copy of _Benchmark(v82, v84);
    v69 = v85;
    v70 = v86;
    __swift_project_boxed_opaque_existential_1(v84, v85);
    (*(v70 + 32))(&v87, v69, v70, 0.0, 0.0, v67, v68);
    v99 = v91;
    v100 = v92;
    v101 = v93;
    v102 = v94;
    v95 = v87;
    v96 = v88;
    v97 = v89;
    v98 = v90;
    if (_s7SwiftUI27ScrollableCollectionSubviewVSgWOg(&v95) != 1)
    {
      ScrollableCollectionSubview.frameInContent.getter();
      if (v24)
      {
        v73 = v74;
      }

      if (v73 <= v81)
      {
        v75 = -v71;
        v76 = -v72;
        v135.origin.x = x;
        v135.origin.y = y;
        v135.size.width = width;
        v135.size.height = height;
        v136 = CGRectOffset(v135, v75, v76);
        x = v136.origin.x;
        y = v136.origin.y;
        width = v136.size.width;
        height = v136.size.height;
      }

      outlined destroy of ScrollableCollectionSubview?(&v87);
    }

    __swift_destroy_boxed_opaque_existential_1(v84);

    LOBYTE(v24) = 0;
    goto LABEL_38;
  }

  __break(1u);
}

void closure #1 in ViewAlignedScrollTargetBehavior.makeTarget(_:context:)(void *a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v11 = a3;
  ScrollableCollectionSubview.frameInContent.getter();
  v15 = v14;
  v17 = v16;
  if (v11)
  {
    v18 = v13;
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= a9 * 1.1)
  {
    v19 = v12;
    v20 = v13;
    v21 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      *a4 = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
      *a4 = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[32 * v24];
    *(v25 + 4) = v15;
    *(v25 + 5) = v17;
    *(v25 + 6) = v19;
    *(v25 + 7) = v20;
  }
}

void ViewAlignedScrollTargetBehavior.findClosestRect(rects:targetOffset:context:)(char **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v8 = *a2;
  v9 = a2[7];
  v10 = a2[8];
  v11 = *(a2 + 184);
  v12 = *(a2 + 185);
  v13 = 0uLL;
  v14 = 1;
  if (v11 != 2)
  {
    if (v11 != 1)
    {
      v36 = 0uLL;
      goto LABEL_58;
    }

    v14 = 0;
  }

  specialized MutableCollection<>.sort(by:)(a1, v14);
  v16 = *a1;
  v17 = *(*a1 + 2);
  if (!v17)
  {
    goto LABEL_20;
  }

  v54 = a4;
  v56 = a5;
  v51 = v8;
  v52 = *&v10;
  v53 = *&v9;
  v18 = &v16[32 * v17];
  v19 = *(v18 + 2);
  v20 = *(v18 + 3);
  v59 = CGRect.outset(bySize:)(*(v16 + 3));
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  MinY = CGRectGetMinY(v60);
  v61 = CGRect.outset(bySize:)(__PAIR128__(v20, v19));
  v26 = v61.origin.x;
  v27 = v61.origin.y;
  v28 = v61.size.width;
  v29 = v61.size.height;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v26;
  v62.origin.y = v27;
  v62.size.width = v28;
  v62.size.height = v29;
  MaxY = CGRectGetMaxY(v62);
  if (v14)
  {
    v32 = MinY;
  }

  else
  {
    v32 = MinX;
  }

  if (v14)
  {
    v33 = MaxY;
  }

  else
  {
    v33 = MaxX;
  }

  if (v32 > v33)
  {
    __break(1u);
    goto LABEL_61;
  }

  v34 = v14 ? v56 : v54;
  if (v32 > v34 || v34 > v33)
  {
LABEL_20:
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    v13 = 0uLL;
LABEL_58:
    *a3 = v13;
    *(a3 + 16) = v36;
    *(a3 + 32) = v14;
    return;
  }

  v55 = ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(v16, v54, v56);
  v57 = v37;
  ScrollTarget.rect.getter();
  v40 = ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(v16, v38, v39);
  if (v57)
  {
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    v13 = 0uLL;
    goto LABEL_58;
  }

  v13 = 0uLL;
  if (v41)
  {
    LOBYTE(v14) = 1;
    v36 = 0uLL;
    goto LABEL_58;
  }

  v42 = &v16[32 * v55 + 32];
  if (v55 == v40 && v12 != 4)
  {
    if (v14)
    {
      if (v52 > 0.0)
      {
LABEL_42:
        v44 = 1;
        goto LABEL_44;
      }

      if (v52 < 0.0)
      {
LABEL_43:
        v44 = -1;
        goto LABEL_44;
      }

      goto LABEL_55;
    }

    v43 = 1;
  }

  else
  {
    if (v14)
    {
      goto LABEL_55;
    }

    v43 = 0;
  }

  EnvironmentValues.layoutDirection.getter();
  if (!v43)
  {
LABEL_55:
    if ((v55 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v53 <= 0.0)
  {
    if (v53 < 0.0)
    {
      if (v51)
      {
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v44 = -1;
  if (!v51)
  {
    v44 = 1;
  }

LABEL_44:
  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v45 = *(v16 + 2);
  if (v55 < v45)
  {
    if (v14)
    {
      v46 = (v42 + 8);
    }

    else
    {
      v46 = &v16[32 * v55 + 32];
    }

    v47 = v44 + v55;
    if (v44 + v55 < v45)
    {
      v48 = *v46;
      v49 = &v16[32 * v47 + 48];
      while (1)
      {
        v13 = *(v49 - 1);
        v50 = *(v49 - 1);
        if (!v14)
        {
          v50 = *(v49 - 2);
        }

        if (v48 != v50)
        {
          break;
        }

        v47 += v44;
        v49 += 4 * v44;
        if (v47 >= v45)
        {
          goto LABEL_55;
        }
      }

      LOBYTE(v14) = 0;
      v36 = *v49;
      goto LABEL_58;
    }

LABEL_56:
    if (v55 < *(v16 + 2))
    {
      LOBYTE(v14) = 0;
      v13 = *v42;
      v36 = *(v42 + 1);
      goto LABEL_58;
    }

    goto LABEL_62;
  }

LABEL_64:
  __break(1u);
}

uint64_t ViewAlignedScrollTargetBehavior.findClosestRectIndex(rects:targetOffset:context:)(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 72;
  for (i = 1; i != v3; ++i)
  {
    distance(_:_:)();
    v8 = v7;
    distance(_:_:)();
    if (v8 < v9)
    {
      v4 = i;
    }

    v5 += 32;
  }

  return v4;
}

void *ViewAlignedScrollTargetBehavior.properties(context:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*v2 - 1 < 2)
  {
    goto LABEL_2;
  }

  if (*v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  v4 = *(result + 16);
  v5 = a2;
  EnvironmentValues.horizontalSizeClass.getter();
  result = EnvironmentValues.verticalSizeClass.getter();
  a2 = v5;
  v6 = v8 != 2 && (v8 & 1) == 0;
  v7 = !v6 || (v4 & 1) == 0;
  if (!v7 || (v3 = 0, v8 != 2) && (v8 & 1) == 0 && (v4 & 2) != 0)
  {
LABEL_2:
    v3 = 1;
  }

LABEL_17:
  *a2 = v3;
  *(a2 + 1) = 0;
  return result;
}

uint64_t AnyScrollTargetBehavior.base.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return outlined init with take of ScrollEnvironmentTransform(a1, v1);
}

uint64_t AnyScrollTargetBehavior.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t AnyScrollTargetBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t AnyScrollTargetBehavior._updateEnvironment(_:context:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t protocol witness for ScrollTargetBehavior.updateTarget(_:context:) in conformance AnyScrollTargetBehavior(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t protocol witness for ScrollTargetBehavior.properties(context:) in conformance AnyScrollTargetBehavior(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t AnyScrollTargetBehavior.properties(context:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t protocol witness for ScrollTargetBehavior._updateEnvironment(_:context:) in conformance AnyScrollTargetBehavior(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t getEnumTagSinglePayload for ViewAlignedScrollTargetBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[25])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ViewAlignedScrollTargetBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role()
{
  result = lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role;
  if (!lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewAlignedScrollTargetBehavior.LimitBehavior.Role, &type metadata for ViewAlignedScrollTargetBehavior.LimitBehavior.Role, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewAlignedScrollTargetBehavior.LimitBehavior.Role and conformance ViewAlignedScrollTargetBehavior.LimitBehavior.Role);
  }

  return result;
}

uint64_t outlined destroy of ScrollableCollectionSubview?(uint64_t a1)
{
  type metadata accessor for ScrollableCollectionSubview?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for ScrollableCollectionSubview?()
{
  if (!lazy cache variable for type metadata for ScrollableCollectionSubview?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollableCollectionSubview?);
    }
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v7 = v5;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for CGRect(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v8 + 16) = v4 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v4 / 2;
      v9 = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, v11, a1, v7, a2 & 1, v6);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v4, 1, a1, a2 & 1);
  }
}