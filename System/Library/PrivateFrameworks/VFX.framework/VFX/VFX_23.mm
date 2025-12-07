void *sub_1AF26DBE0(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Jittering");
  *result = &unk_1F24EB9B0;
  result[3] = a2;
  result[4] = 0;
  return result;
}

uint64_t sub_1AF26DC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26DCA8@<X0>(uint64_t a1@<X8>)
{
  v3[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v3, 6893, 9273, 1656467160);
  return sub_1AF2696E4(a1, v3, 1);
}

unint64_t sub_1AF26DD24(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1AF1309BC(*(a1 + 24));
  v4 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 32) = ++v4;
  }

  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v2)))) ^ ((0x9DDFEA08EB382D69 * (v2 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v2)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v2)))) >> 47));
}

void sub_1AF26DD8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1AF1309BC(*(a1 + 24)))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v27, 9273, 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(&v28, v27);
    v6 = sub_1AF24736C(a3, "Jittering input color", &v28);
    v7 = CFX::RG::Resource::constTextureDesc(v6);
    v8 = v7[1];
    v28 = *v7;
    v29 = v8;
    v9 = v7[5];
    v11 = v7[2];
    v10 = v7[3];
    v32 = v7[4];
    v33 = v9;
    v30 = v11;
    v31 = v10;
    v12 = v7[9];
    v14 = v7[6];
    v13 = v7[7];
    v36 = v7[8];
    v37 = v12;
    v34 = v14;
    v35 = v13;
    v15 = sub_1AF233CC8(a3, "Jittering output color", &v28);
    v16 = CFX::RG::Resource::constTextureDesc(v6);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v28, v16, 1);
    v18 = CFX::RG::copyIfNeeded(a3, v6, 0, &v28, "Jittering color input resolve", v17);
    v19 = *(a2 + 32);
    v20 = *(a1 + 24);
    *&v28 = "Jittering";
    *(&v28 + 1) = v20;
    LOWORD(v29) = 0;
    *(&v29 + 1) = v18;
    *&v30 = v15;
    v21 = sub_1AF241BA4(a3, v19, &v28);
    if (sub_1AF1309E8(*(a1 + 24)))
    {
      v22 = *(v21 + 24);
      v23 = *v22;
      if (*v22)
      {
        v24 = v22 + 1;
        v25 = -25147;
        do
        {
          v25 = 403 * (v25 ^ v23);
          v26 = *v24++;
          v23 = v26;
        }

        while (v26);
      }

      else
      {
        v25 = -25147;
      }

      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, *(a1 + 8), v25, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v28, v15, v21);
    }
  }

  else
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v28, 9273, 9273, 1656467160);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v27, *(a1 + 8), 64484, 1656467160);
    CFX::RG::RenderGraphBuilder::aliasResourceReference(a3, v28, v27);
  }
}

void *sub_1AF26DF84(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PathTracer");
  *result = &unk_1F24EBA08;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26DFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26E04C@<X0>(uint64_t a1@<X8>)
{
  v8[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 53296, 9273, 1893898584);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v4, 53296, 9273, 1490954098);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v5, 53296, 9273, -287492009);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v6, 53296, 9273, 1251382574);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v7, 53296, 9273, -1170177454);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v8, 53296, 9273, -797957750);
  return sub_1AF2696E4(a1, &v3, 6);
}

void sub_1AF26E14C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 24), 1);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1251382574);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v22 = sub_1AF24736C(a3, "PathTracer input emission", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1490954098);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v21 = sub_1AF24736C(a3, "PathTracer input normals", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 1893898584);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v20 = sub_1AF24736C(a3, "PathTracer input albedo", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -287492009);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v19 = sub_1AF24736C(a3, "PathTracer input roughmetalTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -1170177454);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v18 = sub_1AF24736C(a3, "PathTracer input velocityTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -797957750);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v6 = sub_1AF24736C(a3, "PathTracer input depthTarget", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -495228831);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v7 = sub_1AF24736C(a3, "HybridRenderer input clearCoat", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, -965507924);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v8 = sub_1AF24736C(a3, "HybridRenderer input subsurface", &v24);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v23, 9273, 9273, 2057617157);
  CFX::RG::ResourceReference::ResourceReference(&v24, v23);
  v9 = sub_1AF24736C(a3, "HybridRenderer input transmission", &v24);
  v24 = *(a1 + 24);
  LOWORD(v25) = 15;
  v10 = sub_1AF24983C();
  if ((atomic_load_explicit(byte_1ED73AA78, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF09B0();
  }

  if (byte_1ED73AA70)
  {
    v11 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v11 = 0;
  }

  v12 = CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v11, *(a2 + 16), &v24);
  if (v25)
  {
    v13 = v26;
    v14 = 8 * v25;
    do
    {
      v15 = *v13++;
      v12 = CFX::RG::Pass::dependsOn(v10, v15);
      v14 -= 8;
    }

    while (v14);
  }

  v24 = *(a1 + 24);
  v25 = CFX::RG::ResourceIdentifier::finalColor(v12);
  v16 = sub_1AF24836C();
  CFX::RG::Pass::dependsOn(v16, v10);
  sub_1AF248314(v16, v6, 0);
  sub_1AF248314(v16, v21, 1u);
  sub_1AF248314(v16, v20, 2u);
  sub_1AF248314(v16, v19, 3u);
  sub_1AF248314(v16, v18, 4u);
  sub_1AF248314(v16, v22, 5u);
  sub_1AF248314(v16, v7, 6u);
  sub_1AF248314(v16, v8, 7u);
  sub_1AF248314(v16, v9, 8u);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v24, *(a1 + 8), 21755, 1656467160);
  v17 = sub_1AF248360(v16);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v24, v17, v16);
}

CFX::RG::Pass *sub_1AF26E55C(CFX::RG *a1, uint64_t **a2, CFX::RG::TextureDescriptorReference *a3, uint64_t a4, uint64_t a5, const CFX::RG::Resource **a6, CFX::RG::TextureDescriptorReference *a7)
{
  v14 = sub_1AF1BB260(*(a4 + 16), a2);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v76 = a6;
  v16 = *a5;
  v17 = *(a5 + 56);
  v18 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a5);
  v70 = *v18;
  v19 = *(v18 + 4);
  v97 = *(v18 + 12);
  v98 = *(v18 + 5);
  v69 = v19;
  *(a4 + 8) = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v19), xmmword_1AFE42F50), 0x30uLL)));
  v21 = (*(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *a5) + 12) >> 40) & 0xF;
  if (v21 == 4 || v21 == 2)
  {
    v23 = sub_1AF12F398(a3, v20);
    if (v23)
    {
      v24 = *(v23 + 32);
      if (v24)
      {
        if (v24(a3))
        {
          *&v82 = a3;
          *(&v82 + 1) = v16;
          v83 = *(a5 + 8);
          v17 = sub_1AF243B18(a1, &v82, v17);
          v16 = *(v17 + 57);
        }
      }
    }
  }

  log = v15;
  v25 = CFX::RG::Resource::constTextureDesc(v16);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v82, v25, 1);
  v28 = CFX::RG::copyIfNeeded_r(a1, v16, v17, &v82, "PostProcess color input resolve", v26);
  v29 = v27;
  v30 = *(a5 + 16);
  if (v30)
  {
    if (*(a4 + 2))
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(a4 + 2) = 0;
  }

  if (*(a4 + 3) == 1)
  {
LABEL_17:
    v71 = a7;
    v32 = *(a5 + 56);
    v33 = CFX::RG::Resource::constTextureDesc(v30);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v82, v33, 1);
    v35 = CFX::RG::copyIfNeeded(a1, v30, v32, &v82, "PostProcess depth input resolve", v34);
    if (*(a4 + 2))
    {
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v82);
      v36 = *(a4 + 16);
      v85 = a3;
      v86 = v36;
      v37 = *(a5 + 40);
      v87 = *a5;
      v88 = v37;
      v38 = *(a5 + 16);
      v90 = 0;
      v91 = 0;
      v89 = v38;
      v92 = *(a5 + 24);
      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v29 = sub_1AF2678F0(a2, &v82, v29);
      v28 = v95;
    }

    a7 = v71;
    goto LABEL_21;
  }

  v35 = 0;
LABEL_21:
  if (*(a4 + 5) == 1)
  {
    v39 = sub_1AF15C3C4(log, v27);
    *&v82 = a3;
    *(&v82 + 1) = v28;
    v83 = *(a5 + 48);
    *v84 = v39;
    v29 = sub_1AF246708(a1, &v82);
    v28 = *(v29 + 60);
  }

  if (*(a4 + 6) == 1)
  {
    v40 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v28);
    v41 = v40[2];
    v80 = *v40;
    v81 = v41;
    v42 = *(a4 + 16);
    *&v82 = a3;
    *(&v82 + 1) = v42;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v83, &v80);
    v87 = v28;
    v88 = 0;
    v29 = sub_1AF23D550(a1, a2, &v82, v29);
    v28 = *(v29 + 78);
  }

  v82 = *a4;
  v83 = *(a4 + 16);
  sub_1AF238B24(&v80, a3, &v82);
  if (sub_1AF238B28(&v80))
  {
    v79[0] = a3;
    v79[1] = v28;
    v79[2] = a7;
    v31 = sub_1AF239D74(a1, v79, a4, &v80);
    CFX::RG::Pass::dependsOn(v31, v29);
    v72 = v35;
    if (*(a4 + 3) == 1)
    {
      *&v82 = a3;
      *(&v82 + 1) = v28;
      v44 = *(a4 + 16);
      v83 = v35;
      *v84 = v44;
      *&v84[8] = sub_1AF15C2CC(log, v43);
      *&v84[16] = 0;
      v45 = sub_1AF23CB30(a2, &v82, v29, 0);
      v46 = *(v45 + 80);
      sub_1AF239C9C(v31, v46);
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    if (*(a4 + 4) == 1)
    {
      v48 = sub_1AF15C994(log, v43);
      if (!v48)
      {
        loga = sub_1AF0D5194(0, v47);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF09E8(loga);
        }
      }

      v49 = sub_1AF160FEC(v48, v47);
      v51 = sub_1AF163080(v48, v50);
      v52 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v28);
      v53 = v52[2];
      v77 = *v52;
      v78 = v53;
      if (v46)
      {
        v54 = v46;
      }

      else
      {
        v54 = v28;
      }

      *&v82 = a3;
      *(&v82 + 1) = v54;
      *&v83 = v49;
      *v84 = v51;
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v84[8], &v77);
      v89 = 0;
      if (v45)
      {
        v55 = v45;
      }

      else
      {
        v55 = v29;
      }

      v45 = sub_1AF242D84(a1, a2, &v82, v55);
      v46 = *(v45 + 63);
      logb = v45;
    }

    else
    {
      logb = 0;
    }

    if (*(a4 + 1) == 1)
    {
      v56 = *(a4 + 16);
      *&v82 = a3;
      *(&v82 + 1) = v56;
      if (v46)
      {
        v57 = v46;
      }

      else
      {
        v57 = v28;
      }

      v83 = v57;
      *v84 = v70;
      *&v84[4] = v69;
      *&v84[12] = v97;
      *&v84[20] = v98;
      if (v45)
      {
        v58 = v45;
      }

      else
      {
        v58 = v29;
      }

      v59 = sub_1AF237040(a1, a2, &v82, v58);
    }

    else
    {
      v59 = 0;
    }

    if (*(a4 + 7) == 1)
    {
      v60 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v28);
      v61 = v60[2];
      v77 = *v60;
      v78 = v61;
      v62 = *(a4 + 16);
      *&v82 = a3;
      *(&v82 + 1) = v62;
      CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v83, &v77);
      v63 = v46 ? v46 : v28;
      v87 = v59;
      v88 = v63;
      v89 = 0;
      v64 = v45 ? v45 : v29;
      v29 = sub_1AF2382EC(a1, a2, &v82, v64);
      v28 = *(v29 + 61);
      CFX::RG::Pass::dependsOn(v31, v29);
      if (*(a4 + 1) == 1)
      {
        CFX::RG::Pass::dependsOn(v29, v59);
      }
    }

    if (*(a4 + 1) == 1 && (*(a4 + 7) & 1) == 0)
    {
      sub_1AF239CE4(v31, v59[101]);
      CFX::RG::Pass::dependsOn(v31, v59);
    }

    if (logb && *(a4 + 4) == 1 && (*(a4 + 7) & 1) == 0)
    {
      sub_1AF239D2C(v31, logb[63].isa);
    }

    v65 = CFX::RG::Resource::textureDesc(v28);
    CFX::RG::TextureDescriptorReference::withSampleCount(&v82, v65, 1);
    v67 = CFX::RG::copyIfNeeded(a1, v28, v29, &v82, 0, v66);
    sub_1AF239C0C(v31, v67);
    sub_1AF239C54(v31, v72);
    v28 = *(v31 + 68);
  }

  else
  {
    v31 = v29;
  }

  *v76 = v28;
  return v31;
}

void *sub_1AF26EB60(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "PostProcess");
  *result = &unk_1F24EBA60;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26EC28(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AF23891C(v4, *(a1 + 24), 0);
  *a2 = 0;
  a2[1] = a2 + 2;
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, 1656467160);
  sub_1AF269758(a2, &v3);
  if ((v5 & 1) != 0 || v6 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -797957750);
    sub_1AF269758(a2, &v3);
  }

  if (v7 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -1170177454);
    sub_1AF269758(a2, &v3);
  }

  if (v5 == 1)
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, 1348742528);
    sub_1AF269758(a2, &v3);
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&v3, 9273, 9273, -31245996);
    sub_1AF269758(a2, &v3);
  }
}

void sub_1AF26ED48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 4))
  {
    free(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1AF26ED74(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(*(a1 + 24), a2);
  v5 = sub_1AF1D09F8(v3, v4);
  sub_1AF23891C(&v21, *(a1 + 24), 0);
  v6 = *(a1 + 24);
  v16 = v21;
  v17 = v22;
  sub_1AF238B24(v18, v6, &v16);
  v7 = *(a1 + 8);
  v9 = sub_1AF12F398(*(a1 + 24), v8);
  if (v9)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      v10 = (v10)(*(a1 + 24));
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v7)));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v19)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v19)));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ v5)));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v20)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v20)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v20)))) >> 47));
}

void sub_1AF26EE9C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v6 = sub_1AF12F10C(*(a1 + 24), a2);
  if (v6 && sub_1AF1BB260(v6, v7))
  {
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    CFX::RG::ResourceIdentifier::ResourceIdentifier(v16, 9273, 9273, 1656467160);
    CFX::RG::ResourceReference::ResourceReference(v18, v16[0]);
    v19 = sub_1AF24736C(a3, "Post process input color", v18);
    v17 = 0;
    if (sub_1AF130E10(*(a1 + 24), &v17))
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(v16, 9273, 9273, 1673244779);
      CFX::RG::ResourceReference::ResourceReference(v18, v16[0]);
      *&v20 = sub_1AF24736C(a3, "Post process input color1", v18);
    }

    sub_1AF23891C(v16, *(a1 + 24), 0);
    if ((v16[0] & 0x10000) != 0 || BYTE3(v16[0]) == 1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, 9273, 9273, -797957750);
      CFX::RG::ResourceReference::ResourceReference(v18, v15);
      *(&v20 + 1) = sub_1AF24736C(a3, "Post process input depth", v18);
      if ((v16[0] & 0x10000) != 0)
      {
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, 9273, 9273, 1348742528);
        CFX::RG::ResourceReference::ResourceReference(v18, v15);
        *&v21 = sub_1AF24736C(a3, "Post process input normal roughness", v18);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, 9273, 9273, -31245996);
        CFX::RG::ResourceReference::ResourceReference(v18, v15);
        *(&v21 + 1) = sub_1AF24736C(a3, "Post process input albedo metalness", v18);
        CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, 9273, 9273, 145493432);
        CFX::RG::ResourceReference::ResourceReference(v18, v15);
        *&v22 = sub_1AF24736C(a3, "Post process input radiance AO", v18);
      }
    }

    if (BYTE5(v16[0]) == 1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, 9273, 9273, -1170177454);
      CFX::RG::ResourceReference::ResourceReference(v18, v15);
      *(&v22 + 1) = sub_1AF24736C(a3, "Post process input velocity", v18);
    }

    v18[0] = 0;
    v8 = sub_1AF26E55C(a3, a2, *(a1 + 24), v16, &v19, v18, 0);
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + 3);
      v11 = *v10;
      if (*v10)
      {
        v12 = v10 + 1;
        v13 = -25147;
        do
        {
          v13 = 403 * (v13 ^ v11);
          v14 = *v12++;
          v11 = v14;
        }

        while (v14);
      }

      else
      {
        v13 = -25147;
      }

      CFX::RG::ResourceIdentifier::ResourceIdentifier(&v15, *(a1 + 8), v13, 1656467160);
      CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v15, v18[0], v9);
    }
  }
}

void *sub_1AF26F19C(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "RayTracer");
  *result = &unk_1F24EBAB8;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26F1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

uint64_t sub_1AF26F264@<X0>(CFX::RG::ResourceIdentifier *a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = CFX::RG::ResourceIdentifier::finalColor(a1);
  return sub_1AF2696E4(a2, v4, 1);
}

void sub_1AF26F2D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1AF130BD8(*(a1 + 24), 1);
  v14 = *(a1 + 24);
  LOWORD(v15) = 15;
  v6 = sub_1AF24983C();
  if ((atomic_load_explicit(byte_1ED73AA88, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0A6C();
  }

  if (byte_1ED73AA80)
  {
    v7 = 0xF00CF1A885CF4FA4;
  }

  else
  {
    v7 = 0;
  }

  v8 = CFX::RG::RenderGraphBuilder::passesMatchingClassIdentifier(a3, v7, *(a2 + 16), &v14);
  if (v15)
  {
    v9 = v16;
    v10 = 8 * v15;
    do
    {
      v11 = *v9++;
      v8 = CFX::RG::Pass::dependsOn(v6, v11);
      v10 -= 8;
    }

    while (v10);
  }

  v14 = *(a1 + 24);
  v15 = CFX::RG::ResourceIdentifier::finalColor(v8);
  v12 = sub_1AF249300(a3, a2, &v14);
  CFX::RG::Pass::dependsOn(v12, v6);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v14, *(a1 + 8), 29994, 1656467160);
  v13 = sub_1AF2492F8(v12);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v14, v13, v12);
}

void *sub_1AF26F42C(CFX::RG::Subgraph *a1, uint64_t a2)
{
  result = CFX::RG::Subgraph::Subgraph(a1, "Remote");
  *result = &unk_1F24EBB10;
  result[3] = a2;
  return result;
}

uint64_t sub_1AF26F478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  CFX::RG::ResourceIdentifier::ResourceIdentifier(v4, *(a1 + 8), 9273, 1656467160);
  return sub_1AF2696E4(a2, v4, 1);
}

CFX::RG::ResourceIdentifier *sub_1AF26F4F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[1] = *MEMORY[0x1E69E9840];
  result = sub_1AF131088(*(a1 + 24));
  if (result)
  {
    v4[0] = CFX::RG::ResourceIdentifier::finalColor(result);
    return sub_1AF2696E4(a2, v4, 1);
  }

  else
  {
    *a2 = 0;
    a2[1] = a2 + 2;
  }

  return result;
}

void sub_1AF26F584(uint64_t a1, uint64_t a2, CFX::RG::RenderGraphBuilder *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = sub_1AF131088(*(a1 + 24));
  v6 = sub_1AF12E2A0(*(a1 + 24));
  v7 = sub_1AF13103C(*(a1 + 24));
  if ((v6 & 1) != 0 || v7)
  {
    v10 = sub_1AF12F10C(*(a1 + 24), v8);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    v12 = sub_1AF12FAE0(*(a1 + 24));
    v41.n128_u64[0] = *(a1 + 24);
    v41.n128_u8[8] = 1;
    LOBYTE(v46) = 0;
    BYTE8(v47) = 0;
    v43 = 0;
    v44 = 0;
    v42 = v11;
    *&v48[1] = xmmword_1AFE42EB0;
    LOBYTE(v48[3]) = sub_1AF12FAD0(v41.n128_i64[0]);
    BYTE1(v48[3]) = sub_1AF130848(*(a1 + 24));
    *&v49 = 8;
    DWORD2(v49) = 1;
    WORD6(v49) = v12;
    v13 = sub_1AF23BCB4(a3, &v41, "MainCulling");
    v14 = *(a1 + 24);
    v15 = sub_1AF23B940(v13);
    v41.n128_u64[0] = v14;
    v41.n128_u64[1] = -1;
    v42 = v15;
    LOBYTE(v43) = v6;
    v16 = sub_1AF268A08(a3, &v41, v13);
    sub_1AF250334(*(a1 + 24), &v41);
    LOWORD(v43) = 257;
    BYTE2(v43) = 0;
    *(&v43 + 3) = v6;
    v44 = sub_1AF23B940(v13);
    v45 = 0;
    v47 = 0u;
    memset(v48, 0, sizeof(v48));
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v46 = -1;
    v52 = 0;
    v9 = sub_1AF24EA74(a3, &v41);
    *((*(*v9 + 32))(v9) + 281) = v6;
    CFX::RG::Pass::dependsOn(v9, v16);
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v9 = 0;
    if (!v5)
    {
      return;
    }
  }

  CFX::RG::TextureDescriptorReference::finalColor(&v41);
  v18 = sub_1AF12E2AC(*(a1 + 24), v17);
  v21 = objc_msgSend_sampleCount(v18, v19, v20);
  CFX::RG::TextureDescriptorReference::withSampleCount(v40, &v41, v21);
  v22 = sub_1AF233CC8(a3, "REMOTE COLOR OUTPUT", v40);
  *&v23 = CFX::RG::TextureDescriptorReference::withPixelFormat(&v30, &v41, 252).n128_u64[0];
  v26 = objc_msgSend_sampleCount(v18, v24, v25, v23);
  CFX::RG::TextureDescriptorReference::withSampleCount(v40, &v30, v26);
  v36 = v40[6];
  v37 = v40[7];
  v38 = v40[8];
  v39 = v40[9];
  v32 = v40[2];
  v33 = v40[3];
  v34 = v40[4];
  v35 = v40[5];
  v30 = v40[0];
  v31 = v40[1];
  v27 = sub_1AF233CC8(a3, "REMOTE DEPTH OUTPUT", &v30);
  v28 = *(a1 + 24);
  *&v30 = "Remote Clear Pass";
  *(&v30 + 1) = v28;
  LOWORD(v31) = 0;
  v29 = sub_1AF26F8E4(a3, &v30);
  CFX::RG::Pass::renderTo(v29, v22, 0x100000002, 0);
  CFX::RG::Pass::renderTo(v29, v27, 0x200000002, -1);
  if (v9)
  {
    CFX::RG::Pass::dependsOn(v29, v9);
  }

  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v30, *(a1 + 8), 9273, 1656467160);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v30, v22, v29);
  CFX::RG::ResourceIdentifier::ResourceIdentifier(&v30, *(a1 + 8), 9273, -797957750);
  CFX::RG::RenderGraphBuilder::publishResourceReference(a3, v30, v27, v29);
}

uint64_t sub_1AF26F8E4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF26F954(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

uint64_t sub_1AF26F954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x1D0u, 8u, 2);
  return sub_1AF24D5CC(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF26F9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Forward");
  sub_1AF26FA78(a2, &v7);
  sub_1AF26FAE4(a2, &v7);
  v3 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v3[4] = -1;
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  *(v3 + 1) = v4;
  v8 = sub_1AF26DBE0(v3, v7);
  sub_1AF1576F0((a2 + 8), &v8);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  *(a2 + 25) = 1;
  return result;
}

uint64_t sub_1AF26FA78(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x80uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  *(v4 + 2) = v5;
  *(v4 + 3) = v5;
  *(v4 + 4) = v5;
  *(v4 + 5) = v5;
  *(v4 + 6) = v5;
  *(v4 + 7) = v5;
  sub_1AF26A3B4(v4, *a2);
  v8 = v6;
  sub_1AF1576F0((a1 + 8), &v8);
  return v8;
}

void *sub_1AF26FAE4(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  v7 = sub_1AF26EB60(v4, *a2);
  sub_1AF1576F0((a1 + 8), &v7);
  return v7;
}

void *sub_1AF26FB44(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  v7 = sub_1AF268ECC(v4, *a2);
  sub_1AF1576F0((a1 + 8), &v7);
  return v7;
}

uint64_t sub_1AF26FBA4(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  v4[1] = v5;
  *(v4 + 4) = -1;
  v7 = sub_1AF2697B8(v4, *a2);
  sub_1AF1576F0((a1 + 8), &v7);
  return v7;
}

uint64_t sub_1AF26FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "PathTracer");
  sub_1AF26FCD8(a2, &v7);
  v3 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  *(v3 + 1) = v4;
  v8 = sub_1AF26DF84(v3, v7);
  sub_1AF1576F0((a2 + 8), &v8);
  sub_1AF26FAE4(a2, &v7);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  *(a2 + 25) = 1;
  return result;
}

void *sub_1AF26FCD8(uint64_t a1, uint64_t *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  v7 = sub_1AF26B3B0(v4, *a2);
  sub_1AF1576F0((a1 + 8), &v7);
  return v7;
}

uint64_t sub_1AF26FD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Hybrid");
  sub_1AF26FCD8(a2, &v6);
  v3 = malloc_type_malloc(0x800uLL, 0xBBD05BDCuLL);
  memset(v3, 255, 0x800uLL);
  sub_1AF26BD54(v3, v6);
  v7 = v3;
  sub_1AF1576F0((a2 + 8), &v7);
  sub_1AF26FAE4(a2, &v6);
  v4 = sub_1AF26FB44(a2, &v6);
  result = sub_1AF26FBA4(a2, &v6);
  *(result + 24) = *(v4 + 4);
  *(a2 + 25) = 1;
  return result;
}

void sub_1AF26FE10(uint64_t a1@<X0>, char a2@<W1>, unsigned int *a3@<X8>)
{
  v8 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a3, "Stereo");
  v5 = sub_1AF26FA78(a3, &v8);
  *(v5 + 49) = 1;
  *(v5 + 55) = a2;
  v6 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v6[4] = -1;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *v6 = v7;
  *(v6 + 1) = v7;
  v9 = sub_1AF269A78(v6, v8);
  sub_1AF1576F0(a3 + 2, &v9);
  *(v9 + 24) = *(v5 + 8);
}

