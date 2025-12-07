TUI::ElementInstantiating::BuilderCache *TUI::ElementInstantiating::BuilderCache::BuilderCache(TUI::ElementInstantiating::BuilderCache *this)
{
  *(this + 8) = 0u;
  v2 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  v5 = &OBJC_PROTOCOL___TUIBoxBuilding;
  v6 = &v5;
  sub_3800(v2, &v5, &std::piecewise_construct, &v6)[3] = 0;

  v4 = &OBJC_PROTOCOL___TUIAnimationBuilding;
  v6 = &v4;
  sub_3800(v2, &v4, &std::piecewise_construct, &v6)[3] = 1;

  *this = 0;
  return this;
}

void sub_2484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  sub_3780(v10);
  sub_3780(v9);
  _Unwind_Resume(a1);
}

void TUI::ElementInstantiating::BuilderCache::~BuilderCache(TUI::ElementInstantiating::BuilderCache *this)
{
  sub_3780(this + 48);
  sub_3780(this + 8);
}

{
  sub_3780(this + 48);
  sub_3780(this + 8);
}

uint64_t TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(os_unfair_lock_s *this, objc_class *a2)
{
  v7 = a2;
  os_unfair_lock_lock(this);
  v3 = sub_3D34(&this[12]._os_unfair_lock_opaque, &v7);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v5 = *&this[6]._os_unfair_lock_opaque;
    if (v5)
    {
      v4 = 0;
      do
      {
        if ([v7 conformsToProtocol:v5[2]])
        {
          v4 |= 1 << *(v5 + 6);
        }

        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      v4 = 0;
    }

    v8 = &v7;
    sub_3DEC(&this[12]._os_unfair_lock_opaque, &v7, &std::piecewise_construct, &v8)[3] = v4;
  }

  os_unfair_lock_unlock(this);
  return v4;
}

uint64_t TUI::ElementInstantiating::BuilderCache::computeProtocolsFromArray(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v11 + 1) + 8 * v8);
        v9 = sub_3D34(&a1[2]._os_unfair_lock_opaque, &v15);
        if (v9)
        {
          v5 |= 1 << *(v9 + 6);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(a1);
  return v5;
}

void TUI::ElementInstantiating::BuilderCache::registerBuilderProtocol(os_unfair_lock_s *this, Protocol *a2)
{
  v6 = a2;
  os_unfair_lock_lock(this);
  if (!sub_3D34(&this[2]._os_unfair_lock_opaque, &v6))
  {
    v3 = *&this[8]._os_unfair_lock_opaque;
    v7 = &v6;
    sub_3DEC(&this[2]._os_unfair_lock_opaque, &v6, &std::piecewise_construct, &v7)[3] = v3;
    v4 = *&this[16]._os_unfair_lock_opaque;
    if (v4)
    {
      v5 = 1 << v3;
      do
      {
        if ([v4[2] conformsToProtocol:v6])
        {
          v4[3] = (v4[3] | v5);
        }

        v4 = *v4;
      }

      while (v4);
    }
  }

  os_unfair_lock_unlock(this);
}

void TUI::ElementInstantiating::BuilderCache::updateProtocolsWithBuilderProtocol(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v6 = a3;
  os_unfair_lock_lock(a1);
  v5 = sub_3D34(&a1[2]._os_unfair_lock_opaque, &v6);
  if (v5)
  {
    *a2 |= 1 << *(v5 + 6);
  }

  os_unfair_lock_unlock(a1);
}

id TUI::ElementInstantiating::BuilderCache::description(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_new();
  [v4 appendString:@"["];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = 1;
    do
    {
      if (((1 << *(v5 + 6)) & a2) != 0)
      {
        if ((v6 & 1) == 0)
        {
          [v4 appendString:{@", "}];
        }

        v7 = NSStringFromProtocol(v5[2]);
        [v4 appendString:v7];

        v6 = 0;
      }

      v5 = *v5;
    }

    while (v5);
  }

  [v4 appendString:@"]"];
  v8 = [v4 copy];

  return v8;
}

TUI::ElementInstantiating::ConformanceCache::Conformance *TUI::ElementInstantiating::ConformanceCache::Conformance::Conformance(TUI::ElementInstantiating::ConformanceCache::Conformance *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  bzero(this, 0x30uLL);
  return this;
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  bzero(this, 0x30uLL);
  return this;
}

TUI::ElementInstantiating::ConformanceCache *TUI::ElementInstantiating::ConformanceCache::ConformanceCache(TUI::ElementInstantiating::ConformanceCache *this, TUIElementRegistry *a2, const StringsSection *a3, os_unfair_lock_s *a4)
{
  v102 = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  bzero(this + 24, 0x30uLL);
  *(this + 9) = 0;
  *(this + 10) = 0;
  v101 = (this + 72);
  *(this + 11) = 0;
  TUI::ElementInstantiating::BuilderCache::registerBuilderProtocol(a4, &OBJC_PROTOCOL___TUIModelBuilding);
  if (a3->count)
  {
    v7 = 0;
    do
    {
      if (a3->base)
      {
        v8 = [NSString stringWithUTF8String:&a3->base[a3->offsets[v7]]];
        v9 = [(TUIElementRegistry *)v102 elementClassForName:v8];

        if (v9)
        {
          if (objc_opt_respondsToSelector())
          {
            v10 = [(objc_class *)v9 requiredBuilderProtocol];
            if (v10)
            {
              TUI::ElementInstantiating::BuilderCache::registerBuilderProtocol(a4, v10);
            }
          }

          else
          {
            v10 = 0;
          }

          if (objc_opt_respondsToSelector())
          {
            v11 = [(objc_class *)v9 requiredBuilderProtocols];
          }

          else
          {
            v11 = 0;
          }

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v106 objects:v111 count:16];
          if (v13)
          {
            v14 = *v107;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v107 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                TUI::ElementInstantiating::BuilderCache::registerBuilderProtocol(a4, *(*(&v106 + 1) + 8 * i));
              }

              v13 = [v12 countByEnumeratingWithState:&v106 objects:v111 count:16];
            }

            while (v13);
          }
        }
      }

      ++v7;
    }

    while (v7 < a3->count);
  }

  v16 = objc_opt_class();
  *this = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(a4, v16);
  v17 = objc_opt_class();
  *(this + 1) = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(a4, v17);
  v110 = &OBJC_PROTOCOL___TUITextModelBuilding;
  v18 = [NSArray arrayWithObjects:&v110 count:1];
  *(this + 2) = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromArray(a4, v18);

  if (a3->count)
  {
    v19 = 0;
    v100 = "builderProtocols";
    while (1)
    {
      *(&v104 + 1) = 0;
      *&v105 = 0;
      bzero(v103, 0x30uLL);
      if (a3->base)
      {
        v20 = [NSString stringWithUTF8String:&a3->base[a3->offsets[v19]]];
        v21 = [(TUIElementRegistry *)v102 elementClassForName:v20];

        if (v21)
        {
          if (objc_opt_respondsToSelector())
          {
            break;
          }
        }
      }

LABEL_168:
      v83 = *(this + 10);
      v84 = *(this + 11);
      if (v83 >= v84)
      {
        v88 = 0xAAAAAAAAAAAAAAABLL * ((v83 - *v101) >> 4);
        v89 = v88 + 1;
        if (v88 + 1 > 0x555555555555555)
        {
          sub_4050();
        }

        v90 = 0xAAAAAAAAAAAAAAABLL * ((v84 - *v101) >> 4);
        if (2 * v90 > v89)
        {
          v89 = 2 * v90;
        }

        if (v90 >= 0x2AAAAAAAAAAAAAALL)
        {
          v91 = 0x555555555555555;
        }

        else
        {
          v91 = v89;
        }

        if (v91)
        {
          sub_40F8(v101, v91);
        }

        v92 = 48 * v88;
        v93 = *v103;
        v94 = v105;
        *(v92 + 16) = v104;
        *(v92 + 32) = v94;
        *v92 = v93;
        v87 = 48 * v88 + 48;
        v95 = *(this + 9);
        v96 = *(this + 10) - v95;
        v97 = v92 - v96;
        memcpy((v92 - v96), v95, v96);
        v98 = *(this + 9);
        *(this + 9) = v97;
        *(this + 10) = v87;
        *(this + 11) = 0;
        if (v98)
        {
          operator delete(v98);
        }
      }

      else
      {
        v85 = *v103;
        v86 = v105;
        v83[1] = v104;
        v83[2] = v86;
        *v83 = v85;
        v87 = (v83 + 3);
      }

      *(this + 10) = v87;
      if (++v19 >= a3->count)
      {
        goto LABEL_181;
      }
    }

    v103[0] = v21;
    if (objc_opt_respondsToSelector())
    {
      v22 = [(objc_class *)v21 objectClass];
    }

    else
    {
      v22 = 0;
    }

    *&v104 = v22;
    if (objc_opt_respondsToSelector())
    {
      v23 = [(objc_class *)v21 builderClass];
    }

    else
    {
      v23 = 0;
    }

    v103[1] = v23;
    if (objc_opt_respondsToSelector())
    {
      v24 = [(objc_class *)v21 requiredBuilderProtocol];
      if (v24)
      {
        TUI::ElementInstantiating::BuilderCache::updateProtocolsWithBuilderProtocol(a4, &v105, v24);
LABEL_39:

LABEL_40:
        v25 = [v104 isSubclassOfClass:objc_opt_class()];
        if (v25)
        {
          v26 = 8;
        }

        else
        {
          v26 = 0;
        }

        *(&v105 + 11) = *(&v105 + 11) & 0xFFF7 | v26;
        if (v103[1])
        {
          *(&v104 + 1) = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromClass(a4, v103[1]);
        }

        else if (objc_opt_respondsToSelector())
        {
          v27 = [(objc_class *)v21 builderProtocols];
          if ([v27 count])
          {
            *(&v104 + 1) = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromArray(a4, v27);
          }

          else
          {
            WORD4(v105) |= 2u;
          }
        }

        if (!v103[1] && !*(&v104 + 1))
        {
          if (v25)
          {
            v28 = 4;
          }

          else
          {
            v28 = 0;
          }

          *(&v105 + 11) = *(&v105 + 11) & 0xFFFB | v28;
        }

        if (v105)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

        if (v29 == 1)
        {
          *&v105 = *this;
        }

        if (objc_opt_respondsToSelector())
        {
          v30 = 4;
        }

        else
        {
          v30 = 0;
        }

        WORD4(v105) = WORD4(v105) & 0xFFFB | v30;
        if (objc_opt_respondsToSelector())
        {
          v31 = [(objc_class *)v21 evaluateAttributes];
          if (v31)
          {
            v32 = 8;
          }

          else
          {
            v32 = 0;
          }

          v33 = WORD4(v105) & 0xFFF7 | v32;
          WORD4(v105) = v33;
          if ((v31 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          WORD4(v105) |= 8u;
        }

        if (objc_opt_respondsToSelector())
        {
          v34 = [(objc_class *)v21 resolveAttributes];
          v33 = WORD4(v105);
          if (!v34)
          {
            v35 = 0;
            goto LABEL_76;
          }
        }

        else
        {
          v33 = WORD4(v105);
        }

LABEL_75:
        v35 = 16;
LABEL_76:
        v36 = v33 & 0xFFEF | v35;
        WORD4(v105) = v36;
        if ((v33 & 8) != 0)
        {
          if (objc_opt_respondsToSelector())
          {
            v37 = [(objc_class *)v21 resolveAttributesForInvocation];
            v36 = WORD4(v105);
            if (!v37)
            {
              v38 = 0;
              goto LABEL_82;
            }
          }

          else
          {
            v36 = WORD4(v105);
          }
        }

        v38 = 32;
LABEL_82:
        WORD4(v105) = v36 & 0xFFDF | v38;
        if (objc_opt_respondsToSelector())
        {
          v39 = 64;
        }

        else
        {
          v39 = 0;
        }

        WORD4(v105) = WORD4(v105) & 0xFFBF | v39;
        if (objc_opt_respondsToSelector())
        {
          v40 = 128;
        }

        else
        {
          v40 = 0;
        }

        WORD4(v105) = WORD4(v105) & 0xFF7F | v40;
        if (objc_opt_respondsToSelector())
        {
          v41 = 256;
        }

        else
        {
          v41 = 0;
        }

        WORD4(v105) = WORD4(v105) & 0xFEFF | v41;
        if (objc_opt_respondsToSelector())
        {
          v42 = 512;
        }

        else
        {
          v42 = 0;
        }

        v43 = WORD4(v105) & 0xFDFF | v42;
        WORD4(v105) = v43;
        if (v25)
        {
          if (objc_opt_respondsToSelector())
          {
            v44 = 1024;
          }

          else
          {
            v44 = 0;
          }

          WORD4(v105) = WORD4(v105) & 0xFBFF | v44;
          v45 = objc_opt_respondsToSelector();
          v46 = 0;
          if (v45)
          {
            v47 = 2048;
          }

          else
          {
            v47 = 0;
          }

          v48 = WORD4(v105) & 0xF7FF | v47;
        }

        else
        {
          WORD4(v105) = v43 & 0xF3FF;
          v49 = objc_opt_respondsToSelector();
          v48 = WORD4(v105);
          if (v49)
          {
            v46 = 4096;
          }

          else
          {
            v46 = 0;
          }
        }

        WORD4(v105) = v48 & 0xEFFF | v46;
        if (objc_opt_respondsToSelector())
        {
          v50 = 0x2000;
        }

        else
        {
          v50 = 0;
        }

        WORD4(v105) = WORD4(v105) & 0xDFFF | v50;
        if (objc_opt_respondsToSelector())
        {
          v51 = [(objc_class *)v21 instantiateChildren];
          v52 = WORD4(v105);
          if (!v51)
          {
            v53 = 0;
LABEL_113:
            WORD4(v105) = v52 & 0x7FFF | v53;
            BYTE10(v105) = BYTE10(v105) & 0xFE | objc_opt_respondsToSelector() & 1;
            if (objc_opt_respondsToSelector())
            {
              v54 = 2;
            }

            else
            {
              v54 = 0;
            }

            BYTE10(v105) = BYTE10(v105) & 0xFD | v54;
            v55 = objc_opt_respondsToSelector();
            v56 = 0;
            if (v55)
            {
              v57 = 4;
            }

            else
            {
              v57 = 0;
            }

            v58 = BYTE10(v105) & 0xFB | v57;
            BYTE10(v105) = v58;
            if (v104 && *(&v104 + 1))
            {
              v59 = objc_opt_respondsToSelector();
              v58 = BYTE10(v105);
              if (v59)
              {
                v56 = 8;
              }

              else
              {
                v56 = 0;
              }
            }

            BYTE10(v105) = v58 & 0xF7 | v56;
            if (objc_opt_respondsToSelector())
            {
              v60 = 16;
            }

            else
            {
              v60 = 0;
            }

            BYTE10(v105) = BYTE10(v105) & 0xEF | v60;
            if (objc_opt_respondsToSelector())
            {
              v61 = [(objc_class *)v21 supportOnlyImmediateChildrenForContainedBuilding];
              v62 = BYTE10(v105);
              if (v61)
              {
                v63 = 32;
              }

              else
              {
                v63 = 0;
              }
            }

            else
            {
              v63 = 0;
              v62 = BYTE10(v105);
            }

            BYTE10(v105) = v62 & 0xDF | v63;
            if (objc_opt_respondsToSelector())
            {
              v64 = [(objc_class *)v21 shouldAutoEnumerateNode];
              v65 = BYTE10(v105);
              if (v64)
              {
                v66 = 64;
              }

              else
              {
                v66 = 0;
              }
            }

            else
            {
              v66 = 0;
              v65 = BYTE10(v105);
            }

            BYTE10(v105) = v65 & 0xBF | v66;
            if (objc_opt_respondsToSelector())
            {
              v67 = [(objc_class *)v21 allowEmptyEnumerator];
              v68 = BYTE10(v105);
              if (v67)
              {
                v69 = 0x80;
              }

              else
              {
                v69 = 0;
              }
            }

            else
            {
              v69 = 0;
              v68 = BYTE10(v105);
            }

            BYTE10(v105) = v68 & 0x7F | v69;
            if (objc_opt_respondsToSelector())
            {
              v70 = [(objc_class *)v21 allowedAsChildInContainedBuilding];
            }

            else
            {
              v70 = 1;
            }

            if (v103[1] != v104 || v104 == 0)
            {
              v72 = 0;
            }

            else
            {
              v72 = 16;
            }

            *(&v105 + 11) = v72 | *(&v105 + 11) & 0xFFEE | v70;
            v73 = [(objc_class *)v21 definesScopes];
            *(&v105 + 11) = *(&v105 + 11) & 0xE07F | ((v73 & 0x3F) << 7);
            if (objc_opt_respondsToSelector())
            {
              v74 = 0x4000;
            }

            else
            {
              v74 = 0;
            }

            WORD4(v105) = WORD4(v105) & 0xBFFF | v74;
            if (v103[1])
            {
              v75 = [(objc_class *)v103[1] instancesRespondToSelector:"configureWithChildNode:attributes:"];
              v76 = *(&v105 + 11);
              if (v75)
              {
                v77 = 2;
              }

              else
              {
                v77 = 0;
              }
            }

            else
            {
              v77 = 0;
              v76 = *(&v105 + 11);
            }

            *(&v105 + 11) = v76 & 0xFFFD | v77;
            v78 = [v104 instancesRespondToSelector:"layoutClass"];
            if (v78)
            {
              v79 = 32;
            }

            else
            {
              v79 = 0;
            }

            v80 = *(&v105 + 11) & 0xFFDF | v79;
            *(&v105 + 11) = v80;
            if (v78)
            {
              v81 = [v104 instancesRespondToSelector:"allowDynamicWindowInstantiation"];
              v80 = *(&v105 + 11);
              if (v81)
              {
                v82 = 64;
              }

              else
              {
                v82 = 0;
              }
            }

            else
            {
              v82 = 0;
            }

            *(&v105 + 11) = v80 & 0xFFBF | v82;
            goto LABEL_168;
          }
        }

        else
        {
          v52 = WORD4(v105);
        }

        v53 = 0x8000;
        goto LABEL_113;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_40;
      }

      v24 = [(objc_class *)v21 requiredBuilderProtocols];
      if ([v24 count])
      {
        *&v105 = TUI::ElementInstantiating::BuilderCache::computeProtocolsFromArray(a4, v24);
        goto LABEL_39;
      }
    }

    WORD4(v105) |= 1u;
    goto LABEL_39;
  }

LABEL_181:

  return this;
}

void sub_36A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void **a41, void *a42)
{
  v45 = *a41;
  if (*a41)
  {
    *(v42 + 80) = v45;
    operator delete(v45);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3780(uint64_t a1)
{
  sub_37BC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_37BC(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_3800(float *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_3A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3A60(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void sub_3AAC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_3AE0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_3BD0(result, prime);
    }
  }
}

void sub_3BD0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_3AAC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *sub_3D34(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *&v2 <= v3 ? v3 % *&v2 : *a2;
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_3DEC(void *a1, unint64_t *a2, uint64_t a3, id **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_403C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3A60(va);
  _Unwind_Resume(a1);
}

void sub_4068(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_40C4(exception, a1);
}

std::logic_error *sub_40C4(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_40F8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_5018(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) evaluateStringForAttribute:178 node:a2];
  v5 = [TUIAdornmentModel adornmentRoleFromString:v4];

  v6 = [*(a1 + 32) evaluateStringForAttribute:116 node:v3];
  v7 = [TUIAdornmentModel adornmentKindFromString:v6];

  if ([*(a1 + 40) supportAdornmentWithRole:v5 kind:v7])
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v11 = objc_alloc_init(TUISingleContentBoxBuilder);
    [*(a1 + 32) instantiateNode:v3 withBuilder:v11];
    v9 = objc_alloc_init(TUIAdornmentModel);
    [(TUIAdornmentModel *)v9 setRole:v5];
    [(TUIBoxBuilder *)v11 finalizeModelsWithParent:v9 context:*(a1 + 32)];
    v10 = [(TUIAdornmentModel *)v9 submodel];

    if (v10)
    {
      [*(a1 + 40) addAdornment:v9];
    }
  }
}

void sub_5BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_66E0(va);

  _Unwind_Resume(a1);
}

void sub_5D6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TUIBinaryPackage;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_6064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_60D8(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_6768();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

void sub_6294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void **sub_66E0(void **a1)
{
  sub_671C(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_671C(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_6780(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_6AE8(uint64_t a1)
{
  v2 = +[TUIResourceCollector createResourceCollectorForEverything];
  v3 = *(a1 + 32);
  v70 = *&CGAffineTransformIdentity.c;
  v92 = *&CGAffineTransformIdentity.a;
  v72 = v92;
  v93 = v70;
  v94 = *&CGAffineTransformIdentity.tx;
  v68 = v94;
  [v3 appendResourcesToCollector:v2 transform:&v92];
  v4 = (a1 + 56);
  v5 = [TUIResourceCollector createResourceCollectorForVisibleBounds:*(a1 + 40) viewState:*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)];
  v6 = *(a1 + 32);
  v92 = v72;
  v93 = v70;
  v94 = v68;
  [v6 appendResourcesToCollector:v5 transform:&v92];
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (v10 >= v9)
  {
    v11 = *(a1 + 80);
  }

  else
  {
    v11 = *(a1 + 72);
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v98 = CGRectInset(*(&v9 - 2), -v11, -v11);
  v12 = [TUIResourceCollector createResourceCollectorForVisibleBounds:*(a1 + 40) viewState:v98.origin.x, v98.origin.y, v98.size.width, v98.size.height];
  v67 = a1;
  v13 = *(a1 + 32);
  v92 = v72;
  v93 = v70;
  v94 = v68;
  [v13 appendResourcesToCollector:v12 transform:&v92];
  v71 = v5;
  v14 = [v5 resources];
  v15 = [NSMutableSet setWithSet:v14];

  v69 = v12;
  v16 = [v12 resources];
  v17 = [NSMutableSet setWithSet:v16];

  v73 = v2;
  v18 = [v2 resources];
  v19 = [NSMutableSet setWithSet:v18];

  [v19 minusSet:v17];
  [v17 minusSet:v15];
  v20 = objc_opt_new();
  HIDWORD(v21) = 1072168960;
  *&v21 = 0.75;
  [*(v4 - 1) _adjustedPriority:v21];
  v23 = v22;
  HIDWORD(v24) = 1071644672;
  *&v24 = 0.5;
  [*(v4 - 1) _adjustedPriority:v24];
  v26 = v25;
  HIDWORD(v27) = 1070596096;
  *&v27 = 0.25;
  [*(v4 - 1) _adjustedPriority:v27];
  v29 = v28;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v30 = v15;
  v31 = [v30 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v89;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v89 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v88 + 1) + 8 * i);
        v36 = [TUIPrioritizedResource alloc];
        LODWORD(v37) = v23;
        v38 = [(TUIPrioritizedResource *)v36 initWithResource:v35 priority:v37];
        [v20 addObject:v38];
      }

      v32 = [v30 countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v32);
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v39 = v17;
  v40 = [v39 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v85;
    do
    {
      for (j = 0; j != v41; j = j + 1)
      {
        if (*v85 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v84 + 1) + 8 * j);
        v45 = [TUIPrioritizedResource alloc];
        LODWORD(v46) = v26;
        v47 = [(TUIPrioritizedResource *)v45 initWithResource:v44 priority:v46];
        [v20 addObject:v47];
      }

      v41 = [v39 countByEnumeratingWithState:&v84 objects:v96 count:16];
    }

    while (v41);
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v48 = v19;
  v49 = [v48 countByEnumeratingWithState:&v80 objects:v95 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v81;
    do
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v81 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v80 + 1) + 8 * k);
        v54 = [TUIPrioritizedResource alloc];
        LODWORD(v55) = v29;
        v56 = [(TUIPrioritizedResource *)v54 initWithResource:v53 priority:v55];
        [v20 addObject:v56];
      }

      v50 = [v48 countByEnumeratingWithState:&v80 objects:v95 count:16];
    }

    while (v50);
  }

  v57 = *(v67 + 48);
  v58 = *(v57 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_70AC;
  block[3] = &unk_25DC28;
  block[4] = v57;
  v75 = *(v67 + 32);
  v59 = *(v4 + 1);
  v78 = *v4;
  v79 = v59;
  v60 = v30;
  v76 = v60;
  v61 = v20;
  v77 = v61;
  dispatch_sync(v58, block);
  v62 = *(v67 + 48);
  if ((*(v62 + 72) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((v62 + 80));
    v64 = objc_opt_respondsToSelector();

    if (v64)
    {
      v65 = objc_loadWeakRetained((*(v67 + 48) + 80));
      [v65 imagePrefetchControllerDidStartLoadingInitialResources:*(v67 + 48)];
    }

    *(*(v67 + 48) + 72) = 1;
  }

  v66 = +[TUIImagePrefetchControllerManager sharedManager];
  [v66 prefetchResources:v61 controllerID:*(*(v67 + 48) + 88) loader:*(*(v67 + 48) + 64)];
}

void sub_70AC(uint64_t a1)
{
  if ((*(*(a1 + 32) + 73) & 1) == 0)
  {
    v4 = objc_opt_class();
    v5 = TUIDynamicCast(v4, *(a1 + 40));
    [v5 size];
    v7 = v6;
    v8 = *(a1 + 88);
    if (v6 >= v8 || ([v5 info], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "objectForKeyedSubscript:", @"TUIRenderInfoKeyIsFinal"), v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "BOOLValue") & 1) != 0))
    {
      v9 = [v5 sections];
      v10 = [v9 count];

      if (v7 < v8)
      {
      }

      if (v10)
      {
        if (!*(*(a1 + 32) + 40))
        {
          v11 = +[NSMutableSet set];
          v12 = *(a1 + 32);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }

        v14 = [*(a1 + 48) mutableCopy];
        v15 = *(a1 + 32);
        v16 = *(v15 + 24);
        *(v15 + 24) = v14;

        v17 = [*(*(a1 + 32) + 24) mutableCopy];
        v18 = *(a1 + 32);
        v19 = *(v18 + 32);
        *(v18 + 32) = v17;

        v20 = *(a1 + 32);
        v21 = *(v20 + 32);
        v22 = [*(v20 + 40) copy];
        [v21 minusSet:v22];

        [*(a1 + 32) _checkInitialResourcesAndInvokeDelegateIfNeeded];
      }
    }

    else
    {
    }
  }

  v23 = [NSMutableSet setWithSet:*(a1 + 56)];
  v24 = *(a1 + 32);
  v25 = *(v24 + 48);
  *(v24 + 48) = v23;
}

