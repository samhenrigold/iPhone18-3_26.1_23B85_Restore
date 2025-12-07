void sub_2D2A00(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v36 = a2[1];
  v37 = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v9 = &v34 - v8;
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v34 = v7;
    v35 = v6;
    v16 = [Strong traitCollection];
    v17 = UITraitCollection.isMediaPicker.getter(v16);

    if (!v17)
    {
      v18 = sub_11438(&off_CF0D48);
      sub_2D380C(v18, 0);

      v20 = (*(a1 + 32) & 0xFE) == 0x7A || (v35 & 0xFE) == 122;
      v21 = sub_2D3334();
      (*(&stru_1A8.reloff + (swift_isaMask & *v21)))();

      (*(v11 + 56))(v9, 0, 1, v10);
      sub_25A964(v9, 0, v13);
      sub_12E1C(v9, &unk_DFAAB0, qword_B05AE0);
      v22 = sub_2D3334();
      if (v20)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = SymbolButton.Animation.eased.unsafeMutableAddressor();
        v23 = *v26;
        v24 = v26[1];
        v25 = v26[2];
      }

      v27 = v34;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])(v13, v23, v24, v25, v20, &off_CF0D70);

      v28 = sub_2D3334();
      v29 = *(a2 + 32);
      v30 = v35;
      if ((v29 & 0xFE) == 0x7A)
      {
        v31 = 0;
      }

      else
      {
        sub_2596F4(*(a2 + 3), v29);
        v31 = sub_AB9260();
      }

      [v28 setAccessibilityLabel:v31];
      sub_BD4F8(v13);

      v32 = *(v15 + *(&stru_248.reloff + (swift_isaMask & *v15))) + qword_E08858;
      v33 = v36;
      *v32 = v37;
      *(v32 + 16) = v33;
      *(v32 + 32) = v30;
      *(v32 + 40) = v27;
    }
  }
}

void sub_2D2DA4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = a2[1];
  v37 = *a2;
  v38 = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v9 = &v35 - v8;
  v10 = type metadata accessor for SymbolButton.Configuration(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v35 = v7;
    v36 = v6;
    v16 = [Strong traitCollection];
    v17 = UITraitCollection.isMediaPicker.getter(v16);

    if (!v17)
    {
      v18 = sub_1144C(&off_CF0DC0);
      sub_2D3ABC(v18, 0);

      v20 = (*(a1 + 32) & 0xFE) == 0x7A || (v36 & 0xFE) == 122;
      v21 = sub_2D3334();
      (*(&stru_1A8.reloff + (swift_isaMask & *v21)))();

      (*(v11 + 56))(v9, 0, 1, v10);
      sub_25A964(v9, 0, v13);
      sub_12E1C(v9, &unk_DFAAB0, qword_B05AE0);
      v22 = sub_2D3334();
      if (v20)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
      }

      else
      {
        v26 = SymbolButton.Animation.eased.unsafeMutableAddressor();
        v23 = *v26;
        v24 = v26[1];
        v25 = v26[2];
      }

      v27 = v35;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 8])(v13, v23, v24, v25, v20, &off_CF0DE8);

      v28 = sub_2D3334();
      v29 = *(a2 + 32);
      v30 = v36;
      if ((v29 & 0xFE) == 0x7A)
      {
        v31 = 0;
      }

      else
      {
        sub_2596F4(*(a2 + 3), v29);
        v31 = sub_AB9260();
      }

      [v28 setAccessibilityLabel:v31];

      v32 = *(v15 + *(&stru_248.reloff + (swift_isaMask & *v15))) + qword_E08858;
      v33 = *(v32 + 16);
      v39[0] = *v32;
      v39[1] = v33;
      v39[2] = *(v32 + 32);
      v34 = v38;
      *v32 = v37;
      *(v32 + 16) = v34;
      *(v32 + 32) = v30;
      *(v32 + 40) = v27;
      sub_4FC4C(v39);
      sub_BD4F8(v13);
    }
  }
}

void sub_2D3160(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2D31BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + *&stru_298.segname[swift_isaMask & *Strong];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if (*(v4 + 2))
      {
        v6 = v5;
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          if (*(v4 + 1))
          {
            [v6 updateAlbumLibraryDataIfNeededWithModelAlbum:v7 containerDetailViewModel:?];
          }
        }
      }
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + *(&stru_248.reloff + (swift_isaMask & *v8)));

    JSContainerDetail.containerDetailedResponseIsReady.getter();
    v11 = v10[qword_E71998];
    v10[qword_E71998] = v12 & 1;
    sub_46E444(v11);
  }
}

char *sub_2D3334()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFAAB0, qword_B05AE0);
  __chkstk_darwin();
  v2 = &v27 - v1;
  v3 = type metadata accessor for SymbolButton.Configuration(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v27 - v7);
  v9 = *&stru_248.sectname[swift_isaMask & *v0];
  v10 = *(v0 + v9);
  if (v10)
  {
    v11 = *(v0 + v9);
  }

  else
  {
    SymbolButton.Configuration.init()(&v27 - v7);
    sub_2E23FC(v8, v2, type metadata accessor for SymbolButton.Configuration);
    (*(v4 + 56))(v2, 0, 1, v3);
    v12 = v0;
    sub_25A964(v2, 0, v6);
    sub_12E1C(v2, &unk_DFAAB0, qword_B05AE0);
    sub_2580A4(v6, v8);
    v13 = SymbolButton.Configuration.Accessibility.forBarButtonItem.unsafeMutableAddressor();
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    v17 = v13[24];
    v18 = v8 + *(v3 + 64);
    v19 = *(v18 + 1);
    v20 = v15;
    v21 = v16;

    *v18 = v14;
    *(v18 + 1) = v15;
    *(v18 + 2) = v16;
    v18[24] = v17;
    v22 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v23 = SymbolButton.init(configuration:handler:)(v8, 0, 0);
    v24 = *(v12 + v9);
    *(v12 + v9) = v23;
    v11 = v23;

    v10 = 0;
  }

  v25 = v10;
  return v11;
}

id sub_2D35AC()
{
  v1 = *&stru_248.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2D3334();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_2D3658()
{
  v1 = v0;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *&stru_248.segname[(swift_isaMask & *v1) + 16];
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = *(v1 + v4);
  }

  else
  {
    v7 = SymbolButton.Configuration.barButtonContextualAction.unsafeMutableAddressor();
    sub_2E23FC(v7, v3, type metadata accessor for SymbolButton.Configuration);
    v8 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
    v9 = SymbolButton.init(configuration:handler:)(v3, 0, 0);
    v10 = *(v1 + v4);
    *(v1 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

id sub_2D3760()
{
  v1 = *(&stru_248.size + (swift_isaMask & *v0));
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = sub_2D3658();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_2D380C(uint64_t a1, char a2)
{
  if (sub_48C664())
  {
    v4 = [v2 navigationItem];
    v5 = [v2 parentViewController];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = v6;
        v8 = [v7 navigationItem];

        v6 = [v7 parentViewController];
        v4 = v8;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = v4;
LABEL_9:

    [v8 setLeftBarButtonItems:0 animated:a2 & 1];
  }

  if (sub_48C664())
  {
    v9 = [v2 navigationItem];
    v10 = [v2 parentViewController];
    if (v10)
    {
      v11 = v10;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v12 = v11;
        v13 = [v12 navigationItem];

        v11 = [v12 parentViewController];
        v9 = v13;
        if (!v11)
        {
          goto LABEL_19;
        }
      }
    }

    v13 = v9;
LABEL_19:
    v14 = [v2 traitCollection];
    sub_2D3E00();
    v16 = v15;

    if (v16)
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v13 setRightBarButtonItems:isa animated:a2 & 1];
  }
}

void sub_2D3ABC(uint64_t a1, char a2)
{
  if (sub_48C664())
  {
    v4 = [v2 navigationItem];
    v5 = [v2 parentViewController];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = v6;
        v8 = [v7 navigationItem];

        v6 = [v7 parentViewController];
        v4 = v8;
        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = v4;
LABEL_9:
    v9 = [v2 traitCollection];
    v10 = (*(&stru_428.flags + (swift_isaMask & *v2)))();

    if (v10)
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      v11.super.isa = sub_AB9740().super.isa;
    }

    else
    {
      v11.super.isa = 0;
    }

    [v8 setLeftBarButtonItems:v11.super.isa animated:a2 & 1];
  }

  if (sub_48C664())
  {
    v12 = [v2 navigationItem];
    v13 = [v2 parentViewController];
    if (v13)
    {
      v14 = v13;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v15 = v14;
        v16 = [v15 navigationItem];

        v14 = [v15 parentViewController];
        v12 = v16;
        if (!v14)
        {
          goto LABEL_22;
        }
      }
    }

    v16 = v12;
LABEL_22:
    v17 = [v2 traitCollection];
    sub_2D3E00();
    v19 = v18;

    if (v19)
    {
      sub_13C80(0, &unk_DF12E0, UIBarButtonItem_ptr);
      isa = sub_AB9740().super.isa;
    }

    else
    {
      isa = 0;
    }

    [v16 setRightBarButtonItems:isa animated:a2 & 1];
  }
}

void sub_2D3E00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  *(v2 + 32) = sub_2D3760();
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0 || (*(v0 + *&stru_298.segname[swift_isaMask & *v0] + 56) & 1) == 0)
  {
    v3 = UITraitCollection.mediaLibrary.getter();
    v4 = [objc_opt_self() deviceMediaLibrary];
    if (v4)
    {
      v5 = v4;
      sub_13C80(0, &qword_DF86B0, MPMediaLibrary_ptr);
      v6 = sub_ABA790();

      if ((v6 & 1) != 0 && (*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) != 0x7A)
      {
        if ((*(*(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1))) + 120) & 0xFE) == 0xF8)
        {
          __break(1u);
        }

        else
        {
          sub_2D35AC();
          sub_AB9730();
          if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_AB97A0();
          }

          sub_AB97F0();
        }
      }
    }

    else
    {
    }
  }
}

void sub_2D3FD0(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v25[2] = *(v4 + 2);
  v25[3] = v5;
  v26 = *(v4 + 8);
  v6 = *(v4 + 1);
  v25[0] = *v4;
  v25[1] = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  *(v4 + 8) = *(a1 + 64);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v8;
  sub_12E1C(v25, &unk_DFDD48, &unk_B08B58);
  if (*(v4 + 6))
  {
    v9 = *v4;
    if (*v4)
    {
      v10 = qword_DE6838;
      v11 = v9;
      if (v10 != -1)
      {
        v22 = v11;
        swift_once();
        v11 = v22;
      }

      v12 = v11;
      sub_10AC20(v9);
      v14 = v13;
      sub_10CB1C(v9, 0, v13);
      v16 = v15;
      static ApplicationCapabilities.shared.getter(v23);
      v17 = v24;
      if (sub_472A84(5, v24))
      {
        v18 = sub_472A84(0, v17);

        sub_70C54(v23);
        v19 = 7;
        if (v18)
        {
          v20 = 1;
        }

        else
        {
          v20 = 7;
        }

        if ((v16 & 1) == 0)
        {
          v19 = v20;
        }

        if (v14 == 7)
        {
          v14 = v19;
        }
      }

      else
      {

        sub_70C54(v23);
      }

      v21 = v2 + *(&stru_338.flags + (swift_isaMask & *v2));
      *v21 = v14;
      v21[8] = 0;
    }
  }
}

void sub_2D41B0(uint64_t a1)
{
  v3 = v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v4 = *(v3 + 7);
  v32[6] = *(v3 + 6);
  v32[7] = v4;
  v33 = v3[128];
  v5 = *(v3 + 3);
  v32[2] = *(v3 + 2);
  v32[3] = v5;
  v6 = *(v3 + 5);
  v32[4] = *(v3 + 4);
  v32[5] = v6;
  v7 = *(v3 + 1);
  v32[0] = *v3;
  v32[1] = v7;
  v8 = *(a1 + 80);
  *(v3 + 4) = *(a1 + 64);
  *(v3 + 5) = v8;
  v9 = *(a1 + 112);
  *(v3 + 6) = *(a1 + 96);
  *(v3 + 7) = v9;
  v3[128] = *(a1 + 128);
  v10 = *(a1 + 48);
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 3) = v10;
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v11;
  sub_12E1C(v32, &unk_DFDD90, &unk_B08BA8);
  v12 = *(v3 + 7);
  v34[6] = *(v3 + 6);
  v34[7] = v12;
  v35 = v3[128];
  v13 = *(v3 + 3);
  v34[2] = *(v3 + 2);
  v34[3] = v13;
  v14 = *(v3 + 5);
  v34[4] = *(v3 + 4);
  v34[5] = v14;
  v15 = *(v3 + 1);
  v34[0] = *v3;
  v34[1] = v15;
  if (sub_11D03C(v34) != 1)
  {
    v16 = *(v3 + 7);
    if (v16)
    {
      v17 = v1;
      v18 = qword_DE6838;
      v19 = v16;
      if (v18 != -1)
      {
        v29 = v19;
        swift_once();
        v19 = v29;
      }

      v20 = v19;
      sub_10AC20(v16);
      v22 = v21;
      sub_10CB1C(v16, 0, v21);
      v24 = v23;
      static ApplicationCapabilities.shared.getter(v30);
      v25 = v31;
      if (sub_472A84(5, v31))
      {
        v26 = sub_472A84(0, v25);

        sub_70C54(v30);
        if (v22 == 7)
        {
          if (v26)
          {
            v27 = 1;
          }

          else
          {
            v27 = 7;
          }

          if (v24)
          {
            v22 = 7;
          }

          else
          {
            v22 = v27;
          }
        }
      }

      else
      {

        sub_70C54(v30);
      }

      v28 = v17 + *(&stru_338.flags + (swift_isaMask & *v17));
      *v28 = v22;
      v28[8] = 0;
    }
  }
}

uint64_t (*sub_2D43E0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 152) = v1;
  *(v3 + 160) = *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  return sub_2D448C;
}

void sub_2D448C(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[19] + v3[20];
    if (*(v4 + 48))
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = qword_DE6838;
        v7 = v5;
        if (v6 != -1)
        {
          v18 = v7;
          swift_once();
          v7 = v18;
        }

        v8 = v7;
        sub_10AC20(v5);
        v10 = v9;
        sub_10CB1C(v5, 0, v9);
        v12 = v11;
        static ApplicationCapabilities.shared.getter(v3);
        v13 = v3[4];
        if (sub_472A84(5, v13))
        {
          v14 = sub_472A84(0, v13);

          sub_70C54(v3);
          v15 = 7;
          if (v14)
          {
            v16 = 1;
          }

          else
          {
            v16 = 7;
          }

          if ((v12 & 1) == 0)
          {
            v15 = v16;
          }

          if (v10 == 7)
          {
            v10 = v15;
          }
        }

        else
        {

          sub_70C54(v3);
        }

        v17 = v3[19] + *(&stru_338.flags + (swift_isaMask & *v3[19]));
        *v17 = v10;
        *(v17 + 8) = 0;
      }
    }
  }

  free(v3);
}

uint64_t sub_2D4608(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), __n128 a4)
{
  v6 = *(&stru_2E8.size + (swift_isaMask & *v4));
  if (*&v4[v6])
  {
    v7 = *&v4[v6];
  }

  else
  {
    v9 = v4;
    v11 = sub_4D3DD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    swift_allocObject();
    v7 = sub_2BE684(v9, v11, _swiftEmptyArrayStorage, 1, a3);
    *&v9[v6] = v7;
  }

  return v7;
}