uint64_t sub_1AF26FED0@<X0>(uint64_t a1@<X0>, CFX::RG::RenderGraphProvider *a2@<X8>)
{
  v5 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Holographic");
  v3 = sub_1AF26FA78(a2, &v5);
  *(v3 + 49) = 1;
  result = sub_1AF26FBA4(a2, &v5);
  *(result + 24) = *(v3 + 8);
  return result;
}

uint64_t sub_1AF26FF50@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  v7 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "RayTracer");
  sub_1AF26FCD8(a2, &v7);
  v3 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v4 = -1;
  *(&v4 + 1) = -1;
  *v3 = v4;
  *(v3 + 1) = v4;
  v8 = sub_1AF26F19C(v3, v7);
  sub_1AF1576F0(a2 + 2, &v8);
  sub_1AF26FAE4(a2, &v7);
  v5 = sub_1AF26FB44(a2, &v7);
  result = sub_1AF26FBA4(a2, &v7);
  *(result + 24) = *(v5 + 4);
  return result;
}

uint64_t sub_1AF270014@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X8>)
{
  v8 = a1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a2, "Remote");
  v4 = malloc_type_malloc(0x28uLL, 0xBBD05BDCuLL);
  v4[4] = -1;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *v4 = v5;
  *(v4 + 1) = v5;
  v9 = sub_1AF26F42C(v4, a1);
  sub_1AF1576F0(a2 + 2, &v9);
  v6 = v9;
  result = sub_1AF131088(a1);
  if (result)
  {
    result = sub_1AF26FBA4(a2, &v8);
    *(result + 24) = *(v6 + 4);
  }

  return result;
}

void *sub_1AF2700D0(uint64_t a1, void *a2, void *a3)
{
  v6 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *v6 = v7;
  *(v6 + 1) = v7;
  *(v6 + 2) = v7;
  *(v6 + 6) = -1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(v6, "Compute irradiance");
  v8 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  *(v8 + 6) = -1;
  v11 = sub_1AF26D44C(v8, a1, a2, a3);
  sub_1AF1576F0(v6 + 2, &v11);
  return v6;
}

void *sub_1AF270188(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v22 = a1;
  if ((atomic_load_explicit(&qword_1EB644870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB644870))
  {
    CFX::RG::ResourceIdentifier::ResourceIdentifier(&unk_1EB644868, "CustomAuthoring.Final.Color");
    __cxa_guard_release(&qword_1EB644870);
  }

  v6 = malloc_type_malloc(0x38uLL, 0xBBD05BDCuLL);
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *v6 = v7;
  *(v6 + 1) = v7;
  *(v6 + 2) = v7;
  *(v6 + 6) = -1;
  *(CFX::RG::RenderGraphProvider::RenderGraphProvider(v6, "Custom") + 25) = 1;
  v8 = malloc_type_malloc(0x48uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  *(v8 + 8) = -1;
  __p[0] = sub_1AF26A0B0(v8, v22, a3, a4);
  sub_1AF1576F0(v6 + 2, __p);
  v10 = sub_1AF26A340(__p[0]);
  v11 = *v10;
  if (v11)
  {
    v12 = *(v10 + 1);
    v13 = 8 * v11;
    while (1)
    {
      CFX::RG::ResourceIdentifier::ResourceIdentifier(__p, 6893, 6893, 1656467160);
      if (CFX::RG::ResourceIdentifier::match(v12, __p[0]))
      {
        break;
      }

      v12 += 4;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    sub_1AF26FA78(v6, &v22);
    sub_1AF26FAE4(v6, &v22);
  }

  v14 = malloc_type_malloc(0x20uLL, 0xBBD05BDCuLL);
  *&v15 = -1;
  *(&v15 + 1) = -1;
  *v14 = v15;
  *(v14 + 1) = v15;
  sub_1AF268ECC(v14, v22);
  CFX::RG::RenderGraphProvider::addSubgraph(v6, v14);
  *(sub_1AF26FBA4(v6, &v22) + 24) = *(v14 + 4);
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  if ((CFX::RG::RenderGraphProvider::resolve(v6) & 1) == 0)
  {
    if (v21 >= 0)
    {
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v16, __p);
    }

    else
    {
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v16, __p[0]);
    }

    objc_msgSend_addGenericRenderGraphErrorWithMessage_(a4, v18, v17);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

uint64_t sub_1AF270434(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1AF270460(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 88);
  v5 = sub_1AF130770(v4, a2, a3);
  prof_beginFlameSmallData("CRenderGraphEngineContextRenderFrame", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 1060, v5 | 0x300000000);
  sub_1AF270580(a1, v6, v7);
  if (sub_1AF27062C(a1))
  {
    if (*(a1 + 376) == 1 && (v8 = *(a1 + 776)) != 0)
    {
      sub_1AF272164(a1, v8, v9);
    }

    else
    {
      v12 = sub_1AF12F6A0(v4, v8) - 1;
      if (v12 >= 6)
      {
        v13 = 384;
      }

      else
      {
        v13 = qword_1AFE43208[v12];
      }

      sub_1AF272164(a1, a1 + v13, v11);
    }
  }

  else
  {
    sub_1AF272514(a1, v8);
    CFX::RG::RenderGraph::resolveResourceDescriptors(*(a1 + 56), (a1 + 120));
  }

  if (*(a1 + 56))
  {
    sub_1AF130890(v4, v10);
    sub_1AF270690(a1, v14, v15);
    sub_1AF2707AC(a1, v16, v17);
    sub_1AF270820(a1, v18, v19);
    sub_1AF270870(a1);
  }

  prof_endFlame();
}

void sub_1AF270580(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(*(a1 + 88), a2, a3);
  prof_beginFlameSmallData("Resources nextFrame", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 153, v4 | 0x300000000);
  if (*(a1 + 805) == 1)
  {
    *(a1 + 805) = 0;
    v5 = *(a1 + 64);
    if (v5)
    {
      ++*(v5 + 32);
    }
  }

  CFX::RG::RenderGraphContext::nextFrame((a1 + 120));
  v6 = sub_1AF12DF70(*(a1 + 88));
  if (v6)
  {
    sub_1AF70BDB8(v6, 0);
  }

  prof_endFlame();
}

uint64_t sub_1AF27062C(void *a1)
{
  v2 = a1[8];
  if (v2 && *(v2 + 25) == 1)
  {
    v3 = a1[7];
    v4 = CFX::RG::RenderGraphProvider::hash(v2, (a1 + 15));
    if (v3 && v4 && a1[6] == v4)
    {
      return 0;
    }

    a1[6] = v4;
  }

  return 1;
}

void sub_1AF270690(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(*(a1 + 88), a2, a3);
  prof_beginFlameSmallData("setup", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 396, v4 | 0x300000000);
  v5 = *(a1 + 56);
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v8 = sub_1AF12E2AC(*(a1 + 88), v7);
  v12 = objc_msgSend_commandQueue(v8, v9, v10);
  if (*(a1 + 806) != 1 || (v13 = *(a1 + 872)) == 0)
  {
    v14 = sub_1AF12E2AC(*(a1 + 88), v11);
    v13 = objc_msgSend_currentCommandBuffer(v14, v15, v16);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v17, MTLDevice, v12, v13);
  LODWORD(v18) = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v19, v17);
  CFX::RG::RenderGraph::execute(v5, a1 + 120, 0, &v18);
  sub_1AF2680B0(&v18);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v17);
  prof_endFlame();
}

void sub_1AF27077C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, id);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  prof_endFlame();
  _Unwind_Resume(a1);
}

void sub_1AF2707AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(*(a1 + 88), a2, a3);
  prof_beginFlameSmallData("prepare", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 406, v4 | 0x300000000);
  sub_1AF2725E8(a1, *(a1 + 56));

  prof_endFlame();
}

void sub_1AF270820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 806) == 1)
  {
    sub_1AF272788(a1, *(a1 + 56));
  }

  v4 = *(a1 + 56);

  sub_1AF272F8C(a1, v4, a3);
}

void sub_1AF270870(uint64_t a1)
{
  v2 = *(a1 + 56);
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v5 = sub_1AF12E2AC(*(a1 + 88), v4);
  v9 = objc_msgSend_commandQueue(v5, v6, v7);
  if (*(a1 + 806) != 1 || (v10 = *(a1 + 872)) == 0)
  {
    v11 = sub_1AF12E2AC(*(a1 + 88), v8);
    v10 = objc_msgSend_currentCommandBuffer(v11, v12, v13);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v17, MTLDevice, v9, v10);
  LODWORD(v18) = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v19, v17);
  CFX::RG::RenderGraph::execute(v2, a1 + 120, 3, &v18);
  sub_1AF2680B0(&v18);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v17);
  v16 = sub_1AF130770(*(a1 + 88), v14, v15);
  prof_beginFlameSmallData("Destroy graph", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 421, v16 | 0x300000000);
  if (!*(a1 + 360))
  {
    sub_1AF271C74(**(a1 + 56), *(*(a1 + 56) + 8), *(a1 + 56));
    *(a1 + 56) = 0;
  }

  prof_endFlame();
}

uint64_t sub_1AF2709AC(uint64_t result, uint64_t a2)
{
  *(result + 784) = a2;
  v2 = *(result + 64);
  if (v2)
  {
    ++*(v2 + 32);
  }

  return result;
}

uint64_t sub_1AF2709C8(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    ++*(v1 + 32);
  }

  return result;
}

uint64_t sub_1AF2709E0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

id sub_1AF270A00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_UTF8String(a2, a2, a3);
  v7 = objc_msgSend_lengthOfBytesUsingEncoding_(a2, v6, 4);
  if (!v5)
  {
    v14 = 0;
    goto LABEL_25;
  }

  v8 = 0xC6A4A7935BD1E995 * v7;
  if (v7 >= 8)
  {
    v9 = v7 >> 3;
    v10 = &v5[8 * v9];
    v11 = 8 * v9;
    do
    {
      v12 = *v5;
      v5 += 8;
      v8 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v12) ^ ((0xC6A4A7935BD1E995 * v12) >> 47))) ^ v8);
      v11 -= 8;
    }

    while (v11);
    v5 = v10;
  }

  v13 = v7 & 7;
  if (v13 > 3)
  {
    if ((v7 & 7) > 5)
    {
      if (v13 != 6)
      {
        v8 ^= v5[6] << 48;
      }

      v8 ^= v5[5] << 40;
    }

    else if (v13 == 4)
    {
      goto LABEL_20;
    }

    v8 ^= v5[4] << 32;
LABEL_20:
    v8 ^= v5[3] << 24;
LABEL_21:
    v8 ^= v5[2] << 16;
    goto LABEL_22;
  }

  if ((v7 & 7) <= 1)
  {
    if ((v7 & 7) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v13 != 2)
  {
    goto LABEL_21;
  }

LABEL_22:
  v8 ^= v5[1] << 8;
LABEL_23:
  v8 = 0xC6A4A7935BD1E995 * (v8 ^ *v5);
LABEL_24:
  v14 = (((0xC6A4A7935BD1E995 * (v8 ^ (v8 >> 47))) >> 32) >> 15) ^ (1540483477 * (v8 ^ (v8 >> 47)));
LABEL_25:
  v15 = *(a1 + 144);

  return CFX::GPUResourceManager::getRegisteredFrameTextureNamed(v15, v14);
}

void *sub_1AF270B44(CFX::RG::Temporal *a1, CFX::RG::Resource *a2)
{
  v3 = *(a1 + 18);
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::GPUResourceManager::getTexture(v3, a2, v4);
}

double sub_1AF270B90(uint64_t a1, uint64_t a2)
{
  sub_1AF3B24C8(a2, &v4);
  result = *&v4;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  return result;
}

void sub_1AF270BD4(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(a1 + 88);
  if (a2)
  {
    v7 = sub_1AF270188(v5, a1 + 120, a2, a3);
    v8 = v7;
    if (*(v7 + 24) == 1)
    {
      sub_1AF3D2BA0(a2, *(a1 + 88));

      sub_1AF270CD8(a1, v8);
    }

    else
    {
      CFX::RG::RenderGraphProvider::~RenderGraphProvider(v7);

      free(v16);
    }
  }

  else
  {
    v9 = sub_1AF12F434(v5, 0);
    v12 = objc_msgSend__showsAuthoringEnvironment(v9, v10, v11);
    sub_1AF270CD8(a1, 0);
    if (a3 && v12)
    {
      v14 = sub_1AF12DDCC(*(a1 + 88), v13);
      v15 = sub_1AF16CDEC(v14);

      sub_1AF3C592C(v15, a3);
    }
  }
}

void sub_1AF270CD8(uint64_t a1, id *a2)
{
  v4 = *(a1 + 776);
  if (v4)
  {
    v5 = v4 == a2;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    CFX::RG::RenderGraphProvider::~RenderGraphProvider(v4);
    free(v6);
  }

  *(a1 + 776) = a2;
  *(a1 + 800) = 0;
  *(a1 + 64) = 0;
}

void sub_1AF270D20(uint64_t a1, id *a2)
{
  v4 = CFX::RG::RenderGraphProvider::resolve(a2);
  if (v4)
  {
    sub_1AF270CD8(a1, a2);
  }

  else
  {
    v6 = sub_1AF0D5194(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0AA4();
    }
  }
}

void sub_1AF270DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF270DD4(uint64_t a1, void *a2)
{
  CFX::RG::RenderGraphContext::transferFrom((a1 + 120), (a2 + 15));
  v4 = a2[7];
  if (v4)
  {
    v5 = *(v4 + 128);
    if (v5)
    {
      v6 = *(v4 + 136);
      v7 = 8 * v5;
      do
      {
        v8 = *v6;
        if (CFX::RG::Resource::isManaged(*v6))
        {
          CFX::RG::Resource::transferDeleterTo(v8, *(a1 + 144));
        }

        ++v6;
        v7 -= 8;
      }

      while (v7);
    }
  }

  sub_1AF275770(a2);
}

void *sub_1AF270E68(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12E2AC(*(a1 + 88), a2);
  result = objc_msgSend__finalRenderTexture(v3, v4, v5);
  if (result)
  {
    v9 = result;
    v10 = 0;
    v11 = *(a1 + 104);
    do
    {
      v12 = objc_msgSend_colorAttachments(v11, v7, v8);
      v14 = objc_msgSend_objectAtIndexedSubscript_(v12, v13, v10);
      objc_msgSend_setTexture_(v14, v15, 0);
      v18 = objc_msgSend_colorAttachments(v11, v16, v17);
      v20 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v10);
      objc_msgSend_setResolveTexture_(v20, v21, 0);
      ++v10;
    }

    while (v10 != 8);
    v22 = objc_msgSend_depthAttachment(v11, v7, v8);
    objc_msgSend_setTexture_(v22, v23, 0);
    v26 = objc_msgSend_depthAttachment(v11, v24, v25);
    objc_msgSend_setResolveTexture_(v26, v27, 0);
    v30 = objc_msgSend_stencilAttachment(v11, v28, v29);
    objc_msgSend_setTexture_(v30, v31, 0);
    objc_msgSend_setRenderTargetArrayLength_(v11, v32, 0);
    v35 = objc_msgSend_colorAttachments(v11, v33, v34);
    v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0);
    objc_msgSend_setTexture_(v37, v38, v9);
    v41 = objc_msgSend_colorAttachments(v11, v39, v40);
    v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, 0);
    objc_msgSend_setStoreAction_(v43, v44, 1);
    v47 = objc_msgSend_colorAttachments(v11, v45, v46);
    v49 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0);
    objc_msgSend_setLoadAction_(v49, v50, 2);
    v52 = sub_1AF1303B8(*(a1 + 88), v51);
    v53 = v52.f32[0];
    v54 = v52.f32[1];
    v55 = v52.f32[2];
    v56 = v52.f32[3];
    v59 = objc_msgSend_colorAttachments(v11, v57, v58);
    v61 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, 0);
    objc_msgSend_setClearColor_(v61, v62, v63, v53, v54, v55, v56);
    v66 = objc_msgSend_currentCommandBuffer(v3, v64, v65);
    v68 = objc_msgSend_renderCommandEncoderWithDescriptor_(v66, v67, v11);

    return objc_msgSend_endEncoding(v68, v69, v70);
  }

  return result;
}

uint64_t sub_1AF27100C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = &unk_1F24EBB68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = a2;
  *(a1 + 96) = sub_1AF13099C(a2);
  *(a1 + 104) = objc_alloc_init(MEMORY[0x1E6974128]);
  *(a1 + 112) = objc_alloc_init(RGCachedComputeCommandEncoder);
  v6 = *(a1 + 96);
  v7 = sub_1AF131048(a2);
  CFX::RG::RenderGraphContext::RenderGraphContext((a1 + 120), v6, v7);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 384);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 440);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 496);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 552);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 608);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 664);
  CFX::RG::RenderGraphProvider::RenderGraphProvider(a1 + 720);
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  sub_1AF2717D4(a1 + 816, 32);
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 850045863;
  *(a1 + 936) = 0;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  v9 = objc_msgSend_valueForKey_(a3, v8, @"forceDepthPostPass");
  isEqual = objc_msgSend_isEqual_(v9, v10, MEMORY[0x1E695E118]);
  CounterStorage = CFXGPUDeviceGetCounterStorage(*(a1 + 96));
  sub_1AF3B24C8(CounterStorage, &v42);
  *(a1 + 24) = v42;
  *(a1 + 40) = v43;
  sub_1AF26F9A4(*(a1 + 88), &v42);
  *(a1 + 384) = v42;
  sub_1AF2718B4(a1 + 392, &v42 + 1);
  v13 = v45;
  *(a1 + 408) = v44;
  *(a1 + 424) = v13;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v14 = CFX::RG::RenderGraphProvider::resolve(a1 + 384);
  if ((v14 & 1) == 0)
  {
    v35 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0B3C();
    }

LABEL_11:
    abort();
  }

  sub_1AF26FC0C(*(a1 + 88), &v42);
  *(a1 + 440) = v42;
  sub_1AF2718B4(a1 + 448, &v42 + 1);
  v16 = v45;
  *(a1 + 464) = v44;
  *(a1 + 480) = v16;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v17 = CFX::RG::RenderGraphProvider::resolve(a1 + 440);
  if ((v17 & 1) == 0)
  {
    v36 = sub_1AF0D5194(v17, v18);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0BA4();
      abort();
    }

    goto LABEL_11;
  }

  sub_1AF26FE10(*(a1 + 88), isEqual, &v42);
  *(a1 + 496) = v42;
  sub_1AF2718B4(a1 + 504, &v42 + 1);
  v19 = v45;
  *(a1 + 520) = v44;
  *(a1 + 536) = v19;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v20 = CFX::RG::RenderGraphProvider::resolve(a1 + 496);
  if ((v20 & 1) == 0)
  {
    v37 = sub_1AF0D5194(v20, v21);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0C0C();
      abort();
    }

    goto LABEL_11;
  }

  sub_1AF26FED0(*(a1 + 88), &v42);
  *(a1 + 552) = v42;
  sub_1AF2718B4(a1 + 560, &v42 + 1);
  v22 = v45;
  *(a1 + 576) = v44;
  *(a1 + 592) = v22;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v23 = CFX::RG::RenderGraphProvider::resolve(a1 + 552);
  if ((v23 & 1) == 0)
  {
    v38 = sub_1AF0D5194(v23, v24);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0C74();
      abort();
    }

    goto LABEL_11;
  }

  sub_1AF26FD38(*(a1 + 88), &v42);
  *(a1 + 608) = v42;
  sub_1AF2718B4(a1 + 616, &v42 + 1);
  v25 = v45;
  *(a1 + 632) = v44;
  *(a1 + 648) = v25;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v26 = CFX::RG::RenderGraphProvider::resolve(a1 + 608);
  if ((v26 & 1) == 0)
  {
    v39 = sub_1AF0D5194(v26, v27);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0CDC();
      abort();
    }

    goto LABEL_11;
  }

  sub_1AF26FF50(*(a1 + 88), &v42);
  *(a1 + 664) = v42;
  sub_1AF2718B4(a1 + 672, &v42 + 1);
  v28 = v45;
  *(a1 + 688) = v44;
  *(a1 + 704) = v28;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v29 = CFX::RG::RenderGraphProvider::resolve(a1 + 664);
  if ((v29 & 1) == 0)
  {
    v40 = sub_1AF0D5194(v29, v30);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0D44();
      abort();
    }

    goto LABEL_11;
  }

  sub_1AF270014(*(a1 + 88), &v42);
  *(a1 + 720) = v42;
  sub_1AF2718B4(a1 + 728, &v42 + 1);
  v31 = v45;
  *(a1 + 744) = v44;
  *(a1 + 760) = v31;
  CFX::RG::RenderGraphProvider::~RenderGraphProvider(&v42);
  v32 = CFX::RG::RenderGraphProvider::resolve(a1 + 720);
  if ((v32 & 1) == 0)
  {
    v41 = sub_1AF0D5194(v32, v33);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0DAC();
      abort();
    }

    goto LABEL_11;
  }

  return a1;
}

void sub_1AF2714AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex((v15 + 880));
  a15 = v15 + 848;
  sub_1AF27193C(&a15);
  sub_1AF2719E0(v15 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v15 + 384));
  v17 = *(v15 + 368);
  if (v17)
  {
    sub_1AF271A90(v17);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((v15 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(v15);
  _Unwind_Resume(a1);
}

void *sub_1AF271600(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  ActionForAttachment = *(a1 + 784);
  if (ActionForAttachment)
  {
    v3 = MEMORY[0x1E696AEC0];
    CFX::RG::ResourceIdentifier::pathName(__p, &v10);
    if (v9 >= 0)
    {
      v5 = objc_msgSend_stringWithUTF8String_(v3, v4, __p);
    }

    else
    {
      v5 = objc_msgSend_stringWithUTF8String_(v3, v4, __p[0]);
    }

    ActionForAttachment = objc_msgSend_loadActionForAttachment_(ActionForAttachment, v6, v5);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return ActionForAttachment;
}

void sub_1AF27168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AF2716A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  if (!*(a1 + 784))
  {
    return 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E69741C0]);
  *__p = *a3;
  v14 = *(a3 + 16);
  CFXTextureDescriptorFillMTLDescriptor(__p, v5);
  v6 = *(a1 + 784);
  v7 = MEMORY[0x1E696AEC0];
  CFX::RG::ResourceIdentifier::pathName(__p, &v15);
  if (v14 >= 0)
  {
    v9 = objc_msgSend_stringWithUTF8String_(v7, v8, __p);
  }

  else
  {
    v9 = objc_msgSend_stringWithUTF8String_(v7, v8, __p[0]);
  }

  v11 = objc_msgSend_textureForAttachment_withDescriptor_(v6, v10, v9, v5);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v11;
}

void sub_1AF27177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF27179C(uint64_t a1)
{
  sub_1AF271AFC(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2717D4(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  v5 = malloc_type_malloc(v4, 0xBBD05BDCuLL);
  memset(v5, 255, v4);
  *(a1 + 16) = v5;
  v6 = malloc_type_malloc(8 * v3, 0xBBD05BDCuLL);
  memset(v6, 255, 8 * v3);
  *a1 = v6;
  v7 = malloc_type_malloc(32 * v3, 0xBBD05BDCuLL);
  memset(v7, 255, 32 * v3);
  *(a1 + 8) = v7;
  memset(*a1, 255, 8 * v3);
  v8 = *(a1 + 16);

  bzero(v8, v4);
}

uint64_t sub_1AF2718B4(uint64_t a1, uint64_t *a2)
{
  if (a2 != a1)
  {
    if (*(a1 + 4))
    {
      free(*(a1 + 8));
      *(a1 + 8) = a1 + 16;
    }

    v4 = *a2;
    *a1 = *a2;
    v5 = a2[1];
    if (v5 == a2 + 2)
    {
      memcpy((a1 + 16), a2 + 2, 8 * v4);
    }

    else
    {
      *(a1 + 8) = v5;
    }

    *a2 = 0;
    a2[1] = (a2 + 2);
  }

  return a1;
}

void sub_1AF27193C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1AF271990(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1AF271990(void ***a1)
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

uint64_t sub_1AF2719E0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1AF271A34(v2, *(a1 + 16), *(a1 + 28) + 15);
    free(*(a1 + 8));
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

void sub_1AF271A34(uint64_t a1, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v6 = *a2++;
      if ((v6 & 1) != 0 && *(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      a1 += 32;
      --v5;
    }

    while (v5);
  }
}

void sub_1AF271A90(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_1AF271AFC(uint64_t a1)
{
  *a1 = &unk_1F24EBB68;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = sub_1AF271CB8(v2);
    free(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_1AF271C74(*v4, *(v4 + 1), v4);
  }

  v5 = *(a1 + 776);
  if (v5)
  {
    CFX::RG::RenderGraphProvider::~RenderGraphProvider(v5);
    free(v6);
  }

  std::mutex::~mutex((a1 + 880));
  v8 = (a1 + 848);
  sub_1AF27193C(&v8);
  sub_1AF2719E0(a1 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((a1 + 384));
  v7 = *(a1 + 368);
  if (v7)
  {
    sub_1AF271A90(v7);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((a1 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(a1);
}

void sub_1AF271BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::mutex::~mutex((v10 + 880));
  a10 = (v10 + 848);
  sub_1AF27193C(&a10);
  sub_1AF2719E0(v10 + 816);
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 720));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 664));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 608));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 552));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 496));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 440));
  CFX::RG::RenderGraphProvider::~RenderGraphProvider((v10 + 384));
  v12 = *(v10 + 368);
  if (v12)
  {
    sub_1AF271A90(v12);
  }

  CFX::RG::RenderGraphContext::~RenderGraphContext((v10 + 120));
  CFX::RG::AttachmentProvider::~AttachmentProvider(v10);
  _Unwind_Resume(a1);
}

void sub_1AF271C74(int a1, void *a2, CFX::RG::RenderGraph *this)
{
  CFX::RG::RenderGraph::~RenderGraph(this);
  v5 = v4;
  if (a2)
  {
    sub_1AF234C8C(a2, &v5);
  }
}

uint64_t sub_1AF271CB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    free(v2);
  }

  free(*a1);
  free(*(a1 + 16));
  return a1;
}

unint64_t sub_1AF271CF8(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_1AF2720A4(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_1AF271FF8(a2, a3);
  }

  else
  {
    return sub_1AF271F00(a2, a3);
  }
}