void sub_72E4(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7410;
  block[3] = &unk_25DC78;
  block[4] = v3;
  v9 = v2;
  v10 = &v11;
  dispatch_sync(v4, block);
  if (*(v12 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((*(a1 + 32) + 80));
      [v7 imagePrefetchControllerDidLoadAllResources:*(a1 + 32)];
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_73F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7410(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 resource];
        v9 = [v8 isEqual:*(a1 + 40)];

        if (v9)
        {
          v10 = v7;

          if (v10)
          {
            v11 = *(a1 + 32);
            if ((*(v11 + 73) & 1) == 0)
            {
              [*(v11 + 40) addObject:v10];
              [*(*(a1 + 32) + 32) removeObject:v10];
              [*(a1 + 32) _checkInitialResourcesAndInvokeDelegateIfNeeded];
              v11 = *(a1 + 32);
            }

            [*(v11 + 48) removeObject:v10];
          }

          goto LABEL_14;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_14:
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 48) count] == 0;
}

void sub_7780(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"start-color";
  v6[1] = @"end-color";
  v6[2] = @"start-position";
  v6[3] = @"end-position";
  v6[4] = @"direction";
  v6[5] = @"role";
  v6[6] = @"blend-mode";
  v6[7] = @"continuous-corners";
  v6[8] = @"opacity";
  v3 = [NSArray arrayWithObjects:v6 count:9];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E5F80;
  qword_2E5F80 = v4;
}

void sub_7C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7C28(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

TUI::Instruction::Evaluation *TUI::Instruction::Evaluation::Evaluation(TUI::Instruction::Evaluation *this, const TUI::Package::Buffer *a2, TUI::Evaluation::Context *a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 50) = 1065353216;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 248) = 0u;
  *(this + 60) = 1065353216;
  *(this + 264) = 0u;
  *(this + 70) = 1065353216;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 80) = 1065353216;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 90) = 1065353216;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 100) = 1065353216;
  sub_7E5C(this + 3, 0x20uLL);
  return this;
}

void sub_7DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  sub_11694(v18);
  sub_11694(v17);
  sub_11694(v16);
  sub_11694(v15);
  sub_11694(v14);
  sub_11694(v13);
  sub_11614(v12);
  sub_11614(v11);
  sub_11614(v10 + 48);
  sub_1158C(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_7E5C(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_116E0(result, a2);
    }

    sub_4050();
  }

  return result;
}

void sub_7F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_117BC(va);
  _Unwind_Resume(a1);
}

void TUI::Instruction::Evaluation::~Evaluation(TUI::Instruction::Evaluation *this)
{
  sub_11694(this + 368);
  sub_11694(this + 328);
  sub_11694(this + 288);
  sub_11694(this + 248);
  sub_11694(this + 208);
  sub_11694(this + 168);
  sub_11614(this + 128);
  sub_11614(this + 88);
  sub_11614(this + 48);
  v2 = (this + 24);
  sub_1158C(&v2);
}

void TUI::Instruction::Evaluation::evaluate(TUI::Instruction::Evaluation *this@<X0>, TUI::Instruction::Decoder *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(this + 2) = TUI::Instruction::Decoder::offsetKind(a2);
  v6 = TUI::Instruction::Decoder::offsetIndex(a2);
  *(this + 3) = v6;
  v7 = *(this + 2);
  v8 = 1029;
  if (v7 > 7)
  {
    if ((v7 - 9) < 0xC)
    {
      v8 = 1005;
LABEL_4:
      TUI::Evaluation::Context::reportError(*(this + 2), v8, 0);
      return;
    }

    if (v7 != 8)
    {
      if (v7 == 21)
      {
        goto LABEL_4;
      }

      return;
    }

    v32 = *(this + 2);
    v33 = *(v32 + 560);
    v34 = *(v32 + 584);
    v35 = [v34 contentSizeCategorySymbol];
    v36 = *(v33 + 40);
    if (v35 >= (*(v33 + 48) - v36) >> 1)
    {
      v37 = 0xFFFF;
    }

    else
    {
      v37 = *(v36 + 2 * v35);
    }

    v26 = v37 == *(this + 6);
    v38 = 12;
LABEL_40:
    *a3 = v38;
    *(a3 + 8) = 0;
    *(a3 + 16) = v26;
    return;
  }

  if (v7 > 3)
  {
    if (v7 <= 5)
    {
      if (v7 != 4)
      {
        v17 = *(this + 2);
        v18 = TUI::Instruction::Decoder::symbolNameFromU24(v6);
        TUI::Evaluation::Context::lookupConstant(&v42, v17, v18);
        *a3 = v42;
        v19 = v43;
        v21 = v43;
        v20 = v44;
        *(a3 + 8) = v19;
        *(a3 + 16) = v20;

        return;
      }

      if (*(*this + 48) <= v6)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(*(*this + 40) + 4 * v6);
      }

      v38 = 2;
      goto LABEL_40;
    }

    if (v7 == 6)
    {
      v30 = *(this + 2);
      v31 = TUI::Instruction::Decoder::symbolNameFromU24(v6);
      v25 = TUI::Evaluation::Context::objectForBinding(v30, v31);
      v29 = 16;
      goto LABEL_33;
    }

    v23 = *this;
    if (*(*this + 88) > v6)
    {
      v24 = *(v23 + 80);
      if (v24)
      {
        v25 = [NSString stringWithUTF8String:v24 + *(*(v23 + 96) + 4 * v6)];
LABEL_31:
        v29 = 9;
LABEL_33:
        *a3 = v29;
        *(a3 + 8) = v25;
        return;
      }
    }

LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      v22 = 0.0;
      if (*(*this + 32) > v6)
      {
        v22 = *(*(*this + 24) + 4 * v6);
      }

      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = v22;
      return;
    }

    v27 = *this;
    if (*(*this + 64) > v6)
    {
      v28 = *(v27 + 56);
      if (v28)
      {
        v25 = [NSString stringWithUTF8String:v28 + *(*(v27 + 72) + 4 * v6)];
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 == 1)
  {
    v9 = *(this + 3);
    v10 = *(this + 4);
    TUI::Instruction::Evaluation::run(this);
    v11 = v10 - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    v13 = *(this + 4);
    if (v13 == *(this + 3))
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v14 = *(v13 - 24);
      v15 = *(v13 - 16);
      v13 = *(v13 - 8);
      v16 = *(this + 4);

      *(this + 4) = v16 - 24;
    }

    *a3 = v14;
    *(a3 + 8) = v15;
    *(a3 + 16) = v13;
    v40 = *(this + 3);
    v39 = *(this + 4);
    v41 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v40) >> 3);
    if (v41 <= v12)
    {
      if (v41 < v12)
      {
        TUI::Evaluation::Context::reportError(*(this + 2), 1024, 0);
      }
    }

    else
    {
      sub_E96C(this + 24, v11 + v40, v39);
    }
  }
}

void TUI::Instruction::Evaluation::run(TUI::Instruction::Evaluation *this)
{
  TUI::Instruction::Decoder::Decoder(v620, *this, *(this + 3));
  v2 = (this + 16);
  v3 = v622;
  v4 = v623;
  if (v622 >= v623)
  {
    goto LABEL_836;
  }

  v603 = *(*(this + 2) + 560);
  while (2)
  {
    v5 = *(v621 + 2 * v3);
    if (v5 >= 0x64u)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v621 + 2 * v3);
    }

    v7 = v3 + 1;
    v622 = v3 + 1;
    switch(v6)
    {
      case 1:
        goto LABEL_835;
      case 2:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 3:
        if (v7 >= v4)
        {
          v128 = 0xFFFFLL;
        }

        else
        {
          v128 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        v359 = 0.0;
        if (*(*this + 32) > v128)
        {
          v359 = *(*(*this + 24) + 4 * v128);
        }

        LODWORD(t1.a) = 1;
        t1.b = 0.0;
        t1.c = v359;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 4:
        LODWORD(t1.a) = 1;
        t1.b = 0.0;
        t1.c = 0.0;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 5:
        LODWORD(t1.a) = 1;
        t1.b = 0.0;
        t1.c = 1.0;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 6:
        LODWORD(t1.a) = 1;
        t1.b = 0.0;
        t1.c = NAN;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 7:
        if (v7 >= v4)
        {
          v155 = 0xFFFFLL;
        }

        else
        {
          v155 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        if (*(*this + 48) <= v155)
        {
          v360 = 0.0;
        }

        else
        {
          *&v360 = *(*(*this + 40) + 4 * v155);
        }

        goto LABEL_410;
      case 8:
        LODWORD(t1.a) = 2;
        t1.b = 0.0;
        t1.c = NAN;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 9:
        if (v7 >= v4)
        {
          v120 = -1;
        }

        else
        {
          v120 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        LODWORD(t1.a) = 6;
        t1.b = 0.0;
        LOWORD(t1.c) = v120;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 10:
        if (v7 >= v4)
        {
          v163 = 0xFFFFLL;
        }

        else
        {
          v163 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        v366 = *this;
        if (*(*this + 64) > v163 && (v367 = *(v366 + 56)) != 0)
        {
          v368 = [NSString stringWithUTF8String:v367 + *(*(v366 + 72) + 4 * v163)];
        }

        else
        {
          v368 = 0;
        }

        v89 = v368;
        LODWORD(t1.a) = 9;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 12:
        LODWORD(t1.a) = 12;
        t1.b = 0.0;
        LOBYTE(t1.c) = 1;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 13:
        LODWORD(t1.a) = 12;
        t1.b = 0.0;
        LOBYTE(t1.c) = 0;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 14:
        if (v7 >= v4)
        {
          v164 = 0xFFFFLL;
        }

        else
        {
          v164 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v369 = 4294901760;
        }

        else
        {
          v369 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v594 = v164 | v594 & 0xFFFFFFFF00000000 | v369;
        TUI::Evaluation::Context::lookupConstant(&t1, *v2, v594);
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v8 = *(this + 4);
        if (v8 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v8 - 24);
          *&t1.b = *(v8 - 16);
          t1.c = *(v8 - 8);
          v9 = *(this + 4);

          *(this + 4) = v9 - 24;
          v10 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v9 - 24 != v10)
          {
            LODWORD(v612.a) = *(v9 - 48);
            *&v612.b = *(v9 - 40);
            v612.c = *(v9 - 32);
            v11 = *(this + 4);

            *(this + 4) = v11 - 24;
          }
        }

        if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v612, 1, *v2) && TUI::Evaluation::ResolvedValue::isConvertibleToKind(&t1, 1, *v2))
        {
          v12 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
          v13 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
          v14 = v12 >= v13;
          v15 = v12 == v13;
          if (v5 != 19)
          {
            v15 = v12 != v13;
          }

          if (v5 != 18)
          {
            v14 = v15;
          }

          v16 = v12 < v13;
          v17 = v12 > v13;
          if (v5 != 16)
          {
            v17 = v12 > v13;
          }

          if (v5 != 15)
          {
            v16 = v17;
          }

          if (v5 <= 0x11u)
          {
            v18 = v16;
          }

          else
          {
            v18 = v14;
          }

LABEL_691:
          LODWORD(t2.a) = 12;
          t2.b = 0.0;
          LOBYTE(t2.c) = v18;
          sub_EB08(this + 3, &t2);
          goto LABEL_824;
        }

        if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v612, 12, *v2) && TUI::Evaluation::ResolvedValue::isConvertibleToKind(&t1, 12, *v2))
        {
          v19 = TUI::Evaluation::ResolvedValue::BOOLValue(&v612, *v2);
          v20 = TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2);
          if (v5 == 19)
          {
            v18 = v19 ^ v20 ^ 1;
            goto LABEL_691;
          }

          if (v5 == 20)
          {
            v18 = v19 ^ v20;
            goto LABEL_691;
          }
        }

        else
        {
          if (!TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v612, 6, *v2) || !TUI::Evaluation::ResolvedValue::isConvertibleToKind(&t1, 6, *v2))
          {
            goto LABEL_690;
          }

          v21 = TUI::Evaluation::ResolvedValue::symbolValue(&v612, *v2);
          v22 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
          if (v5 == 19)
          {
            v18 = v21 == v22;
            goto LABEL_691;
          }

          if (v5 == 20)
          {
            v18 = v21 != v22;
            goto LABEL_691;
          }
        }

        TUI::Evaluation::Context::reportError(*v2, 1020, 0);