double sub_2D46E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 == -3)
  {
    *&v74 = 0xD000000000000019;
    *(&v74 + 1) = 0x8000000000B4E290;
    *&v75 = 0xD000000000000019;
    *(&v75 + 1) = 0x8000000000B4E290;
    v76 = xmmword_AFAA70;
    *v77 = 512;
    v77[2] = 20;
    memset(&v77[8], 0, 72);
    v78[0] = 1;
    *&v78[8] = 0;
    *&v78[16] = 0;
    v78[24] = 2;
    *&v79 = 0xD000000000000019;
    *(&v79 + 1) = 0x8000000000B4E290;
    *&v80 = 0xD000000000000019;
    *(&v80 + 1) = 0x8000000000B4E290;
    v81 = xmmword_AFAA70;
    *v82 = 512;
    v82[2] = 20;
    v84 = 0;
    memset(v83, 0, sizeof(v83));
    *&v82[8] = 0u;
    v85 = 1;
    v87 = 0;
    v88 = 0;
    v89 = 2;
    sub_465F4(&v74, &v99);
    sub_46650(&v79);
    v96 = *&v77[48];
    v97 = *&v77[64];
    v98[0] = *v78;
    *(v98 + 9) = *&v78[9];
    v92 = v76;
    v93 = *v77;
    v94 = *&v77[16];
    v95 = *&v77[32];
    v90 = v74;
    v91 = v75;
    UIScreen.Dimensions.size.getter();
    v105 = v96;
    v106 = v97;
    v107[0] = v98[0];
    v9 = *(v98 + 9);
LABEL_57:
    *(v107 + 9) = v9;
    v101 = v92;
    v102 = v93;
    v103 = v94;
    v104 = v95;
    v99 = v90;
    v100 = v91;
    goto LABEL_58;
  }

  if (a1 == -1)
  {
    v4 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v4 && (v5 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata, swift_beginAccess(), (v6 = *&v4[v5]) != 0))
    {
      v7 = v6;
      v8 = v4;
      if ([v7 storeID])
      {
        sub_ABAB50();

        swift_unknownObjectRelease();
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
      }

      sub_15F84(&v99, &v90, &unk_DE8E40, &unk_AF8050);
      if (*(&v91 + 1))
      {
        sub_9ACFC(&v90, &v79);
        __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
        sub_ABB3A0();
        v13 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        if (v13)
        {
          v14 = v13;
          v11 = sub_AB92A0();
          v12 = v15;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v11 = 0;
          v12 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0(&v79);
        sub_12E1C(&v99, &unk_DE8E40, &unk_AF8050);
LABEL_18:
        v16 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
        v17 = *(*(v16 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
        v18 = *v17;
        v19 = *(v17 + 16);
        v70 = v11;
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            v23 = 0;
            v25 = 0xE000000000000000;
            goto LABEL_24;
          }
        }

        else if (*(v17 + 16))
        {
          v20 = *v17;
          v68 = *(v17 + 8);
          v21 = v4;
          v22 = [v18 string];
          v23 = sub_AB92A0();
          v25 = v24;

          v4 = v21;
          sub_2372F0(v20, v68, 1);
          goto LABEL_25;
        }

        v23 = *v17;
        v25 = *(v17 + 8);
LABEL_24:
        sub_258078(v18, *(v17 + 8), v19);
LABEL_25:

        if ((v25 & 0x2000000000000000) != 0)
        {
          v27 = HIBYTE(v25) & 0xF;
          if (!v27)
          {
LABEL_30:
            v66 = v12;
            if (v4)
            {
              v28 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
              v26 = swift_beginAccess();
              v29 = *&v4[v28];
              if (v29)
              {
                v30 = v29;
                v31 = [v30 name];
                if (v31)
                {
                  v32 = v31;
                  v33 = sub_AB92A0();
                  v35 = v34;

LABEL_44:
                  v44 = v4[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
                  v67 = v35;
                  v69 = v33;
                  if (v44 == 2)
                  {
                    v41 = 0;
                  }

                  else if (v44 == 3)
                  {
                    v41 = 2;
                  }

                  else
                  {
                    v41 = 1;
                  }

                  v42 = v4;
LABEL_50:
                  v45 = v27 == 0;
                  v46 = *(v16 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText + 8);
                  v65 = *(v16 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);

                  v47 = v4;

                  if (v4)
                  {
                    v64 = v4;
                    type metadata accessor for JSMediaItem(0);
                    v48 = swift_dynamicCastClass();
                    if (v48)
                    {
                      v49 = *&stru_1A8.sectname[swift_isaMask & *v48];
                      v50 = v45;
                      v51 = v42;
                      v52 = v41;
                      v53 = v47;
                      v47 = v49();

                      v41 = v52;
                      v42 = v51;
                      v45 = v50;
                      v54 = v47 != 0;
                    }

                    else
                    {
                      type metadata accessor for JSSearchLandingUpsell(0);
                      if (swift_dynamicCastClass())
                      {
                        v61 = v41;
                        v62 = v47;
                        v63 = JSSearchLandingUpsell.tallVideoArtwork.getter();
                        v55 = v66;
                        if (v63)
                        {
                          v47 = v63;

                          v54 = 1;
                        }

                        else
                        {
                          v47 = JSSearchLandingUpsell.wideArtwork.getter();

                          v54 = v47 != 0;
                        }

                        v41 = v61;
                        goto LABEL_56;
                      }

                      v54 = 0;
                    }

                    v4 = v64;
                  }

                  else
                  {
                    v54 = 0;
                  }

                  v55 = v12;
LABEL_56:

                  *&v74 = v70;
                  *(&v74 + 1) = v55;
                  *&v75 = v69;
                  *(&v75 + 1) = v67;
                  v76 = v42;
                  v77[0] = v54;
                  *&v77[3] = v72;
                  v77[7] = v73;
                  *&v78[4] = *&v71[3];
                  *&v78[1] = *v71;
                  v77[1] = 2;
                  v77[2] = v41;
                  *&v77[8] = 0;
                  *&v77[16] = 0;
                  *&v77[24] = v4;
                  memset(&v77[32], 0, 32);
                  *&v77[64] = v65;
                  *&v77[72] = v46;
                  v78[0] = v45;
                  *&v78[8] = 0;
                  *&v78[16] = 0;
                  v78[24] = 2;
                  *&v79 = v70;
                  *(&v79 + 1) = v55;
                  *&v80 = v69;
                  *(&v80 + 1) = v67;
                  v81 = v42;
                  v82[0] = v54;
                  v82[1] = 2;
                  v82[2] = v41;
                  v82[7] = v73;
                  *&v82[3] = v72;
                  *&v82[8] = 0;
                  *&v82[16] = 0;
                  v83[0] = v4;
                  memset(&v83[1], 0, 32);
                  v83[5] = v65;
                  v84 = v46;
                  v85 = v45;
                  *v86 = *v71;
                  *&v86[3] = *&v71[3];
                  v87 = 0;
                  v88 = 0;
                  v89 = 2;
                  sub_465F4(&v74, &v99);
                  sub_46650(&v79);
                  v96 = *&v77[48];
                  v97 = *&v77[64];
                  v98[0] = *v78;
                  *(v98 + 9) = *&v78[9];
                  v92 = v76;
                  v93 = *v77;
                  v94 = *&v77[16];
                  v95 = *&v77[32];
                  v90 = v74;
                  v91 = v75;
                  UIScreen.Dimensions.size.getter();
                  v105 = v96;
                  v106 = v97;
                  v107[0] = v98[0];
                  v9 = *(v98 + 9);
                  goto LABEL_57;
                }
              }
            }

            (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v99, v26);
            if (v102)
            {
              v81 = v101;
              *v82 = v102;
              v79 = v99;
              v80 = v100;
              *&v82[16] = v103;
              v36 = v99;
              v92 = v101;
              v93 = v102;
              *&v94 = v103;
              v90 = v99;
              v91 = v100;

              v37 = v36;
              sub_12E1C(&v90, &unk_DFDD48, &unk_B08B58);
              if (v36)
              {
                if ([v37 hasLoadedValueForKey:MPModelPropertyAlbumTitle])
                {
                  v38 = [v37 title];
                  if (v38)
                  {
                    v39 = v38;
                    v33 = sub_AB92A0();
                    v35 = v40;

                    sub_12E1C(&v79, &unk_DFDD48, &unk_B08B58);
                    if (v4)
                    {
                      goto LABEL_44;
                    }

LABEL_40:
                    v67 = v35;
                    v69 = v33;
                    v41 = 20;
                    v42 = 8;
                    goto LABEL_50;
                  }
                }
              }

              v43 = &v79;
            }

            else
            {
              v92 = v101;
              v93 = v102;
              *&v94 = v103;
              v90 = v99;
              v91 = v100;
              v43 = &v90;
            }

            sub_12E1C(v43, &unk_DFDD48, &unk_B08B58);
            v33 = 0;
            v35 = 0;
            if (v4)
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          }
        }

        else
        {
          v27 = v23 & 0xFFFFFFFFFFFFLL;
          if ((v23 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_30;
          }
        }

        v12 = 0xE500000000000000;
        v70 = 0x7365746F6ELL;
        goto LABEL_30;
      }

      sub_12E1C(&v99, &unk_DE8E40, &unk_AF8050);
    }

    else
    {
      v10 = v4;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  sub_465CC(&v99);
LABEL_58:
  v56 = v106;
  a2[6] = v105;
  a2[7] = v56;
  a2[8] = v107[0];
  *(a2 + 137) = *(v107 + 9);
  v57 = v102;
  a2[2] = v101;
  a2[3] = v57;
  v58 = v104;
  a2[4] = v103;
  a2[5] = v58;
  result = *&v99;
  v60 = v100;
  *a2 = v99;
  a2[1] = v60;
  return result;
}

__n128 sub_2D4FDC@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (a1 == -3)
  {
    v70.n128_u64[0] = 0xD000000000000019;
    v70.n128_u64[1] = 0x8000000000B4E290;
    v71.n128_u64[0] = 0xD000000000000019;
    v71.n128_u64[1] = 0x8000000000B4E290;
    v72 = xmmword_AFAA70;
    *v73 = 512;
    v73[2] = 20;
    memset(&v73[8], 0, 72);
    v74[0] = 1;
    *&v74[16] = 0;
    *&v74[8] = 0;
    v74[24] = 2;
    v75.n128_u64[0] = 0xD000000000000019;
    v75.n128_u64[1] = 0x8000000000B4E290;
    v76.n128_u64[0] = 0xD000000000000019;
    v76.n128_u64[1] = 0x8000000000B4E290;
    v77 = xmmword_AFAA70;
    *v78 = 512;
    v78[2] = 20;
    memset(&v78[8], 0, 72);
    v79 = 1;
    v81 = 0;
    v82 = 0;
    v83 = 2;
    sub_465F4(&v70, &v94);
    sub_46650(&v75);
    v90 = *&v73[48];
    v91 = *&v73[64];
    v92[0] = *v74;
    *(v92 + 9) = *&v74[9];
    v86 = v72;
    v87 = *v73;
    v88 = *&v73[16];
    v89 = *&v73[32];
    v84 = v70;
    v85 = v71;
    UIScreen.Dimensions.size.getter();
    v100 = v90;
    v101 = v91;
    v102[0] = v92[0];
    v9 = *(v92 + 9);
LABEL_52:
    *(v102 + 9) = v9;
    v96 = v86;
    v97 = v87;
    v98 = v88;
    v99 = v89;
    v94 = v84;
    v95 = v85;
    goto LABEL_53;
  }

  if (a1 == -1)
  {
    v4 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
    if (v4 && (v5 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata, swift_beginAccess(), (v6 = *&v4[v5]) != 0))
    {
      v7 = v6;
      v8 = v4;
      if ([v7 storeID])
      {
        sub_ABAB50();

        swift_unknownObjectRelease();
      }

      else
      {
        v94 = 0u;
        v95 = 0u;
      }

      sub_15F84(&v94, &v84, &unk_DE8E40, &unk_AF8050);
      if (v85.n128_u64[1])
      {
        sub_9ACFC(&v84, &v75);
        __swift_project_boxed_opaque_existential_1(&v75, v76.n128_i64[1]);
        sub_ABB3A0();
        v13 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        if (v13)
        {
          v14 = v13;
          v11 = sub_AB92A0();
          v12 = v15;
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v11 = 0;
          v12 = 0;
        }

        __swift_destroy_boxed_opaque_existential_0(&v75);
        sub_12E1C(&v94, &unk_DE8E40, &unk_AF8050);
LABEL_18:
        v16 = *(*(*(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2))) + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView) + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_descriptionLabel) + OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text;
        v17 = *v16;
        v18 = *(v16 + 16);
        v65.n128_u64[0] = v11;
        v65.n128_u64[1] = v12;
        v63 = *(v2 + *(&stru_248.reserved2 + (swift_isaMask & *v2)));
        if (v18 > 1)
        {
          if (v18 != 2)
          {
            v23 = 0;
            v25 = 0xE000000000000000;
            goto LABEL_24;
          }
        }

        else if (*(v16 + 16))
        {
          v19 = *v16;
          v20 = v4;
          v21 = *(v16 + 8);
          v22 = [v17 string];
          v23 = sub_AB92A0();
          v25 = v24;

          v26 = v21;
          v4 = v20;
          sub_2372F0(v19, v26, 1);
          goto LABEL_25;
        }

        v23 = *v16;
        v25 = *(v16 + 8);
LABEL_24:
        sub_258078(v17, *(v16 + 8), v18);
LABEL_25:

        if ((v25 & 0x2000000000000000) != 0)
        {
          v28 = HIBYTE(v25) & 0xF;
          if (!v28)
          {
LABEL_30:
            if (v4)
            {
              v29 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerStoreItemMetadata;
              v27 = swift_beginAccess();
              v30 = *&v4[v29];
              if (v30)
              {
                v31 = v30;
                v32 = [v31 name];
                if (v32)
                {
                  v33 = v32;
                  v34 = sub_AB92A0();
                  v36 = v35;

                  v37 = v63;
LABEL_37:
                  v38 = v4[OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_itemKind];
                  v61 = v36;
                  v62 = v34;
                  if (v38 == 2)
                  {
                    v60 = 0;
                  }

                  else
                  {
                    if (v38 == 3)
                    {
                      v39 = 2;
                    }

                    else
                    {
                      v39 = 1;
                    }

                    v60 = v39;
                  }

                  v41 = v4;
                  v59 = v4;
LABEL_46:
                  v42 = v28 == 0;
                  v43 = *(v37 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
                  v44 = *(v37 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText + 8);

                  v45 = v41;

                  if (v4)
                  {
                    v64 = v42;
                    type metadata accessor for JSMediaItem(0);
                    v46 = swift_dynamicCastClass();
                    if (v46)
                    {
                      v47 = *&stru_1A8.sectname[swift_isaMask & *v46];
                      v48 = v4;
                      v49 = v45;
                      v45 = v47();

                      v4 = v48;
                      v50 = v45 != 0;
                    }

                    else
                    {
                      type metadata accessor for JSSearchLandingUpsell(0);
                      if (swift_dynamicCastClass())
                      {
                        v56 = v4;
                        v57 = v45;
                        v58 = JSSearchLandingUpsell.tallVideoArtwork.getter();
                        if (v58)
                        {
                          v45 = v58;

                          v50 = 1;
                        }

                        else
                        {
                          v45 = JSSearchLandingUpsell.wideArtwork.getter();

                          v50 = v45 != 0;
                        }

                        v4 = v56;
                      }

                      else
                      {
                        v50 = 0;
                      }
                    }

                    v42 = v64;
                  }

                  else
                  {
                    v50 = 0;
                  }

                  v70 = v65;
                  v71.n128_u64[0] = v62;
                  v71.n128_u64[1] = v61;
                  v72 = v59;
                  v73[0] = v50;
                  *&v73[3] = v66;
                  v73[7] = v67;
                  *&v74[4] = *(v68[0].n128_u32 + 3);
                  *&v74[1] = v68[0].n128_u32[0];
                  v73[1] = 2;
                  v73[2] = v60;
                  *&v73[8] = 0;
                  *&v73[16] = 0;
                  memset(&v73[32], 0, 32);
                  *&v73[24] = v4;
                  *&v73[64] = v43;
                  *&v73[72] = v44;
                  v74[0] = v42;
                  *&v74[16] = 0;
                  *&v74[8] = 0;
                  v74[24] = 2;
                  v75 = v65;
                  v76.n128_u64[0] = v62;
                  v76.n128_u64[1] = v61;
                  v77 = v59;
                  v78[0] = v50;
                  v78[1] = 2;
                  v78[2] = v60;
                  v78[7] = v67;
                  *&v78[3] = v66;
                  *&v78[8] = 0;
                  *&v78[16] = 0;
                  memset(&v78[32], 0, 32);
                  *&v78[24] = v4;
                  *&v78[64] = v43;
                  *&v78[72] = v44;
                  v79 = v42;
                  *v80 = v68[0].n128_u32[0];
                  *&v80[3] = *(v68[0].n128_u32 + 3);
                  v81 = 0;
                  v82 = 0;
                  v83 = 2;
                  sub_465F4(&v70, &v94);
                  sub_46650(&v75);
                  v90 = *&v73[48];
                  v91 = *&v73[64];
                  v92[0] = *v74;
                  *(v92 + 9) = *&v74[9];
                  v86 = v72;
                  v87 = *v73;
                  v88 = *&v73[16];
                  v89 = *&v73[32];
                  v84 = v70;
                  v85 = v71;
                  UIScreen.Dimensions.size.getter();
                  v100 = v90;
                  v101 = v91;
                  v102[0] = v92[0];
                  v9 = *(v92 + 9);
                  goto LABEL_52;
                }
              }
            }

            (*(&stru_478.reserved2 + (swift_isaMask & *v2)))(&v84, v27);
            v100 = v90;
            v101 = v91;
            v102[0].n128_u8[0] = v92[0];
            v96 = v86;
            v97 = v87;
            v98 = v88;
            v99 = v89;
            v94 = v84;
            v95 = v85;
            if (sub_11D03C(&v94) == 1)
            {
              *&v78[48] = v90;
              *&v78[64] = v91;
              v79 = v92[0];
              v77 = v86;
              *v78 = v87;
              *&v78[16] = v88;
              *&v78[32] = v89;
              v75 = v84;
              v76 = v85;
              sub_12E1C(&v75, &unk_DFDD90, &unk_B08BA8);
              v34 = 0;
              v36 = 0;
              v37 = v63;
              if (v4)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v68[6] = v90;
              v68[7] = v91;
              v68[2] = v86;
              v68[3] = v87;
              v68[4] = v88;
              v68[5] = v89;
              v68[0] = v84;
              v68[1] = v85;
              v92[8] = v90;
              v92[9] = v91;
              v92[4] = v86;
              v92[5] = v87;
              v92[6] = v88;
              v92[7] = v89;
              v92[2] = v84;
              v92[3] = v85;
              *&v73[48] = v90;
              *&v73[64] = v91;
              v72 = v86;
              *v73 = v87;
              *&v73[16] = v88;
              *&v73[32] = v89;
              v70 = v84;
              v71 = v85;
              *&v78[48] = v90;
              *&v78[64] = v91;
              v77 = v86;
              *v78 = v87;
              *&v78[16] = v88;
              *&v78[32] = v89;
              v69 = v92[0];
              v93 = v92[0];
              v74[0] = v92[0];
              v79 = v92[0];
              v75 = v84;
              v76 = v85;
              sub_2E2538(&v75, &v66);
              sub_12E1C(&v70, &unk_DFDD90, &unk_B08BA8);
              v34 = sub_D1FC0();
              v36 = v40;
              sub_12E1C(v68, &unk_DFDD90, &unk_B08BA8);
              v37 = v63;
              if (v4)
              {
                goto LABEL_37;
              }
            }

            v61 = v36;
            v62 = v34;
            v41 = 0;
            v60 = 20;
            v59 = 8;
            goto LABEL_46;
          }
        }

        else
        {
          v28 = v23 & 0xFFFFFFFFFFFFLL;
          if ((v23 & 0xFFFFFFFFFFFFLL) == 0)
          {
            goto LABEL_30;
          }
        }

        v65.n128_u64[0] = 0x7365746F6ELL;
        v65.n128_u64[1] = 0xE500000000000000;
        goto LABEL_30;
      }

      sub_12E1C(&v94, &unk_DE8E40, &unk_AF8050);
    }

    else
    {
      v10 = v4;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_18;
  }

  sub_465CC(&v94);
LABEL_53:
  v51 = v101;
  a2[6] = v100;
  a2[7] = v51;
  a2[8] = v102[0];
  *(a2 + 137) = *(v102 + 9);
  v52 = v97;
  a2[2] = v96;
  a2[3] = v52;
  v53 = v99;
  a2[4] = v98;
  a2[5] = v53;
  result = v94;
  v55 = v95;
  *a2 = v94;
  a2[1] = v55;
  return result;
}

double sub_2D597C(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + *&stru_298.segname[swift_isaMask & *v2];
  v6 = *(v5 + 4);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *&stru_B8.segname[(*v6 & swift_isaMask) + 8];
  v8 = v6;
  v9 = v7();

  type metadata accessor for JSContainerDetailModelRequest();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_14;
  }

  v10 = (*(&stru_1F8.size + (swift_isaMask & *v9)))();
  if (!v10)
  {
    v10 = (*(&stru_1A8.reserved2 + (swift_isaMask & *v9)))();
    if (!v10)
    {
      v31 = (*(&stru_2E8.size + (swift_isaMask & *v9)))();
      if (v31)
      {
        v32 = v31;
        v33 = (*&stru_B8.segname[(swift_isaMask & *v31) + 16])();

        if ((v33 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_6;
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  v11 = v10;

LABEL_6:
  v12 = *(v5 + 4);
  if (v12)
  {
    v13 = *&stru_B8.segname[(swift_isaMask & *v12) + 8];
    v14 = v12;
    v15 = v13();

    v9 = (*(&stru_2E8.size + (swift_isaMask & *v15)))();
    if (v9)
    {
      v16 = sub_250FAC();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (!Strong || (Strong, Strong != v9) || (v22 = swift_unknownObjectWeakLoadStrong()) == 0)
      {
        v18 = objc_allocWithZone(type metadata accessor for UpsellBannerViewController());
        v19 = v9;
        v20 = sub_1D4A3C(v9);
        v21 = *&stru_388.segname[swift_isaMask & *v3];
        v22 = *(v3 + v21);
        *(v3 + v21) = v20;
      }

      v23 = *(v3 + *&stru_388.segname[swift_isaMask & *v3]);
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      goto LABEL_14;
    }
  }

LABEL_15:
  v24 = *(v3 + *(&stru_248.reloff + (swift_isaMask & *v3)));
  sub_AB9730();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();

  sub_195F0(v25);
  v26 = sub_25036C();
  v27 = *(v3 + *(&stru_248.flags + (swift_isaMask & *v3)));
  if (v26)
  {
    v28 = *&v27[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v28 >> 62)
    {
      v29 = sub_ABB060();
    }

    else
    {
      v29 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
    }

    v27;
    sub_AB9730();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    sub_AB97F0();
    if (!v29)
    {
      sub_A363C();
    }
  }

  else
  {
    sub_4D4068(_swiftEmptyArrayStorage, 0);
  }

  sub_4D4068(_swiftEmptyArrayStorage, a1 & 1);

  return result;
}

void sub_2D5EA4()
{
  v1 = v0;
  (*(&stru_478.reserved2 + (swift_isaMask & *v0)))(&v39);
  if (!v42)
  {
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v34 = v39;
    v35 = v40;
    goto LABEL_7;
  }

  v34 = v39;
  v35 = v40;
  v36 = v41;
  v37 = v42;
  v38 = v43;
  v2 = v39;
  if (!v39)
  {
LABEL_7:
    sub_12E1C(&v34, &unk_DFDD48, &unk_B08B58);
    return;
  }

  v3 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v4 = v2;
  v5 = sub_2BAFF8(v3);
  v6 = [v4 hasLoadedValuesForPropertySet:v5];

  if ((v6 & 1) == 0)
  {
LABEL_20:
    sub_12E1C(&v34, &unk_DFDD48, &unk_B08B58);

    return;
  }

  v7 = *(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1)));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v4;
  v10 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v11 = [v9 hasLoadedValuesForPropertySet:v10];

  if (v11)
  {
    v12 = [v9 libraryAddStatusObserverConfiguration];

    v32 = v12 & 0x1000000;
    v33 = v12 & 0x100000000;
    v31 = v12 & 0x10000;
    v13 = v12 & 0x100;
    v14 = v12 & 1;
  }

  else
  {

    v13 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v14 = 1;
  }

  v15 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
  v16 = *(v15 + qword_E08818);
  if (v16)
  {
    v17 = *(v15 + qword_E08818);
  }

  else
  {
    v18 = v9;
    v19 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v20 = [v18 hasLoadedValuesForPropertySet:v19];

    if (v20)
    {
      v17 = [v18 newKeepLocalStatusObserverConfiguration];
    }

    else
    {

      v17 = [objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration) init];
    }
  }

  v21 = *(v7 + 80);
  *(v7 + 80) = 1;
  v22 = *(v7 + 72);
  *(v7 + 72) = v2;
  v23 = v16;
  v4 = v9;
  sub_25A2AC(v22);

  [*(v7 + 16) setConfiguration:v13 | v14 | v31 | v32 | v33 identifyingModelObject:v4];
  [*(v7 + 24) setConfiguration:v17];
  *(v7 + 80) = v21;
  if (v21)
  {
LABEL_19:

    goto LABEL_20;
  }

  v24 = [objc_opt_self() sharedCloudController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v26, v44);
    v27 = v45;
    v28 = v46;
    v29 = *(v7 + 104);
    v47[0] = *(v7 + 88);
    v47[1] = v29;
    v47[2] = *(v7 + 120);
    v30 = v44[1];
    *(v7 + 88) = v44[0];
    *(v7 + 104) = v30;
    *(v7 + 120) = v27;
    *(v7 + 128) = v28;
    sub_25A60C(v47);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_2D62C0()
{
  v1 = v0;
  (*(&stru_478.reserved2 + (swift_isaMask & *v0)))(&v43);
  v56[6] = v49;
  v56[7] = v50;
  v57 = v51;
  v56[2] = v45;
  v56[3] = v46;
  v56[4] = v47;
  v56[5] = v48;
  v56[0] = v43;
  v56[1] = v44;
  if (sub_11D03C(v56) == 1)
  {
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v36 = v45;
    v37 = v46;
    v38 = v47;
    v39 = v48;
    v34 = v43;
    v35 = v44;
LABEL_7:
    sub_12E1C(&v34, &unk_DFDD90, &unk_B08BA8);
    return;
  }

  v40 = v49;
  v41 = v50;
  v42 = v51;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  v34 = v43;
  v35 = v44;
  v2 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_7;
  }

  v3 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v4 = v2;
  v5 = sub_2BAFF8(v3);
  v6 = [v4 hasLoadedValuesForPropertySet:v5];

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

  v7 = *(v1 + *(&stru_1F8.reserved2 + (swift_isaMask & *v1)));
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v4;
  v10 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
  v11 = [v9 hasLoadedValuesForPropertySet:v10];

  if (v11)
  {
    v12 = [v9 libraryAddStatusObserverConfiguration];

    v32 = v12 & 0x1000000;
    v33 = v12 & 0x100000000;
    v31 = v12 & 0x10000;
    v13 = v12 & 0x100;
    v14 = v12 & 1;
  }

  else
  {

    v13 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v14 = 1;
  }

  v15 = *(v1 + *(&stru_248.reloff + (swift_isaMask & *v1)));
  v16 = *(v15 + qword_E08818);
  if (v16)
  {
    v17 = *(v15 + qword_E08818);
  }

  else
  {
    v18 = v9;
    v19 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v20 = [v18 hasLoadedValuesForPropertySet:v19];

    if (v20)
    {
      v17 = [v18 newKeepLocalStatusObserverConfiguration];
    }

    else
    {

      v17 = [objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration) init];
    }
  }

  v21 = *(v7 + 80);
  *(v7 + 80) = 1;
  v22 = *(v7 + 72);
  *(v7 + 72) = v2;
  v23 = v16;
  v4 = v9;
  sub_25A2AC(v22);

  [*(v7 + 16) setConfiguration:v13 | v14 | v31 | v32 | v33 identifyingModelObject:v4];
  [*(v7 + 24) setConfiguration:v17];
  *(v7 + 80) = v21;
  if (v21)
  {
LABEL_19:

LABEL_20:
    sub_12E1C(&v34, &unk_DFDD90, &unk_B08BA8);

    return;
  }

  v24 = [objc_opt_self() sharedCloudController];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 canShowCloudDownloadButtons];

    if (qword_DE6838 != -1)
    {
      swift_once();
    }

    sub_25AE40(v26, v52);
    v27 = v53;
    v28 = v54;
    v29 = *(v7 + 104);
    v55[0] = *(v7 + 88);
    v55[1] = v29;
    v55[2] = *(v7 + 120);
    v30 = v52[1];
    *(v7 + 88) = v52[0];
    *(v7 + 104) = v30;
    *(v7 + 120) = v27;
    *(v7 + 128) = v28;
    sub_25A60C(v55);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_2D6724()
{
  v1 = *&stru_388.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0;
    *(v0 + v1) = v4;
    v6 = *(v0 + *(&stru_248.flags + (swift_isaMask & *v0)));
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = (v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v9 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v10 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider + 8);
    *v8 = sub_2E2368;
    v8[1] = v7;

    sub_17654(v9, v10);

    if (*(v5 + *&stru_298.segname[swift_isaMask & *v5] + 8))
    {
      swift_beginAccess();
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    sub_A34B8(v11);
    v12 = *(&stru_2E8.reserved2 + (swift_isaMask & *v5));
    v13 = *(v5 + v12);
    if (*(*(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      if (!*(v5 + v12))
      {
        *(v5 + v12) = 1;
        sub_2D597C(0, _swiftEmptyArrayStorage);
        sub_2D6B2C();
      }
    }

    else
    {
      *(v5 + v12) = 0;
      if (v13)
      {
        sub_2D597C(0, _swiftEmptyArrayStorage);
      }
    }
  }
}

void sub_2D68F8()
{
  v1 = *&stru_388.segname[(swift_isaMask & *v0) - 8];
  v2 = *(v0 + v1);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0;
    *(v0 + v1) = v4;
    v6 = *(v0 + *(&stru_248.flags + (swift_isaMask & *v0)));
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = (v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v9 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider);
    v10 = *(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_customJSPageDetailsProvider + 8);
    *v8 = sub_2E4820;
    v8[1] = v7;

    sub_17654(v9, v10);

    if (*(v5 + *&stru_298.segname[swift_isaMask & *v5] + 8))
    {
      swift_beginAccess();
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    sub_A34B8(v11);
    v12 = *(&stru_2E8.reserved2 + (swift_isaMask & *v5));
    v13 = *(v5 + v12);
    if (*(*(v6 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKinds) + 16))
    {
      if (!*(v5 + v12))
      {
        *(v5 + v12) = 1;
        (*(&stru_6F8.offset + (swift_isaMask & *v5)))(0, _swiftEmptyArrayStorage);
        sub_2D6E18();
      }
    }

    else
    {
      *(v5 + v12) = 0;
      if (v13)
      {
        (*(&stru_6F8.offset + (swift_isaMask & *v5)))(0, _swiftEmptyArrayStorage);
      }
    }
  }
}

void sub_2D6B2C()
{
  if (*(v0 + *(&stru_2E8.reserved2 + (swift_isaMask & *v0))) == 1)
  {
    v1 = v0;
    v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
    if (v2)
    {
      v23 = v2;
      if ([v2 isValid])
      {
        goto LABEL_6;
      }

      v3 = [v23 results];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      v5 = [v3 totalItemCount];

      if (v5 >= 1)
      {
LABEL_6:
        v6 = *(v1 + *&stru_388.segname[(swift_isaMask & *v1) - 8]);
        v7 = *(v1 + *(&stru_248.flags + (swift_isaMask & *v1)));
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v6;
        v10 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate);

        if (v10 == 1)
        {
          sub_A3DD4();
        }

        if (*(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) == 1)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = sub_2E23BC;
          *(v11 + 24) = v9;
          v12 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
          swift_beginAccess();
          v13 = *(v7 + v12);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + v12) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_6AA00(0, v13[2] + 1, 1, v13);
            *(v7 + v12) = v13;
          }

          v15 = v13[2];
          v16 = v13[3];
          v17 = v15 + 1;
          if (v15 >= v16 >> 1)
          {
            v22 = v15 + 1;
            v19 = v13;
            v20 = v13[2];
            v21 = sub_6AA00((v16 > 1), v15 + 1, 1, v19);
            v15 = v20;
            v17 = v22;
            v13 = v21;
          }

          v13[2] = v17;
          v18 = &v13[2 * v15];
          v18[4] = sub_2D4D0;
          v18[5] = v11;
          *(v7 + v12) = v13;
          swift_endAccess();
        }

        else
        {
          sub_2D7104(v8, v6);
        }
      }

      else
      {
      }
    }
  }
}