unint64_t sub_1AF271F00(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_1AF271FF8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_1AF2720A4(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_1AF272164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 88), a2, a3);
  prof_beginFlameSmallData("loadGraphProvider", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 225, v5 | 0x300000000);
  CFX::RG::RenderGraphContext::clearReferenceDescriptors((a1 + 120));
  CFX::GPUResourceManager::clearResourcesMapping(*(a1 + 144));
  v6 = *(a1 + 56);
  if (v6)
  {
    sub_1AF271C74(*v6, *(v6 + 1), v6);
  }

  v7 = *(a1 + 776);
  if (*(a2 + 25))
  {
    CFX::RG::RenderGraphContext::createPersistentRenderGraphBuilder(__p, (a1 + 120));
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 128);
  Aligned = CScratchAllocatorAllocateAligned(v8, 0x198uLL, 8, 2);
  CFX::RG::RenderGraphBuilder::RenderGraphBuilder(Aligned, v8, v9);
  v11 = *(a1 + 368);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  if (v11)
  {
    sub_1AF271A90(v11);
  }

  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  if (*(a1 + 784))
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  CFX::RG::RenderGraphProvider::setAttachmentProvider(a2, v12);
  v13 = CFX::RG::RenderGraphProvider::encodeIfNeeded(a2, (a1 + 120), Aligned, *(a1 + 72), __p);
  v15 = sub_1AF12F434(*(a1 + 88), v14);
  v18 = objc_msgSend__showsAuthoringEnvironment(v15, v16, v17);
  if (v18)
  {
    v20 = *(a2 + 8);
    if (v20)
    {
      v21 = *(a2 + 16);
      v22 = 8 * v20;
      while (*(*v21 + 8) != 14151)
      {
        v21 += 8;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_15;
        }
      }

      v18 = *(*v21 + 56);
      v23 = v18;
      if (!v13)
      {
        goto LABEL_18;
      }

LABEL_16:
      *(a1 + 800) = 0;
      v24 = a2;
      goto LABEL_25;
    }
  }

LABEL_15:
  v23 = 0;
  if (v13)
  {
    goto LABEL_16;
  }

LABEL_18:
  v25 = sub_1AF0D5194(v18, v19);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF0E14();
  }

  *(a1 + 48) = 0;
  v26 = *(a1 + 368);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  if (v26)
  {
    sub_1AF271A90(v26);
  }

  v24 = 0;
  v27 = *(a1 + 800) + 1;
  *(a1 + 800) = v27;
  if (v7 == a2 && v27 >= 3)
  {
    sub_1AF270CD8(a1, 0);
    v24 = 0;
  }

LABEL_25:
  *(a1 + 56) = v13;
  *(a1 + 64) = v24;
  sub_1AF2723F8(a1);
  if (v23)
  {
    v29 = sub_1AF12DDCC(*(a1 + 88), v28);
    v30 = sub_1AF16CDEC(v29);
    sub_1AF3C592C(v30, v23);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }

  prof_endFlame();
}

void sub_1AF2723A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  prof_endFlame();
  _Unwind_Resume(a1);
}

void sub_1AF2723F8(uint64_t a1)
{
  std::mutex::lock((a1 + 880));
  if (*(a1 + 808) == 1)
  {
    v2 = *(a1 + 848);
    v3 = *(a1 + 856);
    while (v2 != v3)
    {
      if (*(a1 + 807) == 1)
      {
        vfx_counters_remove_counter(*(a1 + 24), *(v2 + 24));
      }

      vfx_counters_remove_counter(*(a1 + 24), *(v2 + 28));
      v2 += 32;
    }

    sub_1AF2724B0(a1 + 816);
    sub_1AF271990((a1 + 848));
    *(a1 + 808) = 0;
  }

  std::mutex::unlock((a1 + 880));
}

void sub_1AF2724B0(uint64_t a1)
{
  sub_1AF271A34(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void sub_1AF272514(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12E2AC(*(a1 + 88), a2);
  v5 = sub_1AF24FBDC(v21, v3, v4);
  sub_1AF24ED5C(v5, v19);
  v6 = CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v20, v19);
  v7 = *(a1 + 360);
  v8 = CFX::RG::ResourceIdentifier::finalColor(v6);
  CFX::RG::RenderGraphBuilder::findPublishedResource(v7, v8);
  v10 = CFX::RG::Resource::textureDesc(v9);
  v11 = v20[1];
  *v10 = v20[0];
  *(v10 + 1) = v11;
  v12 = v20[5];
  v14 = v20[2];
  v13 = v20[3];
  *(v10 + 4) = v20[4];
  *(v10 + 5) = v12;
  *(v10 + 2) = v14;
  *(v10 + 3) = v13;
  v15 = v20[7];
  v16 = v20[9];
  v17 = v20[6];
  *(v10 + 8) = v20[8];
  *(v10 + 9) = v16;
  *(v10 + 6) = v17;
  *(v10 + 7) = v15;
  v18 = CFX::RG::ResourceIdentifier::finalColor(v10);
  sub_1AF24ED5C(v21, v19);
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v20, v19);
  CFX::RG::RenderGraphContext::registerReferenceDescriptor(a1 + 120, v18, v20);
}

uint64_t sub_1AF2725E8(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 136);
  v8 = a2;
  v5 = &v8;
  v6 = a1;
  sub_1AF272654(&v7, &v5);
  v3 = *(a1 + 136);
  v5 = &v8;
  v6 = a1;
  CStackAllocatorPushFrame(v3);
  sub_1AF2726A4(&v5);
  return CStackAllocatorPopFrame(v3);
}

uint64_t sub_1AF272654(unsigned int **a1, uint64_t a2)
{
  CStackAllocatorPushFrame(*a1);
  CFX::RG::AllocateResources(**a2, (*(a2 + 8) + 120), v4);
  v5 = *a1;

  return CStackAllocatorPopFrame(v5);
}

void sub_1AF2726A4(uint64_t **a1)
{
  v1 = a1[1];
  v2 = **a1;
  MTLDevice = CFXGPUDeviceGetMTLDevice(v1[12]);
  v5 = sub_1AF12E2AC(v1[11], v4);
  v9 = objc_msgSend_commandQueue(v5, v6, v7);
  if (*(v1 + 806) != 1 || (v10 = v1[109]) == 0)
  {
    v11 = sub_1AF12E2AC(v1[11], v8);
    v10 = objc_msgSend_currentCommandBuffer(v11, v12, v13);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v14, MTLDevice, v9, v10);
  LODWORD(v15) = 1;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v16, v14);
  CFX::RG::RenderGraph::execute(v2, (v1 + 15), 1, &v15);
  sub_1AF2680B0(&v15);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v14);
}

void sub_1AF272764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, id);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  _Unwind_Resume(a1);
}

void sub_1AF272788(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 806) == 1)
  {
    v3 = a1;
    std::mutex::lock((a1 + 880));
    if ((*(v3 + 808) & 1) == 0)
    {
      memset(v48, 0, sizeof(v48));
      v49 = 1065353216;
      v4 = *(a2 + 288);
      if (v4)
      {
        v5 = 0;
        v32 = 0;
        p_size = &__dst.__r_.__value_.__l.__size_;
        v33 = *(MEMORY[0x1E69E54E8] + 24);
        v34 = *MEMORY[0x1E69E54E8];
        v30 = a2;
        v35 = v3;
        do
        {
          v7 = *(a2 + 296) + 32 * v5;
          if (*(v7 + 16))
          {
            v31 = v5;
            v8 = 0;
            do
            {
              v9 = *(*(v7 + 24) + 8 * v8);
              memset(&v47, 0, sizeof(v47));
              v10 = *(v9 + 24);
              if (v10)
              {
                sub_1AF2737B0(&v47, v10);
              }

              else
              {
                sub_1AF273380(&__dst);
                sub_1AF17C688(&__dst, "Unamed", 6);
                if (v32 >= 1)
                {
                  v11 = sub_1AF17C688(&__dst, " ", 1);
                  MEMORY[0x1B271C540](v11, v32);
                }

                sub_1AF2734EC(&__dst, v38);
                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                }

                *&v47.__r_.__value_.__l.__data_ = *v38;
                v47.__r_.__value_.__r.__words[2] = v39[0];
                __dst.__r_.__value_.__r.__words[0] = v34;
                *(__dst.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
                __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
                if (v45 < 0)
                {
                  operator delete(__p);
                }

                ++v32;
                __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
                std::locale::~locale(&__dst.__r_.__value_.__r.__words[2]);
                std::ostream::~ostream();
                MEMORY[0x1B271C650](v46);
              }

              v12 = sub_1AF273844(v48, &v47);
              if (v12)
              {
                v13 = (*(v12 + 10) + 1);
                *(v12 + 10) = v13;
              }

              else
              {
                if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_1AF13D384(&__dst, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                }

                else
                {
                  __dst = v47;
                }

                v43 = 0;
                sub_1AF2739DC(v48, &__dst, &__dst);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                v13 = 0;
              }

              sub_1AF273380(&__dst);
              sub_1AF17C688(&__dst, "GPU ", 4);
              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = &v47;
              }

              else
              {
                v14 = v47.__r_.__value_.__r.__words[0];
              }

              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v47.__r_.__value_.__l.__size_;
              }

              sub_1AF17C688(&__dst, v14, size);
              if (v13)
              {
                v16 = sub_1AF17C688(&__dst, "[", 1);
                v17 = MEMORY[0x1B271C540](v16, v13);
                sub_1AF17C688(v17, "]", 1);
              }

              v18 = p_size;
              v19 = *(v35 + 24);
              sub_1AF2734EC(&__dst, v38);
              if (SHIBYTE(v39[0].__locale_) >= 0)
              {
                v20 = v38;
              }

              else
              {
                v20 = v38[0];
              }

              v21 = vfx_counters_add_counter(v19, v20, 0, 0, 0xFF0000FF);
              if (SHIBYTE(v39[0].__locale_) < 0)
              {
                operator delete(v38[0]);
              }

              sub_1AF273380(v38);
              sub_1AF17C688(v38, "CPU ", 4);
              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v22 = &v47;
              }

              else
              {
                v22 = v47.__r_.__value_.__r.__words[0];
              }

              if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v23 = v47.__r_.__value_.__l.__size_;
              }

              sub_1AF17C688(v38, v22, v23);
              if (v13)
              {
                v24 = sub_1AF17C688(v38, "[", 1);
                v25 = MEMORY[0x1B271C540](v24, v13);
                sub_1AF17C688(v25, "]", 1);
              }

              v26 = *(v35 + 24);
              sub_1AF2734EC(v38, &v50);
              if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v27 = &v50;
              }

              else
              {
                v27 = v50.__r_.__value_.__r.__words[0];
              }

              v28 = vfx_counters_add_counter(v26, v27, 0, 0, 0xFF00FFFF);
              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_1AF13D384(&v36, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
              }

              else
              {
                v36 = v47;
              }

              v37 = __PAIR64__(v21, v28);
              sub_1AF2736B4((v35 + 848), &v36);
              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_1AF13D384(&v50, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
              }

              else
              {
                v50 = v36;
              }

              v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v9) ^ ((0x9DDFEA08EB382D69 * v9) >> 47));
              v51 = v37;
              sub_1AF273FE8(v35 + 816, 0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47)), &v50);
              if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v50.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v36.__r_.__value_.__l.__data_);
              }

              v38[0] = v34;
              *(v38 + *(v34 - 3)) = v33;
              v38[1] = (MEMORY[0x1E69E5548] + 16);
              if (v40 < 0)
              {
                operator delete(v39[7].__locale_);
              }

              v38[1] = (MEMORY[0x1E69E5538] + 16);
              std::locale::~locale(v39);
              std::ostream::~ostream();
              MEMORY[0x1B271C650](&v41);
              __dst.__r_.__value_.__r.__words[0] = v34;
              *(__dst.__r_.__value_.__r.__words + *(v34 - 3)) = v33;
              p_size = v18;
              __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
              if (v45 < 0)
              {
                operator delete(__p);
              }

              __dst.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
              std::locale::~locale(&__dst.__r_.__value_.__r.__words[2]);
              std::ostream::~ostream();
              MEMORY[0x1B271C650](v46);
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              ++v8;
            }

            while (v8 < *(v7 + 16));
            a2 = v30;
            v5 = v31;
            v4 = *(v30 + 288);
            v3 = v35;
          }

          ++v5;
        }

        while (v5 < v4);
      }

      *(v3 + 808) = 1;
      sub_1AF274364(v48);
    }

    std::mutex::unlock((v3 + 880));
  }
}

void sub_1AF272E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (*(v16 - 185) < 0)
  {
    operator delete(*(v16 - 208));
  }

  sub_1AF274364((v16 - 176));
  std::mutex::unlock((a16 + 880));
  _Unwind_Resume(a1);
}

void sub_1AF272F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 88), a2, a3);
  prof_beginFlameSmallData("Render", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 703, v5 | 0x300000000);
  if ((*(a1 + 804) & 1) != 0 || *(a1 + 8) == 1)
  {
    CFX::RG::RenderGraph::log(__p, a2);
    if (v52 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    printf("%s", v7);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 804) = 0;
  }

  v8 = *(a2 + 288);
  if (!v8)
  {
    goto LABEL_53;
  }

  for (i = 0; i < v8; ++i)
  {
    v10 = *(a2 + 296) + 32 * i;
    if (!*(v10 + 16))
    {
      continue;
    }

    v11 = 0;
    do
    {
      v12 = *(*(v10 + 24) + 8 * v11);
      if (*(v12 + 24))
      {
        v13 = *(v12 + 24);
      }

      else
      {
        v13 = "Unnamed";
      }

      prof_beginFlameSmallData(v13, "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 719, v5 | 0x300000000);
      sub_1AF2743EC(a1, v12);
      if (i == *(a2 + 288) - 1)
      {
        v16 = (*(v10 + 16) - 1);
        v17 = v11 == v16;
        if ((*(a1 + 806) & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v11 == v16)
        {
          v18 = 0;
          v17 = 1;
          goto LABEL_22;
        }
      }

      else if ((*(a1 + 806) & 1) == 0)
      {
        v17 = 0;
LABEL_27:
        v32 = 0.0;
        goto LABEL_28;
      }

      v19 = sub_1AF12E2AC(*(a1 + 88), v14);
      v22 = objc_msgSend_commandQueue(v19, v20, v21);
      v18 = objc_msgSend_commandBuffer(v22, v23, v24);
      v17 = 0;
LABEL_22:
      *(a1 + 872) = v18;
      v26 = sub_1AF130770(*(a1 + 88), v14, v15);
      if (*(a1 + 806) != 1 || (v27 = *(a1 + 872)) == 0)
      {
        v28 = sub_1AF12E2AC(*(a1 + 88), v25);
        v27 = objc_msgSend_currentCommandBuffer(v28, v29, v30);
      }

      v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v12) ^ ((0x9DDFEA08EB382D69 * v12) >> 47));
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = sub_1AF274500;
      v49[3] = &unk_1E7A7DAE0;
      v49[4] = a1;
      v49[5] = 0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47));
      v50 = v26;
      objc_msgSend_addCompletedHandler_(v27, v25, v49);
      v32 = CACurrentMediaTime();
LABEL_28:
      v33 = *(v12 + 408);
      if (v33 > 2)
      {
        if (v33 == 3)
        {
          sub_1AF274B74(a1, a2, v12);
        }

        else if (v33 == 4)
        {
          sub_1AF274A0C(a1, v12);
        }
      }

      else if (v33 == 1)
      {
        sub_1AF2747FC(a1, v12);
      }

      else if (v33 == 2)
      {
        sub_1AF274900(a1, v12, v15);
      }

      prof_endFlame();
      if (*(a1 + 806) == 1)
      {
        if (*(a1 + 807) == 1)
        {
          std::mutex::lock((a1 + 880));
          v41 = CACurrentMediaTime();
          v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v12) ^ ((0x9DDFEA08EB382D69 * v12) >> 47));
          v43 = 0x9DDFEA08EB382D69 * (v42 ^ (v42 >> 47));
          v44 = (*(a1 + 844) - 1) & v43;
          v45 = *(*(a1 + 832) + 2 * v44);
          if (v45 >= 2)
          {
            v46 = v41 - v32;
            while ((v45 & 2) == 0 || v43 != *(*(a1 + 816) + 8 * v44))
            {
              ++v44;
              v47 = v45 >= 4;
              v45 >>= 1;
              if (!v47)
              {
                goto LABEL_47;
              }
            }

            v48 = *(a1 + 824);
            if (v48)
            {
              vfx_counters_update(*(a1 + 24), *(v48 + 32 * v44 + 24), v35, v36, v37, v38, v39, v40, v46);
            }
          }

LABEL_47:
          std::mutex::unlock((a1 + 880));
          v17 |= *(a1 + 806) ^ 1;
        }

        if ((v17 & 1) == 0)
        {
          objc_msgSend_commit(*(a1 + 872), v34, v6);
          *(a1 + 872) = 0;
        }
      }

      ++v11;
    }

    while (v11 < *(v10 + 16));
    v8 = *(a2 + 288);
  }

LABEL_53:
  CFX::RG::IncrementTemporal(a2, (a1 + 120), v6);
  prof_endFlame();
}

uint64_t *sub_1AF273380(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1AF17C4C4((a1 + 1), 16);
  return a1;
}

void sub_1AF2734C4(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1B271C650](v1);
  _Unwind_Resume(a1);
}

void *sub_1AF2734EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF2737F8(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1AF10A1D0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t sub_1AF273594(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1B271C650](a1 + 112);
  return a1;
}