LABEL_690:
        v18 = 0;
        goto LABEL_691;
      case 21:
        if (v7 >= v4)
        {
          v103 = 0xFFFFLL;
        }

        else
        {
          v103 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v349 = 4294901760;
        }

        else
        {
          v349 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        isDefined = TUI::Evaluation::Context::isDefined(*v2, v349 | v103);
        LODWORD(t1.a) = 12;
        t1.b = 0.0;
        LOBYTE(t1.c) = isDefined;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 22:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v205 = *(this + 4);
        if (v205 != *(this + 3))
        {
          LODWORD(t1.a) = *(v205 - 24);
          *&t1.b = *(v205 - 16);
          t1.c = *(v205 - 8);
          v206 = *(this + 4);

          *(this + 4) = v206 - 24;
        }

        v207 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(v612.a) = 1;
        v612.b = 0.0;
        v612.c = ceil(v207);
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 23:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v125 = *(this + 4);
        if (v125 != *(this + 3))
        {
          LODWORD(t1.a) = *(v125 - 24);
          *&t1.b = *(v125 - 16);
          t1.c = *(v125 - 8);
          v126 = *(this + 4);

          *(this + 4) = v126 - 24;
        }

        v127 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(v612.a) = 1;
        v612.b = 0.0;
        v612.c = floor(v127);
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 24:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v129 = *(this + 4);
        if (v129 != *(this + 3))
        {
          LODWORD(t1.a) = *(v129 - 24);
          *&t1.b = *(v129 - 16);
          t1.c = *(v129 - 8);
          v130 = *(this + 4);

          *(this + 4) = v130 - 24;
        }

        v131 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(v612.a) = 1;
        v612.b = 0.0;
        v612.c = round(v131);
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 25:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v104 = *(this + 4);
        if (v104 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v104 - 24);
          *&t1.b = *(v104 - 16);
          t1.c = *(v104 - 8);
          v105 = *(this + 4);

          *(this + 4) = v105 - 24;
          v106 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v105 - 24 != v106)
          {
            LODWORD(v612.a) = *(v105 - 48);
            *&v612.b = *(v105 - 40);
            v612.c = *(v105 - 32);
            v107 = *(this + 4);

            *(this + 4) = v107 - 24;
          }
        }

        v423 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v424 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(t2.a) = 1;
        t2.b = 0.0;
        t2.c = v423 + v424;
        sub_EB08(this + 3, &t2);

        TUI::Instruction::Evaluation::fixFloatIfNeeded(this);
        goto LABEL_825;
      case 26:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v108 = *(this + 4);
        if (v108 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v108 - 24);
          *&t1.b = *(v108 - 16);
          t1.c = *(v108 - 8);
          v109 = *(this + 4);

          *(this + 4) = v109 - 24;
          v110 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v109 - 24 != v110)
          {
            LODWORD(v612.a) = *(v109 - 48);
            *&v612.b = *(v109 - 40);
            v612.c = *(v109 - 32);
            v111 = *(this + 4);

            *(this + 4) = v111 - 24;
          }
        }

        v425 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v426 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(t2.a) = 1;
        t2.b = 0.0;
        t2.c = v425 - v426;
        sub_EB08(this + 3, &t2);

        TUI::Instruction::Evaluation::fixFloatIfNeeded(this);
        goto LABEL_825;
      case 27:
        LODWORD(v617) = 0;
        v618 = 0;
        v191 = *(this + 4);
        if (v191 == *(this + 3))
        {
          LODWORD(v614) = 0;
          v615 = 0;
        }

        else
        {
          LODWORD(v617) = *(v191 - 24);
          v618 = *(v191 - 16);
          v619 = *(v191 - 8);
          v192 = *(this + 4);

          *(this + 4) = v192 - 24;
          v193 = *(this + 3);
          LODWORD(v614) = 0;
          v615 = 0;
          if (v192 - 24 != v193)
          {
            LODWORD(v614) = *(v192 - 48);
            v615 = *(v192 - 40);
            v616 = *(v192 - 32);
            v194 = *(this + 4);

            *(this + 4) = v194 - 24;
          }
        }

        if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v614, 1, *v2) && TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v617, 1, *v2))
        {
          v449 = TUI::Evaluation::ResolvedValue::floatValue(&v614, *v2);
          v450 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
          LODWORD(t1.a) = 1;
          t1.b = 0.0;
          t1.c = v449 * v450;
          sub_EB08(this + 3, &t1);
          b = t1.b;
        }

        else
        {
          if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v614, 1, *v2) && TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v617, 13, *v2))
          {
            v452 = TUI::Evaluation::ResolvedValue::floatValue(&v614, *v2);
            CGAffineTransformMakeScale(&t1, v452, v452);
            TUI::Evaluation::ResolvedValue::transformValue(&t2, &v617, *v2);
            CGAffineTransformConcat(&v612, &t1, &t2);
            LODWORD(v613[0]) = 13;
            *(&v613[0] + 1) = 0;
            t1 = v612;
            *(&v613[0] + 1) = [NSValue valueWithCGAffineTransform:&t1];
            sub_EB08(this + 3, v613);
          }

          else if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v614, 13, *v2) && TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v617, 1, *v2))
          {
            v453 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
            TUI::Evaluation::ResolvedValue::transformValue(&t1, &v614, *v2);
            CGAffineTransformMakeScale(&t2, v453, v453);
            CGAffineTransformConcat(&v612, &t1, &t2);
            LODWORD(v613[0]) = 13;
            *(&v613[0] + 1) = 0;
            t1 = v612;
            *(&v613[0] + 1) = [NSValue valueWithCGAffineTransform:&t1];
            sub_EB08(this + 3, v613);
          }

          else
          {
            if (!TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v614, 13, *v2) || !TUI::Evaluation::ResolvedValue::isConvertibleToKind(&v617, 13, *v2))
            {
              LODWORD(t1.a) = 0;
              t1.b = 0.0;
              sub_EB08(this + 3, &t1);

              TUI::Evaluation::Context::reportError(*v2, 1000, 0);
LABEL_677:
              TUI::Instruction::Evaluation::fixFloatIfNeeded(this);

              v457 = *&v618;
              goto LABEL_827;
            }

            TUI::Evaluation::ResolvedValue::transformValue(&t1, &v614, *v2);
            TUI::Evaluation::ResolvedValue::transformValue(&t2, &v617, *v2);
            CGAffineTransformConcat(&v612, &t1, &t2);
            LODWORD(v613[0]) = 13;
            *(&v613[0] + 1) = 0;
            t1 = v612;
            *(&v613[0] + 1) = [NSValue valueWithCGAffineTransform:&t1];
            sub_EB08(this + 3, v613);
          }

          b = *(v613 + 1);
        }

        goto LABEL_677;
      case 28:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v173 = *(this + 4);
        if (v173 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v173 - 24);
          *&t1.b = *(v173 - 16);
          t1.c = *(v173 - 8);
          v174 = *(this + 4);

          *(this + 4) = v174 - 24;
          v175 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v174 - 24 != v175)
          {
            LODWORD(v612.a) = *(v174 - 48);
            *&v612.b = *(v174 - 40);
            v612.c = *(v174 - 32);
            v176 = *(this + 4);

            *(this + 4) = v176 - 24;
          }
        }

        v431 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        if (v431 == 0.0)
        {
          LODWORD(t2.a) = 1;
          t2.b = 0.0;
          t2.c = INFINITY;
          sub_EB08(this + 3, &t2);

          TUI::Evaluation::Context::reportError(*v2, 1026, 0);
        }

        else
        {
          v432 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
          LODWORD(t2.a) = 1;
          t2.b = 0.0;
          t2.c = v432 / v431;
          sub_EB08(this + 3, &t2);
        }

        TUI::Instruction::Evaluation::fixFloatIfNeeded(this);
        goto LABEL_825;
      case 29:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v225 = *(this + 4);
        if (v225 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v225 - 24);
          *&t1.b = *(v225 - 16);
          t1.c = *(v225 - 8);
          v226 = *(this + 4);

          *(this + 4) = v226 - 24;
          v227 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v226 - 24 != v227)
          {
            LODWORD(v612.a) = *(v226 - 48);
            *&v612.b = *(v226 - 40);
            v612.c = *(v226 - 32);
            v228 = *(this + 4);

            *(this + 4) = v228 - 24;
          }
        }

        v461 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v462 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        if (v462)
        {
          v463 = (v461 % v462);
        }

        else
        {
          v463 = 0.0;
        }

        LODWORD(t2.a) = 1;
        t2.b = 0.0;
        t2.c = v463;
        sub_EB08(this + 3, &t2);
        goto LABEL_824;
      case 30:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v97 = *(this + 4);
        if (v97 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v97 - 24);
          *&t1.b = *(v97 - 16);
          t1.c = *(v97 - 8);
          v98 = *(this + 4);

          *(this + 4) = v98 - 24;
          v99 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v98 - 24 != v99)
          {
            LODWORD(v612.a) = *(v98 - 48);
            *&v612.b = *(v98 - 40);
            v612.c = *(v98 - 32);
            v100 = *(this + 4);

            *(this + 4) = v100 - 24;
          }
        }

        v421 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v422 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(t2.a) = 1;
        t2.b = 0.0;
        t2.c = fmin(v421, v422);
        sub_EB08(this + 3, &t2);

        TUI::Instruction::Evaluation::fixFloatIfNeeded(this);
        goto LABEL_825;
      case 31:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v187 = *(this + 4);
        if (v187 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v187 - 24);
          *&t1.b = *(v187 - 16);
          t1.c = *(v187 - 8);
          v188 = *(this + 4);

          *(this + 4) = v188 - 24;
          v189 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v188 - 24 != v189)
          {
            LODWORD(v612.a) = *(v188 - 48);
            *&v612.b = *(v188 - 40);
            v612.c = *(v188 - 32);
            v190 = *(this + 4);

            *(this + 4) = v190 - 24;
          }
        }

        v447 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v448 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(t2.a) = 1;
        t2.b = 0.0;
        t2.c = fmax(v447, v448);
        sub_EB08(this + 3, &t2);

        TUI::Instruction::Evaluation::fixFloatIfNeeded(this);
        goto LABEL_825;
      case 32:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v217 = *(this + 4);
        if (v217 != *(this + 3))
        {
          LODWORD(t1.a) = *(v217 - 24);
          *&t1.b = *(v217 - 16);
          t1.c = *(v217 - 8);
          v218 = *(this + 4);

          *(this + 4) = v218 - 24;
        }

        v219 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(v612.a) = 1;
        v612.b = 0.0;
        v612.c = -v219;
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 33:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v121 = *(this + 4);
        if (v121 != *(this + 3))
        {
          LODWORD(t1.a) = *(v121 - 24);
          *&t1.b = *(v121 - 16);
          t1.c = *(v121 - 8);
          v122 = *(this + 4);

          *(this + 4) = v122 - 24;
        }

        v123 = TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2);
        LODWORD(v612.a) = 12;
        v612.b = 0.0;
        LOBYTE(v612.c) = v123 ^ 1;
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 34:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v90 = *(this + 4);
        if (v90 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v90 - 24);
          *&t1.b = *(v90 - 16);
          t1.c = *(v90 - 8);
          v91 = *(this + 4);

          *(this + 4) = v91 - 24;
          v92 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v91 - 24 != v92)
          {
            LODWORD(v612.a) = *(v91 - 48);
            *&v612.b = *(v91 - 40);
            v612.c = *(v91 - 32);
            v93 = *(this + 4);

            *(this + 4) = v93 - 24;
          }
        }

        v420 = TUI::Evaluation::ResolvedValue::BOOLValue(&v612, *v2);
        if (v420)
        {
          goto LABEL_514;
        }

        goto LABEL_515;
      case 35:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v220 = *(this + 4);
        if (v220 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v220 - 24);
          *&t1.b = *(v220 - 16);
          t1.c = *(v220 - 8);
          v221 = *(this + 4);

          *(this + 4) = v221 - 24;
          v222 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v221 - 24 != v222)
          {
            LODWORD(v612.a) = *(v221 - 48);
            *&v612.b = *(v221 - 40);
            v612.c = *(v221 - 32);
            v223 = *(this + 4);

            *(this + 4) = v223 - 24;
          }
        }

        if (TUI::Evaluation::ResolvedValue::BOOLValue(&v612, *v2))
        {
          LOBYTE(v420) = 1;
        }

        else
        {
LABEL_514:
          LOBYTE(v420) = TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2);
        }

LABEL_515:
        LODWORD(t2.a) = 12;
        t2.b = 0.0;
        LOBYTE(t2.c) = v420;
        sub_EB08(this + 3, &t2);
        goto LABEL_824;
      case 36:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v117 = *(this + 4);
        if (v117 != *(this + 3))
        {
          LODWORD(t1.a) = *(v117 - 24);
          *&t1.b = *(v117 - 16);
          t1.c = *(v117 - 8);
          v118 = *(this + 4);

          *(this + 4) = v118 - 24;
          v7 = v622;
          v4 = v623;
        }

        if (v7 >= v4)
        {
          v119 = 0xFFFFLL;
        }

        else
        {
          v119 = *(v621 + 2 * v7);
        }

        v622 = v7 + 1;
        TUI::Evaluation::ResolvedValue::resolveProperty(&v612, &t1, *v2, v119);
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 37:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v249 = *(this + 4);
        if (v249 != *(this + 3))
        {
          LODWORD(t1.a) = *(v249 - 24);
          *&t1.b = *(v249 - 16);
          t1.c = *(v249 - 8);
          v250 = *(this + 4);

          *(this + 4) = v250 - 24;
          v7 = v622;
          v4 = v623;
        }

        if (v7 >= v4)
        {
          v251 = 0xFFFF;
        }

        else
        {
          v251 = *(v621 + 2 * v7);
        }

        v622 = v7 + 1;
        TUI::Evaluation::ResolvedValue::testProperty(&v612, &t1, *v2, v251);
        sub_EB08(this + 3, &v612);
        goto LABEL_825;
      case 38:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v94 = *(this + 4);
        if (v94 != *(this + 3))
        {
          LODWORD(t1.a) = *(v94 - 24);
          *&t1.b = *(v94 - 16);
          t1.c = *(v94 - 8);
          v95 = *(this + 4);

          *(this + 4) = v95 - 24;
          v7 = v622;
          v4 = v623;
        }

        if (v7 >= v4)
        {
          v96 = 4294901760;
        }

        else
        {
          v96 = *(v621 + 2 * v7) << 16;
        }

        if (v7 + 1 >= v4)
        {
          v348 = 0xFFFFLL;
        }

        else
        {
          v348 = *(v621 + 2 * (v7 + 1));
        }

        goto LABEL_508;
      case 39:
        v70 = *(this + 4);
        if (v70 == *(this + 3))
        {
          v71 = 0;
          v72 = 0;
        }

        else
        {
          v71 = *(v70 - 24);
          v72 = *(v70 - 16);
          t1.c = *(v70 - 8);
          v7 = v622;
          v4 = v623;
        }

        LODWORD(t1.a) = v71;
        *&t1.b = v72;
        if (v7 >= v4)
        {
          v96 = 4294901760;
        }

        else
        {
          v96 = *(v621 + 2 * v7) << 16;
        }

        if (v7 + 1 >= v4)
        {
          v348 = 0xFFFFLL;
        }

        else
        {
          v348 = *(v621 + 2 * (v7 + 1));
        }

LABEL_508:
        v622 = v7 + 2;
        if (!TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2))
        {
          goto LABEL_826;
        }

        goto LABEL_530;
      case 40:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v101 = *(this + 4);
        if (v101 != *(this + 3))
        {
          LODWORD(t1.a) = *(v101 - 24);
          *&t1.b = *(v101 - 16);
          t1.c = *(v101 - 8);
          v102 = *(this + 4);

          *(this + 4) = v102 - 24;
          v7 = v622;
          v4 = v623;
        }

        if (v7 >= v4)
        {
          v96 = 4294901760;
        }

        else
        {
          v96 = *(v621 + 2 * v7) << 16;
        }

        if (v7 + 1 >= v4)
        {
          v348 = 0xFFFFLL;
        }

        else
        {
          v348 = *(v621 + 2 * (v7 + 1));
        }

        goto LABEL_529;
      case 41:
        v114 = *(this + 4);
        if (v114 == *(this + 3))
        {
          v115 = 0;
          v116 = 0;
        }

        else
        {
          v115 = *(v114 - 24);
          v116 = *(v114 - 16);
          t1.c = *(v114 - 8);
          v7 = v622;
          v4 = v623;
        }

        LODWORD(t1.a) = v115;
        *&t1.b = v116;
        if (v7 >= v4)
        {
          v96 = 4294901760;
        }

        else
        {
          v96 = *(v621 + 2 * v7) << 16;
        }

        if (v7 + 1 >= v4)
        {
          v348 = 0xFFFFLL;
        }

        else
        {
          v348 = *(v621 + 2 * (v7 + 1));
        }