void sub_2D6E18()
{
  if (*(v0 + *(&stru_2E8.reserved2 + (swift_isaMask & *v0))) == 1)
  {
    v1 = v0;
    v2 = (*&stru_4C8.segname[swift_isaMask & *v0])();
    if (v2)
    {
      v23 = v2;
      if ([v2 isValid])
      {
        goto LABEL_6;
      }

      v3 = [v23 results];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = v3;
      v5 = [v3 totalItemCount];

      if (v5 >= 1)
      {
LABEL_6:
        v6 = *(v1 + *&stru_388.segname[(swift_isaMask & *v1) - 8]);
        v7 = *(v1 + *(&stru_248.flags + (swift_isaMask & *v1)));
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = v6;
        v10 = *(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_needsStackItemUpdate);

        if (v10 == 1)
        {
          sub_A3DD4();
        }

        if (*(v7 + OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_isChildViewModelKindsStackItemPreparing) == 1)
        {
          v11 = swift_allocObject();
          *(v11 + 16) = sub_2E26E0;
          *(v11 + 24) = v9;
          v12 = OBJC_IVAR____TtC16MusicApplication29JSVerticalStackViewController_childViewModelKindsStackItemPreparationCompletionHandlers;
          swift_beginAccess();
          v13 = *(v7 + v12);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + v12) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_6AA00(0, v13[2] + 1, 1, v13);
            *(v7 + v12) = v13;
          }

          v15 = v13[2];
          v16 = v13[3];
          v17 = v15 + 1;
          if (v15 >= v16 >> 1)
          {
            v22 = v15 + 1;
            v19 = v13;
            v20 = v13[2];
            v21 = sub_6AA00((v16 > 1), v15 + 1, 1, v19);
            v15 = v20;
            v17 = v22;
            v13 = v21;
          }

          v13[2] = v17;
          v18 = &v13[2 * v15];
          v18[4] = sub_36C08;
          v18[5] = v11;
          *(v7 + v12) = v13;
          swift_endAccess();
        }

        else
        {
          sub_2D71D8(v8, v6);
        }
      }

      else
      {
      }
    }
  }
}

void sub_2D7104(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + *&stru_388.segname[(swift_isaMask & *Strong) - 8]) == a2)
    {
      v5 = *(&stru_2E8.reserved2 + (swift_isaMask & *Strong));
      v6 = *(Strong + v5);
      *(Strong + v5) = 2;
      if (v6 != 2)
      {
        sub_2D597C(0, _swiftEmptyArrayStorage);
      }
    }
  }
}

void sub_2D71D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + *&stru_388.segname[(swift_isaMask & *Strong) - 8]) == a2)
    {
      v5 = *(&stru_2E8.reserved2 + (swift_isaMask & *Strong));
      v6 = *(Strong + v5);
      *(Strong + v5) = 2;
      if (v6 != 2)
      {
        (*(&stru_6F8.offset + (swift_isaMask & *Strong)))(0, _swiftEmptyArrayStorage);
      }
    }
  }
}

void *sub_2D72DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40, &qword_B08B50);
  __chkstk_darwin();
  v3 = &v17[-v2 - 8];
  sub_70EB0(a1, &v20);
  v4 = sub_2D01E0(a1);
  v5 = MetricsEvent.Page.libraryAlbumDetail.unsafeMutableAddressor();
  sub_2E23FC(v5, v3, type metadata accessor for MetricsEvent.Page);
  v6 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = *(&stru_298.flags + (swift_isaMask & *v4));
  swift_beginAccess();
  sub_2DBC38(v3, v4 + v7);
  swift_endAccess();
  v8 = sub_AB9260();
  [v4 setPlayActivityFeatureName:v8];

  v9 = *(a1 + 16);
  if (v9)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      *(&v20 + 1) = 0;
      LOBYTE(v21) = 1;
      *(&v21 + 1) = 0;
      LOBYTE(v22) = 1;
      *(&v22 + 1) = 0;
      *&v18[0] = _swiftEmptyArrayStorage;
      v12 = v9;
      sub_2AF080(_swiftEmptyArrayStorage);
      BYTE8(v23) = 0;
      v24 = _swiftEmptyArrayStorage;
      *&v23 = *&v18[0];
      *&v20 = v11;
      v13 = v12;
      v14 = sub_16234C();
      sub_2AF080(v14);

      v19 = v24;
      v18[2] = v22;
      v18[3] = v23;
      v18[0] = v20;
      v18[1] = v21;
      sub_2DBCA8(v18, v17);
      sub_2D3FD0(&v20);
      sub_2D8B04();
      sub_2DBD04(v18);
    }
  }

  sub_70F0C(a1);

  return v4;
}

void sub_2D75D4(char a1)
{
  v2 = *(&stru_248.offset + (swift_isaMask & *v1));
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  if (v3 == (a1 & 1))
  {
    return;
  }

  v4 = [v1 navigationItem];
  v5 = [v1 parentViewController];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v7 = v6;
      v8 = [v7 navigationItem];

      v6 = [v7 parentViewController];
      v4 = v8;
      if (!v6)
      {
        if ((*(v1 + v2) & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }
    }

    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = v4;
    if ((*(v1 + v2) & 1) == 0)
    {
LABEL_19:
      v16 = 0;
      goto LABEL_20;
    }
  }

LABEL_12:
  v9 = *(v1 + *&stru_298.segname[(swift_isaMask & *v1) + 16]);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = [v9 results];
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 firstSection];

  if (!v12)
  {
    goto LABEL_19;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13 || (v14 = [v13 title]) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v15 = v14;
  sub_AB92A0();
  swift_unknownObjectRelease();

  v17 = sub_AB9260();

  v16 = v17;
LABEL_20:
  v18 = v16;
  [v8 setTitle:?];
}