uint64_t sub_1AF2736B4(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1AF273D4C(a1, a2);
  }

  else
  {
    sub_1AF273CDC(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

std::string *sub_1AF2736F4(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

std::string *sub_1AF2737B0(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AF2736F4(a1, __s, v4);
}

uint64_t sub_1AF2737F8(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

const void **sub_1AF273844(void *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v5 = a2[23];
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_1AF271CF8(&v16, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v7)
    {
      v11 = v6 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v8)
    {
      if (sub_1AF273964(a1, i + 2, v2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v7)
        {
          v14 %= *&v7;
        }
      }

      else
      {
        v14 &= *&v7 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL sub_1AF273964(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

const void **sub_1AF2739DC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_1AF271CF8(v17, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_21;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (!sub_1AF273964(a1, v14 + 2, v3))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_1AF273C78(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1AF273CDC(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_1AF13D384(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  *(v4 + 24) = *(a2 + 3);
  v3[1] = v4 + 32;
  return result;
}

uint64_t sub_1AF273D4C(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1AF10A1D0();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    sub_1AF273E88(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_1AF13D384(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 3);
  *&v20 = v11 + 32;
  v12 = a1[1];
  v13 = v10 + *a1 - v12;
  sub_1AF273ED0(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_1AF273F54(&v18);
  return v17;
}

void sub_1AF273E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1AF273F54(va);
  _Unwind_Resume(a1);
}

void sub_1AF273E88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

void sub_1AF273ED0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }
}

uint64_t sub_1AF273F54(uint64_t a1)
{
  sub_1AF273F8C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1AF273F8C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1AF273FE8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  while (1)
  {
    v5 = *(a1 + 28);
    v6 = (v5 - 1) & a2;
    v7 = *(a1 + 16);
    v8 = *(v7 + 2 * v6);
    if (v8 >= 2)
    {
      break;
    }

LABEL_6:
    v11 = v5 + 15;
    if (v11 >= v6 + 496)
    {
      v11 = v6 + 496;
    }

    LODWORD(v12) = v6;
    v13 = v11 - v6;
    if (v11 > v6)
    {
      v12 = v6;
      while ((*(v7 + 2 * v12) & 1) != 0)
      {
        ++v12;
        if (!--v13)
        {
          goto LABEL_33;
        }
      }
    }

    if (v12 != v11)
    {
      *(v7 + 2 * v12) |= 1u;
      if (v12 <= v6 + 14)
      {
        v24 = v12;
      }

      else
      {
        do
        {
          v14 = v12;
          v15 = v12 - 14;
          if (v12 < 0xF)
          {
            v15 = 0;
          }

          v16 = v15 - 1;
          if (v15 <= v12)
          {
            v17 = v12;
          }

          else
          {
            v17 = v15;
          }

          v18 = 1;
          while (1)
          {
            v12 = v16 + 1;
            if (v15 <= v12)
            {
              break;
            }

LABEL_25:
            ++v18;
            v16 = v12;
            if (v12 == v17)
            {
              goto LABEL_32;
            }
          }

          v19 = 1 << (v16 - v15 + 2);
          v20 = v18;
          v21 = v15;
          while (1)
          {
            v22 = v21;
            if ((v19 & *(v7 + 2 * v21)) != 0)
            {
              break;
            }

            ++v21;
            LOWORD(v19) = v19 >> 1;
            --v20;
            if (v22 + 1 > v12)
            {
              goto LABEL_25;
            }
          }

          if (v12 >= v14)
          {
LABEL_32:
            *(v7 + 2 * v14) ^= 1u;
            goto LABEL_33;
          }

          v23 = *(a1 + 8);
          v24 = v12;
          *(*a1 + 8 * v14) = *(*a1 + 8 * v12);
          v25 = v23 + 32 * v14;
          v26 = (v23 + 32 * v12);
          v27 = *v26;
          v28 = *(v26 + 3);
          *(v25 + 16) = *(v26 + 2);
          *(v25 + 24) = v28;
          *v25 = v27;
          *(v26 + 1) = 0;
          *(v26 + 2) = 0;
          *v26 = 0;
          v29 = *(a1 + 8) + 32 * v12;
          if (*(v29 + 23) < 0)
          {
            operator delete(*v29);
          }

          v7 = *(a1 + 16);
          *(v7 + 2 * v22) = (*(v7 + 2 * v22) | (1 << (v14 - v22 + 1))) ^ (1 << v20);
        }

        while (v12 > v6 + 14);
      }

      v33 = *(a1 + 8) + 32 * v24;
      v34 = *a3;
      *(v33 + 16) = *(a3 + 2);
      *v33 = v34;
      *(a3 + 1) = 0;
      *(a3 + 2) = 0;
      *a3 = 0;
      *(v33 + 24) = *(a3 + 3);
      *(*a1 + 8 * v24) = a2;
      v35 = *(a1 + 16);
      *(v35 + 2 * v24) |= 1u;
      result = 1;
      *(v35 + 2 * v6) |= 1 << (v12 - v6 + 1);
      ++*(a1 + 24);
      return result;
    }

LABEL_33:
    sub_1AF2742A8(a1);
  }

  v9 = (v5 - 1) & a2;
  while ((v8 & 2) == 0 || *(*a1 + 8 * v9) != a2)
  {
    ++v9;
    v10 = v8 > 3;
    v8 >>= 1;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  v30 = *(a1 + 8) + 32 * v9;
  if (*(v30 + 23) < 0)
  {
    operator delete(*v30);
  }

  result = 0;
  v32 = *a3;
  *(v30 + 16) = *(a3 + 2);
  *v30 = v32;
  *(a3 + 23) = 0;
  *a3 = 0;
  *(v30 + 24) = *(a3 + 3);
  return result;
}

void sub_1AF2742A8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 28);
  sub_1AF2717D4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v5 != -15)
  {
    v7 = v3;
    v8 = v2;
    v9 = v4;
    do
    {
      v10 = *v9++;
      if (v10)
      {
        sub_1AF273FE8(a1, *v8, v7);
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }
      }

      ++v8;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  free(v3);
  free(v2);

  free(v4);
}

void **sub_1AF274364(void **a1)
{
  sub_1AF2743A0(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1AF2743A0(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

CFX::RG::Temporal *sub_1AF2743EC(CFX::RG::Temporal *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 232);
  if (v4)
  {
    v5 = *(a2 + 240);
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      result = CFX::RG::Resource::isExternal(*v5);
      if (result)
      {
        v8 = *(v3 + 18);
        v9 = CFX::RG::Temporal::currentFrame(result);
        result = CFX::GPUResourceManager::getTexture(v8, v7, v9);
        if (!result)
        {
          CFX::GPUResourceManager::allocate(*(v3 + 18), v7, v3 + 15);
          v10 = *(v3 + 18);
          v12 = CFX::RG::Temporal::currentFrame(v11);
          result = CFX::GPUResourceManager::getTexture(v10, v7, v12);
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  v13 = *(a2 + 72);
  if (v13)
  {
    v14 = *(a2 + 80);
    v15 = 16 * v13;
    do
    {
      v16 = *v14;
      result = CFX::RG::Resource::isExternal(*v14);
      if (result)
      {
        v17 = *(v3 + 18);
        v18 = CFX::RG::Temporal::currentFrame(result);
        result = CFX::GPUResourceManager::getTexture(v17, v16, v18);
        if (!result)
        {
          CFX::GPUResourceManager::allocate(*(v3 + 18), v16, v3 + 15);
          v19 = *(v3 + 18);
          v21 = CFX::RG::Temporal::currentFrame(v20);
          result = CFX::GPUResourceManager::getTexture(v19, v16, v21);
        }
      }

      v14 += 2;
      v15 -= 16;
    }

    while (v15);
  }

  return result;
}

void sub_1AF274500(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  objc_msgSend_GPUEndTime(a2, a2, a3);
  v7 = v6;
  objc_msgSend_GPUStartTime(a2, v8, v9);
  v11 = v10;
  std::mutex::lock((v5 + 880));
  v12 = *(a1 + 40);
  v13 = (*(v5 + 844) - 1) & v12;
  v14 = *(*(v5 + 832) + 2 * v13);
  if (v14 >= 2)
  {
    v15 = (v7 - v11) * 1000.0;
    while ((v14 & 2) == 0 || v12 != *(*(v5 + 816) + 8 * v13))
    {
      ++v13;
      v16 = v14 >= 4;
      v14 >>= 1;
      if (!v16)
      {
        goto LABEL_21;
      }
    }

    v17 = *(v5 + 824);
    if (v17)
    {
      sub_1AF273380(&v44);
      v18 = v17 + 32 * v13;
      v19 = *(v18 + 23);
      if (v19 >= 0)
      {
        v20 = v18;
      }

      else
      {
        v20 = *v18;
      }

      if (v19 >= 0)
      {
        v21 = *(v18 + 23);
      }

      else
      {
        v21 = *(v18 + 8);
      }

      v22 = sub_1AF17C688(&v44, v20, v21);
      v23 = sub_1AF17C688(v22, " [", 2);
      v24 = MEMORY[0x1B271C540](v23, *(a1 + 48));
      sub_1AF17C688(v24, "]", 1);
      objc_msgSend_GPUStartTime(a2, v25, v26);
      v28 = v27;
      objc_msgSend_GPUEndTime(a2, v29, v30);
      v32 = v31;
      v33 = __p;
      sub_1AF2734EC(&v44, __p);
      if (v43 < 0)
      {
        v33 = __p[0];
      }

      v34 = prof_clockTicksFromSecondsMonotonic(v28);
      v35 = prof_clockTicksFromSecondsMonotonic(v32);
      prof_eventTimeRangeDynamicString(v34, v35, "Pass ", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 744, v33);
      if (v43 < 0)
      {
        operator delete(__p[0]);
      }

      vfx_counters_update(*(v5 + 24), *(v18 + 28), v36, v37, v38, v39, v40, v41, v15);
      v44 = *MEMORY[0x1E69E54E8];
      *(&v44 + *(v44 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
      v45 = MEMORY[0x1E69E5548] + 16;
      if (v47 < 0)
      {
        operator delete(v46[7].__locale_);
      }

      v45 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v46);
      std::ostream::~ostream();
      MEMORY[0x1B271C650](&v48);
    }
  }

LABEL_21:
  std::mutex::unlock((v5 + 880));
}

void sub_1AF2747BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1AF273594(&a15);
  std::mutex::unlock((v15 + 880));
  _Unwind_Resume(a1);
}

void sub_1AF2747FC(uint64_t a1, uint64_t a2)
{
  MTLDevice = CFXGPUDeviceGetMTLDevice(*(a1 + 96));
  v6 = sub_1AF12E2AC(*(a1 + 88), v5);
  v10 = objc_msgSend_commandQueue(v6, v7, v8);
  if (*(a1 + 806) != 1 || (v11 = *(a1 + 872)) == 0)
  {
    v12 = sub_1AF12E2AC(*(a1 + 88), v9);
    v11 = objc_msgSend_currentCommandBuffer(v12, v13, v14);
  }

  CFX::RG::RendererPassArguments::RendererPassArguments(v15, MTLDevice, v10, v11);
  LODWORD(v16) = 2;
  CFX::RG::RendererPassArguments::RendererPassArguments(&v17, v15);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v16);
  sub_1AF2680B0(&v16);
  CFX::RG::RendererPassArguments::~RendererPassArguments(v15);
}

void sub_1AF2748DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, id);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1AF2680B0(va1);
  CFX::RG::RendererPassArguments::~RendererPassArguments(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF274900(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 806) != 1 || (v5 = *(a1 + 872)) == 0)
  {
    v6 = sub_1AF12E2AC(*(a1 + 88), a2);
    v5 = objc_msgSend_currentCommandBuffer(v6, v7, v8);
  }

  v9 = objc_msgSend_blitCommandEncoder(v5, a2, a3);
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, *(a2 + 3));
  objc_msgSend_setLabel_(v9, v12, v11);
  CFX::RG::BlitPassArguments::BlitPassArguments(&v16, v9);
  LODWORD(v17) = 3;
  CFX::RG::BlitPassArguments::BlitPassArguments(&v18, &v16);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v17);
  sub_1AF2680B0(&v17);
  CFX::RG::BlitPassArguments::~BlitPassArguments(&v16);
  return objc_msgSend_endEncoding(v9, v13, v14);
}

void sub_1AF2749E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, id);
  sub_1AF2680B0(va1);
  CFX::RG::BlitPassArguments::~BlitPassArguments(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF274A0C(uint64_t a1, const char *a2)
{
  if (*(a1 + 806) != 1)
  {
    v11 = (a1 + 112);
    v10 = *(a1 + 112);
LABEL_9:
    v13 = sub_1AF12E2AC(*(a1 + 88), a2);
    v12 = objc_msgSend_currentCommandBuffer(v13, v14, v15);
    goto LABEL_10;
  }

  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a2 + 3));
  if (*(a1 + 806) != 1 || (v6 = *(a1 + 872)) == 0)
  {
    v7 = sub_1AF12E2AC(*(a1 + 88), v4);
    v6 = objc_msgSend_currentCommandBuffer(v7, v8, v9);
  }

  objc_msgSend_setLabel_(v6, v4, v5);
  v11 = (a1 + 112);
  v10 = *(a1 + 112);
  if ((*(a1 + 806) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = *(a1 + 872);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_10:
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a2 + 3));
  objc_msgSend_beginEncodingWithCommandBuffer_label_(v10, v17, v12, v16);
  CFX::RG::ComputePassArguments::ComputePassArguments(&v21, *v11);
  LODWORD(v22) = 5;
  CFX::RG::ComputePassArguments::ComputePassArguments(&v23, &v21);
  (*(*a2 + 24))(a2, a1 + 120, 2, &v22);
  sub_1AF2680B0(&v22);
  CFX::RG::ComputePassArguments::~ComputePassArguments(&v21);
  return objc_msgSend_endEncoding(*v11, v18, v19);
}

void sub_1AF274B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, id);
  sub_1AF2680B0(va1);
  CFX::RG::ComputePassArguments::~ComputePassArguments(va);
  _Unwind_Resume(a1);
}

void sub_1AF274B74(uint64_t a1, char *a2, CFX::RG::Pass *a3)
{
  if (*(a1 + 806) == 1)
  {
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a3 + 3));
    if (*(a1 + 806) != 1 || (v7 = *(a1 + 872)) == 0)
    {
      v8 = sub_1AF12E2AC(*(a1 + 88), v5);
      v7 = objc_msgSend_currentCommandBuffer(v8, v9, v10);
    }

    objc_msgSend_setLabel_(v7, v5, v6);
  }

  v11 = *(a1 + 88);
  v51 = sub_1AF12E2AC(v11, a2);
  v14 = objc_msgSend_frameConstantBufferPool(v51, v12, v13);
  v56 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = (*(*a3 + 32))(a3);
  v16 = v15[274];
  v17 = v15[275];
  v48 = v15[277];
  v49 = v15[276];
  v18 = v15[280];
  v19 = *(a1 + 104);
  v20 = *(a3 + 5);
  if ((atomic_load_explicit(byte_1ED73AA98, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDF0E7C();
  }

  v21 = qword_1ED73AA90;
  v22 = sub_1AF12E2A0(v11);
  if (v20 == v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 == 1)
  {
    v24 = sub_1AF1310A0(v11);
    v25 = sub_1AF20B77C();
    sub_1AF22D5CC(v24);
  }

  else
  {
    v25 = sub_1AF131180(v11);
    v24 = 0;
  }

  v46 = v24;
  v27 = sub_1AF20107C(v25, v26);
  v54 = *(a1 + 24);
  v55 = *(a1 + 40);
  objc_msgSend_setCounters_(v27, v28, &v54);
  v50 = v27;
  if (v17)
  {
    v47 = v17 + v16;
    v30 = "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm";
    do
    {
      v31 = v49;
      if (v48)
      {
        do
        {
          sub_1AF274F44(a1, v19, a2, a3, v16, v31);
          if (v18)
          {
            prof_beginFlame("Begin encoding", v30, 978);
            v33 = v30;
            if (*(a1 + 806) != 1 || (v34 = *(a1 + 872)) == 0)
            {
              v35 = sub_1AF12E2AC(*(a1 + 88), v32);
              v34 = objc_msgSend_currentCommandBuffer(v35, v36, v37);
            }

            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v32, *(a3 + 3));
            *(v25 + 8) = v34;
            objc_msgSend_beginEncodingWithCommandBuffer_renderPassDescriptor_label_(*(v25 + 24), v39, v34, v19, v38);
            *(v25 + 32) = &v56;
            *v25 = 1;
            *(v25 + 4) = 1;
            *(v25 + 40) = 0;
            objc_msgSend_beginRenderPass_renderEncoder_(v51, v40, v19, v25);
            prof_endFlame();
            v41 = v50;
            v30 = v33;
          }

          else
          {
            v41 = 0;
          }

          CFX::RG::RenderPassArguments::RenderPassArguments(v53, v41, v19, v16, v31);
          LODWORD(v54) = 4;
          CFX::RG::RenderPassArguments::RenderPassArguments(&v54 + 8, v53);
          (*(*a3 + 24))(a3, a1 + 120, 2, &v54);
          sub_1AF2680B0(&v54);
          CFX::RG::RenderPassArguments::~RenderPassArguments(v53);
          if (v18)
          {
            prof_beginFlame("End encoding", v30, 991);
            sub_1AF275560(v25, v42, v43);
            objc_msgSend_endRenderPass(v51, v44, v45);
            prof_endFlame();
          }

          ++v31;
        }

        while (v48 + v49 > v31);
      }

      LOBYTE(v16) = v16 + 1;
    }

    while (v47 > v16);
  }

  if (v46)
  {
    sub_1AF22D640(v46, v29);
    if (v25)
    {

      MEMORY[0x1B271C6B0](v25, 0x10A0C40617E9A74);
    }
  }

  if (v56)
  {
    CFRelease(v56);
  }
}

void sub_1AF274EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = *(v19 - 88);
  if (v21)
  {
    CFRelease(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF274F44(uint64_t *a1, char *a2, _DWORD *a3, CFX::RG::Pass *a4, unsigned int a5, unsigned int a6)
{
  v10 = sub_1AF130770(a1[11], a2, a3);
  prof_beginFlameSmallData("setupRenderPassDescriptor", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/CRenderGraphEngineContext.mm", 831, v10 | 0x300000000);
  for (i = 0; i != 8; ++i)
  {
    v14 = objc_msgSend_colorAttachments(a2, v11, v12);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, i);
    objc_msgSend_setTexture_(v16, v17, 0);
    v20 = objc_msgSend_colorAttachments(a2, v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, i);
    objc_msgSend_setResolveTexture_(v22, v23, 0);
  }

  v24 = objc_msgSend_depthAttachment(a2, v11, v12);
  objc_msgSend_setTexture_(v24, v25, 0);
  v28 = objc_msgSend_depthAttachment(a2, v26, v27);
  objc_msgSend_setResolveTexture_(v28, v29, 0);
  v32 = objc_msgSend_stencilAttachment(a2, v30, v31);
  objc_msgSend_setTexture_(v32, v33, 0);
  v34 = (*(*a4 + 32))(a4);
  objc_msgSend_setRenderTargetArrayLength_(a2, v35, *(v34 + 268));
  v37 = sub_1AF12E2AC(a1[11], v36);
  if (*((*(*a4 + 32))(a4) + 283))
  {
    objc_msgSend_setRasterizationRateMap_(a2, v38, 0);
  }

  else
  {
    v40 = objc_msgSend_rasterizationRateMap(v37, v38, v39);
    objc_msgSend_setRasterizationRateMap_(a2, v41, v40);
  }

  if ((*((*(*a4 + 32))(a4) + 283) & 1) == 0 && sub_1AF12F738(a1[11], v42) && !objc_msgSend_rasterizationRateMap(a2, v43, v44))
  {
    v111 = sub_1AF1305C8(a1[11]);
    MTLDevice = CFXGPUDeviceGetMTLDevice(a1[12]);
    v46 = sub_1AF70C954(*&v111, *(&v111 + 1), MTLDevice);
    objc_msgSend_setRasterizationRateMap_(a2, v47, v46);
  }

  v112 = a2;
  v48 = *(a4 + 58);
  if (v48)
  {
    v49 = *(a4 + 30);
    v50 = 8 * v48;
    v109 = a6;
    v110 = a5;
    do
    {
      v51 = *v49;
      v52 = CFX::RG::Pass::renderTargetInfo(a4, *v49);
      v53 = v52;
      if (v52)
      {
        v54 = a1[18];
        v55 = CFX::RG::Temporal::currentFrame(v52);
        Texture = CFX::GPUResourceManager::getTexture(v54, v51, v55);
        v57 = *v53;
        if (*v53)
        {
          v58 = 1;
        }

        else
        {
          v58 = *v53 & 2;
        }

        if (CFX::RG::Resource::isExternal(v51))
        {
          v59 = CFX::RG::Resource::externalResourceDesc(v51);
          if (CFX::RG::ExternalResourceDesc::requireLoad(v59))
          {
            v58 = 1;
          }
        }

        v60 = a1[17];
        v61 = CFX::RG::RenderGraphContext::optimisationParameters((a1 + 15));
        v6 = v6 & 0xFFFFFFFFFFFFFF00 | *(v61 + 8);
        v64 = CFX::RG::DeduceStoreAction(a3, a4, v51, v60, *v61);
        v65 = *(v53 + 4);
        switch(v65)
        {
          case 1:
            v87 = objc_msgSend_colorAttachments(v112, v62, v63);
            v89 = objc_msgSend_objectAtIndexedSubscript_(v87, v88, *(v53 + 2));
            v90 = (*(*a4 + 32))(a4);
            if ((v57 & 4) != 0)
            {
              objc_msgSend_setResolveTexture_(v89, v91, Texture);
              objc_msgSend_setResolveLevel_(v89, v105, v110);
              objc_msgSend_setResolveSlice_(v89, v106, v109);
            }

            else
            {
              v92 = v90;
              v93 = *(v53 + 2);
              objc_msgSend_setTexture_(v89, v91, Texture);
              objc_msgSend_setLoadAction_(v89, v94, v58);
              objc_msgSend_setStoreAction_(v89, v95, v64);
              objc_msgSend_setClearColor_(v89, v96, v97, *(v92 + 32 * v93), *(v92 + 32 * v93 + 8), *(v92 + 32 * v93 + 16), *(v92 + 32 * v93 + 24));
              objc_msgSend_setLevel_(v89, v98, v110);
              objc_msgSend_setSlice_(v89, v99, v109);
            }

            break;
          case 2:
            v75 = objc_msgSend_depthAttachment(v112, v62, v63);
            v77 = v75;
            if ((v57 & 4) != 0)
            {
              objc_msgSend_setResolveTexture_(v75, v76, Texture);
              objc_msgSend_setResolveLevel_(v77, v100, v110);
              objc_msgSend_setResolveSlice_(v77, v101, v109);
            }

            else
            {
              objc_msgSend_setTexture_(v75, v76, Texture);
              objc_msgSend_setLoadAction_(v77, v78, v58);
              objc_msgSend_setStoreAction_(v77, v79, v64);
              v80 = (*(*a4 + 32))(a4);
              objc_msgSend_setClearDepth_(v77, v81, v82, *(v80 + 256));
              objc_msgSend_setLevel_(v77, v83, v110);
              objc_msgSend_setSlice_(v77, v84, v109);
            }

            v102 = objc_msgSend_pixelFormat(Texture, v85, v86, v109);
            if (!sub_1AF1F1B38(v102))
            {
              break;
            }

            v66 = objc_msgSend_stencilAttachment(v112, v103, v104);
            v68 = v66;
            if ((v57 & 4) != 0)
            {
LABEL_34:
              objc_msgSend_setResolveTexture_(v66, v67, Texture);
              objc_msgSend_setResolveLevel_(v68, v107, v110);
              objc_msgSend_setResolveSlice_(v68, v108, v109);
              break;
            }

            goto LABEL_23;
          case 3:
            v66 = objc_msgSend_stencilAttachment(v112, v62, v63);
            v68 = v66;
            if ((v57 & 4) != 0)
            {
              goto LABEL_34;
            }

LABEL_23:
            objc_msgSend_setTexture_(v66, v67, Texture);
            objc_msgSend_setLoadAction_(v68, v69, v58);
            objc_msgSend_setStoreAction_(v68, v70, v64);
            v71 = (*(*a4 + 32))(a4);
            objc_msgSend_setClearStencil_(v68, v72, *(v71 + 264));
            objc_msgSend_setLevel_(v68, v73, v110);
            objc_msgSend_setSlice_(v68, v74, v109);
            break;
        }
      }

      ++v49;
      v50 -= 8;
    }

    while (v50);
  }

  prof_endFlame();
}

void *sub_1AF275560(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0ED8(v4);
    }
  }

  result = objc_msgSend_endEncoding(*(a1 + 16), a2, a3);
  *(a1 + 8) = 0;
  return result;
}

void sub_1AF2755B4(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 28) = a2;
  v3 = (a2 + 15);
  v4 = malloc_type_malloc((2 * v3), 0xBBD05BDCuLL);
  memset(v4, 255, (2 * v3));
  *(a1 + 16) = v4;
  v5 = malloc_type_malloc((8 * v3), 0xBBD05BDCuLL);
  memset(v5, 255, (8 * v3));
  *a1 = v5;
  v6 = malloc_type_malloc(v3, 0xBBD05BDCuLL);
  memset(v6, 255, v3);
  *(a1 + 8) = v6;
  memset(*a1, 255, 8 * v3);
  v7 = *(a1 + 16);

  bzero(v7, 2 * v3);
}

void sub_1AF275690(uint64_t a1)
{
  sub_1AF2756F4(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

uint64_t *sub_1AF2756F4(uint64_t *result, __int16 *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      if (v6)
      {
        result = *v4;
        *v4 = 0;
        if (result)
        {
          result = (*(*result + 8))(result);
        }
      }

      ++v4;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1AF275770(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_1AF271C74(*v2, *(v2 + 1), v2);
  }

  a1[7] = 0;
  sub_1AF270CD8(a1, 0);
  v3 = a1[46];
  a1[45] = 0;
  a1[46] = 0;
  if (v3)
  {

    sub_1AF271A90(v3);
  }
}

uint64_t sub_1AF2757FC(void *a1, CFX::CrossFrameResourceManager *this)
{
  v5 = CFX::CrossFrameResourceManager::get(this, 0xD877AC05CAC46D3ELL);
  if (!v5)
  {
    v5 = sub_1AF275930(this, 0xD877AC05CAC46D3ELL);
    v8 = objc_msgSend_resourceManager(a1, v6, v7);
    v23 = 0uLL;
    v24 = 0;
    CFXTextureDescriptorMake2D(0x20u, 0x20u, 0x7Du, &v23);
    LOBYTE(v24) = 1;
    v11 = objc_msgSend_gpuDevice(a1, v9, v10);
    v21 = v23;
    v22 = v24;
    v12 = CFXGPUDeviceCreateTexture(v11, &v21);
    sub_1AFDE8444(v8, &unk_1AFE43240, 0x4000uLL, 0);
    v14 = v13;
    v17 = objc_msgSend_currentCommandBuffer(a1, v15, v16, 0, 0);
    sub_1AF1FF3B8(&v21, v17, @"BlueNoise32");
    sub_1AF2759B8(&v21, v14, 0, v12, 0, 0);
    sub_1AF1FE520(&v21, v18, v19);

    sub_1AF23355C((v5 + 16), v12);
  }

  return sub_1AF2338B0(v5 + 16, v4);
}

void *sub_1AF275930(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2759B8(void **a1, const char *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_pixelFormat(a4, a2, a3);
  v12 = sub_1AF1F1AAC() >> 3;
  v15 = objc_msgSend_width(a4, v13, v14) * v12;
  v18 = objc_msgSend_height(a4, v16, v17) * v15;
  v21 = objc_msgSend_width(a4, v19, v20);
  v24 = objc_msgSend_height(a4, v22, v23);
  v27 = objc_msgSend_depth(a4, v25, v26);
  memset(v31, 0, sizeof(v31));
  v32[0] = v21;
  v28 = *a1;
  v32[1] = v24;
  v32[2] = v27;
  return objc_msgSend_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v28, v29, a2, a3, v15, v18, v32, a4, a5, a6, v31);
}

uint64_t sub_1AF275A98(void *a1, CFX::CrossFrameResourceManager *this)
{
  v5 = CFX::CrossFrameResourceManager::get(this, 0x2D6F9F4D8FCEC7B4);
  if (!v5)
  {
    v5 = sub_1AF275930(this, 0x2D6F9F4D8FCEC7B4);
    v25 = 0uLL;
    v26 = 0;
    CFXTextureDescriptorMake2D(0x100u, 0x100u, 0x48u, &v25);
    LOBYTE(v26) = 3;
    v8 = objc_msgSend_gpuDevice(a1, v6, v7);
    v23 = v25;
    v24 = v26;
    v9 = CFXGPUDeviceCreateTexture(v8, &v23);
    v12 = objc_msgSend_resourceComputeEncoder(a1, v10, v11);
    v15 = objc_msgSend_resourceManager(a1, v13, v14);
    v17 = objc_msgSend_newComputePipelineStateWithFunctionName_(v15, v16, @"vfx_generate_grain");
    v18 = sub_1AFDE323C(v17);
    objc_msgSend_setComputePipelineState_(v12, v19, v18);
    objc_msgSend_setTexture_atIndex_(v12, v20, v9, 0);
    objc_msgSend_dispatchOnTexture2D_(v12, v21, v9);

    sub_1AF23355C((v5 + 16), v9);
  }

  return sub_1AF2338B0(v5 + 16, v4);
}

void sub_1AF275BB0(unsigned int a1, float32x2_t *a2, float a3)
{
  if (a1)
  {
    v4 = 0;
    LODWORD(v3) = vcvtps_s32_f32(a3);
    v5 = a1;
    v6 = a1 - 1;
    v7 = a3;
    v50 = -v3;
    v8 = &a2[v3 + v50];
    do
    {
      if ((v3 & 0x80000000) == 0)
      {
        v52 = xmmword_1AFE47240[3 * v6 + v4];
        LODWORD(v9) = HIDWORD(*&xmmword_1AFE47240[3 * v6 + v4]);
        v10 = (2 * v3) | 1;
        v11 = -v3;
        v12 = v8;
        do
        {
          v13 = v11 * 1.1 / v7;
          v14 = v13 * v13;
          v53 = expf(v9 * (v13 * v13));
          v15 = __sincosf_stret(*&v52 * v14);
          *v12++ = vmul_n_f32(__PAIR64__(LODWORD(v15.__sinval), LODWORD(v15.__cosval)), v53);
          ++v11;
          --v10;
        }

        while (v10);
      }

      ++v4;
      v8 += 128;
    }

    while (v4 != v5);
    v16 = 0;
    v17 = 0.0;
    v18 = a2;
    do
    {
      v19 = &xmmword_1AFE47240[3 * v6 + v16];
      v20 = &a2[128 * v16];
      _D1 = v20[v3];
      v22 = v19[2];
      v23 = v19[3];
      v17 = (v17 + (v22 * (vmuls_lane_f32(-_D1.f32[1], _D1, 1) + (_D1.f32[0] * _D1.f32[0])))) + v23 * ((_D1.f32[0] + _D1.f32[0]) * _D1.f32[1]);
      if (v3 >= 1)
      {
        v24 = v22;
        v25 = v24 + v24;
        v26 = v23 + v23;
        v27 = v3;
        v28 = v18;
        do
        {
          v29 = *v28++;
          _V17.S[1] = v29.i32[1];
          v31 = v17 + v25 * (vmuls_lane_f32(-_D1.f32[1], v29, 1) + (_D1.f32[0] * v29.f32[0]));
          __asm { FMLA            S18, S1, V17.S[1] }

          v17 = v31 + v26 * _S18;
          --v27;
        }

        while (v27);
        v37 = v24 * 4.0;
        v38 = v23 * 4.0;
        do
        {
          v39 = 0;
          _D16 = v20[v27];
          v41 = v17 + v25 * ((_D16.f32[0] * _D1.f32[0]) - (_D16.f32[1] * _D1.f32[1]));
          v17 = v41 + v26 * (vmuls_lane_f32(_D1.f32[0], _D16, 1) + (_D16.f32[0] * _D1.f32[1]));
          do
          {
            _D19 = v18[v39];
            v43 = v17 + v37 * (vmuls_lane_f32(-_D16.f32[1], _D19, 1) + (_D16.f32[0] * _D19.f32[0]));
            __asm { FMLA            S20, S16, V19.S[1] }

            v17 = v43 + v38 * _S20;
            ++v39;
          }

          while (v3 != v39);
          ++v27;
        }

        while (v27 != v3);
      }

      ++v16;
      v18 += 128;
    }

    while (v16 != v5);
    v45 = 0;
    v46 = 1.0 / sqrtf(v17);
    v47 = &a2[v3 + v50];
    do
    {
      v48 = (2 * v3) | 1;
      v49 = v47;
      if ((v3 & 0x80000000) == 0)
      {
        do
        {
          *v49 = vmul_n_f32(*v49, v46);
          ++v49;
          --v48;
        }

        while (v48);
      }

      ++v45;
      v47 += 128;
    }

    while (v45 != v5);
  }
}

uint64_t sub_1AF275E98(void *a1, CFX::CrossFrameResourceManager *this, unsigned int a3, void *a4, float a5)
{
  v21[385] = *MEMORY[0x1E69E9840];
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (COERCE_UNSIGNED_INT64(a5) ^ 0x43C4F620D84108D1)) ^ ((0x9DDFEA08EB382D69 * (COERCE_UNSIGNED_INT64(a5) ^ 0x43C4F620D84108D1)) >> 47) ^ 0x43C4F620D84108D1);
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = a3;
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ a3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ a3)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ a3)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ a3)))) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(this, v13);
  if (!v15)
  {
    v15 = sub_1AF276028(this, v13);
    MEMORY[0x1EEE9AC00](v15);
    sub_1AF275BB0(a3, v21, a5);
    v18 = objc_msgSend_resourceManager(a1, v16, v17);
    sub_1AFDE8444(v18, v21, v12 << 10, 0);
    sub_1AF23355C((v15 + 16), v19);
  }

  if (a4)
  {
    memcpy(a4, &xmmword_1AFE47240[3 * v12 - 3], 16 * v12);
  }

  return sub_1AF1403B4(v15 + 16, v14);
}

void *sub_1AF276028(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF2760B0(CFX::CrossFrameResourceManager *a1)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, 0x5A81C135E3353BC9);
  if (!v2)
  {
    v2 = sub_1AF276170(a1, 0x5A81C135E3353BC9);
    v4 = sub_1AF1A0BFC(v2, v3);
    sub_1AF16CC34(v4, @"--SimplifiedMaterial--");
    v6 = sub_1AF1A1270(v4, v5);
    sub_1AF165A7C(v6, 2);
    sub_1AF2761F8((v2 + 16), v4);
    sub_1AF163FFC(v8, 1.0, 1.0, 1.0, 1.0);
    sub_1AF166340(v6, 1, v8);
  }

  return *(v2 + 16);
}