LABEL_529:
        v622 = v7 + 2;
        if ((TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2) & 1) == 0)
        {
LABEL_530:
          v622 = v348 | v96;
        }

        goto LABEL_826;
      case 42:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v245 = *(this + 4);
        if (v245 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v245 - 24);
          *&t1.b = *(v245 - 16);
          t1.c = *(v245 - 8);
          v246 = *(this + 4);

          *(this + 4) = v246 - 24;
          v247 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v246 - 24 != v247)
          {
            LODWORD(v612.a) = *(v246 - 48);
            *&v612.b = *(v246 - 40);
            v612.c = *(v246 - 32);
            v248 = *(this + 4);

            *(this + 4) = v248 - 24;
          }
        }

        v471 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v472 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        LODWORD(t2.a) = 3;
        t2.b = 0.0;
        *&t2.b = [NSValue valueWithCGSize:v471, v472];
        sub_EB08(this + 3, &t2);
        goto LABEL_824;
      case 43:
        LODWORD(v612.a) = 0;
        v612.b = 0.0;
        v73 = *(this + 4);
        if (v73 == *(this + 3))
        {
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          LODWORD(v617) = 0;
          v618 = 0;
          LODWORD(v614) = 0;
          v615 = 0;
        }

        else
        {
          LODWORD(v612.a) = *(v73 - 24);
          *&v612.b = *(v73 - 16);
          v612.c = *(v73 - 8);
          v74 = *(this + 4);

          v75 = v74 - 24;
          *(this + 4) = v74 - 24;
          v76 = *(this + 3);
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          if (v74 - 24 != v76)
          {
            LODWORD(t2.a) = *(v74 - 48);
            *&t2.b = *(v74 - 40);
            t2.c = *(v74 - 32);
            v77 = *(this + 4);

            v75 = v77 - 24;
            *(this + 4) = v75;
            v76 = *(this + 3);
          }

          LODWORD(v617) = 0;
          v618 = 0;
          if (v75 != v76)
          {
            LODWORD(v617) = *(v75 - 24);
            v618 = *(v75 - 16);
            v619 = *(v75 - 8);
            v78 = *(this + 4);

            v75 = v78 - 24;
            *(this + 4) = v75;
            v76 = *(this + 3);
          }

          LODWORD(v614) = 0;
          v615 = 0;
          if (v75 != v76)
          {
            LODWORD(v614) = *(v75 - 24);
            v615 = *(v75 - 16);
            v616 = *(v75 - 8);
            v79 = *(this + 4);

            *(this + 4) = v79 - 24;
          }
        }

        v416 = TUI::Evaluation::ResolvedValue::floatOrDefaultValue(&v614, *v2);
        v417 = TUI::Evaluation::ResolvedValue::floatOrDefaultValue(&v617, *v2);
        v418 = TUI::Evaluation::ResolvedValue::floatOrDefaultValue(&t2, *v2);
        v419 = TUI::Evaluation::ResolvedValue::floatOrDefaultValue(&v612, *v2);
        t1.a = v416;
        t1.b = v417;
        t1.c = v418;
        t1.d = v419;
        LODWORD(v613[0]) = 4;
        *(&v613[0] + 1) = 0;
        *(&v613[0] + 1) = [[NSData alloc] initWithBytes:&t1 length:32];
        sub_EB08(this + 3, v613);

        goto LABEL_570;
      case 44:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v237 = *(this + 4);
        if (v237 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          LODWORD(v617) = 0;
          v618 = 0;
        }

        else
        {
          LODWORD(t1.a) = *(v237 - 24);
          *&t1.b = *(v237 - 16);
          t1.c = *(v237 - 8);
          v238 = *(this + 4);

          v239 = v238 - 24;
          *(this + 4) = v238 - 24;
          v240 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v238 - 24 != v240)
          {
            LODWORD(v612.a) = *(v238 - 48);
            *&v612.b = *(v238 - 40);
            v612.c = *(v238 - 32);
            v241 = *(this + 4);

            v239 = v241 - 24;
            *(this + 4) = v239;
            v240 = *(this + 3);
          }

          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          if (v239 != v240)
          {
            LODWORD(t2.a) = *(v239 - 24);
            *&t2.b = *(v239 - 16);
            t2.c = *(v239 - 8);
            v242 = *(this + 4);

            v239 = v242 - 24;
            *(this + 4) = v239;
            v240 = *(this + 3);
          }

          LODWORD(v617) = 0;
          v618 = 0;
          if (v239 != v240)
          {
            LODWORD(v617) = *(v239 - 24);
            v618 = *(v239 - 16);
            v619 = *(v239 - 8);
            v243 = *(this + 4);

            *(this + 4) = v243 - 24;
          }
        }

        v467 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
        v468 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
        v469 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        v470 = [UIColor colorWithRed:v467 green:v468 blue:v469 alpha:TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)];
        LODWORD(v614) = 11;
        v615 = v470;
        sub_EB08(this + 3, &v614);

        goto LABEL_823;
      case 45:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v149 = *(this + 4);
        if (v149 != *(this + 3))
        {
          LODWORD(t1.a) = *(v149 - 24);
          *&t1.b = *(v149 - 16);
          t1.c = *(v149 - 8);
          v150 = *(this + 4);

          *(this + 4) = v150 - 24;
        }

        v151 = TUI::Evaluation::ResolvedValue::colorValue(&t1, *v2);
        v152 = v151;
        if (v151)
        {
          v153 = v151;
          v154 = 11;
        }

        else
        {
          v154 = 0;
        }

        LODWORD(v612.a) = v154;
        *&v612.b = v152;
        sub_EB08(this + 3, &v612);
        goto LABEL_634;
      case 46:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v259 = *(this + 4);
        if (v259 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          LODWORD(v617) = 0;
          v618 = 0;
        }

        else
        {
          LODWORD(t1.a) = *(v259 - 24);
          *&t1.b = *(v259 - 16);
          t1.c = *(v259 - 8);
          v260 = *(this + 4);

          v261 = v260 - 24;
          *(this + 4) = v260 - 24;
          v262 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v260 - 24 != v262)
          {
            LODWORD(v612.a) = *(v260 - 48);
            *&v612.b = *(v260 - 40);
            v612.c = *(v260 - 32);
            v263 = *(this + 4);

            v261 = v263 - 24;
            *(this + 4) = v261;
            v262 = *(this + 3);
          }

          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          if (v261 != v262)
          {
            LODWORD(t2.a) = *(v261 - 24);
            *&t2.b = *(v261 - 16);
            t2.c = *(v261 - 8);
            v264 = *(this + 4);

            v261 = v264 - 24;
            *(this + 4) = v261;
            v262 = *(this + 3);
          }

          LODWORD(v617) = 0;
          v618 = 0;
          if (v261 != v262)
          {
            LODWORD(v617) = *(v261 - 24);
            v618 = *(v261 - 16);
            v619 = *(v261 - 8);
            v265 = *(this + 4);

            *(this + 4) = v265 - 24;
            v266 = HIWORD(TUILengthNull);
            if (v617 == 6)
            {
              v267 = TUI::Evaluation::ResolvedValue::symbolValue(&v617, *v2);
              v268 = *(v603 + 40);
              v269 = (*(v603 + 48) - v268) >> 1;
              if (v269 < 0x22)
              {
                v270 = 0xFFFF;
              }

              else
              {
                v270 = v268[33];
              }

              v542 = HIWORD(TUILengthNull) & 0xFFF8;
              if (v267 == v270)
              {
                v482 = v542 | 4;
              }

              else
              {
                if (v269 < 0x23)
                {
                  v543 = 0xFFFF;
                }

                else
                {
                  v543 = v268[34];
                }

                if (v267 == v543)
                {
                  v482 = v542 | 5;
                }

                else
                {
                  if (v269 < 0x70)
                  {
                    v546 = 0xFFFF;
                  }

                  else
                  {
                    v546 = v268[111];
                  }

                  if (v267 == v546)
                  {
                    v482 = v542 | 6;
                  }

                  else
                  {
                    if (v269 < 0x21)
                    {
                      v548 = 0xFFFF;
                    }

                    else
                    {
                      v548 = v268[32];
                    }

                    if (v267 == v548)
                    {
                      v482 = v542 | 3;
                    }

                    else
                    {
                      v565 = *v2;
                      v566 = TUI::Symbol::Tab::string(*(*v2 + 70), v267);
                      v567 = [NSString stringWithFormat:@"invalid symbol for length: %@", v566];
                      TUI::Evaluation::Context::reportError(v565, 1016, v567);
                      v482 = v542 | 2;
                    }
                  }
                }
              }

              v481 = NAN;
              goto LABEL_804;
            }

LABEL_602:
            v481 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
            v482 = v266 | 7;
            if (v481 <= -3.40282347e38)
            {
              v483 = 4286578687;
              goto LABEL_805;
            }

            if (v481 >= 3.40282347e38)
            {
              v483 = 2139095039;
              goto LABEL_805;
            }

LABEL_804:
            *&v568 = v481;
            v483 = v568;
LABEL_805:
            v569 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
            if (v569 <= -3.40282347e38)
            {
              *&v571 = -3.4028e38;
            }

            else
            {
              if (v569 < 3.40282347e38)
              {
                v570 = v569;
                goto LABEL_811;
              }

              *&v571 = 3.4028e38;
            }

            v570 = *&v571;
LABEL_811:
            v572 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
            if (v572 <= -3.40282347e38)
            {
              *&v574 = -3.4028e38;
            }

            else
            {
              if (v572 < 3.40282347e38)
              {
                v573 = v572;
                goto LABEL_817;
              }

              *&v574 = 3.4028e38;
            }

            v573 = *&v574;
LABEL_817:
            v575 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
            if (v575 <= -32768.0)
            {
              LOWORD(v576) = 0x8000;
            }

            else if (v575 >= 32767.0)
            {
              LOWORD(v576) = 0x7FFF;
            }

            else
            {
              v576 = v575;
            }

            *&v613[0] = v483 | (LODWORD(v570) << 32);
            WORD6(v613[0]) = v576;
            HIWORD(v613[0]) = v482 & 0xFFE7 | 8;
            *(v613 + 2) = v573;
            LODWORD(v614) = 5;
            v615 = 0;
            v615 = [[NSData alloc] initWithBytes:v613 length:16];
            sub_EB08(this + 3, &v614);

LABEL_823:
LABEL_824:

LABEL_825:
LABEL_826:
            v457 = t1.b;
LABEL_827:

            goto LABEL_828;
          }
        }

        v266 = HIWORD(TUILengthNull);
        goto LABEL_602;
      case 47:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v229 = *(this + 4);
        if (v229 == *(this + 3))
        {
          v231 = HIWORD(TUILengthNull);
        }

        else
        {
          LODWORD(t1.a) = *(v229 - 24);
          *&t1.b = *(v229 - 16);
          t1.c = *(v229 - 8);
          v230 = *(this + 4);

          *(this + 4) = v230 - 24;
          v231 = HIWORD(TUILengthNull);
          if (LODWORD(t1.a) == 6)
          {
            v232 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
            v233 = *(v603 + 40);
            v234 = (*(v603 + 48) - v233) >> 1;
            if (v234 < 0x22)
            {
              v235 = 0xFFFF;
            }

            else
            {
              v235 = v233[33];
            }

            v534 = HIWORD(TUILengthNull) & 0xFFF8;
            if (v232 == v235)
            {
              v464 = v534 | 4;
            }

            else
            {
              if (v234 < 0x23)
              {
                v535 = 0xFFFF;
              }

              else
              {
                v535 = v233[34];
              }

              if (v232 == v535)
              {
                v464 = v534 | 5;
              }

              else
              {
                if (v234 < 0x70)
                {
                  v545 = 0xFFFF;
                }

                else
                {
                  v545 = v233[111];
                }

                if (v232 == v545)
                {
                  v464 = v534 | 6;
                }

                else
                {
                  if (v234 < 0x21)
                  {
                    v547 = 0xFFFF;
                  }

                  else
                  {
                    v547 = v233[32];
                  }

                  if (v232 == v547)
                  {
                    v464 = v534 | 3;
                  }

                  else
                  {
                    v562 = *v2;
                    v563 = TUI::Symbol::Tab::string(*(*v2 + 70), v232);
                    v564 = [NSString stringWithFormat:@"invalid symbol for length: %@", v563];
                    TUI::Evaluation::Context::reportError(v562, 1016, v564);
                    v464 = v534 | 2;
                  }
                }
              }
            }

            v466 = 0x7FC000007FC00000;
LABEL_798:
            *&t2.a = v466;
            *&t2.b = ((v464 & 0xFFFFFFE7 | (16 * ((~v464 & 7) == 0))) << 48) | 0x7FC00000;
            LODWORD(v612.a) = 5;
            v612.b = 0.0;
            *&v612.b = [[NSData alloc] initWithBytes:&t2 length:16];
            sub_EB08(this + 3, &v612);
            goto LABEL_825;
          }
        }

        v464 = v231 | 7;
        *&v465 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
        v466 = v465 | 0x7FC0000000000000;
        goto LABEL_798;
      case 48:
        v622 = v3 + 2;
        v208 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v208;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        LODWORD(v612.a) = 13;
        v612.b = 0.0;
        *&v612.b = [NSValue valueWithCGAffineTransform:&t1];
        sub_EB08(this + 3, &v612);
        goto LABEL_571;
      case 49:
        LODWORD(t2.a) = 0;
        t2.b = 0.0;
        v275 = *(this + 4);
        if (v275 == *(this + 3))
        {
          LODWORD(v617) = 0;
          v618 = 0;
        }

        else
        {
          LODWORD(t2.a) = *(v275 - 24);
          *&t2.b = *(v275 - 16);
          t2.c = *(v275 - 8);
          v276 = *(this + 4);

          *(this + 4) = v276 - 24;
          v277 = *(this + 3);
          LODWORD(v617) = 0;
          v618 = 0;
          if (v276 - 24 != v277)
          {
            LODWORD(v617) = *(v276 - 48);
            v618 = *(v276 - 40);
            v619 = *(v276 - 32);
            v278 = *(this + 4);

            *(this + 4) = v278 - 24;
          }
        }

        v486 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
        v487 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
        if (v486 == 0.0)
        {
          v486 = 1.0;
          TUI::Evaluation::Context::reportError(*v2, 1027, 0);
        }

        if (v487 == 0.0)
        {
          v487 = 1.0;
          TUI::Evaluation::Context::reportError(*v2, 1027, 0);
        }

        CGAffineTransformMakeScale(&v612, v486, v487);
        LODWORD(v614) = 13;
        v615 = 0;
        t1 = v612;
        v615 = [NSValue valueWithCGAffineTransform:&t1];
        sub_EB08(this + 3, &v614);
        goto LABEL_614;
      case 50:
        LODWORD(t2.a) = 0;
        t2.b = 0.0;
        v146 = *(this + 4);
        if (v146 != *(this + 3))
        {
          LODWORD(t2.a) = *(v146 - 24);
          *&t2.b = *(v146 - 16);
          t2.c = *(v146 - 8);
          v147 = *(this + 4);

          *(this + 4) = v147 - 24;
        }

        v148 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
        CGAffineTransformMakeRotation(&v612, v148 * 3.14159265 / 180.0);
        LODWORD(v617) = 13;
        v618 = 0;
        t1 = v612;
        v618 = [NSValue valueWithCGAffineTransform:&t1];
        sub_EB08(this + 3, &v617);
        goto LABEL_615;
      case 51:
        LODWORD(t2.a) = 0;
        t2.b = 0.0;
        v271 = *(this + 4);
        if (v271 == *(this + 3))
        {
          LODWORD(v617) = 0;
          v618 = 0;
        }

        else
        {
          LODWORD(t2.a) = *(v271 - 24);
          *&t2.b = *(v271 - 16);
          t2.c = *(v271 - 8);
          v272 = *(this + 4);

          *(this + 4) = v272 - 24;
          v273 = *(this + 3);
          LODWORD(v617) = 0;
          v618 = 0;
          if (v272 - 24 != v273)
          {
            LODWORD(v617) = *(v272 - 48);
            v618 = *(v272 - 40);
            v619 = *(v272 - 32);
            v274 = *(this + 4);

            *(this + 4) = v274 - 24;
          }
        }

        v484 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
        v485 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
        CGAffineTransformMakeTranslation(&v612, v484, v485);
        LODWORD(v614) = 13;
        v615 = 0;
        t1 = v612;
        v615 = [NSValue valueWithCGAffineTransform:&t1];
        sub_EB08(this + 3, &v614);
LABEL_614:

LABEL_615:
        v457 = t2.b;
        goto LABEL_827;
      case 52:
        LODWORD(v612.a) = 0;
        v612.b = 0.0;
        v195 = *(this + 4);
        if (v195 == *(this + 3))
        {
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          LODWORD(v617) = 0;
          v618 = 0;
        }

        else
        {
          LODWORD(v612.a) = *(v195 - 24);
          *&v612.b = *(v195 - 16);
          v612.c = *(v195 - 8);
          v196 = *(this + 4);

          v197 = v196 - 24;
          *(this + 4) = v196 - 24;
          v198 = *(this + 3);
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          if (v196 - 24 != v198)
          {
            LODWORD(t2.a) = *(v196 - 48);
            *&t2.b = *(v196 - 40);
            t2.c = *(v196 - 32);
            v199 = *(this + 4);

            v197 = v199 - 24;
            *(this + 4) = v197;
            v198 = *(this + 3);
          }

          LODWORD(v617) = 0;
          v618 = 0;
          if (v197 != v198)
          {
            LODWORD(v617) = *(v197 - 24);
            v618 = *(v197 - 16);
            v619 = *(v197 - 8);
            v200 = *(this + 4);

            *(this + 4) = v200 - 24;
          }
        }

        v613[0] = unk_24CEC8;
        v454 = TUI::Evaluation::ResolvedValue::floatValue(&v617, *v2);
        v455 = TUI::Evaluation::ResolvedValue::floatValue(&t2, *v2);
        v456 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
        t1.a = v454;
        t1.b = v455;
        t1.c = v456;
        *&t1.d = v613[0];
        LODWORD(v614) = 14;
        v615 = 0;
        v615 = [[NSData alloc] initWithBytes:&t1 length:40];
        sub_EB08(this + 3, &v614);