void sub_2D7848(void *a1)
{
  v2 = v1;
  v4 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5 == a1)
  {
    return;
  }

  v6 = v5;
  v7 = [v6 results];
  if (!v7)
  {

LABEL_13:
    memset(v63, 0, 72);
    sub_2D3FD0(v63);
    v17 = sub_2D8B04();
    goto LABEL_14;
  }

  v8 = v7;
  if (![v7 firstSection])
  {

    goto LABEL_13;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v10 = v9;
  LOBYTE(v63[1]) = 1;
  *(&v63[1] + 1) = 0;
  LOBYTE(v63[2]) = 1;
  *(&v63[2] + 1) = 0;
  *&v61[0] = _swiftEmptyArrayStorage;
  swift_unknownObjectRetain();
  sub_2AF080(_swiftEmptyArrayStorage);
  BYTE8(v63[3]) = 0;
  *&v63[4] = _swiftEmptyArrayStorage;
  *&v63[3] = _swiftEmptyArrayStorage;
  v63[0] = v10;
  swift_unknownObjectRetain();
  v11 = sub_16234C();
  sub_2AF080(v11);
  swift_unknownObjectRelease();
  v53 = v10;
  v54 = *&v63[1];
  v56 = v63[3];
  v57 = _swiftEmptyArrayStorage;
  v55 = *&v63[2];
  v12 = v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v13 = *(v12 + 1);
  v58[0] = *v12;
  v58[1] = v13;
  v14 = *(v12 + 3);
  v58[2] = *(v12 + 2);
  v58[3] = v14;
  v59 = *(v12 + 8);
  v15 = *(&v58[0] + 1);
  v16 = v13;
  v63[0] = v58[0];
  LOBYTE(v63[1]) = v13;
  *(&v63[1] + 1) = *(v12 + 17);
  v63[2] = *(v12 + 2);
  if (v14)
  {
    *&v63[3] = v14;
    *(&v63[3] + 8) = *(v12 + 56);
    sub_15F84(v58, v61, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(v63, &unk_DFDD48, &unk_B08B58);
  }

  else
  {
    *&v63[3] = 0;
    *(&v63[3] + 8) = *(v12 + 56);
    sub_15F84(v58, v61, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(v63, &unk_DFDD48, &unk_B08B58);
    v15 = 0;
    v16 = 1;
  }

  *(&v53 + 1) = v15;
  LOBYTE(v54) = v16 & 1;
  v36 = *(v12 + 3);
  v50 = *(v12 + 2);
  v51 = v36;
  v52 = *(v12 + 8);
  v37 = *(v12 + 1);
  v49[0] = *v12;
  v49[1] = v37;
  v38 = *(&v50 + 1);
  if (v36)
  {
    v39 = *(v12 + 1);
    v63[0] = *v12;
    v63[1] = v39;
    *&v63[2] = *(v12 + 4);
    *(&v63[2] + 1) = *(&v50 + 1);
    *&v63[3] = v51;
    *(&v63[3] + 8) = *(v12 + 56);
    sub_15F84(v49, v61, &unk_DFDD48, &unk_B08B58);

    sub_12E1C(v63, &unk_DFDD48, &unk_B08B58);
  }

  else
  {
    v40 = *(v12 + 1);
    v63[0] = *v12;
    v63[1] = v40;
    *&v63[2] = *(v12 + 4);
    *(&v63[2] + 1) = *(&v50 + 1);
    *&v63[3] = 0;
    *(&v63[3] + 8) = *(v12 + 56);
    sub_15F84(v49, v61, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(v63, &unk_DFDD48, &unk_B08B58);

    v38 = 0;
  }

  *(&v55 + 1) = v38;
  *(&v54 + 1) = [v8 totalItemCount];
  LOBYTE(v55) = 0;
  *&v63[4] = v57;
  v63[0] = v53;
  v63[1] = v54;
  v63[2] = v55;
  v63[3] = v56;
  sub_2E10A8(v8, v63, v60);
  sub_2E329C(v60, &v53);
  v47[2] = v55;
  v47[3] = v56;
  v48 = v57;
  v47[0] = v53;
  v47[1] = v54;
  v61[2] = v55;
  v61[3] = v56;
  v62 = v57;
  v61[0] = v53;
  v61[1] = v54;
  sub_2DBCA8(v47, v45);
  sub_2DBCA8(v47, v45);
  sub_2D3FD0(v61);
  sub_2D8B04();
  sub_2DBD04(v47);
  sub_2DA53C(v6);
  sub_2E1E18();
  v41 = *(v2 + *&stru_298.segname[swift_isaMask & *v2] + 8);
  if (v41)
  {
    v42 = v41;
    JSContainerDetail.containerDetailedResponseChildrenStoreIDs.getter();
    v44 = v43;
  }

  else
  {
    v44 = 0;
  }

  sub_2DAD94(v6, v44);
  swift_unknownObjectRelease();

  v45[2] = v55;
  v45[3] = v56;
  v46 = v57;
  v45[0] = v53;
  v45[1] = v54;
  sub_2DBD04(v45);

LABEL_14:
  v18 = [v2 navigationController];
  if (!v18)
  {
    return;
  }

  if (!a1 || (v19 = *(v2 + v4)) == 0)
  {

    return;
  }

  v20 = v18;
  v21 = v19;
  v22 = a1;
  v23 = [v22 results];
  if (!v23)
  {
    __break(1u);
    goto LABEL_39;
  }

  v24 = v23;
  v25 = [v23 totalItemCount];

  if (v25 >= 1)
  {
    v26 = [v21 results];
    if (!v26)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = [v26 totalItemCount];

    if (!v28)
    {
LABEL_27:
      v35 = [v20 removeViewController:v2 animated:1];

      return;
    }
  }

  v29 = [v22 results];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = v29;
  v31 = [v29 firstSection];

  if (v31)
  {
    swift_unknownObjectRelease();
    v32 = [v21 results];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 firstSection];

      if (v34)
      {

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_27;
    }

    goto LABEL_41;
  }
}

void sub_2D7EF0(void *a1)
{
  v2 = *&stru_298.segname[(swift_isaMask & *v1) + 16];
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  v4 = a1;
  v5 = v3;
  sub_39106C(v3);

  sub_2D7848(v3);
}

void *sub_2D7F88(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_101;
  }

  v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  v3 = sub_164018();
  v4 = sub_164018();
  v5 = v4[2];
  v62 = isUniquelyReferenced_nonNull_native;
  v63 = v2;
  if (v5)
  {
    v70 = _swiftEmptyArrayStorage;
    v6 = v4;
    sub_6D7A0(0, v5, 0);
    v7 = v6;
    v8 = v70;
    v9 = v70[2];
    v10 = 3 * v9;
    v11 = 32;
    do
    {
      v12 = *(v7 + v11);
      v70 = v8;
      v13 = v8[3];
      v14 = v9 + 1;
      if (v9 >= v13 >> 1)
      {
        sub_6D7A0((v13 > 1), v9 + 1, 1);
        v7 = v6;
        v8 = v70;
      }

      v8[2] = v14;
      v15 = v8 + v10;
      v15[32] = v12;
      *(v15 + 33) = 256;
      v10 += 3;
      ++v11;
      v9 = v14;
      --v5;
    }

    while (v5);

    isUniquelyReferenced_nonNull_native = v62;
  }

  else
  {

    v8 = _swiftEmptyArrayStorage;
  }

  if (v8[2] >= v3[2])
  {
    v16 = v3[2];
  }

  else
  {
    v16 = v8[2];
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE80, &unk_B08CB8);
    v17 = sub_ABB0C0();
  }

  else
  {
    v17 = _swiftEmptyDictionarySingleton;
  }

  v70 = v17;
  sub_2DED84(v3, v8, 1, &v70);
  v18 = 0;
  v64 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v19 = v70;
  v60 = isUniquelyReferenced_nonNull_native + 32;
  v61 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v20 = v70;
  while (1)
  {
    if (v64)
    {
      v22 = sub_3603D0(v18, v62);
    }

    else
    {
      if (v18 >= *(v61 + 16))
      {
        goto LABEL_100;
      }

      v22 = *(v60 + 8 * v18);
    }

    v69 = v22;
    v23 = __OFADD__(v18, 1);
    v24 = v18 + 1;
    if (v23)
    {
      goto LABEL_99;
    }

    v65 = v24;
    v25 = sub_164018();
    v68 = v25[2];
    if (v68)
    {
      break;
    }

    v21 = v19;
LABEL_18:

    v19 = v21;
    v18 = v65;
    if (v65 == v63)
    {
      v58 = sub_2DE0B8(v20, sub_2DE224, sub_2DE224);

      return v58;
    }
  }

  v26 = 0;
  v66 = v25;
  v67 = (v25 + 4);
  v21 = v20;
  while (1)
  {
    if (v26 >= v25[2])
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      v2 = sub_ABB060();
      if (!v2)
      {
        return 0;
      }

      goto LABEL_3;
    }

    if (!v21[2])
    {
      break;
    }

    v28 = *(v67 + v26);
    v29 = sub_2ECB00(v28);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = (v21[7] + 3 * v29);
    v32 = *v31;
    v33 = v31[2];
    if (v31[1])
    {
      v34 = 1;
      if (v31[2])
      {
        goto LABEL_60;
      }

LABEL_33:
      v35 = 0;
      goto LABEL_86;
    }

    v36 = sub_162538();
    v37 = *(v36 + 2);
    if (!v37)
    {
LABEL_59:
      v34 = 0;

      if (v33)
      {
        goto LABEL_60;
      }

      goto LABEL_33;
    }

    v38 = (v36 + 32);
    while (1)
    {
      v40 = *v38++;
      v39 = v40;
      if (v40 > 5)
      {
        break;
      }

      switch(v39)
      {
        case 3:
          if (v28 == 3)
          {
            goto LABEL_57;
          }

          break;
        case 4:
          if (v28 == 4)
          {
            goto LABEL_57;
          }

          break;
        case 5:
          if (v28 == 5)
          {
            goto LABEL_57;
          }

          break;
        default:
          goto LABEL_51;
      }

LABEL_37:
      if (!--v37)
      {
        goto LABEL_59;
      }
    }

    switch(v39)
    {
      case 6:
        if (v28 == 6)
        {
          goto LABEL_57;
        }

        goto LABEL_37;
      case 7:
        if (v28 == 7)
        {
          goto LABEL_57;
        }

        goto LABEL_37;
      case 8:
        if (v28 == 8)
        {
          goto LABEL_57;
        }

        goto LABEL_37;
    }

LABEL_51:
    if ((v28 - 9) > 0xF9u || v39 != v28)
    {
      goto LABEL_37;
    }

LABEL_57:
    v34 = 1;

    if (!v33)
    {
      goto LABEL_33;
    }

LABEL_60:
    v41 = sub_162538();
    v42 = *(v41 + 2);
    if (v42)
    {
      v43 = (v41 + 32);
      do
      {
        v45 = *v43++;
        v44 = v45;
        if (v45 > 5)
        {
          switch(v44)
          {
            case 6:
              if (v28 == 6)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
            case 7:
              if (v28 == 7)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
            case 8:
              if (v28 == 8)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
          }
        }

        else
        {
          switch(v44)
          {
            case 3:
              if (v28 == 3)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
            case 4:
              if (v28 == 4)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
            case 5:
              if (v28 == 5)
              {
                goto LABEL_83;
              }

              goto LABEL_63;
          }
        }

        if ((v28 - 9) <= 0xF9u && v44 == v28)
        {
LABEL_83:
          v35 = 1;
          goto LABEL_85;
        }

LABEL_63:
        --v42;
      }

      while (v42);
    }

    v35 = 0;
LABEL_85:

LABEL_86:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v19;
    v47 = sub_2ECB00(v28);
    v48 = v19[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_97;
    }

    v51 = v46;
    if (v19[3] >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_333660();
      }
    }

    else
    {
      sub_32C504(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_2ECB00(v28);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_104;
      }

      v47 = v52;
    }

    v21 = v70;
    v54 = 3 * v47;
    if (v51)
    {
      v27 = (v70[7] + v54);
      *v27 = v32;
      v27[1] = v34;
      v27[2] = v35;
    }

    else
    {
      v70[(v47 >> 6) + 8] |= 1 << v47;
      *(v21[6] + v47) = v28;
      v55 = (v21[7] + v54);
      *v55 = v32;
      v55[1] = v34;
      v55[2] = v35;
      v56 = v21[2];
      v23 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v23)
      {
        goto LABEL_98;
      }

      v21[2] = v57;
    }

    ++v26;
    v19 = v21;
    v20 = v21;
    v25 = v66;
    if (v26 == v68)
    {
      goto LABEL_18;
    }
  }

  sub_ABAFD0();
  __break(1u);
LABEL_104:
  sub_ABB4C0();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_2D8598(uint64_t a1, unint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9230();
  __chkstk_darwin();
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a2;
  v10 = a2 >> 62;
  if (v10)
  {
LABEL_42:
    v11 = sub_ABB060();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      return;
    }
  }

  if ((a1 - 3) > 1u)
  {
    return;
  }

  v33[3] = v9;
  v34 = v10;
  v33[1] = v7;
  v33[2] = v5;
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  *&v37[0] = _swiftEmptyArrayStorage;
  v9 = (v35 & 0xC000000000000001);
  v14 = v35 & 0xFFFFFFFFFFFFFF8;
  v7 = (v35 + 32);
  while (2)
  {
    if (v9)
    {
      v15 = sub_3603D0(v12, v35);
    }

    else
    {
      if (v12 >= *(v14 + 16))
      {
        goto LABEL_40;
      }

      v15 = *&v7[8 * v12];
    }

    v16 = v15;
    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v5 = v15;
    v18 = sub_162538();
    v19 = *(v18 + 2);
    if (!v19)
    {
LABEL_5:
      v10 = v18;

      goto LABEL_6;
    }

    v20 = 32;
    while (1)
    {
      v22 = v18[v20];
      if (v22 != 4)
      {
        break;
      }

      if (a1 == 4)
      {
        goto LABEL_20;
      }

LABEL_17:
      ++v20;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    if (v22 != 3 || a1 != 3)
    {
      goto LABEL_17;
    }

LABEL_20:

    v5 = v37;
    sub_ABAE90();
    v10 = *(*&v37[0] + 16);
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
LABEL_6:
    if (v12 != v11)
    {
      continue;
    }

    break;
  }

  if ((*&v37[0] & 0x8000000000000000) != 0 || (*&v37[0] & 0x4000000000000000) != 0)
  {
    v5 = sub_ABB060();
  }

  else
  {
    v5 = *(*&v37[0] + 16);
  }

  if (v5 > 0)
  {
    if (v34)
    {
      if (v5 >= sub_ABB060())
      {
        return;
      }
    }

    else if (v5 >= *(v14 + 16))
    {
      return;
    }

    v23 = v35;

    v7 = 0;
    v24 = sub_2DBD58(0x7FFFFFFFFFFFFFFFLL, 1u, v23, a1);
    v25 = v24;
    v38 = _swiftEmptyArrayStorage;
    v10 = *(v24 + 16);
    if (v10)
    {
      v9 = 0;
      v26 = (v24 + 48);
      while (v9 < *(v25 + 16))
      {
        ++v9;
        v27 = *v26;
        v37[0] = *(v26 - 1);
        v37[1] = v27;
        sub_2DC454(&v38, v37, &v36);

        v13 = v36;
        v38 = v36;
        v26 += 2;
        if (v10 == v9)
        {
          goto LABEL_34;
        }
      }

      goto LABEL_41;
    }

LABEL_34:
    if (v5 != &dword_0 + 1)
    {
      sub_AB9220();
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      sub_AB9210(v44);
      v45._countAndFlagsBits = sub_161F08(a1);
      sub_AB9200(v45);

      v46._countAndFlagsBits = 0xD000000000000018;
      v46._object = 0x8000000000B5D5C0;
      sub_AB9210(v46);
      v30 = objc_opt_self();
      isa = sub_AB9740().super.isa;

      v32 = [v30 localizedStringByJoiningStrings:isa];

      v47._countAndFlagsBits = sub_AB92A0();
      sub_AB9200(v47);

      v48._countAndFlagsBits = 46;
      v48._object = 0xE100000000000000;
      sub_AB9210(v48);
      sub_AB9240();
      sub_AB3550();
      goto LABEL_38;
    }

    sub_AB9220();
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_AB9210(v39);
    v40._countAndFlagsBits = sub_161F08(a1);
    sub_AB9200(v40);

    v41._object = 0x8000000000B5D620;
    v41._countAndFlagsBits = 0xD000000000000017;
    sub_AB9210(v41);
    if (*(v13 + 2))
    {
      v28 = *(v13 + 4);
      v29 = *(v13 + 5);

      v42._countAndFlagsBits = v28;
      v42._object = v29;
      sub_AB9200(v42);

      v43._countAndFlagsBits = 46;
      v43._object = 0xE100000000000000;
      sub_AB9210(v43);
      sub_AB9240();
      sub_AB3550();
LABEL_38:
      sub_AB9320();

      return;
    }

    __break(1u);
  }
}

double sub_2D8B04()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *(v0 + *(&stru_248.reloff + v2));
  v4 = v1 + *(v2 + 688);
  swift_beginAccess();
  v5 = *(v4 + 1);
  v29[0] = *v4;
  v29[1] = v5;
  v6 = *(v4 + 3);
  v29[2] = *(v4 + 2);
  v29[3] = v6;
  v30 = *(v4 + 8);
  v7 = *(&v29[0] + 1);
  v8 = v5;
  v26 = v29[0];
  v27[0] = v5;
  *&v27[1] = *(v4 + 17);
  *&v27[16] = *(v4 + 2);
  if (v6)
  {
    *v28 = v6;
    *&v28[8] = *(v4 + 56);
    sub_15F84(v29, &v20, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(&v26, &unk_DFDD48, &unk_B08B58);
  }

  else
  {
    *v28 = 0;
    *&v28[8] = *(v4 + 56);
    sub_15F84(v29, &v20, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(&v26, &unk_DFDD48, &unk_B08B58);
    v7 = 0;
    v8 = 1;
  }

  v9 = v3 + qword_E719C0;
  v10 = *(v3 + qword_E719C0);
  v11 = *(v3 + qword_E719C0 + 8);
  *v9 = v7;
  *(v9 + 8) = v8 & 1;
  sub_46F114(v10, v11);
  v12 = *(v4 + 3);
  *&v27[16] = *(v4 + 2);
  *v28 = v12;
  *&v28[16] = *(v4 + 8);
  v13 = *(v4 + 1);
  v26 = *v4;
  *v27 = v13;
  v14 = *&v27[24];
  if (v12)
  {
    v15 = *(v4 + 1);
    v20 = *v4;
    v21 = v15;
    v22 = *(v4 + 4);
    v23 = *&v27[24];
    v24 = *v28;
    v25 = *(v4 + 56);
    sub_15F84(&v26, v19, &unk_DFDD48, &unk_B08B58);

    sub_12E1C(&v20, &unk_DFDD48, &unk_B08B58);
  }

  else
  {
    v16 = *(v4 + 1);
    v20 = *v4;
    v21 = v16;
    v22 = *(v4 + 4);
    v23 = *&v27[24];
    v24 = 0;
    v25 = *(v4 + 56);
    sub_15F84(&v26, v19, &unk_DFDD48, &unk_B08B58);
    sub_12E1C(&v20, &unk_DFDD48, &unk_B08B58);
    v14 = 0;
  }

  v17 = *(v3 + qword_E711D8);
  *(v3 + qword_E711D8) = v14;
  sub_1F45EC(v17);

  return result;
}

void *sub_2D8D94()
{
  v1 = v0;
  v2 = *&stru_298.segname[swift_isaMask & *v0];
  [*&v0[v2] copyWithZone:0];
  sub_ABAB50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
  swift_dynamicCast();
  swift_unknownObjectRelease();
  v3 = sub_AB9260();
  [v19 setLabel:v3];

  v4 = [v19 sectionKind];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();

    if (v6)
    {
      v7 = sub_1FAD28();
      [v19 setSectionProperties:v7];
    }
  }

  v8 = [v1 traitCollection];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;

  if ((rawValue & 2) != 0)
  {
    v10 = *&v1[v2];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 setFilteringOptions:{objc_msgSend(v12, "filteringOptions") | 2}];
    }
  }

  static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter();
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);
  isa = sub_AB9740().super.isa;

  [v19 setItemSortDescriptors:isa];

  v15 = [objc_opt_self() kindWithVariants:3];
  [v19 setItemKind:v15];

  v16 = sub_1FB168();
  [v19 setItemProperties:v16];

  v17 = swift_dynamicCastObjCProtocolConditional();
  if (v17)
  {
    [v17 setWantsDetailedKeepLocalRequestableResponse:{1, &OBJC_PROTOCOL___MPModelRequestDetailedKeepLocalStatusRequesting}];
  }

  return v19;
}

uint64_t sub_2D9050()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *&stru_298.segname[v1] + 8);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC11MusicJSCore17JSContainerDetail_containerDetailLink;
    swift_beginAccess();
    if (*(v2 + v3))
    {
      return 1;
    }

    v1 = swift_isaMask & *v0;
  }

  v5 = v0 + *(v1 + 688);
  swift_beginAccess();
  v6 = *(v5 + 1);
  v16[0] = *v5;
  v16[1] = v6;
  v7 = *(v5 + 3);
  v16[2] = *(v5 + 2);
  v16[3] = v7;
  v17 = *(v5 + 8);
  if (v7 && *&v16[0])
  {
    v8 = MPModelPropertyAlbumIsCompilation;

    v9 = *&v16[0];
    if ([v9 hasLoadedValueForKey:v8] && (v10 = objc_msgSend(v9, "isCompilation"), objc_msgSend(v9, "hasLoadedValueForKey:", MPModelRelationshipAlbumArtist)) && (v11 = objc_msgSend(v9, "artist")) != 0 && (v12 = v11, v13 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor(), MPModelObject.bestIdentifier(for:)(*v13, 0), v15 = v14, v12, v15))
    {

      sub_12E1C(v16, &unk_DFDD48, &unk_B08B58);
      if ((v10 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      sub_12E1C(v16, &unk_DFDD48, &unk_B08B58);
    }
  }

  return 0;
}

void sub_2D9240(uint64_t a1, char a2)
{
  v3 = v2;
  sub_396410(a1, a2);
  v5 = v2 + *&stru_298.segname[(swift_isaMask & *v2) + 8];
  swift_beginAccess();
  v6 = *(v5 + 8);
  v103 = v6;
  v7 = *(v5 + 1);
  v102[0] = *v5;
  v102[1] = v7;
  v8 = *(v5 + 3);
  v102[2] = *(v5 + 2);
  v102[3] = v8;
  v9 = *&v102[0];
  v104 = BYTE8(v8);
  if (!v8)
  {
    return;
  }

  v93 = *(v5 + 8);
  v94 = *(v5 + 24);
  v10 = *(v5 + 5);
  v92[1] = *&v102[0];
  v95 = v10;
  v96 = v8;
  v70 = v8;
  v71 = v6;
  v97 = BYTE8(v8);
  *v98 = *(v5 + 57);
  *&v98[3] = *(v5 + 15);
  v99 = v6;
  if (*&v102[0])
  {
    v11 = MPModelPropertyAlbumTitle;
    v12 = *(v5 + 2);
    v77 = *(v5 + 3);
    v78 = *(v5 + 8);
    v13 = *v5;
    v75 = *(v5 + 1);
    v76 = v12;
    v74 = v13;
    sub_2DBCA8(&v74, v73);
    if ([v9 hasLoadedValueForKey:v11])
    {
      v14 = [v9 title];
      if (v14)
      {
        v15 = v14;
        v16 = sub_AB92A0();
        v18 = v17;

        goto LABEL_8;
      }
    }
  }

  else
  {
    v19 = *(v5 + 2);
    v77 = *(v5 + 3);
    v78 = *(v5 + 8);
    v20 = *v5;
    v75 = *(v5 + 1);
    v76 = v19;
    v74 = v20;
    sub_2DBCA8(&v74, v73);
  }

  v16 = 0;
  v18 = 0xE000000000000000;
LABEL_8:
  v21 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_detailsView);
  v22 = *(v21 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_titleField);
  v23 = &v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v24 = *&v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text];
  v25 = *&v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 8];
  v26 = v22[OBJC_IVAR____TtC16MusicApplication13TextViewLabel__text + 16];
  if (v26 || (v16 != v24 || v25 != v18) && (sub_ABB3C0() & 1) == 0)
  {
    *v23 = v16;
    *(v23 + 1) = v18;
    v23[16] = 0;
    v27 = v22;

    sub_2372F0(v24, v25, v26);
    sub_2366F4();
  }

  sub_2A2D6C();
  v28 = sub_2AEE48();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = (a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_actionText);
  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  *v31 = v30;
  v31[1] = v32;

  v33 = *(v21 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_actionButton);

  v34 = v33;
  v35 = sub_AB9260();

  [v34 setTitle:v35 forState:0];

  sub_2A2D6C();
  sub_2D99DC();
  v37 = v36;
  v38 = OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel;
  [*(v21 + OBJC_IVAR____TtCC16MusicApplication12DetailHeader11DetailsView_detailLabel) setAttributedText:v36];
  v39 = *(v21 + v38);
  if (v37)
  {
    v40 = v37;
    v41 = [v40 accessibilityLabel];
    if (v41)
    {
      v42 = v41;
      sub_AB92A0();

      v43 = sub_AB9260();
    }

    else
    {

      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  [v39 setAccessibilityLabel:v43];

  sub_2A2D6C();
  sub_2AEE64();
  v44 = String.trim()();
  sub_2A3A10(v44._countAndFlagsBits, v44._object);

  sub_2A1A4C();
  sub_2A2D6C();

  v45 = AccessibilityIdentifier.detailHeader.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v49 = v45[3];
  type metadata accessor for DetailHeader();

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v46, v47, v50, v48, v49);
  v51 = *(v3 + *(&stru_248.reloff + (swift_isaMask & *v3)));
  *(v51 + qword_E08868) = v104;
  *(v51 + qword_E719A8) = v71;

  v52 = *(v70 + 16);
  v53 = (v70 + 32);
  do
  {
    v54 = v52;
    if (v52-- == 0)
    {
      break;
    }

    v56 = *v53++;
  }

  while (v56 != 7);
  *(v51 + qword_E719B0) = v54 != 0;
  v57 = *(a1 + OBJC_IVAR____TtC16MusicApplication12DetailHeader_artworkComponent);
  v58 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v74 = *v58;
  v75 = *(v58 + 1);
  v76 = *(v58 + 2);
  v100 = v74;
  v59 = *(&v75 + 1);
  v101 = v75;
  sub_15F84(&v100, v73, &unk_DFDE40, &qword_B0C640);
  sub_15F84(&v100 + 8, v73, &unk_DFDE40, &qword_B0C640);
  sub_15F84(&v101, v73, &unk_E00030, &unk_AF98E0);
  v60 = v59;
  Artwork.Placeholder.withSolidBackgroundColor()(&v79);
  sub_12E1C(&v100, &unk_DFDE40, &qword_B0C640);
  sub_12E1C(&v100 + 8, &unk_DFDE40, &qword_B0C640);
  sub_12E1C(&v101, &unk_E00030, &unk_AF98E0);

  Artwork.Placeholder.withScaleFactor(_:)(v82, 0.46);
  v92[0] = v79.n128_u64[0];
  sub_12E1C(v92, &unk_DFDE40, &qword_B0C640);
  v91 = v79.n128_u64[1];
  sub_12E1C(&v91, &unk_DFDE40, &qword_B0C640);
  v90 = v80;
  sub_12E1C(&v90, &unk_E00030, &unk_AF98E0);

  v61 = [objc_opt_self() quaternaryLabelColor];
  Artwork.Placeholder.withTint(_:)(v61, v83);
  v62 = v83[0];
  v63 = v83[1];
  v65 = v83[2];
  v64 = v83[3];
  v66 = v83[4];
  v67 = v83[5];

  v89 = v82[0];
  sub_12E1C(&v89, &unk_DFDE40, &qword_B0C640);
  v88 = v82[1];
  sub_12E1C(&v88, &unk_DFDE40, &qword_B0C640);
  v87 = v82[2];
  sub_12E1C(&v87, &unk_E00030, &unk_AF98E0);

  v68 = *(v57 + 168);
  v73[0] = *(v57 + 152);
  v73[1] = v68;
  v73[2] = *(v57 + 184);
  v85 = v63;
  v86 = v62;
  v84 = v65;
  *(v57 + 152) = v62;
  *(v57 + 160) = v63;
  *(v57 + 168) = v65;
  *(v57 + 176) = v64;
  *(v57 + 184) = v66;
  *(v57 + 192) = v67;
  sub_15F84(&v86, v72, &unk_DFDE40, &qword_B0C640);
  sub_15F84(&v85, v72, &unk_DFDE40, &qword_B0C640);
  sub_15F84(&v84, v72, &unk_E00030, &unk_AF98E0);
  v69 = v64;
  sub_75948(v73);
  sub_12E1C(v73, &unk_DF8690, &unk_AF9900);
  sub_12E1C(&v86, &unk_DFDE40, &qword_B0C640);
  sub_12E1C(&v85, &unk_DFDE40, &qword_B0C640);
  sub_12E1C(&v84, &unk_E00030, &unk_AF98E0);

  sub_12E1C(v102, &unk_DFDD48, &unk_B08B58);
}