void *sub_1AF276170(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2761F8(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4 == a2)
  {
    v5 = sub_1AF0D5194(v4, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF0F5C(v5, v6, v7, v8, v9, v10, v11, v12);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    CFRelease(a2);
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = a2;
  }
}

uint64_t sub_1AF276268(uint64_t a1)
{
  *a1 = &unk_1F24EBB98;

  return a1;
}

void sub_1AF2762B0(uint64_t a1)
{
  *a1 = &unk_1F24EBB98;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF276318(uint64_t a1)
{
  *a1 = &unk_1F24EBBB8;

  return a1;
}

void sub_1AF276360(uint64_t a1)
{
  *a1 = &unk_1F24EBBB8;

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF2763C8(void *a1)
{
  *a1 = &unk_1F24EBBD8;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AF276414(void *a1)
{
  *a1 = &unk_1F24EBBD8;
  v1 = a1[2];
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF276484(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationImageProxyWillDie", a1, 0, 1u);
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }
}

uint64_t sub_1AF2764DC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654D30 = result;
  return result;
}

uint64_t sub_1AF276504(char a1)
{
  if (qword_1EB654D38 != -1)
  {
    sub_1AFDF0F94();
  }

  v3 = sub_1AF0D160C(qword_1EB654D30, 0x30uLL);
  if (!v3)
  {
    v4 = sub_1AF0D5194(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(v3 + 56) = a1;
  return v3;
}

uint64_t sub_1AF276584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  v14 = sub_1AF276608(a1, a2);
  result = v13(a3, a2, v14);
  if (result)
  {
    *(result + 40) = a1;
  }

  return result;
}

uint64_t sub_1AF276608(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF276650(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    return 1;
  }

  v11 = sub_1AF276608(a1, a2);
  return v10(v11);
}

uint64_t sub_1AF2766B0(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF1020(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (!*(v7 + 40))
  {
    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1098(v15, a2, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(v7 + 40);
  v23 = sub_1AF276608(v7, a2);
  return v22(v23, a2, a3, a4);
}

uint64_t sub_1AF276754(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

CFTypeRef sub_1AF27679C(uint64_t a1, CFTypeRef cf, char a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  result = *(a1 + 48);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 48) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
    *(a1 + 56) = a3;
  }

  return result;
}

__n128 sub_1AF276824(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1020(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  v13 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v13;
  return result;
}

void sub_1AF276880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

uint64_t sub_1AF2768B8()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB644878 = result;
  return result;
}

uint64_t sub_1AF2768E0()
{
  if (qword_1EB644880 != -1)
  {
    sub_1AFDF1110();
  }

  v1 = sub_1AF0D160C(qword_1EB644878, 0x20uLL);
  if (!v1)
  {
    v2 = sub_1AF0D5194(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t sub_1AF276950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = sub_1AF2769DC(a1, a2);
  return v15(a2, v16, a3, a4);
}

uint64_t sub_1AF2769DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1124(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

CFTypeRef sub_1AF276A24(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1124(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void sub_1AF276AA4(uint64_t result, _OWORD *a2)
{
  if (!result && (v4 = sub_1AF0D5194(0, a2), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1124(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    *(result + 16) = *a2;
    return;
  }

  *(result + 16) = 0;
  *(result + 24) = 0;
}

char *sub_1AF276B20(char **a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD3044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  os_unfair_lock_lock(&unk_1ED7398B8);
  v12 = sub_1AF1D2760(qword_1ED739AB8, v11);
  os_unfair_lock_unlock(&unk_1ED7398B8);
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v13 = a1[1];
  if (!v13)
  {
    v13 = a1;
  }

  *v13 = v12;
  a1[1] = v12;
  return v12;
}

void sub_1AF276BBC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4 == a1)
  {
    if (os_variant_has_internal_diagnostics() && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF119C();
    }
  }

  else if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    _Block_release(v5);
  }
}

uint64_t sub_1AF276C48()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED7398E8 = result;
  return result;
}

const void *sub_1AF276C70()
{
  v0 = *(sub_1AF276CB4() + 2);
  v1 = CFArrayGetCount(v0) - 1;

  return CFArrayGetValueAtIndex(v0, v1);
}

void *sub_1AF276CB4()
{
  if (qword_1ED739AC8 != -1)
  {
    sub_1AFDF11E4();
  }

  v0 = pthread_getspecific(qword_1ED739AA8);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x38uLL, 1uLL, 0x7057AC6EuLL);
    *(v0 + 2) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *(v0 + 32) = 0;
    pthread_setspecific(qword_1ED739AA8, v0);
    sub_1AF276F2C(1);
    os_unfair_lock_lock(&unk_1ED739AA0);
    v1 = qword_1ED739A98;
    *(v0 + 1) = qword_1ED739A98;
    if (v1)
    {
      *v1 = v0;
    }

    qword_1ED739A98 = v0;
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (!*(v0 + 3))
    {
      Current = CFRunLoopGetCurrent();
      v3 = CFRunLoopCopyCurrentMode(Current);
      v4 = CFRunLoopObserverCreate(0, 0xA0uLL, 1u, 2000000, sub_1AF2785F8, 0);
      *(v0 + 3) = v4;
      if (v4)
      {
        CFRunLoopAddObserver(Current, v4, *MEMORY[0x1E695E8D0]);
      }

      if (v3)
      {
        if (*(v0 + 3) && v3 != *MEMORY[0x1E695E8E0])
        {
          if (!qword_1EB6587C8 && CFEqual(v3, @"UITrackingRunLoopMode"))
          {
            qword_1EB6587C8 = CFRetain(v3);
            CFRunLoopAddObserver(Current, *(v0 + 3), v3);
          }

          if (v3 != qword_1EB6587C8)
          {
            CFRunLoopAddObserver(Current, *(v0 + 3), v3);
          }
        }

        CFRelease(v3);
      }
    }
  }

  return v0;
}

void sub_1AF276F2C(int a1)
{
  v2 = sub_1AF276CB4();
  if (CFArrayGetCount(*(v2 + 2)) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    v3 = *(v2 + 2);
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  }

  if (qword_1ED7398F0 != -1)
  {
    sub_1AFDF12D8();
  }

  v6 = sub_1AF0D160C(qword_1ED7398E8, 0x40uLL);
  v7 = v6;
  *(v6 + 32) = 0;
  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(v6 + 52) = *(v6 + 52) & 0xFD | v8;
  if (ValueAtIndex)
  {
    *(v6 + 64) = CFRetain(ValueAtIndex);
    atomic_fetch_add(ValueAtIndex + 14, 1u);
    if ((ValueAtIndex[13] & 2) == 0)
    {
      *(v7 + 32) = *(ValueAtIndex + 4);
      v9 = *(v7 + 24);
      v10 = *(ValueAtIndex + 3);
      if (v9 != v10)
      {
        if (v9)
        {
          CFRelease(*(v7 + 24));
          *(v7 + 24) = 0;
          v10 = *(ValueAtIndex + 3);
        }

        if (v10)
        {
          v10 = CFRetain(v10);
        }

        *(v7 + 24) = v10;
      }
    }
  }

  CFArrayAppendValue(*(v2 + 2), v7);

  CFRelease(v7);
}

void sub_1AF277058()
{
  if (*&qword_1ED739AC0 == 0.0)
  {
    qword_1ED739AC0 = CACurrentMediaTime();
  }
}

uint64_t sub_1AF27708C()
{
  os_unfair_lock_lock(&unk_1ED739AA0);
  v0 = qword_1ED739A98;
  if (qword_1ED739A98)
  {
    while (1)
    {
      v1 = *(v0 + 40);
      if (v1)
      {
        v2 = *(v1 + 32);
        if (v2)
        {
          if ((*(v2 + 52) & 2) != 0 || *(v2 + 40) != 0.0)
          {
            break;
          }
        }
      }

      v0 = *(v0 + 8);
      if (!v0)
      {
        goto LABEL_7;
      }
    }

    v3 = 1;
  }

  else
  {
LABEL_7:
    v3 = 0;
  }

  os_unfair_lock_unlock(&unk_1ED739AA0);
  return v3;
}

void sub_1AF277114(int a1, int a2)
{
  if (!a2 || sub_1AF27708C())
  {
    prof_beginFlame("_CFXTransactionFlush", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1037);
    if (a1)
    {
      if (qword_1ED73AC90 != -1)
      {
        sub_1AFDF12EC();
      }

      dispatch_async(qword_1ED73AC98, &unk_1F24EBC68);
    }

    else
    {
      if (qword_1ED73AC90 != -1)
      {
        sub_1AFDF12EC();
      }

      dispatch_sync(qword_1ED73AC98, &unk_1F24EBC68);
    }

    prof_endFlame();
  }
}

uint64_t sub_1AF2771D4(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v84 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  result = sub_1AF1CF830(a3, a2);
  if (!result)
  {
    return result;
  }

  v14 = result;
  v15 = sub_1AF1DE538(a1, v13);
  v16 = *(a1 + 34);
  v17 = *(a1 + 35);
  qmemcpy(bytes, "transition-0x", sizeof(bytes));
  v18 = vdupq_n_s64(a2);
  v19.i64[0] = 0xF0000000FLL;
  v19.i64[1] = 0xF0000000FLL;
  v20 = vandq_s8(vuzp1q_s32(vshlq_u64(v18, xmmword_1AFE472E0), vshlq_u64(v18, xmmword_1AFE472D0)), v19);
  v21 = vandq_s8(vuzp1q_s32(vshlq_u64(v18, xmmword_1AFE47300), vshlq_u64(v18, xmmword_1AFE472F0)), v19);
  v22 = vandq_s8(vuzp1q_s32(vshlq_u64(v18, xmmword_1AFE47320), vshlq_u64(v18, xmmword_1AFE47310)), v19);
  v23 = vandq_s8(vuzp1q_s32(vshlq_u64(v18, xmmword_1AFE47340), vshlq_u64(v18, xmmword_1AFE47330)), v19);
  v19.i64[0] = 0xA0000000ALL;
  v19.i64[1] = 0xA0000000ALL;
  v24.i64[0] = 0x5700000057;
  v24.i64[1] = 0x5700000057;
  v80 = vuzp1q_s8(vuzp1q_s16(vbslq_s8(vcgtq_u32(v19, v21), (*&v21 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v21, v24)), vbslq_s8(vcgtq_u32(v19, v20), (*&v20 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v20, v24))), vuzp1q_s16(vbslq_s8(vcgtq_u32(v19, v23), (*&v23 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v23, v24)), vbslq_s8(vcgtq_u32(v19, v22), (*&v22 | __PAIR128__(0x3000000030, 0x3000000030)), vaddq_s32(v22, v24))));
  v81 = v16 + 97;
  v82 = v17 + 97;
  v83 = 0;
  v25 = CFStringCreateWithBytes(0, bytes, 31, 0x8000100u, 0);
  v27 = v25;
  v28 = *(a5 + 32);
  if (v28 <= 0.0)
  {
    sub_1AF118354(v14, a4, v25);
    v35 = v28;
LABEL_14:
    (*(a6 + 16))(a6, v35);
    v37 = 0;
    v65 = 1;
    goto LABEL_15;
  }

  v75 = v25;
  v76 = a4;
  v29 = sub_1AF1CD954(v15, v26);
  v30 = *(a1 + 16);
  v32 = sub_1AF1CDA60(v29, v31);
  v34 = sub_1AF1CDB3C(v29, v33);
  sub_1AF1C34F8(v30, a2, v32, v34, *(a1 + 34), *(a1 + 35));
  v35 = v28;
  v77 = a6;
  (*(a6 + 16))(a6, v28);
  v78 = v15;
  v37 = sub_1AF1CD954(v15, v36);
  v38 = *(a1 + 16);
  v40 = sub_1AF1CDA60(v37, v39);
  v42 = sub_1AF1CDB3C(v37, v41);
  sub_1AF1C34F8(v38, a2, v40, v42, *(a1 + 34), *(a1 + 35));
  v43 = *(a1 + 16);
  v45 = sub_1AF1CDA60(v29, v44);
  v47 = sub_1AF1CDB3C(v29, v46);
  v48 = sub_1AF1C35C0(v43, a2, v45, v47, *(a1 + 34), *(a1 + 35));
  v50 = sub_1AF113D84(v48, v49);
  sub_1AF113F9C(v50, v37);
  v52 = *&qword_1ED739AC0;
  if (*&qword_1ED739AC0 == 0.0)
  {
    v52 = CACurrentMediaTime();
    qword_1ED739AC0 = *&v52;
  }

  sub_1AF116CA4(v14, v51, v52);
  sub_1AF117998(v14, a1);
  v53 = *(a1 + 16);
  v55 = sub_1AF1CDA60(v29, v54);
  v57 = sub_1AF1CDB3C(v29, v56);
  sub_1AF1C34F8(v53, a2, v55, v57, *(a1 + 34), *(a1 + 35));
  sub_1AF11407C(v50, v29);
  sub_1AF113510(v50, 1);
  sub_1AF1129D0(v50, v58, v28);
  v60 = *(a5 + 36);
  if (v60 != 0.0)
  {
    sub_1AF112FE0(v50, v59, v60);
  }

  v61 = *(a5 + 24);
  v15 = v78;
  a6 = v77;
  if (!v61)
  {
    sub_1AF120C44();
    v61 = v62;
  }

  sub_1AF112C48(v50, v61);
  sub_1AF1182E4(v14, v50, a1, v76, v75);
  v63 = v50;
  v27 = v75;
  CFRelease(v63);
  CFRelease(v29);
  if (!v37)
  {
    goto LABEL_14;
  }

  v65 = 0;
LABEL_15:
  v66 = sub_1AF1CFFC0(a3, v64);
  v67 = sub_1AF1DEC44(v66, a1);
  if (v67)
  {
    v69 = v67;
    if (v65)
    {
      v37 = sub_1AF1CD954(v15, v68);
      v70 = *(a1 + 16);
      v72 = sub_1AF1CDA60(v37, v71);
      v74 = sub_1AF1CDB3C(v37, v73);
      sub_1AF1C34F8(v70, a2, v72, v74, *(a1 + 34), *(a1 + 35));
    }

    sub_1AF1DECEC(v69, a1, v37);
  }

  CFRelease(v27);
  CFRelease(a1);
  if (v37)
  {
    CFRelease(v37);
  }

  return 1;
}

uint64_t sub_1AF277660(uint64_t a1, void *a2, CFStringRef theString, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !theString)
  {
    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  v10 = sub_1AF1DB6D0(a2, theString, 0);
  v12 = sub_1AF1DE3A8(v10, v11);
  if (!v10 || (v13 = v12) == 0)
  {
    if (v10)
    {
      CFRelease(v10);
    }

    v15 = sub_1AF0D5194(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = theString;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_DEFAULT, "Warning: invalid keypath: %@ sent to object %@", &v16, 0x16u);
    }

    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  result = sub_1AF2771D4(v10, v12, a1, a2, a4, a5);
  if ((result & 1) == 0)
  {
    return (*(a5 + 16))(a5, a2, theString, *(a4 + 32));
  }

  return result;
}

uint64_t sub_1AF27779C(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3)
  {
    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  v10 = a4;
  v12 = sub_1AF1DB72C(a2, a3, a4, 0);
  v14 = sub_1AF1DE3A8(v12, v13);
  if (!v12 || (v15 = v14) == 0)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v17 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = a3;
      v20 = 1024;
      v21 = v10;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_DEFAULT, "Warning: invalid key+index: %@ %d sent to object %@", &v18, 0x1Cu);
    }

    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  result = sub_1AF2771D4(v12, v14, a1, a2, a5, a6);
  if ((result & 1) == 0)
  {
    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  return result;
}

uint64_t sub_1AF2778F4(uint64_t a1, void *a2, const __CFString *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2 || !a3 || !a4)
  {
    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  v12 = sub_1AF1DB7C8(a2, a3, a4, 0);
  v14 = sub_1AF1DE3A8(v12, v13);
  if (!v12 || (v15 = v14) == 0)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v17 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = a3;
      v20 = 2112;
      v21 = a4;
      v22 = 2112;
      v23 = a2;
      _os_log_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_DEFAULT, "Warning: invalid key+subscript: %@ %@ sent to object %@", &v18, 0x20u);
    }

    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  result = sub_1AF2771D4(v12, v14, a1, a2, a5, a6);
  if ((result & 1) == 0)
  {
    return (*(a6 + 16))(a6, a2, a3, a4, *(a5 + 32));
  }

  return result;
}

void sub_1AF277A4C(char a1)
{
  v2 = sub_1AF276CB4();
  os_unfair_lock_lock(&unk_1ED739AA0);
  v3 = *(v2 + 2);
  Count = CFArrayGetCount(v3);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  if (ValueAtIndex[5] == 0.0)
  {
    v8 = ValueAtIndex;
    prof_beginFlame("CFXTransactionCommit", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1362);
    v9 = *(v8 + 52);
    v11 = CACurrentMediaTime();
    *(v8 + 40) = v11;
    if (a1)
    {
      *(v8 + 52) |= 1u;
      sub_1AF277BEC(v8, v10);
    }

    else
    {
      v12 = v11;
      v13 = sub_1AF276B20(v2 + 5, v10);
      *(v13 + 5) = 0;
      *(v13 + 6) = v12;
      *(v13 + 4) = CFRetain(v8);
    }

    v14 = sub_1AF276CB4();
    v15 = CFArrayGetCount(v14[2]);
    v16 = v15 - 1;
    if (v15 <= 1)
    {
      v17 = sub_1AF0D5194(v15, v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
      if (v18)
      {
        sub_1AFDF1300(v17, v19, v20, v21, v22, v23, v24, v25);
      }

      v26 = sub_1AF0D5194(v18, v19);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF1378();
      }
    }

    else
    {
      CFArrayRemoveValueAtIndex(v14[2], v16);
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (CFArrayGetCount(*(v2 + 2)) <= 1 && (v9 & 4) == 0 && (a1 & 1) == 0)
    {
      sub_1AF277114(1, 0);
    }

    prof_endFlame();
  }

  else
  {
    v7 = sub_1AF0D5194(ValueAtIndex, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF13AC();
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
  }
}

void sub_1AF277BEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 52) & 1) != 0 && !*(a1 + 48) && !atomic_load((a1 + 56)))
  {
    CFRetain(a1);
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = CFRetain(*(a1 + 64));
      v16 = atomic_load(v13 + 14);
      if (v16 <= 0)
      {
        v17 = sub_1AF0D5194(v14, v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF13E0(v17, v15, v18, v19, v20, v21, v22, v23);
        }
      }

      v24 = *(a1 + 64);
      if (v24 != v13)
      {
        v25 = sub_1AF0D5194(v24, v15);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF1458(v25, v15, v26, v27, v28, v29, v30, v31);
        }

        v24 = *(a1 + 64);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      *(a1 + 64) = 0;
      atomic_fetch_add(v13 + 14, 0xFFFFFFFF);
      sub_1AF278E3C(a1, v15);
      if (!atomic_load(v13 + 14))
      {
        sub_1AF277BEC(v13, v32);
      }

      CFRelease(v13);
    }

    else
    {
      sub_1AF278E3C(a1, v12);
    }

    CFRelease(a1);
  }
}

void sub_1AF277D18(const void *a1, const void *a2)
{
  v4 = sub_1AF276C70();
  Mutable = *(v4 + 2);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v4 + 2) = Mutable;
  }

  if (a2)
  {

    CFDictionarySetValue(Mutable, a1, a2);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, a1);
  }
}

const __CFDictionary *sub_1AF277DAC(const void *a1)
{
  result = *(sub_1AF276C70() + 2);
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

void *sub_1AF277DF8(const void *a1)
{
  v2 = sub_1AF276C70();
  v3 = v2[9];
  if (v3)
  {
    _Block_release(v3);
  }

  result = _Block_copy(a1);
  v2[9] = result;
  return result;
}

void sub_1AF277E5C(float a1)
{
  v2 = sub_1AF276C70();
  v4 = v2;
  if ((v2[13] & 2) != 0)
  {
    v5 = sub_1AF0D5194(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF14D0();
    }
  }

  v4[8] = a1;
}

CFTypeRef sub_1AF277EF8(CFTypeRef a1)
{
  v2 = sub_1AF276C70();
  v4 = v2;
  if ((v2[52] & 2) != 0)
  {
    v5 = sub_1AF0D5194(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1504();
    }
  }

  result = *(v4 + 3);
  if (result != a1)
  {
    if (result)
    {
      CFRelease(result);
      *(v4 + 3) = 0;
    }

    if (a1)
    {
      result = CFRetain(a1);
    }

    else
    {
      result = 0;
    }

    *(v4 + 3) = result;
  }

  return result;
}

void sub_1AF277F9C(float a1)
{
  v2 = sub_1AF276C70();
  v4 = v2;
  if ((v2[13] & 2) != 0)
  {
    v5 = sub_1AF0D5194(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1538();
    }
  }

  v4[9] = a1;
}

_BYTE *sub_1AF278014(char a1)
{
  result = sub_1AF276CB4();
  result[32] = a1;
  return result;
}

void sub_1AF278058(int a1)
{
  v2 = sub_1AF276C70();
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v2[52] = v2[52] & 0xFB | v3;
  if (a1)
  {
    qword_1ED739AC0 = CACurrentMediaTime();
  }
}

uint64_t sub_1AF2780EC(uint64_t a1)
{
  if (*(sub_1AF276CB4() + 32))
  {
    return 1;
  }

  else
  {
    return (*(a1 + 52) >> 2) & 1;
  }
}

void *sub_1AF27814C(uint64_t a1)
{
  result = pthread_getspecific(qword_1ED739AB0);
  if (result)
  {
    v3 = result;
    sub_1AF119D24(a1, result);
    result = sub_1AF119CDC(a1, v4);
    *result = sub_1AF2781C0;
    result[1] = sub_1AF27826C;
    ++*(v3 + 12);
  }

  return result;
}

void *sub_1AF2781C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF119DA4(a1, a2);
  v5 = v3;
  if (!v3)
  {
    v6 = sub_1AF0D5194(0, v4);
    v3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v3)
    {
      sub_1AFDF0FA8(v6, v4, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 48))
  {
    v13 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF156C(v13, v4, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(v5 + 48) - 1;
  *(v5 + 48) = v20;
  if (!v20)
  {
    sub_1AF277BEC(v5, v4);
  }

  sub_1AF119D24(a1, 0);
  result = sub_1AF119CDC(a1, v21);
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_1AF27826C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF119DA4(a1, a2);
  v5 = v3;
  if (!v3)
  {
    v6 = sub_1AF0D5194(0, v4);
    v3 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v3)
    {
      sub_1AFDF0FA8(v6, v4, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 48))
  {
    v13 = sub_1AF0D5194(v3, v4);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF15E4(v13, v4, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(v5 + 48) - 1;
  *(v5 + 48) = v20;
  if (!v20)
  {
    sub_1AF277BEC(v5, v4);
  }

  sub_1AF119D24(a1, 0);
  result = sub_1AF119CDC(a1, v21);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_1AF278318()
{
  v0 = pthread_getspecific(qword_1ED739AB0);
  if (v0 && !v0[3])
  {

    sub_1AF120C44();
  }
}

double sub_1AF27835C()
{
  v0 = pthread_getspecific(qword_1ED739AB0);
  if (v0)
  {
    return v0[8];
  }

  else
  {
    return 0.0;
  }
}

void sub_1AF278390(_BOOL8 a1, const void *a2, const void *a3, const void *a4, char a5, const void *a6)
{
  v11 = a1;
  if (!a6 && (v12 = sub_1AF0D5194(a1, a2), a1 = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF165C(v12, a2, v13, v14, v15, v16, v17, v18);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v19 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF16D4(v19, v20, v21, v22, v23, v24, v25, v26);
  }

LABEL_6:
  v27 = sub_1AF276CB4();
  os_unfair_lock_lock(&unk_1ED739AA0);
  v29 = sub_1AF276B20(v27 + 5, v28);
  if (a3)
  {
    v30 = CFRetain(a3);
  }

  else
  {
    v30 = 0;
  }

  *(v29 + 2) = v30;
  if (a2)
  {
    v31 = CFRetain(a2);
  }

  else
  {
    v31 = 0;
  }

  *(v29 + 1) = v31;
  if (a4)
  {
    v32 = CFRetain(a4);
  }

  else
  {
    v32 = 0;
  }

  *(v29 + 3) = v32;
  *(v29 + 5) = _Block_copy(a6);
  if (v11)
  {
    v33 = CFRetain(v11);
  }

  else
  {
    v33 = 0;
  }

  *(v29 + 4) = v33;
  *(v29 + 6) = CACurrentMediaTime();
  v29[56] = a5;
  os_unfair_lock_unlock(&unk_1ED739AA0);
}

void *sub_1AF2784CC()
{
  pthread_key_create(&qword_1ED739AA8, sub_1AF27852C);
  pthread_key_create(&qword_1ED739AB0, nullsub_184);
  result = sub_1AF1D26F8(64, 2048);
  qword_1ED739AB8 = result;
  return result;
}

void sub_1AF27852C(void *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(&unk_1ED739AA0);
    v2 = *(a1 + 5);
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (v2)
    {
      sub_1AF277114(0, 0);
    }

    os_unfair_lock_lock(&unk_1ED739AA0);
    v3 = *(a1 + 1);
    if (*a1)
    {
      v4 = (*a1 + 8);
    }

    else
    {
      v4 = &qword_1ED739A98;
    }

    *v4 = v3;
    if (v3)
    {
      *v3 = *a1;
    }

    os_unfair_lock_unlock(&unk_1ED739AA0);
    v5 = *(a1 + 3);
    if (v5)
    {
      CFRunLoopObserverInvalidate(v5);
      CFRelease(*(a1 + 3));
    }

    CFRelease(*(a1 + 2));
  }

  free(a1);
}

void sub_1AF2785F8(uint64_t a1)
{
  v2 = sub_1AF276CB4();
  if (v2 && v2[3] == a1)
  {

    sub_1AF277114(1, 1);
  }
}

void sub_1AF278650()
{
  *&v72[5] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&unk_1ED739AA0);
  v0 = qword_1ED739A98;
  if (qword_1ED739A98)
  {
    v1 = 0;
    v2 = 0;
    v3 = 0;
    do
    {
      v5 = v0 + 5;
      v4 = v0[5];
      if (v4 && (v6 = v4[4]) != 0 && ((*(v6 + 52) & 2) != 0 || *(v6 + 40) != 0.0))
      {
        v7 = v0[5];
        if (v3)
        {
          if (v2)
          {
            *v2 = v4;
          }

          v7 = v3;
        }

        v8 = *v4;
        ++v1;
        if (*v4)
        {
          while (1)
          {
            v9 = v8;
            v10 = v8[4];
            if (!v10 || (*(v10 + 52) & 2) == 0 && *(v10 + 40) == 0.0)
            {
              break;
            }

            v8 = *v9;
            ++v1;
            v4 = v9;
            if (!*v9)
            {
              goto LABEL_20;
            }
          }

          *v4 = 0;
          *v5 = v9;
          v3 = v7;
        }

        else
        {
          v9 = v4;
LABEL_20:
          *v9 = 0;
          v3 = v7;
          v4 = v9;
          *v5 = 0;
          v0[6] = 0;
        }
      }

      else
      {
        v4 = v2;
      }

      v0 = v0[1];
      v2 = v4;
    }

    while (v0);
    os_unfair_lock_unlock(&unk_1ED739AA0);
    if (v1)
    {
      v11 = malloc_type_malloc(8 * v1, 0x2004093837F09uLL);
      v12 = v11;
      if (v1 <= 0)
      {
        qsort(v11, v1, 8uLL, sub_1AF278D68);
        v14 = v1 - 1;
      }

      else
      {
        for (i = 0; i != v1; ++i)
        {
          v11[i] = v3;
          v3 = *v3;
        }

        qsort(v11, v1, 8uLL, sub_1AF278D68);
        v14 = v1 - 1;
        if (v1 != 1)
        {
          v15 = v12 + 1;
          v16 = *v12;
          v17 = (v1 - 1);
          do
          {
            v18 = *v15++;
            *v16 = v18;
            v16 = v18;
            --v17;
          }

          while (v17);
        }
      }

      *v12[v14] = 0;
      v19 = *v12;
      free(v12);
      if (v19)
      {
        for (j = 0; ; ++j)
        {
          pthread_mutex_lock(&stru_1ED72F680);
          prof_beginFlame("CFXTransactionExecuteFlush", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Transactions/CFXTransaction.c", 1254);
          v22 = sub_1AF0D5194(v20, v21);
          v23 = os_signpost_id_generate(v22);
          v25 = sub_1AF0D5194(v23, v24);
          v63 = v23 - 1;
          if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v26 = v25;
            if (os_signpost_enabled(v25))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "TransactionFlush", &unk_1AFF70A1D, buf, 2u);
            }
          }

          spid = v23;
          v27 = MEMORY[0x1E695E9F8];
          Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          v29 = CFSetCreateMutable(0, 0, v27);
          v30 = 0;
          qword_1ED739AC0 = CACurrentMediaTime();
          v31 = v19;
          do
          {
            v32 = v31[4];
            if (v31[5])
            {
              if ((v32[52] & 2) == 0)
              {
                pthread_setspecific(qword_1ED739AB0, v31[4]);
              }

              v33 = v31[2];
              if (v33 && sub_1AF16D234(v33))
              {
                v35 = sub_1AF1C3FAC(v31[2], v34);
                if (v35)
                {
                  if (!CFSetContainsValue(Mutable, v35))
                  {
                    CFSetAddValue(Mutable, v35);
                    sub_1AF1CEA20(v35, v36);
                  }

                  if ((v31[7] & 1) != 0 && !CFSetContainsValue(v29, v35))
                  {
                    CFSetAddValue(v29, v35);
                  }
                }
              }

              else
              {
                v35 = 0;
              }

              sub_1AF277660(v35, v31[2], v31[3], v32, v31[5]);
              pthread_setspecific(qword_1ED739AB0, 0);
            }

            else
            {
              if (!v30)
              {
                v30 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              }

              CFArrayAppendValue(v30, v32);
            }

            v31 = *v31;
          }

          while (v31);
          if (v30)
          {
            v74.length = CFArrayGetCount(v30);
            v74.location = 0;
            CFArrayApplyFunction(v30, v74, sub_1AF278D88, 0);
            CFRelease(v30);
          }

          v37 = v19;
          do
          {
            v39 = *v37;
            v38 = v37[1];
            if (v38)
            {
              CFRelease(v38);
              v37[1] = 0;
            }

            v40 = v37[2];
            if (v40)
            {
              CFRelease(v40);
              v37[2] = 0;
            }

            v41 = v37[3];
            if (v41)
            {
              CFRelease(v41);
              v37[3] = 0;
            }

            v42 = v37[4];
            if (v42)
            {
              CFRelease(v42);
              v37[4] = 0;
            }

            v43 = v37[5];
            if (v43)
            {
              _Block_release(v43);
            }

            v37 = v39;
          }

          while (v39);
          os_unfair_lock_lock(&unk_1ED7398B8);
          do
          {
            v45 = *v19;
            sub_1AF1D28EC(qword_1ED739AB8, v19, v44);
            v19 = v45;
          }

          while (v45);
          os_unfair_lock_unlock(&unk_1ED7398B8);
          sub_1AF28A5A0(Mutable, &unk_1F24EBC88);
          LocalCenter = CFNotificationCenterGetLocalCenter();
          if (!LocalCenter)
          {
            v48 = sub_1AF0D5194(0, v46);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF174C(v71, v72, v48);
            }
          }

          *v65 = MEMORY[0x1E69E9820];
          v66 = 0x40000000;
          v67 = sub_1AF278DA0;
          v68 = &unk_1E7A7DBC0;
          v69 = LocalCenter;
          sub_1AF28A5A0(v29, v65);
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          v51 = sub_1AF0D5194(v49, v50);
          if (v63 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v52 = v51;
            if (os_signpost_enabled(v51))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v52, OS_SIGNPOST_INTERVAL_END, spid, "TransactionFlush", &unk_1AFF70A1D, buf, 2u);
            }
          }

          prof_endFlame();
          v53 = pthread_mutex_unlock(&stru_1ED72F680);
          if (j == 6)
          {
            break;
          }

          v55 = sub_1AF276CB4();
          os_unfair_lock_lock(&unk_1ED739AA0);
          v19 = v55[5];
          if (!v19 || (v56 = v19[4]) == 0 || (v57 = v55[5], (*(v56 + 52) & 2) == 0) && (v57 = v55[5], *(v56 + 40) == 0.0))
          {
            os_unfair_lock_unlock(&unk_1ED739AA0);
            return;
          }

          while (1)
          {
            v58 = v57;
            v59 = v57[4];
            if (!v59 || (*(v59 + 52) & 2) == 0 && *(v59 + 40) == 0.0)
            {
              break;
            }

            v57 = *v58;
            if (!*v58)
            {
              v55[5] = 0;
              goto LABEL_94;
            }
          }

          v60 = *v58;
          v55[5] = *v58;
          if (v60)
          {
            goto LABEL_95;
          }

LABEL_94:
          v55[6] = 0;
LABEL_95:
          *v58 = 0;
          os_unfair_lock_unlock(&unk_1ED739AA0);
        }

        v61 = sub_1AF0D5194(v53, v54);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *v65 = 0;
          _os_log_impl(&dword_1AF0CE000, v61, OS_LOG_TYPE_DEFAULT, "Warning: max successive flush reached", v65, 2u);
        }
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&unk_1ED739AA0);
  }
}