LABEL_570:

        goto LABEL_571;
      case 53:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v252 = *(this + 4);
        if (v252 != *(this + 3))
        {
          LODWORD(t1.a) = *(v252 - 24);
          *&t1.b = *(v252 - 16);
          t1.c = *(v252 - 8);
          v253 = *(this + 4);

          *(this + 4) = v253 - 24;
          v7 = v622;
          v4 = v623;
        }

        if (v7 >= v4)
        {
          v254 = 0xFFFFLL;
        }

        else
        {
          v254 = *(v621 + 2 * v7);
        }

        v622 = v7 + 1;
        v152 = [TUIGuideSpec columnWithIndex:TUI::Evaluation::ResolvedValue::integerValue(&t1 edge:*v2), v254];
        LODWORD(v612.a) = 10;
        *&v612.b = v152;
        sub_EB08(this + 3, &v612);
        goto LABEL_634;
      case 54:
        if (v7 >= v4)
        {
          v236 = 0xFFFFLL;
        }

        else
        {
          v236 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        v89 = [TUIGuideSpec gridWithEdge:v236];
        LODWORD(t1.a) = 10;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 55:
        if (v7 >= v4)
        {
          v224 = 0xFFFFLL;
        }

        else
        {
          v224 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        v89 = [TUIGuideSpec contentWithEdge:v224];
        LODWORD(t1.a) = 10;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 56:
        if (v7 >= v4)
        {
          v124 = 0xFFFFLL;
        }

        else
        {
          v124 = *(v621 + 2 * v7);
        }

        v622 = v3 + 2;
        v89 = [TUIGuideSpec named:v124];
        LODWORD(t1.a) = 10;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 57:
        v89 = +[TUIGuideSpec unbound];
        LODWORD(t1.a) = 10;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 58:
        LODWORD(t1.a) = 16;
        t1.b = 0.0;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 59:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v290 = *(this + 4);
        if (v290 != *(this + 3))
        {
          LODWORD(t1.a) = *(v290 - 24);
          *&t1.b = *(v290 - 16);
          t1.c = *(v290 - 8);
          v291 = *(this + 4);

          *(this + 4) = v291 - 24;
        }

        v152 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);
        LODWORD(v612.a) = 12;
        v612.b = 0.0;
        LOBYTE(v612.c) = v152 != 0;
        sub_EB08(this + 3, &v612);
LABEL_634:

        goto LABEL_635;
      case 60:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v201 = *(this + 4);
        if (v201 != *(this + 3))
        {
          LODWORD(t1.a) = *(v201 - 24);
          *&t1.b = *(v201 - 16);
          t1.c = *(v201 - 8);
          v202 = *(this + 4);

          *(this + 4) = v202 - 24;
        }

        v203 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);
        v204 = 0.0;
        if (v203)
        {
          if (objc_opt_respondsToSelector())
          {
            v204 = [v203 count];
          }

          else
          {
            TUI::Evaluation::Context::reportError(*v2, 1000, 0);
          }
        }

        LODWORD(v612.a) = 1;
        v612.b = 0.0;
        v612.c = v204;
        sub_EB08(this + 3, &v612);
        goto LABEL_734;
      case 61:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v213 = *(this + 4);
        if (v213 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v213 - 24);
          *&t1.b = *(v213 - 16);
          t1.c = *(v213 - 8);
          v214 = *(this + 4);

          *(this + 4) = v214 - 24;
          v215 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v214 - 24 != v215)
          {
            LODWORD(v612.a) = *(v214 - 48);
            *&v612.b = *(v214 - 40);
            v612.c = *(v214 - 32);
            v216 = *(this + 4);

            *(this + 4) = v216 - 24;
          }
        }

        v458 = TUI::Evaluation::ResolvedValue::objectValue(&v612, *v2);
        if ([(__CFString *)v458 conformsToProtocol:&OBJC_PROTOCOL___TUIIndexedSubscripting])
        {
          if (TUI::Evaluation::ResolvedValue::isConvertibleToKind(&t1, 1, *v2))
          {
            v459 = [(__CFString *)v458 tui_objectAtIndex:TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)];
            goto LABEL_743;
          }

          TUI::Evaluation::Context::reportError(*v2, 1000, 0);
        }

        else if ([(__CFString *)v458 conformsToProtocol:&OBJC_PROTOCOL___TUIKeyedSubscripting])
        {
          v460 = *v2;
          if (LODWORD(t1.a) == 1)
          {
            [NSNumber numberWithInteger:TUI::Evaluation::ResolvedValue::floatValue(&t1, v460)];
          }

          else
          {
            TUI::Evaluation::ResolvedValue::objectValue(&t1, v460);
          }
          v537 = ;
          if (v537)
          {
            v459 = [(__CFString *)v458 tui_objectForKey:v537];
          }

          else
          {
            v459 = 0;
          }

LABEL_743:
          v544 = v459;
          LODWORD(t2.a) = 16;
          *&t2.b = v544;
          sub_EB08(this + 3, &t2);

LABEL_744:
          goto LABEL_825;
        }

        v459 = 0;
        goto LABEL_743;
      case 62:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v156 = *(this + 4);
        if (v156 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          LODWORD(t2.a) = 0;
          t2.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v156 - 24);
          *&t1.b = *(v156 - 16);
          t1.c = *(v156 - 8);
          v157 = *(this + 4);

          v158 = v157 - 24;
          *(this + 4) = v157 - 24;
          v159 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v157 - 24 != v159)
          {
            LODWORD(v612.a) = *(v157 - 48);
            *&v612.b = *(v157 - 40);
            v612.c = *(v157 - 32);
            v160 = *(this + 4);

            v158 = v160 - 24;
            *(this + 4) = v158;
            v159 = *(this + 3);
          }

          LODWORD(t2.a) = 0;
          t2.b = 0.0;
          if (v158 != v159)
          {
            LODWORD(t2.a) = *(v158 - 24);
            *&t2.b = *(v158 - 16);
            t2.c = *(v158 - 8);
            v161 = *(this + 4);

            *(this + 4) = v161 - 24;
          }
        }

        v427 = TUI::Evaluation::ResolvedValue::objectValue(&t2, *v2);
        if ([v427 conformsToProtocol:&OBJC_PROTOCOL___TUIIndexedSubscripting])
        {
          v428 = TUI::Evaluation::ResolvedValue::floatValue(&v612, *v2);
          v429 = [v427 tui_subarrayWithStart:v428 end:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
        }

        else
        {
          v429 = 0;
        }

        v430 = v429;
        LODWORD(v617) = 16;
        v618 = v430;
        sub_EB08(this + 3, &v617);

        goto LABEL_824;
      case 63:
        if (v7 >= v4)
        {
          v50 = 0xFFFFLL;
        }

        else
        {
          v50 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v330 = 4294901760;
        }

        else
        {
          v330 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v595 = v50 | v595 & 0xFFFFFFFF00000000 | v330;
        v89 = TUI::Evaluation::Context::objectForBinding(*v2, v595);
        LODWORD(t1.a) = 16;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 64:
        if (v7 >= v4)
        {
          v48 = 0xFFFFLL;
        }

        else
        {
          v48 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v320 = 4294901760;
        }

        else
        {
          v320 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v321 = v320 | v48;
        v596 = v320 | v48 | v596 & 0xFFFFFFFF00000000;
        v322 = TUI::Evaluation::Context::enumeratorStateForBinding(*v2, v320 | v48);
        if (v322)
        {
          if (*(v322 + 16) != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(v322 + 40) |= 1u;
            v495 = *(v322 + 8);
LABEL_679:
            LODWORD(t1.a) = 12;
            t1.b = 0.0;
            LOBYTE(t1.c) = v495 & 1;
            sub_EB08(this + 3, &t1);
            goto LABEL_826;
          }

          v323 = *v2;
          v586 = v321 | v586 & 0xFFFFFFFF00000000;
          v324 = TUI::Symbol::Tab::string(*(*v2 + 70), v586);
          TUI::Evaluation::Context::reportError(v323, 1035, v324);
        }

        else
        {
          v494 = *v2;
          v587 = v321 | v587 & 0xFFFFFFFF00000000;
          v324 = TUI::Symbol::Tab::string(*(*v2 + 70), v587);
          TUI::Evaluation::Context::reportError(v494, 1010, v324);
        }

        v495 = 0;
        goto LABEL_679;
      case 65:
        if (v7 >= v4)
        {
          v244 = 0xFFFFLL;
        }

        else
        {
          v244 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v370 = 4294901760;
        }

        else
        {
          v370 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v371 = v370 | v244;
        v597 = v370 | v244 | v597 & 0xFFFFFFFF00000000;
        v372 = TUI::Evaluation::Context::enumeratorStateForBinding(*v2, v370 | v244);
        if (v372)
        {
          if (*(v372 + 16) != 0x7FFFFFFFFFFFFFFFLL)
          {
            *(v372 + 40) |= 2u;
            v500 = (*(v372 + 8) >> 1) & 1;
LABEL_682:
            LODWORD(t1.a) = 12;
            t1.b = 0.0;
            LOBYTE(t1.c) = v500;
            sub_EB08(this + 3, &t1);
            goto LABEL_826;
          }

          v373 = *v2;
          v584 = v371 | v584 & 0xFFFFFFFF00000000;
          v374 = TUI::Symbol::Tab::string(*(*v2 + 70), v584);
          TUI::Evaluation::Context::reportError(v373, 1035, v374);
        }

        else
        {
          v499 = *v2;
          v588 = v371 | v588 & 0xFFFFFFFF00000000;
          v374 = TUI::Symbol::Tab::string(*(*v2 + 70), v588);
          TUI::Evaluation::Context::reportError(v499, 1010, v374);
        }

        LOBYTE(v500) = 0;
        goto LABEL_682;
      case 66:
        if (v7 >= v4)
        {
          v162 = 0xFFFFLL;
        }

        else
        {
          v162 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v361 = 4294901760;
        }

        else
        {
          v361 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v362 = v361 | v162;
        v598 = v361 | v162 | v598 & 0xFFFFFFFF00000000;
        v363 = TUI::Evaluation::Context::enumeratorStateForBinding(*v2, v361 | v162);
        if (v363)
        {
          v360 = *(v363 + 16);
          if (v360 != NAN)
          {
            *(v363 + 40) |= 4u;
LABEL_410:
            LODWORD(t1.a) = 2;
            t1.b = 0.0;
            t1.c = v360;
            sub_EB08(this + 3, &t1);
            goto LABEL_826;
          }

          v364 = *v2;
          v585 = v362 | v585 & 0xFFFFFFFF00000000;
          v365 = TUI::Symbol::Tab::string(*(*v2 + 70), v585);
          TUI::Evaluation::Context::reportError(v364, 1035, v365);
        }

        else
        {
          v498 = *v2;
          v589 = v362 | v589 & 0xFFFFFFFF00000000;
          v365 = TUI::Symbol::Tab::string(*(*v2 + 70), v589);
          TUI::Evaluation::Context::reportError(v498, 1010, v365);
        }

        v360 = NAN;
        goto LABEL_410;
      case 67:
        if (v7 >= v4)
        {
          v69 = 0xFFFFLL;
        }

        else
        {
          v69 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v336 = 4294901760;
        }

        else
        {
          v336 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v337 = v336 | v69;
        v599 = v336 | v69 | v599 & 0xFFFFFFFF00000000;
        v338 = TUI::Evaluation::Context::enumeratorStateForBinding(*v2, v336 | v69);
        if (v338)
        {
          v339 = *(v338 + 24);
          if (v339)
          {
            v340 = v339;
            goto LABEL_704;
          }

          v530 = *v2;
          v581 = v337 | v581 & 0xFFFFFFFF00000000;
          v497 = TUI::Symbol::Tab::string(*(*v2 + 70), v581);
          TUI::Evaluation::Context::reportError(v530, 1036, v497);
        }

        else
        {
          v496 = *v2;
          v590 = v337 | v590 & 0xFFFFFFFF00000000;
          v497 = TUI::Symbol::Tab::string(*(*v2 + 70), v590);
          TUI::Evaluation::Context::reportError(v496, 1010, v497);
        }

        v340 = 0;
LABEL_704:
        v89 = v340;
        LODWORD(t1.a) = 16;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
LABEL_705:

        goto LABEL_828;
      case 68:
        if (v7 >= v4)
        {
          v80 = 0xFFFFLL;
        }

        else
        {
          v80 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v341 = 4294901760;
        }

        else
        {
          v341 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v342 = (v80 | v591 & 0xFFFFFFFF00000000 | v341);
        v343 = TUI::Evaluation::Context::lookupNamedElement(*v2, v342);
        v345 = v344;
        if (v344 == -1)
        {
          v347 = 0;
          v346 = 0;
        }

        else
        {
          v346 = [[_TUIElementWithClosure alloc] initWithRef:v343 context:v344, *v2];
          v347 = 15;
          v583 = v346;
        }

        LODWORD(t1.a) = v347;
        *&t1.b = v346;
        sub_EB08(this + 3, &t1);
        v591 = v342;

        if (v345 == -1)
        {
          goto LABEL_828;
        }

        v457 = *&v583;
        goto LABEL_827;
      case 69:
        if (v7 >= v4)
        {
          v112 = 0xFFFFLL;
        }

        else
        {
          v112 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v351 = 4294901760;
        }

        else
        {
          v351 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v600 = v112 | v600 & 0xFFFFFFFF00000000 | v351;
        TUI::Evaluation::Context::lookupNamedElement(*v2, v600);
        LODWORD(t1.a) = 12;
        t1.b = 0.0;
        LOBYTE(t1.c) = v352 != -1;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 70:
        v622 = v3 + 3;
        goto LABEL_828;
      case 71:
        v622 = v3 + 2;
        TUI::Evaluation::Context::beginScope(*v2);
        goto LABEL_828;
      case 72:
        TUI::Evaluation::Context::endScope(*v2);
        goto LABEL_828;
      case 73:
        if (v7 >= v4)
        {
          v306 = 0xFFFFLL;
        }

        else
        {
          v306 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v379 = 4294901760;
        }

        else
        {
          v379 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        v593 = v306 | v593 & 0xFFFFFFFF00000000 | v379;
        v380 = TUI::Evaluation::Context::lookupFunction(*v2, v306 | v379);
        if (v381 == -1)
        {
          TUI::Evaluation::Context::reportError(*v2, 1008, 0);
          LODWORD(t1.a) = 0;
          t1.b = 0.0;
          sub_EB08(this + 3, &t1);
          goto LABEL_826;
        }

        v382 = (*(*v380 + 40))(v380, v381);
        TUI::Evaluation::Context::pushClosure(*v2);
        if (!TUIDefinitionNotNil(v382))
        {
          goto LABEL_720;
        }

        v383 = *(*v2 + 72);
        if (*(v383 + 184) <= v382)
        {
          v384 = 0;
        }

        else
        {
          v384 = *(v383 + 176) + 12 * v382;
          if (v384)
          {
            v385 = *(v384 + 8);
            v384 = *(v384 + 6) << 32;
            goto LABEL_719;
          }
        }

        v385 = 0xFFFFFFFFLL;
LABEL_719:
        TUI::Evaluation::Context::evaluateParams(*v2, v385 | v384);
LABEL_720:
        if (TUIValueNotNil(SHIDWORD(v382)))
        {
          TUI::Instruction::Evaluation::evaluate(this, HIDWORD(v382), &t1);
          sub_EB08(this + 3, &t1);
        }

        else
        {
          LODWORD(t1.a) = 0;
          t1.b = 0.0;
          sub_EB08(this + 3, &t1);

          TUI::Evaluation::Context::reportError(*v2, 1005, 0);
        }

        TUI::Evaluation::Context::popClosure(*v2);
        goto LABEL_828;
      case 74:
        if (v7 >= v4)
        {
          v49 = 0xFFFFLL;
        }

        else
        {
          v49 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v325 = 4294901760;
        }

        else
        {
          v325 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v326 = v602;
        v622 = v3 + 3;
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v327 = *(this + 4);
        if (v327 != *(this + 3))
        {
          LODWORD(t1.a) = *(v327 - 24);
          *&t1.b = *(v327 - 16);
          t1.c = *(v327 - 8);
          v328 = *(this + 4);

          v326 = v602;
          *(this + 4) = v328 - 24;
        }

        v329 = (v49 | v325);
        v602 = v49 | v326 & 0xFFFFFFFF00000000 | v325;
        TUI::Evaluation::Context::pushConstant(*v2, v329, &t1);
        goto LABEL_826;
      case 75:
        if (v7 >= v4)
        {
          v60 = 0xFFFFLL;
        }

        else
        {
          v60 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v331 = 4294901760;
        }

        else
        {
          v331 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v332 = *(this + 4);
        if (v332 != *(this + 3))
        {
          LODWORD(t1.a) = *(v332 - 24);
          *&t1.b = *(v332 - 16);
          t1.c = *(v332 - 8);
          v333 = *(this + 4);

          *(this + 4) = v333 - 24;
        }

        v334 = *v2;
        v152 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);
        v335 = (v60 | v331);
        v592 = v60 | v592 & 0xFFFFFFFF00000000 | v331;
        TUI::Evaluation::Context::pushBinding(v334, v335, v152);
LABEL_635:

        goto LABEL_826;
      case 76:
        if (v7 >= v4)
        {
          v47 = 0xFFFF;
        }

        else
        {
          v47 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v312 = -65536;
        }

        else
        {
          v312 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        v622 = v3 + 3;
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v313 = *(this + 4);
        if (v313 != *(this + 3))
        {
          LODWORD(t1.a) = *(v313 - 24);
          *&t1.b = *(v313 - 16);
          t1.c = *(v313 - 8);
          v314 = *(this + 4);

          *(this + 4) = v314 - 24;
        }

        v203 = TUI::Evaluation::ResolvedValue::elementValue(&t1, *v2);
        v315 = [v203 parsedElement];
        v316 = v312 | v47;

        v317 = *v2;
        if (v315)
        {
          v318 = TUIClosureNil;
          v319 = [v203 parsedElement];
          *&v612.a = v319;
          LODWORD(v612.b) = TUIElementNodeNil;
          v582 = v582 & 0xFFFFFFFF00000000 | v316;
          TUI::Evaluation::Context::pushNamedElement(v317, v316, v318, &v612);
        }

        else
        {
          if (v203)
          {
            objc_msgSend_closureAndCapture(v203);
          }

          else
          {
            v606[0] = 0;
            v606[1] = 0;
            v607 = 0;
          }

          v536 = [v203 node];
          v612.a = 0.0;
          LODWORD(v612.b) = v536;
          v580 = v580 & 0xFFFFFFFF00000000 | v316;
          TUI::Evaluation::Context::pushNamedElement(v317, v316, v606, &v612);

          if (v607)
          {
            sub_11420(v607);
          }
        }

        goto LABEL_735;
      case 77:
        LODWORD(t1.a) = 1;
        t1.b = 0.0;
        t1.c = 1.79769313e308;
        sub_EB08(this + 3, &t1);
        goto LABEL_826;
      case 78:
        v305 = *&CGAffineTransformIdentity.c;
        *&t1.a = *&CGAffineTransformIdentity.a;
        *&t1.c = v305;
        *&t1.tx = *&CGAffineTransformIdentity.tx;
        LODWORD(v612.a) = 13;
        v612.b = 0.0;
        *&v612.b = [NSValue valueWithCGAffineTransform:&t1];
        sub_EB08(this + 3, &v612);
LABEL_571:
        v457 = v612.b;
        goto LABEL_827;
      case 79:
        if (v7 >= v4)
        {
          v292 = 0xFFFFLL;
        }

        else
        {
          v292 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v375 = 4294901760;
        }

        else
        {
          v375 = *(v621 + 2 * (v3 + 2)) << 16;
        }

        if (v3 + 3 >= v4)
        {
          v376 = 0xFFFFLL;
        }

        else
        {
          v376 = *(v621 + 2 * (v3 + 3));
        }

        v622 = v3 + 4;
        v601 = v292 | v601 & 0xFFFFFFFF00000000 | v375;
        v377 = TUI::Evaluation::Context::objectForBinding(*v2, v601);
        LODWORD(v612.a) = 16;
        *&v612.b = v377;
        TUI::Evaluation::ResolvedValue::resolveProperty(&t1, &v612, *v2, v376);
        sub_EB08(this + 3, &t1);

        v378 = v612.b;
        goto LABEL_664;
      case 80:
        v279 = objc_opt_new();
        if (v622 >= v623)
        {
          ++v622;
          v280 = 0xFFFFLL;
        }

        else
        {
          v280 = *(v621 + 2 * v622++);
          if (!v280)
          {
            v281 = 0;
            goto LABEL_489;
          }
        }

        v386 = 0;
        do
        {
          if (v622 >= v623)
          {
            v387 = 0xFFFF;
          }

          else
          {
            v387 = *(v621 + 2 * v622);
          }

          ++v622;
          LODWORD(t1.a) = 0;
          t1.b = 0.0;
          v388 = *(this + 4);
          if (v388 != *(this + 3))
          {
            LODWORD(t1.a) = *(v388 - 24);
            *&t1.b = *(v388 - 16);
            t1.c = *(v388 - 8);
            v389 = *(this + 4);

            *(this + 4) = v389 - 24;
          }

          v281 = TUI::Evaluation::ResolvedValue::colorValue(&t1, *v2);

          if (v281)
          {
            v390 = objc_opt_new();
            if ((v387 & 7) != 0)
            {
              if ((v387 & 7) != 1)
              {
                goto LABEL_474;
              }

              v391 = 1;
            }

            else
            {
              v391 = v387 & 7;
            }

            v392 = [UITraitCollection traitCollectionWithUserInterfaceLevel:v391];
            [v390 addObject:v392];

LABEL_474:
            v393 = (v387 >> 3) & 3;
            if (v393)
            {
              if (v393 != 1)
              {
                goto LABEL_478;
              }

              v393 = 1;
            }

            v394 = [UITraitCollection traitCollectionWithDisplayGamut:v393];
            [v390 addObject:v394];

LABEL_478:
            v395 = (v387 >> 5) & 3;
            if (v395)
            {
              if (v395 != 1)
              {
                goto LABEL_482;
              }

              v395 = 1;
            }

            v396 = [UITraitCollection traitCollectionWithAccessibilityContrast:v395];
            [v390 addObject:v396];

LABEL_482:
            v397 = (v387 >> 7) & 7;
            if (v397)
            {
              if (v397 != 1)
              {
LABEL_487:
                v604[0] = _NSConcreteStackBlock;
                v604[1] = 3221225472;
                v604[2] = sub_EB74;
                v604[3] = &unk_25DD30;
                v400 = v390;
                v605 = v400;
                v401 = [UITraitCollection traitCollectionWithTraits:v604];
                [v279 setObject:v281 forKeyedSubscript:v401];

                goto LABEL_488;
              }

              v398 = 2;
            }

            else
            {
              v398 = 1;
            }

            v399 = [UITraitCollection traitCollectionWithUserInterfaceStyle:v398];
            [v390 addObject:v399];

            goto LABEL_487;
          }

LABEL_488:
          v386 = v281;
          --v280;
        }

        while (v280);
LABEL_489:
        v402 = [UITraitCollection traitCollectionWithUserInterfaceStyle:0];
        v403 = [v279 objectForKeyedSubscript:v402];

        if (!v403)
        {
          v404 = v281;
          if (!v281)
          {
            v579 = +[UIColor redColor];
            v404 = v579;
          }

          [v279 setObject:v404 forKeyedSubscript:v402];
          if (!v281)
          {
          }
        }

        v405 = [UIColor _dynamicColorWithColorsByTraitCollection:v279];
        v406 = v405;
        if (v405)
        {
          v407 = v405;
          v408 = 11;
        }

        else
        {
          v408 = 0;
        }

        LODWORD(t1.a) = v408;
        *&t1.b = v406;
        sub_EB08(this + 3, &t1);

LABEL_828:
        v3 = v622;
        v4 = v623;
        if (v622 < v623)
        {
          continue;
        }

LABEL_836:
        if (v3 > v4)
        {
          TUI::Evaluation::Context::reportError(*v2, 1029, 0);
        }

        TUI::Instruction::Decoder::~Decoder(v620);
        return;
      case 81:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v61 = *(this + 4);
        if (v61 != *(this + 3))
        {
          LODWORD(t1.a) = *(v61 - 24);
          *&t1.b = *(v61 - 16);
          t1.c = *(v61 - 8);
          v62 = *(this + 4);

          *(this + 4) = v62 - 24;
        }

        v63 = TUI::Evaluation::ResolvedValue::stringValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v64 = *(this + 4);
        if (v64 != *(this + 3))
        {
          LODWORD(t1.a) = *(v64 - 24);
          *&t1.b = *(v64 - 16);
          t1.c = *(v64 - 8);
          v65 = *(this + 4);

          *(this + 4) = v65 - 24;
        }

        v66 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v67 = v66;
        if (v66)
        {
          v68 = v66;
        }

        else
        {
          v68 = +[TUIFontSpec defaultFontSpec];
        }

        v506 = v68;

        v507 = [v506 fontSpecWithFamily:v63];

        v508 = v507;
        LODWORD(t1.a) = 17;
        *&t1.b = v508;
        sub_EB08(this + 3, &t1);
        goto LABEL_671;
      case 82:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v81 = *(this + 4);
        if (v81 != *(this + 3))
        {
          LODWORD(t1.a) = *(v81 - 24);
          *&t1.b = *(v81 - 16);
          t1.c = *(v81 - 8);
          v82 = *(this + 4);

          *(this + 4) = v82 - 24;
        }

        v83 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
        v63 = TUI::Instruction::Evaluation::systemDesignFromSymbol(this, v83);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v84 = *(this + 4);
        if (v84 != *(this + 3))
        {
          LODWORD(t1.a) = *(v84 - 24);
          *&t1.b = *(v84 - 16);
          t1.c = *(v84 - 8);
          v85 = *(this + 4);

          *(this + 4) = v85 - 24;
        }

        v86 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v87 = v86;
        if (v86)
        {
          v88 = v86;
        }

        else
        {
          v88 = +[TUIFontSpec defaultFontSpec];
        }

        v520 = v88;

        v521 = [v520 fontSpecWithDesign:v63];

        v508 = v521;
        LODWORD(t1.a) = 17;
        *&t1.b = v508;
        sub_EB08(this + 3, &t1);
        goto LABEL_671;
      case 83:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v297 = *(this + 4);
        if (v297 != *(this + 3))
        {
          LODWORD(t1.a) = *(v297 - 24);
          *&t1.b = *(v297 - 16);
          t1.c = *(v297 - 8);
          v298 = *(this + 4);

          *(this + 4) = v298 - 24;
        }

        v299 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v300 = *(this + 4);
        if (v300 != *(this + 3))
        {
          LODWORD(t1.a) = *(v300 - 24);
          *&t1.b = *(v300 - 16);
          t1.c = *(v300 - 8);
          v301 = *(this + 4);

          *(this + 4) = v301 - 24;
        }

        v302 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v303 = v302;
        if (v302)
        {
          v304 = v302;
        }

        else
        {
          v304 = +[TUIFontSpec defaultFontSpec];
        }

        v511 = v304;

        v512 = [v511 fontSpecWithPointSize:v299];

        v377 = v512;
        LODWORD(t1.a) = 17;
        *&t1.b = v377;
        sub_EB08(this + 3, &t1);
        goto LABEL_663;
      case 84:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v165 = *(this + 4);
        if (v165 != *(this + 3))
        {
          LODWORD(t1.a) = *(v165 - 24);
          *&t1.b = *(v165 - 16);
          t1.c = *(v165 - 8);
          v166 = *(this + 4);

          *(this + 4) = v166 - 24;
        }

        v167 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
        v63 = TUI::Instruction::Evaluation::textStyleFromSymbol(this, v167);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v168 = *(this + 4);
        if (v168 != *(this + 3))
        {
          LODWORD(t1.a) = *(v168 - 24);
          *&t1.b = *(v168 - 16);
          t1.c = *(v168 - 8);
          v169 = *(this + 4);

          *(this + 4) = v169 - 24;
        }

        v170 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v171 = v170;
        if (v170)
        {
          v172 = v170;
        }

        else
        {
          v172 = +[TUIFontSpec defaultFontSpec];
        }

        v522 = v172;

        v523 = [v522 fontSpecWithTextStyle:v63];

        v508 = v523;
        LODWORD(t1.a) = 17;
        *&t1.b = v508;
        sub_EB08(this + 3, &t1);
        goto LABEL_671;
      case 85:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v138 = *(this + 4);
        if (v138 != *(this + 3))
        {
          LODWORD(t1.a) = *(v138 - 24);
          *&t1.b = *(v138 - 16);
          t1.c = *(v138 - 8);
          v139 = *(this + 4);

          *(this + 4) = v139 - 24;
        }

        v140 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v141 = *(this + 4);
        if (v141 != *(this + 3))
        {
          LODWORD(t1.a) = *(v141 - 24);
          *&t1.b = *(v141 - 16);
          t1.c = *(v141 - 8);
          v142 = *(this + 4);

          *(this + 4) = v142 - 24;
        }

        v143 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v144 = v143;
        if (v143)
        {
          v145 = v143;
        }

        else
        {
          v145 = +[TUIFontSpec defaultFontSpec];
        }

        v509 = v145;

        v510 = [v509 fontSpecWithMaxPointSize:v140];

        v377 = v510;
        LODWORD(t1.a) = 17;
        *&t1.b = v377;
        sub_EB08(this + 3, &t1);
        goto LABEL_663;
      case 86:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v282 = *(this + 4);
        if (v282 != *(this + 3))
        {
          LODWORD(t1.a) = *(v282 - 24);
          *&t1.b = *(v282 - 16);
          t1.c = *(v282 - 8);
          v283 = *(this + 4);

          *(this + 4) = v283 - 24;
        }

        v284 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
        v63 = TUI::Instruction::Evaluation::contentSizeFromSymbol(this, v284);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v285 = *(this + 4);
        if (v285 != *(this + 3))
        {
          LODWORD(t1.a) = *(v285 - 24);
          *&t1.b = *(v285 - 16);
          t1.c = *(v285 - 8);
          v286 = *(this + 4);

          *(this + 4) = v286 - 24;
        }

        v287 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v288 = v287;
        if (v287)
        {
          v289 = v287;
        }

        else
        {
          v289 = +[TUIFontSpec defaultFontSpec];
        }

        v524 = v289;

        v525 = [v524 fontSpecWithMaxContentSize:v63];

        v508 = v525;
        LODWORD(t1.a) = 17;
        *&t1.b = v508;
        sub_EB08(this + 3, &t1);
LABEL_671:

        goto LABEL_687;
      case 87:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v181 = *(this + 4);
        if (v181 == *(this + 3))
        {
          v183 = *v2;
        }

        else
        {
          LODWORD(t1.a) = *(v181 - 24);
          *&t1.b = *(v181 - 16);
          t1.c = *(v181 - 8);
          v182 = *(this + 4);

          *(this + 4) = v182 - 24;
          v183 = *v2;
          if (LODWORD(t1.a) == 6)
          {
            v184 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, v183);
            v183 = *v2;
            v185 = *(*(*v2 + 70) + 40);
            if ((*(*(*v2 + 70) + 48) - v185) < 0x9F)
            {
              v186 = 0xFFFF;
            }

            else
            {
              v186 = *(v185 + 158);
            }

            if (v184 == v186)
            {
              v441 = NAN;
LABEL_547:
              LODWORD(v612.a) = 0;
              v612.b = 0.0;
              v442 = *(this + 4);
              if (v442 != *(this + 3))
              {
                LODWORD(v612.a) = *(v442 - 24);
                *&v612.b = *(v442 - 16);
                v612.c = *(v442 - 8);
                v443 = *(this + 4);

                *(this + 4) = v443 - 24;
              }

              v444 = TUI::Evaluation::ResolvedValue::fontSpecValue(&v612, *v2);
              v445 = v444;
              if (v444)
              {
                v446 = v444;
              }

              else
              {
                v446 = +[TUIFontSpec defaultFontSpec];
              }

              v513 = v446;

              v514 = [v513 fontSpecWithLeading:v441];

              v515 = v514;
              LODWORD(v612.a) = 17;
              *&v612.b = v515;
              sub_EB08(this + 3, &v612);

              goto LABEL_826;
            }

            if (LODWORD(t1.a) == 6)
            {
              v531 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, v183);
              v183 = *v2;
              v532 = *(*(*v2 + 70) + 40);
              v533 = (*(*(*v2 + 70) + 48) - v532) < 0xCF ? 0xFFFF : *(v532 + 206);
              v441 = 0.0;
              if (v531 == v533)
              {
                goto LABEL_547;
              }
            }
          }
        }

        v441 = TUI::Evaluation::ResolvedValue::floatValue(&t1, v183);
        goto LABEL_547;
      case 88:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v27 = *(this + 4);
        if (v27 != *(this + 3))
        {
          LODWORD(t1.a) = *(v27 - 24);
          *&t1.b = *(v27 - 16);
          t1.c = *(v27 - 8);
          v28 = *(this + 4);

          *(this + 4) = v28 - 24;
        }

        v29 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
        v30 = TUI::Instruction::Evaluation::fontWeightFromSymbol(this, v29);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v31 = *(this + 4);
        if (v31 != *(this + 3))
        {
          LODWORD(t1.a) = *(v31 - 24);
          *&t1.b = *(v31 - 16);
          t1.c = *(v31 - 8);
          v32 = *(this + 4);

          *(this + 4) = v32 - 24;
        }

        v33 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = +[TUIFontSpec defaultFontSpec];
        }

        v516 = v35;

        v517 = [v516 fontSpecWithWeight:v30];

        v377 = v517;
        LODWORD(t1.a) = 17;
        *&t1.b = v377;
        sub_EB08(this + 3, &t1);
        goto LABEL_663;
      case 89:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v51 = *(this + 4);
        if (v51 != *(this + 3))
        {
          LODWORD(t1.a) = *(v51 - 24);
          *&t1.b = *(v51 - 16);
          t1.c = *(v51 - 8);
          v52 = *(this + 4);

          *(this + 4) = v52 - 24;
        }

        v53 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
        v54 = TUI::Instruction::Evaluation::fontCapsFromSymbol(this, v53);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v55 = *(this + 4);
        if (v55 != *(this + 3))
        {
          LODWORD(t1.a) = *(v55 - 24);
          *&t1.b = *(v55 - 16);
          t1.c = *(v55 - 8);
          v56 = *(this + 4);

          *(this + 4) = v56 - 24;
        }

        v57 = TUI::Evaluation::ResolvedValue::fontSpecValue(&t1, *v2);
        v58 = v57;
        if (v57)
        {
          v59 = v57;
        }

        else
        {
          v59 = +[TUIFontSpec defaultFontSpec];
        }

        v518 = v59;

        v519 = [v518 fontSpecWithCaps:v54];

        v377 = v519;
        LODWORD(t1.a) = 17;
        *&t1.b = v377;
        sub_EB08(this + 3, &t1);
LABEL_663:
        v378 = t1.b;
LABEL_664:

        goto LABEL_828;
      case 90:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v293 = *(this + 4);
        if (v293 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v293 - 24);
          *&t1.b = *(v293 - 16);
          t1.c = *(v293 - 8);
          v294 = *(this + 4);

          *(this + 4) = v294 - 24;
          v295 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v294 - 24 != v295)
          {
            LODWORD(v612.a) = *(v294 - 48);
            *&v612.b = *(v294 - 40);
            v612.c = *(v294 - 32);
            v296 = *(this + 4);

            *(this + 4) = v296 - 24;
          }
        }

        v488 = TUI::Evaluation::ResolvedValue::fontSpecValue(&v612, *v2);
        v489 = v488;
        if (v488)
        {
          v490 = v488;
        }

        else
        {
          v490 = +[TUIFontSpec defaultFontSpec];
        }

        v501 = v490;

        v502 = *v2;
        if (LODWORD(t1.a) == 6 && ((v503 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, v502), v502 = *v2, v504 = *(*(*v2 + 70) + 40), (*(*(*v2 + 70) + 48) - v504) < 0x9F) ? (v505 = 0xFFFF) : (v505 = *(v504 + 158)), v503 == v505))
        {
          v528 = NAN;
        }

        else
        {
          v528 = TUI::Evaluation::ResolvedValue::floatValue(&t1, v502);
        }

        v529 = [v501 fontSpecWithTracking:v528];

        v203 = v529;
        LODWORD(v612.a) = 17;
        *&v612.b = v203;
        sub_EB08(this + 3, &v612);
        goto LABEL_734;
      case 91:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v23 = *(this + 4);
        if (v23 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v23 - 24);
          *&t1.b = *(v23 - 16);
          t1.c = *(v23 - 8);
          v24 = *(this + 4);

          *(this + 4) = v24 - 24;
          v25 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v24 - 24 != v25)
          {
            LODWORD(v612.a) = *(v24 - 48);
            *&v612.b = *(v24 - 40);
            v612.c = *(v24 - 32);
            v26 = *(this + 4);

            *(this + 4) = v26 - 24;
          }
        }

        v413 = TUI::Evaluation::ResolvedValue::fontSpecValue(&v612, *v2);
        v414 = v413;
        if (v413)
        {
          v415 = v413;
        }

        else
        {
          v415 = +[TUIFontSpec defaultFontSpec];
        }

        v491 = v415;

        if (v622 >= v623)
        {
          ++v622;
          goto LABEL_733;
        }

        v492 = *(v621 + 2 * v622++);
        if (v492 > 1)
        {
          if (v492 == 2)
          {
            v539 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
            v540 = TUI::Instruction::Evaluation::contentSizeFromSymbol(this, v539);
            v541 = [v491 fontSpecWithMinContentSize:v540];

            v491 = v541;
LABEL_733:
            v203 = v491;
            LODWORD(v612.a) = 17;
            *&v612.b = v203;
            sub_EB08(this + 3, &v612);
LABEL_734:

LABEL_735:
            goto LABEL_826;
          }

          if (v492 != 3)
          {
            goto LABEL_733;
          }

          v493 = [v491 fontSpecWithMonospacedDigits:{TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2)}];
        }

        else
        {
          if (v492)
          {
            [v491 fontSpecWithMinPointSize:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
          }

          else
          {
            [v491 fontSpecWithAdditionalLeading:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
          }
          v493 = ;
        }

        v538 = v493;

        v491 = v538;
        goto LABEL_733;
      case 92:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v177 = *(this + 4);
        if (v177 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v177 - 24);
          *&t1.b = *(v177 - 16);
          t1.c = *(v177 - 8);
          v178 = *(this + 4);

          *(this + 4) = v178 - 24;
          v179 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v178 - 24 != v179)
          {
            LODWORD(v612.a) = *(v178 - 48);
            *&v612.b = *(v178 - 40);
            v612.c = *(v178 - 32);
            v180 = *(this + 4);

            *(this + 4) = v180 - 24;
          }
        }

        v433 = TUI::Evaluation::ResolvedValue::objectValue(&v612, *v2);
        v434 = v433;
        if (v622 >= v623)
        {
          ++v622;
LABEL_544:
          v440 = v433;
          LODWORD(t2.a) = 16;
          *&t2.b = v440;
          sub_EB08(this + 3, &t2);
        }

        else
        {
          v435 = *(v621 + 2 * v622++);
          switch(v435)
          {
            case 0:
              v436 = sub_103F0(v433, *v2);
              v437 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
              v438 = [v436 pointerStyleWithEffect:{TUI::Instruction::Evaluation::pointerEffectFromSymbol(this, v437)}];

              v439 = v438;
              LODWORD(t2.a) = 16;
              *&t2.b = v439;
              sub_EB08(this + 3, &t2);

              goto LABEL_791;
            case 1:
              v439 = sub_103F0(v433, *v2);
              v549 = [v439 pointerStyleWithPrefersShadow:{TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 2:
              v439 = sub_103F0(v433, *v2);
              v549 = [v439 pointerStyleWithPrefersScale:{TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 3:
              v439 = sub_103F0(v433, *v2);
              v556 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
              v549 = [v439 pointerStyleWithPreferredTintMode:{TUI::Instruction::Evaluation::hoverEffectTintModeFromSymbol(this, v556)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 4:
              v439 = sub_103F0(v433, *v2);
              v550 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);
              v551 = sub_10A84(v550, *v2);

              v552 = [v439 pointerStyleWithCursor:v551];
              LODWORD(t2.a) = 16;
              *&t2.b = v552;
              sub_EB08(this + 3, &t2);
              goto LABEL_781;
            case 5:
              v439 = sub_10A84(v433, *v2);
              v557 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
              v549 = [v439 pointerCursorWithShape:{TUI::Instruction::Evaluation::pointerShapeFromSymbol(this, v557)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 6:
              v439 = sub_10A84(v433, *v2);
              v549 = [v439 pointerCursorWithInsets:{TUI::Evaluation::ResolvedValue::insetsValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 7:
              v439 = sub_10A84(v433, *v2);
              v549 = [v439 pointerCursorWithCornerRadius:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 8:
              v439 = sub_10A84(v433, *v2);
              v549 = [v439 pointerCursorWithScale:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 9:
              v553 = sub_10E94(v433, *v2);
              v554 = TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2);
              if (v553)
              {
                v555 = [v553 snapByAddingValue:v554];
              }

              else
              {
                v555 = [[TUISnap alloc] initWithValue:v554];
              }

              v577 = v555;
              LODWORD(t2.a) = 16;
              *&t2.b = v577;
              sub_EB08(this + 3, &t2);

              break;
            case 10:
              v439 = sub_10E94(v433, *v2);
              v559 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);
              v560 = TUIProtocolCast(&OBJC_PROTOCOL___NSCopying, v559);

              if (v560)
              {
                v561 = [v439 snapWithIdentifier:v560];
                LODWORD(t2.a) = 16;
                *&t2.b = v561;
                sub_EB08(this + 3, &t2);
              }

              else
              {
                v578 = v439;
                LODWORD(t2.a) = 16;
                *&t2.b = v578;
                sub_EB08(this + 3, &t2);
              }

              goto LABEL_791;
            case 11:
              v439 = sub_10E94(v433, *v2);
              v549 = [v439 snapWithStep:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 12:
              v439 = sub_10E94(v433, *v2);
              v549 = [v439 snapWithMax:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 13:
              v439 = sub_10FAC(v433, *v2);
              v558 = TUI::Evaluation::ResolvedValue::symbolValue(&t1, *v2);
              v549 = [v439 focusStyleWithEffect:{TUI::Instruction::Evaluation::focusEffectFromSymbol(this, v558)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 14:
              v439 = sub_10FAC(v433, *v2);
              v549 = [v439 focusStyleWithInsets:{TUI::Evaluation::ResolvedValue::insetsValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 15:
              v439 = sub_10FAC(v433, *v2);
              v551 = TUI::Evaluation::ResolvedValue::colorValue(&t1, *v2);
              v552 = [v439 focusStyleWithColor:v551];
              LODWORD(t2.a) = 16;
              *&t2.b = v552;
              sub_EB08(this + 3, &t2);
              goto LABEL_781;
            case 16:
              v439 = sub_10FAC(v433, *v2);
              v549 = [v439 focusStyleWithCornerRadius:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 17:
              v439 = sub_10FAC(v433, *v2);
              v551 = TUI::Evaluation::ResolvedValue::stringValue(&t1, *v2);
              v552 = [v439 focusStyleWithGroupIdentifier:v551];
              LODWORD(t2.a) = 16;
              *&t2.b = v552;
              sub_EB08(this + 3, &t2);
LABEL_781:

              goto LABEL_791;
            case 18:
              v439 = sub_10FAC(v433, *v2);
              v549 = [v439 focusStyleWithContinuousCurve:{TUI::Evaluation::ResolvedValue::BOOLValue(&t1, *v2)}];
              LODWORD(t2.a) = 16;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
              goto LABEL_790;
            case 19:
              v439 = TUI::Evaluation::ResolvedValue::colorValue(&v612, *v2);
              v549 = [v439 colorWithAlphaComponent:{TUI::Evaluation::ResolvedValue::floatValue(&t1, *v2)}];
              LODWORD(t2.a) = 11;
              *&t2.b = v549;
              sub_EB08(this + 3, &t2);
LABEL_790:

LABEL_791:
              break;
            default:
              goto LABEL_544;
          }
        }

        goto LABEL_828;
      case 93:
        if (v7 >= v4)
        {
          v113 = 0xFFFFLL;
        }

        else
        {
          v113 = *(v621 + 2 * v7);
        }

        if (v3 + 2 >= v4)
        {
          v353 = 0xFFFF00000000;
        }

        else
        {
          v353 = *(v621 + 2 * (v3 + 2)) << 32;
        }

        if (v3 + 3 >= v4)
        {
          v354 = -65536;
        }

        else
        {
          v354 = *(v621 + 2 * (v3 + 3)) << 16;
        }

        if (v3 + 4 >= v4)
        {
          v355 = 0xFFFF;
        }

        else
        {
          v355 = *(v621 + 2 * (v3 + 4));
        }

        v622 = v3 + 5;
        v356 = TUIClosureNil;
        if (TUI::Instruction::Decoder::offsetKind(v355 | v354) == 18)
        {
          v356 = TUI::Instruction::Decoder::offsetIndex((v355 | v354));
        }

        v63 = [[_TUIStyleReferenceElement alloc] initWithStyleReference:v353 | v113];
        TUI::Evaluation::Context::captureClosure(*v2, v356);
        v357 = [_TUIElementWithClosure alloc];
        a_low = LODWORD(t1.a);
        v609 = t1.b;
        c = t1.c;
        if (*&t1.c)
        {
          atomic_fetch_add_explicit((*&t1.c + 8), 1uLL, memory_order_relaxed);
        }

        v358 = [(_TUIElementWithClosure *)v357 initWithParsedElement:v63 closureAndCapture:&a_low];
        LODWORD(v612.a) = 15;
        *&v612.b = v358;
        sub_EB08(this + 3, &v612);

        if (c != 0.0)
        {
          sub_11420(*&c);
        }

        if (*&t1.c)
        {
          sub_11420(*&t1.c);
        }

        goto LABEL_687;
      case 94:
      case 97:
        v89 = objc_opt_new();
        LODWORD(t1.a) = 16;
        *&t1.b = v89;
        sub_EB08(this + 3, &t1);
        goto LABEL_705;
      case 95:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v36 = *(this + 4);
        if (v36 != *(this + 3))
        {
          LODWORD(t1.a) = *(v36 - 24);
          *&t1.b = *(v36 - 16);
          t1.c = *(v36 - 8);
          v37 = *(this + 4);

          *(this + 4) = v37 - 24;
        }

        v38 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v39 = *(this + 4);
        if (v39 != *(this + 3))
        {
          LODWORD(t1.a) = *(v39 - 24);
          *&t1.b = *(v39 - 16);
          t1.c = *(v39 - 8);
          v40 = *(this + 4);

          *(this + 4) = v40 - 24;
        }

        v41 = TUI::Evaluation::ResolvedValue::stringValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v42 = *(this + 4);
        if (v42 != *(this + 3))
        {
          LODWORD(t1.a) = *(v42 - 24);
          *&t1.b = *(v42 - 16);
          t1.c = *(v42 - 8);
          v43 = *(this + 4);

          *(this + 4) = v43 - 24;
        }

        v44 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & (v38 != 0)) == 1)
        {
          v45 = v44;
          v46 = v41;
          [v45 setObject:v38 forKeyedSubscript:v46];
        }

        else
        {
          v307 = *v2;
          v308 = objc_opt_class();
          v45 = NSStringFromClass(v308);
          v309 = objc_opt_class();
          v46 = NSStringFromClass(v309);
          v310 = [NSString stringWithFormat:@"dict.class: %@, key.class: %@", v45, v46];
          TUI::Evaluation::Context::reportError(v307, 1000, v310);
        }

        v311 = v44;
        LODWORD(t1.a) = 16;
        *&t1.b = v311;
        sub_EB08(this + 3, &t1);

        goto LABEL_828;
      case 96:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v209 = *(this + 4);
        if (v209 != *(this + 3))
        {
          LODWORD(t1.a) = *(v209 - 24);
          *&t1.b = *(v209 - 16);
          t1.c = *(v209 - 8);
          v210 = *(this + 4);

          *(this + 4) = v210 - 24;
        }

        v63 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);

        if (v63 && (objc_opt_respondsToSelector() & 1) == 0)
        {
          LODWORD(t1.a) = 16;
          t1.b = 0.0;
          sub_EB08(this + 3, &t1);

          v526 = *v2;
          v527 = objc_opt_class();
          v211 = NSStringFromClass(v527);
          v212 = [NSString stringWithFormat:@"class: %@ not copyable", v211];
          TUI::Evaluation::Context::reportError(v526, 1000, v212);
        }

        else
        {
          v211 = v63;
          v212 = [(_TUIStyleReferenceElement *)v211 copyWithZone:0];
          LODWORD(t1.a) = 16;
          *&t1.b = v212;
          sub_EB08(this + 3, &t1);
        }

        goto LABEL_687;
      case 98:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v132 = *(this + 4);
        if (v132 != *(this + 3))
        {
          LODWORD(t1.a) = *(v132 - 24);
          *&t1.b = *(v132 - 16);
          t1.c = *(v132 - 8);
          v133 = *(this + 4);

          *(this + 4) = v133 - 24;
        }

        v63 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);

        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v134 = *(this + 4);
        if (v134 != *(this + 3))
        {
          LODWORD(t1.a) = *(v134 - 24);
          *&t1.b = *(v134 - 16);
          t1.c = *(v134 - 8);
          v135 = *(this + 4);

          *(this + 4) = v135 - 24;
        }

        v136 = TUI::Evaluation::ResolvedValue::objectValue(&t1, *v2);

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & (v63 != 0)) == 1)
        {
          v137 = v136;
          [v137 addObject:v63];
        }

        else
        {
          v409 = *v2;
          v410 = objc_opt_class();
          v137 = NSStringFromClass(v410);
          v411 = [NSString stringWithFormat:@"array.class: %@", v137];
          TUI::Evaluation::Context::reportError(v409, 1000, v411);
        }

        v412 = v136;
        LODWORD(t1.a) = 16;
        *&t1.b = v412;
        sub_EB08(this + 3, &t1);

LABEL_687:
        goto LABEL_828;
      case 99:
        LODWORD(t1.a) = 0;
        t1.b = 0.0;
        v255 = *(this + 4);
        if (v255 == *(this + 3))
        {
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
        }

        else
        {
          LODWORD(t1.a) = *(v255 - 24);
          *&t1.b = *(v255 - 16);
          t1.c = *(v255 - 8);
          v256 = *(this + 4);

          *(this + 4) = v256 - 24;
          v257 = *(this + 3);
          LODWORD(v612.a) = 0;
          v612.b = 0.0;
          if (v256 - 24 != v257)
          {
            LODWORD(v612.a) = *(v256 - 48);
            *&v612.b = *(v256 - 40);
            v612.c = *(v256 - 32);
            v258 = *(this + 4);

            *(this + 4) = v258 - 24;
          }
        }

        v473 = TUI::Evaluation::ResolvedValue::stringValue(&v612, *v2);
        v474 = v473;
        if (v473)
        {
          v475 = v473;
        }

        else
        {
          v475 = &stru_264550;
        }

        v458 = v475;

        v476 = TUI::Evaluation::ResolvedValue::stringValue(&t1, *v2);
        v477 = v476;
        if (v476)
        {
          v478 = v476;
        }

        else
        {
          v478 = &stru_264550;
        }

        v479 = v478;

        v480 = [(__CFString *)v458 stringByAppendingString:v479];
        LODWORD(t2.a) = 9;
        *&t2.b = v480;
        sub_EB08(this + 3, &t2);

        goto LABEL_744;
      default:
        TUI::Evaluation::Context::reportError(*v2, 1029, 0);
LABEL_835:
        v3 = v622;
        v4 = v623;
        goto LABEL_836;
    }
  }
}

uint64_t sub_E96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_11810(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = v7 - 24;

        v7 = v8;
      }

      while (v8 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void TUI::Instruction::Evaluation::fixFloatIfNeeded(TUI::Instruction::Evaluation *this)
{
  v1 = *(this + 4);
  if (v1 != *(this + 3) && *(v1 - 24) == 1)
  {
    TUI::Evaluation::ResolvedValue::floatValue((v1 - 24), *(this + 2));
    if (fabs(TUI::Evaluation::ResolvedValue::floatValue((v1 - 24), *(this + 2))) == INFINITY)
    {
      v3 = *(this + 2);
      v4 = [NSNumber numberWithDouble:TUI::Evaluation::ResolvedValue::floatValue((v1 - 24), v3)];
      TUI::Evaluation::Context::reportError(v3, 1028, v4);

      *(v1 - 24) = 1;
      v5 = *(v1 - 16);
      *(v1 - 16) = 0;

      *(v1 - 8) = 0;
    }
  }
}

uint64_t sub_EB08(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = sub_11884(a1, a2);
  }

  else
  {
    *v4 = *a2;
    *(v4 + 8) = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    result = v4 + 24;
  }

  a1[1] = result;
  return result;
}

void sub_EB74(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([v8 userInterfaceLevel] != -1)
        {
          [v3 setUserInterfaceLevel:{objc_msgSend(v8, "userInterfaceLevel")}];
        }

        if ([v8 displayGamut] != -1)
        {
          [v3 setDisplayGamut:{objc_msgSend(v8, "displayGamut")}];
        }

        if ([v8 accessibilityContrast] != -1)
        {
          [v3 setAccessibilityContrast:{objc_msgSend(v8, "accessibilityContrast")}];
        }

        if ([v8 userInterfaceStyle])
        {
          [v3 setUserInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

NSString *TUI::Instruction::Evaluation::systemDesignFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v19 = a2;
  v3 = UIFontDescriptorSystemDesignDefault;
  if (!*(this + 19))
  {
    sub_60D8(__p, "default");
    v23 = v3;
    sub_60D8(v24, "serif");
    v24[3] = UIFontDescriptorSystemDesignSerif;
    sub_60D8(v25, "rounded");
    v25[3] = UIFontDescriptorSystemDesignRounded;
    sub_60D8(v26, "monospaced");
    v26[3] = UIFontDescriptorSystemDesignMonospaced;
    sub_60D8(v27, "compact");
    v27[3] = UIFontSystemFontDesignCompact;
    sub_60D8(v28, "condensed");
    v29 = UIFontSystemFontDesignCondensed;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    sub_119C0(&v16, __p, &v30, 6uLL);
    for (i = 0; i != -24; i -= 4)
    {

      if (SHIBYTE(v28[i + 2]) < 0)
      {
        operator delete(v28[i]);
      }
    }

    v5 = v16;
    v6 = v17;
    if (v16 != v17)
    {
      v7 = *(*(this + 2) + 560);
      do
      {
        sub_1148C(__p, v5);
        v8 = TUI::Symbol::Tab::lookup(v7, __p);
        v15 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v23;
          v20 = &v15;
          v10 = sub_11CD4(this + 16, &v15, &std::piecewise_construct, &v20);
          objc_storeStrong(v10 + 3, v9);
        }

        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }

    __p[0] = &v16;
    sub_11C4C(__p);
  }

  v11 = sub_11F88(this + 16, &v19);
  if (v11)
  {
    v12 = v3;
    v3 = v11[3];
  }

  else
  {
    v13 = *(this + 2);
    v12 = TUI::Symbol::Tab::string(*(v13 + 560), v19);
    TUI::Evaluation::Context::reportError(v13, 1000, v12);
  }

  return v3;
}

NSString *TUI::Instruction::Evaluation::textStyleFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v27[0] = a2;
  v3 = UIFontTextStyleBody;
  if (!*(this + 9))
  {
    sub_60D8(__p, "headline");
    v31 = UIFontTextStyleHeadline;
    sub_60D8(v32, "body");
    v32[3] = v3;
    sub_60D8(v33, "title0");
    v33[3] = UIFontTextStyleTitle0;
    sub_60D8(v34, "title1");
    v34[3] = UIFontTextStyleTitle1;
    sub_60D8(v35, "title2");
    v35[3] = UIFontTextStyleTitle2;
    sub_60D8(v36, "title3");
    v36[3] = UIFontTextStyleTitle3;
    sub_60D8(v37, "title4");
    v37[3] = UIFontTextStyleTitle4;
    sub_60D8(v38, "title5");
    v38[3] = UIFontTextStyleTitle5;
    sub_60D8(v39, "callout");
    v39[3] = UIFontTextStyleCallout;
    sub_60D8(v40, "caption1");
    v40[3] = UIFontTextStyleCaption1;
    sub_60D8(v41, "caption2");
    v41[3] = UIFontTextStyleCaption2;
    sub_60D8(v42, "footnote");
    v42[3] = UIFontTextStyleFootnote;
    sub_60D8(v43, "footnote1");
    v43[3] = UIFontTextStyleFootnote1;
    sub_60D8(v44, "footnote2");
    v44[3] = UIFontTextStyleFootnote2;
    sub_60D8(v45, "largetitle");
    v45[3] = UIFontTextStyleLargeTitle;
    sub_60D8(v46, "subheadline");
    v46[3] = UIFontTextStyleSubheadline;
    sub_60D8(v47, "subtitle");
    v47[3] = UIFontTextStyleSubtitle;
    sub_60D8(v48, "subtitle1");
    v48[3] = UIFontTextStyleSubtitle1;
    sub_60D8(v49, "subtitle2");
    v49[3] = UIFontTextStyleSubtitle2;
    sub_60D8(v50, "subtitle3");
    v50[3] = UIFontTextStyleSubtitle3;
    sub_60D8(v51, "section1");
    v51[3] = UIFontTextStyleSection1;
    sub_60D8(v52, "section2");
    v52[3] = UIFontTextStyleSection2;
    sub_60D8(v53, "section3");
    v53[3] = UIFontTextStyleSection3;
    v4 = kCTUIFontTextStyleShortHeadline;
    sub_60D8(v54, "headline-short");
    v54[3] = v4;
    v5 = kCTUIFontTextStyleShortBody;
    sub_60D8(v55, "body-short");
    v55[3] = v5;
    v6 = kCTUIFontTextStyleShortSubhead;
    sub_60D8(v56, "subhead-short");
    v56[3] = v6;
    v7 = kCTUIFontTextStyleShortFootnote;
    sub_60D8(v57, "footnote-short");
    v57[3] = v7;
    v8 = kCTUIFontTextStyleShortCaption1;
    sub_60D8(v58, "caption1-short");
    v58[3] = v8;
    v9 = kCTUIFontTextStyleTallBody;
    sub_60D8(v59, "body-tall");
    v59[3] = v9;
    v26[0] = 0;
    v26[1] = 0;
    v25 = 0;
    sub_119C0(&v25, __p, &v60, 0x1DuLL);
    v10 = 464;
    do
    {

      if (SHIBYTE(v27[v10 + 1]) < 0)
      {
        operator delete(v26[v10 / 4]);
      }

      v10 -= 16;
    }

    while (v10 * 2);
    v11 = v25;
    v12 = v26[0];
    if (v25 != v26[0])
    {
      v13 = *(*(this + 2) + 560);
      do
      {
        sub_1148C(__p, v11);
        v14 = TUI::Symbol::Tab::lookup(v13, __p);
        v24 = v14;
        if (v14 != 0xFFFF)
        {
          v15 = v31;
          v28 = &v24;
          v16 = sub_11CD4(this + 6, &v24, &std::piecewise_construct, &v28);
          objc_storeStrong(v16 + 3, v15);
        }

        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        v11 += 2;
      }

      while (v11 != v12);
    }

    __p[0] = &v25;
    sub_11C4C(__p);
  }

  v17 = sub_11F88(this + 6, v27);
  if (v17)
  {
    v18 = v3;
    v3 = v17[3];
  }

  else
  {
    v19 = *(this + 2);
    v20 = *(v19 + 560);
    v21 = *(v20 + 5);
    if ((*(v20 + 6) - v21) < 0xCF)
    {
      v22 = 0xFFFF;
    }

    else
    {
      v22 = *(v21 + 206);
    }

    if (v27[0] == v22)
    {
      v18 = v3;
      v3 = 0;
    }

    else
    {
      v18 = TUI::Symbol::Tab::string(v20, v27[0]);
      TUI::Evaluation::Context::reportError(v19, 1000, v18);
    }
  }

  return v3;
}

NSString *TUI::Instruction::Evaluation::contentSizeFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v21[0] = a2;
  v3 = UIContentSizeCategoryUnspecified;
  if (!*(this + 14))
  {
    sub_60D8(__p, "x-small");
    v25 = UIContentSizeCategoryExtraSmall;
    sub_60D8(v26, "small");
    v26[3] = UIContentSizeCategorySmall;
    sub_60D8(v27, "medium");
    v27[3] = UIContentSizeCategoryMedium;
    sub_60D8(v28, "large");
    v28[3] = UIContentSizeCategoryLarge;
    sub_60D8(v29, "x-large");
    v29[3] = UIContentSizeCategoryExtraLarge;
    sub_60D8(v30, "xx-large");
    v30[3] = UIContentSizeCategoryExtraExtraLarge;
    sub_60D8(v31, "xxx-large");
    v31[3] = UIContentSizeCategoryExtraExtraExtraLarge;
    sub_60D8(v32, "ax-medium");
    v32[3] = UIContentSizeCategoryAccessibilityMedium;
    sub_60D8(v33, "ax-large");
    v33[3] = UIContentSizeCategoryAccessibilityLarge;
    sub_60D8(v34, "ax-x-large");
    v34[3] = UIContentSizeCategoryAccessibilityExtraLarge;
    sub_60D8(v35, "ax-xx-large");
    v35[3] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
    sub_60D8(v36, "ax-xxx-large");
    v36[3] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
    v20[0] = 0;
    v20[1] = 0;
    v19 = 0;
    sub_119C0(&v19, __p, &v37, 0xCuLL);
    v4 = 192;
    do
    {

      if (SHIBYTE(v21[v4 + 1]) < 0)
      {
        operator delete(v20[v4 / 4]);
      }

      v4 -= 16;
    }

    while (v4 * 2);
    v5 = v19;
    v6 = v20[0];
    if (v19 != v20[0])
    {
      v7 = *(*(this + 2) + 560);
      do
      {
        sub_1148C(__p, v5);
        v8 = TUI::Symbol::Tab::lookup(v7, __p);
        v18 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v25;
          v22 = &v18;
          v10 = sub_11CD4(this + 11, &v18, &std::piecewise_construct, &v22);
          objc_storeStrong(v10 + 3, v9);
        }

        if (v24 < 0)
        {
          operator delete(__p[0]);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }

    __p[0] = &v19;
    sub_11C4C(__p);
  }

  v11 = sub_11F88(this + 11, v21);
  if (v11)
  {
    v12 = v3;
    v3 = v11[3];
  }

  else
  {
    v13 = *(this + 2);
    v14 = *(v13 + 560);
    v15 = *(v14 + 5);
    if ((*(v14 + 6) - v15) < 0xCF)
    {
      v16 = 0xFFFF;
    }

    else
    {
      v16 = *(v15 + 206);
    }

    if (v21[0] == v16)
    {
      v12 = v3;
      v3 = 0;
    }

    else
    {
      v12 = TUI::Symbol::Tab::string(v14, v21[0]);
      TUI::Evaluation::Context::reportError(v13, 1000, v12);
    }
  }

  return v3;
}

double TUI::Instruction::Evaluation::fontWeightFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18[0] = a2;
  v3 = UIFontWeightRegular;
  if (!*(this + 24))
  {
    sub_60D8(__p, "ultralight");
    v22 = UIFontWeightUltraLight;
    sub_60D8(v23, "thin");
    *&v23[3] = UIFontWeightThin;
    sub_60D8(v24, "light");
    *&v24[3] = UIFontWeightLight;
    sub_60D8(v25, "regular");
    *&v25[3] = UIFontWeightRegular;
    sub_60D8(v26, "medium");
    *&v26[3] = UIFontWeightMedium;
    sub_60D8(v27, "semibold");
    *&v27[3] = UIFontWeightSemibold;
    sub_60D8(v28, "bold");
    *&v28[3] = UIFontWeightBold;
    sub_60D8(v29, "heavy");
    *&v29[3] = UIFontWeightHeavy;
    sub_60D8(v30, "black");
    *&v30[3] = UIFontWeightBlack;
    v17[0] = 0;
    v17[1] = 0;
    v16 = 0;
    sub_12040(&v16, __p, &v31, 9uLL);
    v4 = 144;
    do
    {
      if (SHIBYTE(v18[v4 + 1]) < 0)
      {
        operator delete(v17[v4 / 4]);
      }

      v4 -= 16;
    }

    while (v4 * 2);
    v5 = v16;
    v6 = v17[0];
    if (v16 != v17[0])
    {
      v7 = *(*(this + 2) + 560);
      do
      {
        if (*(v5 + 23) < 0)
        {
          sub_114E8(__p, *v5, *(v5 + 8));
        }

        else
        {
          v8 = *v5;
          v21 = *(v5 + 16);
          *__p = v8;
        }

        v22 = *(v5 + 24);
        v9 = TUI::Symbol::Tab::lookup(v7, __p);
        v15 = v9;
        if (v9 != 0xFFFF)
        {
          v10 = *&v22;
          v19 = &v15;
          sub_1233C(this + 21, &v15, &std::piecewise_construct, &v19)[3] = v10;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v5 += 32;
      }

      while (v5 != v6);
    }

    __p[0] = &v16;
    sub_12298(__p);
  }

  v11 = sub_11F88(this + 21, v18);
  if (v11)
  {
    return *(v11 + 3);
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18[0]);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return v3;
}

uint64_t **TUI::Instruction::Evaluation::fontCapsFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18 = a2;
  if (!*(this + 29))
  {
    sub_60D8(__p, "default");
    v22 = 0;
    sub_60D8(v23, "all");
    v23[3] = 2;
    sub_60D8(v24, "titled");
    v24[3] = 4;
    sub_60D8(v25, "capitalized");
    v25[3] = 4;
    sub_60D8(v26, "lowercased");
    v26[3] = 5;
    sub_60D8(v27, "smallcaps");
    v27[3] = 3;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_12578(&v15, __p, &v28, 6uLL);
    for (i = 0; i != -24; i -= 4)
    {
      if (SHIBYTE(v27[i + 2]) < 0)
      {
        operator delete(v27[i]);
      }
    }

    v4 = v15;
    v5 = v16;
    if (v15 != v16)
    {
      v6 = *(*(this + 2) + 560);
      do
      {
        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v21 = *(v4 + 16);
          *__p = v7;
        }

        v22 = *(v4 + 24);
        v8 = TUI::Symbol::Tab::lookup(v6, __p);
        v14 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v22;
          v19 = &v14;
          sub_1233C(this + 26, &v14, &std::piecewise_construct, &v19)[3] = v9;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }

    __p[0] = &v15;
    sub_12298(__p);
  }

  v10 = sub_11F88(this + 26, &v18);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return 0;
}

id sub_103F0(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSString stringWithFormat:@"expected %@, got %@", v6, v8];
    TUI::Evaluation::Context::reportError(a2, 1000, v9);
  }

  v4 = +[TUIPointerStyle defaultPointerStyle];
LABEL_5:

  return v4;
}

uint64_t **TUI::Instruction::Evaluation::pointerEffectFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18 = a2;
  if (!*(this + 34))
  {
    sub_60D8(__p, "automatic");
    v22 = 0;
    sub_60D8(v23, "lift");
    v23[3] = 2;
    sub_60D8(v24, "highlight");
    v24[3] = 1;
    sub_60D8(v25, "hover");
    v25[3] = 3;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_12704(&v15, __p, &v26, 4uLL);
    for (i = 0; i != -16; i -= 4)
    {
      if (SHIBYTE(v25[i + 2]) < 0)
      {
        operator delete(v25[i]);
      }
    }

    v4 = v15;
    v5 = v16;
    if (v15 != v16)
    {
      v6 = *(*(this + 2) + 560);
      do
      {
        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v21 = *(v4 + 16);
          *__p = v7;
        }

        v22 = *(v4 + 24);
        v8 = TUI::Symbol::Tab::lookup(v6, __p);
        v14 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v22;
          v19 = &v14;
          sub_1233C(this + 31, &v14, &std::piecewise_construct, &v19)[3] = v9;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }

    __p[0] = &v15;
    sub_12298(__p);
  }

  v10 = sub_11F88(this + 31, &v18);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return 0;
}

uint64_t **TUI::Instruction::Evaluation::hoverEffectTintModeFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18 = a2;
  if (!*(this + 44))
  {
    sub_60D8(__p, "overlay");
    v22 = 1;
    sub_60D8(v23, "none");
    v23[3] = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_12A1C(&v15, __p, &v24, 2uLL);
    for (i = 0; i != -8; i -= 4)
    {
      if (SHIBYTE(v23[i + 2]) < 0)
      {
        operator delete(v23[i]);
      }
    }

    v4 = v15;
    v5 = v16;
    if (v15 != v16)
    {
      v6 = *(*(this + 2) + 560);
      do
      {
        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v21 = *(v4 + 16);
          *__p = v7;
        }

        v22 = *(v4 + 24);
        v8 = TUI::Symbol::Tab::lookup(v6, __p);
        v14 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v22;
          v19 = &v14;
          sub_1233C(this + 41, &v14, &std::piecewise_construct, &v19)[3] = v9;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }

    __p[0] = &v15;
    sub_12298(__p);
  }

  v10 = sub_11F88(this + 41, &v18);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return (&dword_0 + 1);
}

id sub_10A84(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSString stringWithFormat:@"expected %@, got %@", v6, v8];
    TUI::Evaluation::Context::reportError(a2, 1000, v9);
  }

  v4 = +[TUIPointerCursor defaultPointerCursor];
LABEL_5:

  return v4;
}

uint64_t **TUI::Instruction::Evaluation::pointerShapeFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18 = a2;
  if (!*(this + 39))
  {
    sub_60D8(__p, "default");
    v22 = 0;
    sub_60D8(v23, "rounded");
    v23[3] = 1;
    sub_60D8(v24, "circle");
    v24[3] = 2;
    sub_60D8(v25, "link");
    v25[3] = 3;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_12890(&v15, __p, &v26, 4uLL);
    for (i = 0; i != -16; i -= 4)
    {
      if (SHIBYTE(v25[i + 2]) < 0)
      {
        operator delete(v25[i]);
      }
    }

    v4 = v15;
    v5 = v16;
    if (v15 != v16)
    {
      v6 = *(*(this + 2) + 560);
      do
      {
        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v21 = *(v4 + 16);
          *__p = v7;
        }

        v22 = *(v4 + 24);
        v8 = TUI::Symbol::Tab::lookup(v6, __p);
        v14 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v22;
          v19 = &v14;
          sub_1233C(this + 36, &v14, &std::piecewise_construct, &v19)[3] = v9;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }

    __p[0] = &v15;
    sub_12298(__p);
  }

  v10 = sub_11F88(this + 36, &v18);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return 0;
}

id sub_10E94(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [NSString stringWithFormat:@"expected %@, got %@", v5, v7];
      TUI::Evaluation::Context::reportError(a2, 1000, v8);

      v3 = 0;
    }
  }

  return v3;
}