void sub_2D99DC()
{
  v1 = sub_AB35C0();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v83 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v5 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *&stru_298.segname[(swift_isaMask & *v0) + 8];
  swift_beginAccess();
  v7 = *(v6 + 1);
  v97[0] = *v6;
  v97[1] = v7;
  v8 = *(v6 + 3);
  v97[2] = *(v6 + 2);
  v97[3] = v8;
  v98 = *(v6 + 8);
  if (!v8)
  {
    return;
  }

  v79[4] = v5;
  v9 = *&v97[0];
  v91 = *&v97[0];
  v10 = *(v6 + 24);
  v92 = *(v6 + 8);
  v93 = v10;
  v94 = *(v6 + 5);
  v95 = v8;
  v96 = *(v6 + 56);
  if (*&v97[0])
  {
    v11 = MPModelPropertyAlbumPreorder;
    v12 = *(v6 + 3);
    v88 = *(v6 + 2);
    v89 = v12;
    v90 = *(v6 + 8);
    v13 = *(v6 + 1);
    v86 = *v6;
    v87 = v13;
    sub_2DBCA8(&v86, v85);
    if ([v9 hasLoadedValueForKey:v11] & 1) != 0 && (objc_msgSend(v9, "isPreorder"))
    {
      sub_AB91E0();
      sub_AB3550();
      countAndFlagsBits = sub_AB9320();
      object = v15;
      goto LABEL_30;
    }
  }

  else
  {
    v17 = *(v6 + 3);
    v88 = *(v6 + 2);
    v89 = v17;
    v90 = *(v6 + 8);
    v18 = *(v6 + 1);
    v86 = *v6;
    v87 = v18;
    sub_2DBCA8(&v86, v85);
  }

  sub_2AEF8C();
  if (v19)
  {
    v20 = String.trim()();
    countAndFlagsBits = v20._countAndFlagsBits;
    object = v20._object;

    if (!v9)
    {
      goto LABEL_14;
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    if (!v9)
    {
LABEL_14:
      v21 = 0;
      goto LABEL_15;
    }
  }

  if (![v9 hasLoadedValueForKey:MPModelPropertyAlbumYear])
  {
    goto LABEL_14;
  }

  v21 = [v9 year];
LABEL_15:
  v22 = v83;
  sub_AB34F0();
  v23 = sub_45BF9C(v21);
  v25 = v24;
  (*(v2 + 8))(v22, v1);
  if (v25)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v28 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v28 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      sub_AB91E0();
      sub_AB3550();
      sub_AB9320();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF1E10, &unk_B071A0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_AF85F0;
      *(v30 + 56) = &type metadata for String;
      v31 = sub_2792B0();
      *(v30 + 32) = countAndFlagsBits;
      *(v30 + 40) = object;
      *(v30 + 96) = &type metadata for String;
      *(v30 + 104) = v31;
      *(v30 + 64) = v31;
      *(v30 + 72) = v26;
      *(v30 + 80) = v27;
      countAndFlagsBits = sub_AB92E0();
      object = v32;
    }
  }

  else
  {

    countAndFlagsBits = v26;
    object = v27;
  }

LABEL_30:
  v33 = objc_allocWithZone(NSMutableAttributedString);
  v34 = sub_AB9260();
  v81 = [v33 initWithString:v34];

  *&v86 = countAndFlagsBits;
  *(&v86 + 1) = object;
  v35 = *(v6 + 6);
  if (!v35)
  {
LABEL_71:
    v77 = v81;
    v78 = sub_AB9260();

    [v77 setAccessibilityLabel:v78];

    sub_12E1C(v97, &unk_DFDD48, &unk_B08B58);
    return;
  }

  v36 = *(v35 + 16);
  if (v36)
  {

    v37 = _swiftEmptyArrayStorage;
    v38 = 32;
    do
    {
      v41 = *(v35 + v38);
      if (v41 != 7)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0]._countAndFlagsBits = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_6D5C0(0, v37[2] + 1, 1);
          v37 = v85[0]._countAndFlagsBits;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          sub_6D5C0((v39 > 1), v40 + 1, 1);
          v37 = v85[0]._countAndFlagsBits;
        }

        v37[2] = v40 + 1;
        *(v37 + v40 + 32) = v41;
      }

      ++v38;
      --v36;
    }

    while (v36);

    v43 = v37[2];
    if (v43)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

  v37 = _swiftEmptyArrayStorage;
  v43 = _swiftEmptyArrayStorage[2];
  if (!v43)
  {
LABEL_70:

    goto LABEL_71;
  }

LABEL_41:
  v44 = 0;
  v79[2] = "detail.label.dolby.audio";
  v79[3] = "High Resolution Lossless";
  v79[1] = "Album Detail Duration";
  v45 = 0xA400000000000000;
  v82 = 548913696;
  v80 = v43;
  while (v44 < v37[2])
  {
    v57 = *(v37 + v44 + 32);
    if ((v57 - 5) < 2)
    {
      v61 = objc_opt_self();
      v62 = sub_AB9260();
      if (qword_DE6AF0 != -1)
      {
        swift_once();
      }

      v60 = [v61 imageNamed:v62 inBundle:qword_E71620 compatibleWithTraitCollection:0];

      if (!v60)
      {
        goto LABEL_73;
      }
    }

    else if (v57 == 4)
    {
      v63 = objc_opt_self();
      v64 = sub_AB9260();
      if (qword_DE6AF0 != -1)
      {
        swift_once();
      }

      v60 = [v63 imageNamed:v64 inBundle:qword_E71620 compatibleWithTraitCollection:0];

      if (!v60)
      {
        goto LABEL_75;
      }
    }

    else
    {
      if (v57 != 3)
      {
        goto LABEL_45;
      }

      v58 = objc_opt_self();
      v59 = sub_AB9260();
      if (qword_DE6AF0 != -1)
      {
        swift_once();
      }

      v60 = [v58 imageNamed:v59 inBundle:qword_E71620 compatibleWithTraitCollection:0];

      if (!v60)
      {
        goto LABEL_74;
      }
    }

    v65 = v60;
    v66 = [objc_opt_self() textAttachmentWithImage:v65];

    if (!v66)
    {
      goto LABEL_45;
    }

    if ((v57 - 3) >= 2u)
    {
      sub_13C80(0, &qword_DF5280, NSMutableAttributedString_ptr);
      v67 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v66];
      v68 = String.nonBreakingSpace.unsafeMutableAddressor();
      v70 = *v68;
      v69 = v68[1];
      v85[0]._countAndFlagsBits = v70;
      v85[0]._object = v69;

      v102._countAndFlagsBits = sub_161F08(v57);
      sub_AB94A0(v102);

      v71 = objc_allocWithZone(NSAttributedString);
      v72 = sub_AB9260();
      v73 = [v71 initWithString:v72];

      [v67 appendAttributedString:v73];
LABEL_66:
      sub_AB91E0();
      sub_AB3550();
      v84 = sub_AB9320();
      v75 = v74;
      v76 = v67;
      if (v44)
      {

        v46 = String.nonBreakingSpace.unsafeMutableAddressor();
        v47 = v46[1];
        v85[0]._countAndFlagsBits = *v46;
        v85[0]._object = v47;

        v99._countAndFlagsBits = 47042;
        v99._object = 0xA200000000000000;
        sub_AB94A0(v99);
        v49 = *v46;
        v48 = v46[1];

        v100._countAndFlagsBits = v49;
        v100._object = v48;
        sub_AB94A0(v100);

        v50 = v85[0]._countAndFlagsBits;
        v45 = v85[0]._object;
      }

      else
      {
        v50 = v82;
      }

      v51 = objc_allocWithZone(NSAttributedString);
      v52 = v45;
      v53 = v50;
      v54 = sub_AB9260();
      v55 = [v51 initWithString:v54];

      v56 = v81;
      [v81 appendAttributedString:v55];

      [v56 appendAttributedString:v76];
      v82 = v53;
      v85[0]._countAndFlagsBits = v53;
      v85[0]._object = v52;
      v45 = v52;

      v101._countAndFlagsBits = v84;
      v101._object = v75;
      sub_AB94A0(v101);
      sub_AB94A0(v85[0]);

      goto LABEL_44;
    }

    v67 = [objc_opt_self() attributedStringWithAttachment:v66];

    if (v67)
    {
      goto LABEL_66;
    }

LABEL_44:
    v43 = v80;
LABEL_45:
    if (v43 == ++v44)
    {

      goto LABEL_71;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_2DA53C(void *a1)
{
  v2 = [a1 request];
  if (v2)
  {
    v3 = v2;
    [v2 copyWithZone:0];

    sub_ABAB50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
    if (swift_dynamicCast())
    {
      v4 = v15;
      swift_unknownObjectRelease();
      v5 = sub_AB9260();
      [v15 setLabel:v5];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_AF4EC0;
      *(v6 + 32) = sub_AB92A0();
      *(v6 + 40) = v7;
      isa = sub_AB9740().super.isa;
      v9 = [objc_opt_self() propertySetWithProperties:isa];

      [v4 setItemProperties:v9];
      [v4 setSectionProperties:0];
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = a1;
      aBlock[4] = sub_2E3454;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_426;
      v12 = _Block_copy(aBlock);
      v13 = a1;

      [v4 performWithResponseHandler:v12];
      _Block_release(v12);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2DA7D0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a1)
  {
    return;
  }

  v21 = a1;
  v5 = [v21 results];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 firstSection];

  if (!v7)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    v8 = [v21 results];
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    if (v8)
    {
      v10 = swift_allocObject();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();
      v12 = v8;

      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v9 + 16;
      v14 = swift_allocObject();
      v15 = sub_2E34E0;
      *(v14 + 16) = sub_2E34E0;
      *(v14 + 24) = v13;
      aBlock[4] = sub_2E34E8;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B7EB0;
      aBlock[3] = &block_descriptor_443;
      v16 = _Block_copy(aBlock);

      [v12 enumerateItemsInSectionAtIndex:0 usingBlock:v16];
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if (v16)
      {
        __break(1u);
LABEL_8:

        return;
      }
    }

    else
    {
      v15 = 0;
      v13 = 0;
    }

    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v17 = swift_allocObject();
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v17;
    v19[4] = a4;

    v20 = a4;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2E34D4, v19);

    sub_17654(v15, v13);
    return;
  }

  swift_unknownObjectRelease();
}

void *sub_2DAB94(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, double *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    swift_unknownObjectRetain();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v8 duration];
      *a5 = v9 + *a5;
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

void sub_2DAC44(uint64_t a1, uint64_t a2, id a3)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  if (*Double.epsilon.unsafeMutableAddressor() < v5)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + *&stru_298.segname[(swift_isaMask & *Strong) + 16]);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {

        if (v9 == a3)
        {
          swift_beginAccess();
          v10 = swift_unknownObjectWeakLoadStrong();
          if (v10)
          {
            v11 = v10;
            v13 = sub_2DBB60(v15);
            if (*(v12 + 48))
            {
              v14 = v12;
              swift_beginAccess();
              *(v14 + 8) = *(a1 + 16);
              *(v14 + 16) = 0;
            }

            (v13)(v15, 0);
          }
        }
      }
    }
  }
}

void sub_2DAD94(void *a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  v5 = [a1 request];
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  [v5 copyWithZone:0];

  sub_ABAB50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v16 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v17 = *(v16 + qword_E711D0);
    *(v16 + qword_E711D0) = 0;
    sub_1F44FC(v17);
    return;
  }

  v7 = v21;
  swift_unknownObjectRelease();
  v8 = [a1 results];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 totalItemCount];

  if (v10 == *(a2 + 16))
  {
    v11 = sub_AB9260();
    [v21 setLabel:v11];

    [v21 setItemProperties:0];
    [v21 setSectionProperties:0];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = v12;
    v13[4] = a1;
    aBlock[4] = sub_2E3394;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_403;
    v14 = _Block_copy(aBlock);

    v15 = a1;

    [v7 performWithResponseHandler:v14];
    _Block_release(v14);
  }

  else
  {
    v18 = *(v2 + *(&stru_248.reloff + (swift_isaMask & *v2)));
    v19 = *(v18 + qword_E711D0);
    *(v18 + qword_E711D0) = 1;
    sub_1F44FC(v19);
  }
}

void sub_2DB070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v21 = a1;
    v7 = [v21 results];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = [v7 firstSection];

    if (v9)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        v10 = swift_allocObject();
        *(v10 + 16) = 0;
        v11 = [v21 results];
        if (!v11)
        {
LABEL_17:
          __break(1u);
          return;
        }

        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v10 + 16;
        *(v13 + 24) = a3;
        v14 = swift_allocObject();
        *(v14 + 16) = sub_2E33E8;
        *(v14 + 24) = v13;
        aBlock[4] = sub_5794C;
        aBlock[5] = v14;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_48D4FC;
        aBlock[3] = &block_descriptor_415;
        v15 = _Block_copy(aBlock);

        [v12 enumerateItemsUsingBlock:v15];
        _Block_release(v15);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
          v17 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v19 = swift_allocObject();
          v19[2] = v17;
          v19[3] = a5;
          v19[4] = v10;

          v20 = a5;

          static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2E3448, v19);

          return;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2DB3DC(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    return swift_unknownObjectRelease();
  }

  v8 = *(a5 + 16);
  if (!v8)
  {
LABEL_29:
    *a4 = 1;
    *a3 = 1;
    return swift_unknownObjectRelease();
  }

  v9 = a5 + 32;
  while (1)
  {
    sub_808B0(v9, v23);
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_ABB3A0();
    v10 = MPStoreItemMetadataStringNormalizeStoreIDValue();
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = sub_AB92A0();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = MPIdentifierSet.Purpose.Options.local.unsafeMutableAddressor();
    v15 = MPModelObject.bestIdentifier(for:)(*v14, 0);
    if (!v16)
    {
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    if (!v13)
    {

      goto LABEL_18;
    }

    if (v15 == v11 && v16 == v13)
    {
      break;
    }

    v17 = sub_ABB3C0();

    if (v17)
    {
      goto LABEL_31;
    }

LABEL_18:
    v18 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v19 = MPModelObject.bestIdentifier(for:)(*v18, 0);
    if (!v20)
    {
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_4:

      __swift_destroy_boxed_opaque_existential_0(v23);
      goto LABEL_5;
    }

    if (!v13)
    {
      goto LABEL_4;
    }

    if (v19 == v11 && v20 == v13)
    {
      break;
    }

    v21 = sub_ABB3C0();

    __swift_destroy_boxed_opaque_existential_0(v23);
    if (v21)
    {
      goto LABEL_33;
    }

LABEL_5:
    v9 += 32;
    if (!--v8)
    {
      goto LABEL_29;
    }
  }

LABEL_31:

LABEL_32:
  __swift_destroy_boxed_opaque_existential_0(v23);
LABEL_33:
  *a4 = 0;
  return swift_unknownObjectRelease();
}

void sub_2DB624(uint64_t a1, id a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + *&stru_298.segname[(swift_isaMask & *Strong) + 16]);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {

      if (v8 == a2)
      {
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = v9;
          v11 = *(v9 + *(&stru_248.reloff + (swift_isaMask & *v9)));

          swift_beginAccess();
          v12 = v11[qword_E711D0];
          v11[qword_E711D0] = *(a3 + 16);
          sub_1F44FC(v12);
        }
      }
    }
  }
}

void sub_2DB758(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return;
  }

  v16 = a1;
  v3 = [v16 results];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 totalItemCount];

  if (v5 >= 1)
  {
    v6 = [v16 results];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 allItems];

      v9 = sub_AB9760();
      v11 = sub_12DBE4(v9, v10);
      if (v11)
      {
        v12 = v11;

        sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
        v13 = swift_allocObject();
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        *(v15 + 24) = v12;

        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_2E3340, v15);
      }

      else
      {
      }

      return;
    }

LABEL_15:
    __break(1u);
    return;
  }
}

void sub_2DB958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = sub_2DBB60(v7);
    if (*(v5 + 48))
    {
      *(v5 + 40) = a2;
    }

    (v6)(v7, 0);
  }
}