uint64_t sub_1AF278D68(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 48) >= *(*a2 + 48))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1AF278DA0(uint64_t a1, const void *a2)
{
  sub_1AF1CFECC(a2, a2);
  v4 = *(a1 + 32);

  CFNotificationCenterPostNotificationWithOptions(v4, @"kCFXWorldDidUpdateNotification", a2, 0, 4uLL);
}

dispatch_queue_t sub_1AF278DF8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("com.apple.vfx.transaction-queue", v1);
  qword_1ED73AC98 = result;
  return result;
}

void sub_1AF278E3C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF0FA8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

uint64_t (*sub_1AF278E94(int a1, int a2))(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a1 <= 22)
  {
    if (a1 <= 8)
    {
      if (a1 == 7)
      {
        if (a2 == 39)
        {
          v3 = sub_1AF279444;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 35;
        v5 = sub_1AF2793E0;
      }

      else
      {
        if (a1 != 8)
        {
          return 0;
        }

        if (a2 == 23)
        {
          v3 = sub_1AF27950C;
        }

        else
        {
          v3 = 0;
        }

        v4 = a2 == 22;
        v5 = sub_1AF2794A8;
      }

      goto LABEL_35;
    }

    if (a1 == 9)
    {
      if (a2 == 27)
      {
        v3 = sub_1AF2795AC;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 26;
      v5 = sub_1AF279570;
      goto LABEL_35;
    }

    if (a1 != 22)
    {
      return 0;
    }

    v2 = sub_1AF279018;
LABEL_39:
    if (a2 == 8)
    {
      return v2;
    }

    return 0;
  }

  if (a1 <= 26)
  {
    if (a1 != 23)
    {
      if (a1 != 26)
      {
        return 0;
      }

      if (a2 == 9)
      {
        v3 = sub_1AF279130;
      }

      else
      {
        v3 = 0;
      }

      v4 = a2 == 8;
      v5 = sub_1AF2790AC;
      goto LABEL_35;
    }

    v2 = sub_1AF2792A8;
    goto LABEL_39;
  }

  if (a1 != 27)
  {
    if (a1 == 35)
    {
      v2 = sub_1AF279340;
LABEL_42:
      if (a2 != 7)
      {
        return 0;
      }

      return v2;
    }

    if (a1 == 39)
    {
      v2 = sub_1AF279390;
      goto LABEL_42;
    }

    return 0;
  }

  if (a2 == 9)
  {
    v3 = sub_1AF27922C;
  }

  else
  {
    v3 = 0;
  }

  v4 = a2 == 8;
  v5 = sub_1AF2791A4;
LABEL_35:
  if (v4)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF279018(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V2.4S, #1.0
    }

    do
    {
      v14 = a3 + v5;
      v15.i64[0] = *v14;
      v15.i32[2] = *(v14 + 8);
      v15.i32[3] = 1.0;
      v16 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(vmaxnmq_f32(v15, _Q1), _Q2), xmmword_1AFE47350)), xmmword_1AFE47360);
      LODWORD(v14) = v16.i32[0] | (v16.i32[1] << 10);
      *v16.i8 = vshl_u32(*&vextq_s8(v16, v16, 8uLL), 0x1E00000014);
      *(result + v6) = v14 | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2790AC(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10 = a3 + v5;
      v11.i64[0] = *v10;
      v11.i64[1] = *(v10 + 8);
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v12, v8, v11)), v9);
      LODWORD(v10) = v13.i32[0] | (v13.i32[1] << 8);
      *v13.i8 = vshl_u32(*&vextq_s8(v13, v13, 8uLL), 0x1800000010);
      *(result + v6) = v10 | v13.i32[0] | v13.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279130(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x437F0000u);
    v9.i64[0] = 0xFF000000FFLL;
    v9.i64[1] = 0xFF000000FFLL;
    do
    {
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v10, v8, *(a3 + v5))), v9);
      v12 = v11.i32[0] | (v11.i32[1] << 8);
      *v11.i8 = vshl_u32(*&vextq_s8(v11, v11, 8uLL), 0x1800000010);
      *(result + v6) = v12 | v11.i32[0] | v11.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2791A4(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = a3 + v5;
      v16.i64[0] = *v15;
      v16.i64[1] = *(v15 + 8);
      v17 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(v16)), v13, v16)), v14);
      LODWORD(v15) = v17.i32[0] | (v17.i32[1] << 8);
      *v17.i8 = vshl_u32(*&vextq_s8(v17, v17, 8uLL), 0x1800000010);
      *(result + v6) = v15 | v17.i32[0] | v17.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF27922C(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V0.4S, #-1.0 }

    v13 = vdupq_n_s32(0x42FF0000u);
    v14.i64[0] = 0xFF000000FFLL;
    v14.i64[1] = 0xFF000000FFLL;
    do
    {
      v15 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q0, vcgezq_f32(*(a3 + v5))), v13, *(a3 + v5))), v14);
      v16 = v15.i32[0] | (v15.i32[1] << 8);
      *v15.i8 = vshl_u32(*&vextq_s8(v15, v15, 8uLL), 0x1800000010);
      *(result + v6) = v16 | v15.i32[0] | v15.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2792A8(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    __asm { FMOV            V2.4S, #1.0 }

    do
    {
      v13 = a3 + v5;
      v14.i64[0] = *v13;
      v14.i32[2] = *(v13 + 8);
      v14.i32[3] = 1.0;
      v15.i64[0] = 0x3F0000003F000000;
      v15.i64[1] = 0x3F0000003F000000;
      v16 = vcvtq_s32_f32(vmlaq_f32(v15, xmmword_1AFE47370, vminnmq_f32(vmaxnmq_f32(v14, 0), _Q2)));
      v15.i32[0] = vmovn_s32(v16).u32[0];
      *v16.i8 = vshl_u32(vand_s8(*&vextq_s8(v16, v16, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      *(result + v6) = v15.u16[0] | (v15.u16[1] << 10) | v16.i32[0] | v16.i32[1];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279340(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279390(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x46FFFE00u);
    do
    {
      v9 = (result + v6);
      v10 = vcvt_s32_f32(vmul_f32(*(a3 + v5), v8));
      *v9 = v10.i16[0];
      v9[1] = v10.i16[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2793E0(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF279444(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdup_n_s32(0x4B400000u);
    v9 = vdup_n_s32(0xCB400000);
    v10 = vdup_n_s32(0x38000100u);
    do
    {
      v11 = (a3 + v5);
      v12.i32[0] = *v11;
      v12.i32[1] = v11[1];
      *(result + v6) = vmul_f32(vadd_f32(vadd_s32(v12, v8), v9), v10);
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF2794A8(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3B004020u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_s32(vshlq_s32(vshlq_u32(v10, xmmword_1AFE47380), xmmword_1AFE47390)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1AF27950C(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3A802008u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_1AFE473A0), xmmword_1AFE47360)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1AF279570(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF179C();
  }
}

void sub_1AF2795AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF179C();
  }
}

uint64_t sub_1AF2795E8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_1AF28857C(a1, a2))
  {
    v5 = sub_1AF28857C(a2, v4);
  }

  else
  {
    v5 = 0;
  }

  return (sub_1AF278E94(v3, a2) != 0) | v5 & 1u;
}

void sub_1AF27964C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = (a2 >> 16);
  v9 = HIDWORD(a2);
  v10 = (a4 >> 16);
  if (HIDWORD(a2) != HIDWORD(a4))
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF17D0(v11);
    }
  }

  v12 = sub_1AF278E94(v8, v10);
  if (v12)
  {
    v12(a1, v6, a3, v4, v9);
  }

  else if (sub_1AF28857C(v8, v13) && sub_1AF28857C(v10, v14) && v9)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      *v20.i64 = sub_1AF279750(v10, (a3 + v18), v15, v16, v17);
      sub_1AF279B88(v8, a1 + v19, v20);
      v19 += v6;
      v18 += v4;
      --v9;
    }

    while (v9);
  }
}

double sub_1AF279750(uint64_t a1, const float *a2, float32x4_t a3, float a4, float a5)
{
  v5 = a1;
  switch(a1)
  {
    case 1:
      a3.f32[0] = *a2;
      return *a3.i64;
    case 7:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 8:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 9:
      a3 = *a2;
      return *a3.i64;
    case 14:
      v26 = *a2;
      v27 = (v26 >> 10) & 0x1F;
      if (v27 == 31)
      {
        v28 = 2139095040;
      }

      else
      {
        v28 = (v26 >> 10) & 0x1F;
      }

      if (v27)
      {
        _ZF = v27 == 31;
      }

      else
      {
        _ZF = 1;
      }

      if (_ZF)
      {
        v30 = v28;
      }

      else
      {
        v30 = (v27 << 23) + 939524096;
      }

      LODWORD(v31) = v30 | (v26 << 16) & 0x80000000 | (v26 >> 7) & 7 | (8 * (v26 & 0x3FF)) & 0x1FFF | ((v26 & 0x3FF) << 13);
      goto LABEL_32;
    case 22:
      v14 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_s32(vshlq_s32(vshlq_u32(v14, xmmword_1AFE47380), xmmword_1AFE47390));
      v15 = xmmword_1AFE473C0;
      goto LABEL_51;
    case 23:
      v19 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v19, xmmword_1AFE473A0), xmmword_1AFE47360));
      v15 = xmmword_1AFE473B0;
      goto LABEL_51;
    case 26:
      v20 = vld1q_dup_f32(a2);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v20, xmmword_1AFE42AA0), v21));
      v11 = 998277249;
      goto LABEL_50;
    case 27:
      *v32.i8 = vshl_u32(vdup_n_s32(*a2), 0x1000000018);
      v32.i32[2] = *a2 << 8;
      *&v32.i32[3] = *a2;
      __asm { FMOV            V1.4S, #-1.0 }

      a3 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v32, 0x18uLL)), vdupq_n_s32(0x3C010204u)), _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      a3.i64[0] = vminnmq_f32(a3, _Q1).u64[0];
      return *a3.i64;
    case 34:
      a3.i16[0] = *a2;
      a3.f32[0] = a3.u32[0];
      v9 = 0.000015259;
      goto LABEL_31;
    case 35:
      a3.i16[0] = *a2;
      v10.f32[0] = a3.u32[0];
      LOWORD(a4) = *(a2 + 1);
      v10.f32[1] = LODWORD(a4);
      *a3.f32 = vmul_f32(v10, vdup_n_s32(0x37800080u));
      return *a3.i64;
    case 36:
      a3.i16[0] = *a2;
      LOWORD(a4) = *(a2 + 1);
      LOWORD(a5) = *(a2 + 2);
      v16.f32[0] = a3.u32[0];
      v16.f32[1] = LODWORD(a4);
      v16.i64[1] = COERCE_UNSIGNED_INT(LODWORD(a5));
      a3.i64[0] = vmulq_f32(v16, vdupq_n_s32(0x37800080u)).u64[0];
      return *a3.i64;
    case 37:
      a3 = vcvtq_f32_u32(vmovl_u16(*a2));
      v11 = 931135616;
      goto LABEL_50;
    case 38:
      a3.f32[0] = *a2;
      v9 = 0.000030519;
LABEL_31:
      v31 = a3.f32[0] * v9;
LABEL_32:
      a3.i64[0] = LODWORD(v31);
      return *a3.i64;
    case 39:
      v22.i32[0] = *a2;
      v22.i32[1] = *(a2 + 1);
      *a3.f32 = vmul_f32(vadd_f32(vadd_s32(v22, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x38000100u));
      return *a3.i64;
    case 40:
      *v23.i32 = *a2;
      v23.i32[1] = *(a2 + 2);
      v24 = vdupq_n_s32(0xCB400000);
      v25 = vaddw_s16(vdupq_n_s32(0x4B400000u), v23);
      goto LABEL_49;
    case 41:
      v24 = vdupq_n_s32(0xCB400000);
      v25 = vaddw_s16(vdupq_n_s32(0x4B400000u), *a2);
LABEL_49:
      a3 = vaddq_f32(v25, v24);
      v11 = 939524352;
LABEL_50:
      v15 = vdupq_n_s32(v11);
LABEL_51:
      a3.i64[0] = vmulq_f32(a3, v15).u64[0];
      break;
    case 42:
      v38 = *a2;
      v39 = (v38 >> 10) & 0x1F;
      if (v39 == 31)
      {
        v40 = 2139095040;
      }

      else
      {
        v40 = (v38 >> 10) & 0x1F;
      }

      if (v39)
      {
        v41 = v39 == 31;
      }

      else
      {
        v41 = 1;
      }

      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = (v39 << 23) + 939524096;
      }

      v43 = v42 | (v38 << 16) & 0x80000000 | (v38 >> 7) & 7 | (8 * (v38 & 0x3FF)) & 0x1FFF | ((v38 & 0x3FF) << 13);
      v44 = *(a2 + 1);
      v45 = (v44 >> 10) & 0x1F;
      if (v45 && v45 != 31)
      {
        v46 = (v45 << 23) + 939524096;
      }

      else if (v45 == 31)
      {
        v46 = 2139095040;
      }

      else
      {
        v46 = (v44 >> 10) & 0x1F;
      }

      a3.i32[0] = v43;
      a3.i32[1] = v46 | (v44 << 16) & 0x80000000 | (v44 >> 7) & 7 | (8 * (v44 & 0x3FF)) & 0x1FFF | ((v44 & 0x3FF) << 13);
      break;
    case 43:
      v6.i32[0] = *a2;
      v6.i32[1] = *(a2 + 1);
      v6.i64[1] = *(a2 + 2);
      v7.i64[0] = 0x8000000080000000;
      v7.i64[1] = 0x8000000080000000;
      v8 = vandq_s8(vshlq_n_s32(v6, 0x10uLL), v7);
      a3 = vshlq_n_s32(v6, 0xDuLL);
      v7.i64[0] = 0x3800000038000000;
      v7.i64[1] = 0x3800000038000000;
      a3.i64[0] = vaddq_s32(vaddq_s32(vandq_s8(a3, vdupq_n_s32(0xF800000u)), v7), vorrq_s8(v8, vandq_s8(a3, vdupq_n_s32(0x7FE000u)))).u64[0];
      break;
    case 44:
      v12.i64[0] = 0x8000000080000000;
      v12.i64[1] = 0x8000000080000000;
      a3 = vshll_n_u16(*a2, 0xDuLL);
      v13.i64[0] = 0x3800000038000000;
      v13.i64[1] = 0x3800000038000000;
      a3.i64[0] = vaddq_s32(vorrq_s8(vandq_s8(a3, vdupq_n_s32(0xF800000u)), vorrq_s8(vandq_s8(vmovl_s16(*a2), v12), vandq_s8(a3, vdupq_n_s32(0x7FE000u)))), v13).u64[0];
      break;
    default:
      v17 = sub_1AF0D5194(a1, a2);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      a3.i64[0] = 0;
      if (v18)
      {
        sub_1AFDF1854(v5, v17);
        a3.i64[0] = 0;
      }

      break;
  }

  return *a3.i64;
}

void sub_1AF279B88(uint64_t result, uint64_t a2, float32x4_t a3)
{
  v3 = result;
  switch(result)
  {
    case 1:
      *a2 = a3.i32[0];
      return;
    case 7:
      *a2 = a3.i64[0];
      return;
    case 8:
      *a2 = a3.i64[0];
      *(a2 + 8) = a3.i32[2];
      return;
    case 9:
      *a2 = a3;
      return;
    case 14:
      v35 = (a3.i32[0] >> 23);
      v36 = v35 - 112;
      v37 = v35 - 113;
      v38 = a3.i16[1] & 0x8000 | 0x7BFF;
      if ((a3.i32[0] & 0x7FFFFF) != 0)
      {
        v39 = (a3.i16[1] & 0x8000) + 1;
      }

      else
      {
        v39 = a3.i16[1] & 0x8000;
      }

      v40 = v39 | 0x7C00;
      if (v35 == 255)
      {
        v38 = v40;
      }

      if (v35 >= 0x71)
      {
        v41 = v38;
      }

      else
      {
        v41 = a3.i16[1] & 0x8000;
      }

      v6 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | (v36 << 10);
      if (v37 > 0x1D)
      {
        LOWORD(v6) = v41;
      }

      goto LABEL_34;
    case 22:
      __asm { FMOV            V1.4S, #-1.0; jumptable 00000001AF279BC4 case 22 }

      v18 = vmaxnmq_f32(a3, _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      v20 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(v18, _Q1), xmmword_1AFE47350)), xmmword_1AFE47360);
      v21 = vextq_s8(v20, v20, 8uLL).u64[0];
      v22 = v20.i32[0] | (v20.i32[1] << 10);
      v23 = 0x1E00000014;
      goto LABEL_37;
    case 23:
      __asm { FMOV            V1.4S, #1.0 }

      v28.i64[0] = 0x3F0000003F000000;
      v28.i64[1] = 0x3F0000003F000000;
      v29 = vcvtq_s32_f32(vmlaq_f32(v28, xmmword_1AFE47370, vminnmq_f32(vmaxnmq_f32(a3, 0), _Q1)));
      _Q1.i32[0] = vmovn_s32(v29).u32[0];
      v22 = _Q1.u16[0] | (_Q1.u16[1] << 10);
      v30 = vshl_u32(vand_s8(*&vextq_s8(v29, v29, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      goto LABEL_38;
    case 26:
      v31.i64[0] = 0x3F0000003F000000;
      v31.i64[1] = 0x3F0000003F000000;
      v32 = vcvtq_s32_f32(vmlaq_f32(v31, vdupq_n_s32(0x437F0000u), a3));
      goto LABEL_36;
    case 27:
      __asm { FMOV            V2.4S, #-1.0 }

      v32 = vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q2, vcgezq_f32(a3)), vdupq_n_s32(0x42FF0000u), a3));
LABEL_36:
      v43.i64[0] = 0xFF000000FFLL;
      v43.i64[1] = 0xFF000000FFLL;
      v44 = vandq_s8(v32, v43);
      v21 = vextq_s8(v44, v44, 8uLL).u64[0];
      v22 = v44.i32[0] | (v44.i32[1] << 8);
      v23 = 0x1800000010;
LABEL_37:
      v30 = vshl_u32(v21, v23);
LABEL_38:
      *a2 = v22 | v30.i32[0] | v30.i32[1];
      return;
    case 34:
      v6 = vmla_n_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), a3.f32[0]).f32[0];
      goto LABEL_34;
    case 35:
      v7 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), *a3.f32));
      LOWORD(v8) = v7.i16[2];
      *a2 = v7.i16[0];
      goto LABEL_119;
    case 36:
      v24.i64[0] = 0x3F0000003F000000;
      v24.i64[1] = 0x3F0000003F000000;
      v25 = vcvtq_s32_f32(vmlaq_f32(v24, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_20;
    case 37:
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v10 = vcvtq_s32_f32(vmlaq_f32(v9, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_42;
    case 38:
      v6 = (32767.0 * a3.f32[0]);
LABEL_34:
      *a2 = v6;
      break;
    case 39:
      v33 = vcvt_s32_f32(vmul_f32(*a3.f32, vdup_n_s32(0x46FFFE00u)));
      *a2 = v33.i16[0];
      *(a2 + 2) = v33.i16[2];
      break;
    case 40:
      v25 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_20:
      v34 = vmovn_s32(v25);
      *a2 = v34.i32[0];
      *(a2 + 4) = v34.i16[2];
      break;
    case 41:
      v10 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_42:
      *a2 = vmovn_s32(v10);
      break;
    case 42:
      LOWORD(v45) = a3.i16[1] & 0x8000;
      v46 = (a3.i32[0] >> 23);
      if (v46 - 113 > 0x1D)
      {
        if (v46 >= 0x71)
        {
          if (v46 == 255)
          {
            v49 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v49;
            }

            LOWORD(v45) = v49 | 0x7C00;
          }

          else
          {
            LOWORD(v45) = v45 | 0x7BFF;
          }
        }
      }

      else
      {
        v45 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v46 - 112) << 10);
      }

      *a2 = v45;
      v79 = (a3.i32[1] >> 23);
      v80 = v79 - 112;
      v81 = v79 - 113;
      v82 = a3.i16[3] & 0x8000 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        v83 = (a3.i16[3] & 0x8000) + 1;
      }

      else
      {
        v83 = a3.i16[3] & 0x8000;
      }

      v84 = v83 | 0x7C00;
      if (v79 == 255)
      {
        v82 = v84;
      }

      if (v79 >= 0x71)
      {
        v85 = v82;
      }

      else
      {
        v85 = a3.i16[3] & 0x8000;
      }

      v8 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v80 << 10);
      if (v81 > 0x1D)
      {
        LOWORD(v8) = v85;
      }