id sub_10FAC(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [NSString stringWithFormat:@"expected %@, got %@", v6, v8];
    TUI::Evaluation::Context::reportError(a2, 1000, v9);
  }

  v4 = +[TUIFocusStyle defaultFocusStyle];
LABEL_5:

  return v4;
}

uint64_t **TUI::Instruction::Evaluation::focusEffectFromSymbol(TUI::Instruction::Evaluation *this, unsigned __int16 a2)
{
  v18 = a2;
  if (!*(this + 49))
  {
    sub_60D8(__p, "none");
    v22 = 0;
    sub_60D8(v23, "default");
    v23[3] = 1;
    sub_60D8(v24, "inside");
    v24[3] = 2;
    sub_60D8(v25, "outside");
    v25[3] = 3;
    sub_60D8(v26, "background");
    v26[3] = 4;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    sub_12BA8(&v15, __p, &v27, 5uLL);
    for (i = 0; i != -20; i -= 4)
    {
      if (SHIBYTE(v26[i + 2]) < 0)
      {
        operator delete(v26[i]);
      }
    }

    v4 = v15;
    v5 = v16;
    if (v15 != v16)
    {
      v6 = *(*(this + 2) + 560);
      do
      {
        if (*(v4 + 23) < 0)
        {
          sub_114E8(__p, *v4, *(v4 + 8));
        }

        else
        {
          v7 = *v4;
          v21 = *(v4 + 16);
          *__p = v7;
        }

        v22 = *(v4 + 24);
        v8 = TUI::Symbol::Tab::lookup(v6, __p);
        v14 = v8;
        if (v8 != 0xFFFF)
        {
          v9 = v22;
          v19 = &v14;
          sub_1233C(this + 46, &v14, &std::piecewise_construct, &v19)[3] = v9;
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }

    __p[0] = &v15;
    sub_12298(__p);
  }

  v10 = sub_11F88(this + 46, &v18);
  if (v10)
  {
    return v10[3];
  }

  v12 = *(this + 2);
  v13 = TUI::Symbol::Tab::string(*(v12 + 560), v18);
  TUI::Evaluation::Context::reportError(v12, 1000, v13);

  return (&dword_0 + 1);
}

uint64_t sub_113E4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_11420(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

_OWORD *sub_1148C(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_114E8(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 3) = *(a2 + 3);
  return __dst;
}

void *sub_114E8(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_6768();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_1158C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 3;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_11614(uint64_t a1)
{
  sub_11650(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_11650(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_11694(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_116E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_3AAC();
}

void sub_11738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      *(a4 + 8) = *(v7 + 8);
      *(a4 + 16) = *(v7 + 16);
      v7 += 24;
      a4 += 24;
    }

    while (v7 != a3);
    while (v6 != a3)
    {

      v6 += 24;
    }
  }
}

uint64_t sub_117BC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_11810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    objc_storeStrong((a4 + 8), *(v5 + 8));
    *(a4 + 16) = *(v5 + 16);
    v5 += 24;
    a4 += 24;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_11884(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_4050();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_116E0(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *&v16 = v7 + 24;
  v8 = a1[1];
  v9 = v7 + *a1 - v8;
  sub_11738(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_117BC(&v14);
  return v13;
}

void sub_119AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_117BC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_119C0(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_11A48(result, a4);
  }

  return result;
}

void sub_11A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_11C4C(&a9);
  _Unwind_Resume(a1);
}

void sub_11A48(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_11A84(a1, a2);
  }

  sub_4050();
}

void sub_11A84(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_3AAC();
}

_OWORD *sub_11ACC(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1148C(v4, v6);
      v6 += 2;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_11B70(v8);
  return v4;
}

uint64_t sub_11B70(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_11BA8(a1);
  }

  return a1;
}

void sub_11BA8(uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 32;
      sub_11BFC(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_11BFC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_11C4C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        sub_11BFC(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **sub_11CD4(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_11F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_11F3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_11F3C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t ***sub_11F88(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_12040(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_120A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void sub_120C8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_12104(a1, a2);
  }

  sub_4050();
}

void sub_12104(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_3AAC();
}

void *sub_1214C(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_12218(v10);
  return v4;
}

uint64_t sub_12218(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

void sub_12250(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void sub_12298(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_122EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_122EC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t **sub_1233C(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *sub_12578(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_125E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void *sub_12600(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_126CC(v10);
  return v4;
}

uint64_t sub_126CC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

uint64_t *sub_12704(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_1276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void *sub_1278C(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_12858(v10);
  return v4;
}

uint64_t sub_12858(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

uint64_t *sub_12890(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_128F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void *sub_12918(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_129E4(v10);
  return v4;
}

uint64_t sub_129E4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

uint64_t *sub_12A1C(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_12A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void *sub_12AA4(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_12B70(v10);
  return v4;
}

uint64_t sub_12B70(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

uint64_t *sub_12BA8(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_120C8(result, a4);
  }

  return result;
}

void sub_12C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_12298(&a9);
  _Unwind_Resume(a1);
}

void *sub_12C30(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v12 = __dst;
  v13 = __dst;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_114E8(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v4[3] = *(v6 + 3);
      v6 += 2;
      v4 = v8 + 4;
      v13 = v8 + 4;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_12CFC(v10);
  return v4;
}

uint64_t sub_12CFC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_12250(a1);
  }

  return a1;
}

void sub_12FF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 removeInterest];
  [v4 removeObserver:*(a1 + 32)];
}

void sub_13104(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 removeInterest];
  [v4 removeObserver:*(a1 + 32)];
}

void sub_131F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_13344;
  v9[3] = &unk_25DDC0;
  v10 = *(a1 + 40);
  v3 = [v2 keysOfEntriesPassingTest:v9];
  v4 = [v3 allObjects];

  if ([v4 count])
  {
    v5 = *(a1 + 32);
    if (*(v5 + 64))
    {
      v6 = [*(v5 + 80) objectsForKeys:v4 notFoundMarker:*(a1 + 40)];
      v7 = [NSDictionary dictionaryWithObjects:v6 forKeys:v4];
      [*(*(a1 + 32) + 64) loadImagesFromResourceMap:v7];
      v8 = [*(*(a1 + 32) + 64) newUIMenuElement];
      [*(a1 + 32) setMenu:v8];
    }
  }
}

void sub_14604(id a1, _TUITransaction *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  v6 = TUITransactionLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1993AC(v5, a3, v6);
  }

  v8 = TUITransactionLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_199424(v5, a3, v8);
  }
}

void sub_15484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1549C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_154B4(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  if (*(*(a1 + 32) + 48))
  {
    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v6 = *(*(a1 + 32) + 16);
    v7 = (*(*(a1 + 40) + 8) + 40);

    objc_storeStrong(v7, v6);
  }
}

void sub_155D4(uint64_t a1)
{
  if ((*(*(a1 + 32) + 8) & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *(*(a1 + 32) + 48) &= ~1uLL;
    v3 = +[TUITransactionOptions defaultImplicitOptions];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(a1 + 32) + 112);

    dispatch_suspend(v6);
  }
}

void sub_1573C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 48))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v1 + 16));
  }
}

void sub_15DA0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) copy];
  [*(*(a1 + 32) + 80) removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v8 + 1) + 8 * v7) + 16))(*(*(&v8 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

id sub_15EC0(uint64_t a1, uint64_t a2)
{
  v3 = TUITransactionLog(a1);
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_EVENT, v5, "TUITransaction.applyUpdates completion on main", "", v9, 2u);
  }

  v7 = TUITransactionLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1995B8();
  }

  return [*(a1 + 32) _invokeCompletions];
}