id sub_2DBA00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlbumDetailViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AlbumDetailViewController(uint64_t a1)
{
  result = qword_DFD368;
  if (!qword_DFD368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2DBABC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *&stru_298.segname[(swift_isaMask & *v1) + 8];
  swift_beginAccess();
  v4 = *(v3 + 3);
  v11 = *(v3 + 2);
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v13;
  v6 = *(v3 + 1);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_15F84(v10, &v9, &unk_DFDD48, &unk_B08B58);
}

uint64_t (*sub_2DBB60(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_2D43E0(v3);
  return sub_2DBBD4;
}

void sub_2DBBD4(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_2D8B04();
  }

  free(v3);
}

uint64_t sub_2DBC38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD40, &qword_B08B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DBD58(uint64_t result, unsigned int a2, unint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    goto LABEL_100;
  }

  v10 = a3;
  v9 = a3 >> 62;
  if (!result)
  {
    goto LABEL_102;
  }

  if (v9)
  {
    goto LABEL_101;
  }

  v11 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
  if (!v11)
  {
LABEL_102:
    v39 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v9)
    {
      result = sub_ABB060();
      v40 = result;
      if (result)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v40 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v40)
      {
        goto LABEL_107;
      }
    }

    v39 = a2;
    if (a2)
    {

      return _swiftEmptyArrayStorage;
    }

LABEL_107:
    if (v40 < 0)
    {
      __break(1u);
    }

    else
    {
      v39 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v9)
      {
        if (v10 < 0)
        {
          v6 = v10;
        }

        else
        {
          v6 = (v10 & 0xFFFFFFFFFFFFFF8);
        }

        result = sub_ABB060();
        if (result < 0)
        {
          goto LABEL_139;
        }

        result = sub_ABB060();
      }

      else
      {
        result = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      }

      if (result >= v40)
      {
        if ((v10 & 0xC000000000000001) != 0 && v40)
        {
          sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);

          v41 = 0;
          do
          {
            v42 = v41 + 1;
            sub_ABAE00(v41);
            v41 = v42;
          }

          while (v40 != v42);
        }

        else
        {
        }

        if (v9)
        {
          v9 = sub_ABB070();
          v10 = v43;
          v6 = v44;
          v40 = v45;
        }

        else
        {
          v6 = 0;
          v9 = v10 & 0xFFFFFFFFFFFFFF8;
          v10 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
          v40 = (2 * v40) | 1;
        }

        result = sub_6BE10(0, 1, 1, _swiftEmptyArrayStorage);
        v8 = *(result + 16);
        v39 = *(result + 24);
        v7 = v8 + 1;
        if (v8 < v39 >> 1)
        {
          goto LABEL_126;
        }

        goto LABEL_129;
      }
    }

    __break(1u);
LABEL_129:
    result = sub_6BE10((v39 > 1), v7, 1, result);
LABEL_126:
    *(result + 16) = v7;
    v46 = (result + 32 * v8);
    v46[4] = v9;
    v46[5] = v10;
    v46[6] = v6;
    v46[7] = v40;
    return result;
  }

  while (1)
  {
    v12 = 0;
    v13 = a4;
    v54 = v10 + 32;
    v55 = v10 & 0xC000000000000001;
    v8 = a4 - 9;
    v51 = v10;
    v52 = _swiftEmptyArrayStorage;
    v56 = v10 & 0xFFFFFFFFFFFFFF8;
    v49 = result;
    v50 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_6:
    v7 = 0;
    v10 = v12;
LABEL_7:
    if (v10 == v11)
    {
      goto LABEL_68;
    }

    if (v55)
    {
      v14 = sub_3603D0(v10, v51);
    }

    else
    {
      if (v10 < 0)
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v10 >= *(v56 + 16))
      {
        goto LABEL_97;
      }

      v14 = *(v54 + 8 * v10);
    }

    v6 = v14;
    v15 = sub_162538();
    v16 = *(v15 + 2);
    if (!v16)
    {
      break;
    }

    v17 = 32;
    while (1)
    {
      v18 = v15[v17];
      if (v18 > 5)
      {
        break;
      }

      switch(v18)
      {
        case 3u:
          if (v13 == 3)
          {
            goto LABEL_35;
          }

          break;
        case 4u:
          if (v13 == 4)
          {
            goto LABEL_35;
          }

          break;
        case 5u:
          if (v13 == 5)
          {
            goto LABEL_35;
          }

          break;
        default:
          goto LABEL_29;
      }

LABEL_15:
      ++v17;
      if (!--v16)
      {
        goto LABEL_39;
      }
    }

    switch(v18)
    {
      case 6u:
        if (v13 == 6)
        {
          goto LABEL_35;
        }

        goto LABEL_15;
      case 7u:
        if (v13 == 7)
        {
          goto LABEL_35;
        }

        goto LABEL_15;
      case 8u:
        if (v13 == 8)
        {
          goto LABEL_35;
        }

        goto LABEL_15;
    }

LABEL_29:
    if (v8 > 0xFFFFFFF9 || v18 != v13)
    {
      goto LABEL_15;
    }

LABEL_35:

    ++v7;
    v19 = __OFADD__(v10++, 1);
    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v6 = result;
    v37 = a4;
    v38 = sub_ABB060();
    a4 = v37;
    v11 = v38;
    result = v6;
    if (!v11)
    {
      goto LABEL_102;
    }
  }

LABEL_39:

  if (v12 == v10 && (a2 & 1) != 0)
  {
    v19 = __OFADD__(v12++, 1);
    if (!v19)
    {
      goto LABEL_6;
    }

    goto LABEL_98;
  }

  if (v9)
  {
    result = sub_ABB060();
  }

  else
  {
    result = *(v56 + 16);
  }

  if (result < v12)
  {
    __break(1u);
    goto LABEL_136;
  }

  if (v12 < 0)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v9)
  {
    result = sub_ABB060();
  }

  else
  {
    result = *(v56 + 16);
  }

  if (result < v10)
  {
    goto LABEL_137;
  }

  if (!v55 || v12 == v10)
  {

    if (!v9)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v12 >= v10)
    {
      goto LABEL_141;
    }

    sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);

    v20 = v12;
    do
    {
      v21 = v20 + 1;
      sub_ABAE00(v20);
      v20 = v21;
      --v7;
    }

    while (v7);
    if (!v9)
    {
LABEL_59:
      v48 = (2 * v10) | 1;
      v47 = v56;
      v6 = v50;
      goto LABEL_62;
    }
  }

  v47 = sub_ABB070();
  v48 = v22;
  v6 = v23;
  v12 = v24;
LABEL_62:
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_6BE10(0, v52[2] + 1, 1, v52);
    v52 = result;
  }

  v7 = v52[2];
  v25 = v52[3];
  v26 = v7 + 1;
  if (v7 >= v25 >> 1)
  {
    result = sub_6BE10((v25 > 1), v7 + 1, 1, v52);
    v52 = result;
  }

  v52[2] = v26;
  v27 = &v52[4 * v7];
  v27[4] = v47;
  v27[5] = v6;
  v27[6] = v12;
  v27[7] = v48;
  v12 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_138;
  }

  result = v49;
  if (v26 != v49)
  {
    goto LABEL_6;
  }

LABEL_68:
  if (v12 == v11 && (a2 & 1) != 0)
  {

    return v52;
  }

  if (v11 < v12)
  {
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v9)
  {
    v28 = sub_ABB060();
  }

  else
  {
    v28 = *(v56 + 16);
  }

  if (v28 < v12)
  {
    goto LABEL_131;
  }

  if (v12 < 0)
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (v9)
  {
    result = sub_ABB060();
  }

  else
  {
    result = *(v56 + 16);
  }

  if (result < v11)
  {
    goto LABEL_133;
  }

  if (!v55 || v12 == v11)
  {

LABEL_88:

    if (v9)
    {
      v56 = sub_ABB070();
      v9 = v31;
      v12 = v32;
      v6 = v33;
    }

    else
    {
      v6 = ((2 * v11) | 1);
      v9 = v50;
    }

    v7 = v52;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v52;
LABEL_93:
      v35 = *(result + 16);
      v34 = *(result + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_6BE10((v34 > 1), v35 + 1, 1, result);
      }

      *(result + 16) = v35 + 1;
      v36 = (result + 32 * v35);
      v36[4] = v56;
      v36[5] = v9;
      v36[6] = v12;
      v36[7] = v6;
      return result;
    }

LABEL_134:
    result = sub_6BE10(0, *(v7 + 16) + 1, 1, v7);
    goto LABEL_93;
  }

  if (v12 < v11)
  {
    sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);

    v29 = v12;
    do
    {
      v30 = v29 + 1;
      sub_ABAE00(v29);
      v29 = v30;
    }

    while (v11 != v30);
    goto LABEL_88;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

void sub_2DC454(char **a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = *a1;
  v8 = a2[2];
  v9 = a2[3] >> 1;
  if (v8 == v9)
  {
    *a3 = v7;

    return;
  }

  if (v8 >= v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v7 = sub_6B0F0(0, *(v7 + 2) + 1, 1, v7);
    goto LABEL_8;
  }

  if (__OFSUB__(v9, v8))
  {
    goto LABEL_17;
  }

  v10 = a2[1];
  v11 = *(v10 + 8 * v8);
  if (v9 - v8 != 1)
  {
    v17 = *(v10 + 8 * v9 - 8);

    v18 = v11;
    v19 = v17;
    [v18 trackNumber];
    v29 = sub_ABB330();
    v30 = v20;
    v31._countAndFlagsBits = 9666786;
    v31._object = 0xA300000000000000;
    sub_AB94A0(v31);
    [v19 trackNumber];
    v32._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_6B0F0(0, *(v7 + 2) + 1, 1, v7);
    }

    v21 = *(v7 + 2);
    v22 = *(v7 + 3);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      v26 = v7;
      v27 = *(v7 + 2);
      v28 = sub_6B0F0((v22 > 1), v21 + 1, 1, v26);
      v21 = v27;
      v7 = v28;
    }

    *(v7 + 2) = v23;
    v24 = &v7[16 * v21];
    *(v24 + 4) = v29;
    *(v24 + 5) = v30;

    goto LABEL_16;
  }

  v4 = v11;
  [v4 trackNumber];
  v3 = sub_ABB330();
  v5 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v14 = *(v7 + 2);
  v13 = *(v7 + 3);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    v25 = sub_6B0F0((v13 > 1), v14 + 1, 1, v7);
    v15 = v14 + 1;
    v7 = v25;
  }

  *(v7 + 2) = v15;
  v16 = &v7[16 * v14];
  *(v16 + 4) = v3;
  *(v16 + 5) = v5;

LABEL_16:
  *a3 = v7;
}

uint64_t sub_2DC6C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t *sub_2DC734(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  v11 = *(a4 + 128);
  v51 = *(a4 + 112);
  v52 = v11;
  *v53 = *(a4 + 144);
  *&v53[9] = *(a4 + 153);
  v12 = *(a4 + 64);
  v47 = *(a4 + 48);
  v48 = v12;
  v13 = *(a4 + 96);
  v49 = *(a4 + 80);
  v50 = v13;
  v14 = *(a4 + 32);
  v45 = *(a4 + 16);
  v46 = v14;
  v15 = sub_27AB70();
  strcpy(&v40, "impressionId");
  BYTE13(v40) = 0;
  HIWORD(v40) = -5120;
  sub_ABAD10();
  v16 = *(a4 + 176);
  v41 = &type metadata for Int;
  *&v40 = v16;
  sub_9ACFC(&v40, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_913C0(v42, v43, isUniquelyReferenced_nonNull_native);
  sub_8085C(v43);
  v18 = v15;
  v44 = v15;
  if ((*(a4 + 192) & 1) == 0)
  {
    v19 = *(a4 + 184);
    *&v40 = 0xD000000000000012;
    *(&v40 + 1) = 0x8000000000B5D560;
    sub_ABAD10();
    v41 = &type metadata for Int;
    *&v40 = v19;
    sub_9ACFC(&v40, v42);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v42, v43, v20);
    sub_8085C(v43);
    v44 = v18;
  }

  v21 = *(a4 + 193);
  if (v21 != 2)
  {
    strcpy(&v40, "motionActive");
    BYTE13(v40) = 0;
    HIWORD(v40) = -5120;
    sub_ABAD10();
    v41 = &type metadata for Bool;
    LOBYTE(v40) = v21 & 1;
    sub_9ACFC(&v40, v42);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v42, v43, v22);
    sub_8085C(v43);
    *&v40 = 0x76416E6F69746F6DLL;
    *(&v40 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    v41 = &type metadata for Bool;
    LOBYTE(v40) = v21 & 1;
    sub_9ACFC(&v40, v42);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v42, v43, v23);
    sub_8085C(v43);
    v44 = v18;
  }

  if (v48 != 2)
  {
    v54 = v48;
    *&v40 = 0x76416E6F69746F6DLL;
    *(&v40 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    sub_ABAD10();
    if (*(v18 + 16) && (v24 = sub_2EC004(&v40), (v25 & 1) != 0))
    {
      sub_808B0(*(v18 + 56) + 32 * v24, v42);
      sub_8085C(&v40);
      if (swift_dynamicCast())
      {
        v26 = 1;
LABEL_12:
        v41 = &type metadata for Bool;
        LOBYTE(v40) = v26 & 1;
        sub_9ACFC(&v40, v42);
        v27 = v44;
        v28 = swift_isUniquelyReferenced_nonNull_native();
        sub_913C0(v42, v43, v28);
        sub_8085C(v43);
        v18 = v27;
        v44 = v27;
        goto LABEL_13;
      }
    }

    else
    {
      sub_8085C(&v40);
    }

    v26 = v54 & a5;
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    *&v40 = 0x6973736572706D69;
    *(&v40 + 1) = 0xEF73656D69546E6FLL;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA840, &qword_AF8E40);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_AF4EC0;
    sub_AB33D0();
    *(v29 + 32) = Double.toMillisecondsInServerTime.getter(v30);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
    *&v40 = v29;
    sub_9ACFC(&v40, v42);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v42, v43, v31);
    sub_8085C(v43);
    v32 = v18;
    v44 = v18;
  }

  else
  {
    swift_beginAccess();

    v34.n128_f64[0] = a1;
    sub_2DD1C4(v33, v34, v35, a7, &v44);

    v32 = v44;
  }

  v36 = *(&v49 + 1);
  objc_allocWithZone(type metadata accessor for JSImpression());
  v37 = v36;
  return JSImpression.init(fields:jsObject:)(v32, v36);
}

uint64_t *sub_2DCC7C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v10 = *(a4 + 128);
  v49 = *(a4 + 112);
  v50 = v10;
  *v51 = *(a4 + 144);
  *&v51[9] = *(a4 + 153);
  v11 = *(a4 + 64);
  v45 = *(a4 + 48);
  v46 = v11;
  v12 = *(a4 + 96);
  v47 = *(a4 + 80);
  v48 = v12;
  v13 = *(a4 + 32);
  v43 = *(a4 + 16);
  v44 = v13;
  v14 = sub_27AB70();
  strcpy(&v38, "impressionId");
  BYTE13(v38) = 0;
  HIWORD(v38) = -5120;
  sub_ABAD10();
  v15 = *(a4 + 176);
  v39 = &type metadata for Int;
  *&v38 = v15;
  sub_9ACFC(&v38, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_913C0(v40, v41, isUniquelyReferenced_nonNull_native);
  sub_8085C(v41);
  v17 = v14;
  v42 = v14;
  if ((*(a4 + 192) & 1) == 0)
  {
    v18 = *(a4 + 184);
    *&v38 = 0xD000000000000012;
    *(&v38 + 1) = 0x8000000000B5D560;
    sub_ABAD10();
    v39 = &type metadata for Int;
    *&v38 = v18;
    sub_9ACFC(&v38, v40);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v40, v41, v19);
    sub_8085C(v41);
    v42 = v17;
  }

  v20 = *(a4 + 193);
  if (v20 != 2)
  {
    strcpy(&v38, "motionActive");
    BYTE13(v38) = 0;
    HIWORD(v38) = -5120;
    sub_ABAD10();
    v39 = &type metadata for Bool;
    LOBYTE(v38) = v20 & 1;
    sub_9ACFC(&v38, v40);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v40, v41, v21);
    sub_8085C(v41);
    *&v38 = 0x76416E6F69746F6DLL;
    *(&v38 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    v39 = &type metadata for Bool;
    LOBYTE(v38) = v20 & 1;
    sub_9ACFC(&v38, v40);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v40, v41, v22);
    sub_8085C(v41);
    v42 = v17;
  }

  if (v46 != 2)
  {
    v52 = v46;
    *&v38 = 0x76416E6F69746F6DLL;
    *(&v38 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    sub_ABAD10();
    if (*(v17 + 16) && (v23 = sub_2EC004(&v38), (v24 & 1) != 0))
    {
      sub_808B0(*(v17 + 56) + 32 * v23, v40);
      sub_8085C(&v38);
      if (swift_dynamicCast())
      {
        v25 = 1;
LABEL_12:
        v39 = &type metadata for Bool;
        LOBYTE(v38) = v25 & 1;
        sub_9ACFC(&v38, v40);
        v26 = v42;
        v27 = swift_isUniquelyReferenced_nonNull_native();
        sub_913C0(v40, v41, v27);
        sub_8085C(v41);
        v17 = v26;
        v42 = v26;
        goto LABEL_13;
      }
    }

    else
    {
      sub_8085C(&v38);
    }

    v25 = v52 & a5;
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    *&v38 = 0x6973736572706D69;
    *(&v38 + 1) = 0xEF73656D69546E6FLL;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA840, &qword_AF8E40);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_AF4EC0;
    sub_AB33D0();
    *(v28 + 32) = Double.toMillisecondsInServerTime.getter(v29);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
    *&v38 = v28;
    sub_9ACFC(&v38, v40);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v40, v41, v30);
    sub_8085C(v41);
    v31 = v17;
    v42 = v17;
  }

  else
  {
    swift_beginAccess();

    v33.n128_f64[0] = a1;
    sub_2DD78C(v32, v33, v34);

    v31 = v42;
  }

  v35 = *(&v47 + 1);
  objc_allocWithZone(type metadata accessor for JSImpression());
  v36 = v35;
  return JSImpression.init(fields:jsObject:)(v31, v35);
}