LABEL_119:
      *(a2 + 2) = v8;
      break;
    case 43:
      LOWORD(v4) = a3.i16[1] & 0x8000;
      v5 = (a3.i32[0] >> 23);
      if (v5 - 113 > 0x1D)
      {
        if (v5 >= 0x71)
        {
          if (v5 == 255)
          {
            v47 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v47;
            }

            LOWORD(v4) = v47 | 0x7C00;
          }

          else
          {
            LOWORD(v4) = v4 | 0x7BFF;
          }
        }
      }

      else
      {
        v4 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v5 - 112) << 10);
      }

      *a2 = v4;
      v50 = (a3.i32[1] >> 23);
      v51 = v50 - 112;
      v52 = v50 - 113;
      v53 = a3.i16[3] & 0x8000 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        v54 = (a3.i16[3] & 0x8000) + 1;
      }

      else
      {
        v54 = a3.i16[3] & 0x8000;
      }

      v55 = v54 | 0x7C00;
      if (v50 == 255)
      {
        v53 = v55;
      }

      if (v50 >= 0x71)
      {
        v56 = v53;
      }

      else
      {
        v56 = a3.i16[3] & 0x8000;
      }

      v57 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v51 << 10);
      if (v52 > 0x1D)
      {
        LOWORD(v57) = v56;
      }

      *(a2 + 2) = v57;
      v58 = (a3.i32[2] >> 23);
      v59 = v58 - 112;
      v60 = v58 - 113;
      v61 = a3.i16[5] & 0x8000 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        v62 = (a3.i16[5] & 0x8000) + 1;
      }

      else
      {
        v62 = a3.i16[5] & 0x8000;
      }

      v63 = v62 | 0x7C00;
      if (v58 == 255)
      {
        v61 = v63;
      }

      if (v58 >= 0x71)
      {
        v64 = v61;
      }

      else
      {
        v64 = a3.i16[5] & 0x8000;
      }

      v65 = a3.i16[5] & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v59 << 10);
      if (v60 > 0x1D)
      {
        LOWORD(v65) = v64;
      }

      *(a2 + 4) = v65;
      break;
    case 44:
      LOWORD(v11) = a3.i16[1] & 0x8000;
      v12 = (a3.i32[0] >> 23);
      if (v12 - 113 > 0x1D)
      {
        if (v12 >= 0x71)
        {
          if (v12 == 255)
          {
            v48 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v48;
            }

            LOWORD(v11) = v48 | 0x7C00;
          }

          else
          {
            LOWORD(v11) = v11 | 0x7BFF;
          }
        }
      }

      else
      {
        v11 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v12 - 112) << 10);
      }

      *a2 = v11;
      LOWORD(v11) = a3.i16[3] & 0x8000;
      v66 = (a3.i32[1] >> 23);
      if (v66 - 113 > 0x1D)
      {
        if (v66 >= 0x71)
        {
          if (v66 == 255)
          {
            v67 = a3.i16[3] & 0x8000;
            if ((a3.i32[1] & 0x7FFFFF) != 0)
            {
              ++v67;
            }

            LOWORD(v11) = v67 | 0x7C00;
          }

          else
          {
            LOWORD(v11) = v11 | 0x7BFF;
          }
        }
      }

      else
      {
        v11 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | ((v66 - 112) << 10);
      }

      *(a2 + 2) = v11;
      v68 = (a3.i32[2] >> 23);
      v69 = v68 - 112;
      v70 = v68 - 113;
      v71 = a3.i16[5] & 0x8000 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        v72 = (a3.i16[5] & 0x8000) + 1;
      }

      else
      {
        v72 = a3.i16[5] & 0x8000;
      }

      v73 = v72 | 0x7C00;
      if (v68 == 255)
      {
        v71 = v73;
      }

      if (v68 >= 0x71)
      {
        v74 = v71;
      }

      else
      {
        v74 = a3.i16[5] & 0x8000;
      }

      v75 = a3.i16[5] & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v69 << 10);
      if (v70 > 0x1D)
      {
        LOWORD(v75) = v74;
      }

      *(a2 + 4) = v75;
      LOWORD(v75) = a3.i16[7] & 0x8000;
      v76 = (a3.i32[3] >> 23);
      if (v76 - 113 > 0x1D)
      {
        if (v76 >= 0x71)
        {
          LOWORD(v75) = v75 | 0x7BFF;
          v77 = (a3.i32[3] & 0x7FFFFF) != 0 ? (a3.i16[7] & 0x8000) + 1 : a3.i16[7] & 0x8000;
          v78 = v77 | 0x7C00;
          if (v76 == 255)
          {
            LOWORD(v75) = v78;
          }
        }
      }

      else
      {
        v75 = a3.i16[7] & 0x8000 | (a3.i32[3] >> 13) & 0x3FF | ((v76 - 112) << 10);
      }

      *(a2 + 6) = v75;
      break;
    default:
      v26 = sub_1AF0D5194(result, a2);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF1854(v3, v26);
      }

      break;
  }
}

float32_t sub_1AF27A190(_BOOL8 a1, float32x4_t *a2, float32x4_t *a3, __n128 a4)
{
  v6 = a1;
  if (!a1 && (v28 = a4, v7 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT), a4 = v28, a1))
  {
    sub_1AFDF18D4(v7, a2, v8, v9, v10, v11, v12, v13);
    a4 = v28;
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v29 = a4;
  v14 = sub_1AF0D5194(a1, a2);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  a4 = v29;
  if (v15)
  {
    sub_1AFDF194C(v14, v16, v17, v18, v19, v20, v21, v22);
    a4 = v29;
  }

LABEL_6:
  v23 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], a2[2], *v6, 2), a2[1], *v6->f32, 1), *a2, COERCE_FLOAT(*v6));
  v23.i32[3] = a3->i32[3];
  *a3 = v23;
  v24 = vabs_f32(a4.n128_u64[0]);
  if (v24.f32[0] < v24.f32[1])
  {
    v24.f32[0] = v24.f32[1];
  }

  v25 = fabsf(a4.n128_f32[2]);
  if (v24.f32[0] >= v25)
  {
    v26 = v24.f32[0];
  }

  else
  {
    v26 = v25;
  }

  result = v26 * v6->f32[3];
  v23.f32[3] = result;
  *a3 = v23;
  return result;
}

double sub_1AF27A280(_BOOL8 a1, __int128 *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF19C4(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1A3C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  _Q0 = *v3;
  _Q1 = v3[1];
  v21 = v3[2];
  LODWORD(_S7) = *(v3 + 5);
  _S2 = COERCE_FLOAT(*(v3 + 3));
  __asm { FMLA            S6, S7, V1.S[1] }

  v29 = -COERCE_FLOAT(*(v3 + 1));
  __asm
  {
    FMLA            S17, S7, V0.S[1]
    FMLA            S16, S2, V0.S[1]
  }

  v32 = ((COERCE_FLOAT(*v3) * _S6) - (*&_Q1 * _S17)) + (*&v21 * _S16);
  if (v32 == 0.0)
  {
    v33 = xmmword_1AFE20180;
    v34 = xmmword_1AFE20160;
    v35 = xmmword_1AFE20150;
  }

  else
  {
    v36 = 1.0 / v32;
    HIDWORD(v35) = 0;
    *&v35 = _S6 * v36;
    *(&v35 + 1) = -(((*&v21 * -_S2) + (*&_Q1 * _S7)) * v36);
    HIDWORD(v33) = 0;
    *(&v35 + 2) = ((*&_Q1 * *(&v21 + 1)) - (*(&_Q1 + 1) * *&v21)) * v36;
    v37 = ((*&v21 * v29) + (*&_Q0 * _S7)) * v36;
    v38 = (*&_Q0 * *(&v21 + 1)) - (*(&_Q0 + 1) * *&v21);
    HIDWORD(v34) = 0;
    *&v34 = -(_S17 * v36);
    *(&v34 + 1) = v37;
    *(&v34 + 2) = -(v38 * v36);
    *&v33 = _S16 * v36;
    *(&v33 + 1) = -(((*&_Q1 * v29) + (*&_Q0 * _S2)) * v36);
    *(&v33 + 2) = ((*(&_Q0 + 1) * -*&_Q1) + (*&_Q0 * *(&_Q1 + 1))) * v36;
  }

  *a2 = v35;
  a2[1] = v34;
  result = 0.0;
  a2[2] = v33;
  a2[3] = xmmword_1AFE201A0;
  return result;
}

void sub_1AF27A408(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

CFComparisonResult sub_1AF27A460(_BOOL8 a1, uint64_t *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF1AB4(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF1B2C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  if (sub_1AF1A0EB0(*v3, a2))
  {
    v19 = sub_1AF1A0EB0(*v3, v18);
  }

  else
  {
    v19 = &stru_1F2575650;
  }

  if (sub_1AF1A0EB0(*a2, v18))
  {
    v21 = sub_1AF1A0EB0(*a2, v20);
  }

  else
  {
    v21 = &stru_1F2575650;
  }

  result = CFStringCompare(v19, v21, 0);
  if (result)
  {
    return result;
  }

  v23 = v3[1];
  v24 = a2[1];
  if (!v23)
  {
    v25 = 0;
    if (v24)
    {
      goto LABEL_15;
    }

LABEL_17:
    v26 = 0;
    goto LABEL_18;
  }

  v25 = sub_1AF1A7674(v23);
  if (!v24)
  {
    goto LABEL_17;
  }

LABEL_15:
  v26 = sub_1AF1A7674(v24);
LABEL_18:
  v27 = -1;
  if (v25 >= v26)
  {
    v27 = 1;
  }

  if (v25 == v26)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

void sub_1AF27A570(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v4 = sub_1AF1B2C1C(a1, v3);
  v6 = sub_1AF1B1FE0(a1, v5);
  if (v6 >= 1)
  {
    v8 = v6;
    if (sub_1AF1A3CCC(v4, v7) == v6)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = sub_1AF288058(0x10uLL);
        *v10 = 0;
        v10[1] = 0;
        v11 = sub_1AF1B2030(a1, i);
        if (v11)
        {
          v11 = CFRetain(v11);
        }

        *v10 = v11;
        if (sub_1AF1A3CCC(v4, v12) >= 1)
        {
          v13 = sub_1AF1A3D1C(v4, i, 0);
          if (v13)
          {
            v13 = CFRetain(v13);
          }

          v10[1] = v13;
        }

        CFArrayAppendValue(Mutable, v10);
      }

      if (v8 != 1)
      {
        v19.location = 0;
        v19.length = v8;
        CFArraySortValues(Mutable, v19, sub_1AF27A460, 0);
      }

      sub_1AF1B3498(a1, v14);
      sub_1AF1A52A0(v4, v15);
      for (j = 0; j != v8; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
        sub_1AF1A4FB0(v4, ValueAtIndex[1]);
        sub_1AF1B32F8(a1, *ValueAtIndex);
        sub_1AF27A408(ValueAtIndex);
      }
    }
  }

  CFRelease(Mutable);
}

uint64_t sub_1AF27A6EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(&v130[2] + 4) = *MEMORY[0x1E69E9840];
  v127 = 0u;
  v128 = 0u;
  context = 0u;
  v115 = 0;
  v114 = 0;
  v116 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  *&v6 = sub_1AF1BA240(a1, a2);
  v105[0] = v6;
  v105[1] = v7;
  v105[2] = v8;
  v105[3] = v9;
  v101 = xmmword_1AFE20150;
  v102 = xmmword_1AFE20160;
  v103 = xmmword_1AFE20180;
  v104 = xmmword_1AFE201A0;
  sub_1AF1BA204(a1, &v101, v10, v11, v12, v13, v14, v15);
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v94 = sub_1AF1B8774(a1, v16);
  if (v94)
  {
    v90 = sub_1AF1B887C(a1, v17);
    v91 = v18;
    v92 = v19;
    v93 = v20;
    sub_1AF1B87C4(a1, v21, v101, v102, v103, v104);
  }

  v108 = vdupq_n_s64(3uLL);
  v109 = xmmword_1AFE473F0;
  *&v113 = 0;
  memset(v106, 0, sizeof(v106));
  v110 = 4;
  v107 = 0;
  BYTE8(v113) = a4;
  v22 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  v24 = CFArrayCreateMutable(v22, 0, 0);
  v25 = CFArrayCreateMutable(v22, 0, MEMORY[0x1E695E9C0]);
  v26 = v22;
  v27 = CFDictionaryCreateMutable(v22, 0, 0, 0);
  *&context = Mutable;
  *(&context + 1) = v24;
  *&v127 = v106;
  v87 = v25;
  *&v128 = v25;
  *(&v128 + 1) = v27;
  v114 = 0;
  v115 = sub_1AF27AD74;
  v116 = 0;
  v28 = sub_1AF1BE1D8(a1, &v114, 0, &context);
  v30 = [VFXModel __createCFObject]_0(v28, v29);
  v32 = sub_1AF1A2E00(v30, v31);
  sub_1AF1A56EC(v32, @"Flattened");
  sub_1AF1B2C80(v30, v32);
  v100 = v32;
  CFRelease(v32);
  v88 = v30;
  cf = Mutable;
  *&context = v30;
  *(&context + 1) = v106;
  v86 = v27;
  *&v127 = v27;
  CFDictionaryApplyFunction(Mutable, sub_1AF27B150, &context);
  theArray = v24;
  Count = CFArrayGetCount(v24);
  v35 = Count;
  if (Count >= 1)
  {
    v36 = 0;
    do
    {
      while (1)
      {
        v37 = *(CFArrayGetValueAtIndex(theArray, v36) + 1);
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 3221225472;
        v125[2] = sub_1AF280994;
        v125[3] = &unk_1E7A7B0C8;
        v125[4] = v106;
        sub_1AF1A2BEC(v37, 1, v125);
        if (v109 == 4)
        {
          break;
        }

        if (++v36 >= v35)
        {
          goto LABEL_12;
        }
      }

      ++v36;
    }

    while (v108.i64[0] != 4 && v36 < v35);
  }

LABEL_12:
  v96 = v35;
  v95 = a1;
  v39 = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v98 = _Q0;
  do
  {
    if (*(v106 + v39) >= 1)
    {
      v45 = 0;
      do
      {
        v46 = v113;
        v47 = v108.i64[v39];
        if (!v47)
        {
          v48 = sub_1AF0D5194(Count, v34);
          Count = os_log_type_enabled(v48, OS_LOG_TYPE_FAULT);
          if (Count)
          {
            sub_1AFDF1BA4(v129, v130, v48);
          }
        }

        if (v46 <= (0x7FFFFFFF / v47) && v46 * v47 <= 0x1FFFFFFF)
        {
          v50 = malloc_type_calloc(4 * v46 * v47, 1uLL, 0xB66D967AuLL);
          v51 = CFDataCreateWithBytesNoCopy(v26, v50, 4 * v46 * v47, v26);
          v52 = sub_1AF1ADBE4(v51, v39, v46, v47, 1);
          CFRelease(v51);
          if (v52)
          {
            if (v39 == 2)
            {
              v53 = sub_1AF1AE6EC(v52, v34);
              if (v53 >= 1)
              {
                v55 = v53;
                for (i = 0; i != v55; ++i)
                {
                  sub_1AF1B6CC8(v52, i, v98, v54);
                }
              }
            }

            sub_1AF1A3F84(v32, v52, 0, 0);
            CFRelease(v52);
          }
        }

        ++v45;
      }

      while (v45 < *(v106 + v39));
    }

    ++v39;
  }

  while (v39 != 9);
  if (v35 >= 1)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    do
    {
      v99 = v57;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v57);
      v62 = ValueAtIndex[1];
      v63 = ValueAtIndex[3];
      v123 = 0u;
      v124 = 0u;
      v65 = xmmword_1AFE20160;
      v64 = xmmword_1AFE20150;
      v67 = xmmword_1AFE201A0;
      v66 = xmmword_1AFE20180;
      v121 = 0u;
      v122 = 0u;
      if (v63)
      {
        v68 = sub_1AF1B9B04(v63, v61);
        v64 = *v68;
        v65 = v68[1];
        v66 = v68[2];
        v67 = v68[3];
      }

      v69 = 0;
      v121 = v64;
      v122 = v65;
      v123 = v66;
      v124 = v67;
      do
      {
        if (*(v106 + v69) >= 1)
        {
          v70 = 0;
          v71 = v59;
          while (1)
          {
            v72 = sub_1AF1A4604(v100, v69, v70, 0);
            v73 = sub_1AF1A4604(v62, v69, v70, 1);
            if (!v73)
            {
              goto LABEL_46;
            }

            v59 = v73;
            if ((v69 - 2) < 3)
            {
              break;
            }

            if (v69 == 1)
            {
              v119 = 0u;
              v120 = 0u;
              *buf = 0u;
              v118 = 0u;
              sub_1AF27A280(&v121, buf);
              v76 = buf;
              v74 = v72;
              v75 = v59;
              goto LABEL_45;
            }

            if (v69)
            {
              v77 = sub_1AF0D5194(v73, v61);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1AF0CE000, v77, OS_LOG_TYPE_DEFAULT, "Warning: __MergeMeshSources unknown source type\n", buf, 2u);
              }

              goto LABEL_46;
            }

            sub_1AF27C3C0(v72, v73, &v121, v58);
LABEL_47:
            ++v70;
            v71 = v59;
            if (v70 >= *(v106 + v69))
            {
              goto LABEL_51;
            }
          }

          v74 = v72;
          v75 = v59;
          v76 = 0;
LABEL_45:
          sub_1AF27C3C0(v74, v75, v76, v58);
LABEL_46:
          v59 = v71;
          goto LABEL_47;
        }

LABEL_51:
        ++v69;
      }

      while (v69 != 9);
      if (v59)
      {
        v58 += sub_1AF1AE6EC(v59, v61);
      }

      v57 = v99 + 1;
    }

    while (v99 + 1 != v96);
  }

  sub_1AF27A570(v88);
  CFRelease(cf);
  sub_1AF27B1C0(theArray);
  CFRelease(v87);
  CFRelease(v86);
  CFRelease(theArray);
  sub_1AF1BA204(v95, v105, v78, v79, v80, v81, v82, v83);
  if (v94)
  {
    sub_1AF1B87C4(v95, v84, v90, v91, v92, v93);
  }

  return v88;
}