id sub_16154(uint64_t a1, uint64_t a2)
{
  v3 = TUITransactionLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_199694();
  }

  return [*(a1 + 32) _invokeCompletions];
}

void sub_16A30(id a1)
{
  if (_TUIDeviceHasInternalInstall(a1, v1))
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    byte_2E5FA0 = [v2 BOOLForKey:@"TUIUserDefaultCaptureTransactionCallstack"];
  }

  else
  {
    byte_2E5FA0 = 0;
  }
}

void sub_16AC0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_16AF4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_171C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_171E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeObserver:*(a1 + 32)];
}

void sub_173DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_173F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _removeObserver:*(a1 + 32)];
}

void sub_1834C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 appendObjectsWithProtocol:*(a1 + 32) toArray:*(a1 + 40)];
  }
}

void sub_185B0(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"accepts-drop";
  v6[1] = @"deceleration-rate";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E5FB0;
  qword_2E5FB0 = v4;
}

void sub_18910(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"background-color";
  v6[1] = @"layer-contents-gravity";
  v6[2] = @"start-at-end";
  v6[3] = @"observe-trigger";
  v6[4] = @"observe-trigger-delay";
  v6[5] = @"observe-trigger-value";
  v6[6] = @"url";
  v3 = [NSArray arrayWithObjects:v6 count:7];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E5FC0;
  qword_2E5FC0 = v4;
}