void sub_2DD1C4(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a2.n128_f64[0];
    v8 = 0.0;
    v9 = a2.n128_f64[0];
    v10 = (a1 + 40);
    v11 = _swiftEmptyArrayStorage;
    v12 = 0.0;
    v13 = 1;
    v14 = 1;
    v15 = _swiftEmptyArrayStorage;
    while (1)
    {
      v16 = *(v10 - 1);
      if (*v10)
      {
        if ((v14 & 1) == 0)
        {
          v8 = *(v10 - 1);
        }

        v13 &= v14;
        goto LABEL_6;
      }

      if (v14)
      {
        v14 = 0;
        v12 = *(v10 - 1);
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          if (v16 - v8 >= 0.0166666667)
          {
            if (v8 - v12 > 0.0166666667)
            {
              v17 = sub_4A36D8(v12, v8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_6A7D8(0, v11[2] + 1, 1, v11);
              }

              v19 = v11[2];
              v18 = v11[3];
              if (v19 >= v18 >> 1)
              {
                v11 = sub_6A7D8((v18 > 1), v19 + 1, 1, v11);
              }

              v11[2] = v19 + 1;
              v11[v19 + 4] = v17;
              if (!*(v17 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v11 = sub_6A7D8(0, v11[2] + 1, 1, v11);
LABEL_42:
                v31 = v11[2];
                v30 = v11[3];
                v19 = v31 + 1;
                if (v31 >= v30 >> 1)
                {
                  v11 = sub_6A7D8((v30 > 1), v31 + 1, 1, v11);
                }

                v11[2] = v19;
                v11[v31 + 4] = v17;
                if (*(v17 + 16))
                {
                  v32 = sub_2EBF88(100, 0xE100000000000000);
                  if (v33)
                  {
                    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v7 > -1.0)
                      {
                        if (v7 < 1.84467441e19)
                        {
                          if (*(*(v17 + 56) + 8 * v32) > v9)
                          {
                            if (*(v17 + 16))
                            {
                              v34 = sub_2EBF88(115, 0xE100000000000000);
                              if (v35)
                              {
                                v19 = *(*(v17 + 56) + 8 * v34);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v15 = sub_6A7C4(0, *(v15 + 2) + 1, 1, v15);
LABEL_53:
                              v37 = *(v15 + 2);
                              v36 = *(v15 + 3);
                              if (v37 >= v36 >> 1)
                              {
                                v15 = sub_6A7C4((v36 > 1), v37 + 1, 1, v15);
                              }

                              *(v15 + 2) = v37 + 1;
                              *&v15[8 * v37 + 32] = v19;
LABEL_56:
                              if (!v11[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v11[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v15 + 2))
                          {
                            goto LABEL_61;
                          }

LABEL_58:
                          *&v43 = 0x6973736572706D69;
                          *(&v43 + 1) = 0xEF73656D69546E6FLL;
                          sub_ABAD10();
                          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
                          *&v43 = v15;
                          sub_9ACFC(&v43, v42);
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v41 = *a5;
                          sub_913C0(v42, v45, isUniquelyReferenced_nonNull_native);
                          sub_8085C(v45);
                          *a5 = v41;
                          return;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v20 = sub_2EBF88(100, 0xE100000000000000);
              if ((v21 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (v7 <= -1.0)
              {
                goto LABEL_65;
              }

              if (v7 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v17 + 56) + 8 * v20) > v9)
              {
                if (!*(v17 + 16))
                {
                  goto LABEL_73;
                }

                v22 = sub_2EBF88(115, 0xE100000000000000);
                if ((v23 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v24 = *(*(v17 + 56) + 8 * v22);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_6A7C4(0, *(v15 + 2) + 1, 1, v15);
                }

                v26 = *(v15 + 2);
                v25 = *(v15 + 3);
                if (v26 >= v25 >> 1)
                {
                  v15 = sub_6A7C4((v25 > 1), v26 + 1, 1, v15);
                }

                v8 = 0.0;
                v14 = 0;
                *(v15 + 2) = v26 + 1;
                *&v15[8 * v26 + 32] = v24;
                goto LABEL_34;
              }
            }

            v8 = 0.0;
            v14 = 0;
LABEL_34:
            v13 = 1;
            v12 = v16;
            goto LABEL_6;
          }

          v8 = 0.0;
        }

        v14 = 0;
        v13 = 1;
      }

LABEL_6:
      v10 += 2;
      if (!--v6)
      {
        if ((v14 & 1) == 0)
        {
          if (v13)
          {
            v27 = v12;
            sub_AB33D0();
            v29 = v28;
            v12 = v27;
          }

          else
          {
            v29 = v8;
          }

          v17 = sub_4A36D8(v12, v29);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  *(&v43 + 1) = 0xEA00000000006F66;
  sub_ABAD10();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD78, &qword_B08B70);
  *&v43 = v11;
  sub_9ACFC(&v43, v42);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *a5;
  sub_913C0(v42, v45, v38);
  sub_8085C(v45);
  *a5 = v40;
  if (*(v15 + 2))
  {
    goto LABEL_58;
  }

LABEL_61:
}

void sub_2DD78C(uint64_t isUniquelyReferenced_nonNull_native, __n128 a2, __n128 a3)
{
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v3)
  {
    v4 = a2.n128_f64[0];
    v5 = 0.0;
    v6 = a2.n128_f64[0];
    v7 = (isUniquelyReferenced_nonNull_native + 40);
    v8 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    v10 = 1;
    v11 = 1;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      v13 = *(v7 - 1);
      if (*v7)
      {
        if ((v11 & 1) == 0)
        {
          v5 = *(v7 - 1);
        }

        v10 &= v11;
        goto LABEL_6;
      }

      if (v11)
      {
        v11 = 0;
        v9 = *(v7 - 1);
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          if (v13 - v5 >= 0.0166666667)
          {
            if (v5 - v9 > 0.0166666667)
            {
              v14 = sub_4A36D8(v9, v5);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_6A7D8(0, v8[2] + 1, 1, v8);
              }

              v16 = v8[2];
              v15 = v8[3];
              if (v16 >= v15 >> 1)
              {
                v8 = sub_6A7D8((v15 > 1), v16 + 1, 1, v8);
              }

              v8[2] = v16 + 1;
              v8[v16 + 4] = v14;
              if (!*(v14 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v8 = sub_6A7D8(0, v8[2] + 1, 1, v8);
LABEL_42:
                v28 = v8[2];
                v27 = v8[3];
                v16 = v28 + 1;
                if (v28 >= v27 >> 1)
                {
                  v8 = sub_6A7D8((v27 > 1), v28 + 1, 1, v8);
                }

                v8[2] = v16;
                v8[v28 + 4] = v14;
                if (*(v14 + 16))
                {
                  v29 = sub_2EBF88(100, 0xE100000000000000);
                  if (v30)
                  {
                    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v4 > -1.0)
                      {
                        if (v4 < 1.84467441e19)
                        {
                          if (*(*(v14 + 56) + 8 * v29) > v6)
                          {
                            if (*(v14 + 16))
                            {
                              v31 = sub_2EBF88(115, 0xE100000000000000);
                              if (v32)
                              {
                                v16 = *(*(v14 + 56) + 8 * v31);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v12 = sub_6A7C4(0, *(v12 + 2) + 1, 1, v12);
LABEL_53:
                              v34 = *(v12 + 2);
                              v33 = *(v12 + 3);
                              if (v34 >= v33 >> 1)
                              {
                                v12 = sub_6A7C4((v33 > 1), v34 + 1, 1, v12);
                              }

                              *(v12 + 2) = v34 + 1;
                              *&v12[8 * v34 + 32] = v16;
LABEL_56:
                              if (!v8[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v8[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v12 + 2))
                          {
                            goto LABEL_61;
                          }

LABEL_58:
                          v35 = 0x6973736572706D69;
                          v36 = 0xEF73656D69546E6FLL;
                          sub_ABAD10();
                          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
                          v35 = v12;
                          sub_2E4B68(&v35, v38);
                          return;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v17 = sub_2EBF88(100, 0xE100000000000000);
              if ((v18 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (v4 <= -1.0)
              {
                goto LABEL_65;
              }

              if (v4 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v14 + 56) + 8 * v17) > v6)
              {
                if (!*(v14 + 16))
                {
                  goto LABEL_73;
                }

                v19 = sub_2EBF88(115, 0xE100000000000000);
                if ((v20 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v21 = *(*(v14 + 56) + 8 * v19);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_6A7C4(0, *(v12 + 2) + 1, 1, v12);
                }

                v23 = *(v12 + 2);
                v22 = *(v12 + 3);
                if (v23 >= v22 >> 1)
                {
                  v12 = sub_6A7C4((v22 > 1), v23 + 1, 1, v12);
                }

                v5 = 0.0;
                v11 = 0;
                *(v12 + 2) = v23 + 1;
                *&v12[8 * v23 + 32] = v21;
                goto LABEL_34;
              }
            }

            v5 = 0.0;
            v11 = 0;
LABEL_34:
            v10 = 1;
            v9 = v13;
            goto LABEL_6;
          }

          v5 = 0.0;
        }

        v11 = 0;
        v10 = 1;
      }

LABEL_6:
      v7 += 2;
      if (!--v3)
      {
        if ((v11 & 1) == 0)
        {
          if (v10)
          {
            v24 = v9;
            sub_AB33D0();
            v26 = v25;
            v9 = v24;
          }

          else
          {
            v26 = v5;
          }

          v14 = sub_4A36D8(v9, v26);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  v36 = 0xEA00000000006F66;
  sub_ABAD10();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD78, &qword_B08B70);
  v35 = v8;
  sub_2E4B68(&v35, v38);
  if (*(v12 + 2))
  {
    goto LABEL_58;
  }

LABEL_61:
}

void sub_2DDCF4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a3, a4);
}

unint64_t sub_2DDD74(unsigned __int8 a1, int a2, void *a3)
{
  sub_ABB5C0();
  v6 = a1 - 3;
  if ((a1 - 3) >= 6u)
  {
    sub_ABB5D0(6uLL);
    v6 = a1;
  }

  sub_ABB5D0(v6);
  sub_ABB610();
  result = sub_ABABF0();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + result) = a1;
  v8 = (a3[7] + 3 * result);
  *v8 = a2;
  v8[1] = BYTE1(a2) & 1;
  v8[2] = BYTE2(a2) & 1;
  ++a3[2];
  return result;
}

uint64_t sub_2DDE5C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_20;
  }

  do
  {
    v30 = v10;
    v31 = a2;
    v32 = a3;
    v33 = v6;
    v29[1] = v29;
    __chkstk_darwin();
    v12 = v29 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    v11 = 0;
    v6 = 0;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    a2 = v14 & *(a1 + 64);
    a3 = ((v13 + 63) >> 6);
    while (a2)
    {
      v15 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
LABEL_12:
      v18 = v15 | (v6 << 6);
      v10 = *(*(a1 + 56) + 8 * v18);
      swift_beginAccess();
      v19 = *(v10 + 200);
      v22 = *(v19 + 16);
      v20 = v19 + 16;
      v21 = v22;
      if (!v22 || (*(v20 + 16 * v21 + 8) & 1) == 0)
      {
        *&v12[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_17:
          v24 = sub_2DE7BC(v12, v30, v11, a1, v31, v32);

          return v24;
        }
      }
    }

    v16 = v6;
    while (1)
    {
      v6 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= a3)
      {
        goto LABEL_17;
      }

      v17 = *(a1 + 64 + 8 * v6);
      v16 = (v16 + 1);
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        a2 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    ;
  }

  while ((swift_stdlib_isStackAllocationSafe() & 1) != 0);
  v26 = swift_slowAlloc();
  sub_2DE5AC(v26, v10, a1, a2, a3, v27);
  v24 = v28;

  return v24;
}

void *sub_2DE0B8(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v6 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (swift_stdlib_isStackAllocationSafe() & 1) != 0)
  {
    __chkstk_darwin();
    bzero(&v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v12 = a2(&v15 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a1);

    if (v6)
    {
      swift_willThrow();
    }
  }

  else
  {
    v14 = swift_slowAlloc();
    v12 = sub_2DE734(v14, v10, a1, a3);
  }

  return v12;
}

unint64_t *sub_2DE224(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 3 * v11 + 1) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2DE9F8(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2DE9F8(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2DE318(uint64_t result, uint64_t a2, uint64_t a3)
{
  v23 = result;
  v24 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
LABEL_5:
    if (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
    }

    else
    {
      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_45;
        }

        if (v4 >= v9)
        {
          return sub_2DE9F8(v23, a2, v24, a3);
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
    }

    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + v13);
    if (qword_DE68D0 != -1)
    {
      result = swift_once();
    }

    v15 = qword_E71068;
    if (*(qword_E71068 + 16))
    {
      sub_ABB5C0();
      v16 = v14 - 3;
      if ((v14 - 3) >= 6)
      {
        sub_ABB5D0(6uLL);
        v16 = v14;
      }

      sub_ABB5D0(v16);
      result = sub_ABB610();
      v17 = -1 << *(v15 + 32);
      v18 = result & ~v17;
      if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v15 + 48) + v18);
    if (v20 > 5)
    {
      break;
    }

    switch(v20)
    {
      case 3u:
        if (v14 == 3)
        {
          goto LABEL_40;
        }

        break;
      case 4u:
        if (v14 == 4)
        {
          goto LABEL_40;
        }

        break;
      case 5u:
        if (v14 == 5)
        {
          goto LABEL_40;
        }

        break;
      default:
        goto LABEL_34;
    }

LABEL_20:
    v18 = (v18 + 1) & v19;
    if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  switch(v20)
  {
    case 6u:
      if (v14 == 6)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    case 7u:
      if (v14 == 7)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
    case 8u:
      if (v14 == 8)
      {
        goto LABEL_40;
      }

      goto LABEL_20;
  }

LABEL_34:
  if ((v14 - 9) > 0xF9u || v20 != v14)
  {
    goto LABEL_20;
  }

LABEL_40:
  *(v23 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  if (!__OFADD__(v24++, 1))
  {
    goto LABEL_5;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_2DE5AC(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, __n128 a6)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v27 = a1;
    v9 = 0;
    v10 = 0;
    v11 = 1 << *(a3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a3 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v10 << 6);
      v19 = *(*(a3 + 56) + 8 * v18);
      swift_beginAccess();
      v20 = *(v19 + 200);
      v23 = *(v20 + 16);
      v21 = v20 + 16;
      v22 = v23;
      if (!v23 || (*(v21 + 16 * v22 + 8) & 1) == 0)
      {
        *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          sub_2DE7BC(v27, a2, v9, a3, a4, a5);

          return;
        }
      }
    }

    v16 = v10;
    while (1)
    {
      v10 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(a3 + 64 + 8 * v10);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void *sub_2DE734(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

uint64_t sub_2DE7BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_ABB0C0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v34 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    sub_ABB5C0();

    sub_AB93F0();
    result = sub_ABB610();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v11 + 56) + 8 * v27) = v23;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v34;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2DE9F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFDE80, &unk_B08CB8);
  result = sub_ABB0C0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = (*(v4 + 56) + 3 * v15);
    v17 = *v16;
    v18 = v16[1];
    if (v16[2])
    {
      v19 = 0x10000;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    result = sub_2DDD74(*(*(v4 + 48) + v15), v20 | v17 | v19, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_27;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2DEB54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFEFA0, &unk_B08C90);
  result = sub_ABB0C0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = *(v9 + 40);
    v21 = v18;
    v32 = v19;
    result = sub_ABA780(v20);
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      v4 = v17;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v21;
    *(*(v9 + 56) + 8 * v25) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2DED84(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v42 = *(a1 + 16);
  if (!v42 || !*(a2 + 16))
  {
    goto LABEL_24;
  }

  LOBYTE(v4) = a3;
  LOBYTE(v6) = *(a2 + 32);
  LOBYTE(v7) = *(a2 + 33);
  v8 = *(a2 + 34);
  v5 = *(a1 + 32);
  v9 = *a4;
  v10 = sub_2ECB00(v5);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v11;
  if (*(v9 + 24) < v15)
  {
    sub_32C504(v15, v4 & 1);
    v10 = sub_2ECB00(v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = sub_ABB4C0();
    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v18 = v10;
  sub_333660();
  v10 = v18;
  if (v16)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_30;
  }

LABEL_12:
  v19 = a4;
  v20 = *a4;
  *(*a4 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v20[6] + v10) = v5;
  v21 = (v20[7] + 3 * v10);
  *v21 = v6;
  v21[1] = v7;
  v21[2] = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_ABAD90(30);
    v44._object = 0x8000000000B5D6F0;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    sub_AB94A0(v44);
    sub_ABAF70();
    v45._countAndFlagsBits = 39;
    v45._object = 0xE100000000000000;
    sub_AB94A0(v45);
    sub_ABAFD0();
    __break(1u);
    return;
  }

  v20[2] = v23;
  v24 = a1;
  v25 = a2;
  if (v42 != 1)
  {
    v4 = (a1 + 33);
    v6 = (a2 + 37);
    v7 = 1;
    while (v7 < *(v24 + 16))
    {
      v26 = *(v25 + 16);
      if (v7 == v26)
      {
        goto LABEL_24;
      }

      if (v7 >= v26)
      {
        goto LABEL_29;
      }

      v27 = *(v6 - 2);
      v8 = *(v6 - 1);
      v28 = *v6;
      v5 = *v4;
      v29 = *v19;
      v30 = sub_2ECB00(v5);
      v32 = *(v29 + 16);
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_26;
      }

      v16 = v31;
      if (*(v29 + 24) < v34)
      {
        sub_32C504(v34, 1);
        v30 = sub_2ECB00(v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v19 = a4;
      v36 = *a4;
      *(*a4 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      *(v36[6] + v30) = v5;
      v37 = (v36[7] + 3 * v30);
      *v37 = v27;
      v37[1] = v8;
      v37[2] = v28;
      v38 = v36[2];
      v14 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v14)
      {
        goto LABEL_27;
      }

      ++v7;
      v36[2] = v39;
      ++v4;
      v6 += 3;
      v24 = a1;
      v25 = a2;
      if (v42 == v7)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_28;
  }

LABEL_24:
}

uint64_t sub_2DF14C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), (swift_stdlib_isStackAllocationSafe() & 1) != 0))
  {
    __chkstk_darwin();
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2DF2EC(v9, v7, isStackAllocationSafe, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2E3348(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_2DF2EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + v7);
    sub_ABB5C0();
    v12 = v11 - 3;
    if ((v11 - 3) >= 6)
    {
      sub_ABB5D0(6uLL);
      v12 = v11;
    }

    sub_ABB5D0(v12);
    v13 = sub_ABB610();
    v14 = -1 << *(a4 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
    {
      break;
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_35;
    }
  }

  v18 = ~v14;
  while (1)
  {
    v19 = *(*(a4 + 48) + v15);
    if (v19 > 5)
    {
      break;
    }

    switch(v19)
    {
      case 3u:
        if (v11 == 3)
        {
          goto LABEL_3;
        }

        break;
      case 4u:
        if (v11 == 4)
        {
          goto LABEL_3;
        }

        break;
      case 5u:
        if (v11 == 5)
        {
          goto LABEL_3;
        }

        break;
      default:
        goto LABEL_24;
    }

LABEL_10:
    v15 = (v15 + 1) & v18;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if ((*(v8 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_4;
    }
  }

  switch(v19)
  {
    case 6u:
      if (v11 == 6)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    case 7u:
      if (v11 == 7)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    case 8u:
      if (v11 == 8)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
  }

LABEL_24:
  if ((v11 - 9) > 0xF9u || v19 != v11)
  {
    goto LABEL_10;
  }

LABEL_3:
  v10 = a1[v16];
  a1[v16] = v10 | v17;
  if ((v10 & v17) != 0)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(v6++, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_34:
  v6 = 0;
LABEL_35:

  return sub_1CA530(a1, a2, v6, a4);
}

uint64_t sub_2DF4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DF574, v7, v6);
}

uint64_t sub_2DF574()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CA81C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DF634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DF6D0, v7, v6);
}

uint64_t sub_2DF6D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CAC5C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

double sub_2DF790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *))
{
  v11 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v13 = sub_21CCAC(a3, a4, v20, ObjectType, v11);
  sub_12E1C(v20, &qword_DF2BD0, &unk_AFDC00);
  if (v13)
  {
    sub_19500(v13);
  }

  v14 = (*(v11 + 56))(ObjectType, v11);
  __chkstk_darwin();
  v16[2] = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  sub_2C1B60(a6, v16, v14);

  return result;
}

uint64_t sub_2DF8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DF95C, v7, v6);
}

uint64_t sub_2DF95C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CB09C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DFA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DFAB8, v7, v6);
}

uint64_t sub_2DFAB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CB4DC);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DFB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DFC14, v7, v6);
}

uint64_t sub_2DFC14()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CB91C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DFCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DFD70, v7, v6);
}

uint64_t sub_2DFD70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CBD5C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2DFECC, v7, v6);
}

uint64_t sub_2DFECC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CC19C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2DFF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E0028, v7, v6);
}

uint64_t sub_2E0028()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CC5DC);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E0184, v7, v6);
}

uint64_t sub_2E0184()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CCA1C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E0244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E02E0, v7, v6);
}

uint64_t sub_2E02E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CCE5C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E03A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E043C, v7, v6);
}

uint64_t sub_2E043C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CED10(*(v0 + 56), sub_2CD29C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E04FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E0598, v7, v6);
}

uint64_t sub_2E0598()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CE798(*(v0 + 56), sub_2CD6DC);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E0658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E06F4, v7, v6);
}

uint64_t sub_2E06F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CED10(*(v0 + 56), sub_2CDB1C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E07B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E0850, v7, v6);
}