uint64_t sub_1AF27AD74(const void *a1, const __CFDictionary **a2)
{
  *&v66[5] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = a2[4];
  v6 = sub_1AF1B75A0(a1, a2);
  if (v6)
  {
    v7 = v6;
    if ((sub_1AF1BB054(a1) & 1) == 0)
    {
      v9 = a2[1];
      v10 = sub_1AF1B2C1C(v7, v8);
      if (v10)
      {
        v11 = v10;
        v12 = sub_1AF1A4CE8(v10, 1);
        if (v12)
        {
          if (!a1)
          {
            v14 = sub_1AF0D5194(v12, v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDD137C(v14, v13, v15, v16, v17, v18, v19, v20);
            }
          }

          v21 = sub_1AF1B75A0(a1, v13);
          if (v21)
          {
            v23 = v21;
            v24 = sub_1AF1B2C1C(v21, v22);
            if (v24)
            {
              v26 = v24;
              v27 = sub_1AF1A3CCC(v24, v25);
              if (v27)
              {
                v28 = v27;
                theArray = v9;
                v63 = v4;
                v61 = v11;
                v29 = 0x20040DC1BFBCFLL;
                allocator = *MEMORY[0x1E695E480];
                Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v27, 0);
                if (v28 >= 1)
                {
                  for (i = 0; i != v28; ++i)
                  {
                    v32 = v29;
                    v33 = malloc_type_malloc(0x20uLL, v29);
                    v33[1] = v26;
                    *v33 = sub_1AF1A3D1C(v26, i, 1);
                    v33[2] = sub_1AF1B2030(v23, i);
                    v33[3] = a1;
                    v34 = v33;
                    v29 = v32;
                    CFArrayAppendValue(Mutable, v34);
                  }
                }

                if (Mutable)
                {
                  Count = CFArrayGetCount(Mutable);
                  CFArrayAppendValue(v5, a1);
                  if (Count >= 1)
                  {
                    v36 = v29;
                    v37 = 0;
                    v38 = a2[2];
                    v39 = a2[5];
                    do
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v37);
                      if (!ValueAtIndex)
                      {
                        v42 = sub_1AF0D5194(0, v40);
                        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
                        {
                          sub_1AFDF1BE8(v65, v66, v42);
                        }
                      }

                      sub_1AF1BA79C(ValueAtIndex[3], v40);
                      v46 = 0;
                      if (v44 >= 1.0)
                      {
                        v45 = ValueAtIndex[2];
                        if (!v45 || sub_1AF1A17B8(v45, v43))
                        {
                          v46 = 1;
                        }
                      }

                      v47 = ValueAtIndex[2];
                      if (v47 && sub_1AF1A1224(v47, v43))
                      {
                        v46 |= 2uLL;
                      }

                      v48 = sub_1AF1A7034(*ValueAtIndex, v43);
                      if (v48 == 2)
                      {
                        v50 = (v46 | 0x10);
                      }

                      else
                      {
                        v49 = v46 | 4;
                        if (v48)
                        {
                          v49 = v46;
                        }

                        if (v48 == 1)
                        {
                          v50 = (v46 | 8);
                        }

                        else
                        {
                          v50 = v49;
                        }
                      }

                      Value = CFDictionaryGetValue(v63, v50);
                      if (!Value)
                      {
                        Value = CFDictionaryCreateMutable(allocator, 0, 0, MEMORY[0x1E695E9E8]);
                        CFDictionarySetValue(v63, v50, Value);
                        CFRelease(Value);
                      }

                      CFDictionarySetValue(v39, ValueAtIndex, *(v38 + 18));
                      v52 = CFDictionaryGetValue(Value, ValueAtIndex[2]);
                      if (!v52)
                      {
                        v52 = CFArrayCreateMutable(allocator, 0, 0);
                        CFDictionarySetValue(Value, ValueAtIndex[2], v52);
                        CFRelease(v52);
                      }

                      CFArrayAppendValue(v52, ValueAtIndex);
                      ++v37;
                    }

                    while (Count != v37);
                    v53 = sub_1AF1A4CE8(v61, 1);
                    if (v53)
                    {
                      v55 = 0;
                      *(v38 + 18) += sub_1AF1AE6EC(v53, v54);
                      do
                      {
                        v56 = sub_1AF1A4DBC(v61, v55);
                        if (v56 > *(v38 + v55))
                        {
                          *(v38 + v55) = v56;
                        }

                        ++v55;
                      }

                      while (v55 != 9);
                    }

                    v57 = malloc_type_malloc(0x20uLL, v36);
                    v58 = CFArrayGetValueAtIndex(Mutable, 0);
                    v59 = v58[1];
                    *v57 = *v58;
                    v57[1] = v59;
                    CFArrayAppendValue(theArray, v57);
                  }

                  CFRelease(Mutable);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_1AF27B150(char a1, CFDictionaryRef theDict, uint64_t *a3)
{
  v3 = a3[1];
  context = *a3;
  v6 = 0;
  if (*(v3 + 144) < 0x10000)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  HIDWORD(v6) = v4;
  LOBYTE(v6) = (a1 | *(v3 + 152)) & 1;
  v7 = a3[2];
  CFDictionaryApplyFunction(theDict, sub_1AF280210, &context);
}

void sub_1AF27B1C0(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      free(ValueAtIndex);
    }
  }

  CFArrayRemoveAllValues(a1);
}

uint64_t sub_1AF27B22C(_BOOL8 a1, const __CFArray *a2, uint64_t a3)
{
  v5 = a1;
  if (!a3)
  {
    v6 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF1C2C(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = sub_1AF1A2E00(a1, a2);
  Count = CFArrayGetCount(v5);
  if (Count >= 1)
  {
    v15 = Count;
    for (i = 0; i != v15; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      sub_1AF1A3F84(v13, ValueAtIndex, *(a3 + i), 0);
    }
  }

  v18 = CFArrayGetCount(a2);
  if (v18 >= 1)
  {
    v19 = v18;
    for (j = 0; j != v19; ++j)
    {
      v21 = CFArrayGetValueAtIndex(a2, j);
      sub_1AF1A4FB0(v13, v21);
    }
  }

  return v13;
}

uint64_t sub_1AF27B314(const __CFArray *a1)
{
  *(&v66[1] + 4) = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  if (Count != 1)
  {
    v54 = sub_1AF1A2E00(Count, v2);
    v7 = sub_1AF1B6A14(0, 0, 0, 3, 1);
    v8 = sub_1AF1B6A14(0, 1, 0, 3, 1);
    v51 = sub_1AF1B6A14(0, 3, 0, 2, 1);
    if (v3 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v49 = v8;
      v50 = v7;
      v47 = *MEMORY[0x1E695E480];
      v48 = v3;
      while (1)
      {
        v53 = v10;
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
        v12 = sub_1AF1A4604(ValueAtIndex, 0, 0, 1);
        v13 = sub_1AF1A4604(ValueAtIndex, 1, 0, 1);
        v14 = sub_1AF1A4604(ValueAtIndex, 3, 0, 1);
        v18 = sub_1AF1AE6EC(v12, v15);
        if (v18 >= 1)
        {
          for (i = 0; i != v18; ++i)
          {
            DWORD2(v58) = 0;
            *&v58 = 0;
            *&v20 = sub_1AF1AF084(v12, i, v17);
            v58 = v20;
            sub_1AF1B6E5C(v7, &v58, 1);
            *&bytes[8] = 0;
            *bytes = 0;
            *&v22 = sub_1AF1AF084(v13, i, v21);
            *bytes = v22;
            sub_1AF1B6E5C(v8, bytes, 1);
            v63 = 0.0;
            v63 = sub_1AF1AF104(v14, i, v23);
            sub_1AF1B6FF0(v51, &v63, 1);
          }
        }

        v24 = v18 + v9;
        if (sub_1AF1A3CCC(ValueAtIndex, v16) >= 1)
        {
          break;
        }

LABEL_46:
        v10 = v53 + 1;
        v9 = v24;
        v8 = v49;
        v7 = v50;
        if (v53 + 1 == v48)
        {
          goto LABEL_47;
        }
      }

      v25 = 0;
      while (1)
      {
        v26 = sub_1AF1A3D1C(ValueAtIndex, v25, 1);
        v28 = sub_1AF1A7034(v26, v27);
        Mutable = CFDataCreateMutable(v47, 0);
        v30 = sub_1AF1A7674(v26);
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v32 = sub_1AF1A79D0(v26, v31, &v58);
        if (v24 >= 0x10000)
        {
          break;
        }

        if (v30 >= 1)
        {
          for (j = 0; v30 != j; ++j)
          {
            if (v28 == 3)
            {
              *bytes = v58;
              v56 = v59;
              v57 = v60;
              *bytes = v9 + sub_1AF1A7BA8(bytes, j, 0, 0);
              v35 = bytes;
              v36 = Mutable;
              v37 = 2;
            }

            else if (v28 == 2)
            {
              *bytes = v58;
              v56 = v59;
              v57 = v60;
              LOWORD(v63) = v9 + sub_1AF1A7BA8(bytes, j, 0, 0);
              *bytes = v58;
              v56 = v59;
              v57 = v60;
              WORD1(v63) = v9 + sub_1AF1A7BA8(bytes, j, 1, 0);
              v35 = &v63;
              v36 = Mutable;
              v37 = 4;
            }

            else
            {
              if (v28)
              {
                v38 = sub_1AF0D5194(v32, v33);
                v32 = os_log_type_enabled(v38, OS_LOG_TYPE_FAULT);
                if (v32)
                {
                  sub_1AFDF1CA4(v65, v66, v38);
                }

                continue;
              }

              *bytes = v58;
              v56 = v59;
              v57 = v60;
              LOWORD(v63) = v9 + sub_1AF1A7BA8(bytes, j, 0, 0);
              *bytes = v58;
              v56 = v59;
              v57 = v60;
              WORD1(v63) = v9 + sub_1AF1A7BA8(bytes, j, 1, 0);
              *bytes = v58;
              v56 = v59;
              v57 = v60;
              WORD2(v63) = v9 + sub_1AF1A7BA8(bytes, j, 2, 0);
              v35 = &v63;
              v36 = Mutable;
              v37 = 6;
            }

            CFDataAppendBytes(v36, v35, v37);
          }
        }

        v44 = 2;
LABEL_43:
        v45 = sub_1AF1A6834(v32, v33);
        sub_1AF1A6A70(v45, v28, v30, Mutable, v44);
        sub_1AF1A4FB0(v54, v45);
        if (v45)
        {
          CFRelease(v45);
        }

        CFRelease(Mutable);
        if (++v25 >= sub_1AF1A3CCC(ValueAtIndex, v46))
        {
          goto LABEL_46;
        }
      }

      if (v30 < 1)
      {
LABEL_42:
        v44 = 4;
        goto LABEL_43;
      }

      v39 = 0;
      while (1)
      {
        if (v28 == 3)
        {
          *bytes = v58;
          v56 = v59;
          v57 = v60;
          *bytes = sub_1AF1A7BA8(bytes, v39, 0, 0) + v9;
          v40 = bytes;
          v41 = Mutable;
          v42 = 4;
        }

        else if (v28 == 2)
        {
          *bytes = v58;
          v56 = v59;
          v57 = v60;
          LODWORD(v63) = sub_1AF1A7BA8(bytes, v39, 0, 0) + v9;
          *bytes = v58;
          v56 = v59;
          v57 = v60;
          HIDWORD(v63) = sub_1AF1A7BA8(bytes, v39, 1, 0) + v9;
          v40 = &v63;
          v41 = Mutable;
          v42 = 8;
        }

        else
        {
          if (v28)
          {
            v43 = sub_1AF0D5194(v32, v33);
            v32 = os_log_type_enabled(v43, OS_LOG_TYPE_FAULT);
            if (v32)
            {
              sub_1AFDF1CA4(v61, &v62, v43);
            }

            goto LABEL_39;
          }

          *bytes = v58;
          v56 = v59;
          v57 = v60;
          LODWORD(v63) = sub_1AF1A7BA8(bytes, v39, 0, 0) + v9;
          *bytes = v58;
          v56 = v59;
          v57 = v60;
          HIDWORD(v63) = sub_1AF1A7BA8(bytes, v39, 1, 0) + v9;
          *bytes = v58;
          v56 = v59;
          v57 = v60;
          v64 = sub_1AF1A7BA8(bytes, v39, 2, 0) + v9;
          v40 = &v63;
          v41 = Mutable;
          v42 = 12;
        }

        CFDataAppendBytes(v41, v40, v42);
LABEL_39:
        if (v30 == ++v39)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_47:
    sub_1AF1ADBE0(v7);
    sub_1AF1ADBE0(v8);
    sub_1AF1ADBE0(v51);
    sub_1AF1A3F84(v54, v7, 0, 0);
    sub_1AF1A3F84(v54, v8, 0, 0);
    sub_1AF1A3F84(v54, v51, 0, 0);
    CFRelease(v7);
    CFRelease(v8);
    CFRelease(v51);
    return v54;
  }

  v4 = CFArrayGetValueAtIndex(a1, 0);

  return sub_1AF1A2EDC(v4, v5);
}

CFTypeRef sub_1AF27BA08(uint64_t a1, CFIndex a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v148 = *MEMORY[0x1E69E9840];
  v14 = sub_1AF1A7674(a3);
  if (sub_1AF1A7034(a3, v15) == 2)
  {
    return 0;
  }

  v131 = a7;
  v128 = sub_1AF2871B8(a3, 4 * v14);
  v130 = sub_1AF1AE6EC(a4, v17);
  v18 = sub_1AF16C20C(a1, a2);
  v20 = sub_1AF16C49C(v18, v19);
  v21 = malloc_type_malloc(16 * v20, 0x1000040451B5BE8uLL);
  v129 = a3;
  if (a6)
  {
    v22 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
    v133 = a5 != 0;
LABEL_7:
    if (v20 >= 1)
    {
      for (i = 0; i != v20; ++i)
      {
        v24 = sub_1AF16C4E4(v18, i);
        v26 = v24;
        if (v133)
        {
          *&v27 = sub_1AF1AF084(a5, *v24, v25);
          *cfa = v27;
          *v29.i64 = sub_1AF1AF084(a5, v26[1], v28);
          v30.i64[0] = 0x3F0000003F000000;
          v30.i64[1] = 0x3F0000003F000000;
          v31 = vmulq_f32(vaddq_f32(*cfa, v29), v30);
          v32 = vmulq_f32(v31, v31);
          *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
          *v32.f32 = vrsqrte_f32(v33);
          *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
          v21[i] = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
        }

        if (a6)
        {
          v34 = sub_1AF1AF104(a6, *v26, v25);
          v22[i] = vmul_f32(vadd_f32(*&v34, COERCE_FLOAT32X2_T(sub_1AF1AF104(a6, v26[1], v35))), 0x3F0000003F000000);
        }
      }
    }

    if (v133)
    {
      sub_1AF1B6E5C(a5, v21, v20);
    }

    if (a6)
    {
      sub_1AF1B6FF0(a6, v22, v20);
    }

    if (v22)
    {
      free(v22);
    }

    goto LABEL_20;
  }

  v133 = a5 != 0;
  if (a5)
  {
    v22 = 0;
    goto LABEL_7;
  }

LABEL_20:
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v37 = sub_1AF16C4E4(v18, j);
      *&v39 = sub_1AF1AF084(a4, *v37, v38);
      *cfb = v39;
      *v41.i64 = sub_1AF1AF084(a4, v37[1], v40);
      v42.i64[0] = 0x3F0000003F000000;
      v42.i64[1] = 0x3F0000003F000000;
      v21[j] = vmulq_f32(vaddq_f32(*cfb, v41), v42);
    }

    if ((v133 & v131) == 1)
    {
      v43 = 0;
      v127 = a5;
      do
      {
        v44 = sub_1AF16C4E4(v18, v43);
        v45 = *v44;
        v46 = v44[1];
        *&v48 = sub_1AF1AF084(a4, *v44, v47);
        *cfc = v48;
        v147 = v48;
        *&v50 = sub_1AF1AF084(a4, v46, v49);
        *v134 = v50;
        v146 = v50;
        *&v52 = sub_1AF1AF084(a5, v45, v51);
        v145 = v52;
        *&v54 = sub_1AF1AF084(a5, v46, v53);
        v144 = v54;
        v132 = v21[v43];
        *v56.i64 = sub_1AF1AF084(a5, v43 + v130, v55);
        v57 = vsubq_f32(*cfc, v132);
        v58 = vmulq_f32(v57, v57);
        v59 = vsubq_f32(*v134, v132);
        v60 = vmulq_f32(v59, v59);
        v143 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v58, v58, 8uLL), *&vextq_s8(v60, v60, 8uLL)), vadd_f32(vzip1_s32(*v58.i8, *v60.i8), vzip2_s32(*v58.i8, *v60.i8))));
        *cf = v56;
        v61 = vmulq_f32(v56, v56);
        v62 = sqrtf(v61.f32[2] + vaddv_f32(*v61.f32));
        v63 = 0uLL;
        v64 = &v147;
        v65 = &v145;
        v66 = &v143;
        v67 = 1;
        do
        {
          *v135 = v63;
          v68 = vsubq_f32(*v64, v132);
          v69 = vmulq_f32(v68, v68);
          *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
          v71 = v67;
          *v69.f32 = vrsqrte_f32(v70);
          *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
          v72 = vmulq_n_f32(v68, vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
          v73 = vmulq_f32(v72, v72);
          v74 = v62 * sqrtf(v73.f32[2] + vaddv_f32(*v73.f32));
          v75 = 0.0;
          v76 = 0.0;
          if (v74 > 0.0)
          {
            v77 = vmulq_f32(v72, *cf);
            v76 = acosf((v77.f32[2] + vaddv_f32(*v77.f32)) / v74);
          }

          v78 = *v65;
          v79 = vmulq_f32(v78, v78);
          v80 = v62 * sqrtf(v79.f32[2] + vaddv_f32(*v79.f32));
          if (v80 > 0.0)
          {
            v81 = vmulq_f32(*cf, v78);
            v75 = acosf((v81.f32[2] + vaddv_f32(*v81.f32)) / v80) * 0.5;
          }

          v84 = cosf(v75);
          if (v84 == 0.0)
          {
            v85 = sub_1AF0D5194(v82, v83);
            v86 = 1.0;
            if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF1CE8(&buf, v142, v85);
            }
          }

          else
          {
            v86 = v84;
          }

          v87 = v66->f32[0];
          v88 = cosf(v76 - v75);
          v67 = 0;
          v63 = vaddq_f32(*v135, vmulq_n_f32(*cf, ((v88 * v87) / v86) * 0.5));
          v64 = &v146;
          v65 = &v144;
          v66 = (&v143 + 4);
        }

        while ((v71 & 1) != 0);
        v21[v43++] = vaddq_f32(v132, v63);
        a5 = v127;
      }

      while (v43 != v20);
    }
  }

  sub_1AF1B6E5C(a4, v21, v20);
  free(v21);
  v136 = sub_1AF16C668(v129, a4, v18);
  if (v14 >= 1)
  {
    for (k = 0; k != v14; ++k)
    {
      v91 = sub_1AF16C948(v136, k);
      v93 = *v91;
      v92 = v91[1];
      v94 = v91[2];
      v95 = sub_1AF16C4E4(v18, *v91);
      v96 = sub_1AF16C4E4(v18, v92);
      v97 = sub_1AF16C4E4(v18, v94);
      v98 = sub_1AF1A7C24(v129, k, 0, 0);
      v99 = sub_1AF1A7C24(v129, k, 2, 0);
      v101 = *v95;
      if (*v95 == v98)
      {
        v102 = v95[1];
        v103 = v130;
        v104 = v93 + v130;
        v105 = v102 == v99;
        if (v102 == v99)
        {
          v106 = v93 + v130;
        }

        else
        {
          v106 = -1;
        }

        if (v105)
        {
          v104 = -1;
        }

        v107 = -1;
      }

      else
      {
        v108 = v95[1];
        v103 = v130;
        v109 = v108 == v98;
        if (v108 == v98)
        {
          v104 = v93 + v130;
        }

        else
        {
          v104 = -1;
        }

        if (v109)
        {
          v107 = -1;
        }

        else
        {
          v107 = v93 + v130;
        }

        v110 = v101 == v99;
        if (v101 == v99)
        {
          v106 = v104;
        }

        else
        {
          v106 = -1;
        }

        if (v110)
        {
          v104 = -1;
        }
      }

      if (*v96 == v98)
      {
        if (v96[1] == v99)
        {
          v106 = v92 + v103;
        }

        else
        {
          v104 = v92 + v103;
        }
      }

      else
      {
        v111 = v96[1];
        v112 = v92 + v103;
        v113 = v111 == v98;
        if (v111 == v98)
        {
          v114 = v92 + v103;
        }

        else
        {
          v107 = v92 + v103;
          v114 = v104;
        }

        if (!v113)
        {
          v112 = v106;
        }

        if (*v96 == v99)
        {
          v106 = v112;
        }

        else
        {
          v104 = v114;
        }
      }

      v115 = *v97;
      if (*v97 == v98)
      {
        v116 = v97[1];
        if (v116 == v99)
        {
          v117 = v94 + v103;
        }

        else
        {
          v117 = v106;
        }

        if (v116 == v99)
        {
          v118 = v104;
        }

        else
        {
          v118 = v94 + v103;
        }
      }

      else
      {
        v119 = v97[1];
        v120 = v94 + v103;
        v121 = v119 == v98;
        if (v119 == v98)
        {
          v122 = v94 + v103;
        }

        else
        {
          v107 = v94 + v103;
          v122 = v104;
        }

        if (!v121)
        {
          v120 = v106;
        }

        if (v115 == v99)
        {
          v117 = v120;
        }

        else
        {
          v117 = v106;
        }

        if (v115 == v99)
        {
          v118 = v104;
        }

        else
        {
          v118 = v122;
        }
      }

      if (v117 == -1 || v118 == -1 || v107 == -1)
      {
        v125 = sub_1AF0D5194(v99, v100);
        if (os_log_type_enabled(v125, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDF1D28(&v147, (&v147 + 4), v125);
        }
      }

      sub_1AF2875E4(v128, k, v117, v118, v107);
    }
  }

  v126 = sub_1AF2877C8(v128, v89);
  CFRetain(v126);
  CFRelease(v128);
  CFRelease(v18);
  CFRelease(v136);
  return CFAutorelease(v126);
}

uint64_t sub_1AF27C174(uint64_t a1, float32x4_t *a2)
{
  memset(v19, 0, sizeof(v19));
  v4 = sub_1AF1A2EDC(a1, a2);
  v5 = sub_1AF1A4CE8(v4, 0);
  v7 = sub_1AF1AF000(v5, v6);
  v9 = sub_1AF17032C(v7, v8);
  v11 = sub_1AF1AE6EC(v7, v10);
  sub_1AF27C294(v9, 0, v11, a2, 0);
  v12 = sub_1AF1A4C6C(a1, 0, 0);
  sub_1AF1A44D4(v4, v7, 0, v12);
  v13 = sub_1AF1A4F84(v4, 0);
  if (v13)
  {
    v15 = v13;
    v16 = sub_1AF1AF000(v13, v14);
    sub_1AF27A280(a2, v19);
    sub_1AF27C3C0(v16, v15, v19, 0);
    v17 = sub_1AF1A4C6C(a1, 1, 0);
    sub_1AF1A44D4(v4, v16, 0, v17);
    CFRelease(v16);
  }

  CFRelease(v7);
  return v4;
}

__CFData *sub_1AF27C294(__CFData *result, uint64_t a2, uint64_t a3, float32x4_t *a4, int a5)
{
  if (a3 >= 1)
  {
    v7 = a3;
    v9 = result;
    do
    {
      result = sub_1AF1CAFE0(v9, a2, a3);
      v10.i32[0] = *result;
      v11 = v10;
      v11.i32[1] = *(result + 1);
      v12 = v11;
      v12.i32[2] = *(result + 2);
      v13 = *a4;
      v14 = a4[1];
      v15 = a4[2];
      if (a5)
      {
        v16 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v15, v12, 2), v14, *v11.f32, 1), v13, v10.f32[0]);
        v17 = vmulq_f32(v12, v12);
        v18 = vmulq_f32(v16, v16);
        v18.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
        v19 = vdupq_lane_s32(*v18.f32, 0);
        v19.i32[3] = 0;
        v20 = vrsqrteq_f32(v19);
        v21 = vmulq_f32(v20, vrsqrtsq_f32(v19, vmulq_f32(v20, v20)));
        v22 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v18.f32[0] != 0.0)), 0x1FuLL));
        v22.i32[3] = 0;
        v23 = vbslq_s8(vcltzq_s32(v22), vmulq_f32(v16, vmulq_n_f32(vmulq_f32(v21, vrsqrtsq_f32(v19, vmulq_f32(v21, v21))), sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)))), v16);
      }

      else
      {
        v23 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4[3], v15, v12, 2), v14, *v11.f32, 1), v13, v10.f32[0]);
      }

      *result = v23.i64[0];
      *(result + 2) = v23.i32[2];
      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

void sub_1AF27C3C0(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4)
{
  v8 = sub_1AF17032C(a1, a2);
  v10 = sub_1AF17032C(a2, v9);
  v11 = sub_1AF12DB9C(v10);
  v12 = sub_1AF1CB3A4(v10, v8, a4);
  if (v12)
  {
    v15 = sub_1AF1CAFE0(v8, 0, v14);
    v16 = sub_1AF12DB9C(v8);
    v17 = sub_1AF1CAED0(v10);
    sub_1AF1B6AE4(a1, v15, v16, v17);
    if (a3)
    {
      v19 = sub_1AF1AE3D8(a1, v18) == 1;

      sub_1AF27C294(v8, a4, v11, a3, v19);
    }
  }

  else
  {
    v20 = sub_1AF0D5194(v12, v13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1D6C();
    }
  }
}

uint64_t sub_1AF27C4D8(uint64_t a1, uint64_t a2)
{
  v118 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1A4CE8(a1, a2);
  v13 = sub_1AF1A4F84(a1, a2);
  v14 = sub_1AF1A4604(a1, 3, 0, a2);
  v16 = v14;
  if (!v12 && (v17 = sub_1AF0D5194(v14, v15), v14 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT), v14))
  {
    sub_1AFDF1DA0(v17, v15, v18, v19, v20, v21, v22, v23);
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    goto LABEL_9;
  }

  v24 = sub_1AF0D5194(v14, v15);
  v14 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v14)
  {
    sub_1AFDF1E18(v24, v15, v25, v26, v27, v28, v29, v30);
  }

LABEL_9:
  if (!v16)
  {
    v31 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1E90(v31, v15, v32, v33, v34, v35, v36, v37);
    }
  }

  v114 = 0u;
  v115 = 0u;
  v38 = sub_1AF1AE1A8(v12, v15, &v114);
  if (!v114 || (v40 = v115, !v115))
  {
    v86 = sub_1AF0D5194(v38, v39);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F08();
    }

    return 0;
  }

  v112 = 0u;
  v113 = 0u;
  v41 = sub_1AF1AE1A8(v16, v39, &v112);
  if (!v112 || v113 != v40)
  {
    v87 = sub_1AF0D5194(v41, v42);
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F3C();
    }

    return 0;
  }

  v110 = 0u;
  v111 = 0u;
  v43 = sub_1AF1AE1A8(v13, v42, &v110);
  if (!v110 || v111 != v40)
  {
    v88 = sub_1AF0D5194(v43, v44);
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF1F70();
    }

    return 0;
  }

  v107 = v40;
  v45 = 16 * v40;
  v46 = malloc_type_calloc(v45, 1uLL, 0xE1E92334uLL);
  length = v45;
  v47 = malloc_type_calloc(v45, 1uLL, 0x7DD5A130uLL);
  v49 = sub_1AF1A3CCC(a1, v48);
  if (v49 >= 1)
  {
    v51 = v49;
    v52 = 0;
    v53 = 0;
    v108 = v49;
    while (1)
    {
      v54 = sub_1AF1A3D1C(a1, v53, 1);
      if (!sub_1AF1A7034(v54, v55) || sub_1AF1A7034(v54, v56) == 1)
      {
        v109 = 0;
        v57 = sub_1AF1A73C0(v54, &v109);
        if (v57)
        {
          v58 = v57;
          BytePtr = CFDataGetBytePtr(v57);
          if (BytePtr)
          {
            v61 = BytePtr;
            if (v109 == 1)
            {
              v62 = 0;
              v63 = 0;
            }

            else
            {
              if (v109 == 4)
              {
                v63 = 0;
                v62 = BytePtr;
              }

              else if (v109 == 2)
              {
                v62 = 0;
                v63 = BytePtr;
              }

              else
              {
                v64 = sub_1AF0D5194(BytePtr, v60);
                if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v117 = v109;
                  _os_log_error_impl(&dword_1AF0CE000, v64, OS_LOG_TYPE_ERROR, "Unreachable code: Unsupported index size (%zu)", buf, 0xCu);
                }

                v62 = 0;
                v63 = 0;
              }

              v61 = 0;
            }

            v65 = sub_1AF1A7674(v54);
            v66 = 3 * v65 * v109;
            if (v66 > CFDataGetLength(v58))
            {
              free(v46);
              free(v47);
              v104 = sub_1AF0D5194(v102, v103);
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDF1FA4();
              }

              return 0;
            }

            if (v65 < 1)
            {
              v52 = 0;
              v51 = v108;
            }

            else
            {
              v70 = 0;
              v71 = 0;
              v72 = 0;
              v73 = (v63 + 4);
              v74 = (v61 + 2);
              v75 = (v62 + 4);
              v51 = v108;
              do
              {
                if (v63)
                {
                  v72 = *(v73 - 2);
                  v71 = *(v73 - 1);
                  v70 = *v73;
                }

                else if (v62)
                {
                  v72 = *(v75 - 1);
                  v71 = *v75;
                  v70 = v75[1];
                }

                else if (v61)
                {
                  v72 = *(v74 - 2);
                  v71 = *(v74 - 1);
                  v70 = *v74;
                }

                v76 = *(v112 + v72 * BYTE6(v113));
                v77 = vsub_f32(*(v112 + v71 * BYTE6(v113)), v76);
                v78 = vsub_f32(*(v112 + v70 * BYTE6(v113)), v76);
                v79 = (-v77.f32[1] * v78.f32[0]) + (v77.f32[0] * v78.f32[1]);
                if (v79 == 0.0)
                {
                  v78 = vadd_f32(v78, COERCE_FLOAT32X2_T(-3.18618444e-58));
                  v77 = vadd_f32(v77, 0xB4000000B4000000);
                  v79 = (-v77.f32[1] * v78.f32[0]) + (v77.f32[0] * v78.f32[1]);
                }

                v80 = v114 + v72 * BYTE6(v115);
                v67.i64[0] = *v80;
                v67.i32[2] = *(v80 + 8);
                v81 = v114 + v71 * BYTE6(v115);
                v68.i64[0] = *v81;
                v68.i32[2] = *(v81 + 8);
                v82 = v114 + v70 * BYTE6(v115);
                v69.i64[0] = *v82;
                v69.i32[2] = *(v82 + 8);
                v68 = vsubq_f32(v68, v67);
                v67 = vsubq_f32(v69, v67);
                v83 = v79;
                v84 = vrecpe_f32(LODWORD(v79));
                v85 = vmul_f32(v84, vrecps_f32(LODWORD(v83), v84));
                v85.i32[0] = vmul_f32(v85, vrecps_f32(LODWORD(v83), v85)).u32[0];
                v69 = vmulq_n_f32(vmlaq_lane_f32(vmulq_lane_f32(vnegq_f32(v67), v77, 1), v68, v78, 1), v85.f32[0]);
                v69.i32[3] = 0;
                v46[v72] = vaddq_f32(v46[v72], v69);
                v46[v71] = vaddq_f32(v46[v71], v69);
                v46[v70] = vaddq_f32(v46[v70], v69);
                v50 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v68, vnegq_f32(vdupq_lane_s32(v78, 0))), v67, v77.f32[0]), v85.f32[0]);
                v50.i32[3] = 0;
                v47[v72] = vaddq_f32(v50, v47[v72]);
                v47[v71] = vaddq_f32(v50, v47[v71]);
                v47[v70] = vaddq_f32(v50, v47[v70]);
                v73 += 3;
                v74 += 3;
                v75 += 3;
                --v65;
              }

              while (v65);
              v52 = 1;
            }
          }
        }
      }

      if (++v53 == v51)
      {
        goto LABEL_57;
      }
    }
  }

  v52 = 0;
LABEL_57:
  v89 = 0;
  do
  {
    v90 = v110 + v89 * BYTE6(v111);
    v50.i64[0] = *v90;
    v91 = v50;
    v91.i32[2] = *(v90 + 8);
    v50.i32[2] = v91.i32[2];
    v92 = v46[v89];
    v93 = vmulq_f32(v92, v50);
    v93.f32[0] = v93.f32[2] + vaddv_f32(*v93.f32);
    v94 = vmlsq_lane_f32(v92, v91, *v93.f32, 0);
    v95 = vmulq_f32(v94, v94);
    *&v96 = v95.f32[2] + vaddv_f32(*v95.f32);
    *v95.f32 = vrsqrte_f32(v96);
    v50 = vmulq_n_f32(v94, vmul_f32(*v95.f32, vrsqrts_f32(v96, vmul_f32(*v95.f32, *v95.f32))).f32[0]);
    v97 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v91)), v50, vextq_s8(vuzp1q_s32(v91, v91), v91, 0xCuLL));
    v98 = vmulq_f32(v47[v89], vextq_s8(vuzp1q_s32(v97, v97), v97, 0xCuLL));
    if ((v98.f32[2] + vaddv_f32(*v98.f32)) < 0.0)
    {
      v99 = -1.0;
    }

    else
    {
      v99 = 1.0;
    }

    v50.f32[3] = v99;
    v46[v89++] = v50;
  }

  while (v107 != v89);
  free(v47);
  if ((v52 & 1) == 0)
  {
    free(v46);
    return 0;
  }

  v100 = CFDataCreateWithBytesNoCopy(0, v46, length, *MEMORY[0x1E695E480]);
  v101 = sub_1AF1ADBE4(v100, 4, v107, 4, 1);
  CFRelease(v100);
  return v101;
}