void sub_18FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_19064;
  v5[3] = &unk_25E010;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  [a3 sortUsingComparator:v5];
}

uint64_t sub_19064(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v9 = [v7 groupPriority];
  if (v9 >= [v8 groupPriority])
  {
    v11 = [v7 groupPriority];
    if (v11 <= [v8 groupPriority])
    {
      v12 = [*(*(a1 + 40) + 8) indexOfObject:v5];
      v13 = [*(*(a1 + 40) + 8) indexOfObject:v6];
      if (v12 < v13)
      {
        v10 = -1;
      }

      else
      {
        v10 = v12 > v13;
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

void sub_19B78(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 newAdded];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_19CD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 newRemoved];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

double sub_19F7C()
{
  v0 = +[NSDate date];
  [v0 timeIntervalSinceReferenceDate];
  v2 = v1;

  return v2;
}

void sub_19FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [*(*(a1 + 32) + 16) addObject:WeakRetained];
    WeakRetained = v8;
    v3 = *(a1 + 32);
    if (*(v3 + 32))
    {
      if (*(a1 + 48) >= *(v3 + 40))
      {
        v4 = *(a1 + 48);
      }

      else
      {
        v4 = *(v3 + 40);
      }

      v5 = [TUIVisibilityChangeRecord alloc];
      v6 = [*(*(a1 + 32) + 32) newAdded];
      v7 = [(TUIVisibilityChangeRecord *)v5 initWithLastTimestamp:v6 timestamp:v4 rootNode:v4];

      [v8 visibleContentsChanged:v7];
      WeakRetained = v8;
    }
  }
}

void sub_1A17C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [*(*(a1 + 32) + 16) removeObject:WeakRetained];
    WeakRetained = v8;
    v3 = *(a1 + 32);
    if (*(v3 + 32))
    {
      if (*(a1 + 48) >= *(v3 + 40))
      {
        v4 = *(a1 + 48);
      }

      else
      {
        v4 = *(v3 + 40);
      }

      v5 = [TUIVisibilityChangeRecord alloc];
      v6 = [*(*(a1 + 32) + 32) newRemoved];
      v7 = [(TUIVisibilityChangeRecord *)v5 initWithLastTimestamp:v6 timestamp:v4 rootNode:v4];

      [v8 visibleContentsChanged:v7];
      WeakRetained = v8;
    }
  }
}

uint64_t sub_1A88C(uint64_t result)
{
  *(*(result + 32) + 88) &= ~4u;
  *(*(result + 32) + 88) |= 8u;
  return result;
}

void sub_1B428(uint64_t a1, void *a2, void *a3, CGFloat a4)
{
  v16 = a2;
  v7 = a3;
  [v16 frame];
  width = v18.size.width;
  height = v18.size.height;
  v11 = *(a1 + 56) + v10;
  v13 = v12 + *(a1 + 64);
  v18.origin.x = v11;
  v18.origin.y = v13;
  if (CGRectIntersectsRect(v18, *(*(a1 + 32) + 56)))
  {
    v14 = fmin(width, *(a1 + 72));
    v15 = fmin(height, *(a1 + 80));
    v19.origin.x = v11;
    v19.origin.y = v13;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectIntersection(v19, *(*(a1 + 32) + 56));
    if (v20.size.width * v20.size.height / (v14 * v15) >= a4)
    {
      [*(a1 + 40) addObject:v7];
      [*(a1 + 48) setObject:v16 forKeyedSubscript:v7];
    }
  }
}

void sub_1B72C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_UTILITY, 0);

  v2 = dispatch_queue_create("TUIVisibilityController.sharedQueue", attr);
  v3 = qword_2E5FD0;
  qword_2E5FD0 = v2;
}

id sub_1C288(uint64_t a1)
{
  [*(a1 + 32) q_updateVisibleBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 q_setNeedsUpdateForCollector:v3];
}

id sub_1C490(uint64_t a1)
{
  [*(a1 + 32) q_updateVisibleBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) q_updateVisible:*(a1 + 80)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 q_setNeedsUpdateForCollector:v3];
}

id sub_1CACC(uint64_t a1)
{
  [*(a1 + 32) q_updateVisibleBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 q_setNeedsUpdateForCollector:v3];
}

id sub_1CD30(uint64_t a1)
{
  [*(a1 + 32) q_updateVisibleBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [*(a1 + 32) q_updateVisible:*(a1 + 80)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 q_setNeedsUpdateForCollector:v3];
}

void sub_1DFF8(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSizeAndIntrinsic];
  v2 = [v1 mutableCopy];

  v6[0] = @"progress-id";
  v6[1] = @"mode";
  v6[2] = @"progress";
  v6[3] = @"paused";
  v6[4] = @"color";
  v6[5] = @"kind";
  v6[6] = @"instance";
  v6[7] = @"parameters";
  v3 = [NSArray arrayWithObjects:v6 count:8];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E5FE8;
  qword_2E5FE8 = v4;
}

void TUICastStatsDump()
{
  NSLog(@"Cast per file");
  sub_1E3A8(v0, qword_2E5FF8);
  NSLog(@"\nCast per callsite");
  sub_1E3A8(v1, qword_2E6008);
  NSLog(@"\nCast per type");
  sub_1E3A8(v2, qword_2E6000);
  NSLog(@"\nTotal casts: %lu", qword_2E6010);
}

void sub_1E3A8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 allKeys];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1E4C4;
  v9[3] = &unk_25E190;
  v4 = v2;
  v10 = v4;
  v5 = [v3 sortedArrayUsingComparator:v9];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1E550;
  v7[3] = &unk_25E1B8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

uint64_t sub_1E4C4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v10 = [v9 unsignedIntegerValue];
  if (v8 < v10)
  {
    return -1;
  }

  else
  {
    return v8 > v10;
  }
}

void sub_1E550(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:v3];
  NSLog(@"%8lu : %@", [v4 unsignedIntegerValue], v3);
}

void TUICastRecord(uint64_t a1, int a2, uint64_t a3)
{
  if (qword_2E6020 != -1)
  {
    sub_1997BC();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1E6AC;
  block[3] = &unk_25E1F8;
  block[4] = a1;
  block[5] = a3;
  v7 = a2;
  dispatch_sync(qword_2E6018, block);
}

void sub_1E66C(id a1)
{
  v1 = dispatch_queue_create("TemplateUI.castStats", 0);
  v2 = qword_2E6018;
  qword_2E6018 = v1;
}

void sub_1E6AC(uint64_t a1)
{
  ++qword_2E6010;
  if (!qword_2E5FF8)
  {
    v2 = objc_opt_new();
    v3 = qword_2E5FF8;
    qword_2E5FF8 = v2;
  }

  if (!qword_2E6000)
  {
    v4 = objc_opt_new();
    v5 = qword_2E6000;
    qword_2E6000 = v4;
  }

  if (!qword_2E6008)
  {
    v6 = objc_opt_new();
    v7 = qword_2E6008;
    qword_2E6008 = v6;
  }

  v16 = [NSString stringWithUTF8String:*(a1 + 32)];
  v8 = [NSString stringWithUTF8String:*(a1 + 40)];
  v9 = [NSString stringWithFormat:@"%s:%lu", *(a1 + 32), *(a1 + 48)];
  v10 = [qword_2E5FF8 objectForKeyedSubscript:v16];
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 unsignedIntegerValue] + 1);
  [qword_2E5FF8 setObject:v11 forKeyedSubscript:v16];

  v12 = [qword_2E6000 objectForKeyedSubscript:v8];
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 unsignedIntegerValue] + 1);
  [qword_2E6000 setObject:v13 forKeyedSubscript:v8];

  v14 = [qword_2E6008 objectForKeyedSubscript:v9];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 unsignedIntegerValue] + 1);
  [qword_2E6008 setObject:v15 forKeyedSubscript:v9];
}

id TUIDynamicCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TUIStaticCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id TUIProtocolCast(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:v3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id TUIStaticProtocolCast(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4 && [v4 conformsToProtocol:v3])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id TUIClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v14 = &a9;
    if (!a3)
    {
LABEL_6:
      v12 = v10;
      goto LABEL_8;
    }

    while (1)
    {
      v11 = v14++;
      if (([v10 conformsToProtocol:*v11] & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v12 = 0;
LABEL_8:

  return v12;
}

id TUIStaticClassAndProtocolCast(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v15 = &a9;
    if (!a3)
    {
LABEL_6:
      v13 = v10;
      goto LABEL_9;
    }

    while (1)
    {
      v11 = v15++;
      v12 = *v11;
      if (([v10 conformsToProtocol:v12] & 1) == 0)
      {
        break;
      }

      if (!--a3)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = 0;
LABEL_9:

  return v13;
}

CFTypeRef TUICFTypeCast(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  if (CFGetTypeID(cf) == a1)
  {
    return cf;
  }

  return 0;
}

void sub_1F158(id a1)
{
  v1 = +[TUIAttributeSet supportedAttributesSize];
  v2 = [v1 mutableCopy];

  v6[0] = @"accepts-drop";
  v6[1] = @"deceleration-rate";
  v3 = [NSArray arrayWithObjects:v6 count:2];
  [v2 addAttributesFromArray:v3];

  v4 = [v2 copy];
  v5 = qword_2E6028;
  qword_2E6028 = v4;
}

void sub_205B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TUIVStack;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_212DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21464(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3AAC();
}

void sub_21CF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained q_updateSnapshot];
}

void sub_21EFC(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 56) == 1)
  {
    v7 = v5;
  }

  else
  {
    if (![v5 timingCountWithTime:*(a1 + 40) threshold:*(a1 + 48)])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = [v6 copy];
  }

  v8 = v7;
  if (v7)
  {
    [v7 becameHiddenAtTime:*(a1 + 40) threshold:*(a1 + 48)];
    if ([v8 timingCount])
    {
      v9 = *(a1 + 32);
      v10 = [v8 identifier];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }
  }

LABEL_9:
}

void sub_22088(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [v7 added];
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v36;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = [v7 attributesMap];
        v16 = [v15 objectForKeyedSubscript:v14];

        v17 = [v16 data];
        [v16 size];
        v18 = [v8 impressionForData:v17 size:1 create:?];

        [v18 becameVisibleAtTime:a3];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v11);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [v7 removed];
  v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v32;
    do
    {
      v23 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v8 impressionForIdentifier:*(*(&v31 + 1) + 8 * v23)];
        [v24 becameHiddenAtTime:a3 threshold:a4];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v21);
  }

  v25 = [v7 identifierNodeMap];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_22B48;
  v27[3] = &unk_25E300;
  v29 = a3;
  v30 = a4;
  v28 = v8;
  v26 = v8;
  [v25 enumerateKeysAndObjectsUsingBlock:v27];
}