uint64_t sub_2E0850()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CED10(*(v0 + 56), sub_2CDF5C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E092C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E09C8, v7, v6);
}

uint64_t sub_2E09C8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CF1FC(*(v0 + 56), sub_2C9AC4, &unk_D09008, &unk_D09030, sub_2E0F6C);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2E0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_AB9940();
  v5[8] = sub_AB9930();
  v7 = sub_AB98B0();

  return _swift_task_switch(sub_2E0B48, v7, v6);
}

uint64_t sub_2E0B48()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_2CF1FC(*(v0 + 56), sub_2CA170, &unk_D091C0, &unk_D091E8, sub_2E24C4);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_2E0C2C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), __n128 a3)
{
  v3 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_ABAEC0();
    v5 = v3 + 64;
    v6 = sub_ABABC0();
    v7 = 0;
    v8 = *(v3 + 36);
    v23 = v3 + 72;
    v24 = v4;
    v26 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v3 + 36))
      {
        goto LABEL_22;
      }

      v27 = v7;
      v11 = v5;
      v12 = (*(v3 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v3 + 56) + 8 * v6);

      a2(v13, v14, v15);

      sub_ABAE90();
      sub_ABAED0();
      v3 = v26;
      sub_ABAEE0();
      sub_ABAEA0();
      v9 = 1 << *(v26 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v16 = *(v11 + 8 * v10);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v26 + 36))
      {
        goto LABEL_25;
      }

      v5 = v11;
      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v9 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v10 << 6;
        v19 = v10 + 1;
        v20 = (v23 + 8 * v10);
        while (v19 < (v9 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_E1798(v6, v8, 0);
            v9 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        sub_E1798(v6, v8, 0);
LABEL_18:
        v3 = v26;
      }

      v7 = v27 + 1;
      v6 = v9;
      if (v27 + 1 == v24)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_2E0EB4()
{

  return swift_deallocObject();
}

uint64_t sub_2E0EF8()
{

  return swift_deallocObject();
}

uint64_t sub_2E0F30()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_2E0FE0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(result + *&stru_298.segname[swift_isaMask & *result] + 16);
    if (v3)
    {
      v4 = v3;

      v5 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
      v6 = MPModelObject.bestIdentifier(for:)(*v5, 1u);

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2E10A8@<X0>(void *a1@<X0>, _OWORD *a2@<X1>, unint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a2[3];
  v137 = a2[2];
  v138 = v6;
  v139 = *(a2 + 8);
  v7 = a2[1];
  v135 = *a2;
  v136 = v7;
  v8 = objc_opt_self();
  sub_2DBCA8(v3, &v130);
  v121 = v8;
  v9 = [v8 standardUserDefaults];
  LOBYTE(v125) = 7;
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v130);
  if (!*(&v131 + 1))
  {
    sub_12E1C(&v130, &unk_DE8E40, &unk_AF8050);
LABEL_18:

    v21 = [a1 itemsInSectionAtIndex:0];
    v22 = sub_AB9760();
    v17 = sub_12DAC8(v22, v23);

    if (v17)
    {
      v11 = v17 & 0xFFFFFFFFFFFFFF8;
      if (v17 >> 62)
      {
        goto LABEL_81;
      }

      v24 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
      if (v24)
      {
        goto LABEL_21;
      }

LABEL_84:
    }

    goto LABEL_146;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v10 = [a1 itemsInSectionAtIndex:0];
  v11 = sub_AB9760();
  v13 = sub_12DAC8(v11, v12);

  if (!v13)
  {
    goto LABEL_146;
  }

  v120 = a3;
  *&v130 = _swiftEmptyArrayStorage;
  v14 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
    goto LABEL_86;
  }

  v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  v118 = v3;
  if (!v15)
  {
LABEL_87:
    v51 = _swiftEmptyArrayStorage;
LABEL_88:

    v52 = sub_2D7F88(v51);
    a3 = v120;
    if (!v52)
    {
      v127 = v137;
      v128 = v138;
      v129 = v139;
      v125 = v135;
      v126 = v136;
      sub_2DBCA8(&v125, &v130);

      v132 = v137;
      v133 = v138;
      v134 = v139;
      v130 = v135;
      v131 = v136;
      goto LABEL_147;
    }

    v53 = v52;
    *&v125 = &_swiftEmptySetSingleton;

    v55 = sub_2DE0B8(v54, sub_2DE318, sub_2DE318);

    v56 = [v121 standardUserDefaults];
    LOBYTE(v124[0]) = 11;
    NSUserDefaults.subscript.getter(&v130);
    v122 = v51;
    if (*(&v131 + 1))
    {
      if (swift_dynamicCast())
      {

        v57 = 1;
LABEL_92:
        BYTE8(v138) = v57 & 1;
        v58 = 1 << v55[32];
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v60 = v59 & *(v55 + 8);
        v61 = (v58 + 63) >> 6;

        v62 = 0;
        while (v60)
        {
LABEL_100:
          v64 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v65 = (*(v55 + 7) + 3 * (v64 | (v62 << 6)));
          if (v65[1] == 1)
          {
            v56 = &v125;
            sub_1A094(&v130, *v65);
          }
        }

        while (1)
        {
          v63 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          if (v63 >= v61)
          {
            break;
          }

          v60 = *&v55[8 * v63 + 64];
          ++v62;
          if (v60)
          {
            v62 = v63;
            goto LABEL_100;
          }
        }

        v124[0] = &_swiftEmptySetSingleton;

        v56 = sub_2E4954(v66);
        if (qword_DE68D0 != -1)
        {
          goto LABEL_151;
        }

        goto LABEL_103;
      }
    }

    else
    {
      sub_12E1C(&v130, &unk_DE8E40, &unk_AF8050);
    }

    v85 = 0;
    v86 = 0;
    v87 = 1 << v55[32];
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = v88 & *(v55 + 8);
    v90 = (v87 + 63) >> 6;
    while (1)
    {
      v57 = v86;
      if (!v89)
      {
        break;
      }

      v91 = v89;
LABEL_133:
      v89 = (v91 - 1) & v91;
      v86 = 1;
      if ((v57 & 1) == 0)
      {
        v93 = *(v55 + 7) + 3 * (__clz(__rbit64(v91)) | (v85 << 6));
        v86 = *(v93 + 1) & (*(v93 + 2) ^ 1);
      }
    }

    while (1)
    {
      v92 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v92 >= v90)
      {
        goto LABEL_92;
      }

      v91 = *&v55[8 * v92 + 64];
      ++v85;
      if (v91)
      {
        v85 = v92;
        goto LABEL_133;
      }
    }

LABEL_150:
    __break(1u);
LABEL_151:
    swift_once();
LABEL_103:
    if (*(qword_E71068 + 16) <= v56[2] >> 3)
    {
      *&v130 = v56;
      v56 = &v130;
      sub_1C51F4(qword_E71068);
      v67 = v130;
    }

    else
    {
      v67 = sub_1C7F98(qword_E71068, v56);
    }

    v68 = 0;
    v69 = 1 << v67[32];
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 7);
    v72 = (v69 + 63) >> 6;
    while (v71)
    {
      v73 = v71;
LABEL_116:
      v71 = (v73 - 1) & v73;
      if (v53[2])
      {
        v75 = *(*(v67 + 6) + (__clz(__rbit64(v73)) | (v68 << 6)));
        v56 = v53;
        v76 = sub_2ECB00(v75);
        if ((v77 & 1) != 0 && *(v53[7] + 3 * v76 + 2) == 1)
        {
          v56 = v124;
          sub_1A094(&v130, v75);
        }
      }
    }

    while (1)
    {
      v74 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_149;
      }

      if (v74 >= v72)
      {
        break;
      }

      v73 = *&v67[8 * v74 + 56];
      ++v68;
      if (v73)
      {
        v68 = v74;
        goto LABEL_116;
      }
    }

    v78 = sub_338554(v124[0], v125);
    v79 = v78;
    v80 = *(v78 + 16);
    if (v80)
    {
      v81 = sub_130668(*(v78 + 16), 0);
      v82 = sub_131344(&v130, v81 + 32, v80, v79);
      v83 = v130;

      result = sub_2BB88(v83);
      if (v82 != v80)
      {
        __break(1u);
        return result;
      }

      a3 = v120;
    }

    else
    {

      v81 = _swiftEmptyArrayStorage;
    }

    sub_2AF080(v81);
    sub_2D8598(3, v122);
    v123[0] = v94;
    sub_2D8598(4, v122);
    v95 = 0;
    v123[1] = v96;
    v123[2] = v97;
    v98 = _swiftEmptyArrayStorage;
LABEL_137:
    v99 = &v123[2 * v95];
    while (++v95 != 3)
    {
      v100 = v99 + 2;
      v101 = *v99;
      v99 += 2;
      if (v101)
      {
        v102 = *(v100 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_6B0F0(0, *(v98 + 2) + 1, 1, v98);
        }

        v104 = *(v98 + 2);
        v103 = *(v98 + 3);
        if (v104 >= v103 >> 1)
        {
          v98 = sub_6B0F0((v103 > 1), v104 + 1, 1, v98);
        }

        *(v98 + 2) = v104 + 1;
        v105 = &v98[16 * v104];
        *(v105 + 4) = v102;
        *(v105 + 5) = v101;
        goto LABEL_137;
      }
    }

    v140 = *(v118 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE6F0, &unk_AF8970);
    swift_arrayDestroy();
    sub_12E1C(&v140, &unk_DFDE70, &unk_AF7D30);

    v139 = v98;
    goto LABEL_146;
  }

  while (1)
  {
    v16 = 0;
    a3 = v13 & 0xC000000000000001;
    v17 = &selRef_performWithResponseHandler_;
    while (1)
    {
      if (a3)
      {
        v18 = sub_3603D0(v16, v13);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_80;
        }

        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (([v18 hasVideo] & 1) != 0 || !objc_msgSend(v19, "isLibraryAddEligible"))
      {
      }

      else
      {
        sub_ABAE90();
        v11 = v13;
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        a3 = v13 & 0xC000000000000001;
      }

      ++v16;
      if (v20 == v15)
      {
        v51 = v130;
        goto LABEL_88;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      if (sub_ABB060() <= 0)
      {
        goto LABEL_84;
      }

      v24 = sub_ABB060();
      if (!v24)
      {
        break;
      }

LABEL_21:
      v120 = a3;
      a3 = 0;
      v25 = v17 & 0xC000000000000001;
      v3 = &_swiftEmptySetSingleton;
      v26 = v17 + 32;
      v27 = &selRef_performWithResponseHandler_;
      v28 = &selRef_isMovingFromParentViewController;
      v117 = v11;
      v119 = v17;
      v115 = v17 & 0xC000000000000001;
      v116 = v24;
      v114 = v17 + 32;
      while (1)
      {
        if (v25)
        {
          v30 = sub_3603D0(a3, v17);
        }

        else
        {
          if (a3 >= *(v11 + 16))
          {
            goto LABEL_78;
          }

          v30 = *(v26 + 8 * a3);
        }

        v31 = v30;
        if (__OFADD__(a3++, 1))
        {
          break;
        }

        if ([v30 v27[50]] & 1) == 0 && (objc_msgSend(v31, v28[18]))
        {
          if (*(v3 + 2))
          {
            v29 = sub_162538();
            v3 = sub_2DF14C(v29, v3);

            if (!*(v3 + 2))
            {
              goto LABEL_66;
            }
          }

          else
          {

            v33 = sub_162538();
            sub_112854();
            v34 = sub_AB9B70();
            v35 = v33;
            v3 = v34;
            v36 = *(v33 + 2);
            if (v36)
            {
              v37 = 0;
              v38 = v35 + 32;
              while (1)
              {
                v40 = v3 + 56;
                while (1)
                {
                  v41 = v38[v37];
                  sub_ABB5C0();
                  v42 = v41 - 3;
                  if ((v41 - 3) >= 6)
                  {
                    sub_ABB5D0(6uLL);
                    v42 = v41;
                  }

                  sub_ABB5D0(v42);
                  ++v37;
                  v43 = sub_ABB610();
                  v44 = -1 << *(v3 + 32);
                  v45 = v43 & ~v44;
                  if (((*&v40[(v45 >> 3) & 0xFFFFFFFFFFFFFF8] >> v45) & 1) == 0)
                  {
                    break;
                  }

                  v46 = ~v44;
                  while (1)
                  {
                    v47 = *(*(v3 + 6) + v45);
                    if (v47 > 5)
                    {
                      break;
                    }

                    switch(v47)
                    {
                      case 3u:
                        if (v41 == 3)
                        {
                          goto LABEL_62;
                        }

                        break;
                      case 4u:
                        if (v41 == 4)
                        {
                          goto LABEL_62;
                        }

                        break;
                      case 5u:
                        if (v41 == 5)
                        {
                          goto LABEL_62;
                        }

                        break;
                      default:
                        goto LABEL_56;
                    }

LABEL_42:
                    v45 = (v45 + 1) & v46;
                    if (((*&v40[(v45 >> 3) & 0xFFFFFFFFFFFFFF8] >> v45) & 1) == 0)
                    {
                      goto LABEL_35;
                    }
                  }

                  switch(v47)
                  {
                    case 6u:
                      if (v41 == 6)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_42;
                    case 7u:
                      if (v41 == 7)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_42;
                    case 8u:
                      if (v41 == 8)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_42;
                  }

LABEL_56:
                  if ((v41 - 9) > 0xF9u || v47 != v41)
                  {
                    goto LABEL_42;
                  }

LABEL_62:
                  if (v37 == v36)
                  {
LABEL_63:

                    v11 = v117;
                    v17 = v119;
                    v25 = v115;
                    v24 = v116;
                    v26 = v114;
                    goto LABEL_65;
                  }
                }

LABEL_35:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v130 = v3;
                sub_218B8(v41, v45, isUniquelyReferenced_nonNull_native);
                v3 = v130;
                if (v37 == v36)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_65:
            v27 = &selRef_performWithResponseHandler_;
            if (!*(v3 + 2))
            {
LABEL_66:

              goto LABEL_67;
            }
          }

          v28 = &selRef_isMovingFromParentViewController;
        }

        if (a3 == v24)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
    }

    v120 = a3;
    v3 = &_swiftEmptySetSingleton;
LABEL_67:

    v48 = *(v3 + 2);
    if (!v48)
    {
      break;
    }

    v13 = sub_130668(*(v3 + 2), 0);
    v11 = sub_131344(&v130, (v13 + 32), v48, v3);
    v49 = v130;
    v14 = v131;

    sub_2BB88(v49);
    if (v11 == v48)
    {

      goto LABEL_71;
    }

    __break(1u);
LABEL_86:
    v15 = sub_ABB060();
    v118 = v3;
    if (!v15)
    {
      goto LABEL_87;
    }
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_71:
  a3 = v120;
  sub_2AF080(v13);
  v50 = [v121 standardUserDefaults];
  LOBYTE(v125) = 11;
  NSUserDefaults.subscript.getter(&v130);
  if (*(&v131 + 1))
  {
    if (swift_dynamicCast())
    {

      BYTE8(v138) = v125;
      goto LABEL_146;
    }
  }

  else
  {
    sub_12E1C(&v130, &unk_DE8E40, &unk_AF8050);
  }

  BYTE8(v138) = 0;
LABEL_146:
  v127 = v137;
  v128 = v138;
  v129 = v139;
  v125 = v135;
  v126 = v136;
  v132 = v137;
  v133 = v138;
  v134 = v139;
  v130 = v135;
  v131 = v136;
  sub_2DBCA8(&v125, v124);
LABEL_147:
  result = sub_2DBD04(&v130);
  v106 = v129;
  v107 = BYTE8(v128);
  v109 = *(&v127 + 1);
  v108 = v128;
  v110 = *(&v126 + 1);
  v111 = v127;
  v112 = v126;
  v113 = v125;
  LOBYTE(v130) = v126;
  LOBYTE(v125) = v127;
  *a3 = v113;
  *(a3 + 16) = v112;
  *(a3 + 24) = v110;
  *(a3 + 32) = v111;
  *(a3 + 40) = v109;
  *(a3 + 48) = v108;
  *(a3 + 56) = v107;
  *(a3 + 64) = v106;
  return result;
}

void sub_2E1E18()
{
  v1 = *(v0 + *&stru_298.segname[swift_isaMask & *v0] + 8);
  if (v1)
  {
    v20 = v1;
    if (JSContainerDetail.hasMusicKitResponse.getter())
    {
      v2 = v0 + *&stru_298.segname[(swift_isaMask & *v0) + 8];
      swift_beginAccess();
      v3 = *(v2 + 3);
      v30 = *(v2 + 2);
      v31 = v3;
      v32 = *(v2 + 8);
      v4 = *(v2 + 1);
      v29[0] = *v2;
      v29[1] = v4;
      v6 = *(&v30 + 1);
      v5 = v3;
      if (v3)
      {
        v7 = *(v2 + 1);
        aBlock = *v2;
        v24 = v7;
        v25 = *(v2 + 4);
        v26 = *(&v30 + 1);
        v27 = v5;
        v28 = *(v2 + 56);
        sub_15F84(v29, v22, &unk_DFDD48, &unk_B08B58);

        sub_12E1C(&aBlock, &unk_DFDD48, &unk_B08B58);
        if (v6)
        {

          return;
        }
      }

      else
      {
        v8 = *(v2 + 1);
        aBlock = *v2;
        v24 = v8;
        v25 = *(v2 + 4);
        v26 = *(&v30 + 1);
        v27 = 0;
        v28 = *(v2 + 56);
        sub_15F84(v29, v22, &unk_DFDD48, &unk_B08B58);
        sub_12E1C(&aBlock, &unk_DFDD48, &unk_B08B58);
      }

      v9 = type metadata accessor for JSContainerDetailModelRequest();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_filterText];
      *v11 = 0;
      v11[1] = 0;
      v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_sortOption] = 13;
      swift_unknownObjectWeakInit();
      v12 = OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel;
      *&v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_containerDetailViewModel] = 0;
      v10[OBJC_IVAR____TtC16MusicApplication29JSContainerDetailModelRequest_isCancelled] = 0;
      *&v10[v12] = v1;
      v21.receiver = v10;
      v21.super_class = v9;
      v13 = v20;
      v14 = objc_msgSendSuper2(&v21, "init");
      v15 = sub_AB9260();
      [v14 setLabel:v15];

      sub_13C80(0, &qword_E250F0, MPModelRecordLabelKind_ptr);
      v16 = [swift_getObjCClassFromMetadata() identityKind];
      [v14 setItemKind:v16];

      v17 = sub_1FB7B4();
      [v14 setItemProperties:v17];

      [v14 setSectionKind:0];
      [v14 setSectionProperties:0];

      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = sub_2E32F8;
      v26 = v18;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v24 = sub_151E0;
      *(&v24 + 1) = &block_descriptor_392;
      v19 = _Block_copy(&aBlock);

      [v14 performWithResponseHandler:v19];
      _Block_release(v19);
    }

    else
    {
    }
  }
}

double block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2E225C(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E092C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2384()
{

  return swift_deallocObject();
}

uint64_t sub_2E23C4()
{

  return swift_deallocObject();
}

uint64_t sub_2E23FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2E2464(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2E25D4(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E0AAC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2728(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E0244(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2964(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DF634(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2BC0(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DFCD4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2D0C(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E00E8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E2F04(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17BD0;

  return sub_2DFE30(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_2E3084()
{
  result = qword_DF1270;
  if (!qword_DF1270)
  {
    type metadata accessor for ImpressionTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF1270);
  }

  return result;
}

uint64_t sub_2E3190(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DFF8C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E3300()
{

  return swift_deallocObject();
}

uint64_t sub_2E3348@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2DF2EC(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2E33B0()
{

  return swift_deallocObject();
}

uint64_t sub_2E3400()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_399Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_2E3530(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E07B4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E36F0(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2DF4D8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2E3938(uint64_t a1)
{
  v4 = *(sub_AB2BD0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_17CF8;

  return sub_2E0658(a1, v6, v7, v8, v1 + v5);
}