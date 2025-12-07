uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 32 * *a2 + 14);
  v9 = *(a6 + 32 * *result + 14);
  v10 = *a3;
  v11 = *(a6 + 32 * *a3 + 14);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 32 * *a2 + 14) < *(a6 + 32 * *result + 14))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 32 * *a3 + 14) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 32 * *a4 + 14) < *(a6 + 32 * v6 + 14))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 32 * *a3 + 14) < *(a6 + 32 * *a2 + 14))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 32 * *a2 + 14) < *(a6 + 32 * *result + 14))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 32 * *a5 + 14) < *(a6 + 32 * *a4 + 14))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 32 * *a4 + 14) < *(a6 + 32 * *a3 + 14))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 32 * *a3 + 14) < *(a6 + 32 * *a2 + 14))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 32 * *a2 + 14) < *(a6 + 32 * *result + 14))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(a3 + 536);
      v9 = *(v8 + 32 * v7 + 14);
      v10 = *(v8 + 32 * *a1 + 14);
      v11 = *(a2 - 1);
      v12 = *(v8 + 32 * v11 + 14);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 32 * v35 + 14) < *(v8 + 32 * *a1 + 14))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 32 * v51 + 14) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::TransitLineLabelFeature::shieldsForLabelMarker(md::LabelManager *,std::vector<md::LabelShieldEntry,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>> &)::$_0 &,unsigned long *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *(a3 + 536));
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a1;
    v28 = *(a3 + 536);
    v29 = *(v28 + 32 * v24 + 14);
    v30 = *(v28 + 32 * *a1 + 14);
    v31 = *(v28 + 32 * v26 + 14);
    if (v29 >= v30)
    {
      if (v31 >= v29)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v28 + 32 * v46 + 14) < *(v28 + 32 * v24 + 14))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v28 + 32 * v47 + 14);
          if (v49 < *(v28 + 32 * v48 + 14))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v28 + 32 * *a1 + 14))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v29)
      {
        *a1 = v24;
        a1[1] = v27;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v27;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v27;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*(a3 + 536) + 32 * v4 + 14) < *(*(a3 + 536) + 32 * *a1 + 14))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a1;
  v17 = *(a3 + 536);
  v18 = *(v17 + 32 * v15 + 14);
  v19 = *(v17 + 32 * *a1 + 14);
  v20 = *(v17 + 32 * v13 + 14);
  if (v18 >= v19)
  {
    if (v20 >= v18)
    {
      goto LABEL_27;
    }

    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
LABEL_25:
    if (v20 >= v19)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v21 = a1;
  v22 = a1 + 2;
  if (v20 >= v18)
  {
    *a1 = v15;
    a1[1] = v16;
    v21 = a1 + 1;
    v22 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v21 = v13;
  *v22 = v16;
LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v17 + 32 * *v37 + 14);
    if (v42 < *(v17 + 32 * v41 + 14))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v17 + 32 * v41 + 14))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

unint64_t md::TransitLineLabelFeature::transitLinkHash(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = geo::codec::vectorTransitLineAlongLink(a1, v3);
    v6 = ((v4 << 6) - 0x61C8864680B583EBLL + (v4 >> 2) + *(v5 + 40)) ^ v4;
    v4 = (*(v5 + 73) - 0x61C8864680B583EBLL + (v6 << 6) + (v6 >> 2)) ^ v6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

void non-virtual thunk toggl::GradientPolylineOverlayRibbon::BaseMesh::~BaseMesh(ggl::GradientPolylineOverlayRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::GradientPolylineOverlayRibbon::BaseMesh::~BaseMesh(ggl::GradientPolylineOverlayRibbon::BaseMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection()
{
  {
    {
      ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::attributesReflection(void)::r = &ggl::GradientPolylineOverlayRibbon::defaultVboReflection;
    }

    ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::attributesReflection(void)::r;
    unk_1EB841D60 = 1;
  }
}

void non-virtual thunk toggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::GradientPolylineOverlayRibbon::FillPipelineState::~FillPipelineState(ggl::GradientPolylineOverlayRibbon::FillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::GradientPolylineOverlayRibbon::FillPipelineSetup::typedReflection(ggl::GradientPolylineOverlayRibbon::FillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::GradientPolylineOverlayRibbon::FillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    unk_1EB841EC0 = &ggl::GradientPolylineOverlayRibbon::pipelineDataFillPipelineDeviceStructs(void)::ref;
    qword_1EB841EC8 = 0;
    {
      ggl::GradientPolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB841E38 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841E40 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
      unk_1EB841E48 = ggl::GradientPolylineOverlayRibbon::GradientInfo::reflection(void)::reflection;
    }

    qword_1EB841ED0 = &ggl::GradientPolylineOverlayRibbon::pipelineDataFillPipelineConstantStructs(void)::ref;
    unk_1EB841ED8 = xmmword_1B33B11D0;
  }
}

void ggl::GradientPolylineOverlayRibbon::FillPipelineSetup::~FillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::GradientPolylineOverlayRibbon::AlphaPipelineState::~AlphaPipelineState(ggl::GradientPolylineOverlayRibbon::AlphaPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    unk_1EB841E90 = &ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaPipelineDeviceStructs(void)::ref;
    qword_1EB841E98 = 0;
    {
      ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      unk_1EB841E10 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841E18 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
      unk_1EB841E20 = ggl::GradientPolylineOverlayRibbon::GradientInfo::reflection(void)::reflection;
    }

    qword_1EB841EA0 = &ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaPipelineConstantStructs(void)::ref;
    unk_1EB841EA8 = xmmword_1B33B11D0;
  }
}

void ggl::GradientPolylineOverlayRibbon::AlphaPipelineSetup::~AlphaPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState::~AlphaFillPipelineState(ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup *this)
{
  {
    ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection();
    ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup::typedReflection(void)::ref = &ggl::MeshTyped<ggl::GradientPolylineOverlayRibbon::DefaultVbo>::typedReflection(void)::r;
    unk_1EB841E60 = &ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaFillPipelineDeviceStructs(void)::ref;
    qword_1EB841E68 = 0;
    {
      ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref = ggl::Tile::View::reflection(void)::reflection;
      *algn_1EB841DE8 = ggl::Tile::Transform::reflection(void)::reflection;
      qword_1EB841DF0 = ggl::PolylineOverlayRibbon::Style::reflection(void)::reflection;
      unk_1EB841DF8 = ggl::GradientPolylineOverlayRibbon::GradientInfo::reflection(void)::reflection;
    }

    qword_1EB841E70 = &ggl::GradientPolylineOverlayRibbon::pipelineDataAlphaFillPipelineConstantStructs(void)::ref;
    unk_1EB841E78 = xmmword_1B33B11D0;
  }
}

void ggl::GradientPolylineOverlayRibbon::AlphaFillPipelineSetup::~AlphaFillPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

double md::VectorFeatureMarker::minZoomRank(md::VectorFeatureMarker *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0.0;
  }

  LODWORD(result) = *(v1 + 68);
  return result;
}

uint64_t md::VectorFeatureMarker::styleAttributes@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  if (v2)
  {
    v4 = *(v2 + 24);
    v3 = *(v2 + 32);
    *a2 = v4;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

uint64_t md::VectorFeatureMarker::featureId(md::VectorFeatureMarker *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    return *(v1 + 40);
  }

  else
  {
    return 0;
  }
}

void *md::VectorFeatureMarker::name@<X0>(md::VectorFeatureMarker *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = "unnamed";
    if (v5 && *v5)
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = "unnamed";
  }

  return std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(a2, v6);
}

void md::VectorFeatureMarker::~VectorFeatureMarker(md::VectorFeatureMarker *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1B8C62190);
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1B3114428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v68 - 145) < 0)
  {
    v71 = *(v68 - 168);
    v72 = mdm::zone_mallocator::instance(v70);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v72, v71);
  }

  if (*(v68 - 177) < 0)
  {
    v73 = *(v68 - 200);
    v74 = mdm::zone_mallocator::instance(v70);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v74, v73);
  }

  if (a65)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a65);
  }

  if (a66)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a66);
  }

  _Unwind_Resume(a1);
}

void sub_1B3114704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a13);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B3115928(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1B3116408(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  _Unwind_Resume(a1);
}

void md::ARWalkingGeoTrackingMapEngineMode::~ARWalkingGeoTrackingMapEngineMode(md::ARWalkingGeoTrackingMapEngineMode *this)
{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A4C198;
  *(this + 83) = &unk_1F2A4C1F8;

  v2 = *(this + 82);
  *(this + 82) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 78);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void md::DaVinciTransitMapEngineMode::willBecomeInactive(uint64_t a1, uint64_t a2, uint64_t a3)
{
  md::DaVinciBaseMapEngineMode::willBecomeInactive(a1, a2);
  v5 = *(a2 + 41704);
  v6 = v5[7];
  v7 = v5[8];
  while (v6 != v7)
  {
    if (*v6 == 15)
    {
      if (v6 != v7)
      {
        v8 = *(v6 + 8);
        if (v8)
        {
          if (*(v8 + 21))
          {
            *(v8 + 21) = 0;
          }
        }
      }

      break;
    }

    v6 += 16;
  }

  v10 = v5[4];
  v9 = v5[5];
  while (v10 != v9)
  {
    if (*v10 == 15)
    {
      if (v10 != v9)
      {
        v11 = *(v10 + 8);
        if (v11)
        {
          if (*(v11 + 608))
          {
            *(v11 + 608) = 0;
            gdc::LayerDataStore::invalidateAllData(*(v11 + 16));
          }
        }
      }

      break;
    }

    v10 += 16;
  }

  v12 = *(*(a3 + 41672) + 40);
  v14 = *(v12 + 152);
  v13 = *(v12 + 160);
  *(v14 + 417) = 0;
  *(v13 + 417) = 0;
}

void md::DaVinciTransitMapEngineMode::didBecomeActive(__n128 *a1, md::MapEngine *a2, uint64_t a3, uint64_t *a4)
{
  md::DaVinciBaseMapEngineMode::didBecomeActive(a1, a2, a3, a4);
  v6 = *(a2 + 5213);
  v7 = v6[7];
  v8 = v6[8];
  while (v7 != v8)
  {
    if (*v7 == 15)
    {
      if (v7 != v8)
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          if ((*(v9 + 21) & 1) == 0)
          {
            *(v9 + 21) = 1;
          }
        }
      }

      break;
    }

    v7 += 16;
  }

  v11 = v6[4];
  v10 = v6[5];
  while (v11 != v10)
  {
    if (*v11 == 15)
    {
      if (v11 != v10)
      {
        v12 = *(v11 + 8);
        if (v12)
        {
          if ((*(v12 + 608) & 1) == 0)
          {
            *(v12 + 608) = 1;
            gdc::LayerDataStore::invalidateAllData(*(v12 + 16));
          }
        }
      }

      break;
    }

    v11 += 16;
  }

  v13 = *(*(a3 + 41672) + 40);
  v15 = *(v13 + 152);
  v14 = *(v13 + 160);
  *(v15 + 417) = 1;
  *(v14 + 417) = 1;
}

void md::DaVinciTransitMapEngineMode::~DaVinciTransitMapEngineMode(md::DaVinciTransitMapEngineMode *this)
{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A58888;
  v2 = *(this + 82);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::MapEngineMode::~MapEngineMode(this);
}

void md::DaVinciTransitMapEngineMode::DaVinciTransitMapEngineMode(void *a1, uint64_t a2, void *a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  md::DaVinciMapEngineMode::DaVinciMapEngineMode(a1, 12, a2, a3, a4);
}

void sub_1B31169F4(_Unwind_Exception *a1)
{
  *v1 = &unk_1F2A58888;
  v3 = *(v1 + 82);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::MapEngineMode::~MapEngineMode(v1);
  _Unwind_Resume(a1);
}

void sub_1B3116A40()
{
  if (v0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v0);
  }

  JUMPOUT(0x1B3116A38);
}

void md::ARWalkingExtrudedTextLabelPart::populateDebugNode(md::ARWalkingExtrudedTextLabelPart *this, gdc::DebugTreeNode *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v11, "ARWalkingExtrudedTextLabelPart");
  v4 = gdc::DebugTreeNode::createChildNode(a2, &v11);
  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:nn200100]<0>(&v11, "StagingExtrusionCollapseAngle");
  gdc::DebugTreeValue::DebugTreeValue(v8, *(this + 319));
  gdc::DebugTreeNode::addProperty(v4, &v11, v8);
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  std::string::basic_string[abi:nn200100]<0>(&v11, "DisplayExtrusionCollapseAngle");
  gdc::DebugTreeValue::DebugTreeValue(v5, *(this + 320));
  gdc::DebugTreeNode::addProperty(v4, &v11, v5);
  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  md::HorizontalTextLabelPart::populateDebugNode(this, v4);
}

float md::HorizontalTextLabelPart::topRightAlignInset(uint64_t a1, int a2)
{
  v2 = 1088;
  if (!a2)
  {
    v2 = 976;
  }

  return *(a1 + v2 + 56);
}

float md::HorizontalTextLabelPart::topLeftAlignInset(uint64_t a1, int a2)
{
  v2 = 1088;
  if (!a2)
  {
    v2 = 976;
  }

  return *(a1 + v2 + 52);
}

float md::HorizontalTextLabelPart::bottomLayoutMargin(uint64_t a1, int a2)
{
  v2 = 1088;
  if (!a2)
  {
    v2 = 976;
  }

  return *(a1 + v2 + 84);
}

float md::HorizontalTextLabelPart::topLayoutMargin(uint64_t a1, int a2)
{
  v2 = 1088;
  if (!a2)
  {
    v2 = 976;
  }

  return *(a1 + v2 + 80);
}

uint64_t md::ARWalkingExtrudedTextLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, md::LabelAnimator *a3, float32x2_t *a4, float32x2_t *a5)
{
  result = md::HorizontalTextLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  if (result == 37)
  {
    v8 = *(a1 + 776);
    v9 = *(a1 + 1280);
    if (v9 > 3.0)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 164) == 1)
      {
        v11 = *(v10 + 160);
        v12 = *(v10 + 152);
      }

      else
      {
        v12 = 1065353216;
        v11 = 0;
      }

      v13 = 0;
      *&v25 = v12;
      DWORD2(v25) = v11;
      do
      {
        *(&v29 + v13) = *(&v25 + v13);
        ++v13;
      }

      while (v13 != 3);
      v27 = v29;
      v28 = v30;
      if (*(a1 + 1272) == 1)
      {
        gm::quaternionFromAngleAxis<double>(&v25, v10 + 944, 0.785398163);
        *&v27 = gm::Quaternion<double>::operator*(&v25, &v29);
        *(&v27 + 1) = v14;
        v28 = v15;
      }

      for (i = 0; i != 24; i += 8)
      {
        *(&v25 + i) = *(a2 + 568 + i) - *(v10 + 408 + i);
      }

      v23 = v25;
      v24 = v26;
      v17 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
      v18 = 0;
      *&v25 = v17;
      *(&v25 + 1) = v19;
      v26 = v20;
      v21 = 0.0;
      do
      {
        v21 = v21 + *(&v25 + v18) * *(&v27 + v18);
        v18 += 8;
      }

      while (v18 != 24);
      v22 = acos(fabs(v21)) * 57.2957795 / v9;
      v8 = v8 + ((fminf(fmaxf(v22, 0.0), 1.0) - 1.0) * v8);
    }

    *(a1 + 924) = v8;
    *(a1 + 882) = v8 >= 0.0001;
    return 37;
  }

  return result;
}

uint64_t md::ARWalkingExtrudedTextLabelPart::updateWithStyle(uint64_t **this, md::LabelManager *a2)
{
  md::HorizontalTextLabelPart::updateWithStyle(this, a2);
  result = md::LabelStyle::textStyleGroup(*this[4], *(this + 880));
  *(this + 319) = *(result + 28);
  return result;
}

void md::ARWalkingExtrudedTextLabelPart::~ARWalkingExtrudedTextLabelPart(md::ARWalkingExtrudedTextLabelPart *this)
{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));
  md::TextLabelPart::~TextLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

{
  *this = &unk_1F2A4DA38;
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 1088));
  std::vector<md::HorizontalTextLabelPart::LineInfo,geo::allocator_adapter<md::HorizontalTextLabelPart::LineInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 976));

  md::TextLabelPart::~TextLabelPart(this);
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::HorizontalTextLabelPart::LineInfo>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

uint64_t std::__function::__value_func<void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13CanCastShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata;
  CanCast = ecs2::BasicRegistry<void>::storage<md::ls::CanCastShadow>(v3);
  v6 = CanCast[1];
  if (v2 >> 22 < (CanCast[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = CanCast;
        v9 = CanCast[25];
        v10 = CanCast[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::CanCastShadow>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13CanCastShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A42880;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CanCastShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::CanCastShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A42860;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void std::__function::__func<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1,std::allocator<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = **(a1 + 8);
  v6 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)3>>(v5, v6);
  v7 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v7, a3);
}

__n128 std::__function::__func<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1,std::allocator<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A33870;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::VisibilityGroupID const&,md::ls::CanCastShadow const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A336E8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0,std::allocator<md::ita::PrepareCulledShadowSlice::operator()(ecs2::Query<md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&>)::$_0>,void ()(md::ls::MeshRenderableID const&,md::ls::SliceAssignmentT<(md::SliceType)3> const&,md::ls::VisibilityGroupID const&,md::ls::SharedRenderableDataHandle const&,md::ls::AppliedWantsDynamicShadowBounds const*,md::BoundData const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A33920;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1,std::allocator<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1>,void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::operator()(uint64_t a1, unint64_t *a2)
{
  v4 = **(a1 + 8);
  v5 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)5>>(v4, v5);
  v6 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v6, a2);
}

uint64_t ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)5>>(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2A33A60;
  v4[1] = a2 << 32;
  v4[3] = v4;
  v5[3] = v5;
  v5[0] = &unk_1F2A33A60;
  v5[1] = a2 << 32;
  v6 = 0;
  ecs2::Runtime::queueCommand();
  if (v6 != -1)
  {
    (off_1F2A337D0[v6])(&v3, v5);
  }

  v6 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](v4);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)5>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SliceAssignmentT<(md::SliceType)5>>(a2);
  v6 = v5;
  v7 = v3 >> 22;
  v9 = (v5 + 8);
  v8 = *(v5 + 8);
  if (v3 >> 22 >= (*(v5 + 16) - v8) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v5 + 8), v7 + 1);
    v8 = *v9;
  }

  v10 = *(v8 + 8 * v7);
  if (!v10)
  {
    operator new();
  }

  v11 = (v10 + 4 * ((v3 >> 16) & 0x3F));
  if (*v11 == -1 && v11[1] == 0)
  {
    v14 = v6[5];
    v13 = v6[6];
    if (v14 >= v13)
    {
      v16 = v6[4];
      v17 = (v14 - v16) >> 2;
      if ((v17 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = v13 - v16;
      v19 = v18 >> 1;
      if (v18 >> 1 <= (v17 + 1))
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v20 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v20);
      }

      *(4 * v17) = v3;
      v15 = 4 * v17 + 4;
      v21 = v6[4];
      v22 = v6[5] - v21;
      v23 = (4 * v17 - v22);
      memcpy(v23, v21, v22);
      v24 = v6[4];
      v6[4] = v23;
      v6[5] = v15;
      v6[6] = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v3;
      v15 = (v14 + 1);
    }

    v6[5] = v15;
    v25 = ((v15 - *(v6 + 8)) >> 2) - 1;
    *v11 = v3;
    v11[1] = v25;
    v27 = v6[13];
    v26 = v6[14];
    while (v27 != v26)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v27 + 24), v3);
      v27 += 32;
    }
  }

  v28 = *(a2 + 41016) + (v3 >> 16 << 6);
  *(v28 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SliceAssignmentT<(md::SliceType)5>>(void)::metadata) = *(a2 + 4096);
}

uint64_t std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::SliceAssignmentT<(md::SliceType)5>>(ecs2::Entity,md::ls::SliceAssignmentT<(md::SliceType)5> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F2A33A60;
  a2[1] = *(result + 8);
  return result;
}

__n128 std::__function::__func<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1,std::allocator<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_1>,void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A33B10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::operator()(uint64_t a1, unint64_t *a2)
{
  v4 = **(a1 + 8);
  v5 = ecs2::ExecutionTaskContext::currentEntity(a1);
  ecs2::addComponent<md::ls::SliceAssignmentT<(md::SliceType)5>>(v4, v5);
  v6 = *(a1 + 16);

  ecs2::sparse_set<md::VKMRenderResourcesStore::group_handle,64ul>::insert(v6, a2);
}

__n128 std::__function::__func<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0,std::allocator<md::ita::PrepareCulledDepthPrePassSlice::operator()(ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&>,ecs2::Query<md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)8> const&>)::$_0>,void ()(md::ls::VisibilityGroupID const&,md::ls::SliceAssignmentT<(md::SliceType)1> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A33A18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void md::AssetData::createDebugNode(unint64_t *a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:nn200100]<0>(&v29, "Asset");
  gdc::DebugTreeNode::DebugTreeNode(&v31, &v29);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "AssetId");
  gdc::DebugTreeValue::DebugTreeValue(v26, a1[21]);
  gdc::DebugTreeNode::addProperty(&v31, &v29, v26);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Meshes");
  gdc::DebugTreeValue::DebugTreeValue(v23, 0xCCCCCCCCCCCCCCCDLL * ((a1[24] - a1[23]) >> 4));
  gdc::DebugTreeNode::addProperty(&v31, &v29, v23);
  if (v25 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Materials");
  gdc::DebugTreeValue::DebugTreeValue(v20, a1[34]);
  gdc::DebugTreeNode::addProperty(&v31, &v29, v20);
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "IndexPools");
  gdc::DebugTreeValue::DebugTreeValue(v17, (a1[50] - a1[49]) >> 3);
  gdc::DebugTreeNode::addProperty(&v31, &v29, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "GeometryPools");
  gdc::DebugTreeValue::DebugTreeValue(v14, 0xAAAAAAAAAAAAAAABLL * ((a1[53] - a1[52]) >> 3));
  gdc::DebugTreeNode::addProperty(&v31, &v29, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  v4 = a1[23];
  v5 = a1[24];
  if (v4 == v5)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v4 += 10;
      v6 += (*(**(v7 + 64) + 48) - *(**(v7 + 64) + 40)) / *(**(v7 + 64) + 8);
    }

    while (v4 != v5);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "VertexCount");
  gdc::DebugTreeValue::DebugTreeValue(v11, v6);
  gdc::DebugTreeNode::addProperty(&v31, &v29, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "IndexCount");
  gdc::DebugTreeValue::DebugTreeValue(v8, v6);
  gdc::DebugTreeNode::addProperty(&v31, &v29, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  gdc::LayerData::createDebugNode(a1, a2);
  gdc::DebugTreeNode::addChildNode(a2, &v31);
  *&v29 = &v35;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v29);
  *&v29 = &v34;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v29);
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }
}

void sub_1B3117F18(_Unwind_Exception *a1)
{
  *(v1 - 152) = v1 - 56;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100]((v1 - 152));
  *(v1 - 152) = v1 - 80;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100]((v1 - 152));
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  if (*(v1 - 105) < 0)
  {
    operator delete(*(v1 - 128));
  }

  _Unwind_Resume(a1);
}

void md::AssetData::~AssetData(md::AssetData *this)
{
  md::AssetData::~AssetData(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A33B58;
  v4 = (this + 416);
  std::vector<md::AssetData::GeometryDataPool>::__destroy_vector::operator()[abi:nn200100](&v4);
  v4 = (this + 392);
  std::vector<std::unique_ptr<ggl::IndexData>>::__destroy_vector::operator()[abi:nn200100](&v4);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 45));
  std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::~__hash_table(this + 39);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 33));
  v4 = (this + 232);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v4 = (this + 184);
  std::vector<md::Mesh>::__destroy_vector::operator()[abi:nn200100](&v4);
  *this = &unk_1F2A60328;
  v3 = *(this + 4);
  if (v3 != *(this + 6))
  {
    free(v3);
  }
}

void std::vector<md::AssetData::GeometryDataPool>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 3;
        std::allocator_traits<std::allocator<md::AssetData::GeometryDataPool>>::destroy[abi:nn200100]<md::AssetData::GeometryDataPool,void,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<ggl::IndexData>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator_traits<std::allocator<md::AssetData::GeometryDataPool>>::destroy[abi:nn200100]<md::AssetData::GeometryDataPool,void,0>(uint64_t *a1)
{
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void md::AssetData::_buildAssets(float32x2_t *a1, float32x2_t **a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = (*a2)[19];
  if (v4)
  {
    v6 = *(*&v4 + 302);
    a1[38].i16[0] = v6;
    v52 = v4;
    if (v6 <= 0x13)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v7 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = a1[21];
        v9 = a1[38].u16[0];
        *buf = 134219010;
        *&buf[4] = v8;
        v56 = 1024;
        v57 = v9;
        v58 = 2080;
        v59 = "_version >= 20";
        v60 = 2080;
        v61 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/AssetData.mm";
        v62 = 1024;
        LODWORD(v63) = 53;
        _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "We are not expecting to receive assets with versions less than 20 (Asset ID: %llu, Version: %d): Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x2Cu);
      }

      v3 = *a2;
    }

    v10 = a1 + 39;
    if (&a1[39] != &v3[20])
    {
      a1[43].i32[0] = v3[24].i32[0];
      v11 = v3[22];
      v12 = a1[40];
      if (v12)
      {
        v13 = 0;
        do
        {
          *(*v10 + 8 * v13++) = 0;
        }

        while (*&v12 != v13);
        v14 = a1[41];
        a1[41] = 0;
        a1[42] = 0;
        if (v14)
        {
          v15 = v11 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = v14;
        }

        else
        {
          do
          {
            v14[2] = v11[2];
            v18 = v11[3];
            v17 = v11[4];
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = v14[4];
            v14[3] = v18;
            v14[4] = v17;
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v19);
            }

            v16 = *v14;
            v20 = v14[2];
            v14[1] = v20;
            inserted = std::__hash_table<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,md::PolygonRouteAttributes>>>::__node_insert_multi_prepare(v10, v20, v14 + 2);
            std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__node_insert_multi_perform(v10, v14, inserted);
            v11 = *v11;
            if (!v16)
            {
              break;
            }

            v14 = v16;
          }

          while (v11);
        }

        std::__hash_table<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::__unordered_map_hasher<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::hash<md::LabelIdentifier>,std::equal_to<md::LabelIdentifier>,true>,std::__unordered_map_equal<md::LabelIdentifier,std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,std::equal_to<md::LabelIdentifier>,std::hash<md::LabelIdentifier>,true>,std::allocator<std::__hash_value_type<md::LabelIdentifier,std::shared_ptr<md::HighPrecisionAltitudeRequest>>>>::__deallocate_node(v16);
      }

      if (v11)
      {
        operator new();
      }
    }

    v22 = *(*&v4 + 56);
    v23 = *(*&v4 + 64);
    while (v22 != v23)
    {
      std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&a1[32], *v22, v22);
      ++v22;
    }

    v24 = 0;
    k = (a1 + 292);
    do
    {
      a1[35].i32[v24] = v52[34].i32[v24 + 1];
      ++v24;
    }

    while (v24 != 3);
    for (i = 0; i != 3; ++i)
    {
      k->i32[i] = v52[36].i32[i];
    }

    for (j = 0; j != 3; ++j)
    {
      a1[47].i32[j + 1] = v52[33].i32[j];
    }

    if (&a1[44] == &v52[30])
    {
LABEL_71:
      *&a1[22] += *&(*a2)[18];
      *buf = vmaxnm_f32(vabs_f32(a1[35]), vabs_f32(*k));
      *&buf[8] = fmaxf(fabsf(a1[36].f32[0]), fabsf(a1[37].f32[1]));
      std::vector<float>::vector[abi:nn200100](&v53, buf, 3uLL);
      v44 = v53;
      if (v53 == v54)
      {
        v46 = a1;
      }

      else
      {
        v45 = (v53 + 4);
        v46 = a1;
        if (v53 + 4 != v54)
        {
          v47 = *v53;
          v48 = (v53 + 4);
          do
          {
            v49 = *v48++;
            v50 = v47 < v49;
            v47 = fmaxf(v47, v49);
            if (v50)
            {
              v44 = v45;
            }

            v45 = v48;
          }

          while (v48 != v54);
        }
      }

      v46[47].i32[0] = *v44;
      operator new();
    }

    v28 = v52[30];
    v29 = v52 + 31;
    if (a1[46])
    {
      v30 = a1 + 45;
      v31 = a1[44];
      v32 = a1[45];
      a1[44] = &a1[45];
      *(*&v32 + 16) = 0;
      a1[45] = 0;
      a1[46] = 0;
      if (*(*&v31 + 8))
      {
        v33 = *(*&v31 + 8);
      }

      else
      {
        v33 = v31;
      }

      if (!v33)
      {
        v42 = 0;
LABEL_67:
        std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v42);
        goto LABEL_69;
      }

      v34 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v33);
      if (v28 == v29)
      {
        v36 = v33;
      }

      else
      {
        v35 = v28;
        do
        {
          v36 = v34;
          v37 = *(v35[3].u32 + 2);
          *(v33 + 26) = v37;
          *(v33 + 30) = v35[3].i8[6];
          v38 = *v30;
          v39 = a1 + 45;
          v40 = &a1[45];
          if (*v30)
          {
            do
            {
              while (1)
              {
                v39 = v38;
                if (v38[3].u16[2] <= HIWORD(v37))
                {
                  break;
                }

                v38 = *v38;
                v40 = v39;
                if (!*v39)
                {
                  goto LABEL_50;
                }
              }

              v38 = v38[1];
            }

            while (v38);
            v40 = &v39[1];
          }

LABEL_50:
          std::__tree<unsigned short>::__insert_node_at(&a1[44], v39, v40, v33);
          if (v34)
          {
            v34 = std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::_DetachedTreeCache::__detach_next(v34);
          }

          else
          {
            v34 = 0;
          }

          v41 = v35[1];
          if (v41)
          {
            do
            {
              v28 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v28 = v35[2];
              v15 = *v28 == v35;
              v35 = v28;
            }

            while (!v15);
          }

          if (!v36)
          {
            break;
          }

          v33 = v36;
          v35 = v28;
        }

        while (v28 != v29);
      }

      std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(v36);
      if (v34)
      {
        v43 = v34[2];
        for (k = (a1 + 292); v43; v43 = v43[2])
        {
          v34 = v43;
        }

        v42 = v34;
        goto LABEL_67;
      }

      k = (a1 + 292);
    }

LABEL_69:
    if (v28 != v29)
    {
      operator new();
    }

    goto LABEL_71;
  }
}

void sub_1B311A8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  std::vector<md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::GeometryData,std::allocator<md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::GeometryData>>::~vector[abi:nn200100](&a59);
  if (__p)
  {
    a63 = __p;
    operator delete(__p);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  a33 = &a67;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a33);
  if (a68)
  {
    a69 = a68;
    operator delete(a68);
  }

  v70 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x220];
  if (STACK[0x220])
  {
    STACK[0x228] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v72;
    operator delete(v72);
  }

  a33 = &STACK[0x250];
  std::vector<std::vector<geo::handle<md::CommandBufferResource>>>::__destroy_vector::operator()[abi:nn200100](&a33);
  a33 = &STACK[0x268];
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a33);
  v73 = STACK[0x280];
  if (STACK[0x280])
  {
    STACK[0x288] = v73;
    operator delete(v73);
  }

  a33 = &STACK[0x298];
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a33);
  a33 = &STACK[0x2B0];
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a33);
  v74 = STACK[0x2C8];
  if (STACK[0x2C8])
  {
    STACK[0x2D0] = v74;
    operator delete(v74);
  }

  a33 = &STACK[0x2E0];
  std::vector<std::vector<gdc::Registry *>>::__destroy_vector::operator()[abi:nn200100](&a33);
  v75 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v75;
    operator delete(v75);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&STACK[0x310]);
  v76 = STACK[0x338];
  if (STACK[0x338])
  {
    STACK[0x340] = v76;
    operator delete(v76);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<float>::vector[abi:nn200100](uint64_t *a1, int *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](a1, a3);
  }

  return a1;
}

uint64_t *std::__tree<unsigned long long>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t *result, unint64_t a2, uint64_t *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<gm::Range<unsigned int>>::resize(const void **a1, unint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 >= v4)
    {
      return;
    }

    v10 = &v2[8 * a2];
  }

  else
  {
    v5 = a2 - v4;
    v6 = a1[2];
    if (v5 > (v6 - v3) >> 3)
    {
      if (!(a2 >> 61))
      {
        v7 = v6 - v2;
        v8 = v7 >> 2;
        if (v7 >> 2 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v9);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = &v3[8 * v5];
  }

  a1[1] = v10;
}

uint64_t std::ranges::filter_view[abi:llvm18_nua]<std::ranges::iota_view<unsigned long,unsigned long>,md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::$_0>::begin[abi:nn200100](uint64_t *a1)
{
  if (*(a1 + 32) == 1)
  {
    return a1[3];
  }

  result = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (*(*a1[2] + 4 * result))
    {
      if (v3 == ++result)
      {
        result = a1[1];
        break;
      }
    }
  }

  a1[3] = result;
  *(a1 + 32) = 1;
  return result;
}

void md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::$_2::operator()(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *(v6 - 1);
  v8 = *(*a1[1] + 8 * a2);
  if (v7 && (v8 + v7) >= 0xFFFF)
  {
    v10 = *(v5 + 16);
    if (v6 >= v10)
    {
      v12 = *v5;
      v13 = v6 - *v5;
      v14 = v13 >> 3;
      v15 = (v13 >> 3) + 1;
      if (v15 >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v16 = v10 - v12;
      if (v16 >> 2 > v15)
      {
        v15 = v16 >> 2;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        if (!(v17 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v18 = (8 * v14);
      *v18 = a3;
      v18[1] = 0;
      v11 = 8 * v14 + 8;
      v19 = &v18[-2 * (v13 >> 3)];
      memcpy(v19, v12, v13);
      *v5 = v19;
      *(v5 + 8) = v11;
      *(v5 + 16) = 0;
      if (v12)
      {
        operator delete(v12);
      }
    }

    else
    {
      *v6 = a3;
      v11 = (v6 + 1);
    }

    *(v5 + 8) = v11;
    v20 = a1[2];
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
    if (v22 >= v21)
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - *v20) >> 3);
      v25 = v24 + 1;
      if (v24 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *v20) >> 3);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x555555555555555)
      {
        v27 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v27 = v25;
      }

      v51[4] = a1[2];
      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v27);
      }

      v28 = 24 * v24;
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      v23 = 24 * v24 + 24;
      v29 = *(v20 + 8) - *v20;
      v30 = 24 * v24 - v29;
      memcpy((v28 - v29), *v20, v29);
      v31 = *v20;
      *v20 = v30;
      v51[0] = v31;
      v51[1] = v31;
      *(v20 + 8) = v23;
      v51[2] = v31;
      v32 = *(v20 + 16);
      *(v20 + 16) = 0;
      v51[3] = v32;
      std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(v51);
    }

    else
    {
      *v22 = 0;
      v22[1] = 0;
      v23 = (v22 + 3);
      v22[2] = 0;
    }

    LODWORD(v7) = 0;
    *(v20 + 8) = v23;
    v5 = *a1;
    v6 = *(*a1 + 8);
  }

  v33 = a1[2];
  *(*a1[3] + 8 * a2) = ((v6 - *v5) >> 3) - 1;
  v34 = v7;
  v35 = v8 + v7;
  v36 = (*a1[4] + 16 * a2);
  *v36 = v34;
  v36[1] = v35;
  *(v6 - 1) = v35;
  v37 = *(v33 + 8);
  v39 = *(v37 - 16);
  v38 = *(v37 - 8);
  if (v39 >= v38)
  {
    v41 = *(v37 - 24);
    v42 = v39 - v41;
    v43 = (v39 - v41) >> 3;
    v44 = v43 + 1;
    if ((v43 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v45 = v38 - v41;
    if (v45 >> 2 > v44)
    {
      v44 = v45 >> 2;
    }

    if (v45 >= 0x7FFFFFFFFFFFFFF8)
    {
      v46 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v46 = v44;
    }

    if (v46)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v46);
    }

    v47 = (v39 - v41) >> 3;
    v48 = (8 * v43);
    v49 = (8 * v43 - 8 * v47);
    *v48 = a2;
    v40 = v48 + 1;
    memcpy(v49, v41, v42);
    v50 = *(v37 - 24);
    *(v37 - 24) = v49;
    *(v37 - 16) = v40;
    *(v37 - 8) = 0;
    if (v50)
    {
      operator delete(v50);
    }
  }

  else
  {
    *v39 = a2;
    v40 = v39 + 8;
  }

  *(v37 - 16) = v40;
}

void md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::$_3::operator()(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(v5 - 1);
  v7 = *(*a1[1] + 16 * a2 + 8);
  if (v6 && (v7 + v6) >= 0xFFFF)
  {
    v8 = *(v4 + 16);
    if (v5 >= v8)
    {
      v10 = *v4;
      v11 = v5 - *v4;
      v12 = v11 >> 2;
      v13 = (v11 >> 2) + 1;
      if (v13 >> 62)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v14 = v8 - v10;
      if (v14 >> 1 > v13)
      {
        v13 = v14 >> 1;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      *(4 * v12) = 0;
      v9 = 4 * v12 + 4;
      memcpy(0, v10, v11);
      *v4 = 0;
      *(v4 + 8) = v9;
      *(v4 + 16) = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v5 = 0;
      v9 = (v5 + 1);
    }

    *(v4 + 8) = v9;
    v16 = a1[2];
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
    if (v18 >= v17)
    {
      v20 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v16) >> 3);
      v21 = v20 + 1;
      if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v16) >> 3);
      if (2 * v22 > v21)
      {
        v21 = 2 * v22;
      }

      if (v22 >= 0x555555555555555)
      {
        v23 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v23 = v21;
      }

      v47[4] = a1[2];
      if (v23)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v23);
      }

      v24 = 24 * v20;
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      v19 = 24 * v20 + 24;
      v25 = *(v16 + 8) - *v16;
      v26 = 24 * v20 - v25;
      memcpy((v24 - v25), *v16, v25);
      v27 = *v16;
      *v16 = v26;
      v47[0] = v27;
      v47[1] = v27;
      *(v16 + 8) = v19;
      v47[2] = v27;
      v28 = *(v16 + 16);
      *(v16 + 16) = 0;
      v47[3] = v28;
      std::__split_buffer<arComponents::CustomBoxCreateDesc>::~__split_buffer(v47);
    }

    else
    {
      *v18 = 0;
      v18[1] = 0;
      v19 = (v18 + 3);
      v18[2] = 0;
    }

    LODWORD(v6) = 0;
    *(v16 + 8) = v19;
    v4 = *a1;
    v5 = *(*a1 + 8);
  }

  v29 = a1[2];
  *(*a1[3] + 8 * a2) = ((v5 - *v4) >> 2) - 1;
  v30 = v6;
  v31 = v7 + v6;
  v32 = (*a1[4] + 16 * a2);
  *v32 = v30;
  v32[1] = v31;
  *(v5 - 1) = v31;
  v33 = *(v29 + 8);
  v35 = *(v33 - 16);
  v34 = *(v33 - 8);
  if (v35 >= v34)
  {
    v37 = *(v33 - 24);
    v38 = v35 - v37;
    v39 = (v35 - v37) >> 3;
    v40 = v39 + 1;
    if ((v39 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v41 = v34 - v37;
    if (v41 >> 2 > v40)
    {
      v40 = v41 >> 2;
    }

    if (v41 >= 0x7FFFFFFFFFFFFFF8)
    {
      v42 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v42 = v40;
    }

    if (v42)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v42);
    }

    v43 = (v35 - v37) >> 3;
    v44 = (8 * v39);
    v45 = (8 * v39 - 8 * v43);
    *v44 = a2;
    v36 = v44 + 1;
    memcpy(v45, v37, v38);
    v46 = *(v33 - 24);
    *(v33 - 24) = v45;
    *(v33 - 16) = v36;
    *(v33 - 8) = 0;
    if (v46)
    {
      operator delete(v46);
    }
  }

  else
  {
    *v35 = a2;
    v36 = v35 + 8;
  }

  *(v33 - 16) = v36;
}

uint64_t std::ranges::filter_view[abi:llvm18_nua]<std::ranges::iota_view<unsigned long,unsigned long>,md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::$_1>::begin[abi:nn200100](uint64_t *a1)
{
  if (*(a1 + 32) == 1)
  {
    return a1[3];
  }

  result = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    while (*(*a1[2] + 4 * result) != 1)
    {
      if (v3 == ++result)
      {
        result = a1[1];
        break;
      }
    }
  }

  a1[3] = result;
  *(a1 + 32) = 1;
  return result;
}

uint64_t std::construct_at[abi:nn200100]<md::Mesh,std::shared_ptr<ggl::DaVinci::TexturedCompressedMesh> &,gm::Range<unsigned long>,ggl::PrimitiveType,gm::Box<float,3> &,md::MeshVertexFormat,BOOL,md::Mesh*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, char *a5, __int128 *a6, char *a7, char *a8)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *a5;
    v10 = *a7;
    v11 = *a8;
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v9 = *a5;
    v10 = *a7;
    v11 = *a8;
    *a1 = a2;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = *a4;
  *(a1 + 32) = v9;
  v12 = *a6;
  *(a1 + 52) = *(a6 + 2);
  *(a1 + 36) = v12;
  *(a1 + 60) = v11 & 1;
  *(a1 + 61) = v10;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  return a1;
}

char **std::vector<md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::GeometryData,std::allocator<md::AssetData::_buildAssets(std::shared_ptr<md::DaVinciAssetResource> &,ggl::ResourceAccessor *)::GeometryData>>::~vector[abi:nn200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        }

        v6 = *(v3 - 3);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v7 = *(v3 - 5);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v7);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__split_buffer<md::AssetData::GeometryDataPool>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::allocator_traits<std::allocator<md::AssetData::GeometryDataPool>>::destroy[abi:nn200100]<md::AssetData::GeometryDataPool,void,0>((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::__function::__func<md::AssetData::AssetData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,VKSharedResources *)::$_0,std::allocator<md::AssetData::AssetData(gdc::LayerDataRequestKey const&,std::shared_ptr<md::DaVinciAssetResource> &,VKSharedResources *)::$_0>,void ()(ggl::ResourceAccessor *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A33B88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void *md::AssetData::getMaterialID(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, char a5, uint64_t a6)
{
  v6 = (a2 - a1) >> 4;
  if (v6 < a3)
  {
    return 0;
  }

  if (v6 <= a3)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = a6;
  v9 = *(a1 + 16 * a3);
  if (a5)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((v9 + 32), a4);
    if (!result)
    {
      return result;
    }

    v10 = result + 3;
  }

  else
  {
    v11 = *(v9 + 48);
    if (!v11)
    {
      return 0;
    }

    v10 = (v11 + 24);
  }

  result = std::unordered_map<unsigned short,unsigned long long>::find[abi:nn200100](v10, v8);
  if (result)
  {
    return result[3];
  }

  return result;
}

uint64_t ***std::unordered_map<unsigned short,unsigned long long>::find[abi:nn200100](void *a1, unsigned __int16 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 8) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void ___ZL49GEOGetVectorKitVKPuckAnimatorLocationProjectorLogv_block_invoke()
{
  v0 = os_log_create("com.apple.VectorKit", "VKPuckAnimatorLocationProjector");
  v1 = GEOGetVectorKitVKPuckAnimatorLocationProjectorLog(void)::log;
  GEOGetVectorKitVKPuckAnimatorLocationProjectorLog(void)::log = v0;
}

void sub_1B311C338(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKPuckAnimatorLocationProjector;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void ggl::VSView::PipelineState::~PipelineState(ggl::VSView::PipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::VSView::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::VSView::StretchAlphaPipelineState::~StretchAlphaPipelineState(ggl::VSView::StretchAlphaPipelineState *this)
{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A5CF68;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  ggl::RenderDataHolder::~RenderDataHolder(this);
}

void ggl::VSView::StretchAlphaPipelineSetup::~StretchAlphaPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void ggl::GlowAlpha::MeshPipelineSetup::~MeshPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

float md::NavShieldLabelPart::updateWithNavLabelStyle(uint64_t a1, float *a2)
{
  md::NavLabelPart::updateWithNavLabelStyle(a1, a2);
  result = *a2;
  *(a1 + 596) = *a2;
  return result;
}

void md::NavShieldLabelPart::~NavShieldLabelPart(md::NavShieldLabelPart *this)
{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A3E258;
  v2 = *(this + 110);
  *(this + 110) = 0;
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0x1000C40AE2C30F4);
  }

  v3 = *(this + 105);
  *(this + 105) = 0;
  if (v3)
  {
    MEMORY[0x1B8C62190](v3, 0x1000C40AE2C30F4);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

void md::NavShield::~NavShield(md::NavShield *this)
{
  md::NavLabel::~NavLabel(this);

  JUMPOUT(0x1B8C62190);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28SharedGradientMaskDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedGradientMaskDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedGradientMaskDataHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls28SharedGradientMaskDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A43058;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43038;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43018;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedGradientMaskDataHandle,64ul>::~storage(a1);
}

uint64_t ecs2::addComponent<md::ls::StyleRouteLineMaskDataKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A504B8;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A504B8;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A34158[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleRouteLineMaskDataKeyHandle>(ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StyleRouteLineMaskDataKeyHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleRouteLineMaskDataKeyHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleRouteLineMaskDataKeyHandle>(ecs2::Entity,md::ls::StyleRouteLineMaskDataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A504B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessRenderableForStyleRouteLineMask::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *>)::$_0,std::allocator<md::ita::ProcessRenderableForStyleRouteLineMask::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedGradientMaskDataHandle const&,md::ls::StyleRouteLineMaskDataKeyHandle *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A34120;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ecs2::BasicRegistry<void>::storage<md::ls::SharedSSAOIntensityDataHandle>(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>();
  v2 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata;
  if (ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata >= 0x200)
  {
    v3 = GEOGetGeoDisplayCoreDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315650;
      *&buf[1] = "componentMetadata.id < _pools.size()";
      v6 = 2080;
      v7 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoDisplayCore/GeoDisplayCore/ECSRegistry.hpp";
      v8 = 1024;
      LODWORD(v9) = 177;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_FAULT, "More components types that declared amount: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }

  result = *(a1 + 4152 + 8 * v2);
  if (!result)
  {
    operator new();
  }

  return result;
}

void ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>()
{
  {
    {
      gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedSSAOIntensityDataHandle>(void)::localId = atomic_fetch_add(&gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::Counter::nextId(void)::counter, 1uLL);
    }

    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata = gdc::FamilyInfo<ecs2::BasicRegistry<void>,unsigned long>::getId<md::ls::SharedSSAOIntensityDataHandle>(void)::localId;
    unk_1EB82D6C0 = 0x5C96834656E9885DLL;
    qword_1EB82D6C8 = "md::ls::SharedSSAOIntensityDataHandle]";
    qword_1EB82D6D0 = 37;
  }
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SharedSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::SharedSSAOIntensityDataHandle>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::SharedSSAOIntensityDataHandle>(void)::metadata) = *(v3 + 4096);
}

uint64_t _ZNKSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls29SharedSSAOIntensityDataHandleEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A431B0;
  a2[1] = v2;
  return result;
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A43190;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A43170;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::SharedSSAOIntensityDataHandle,64ul>::~storage(a1);
}

uint64_t *std::__function::__func<md::ita::ProcessRenderableForSSAOConstantData::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *>)::$_0,std::allocator<md::ita::ProcessRenderableForSSAOConstantData::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *)>::operator()(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t **a5)
{
  v7 = *a5;
  v8 = *(a1 + 32);
  SSAOIntensityData = md::MaterialResourceStore::getSSAOIntensityData(**(a1 + 8), *a4);
  v11 = SSAOIntensityData;
  v216 = SSAOIntensityData;
  v217 = a1;
  if (!v7)
  {
    v17 = **(a1 + 16);
    *&v219[8] = 0;
    v218 = (a1 + 16);
    v18 = *(a1 + 24);
    _H0 = *(v18 + 4);
    __asm { FCVT            S0, H0 }

    v10.i32[0] = *v18;
    *&v219[12] = vcvtq_f32_f16(v10).u64[0];
    *&v219[20] = _S0;
    *&v219[24] = *SSAOIntensityData;
    v221 = 0;
    v24 = v17[312];
    v25 = v17[314];
    if (*&v17[311] == *&v24)
    {
      v26 = ((*&v17[315] - *&v25) >> 3) | 0x100000000;
      v224 = v26;
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v17[314], &v224);
    }

    else
    {
      v26 = *(*&v25 + 8 * *(*&v24 - 8));
      v17[312] = (*&v24 - 8);
    }

    v224 = v26;
    v30 = v26 >> 6;
    v31 = v17[287];
    v32 = v17[286];
    if (v30 >= (*&v31 - *&v32) >> 3)
    {
      v33 = v30 + 1;
      v34 = v30 + 1 - ((*&v31 - *&v32) >> 3);
      v35 = v17[288];
      if (v34 > (*&v35 - *&v31) >> 3)
      {
        v36 = *&v35 - *&v32;
        if (v36 >> 2 > v33)
        {
          v33 = v36 >> 2;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v33;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v37);
      }

      bzero(*&v17[287], 8 * v34);
      v17[287] = (*&v31 + 8 * v34);
      v32 = v17[286];
    }

    v38 = *(*&v32 + 8 * v30);
    if (!v38)
    {
      operator new();
    }

    v39 = (v38 + 16 * (v26 & 0x3F));
    if (*v39 == -1 && v39[1] == 0)
    {
      std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v17[289], &v224);
      v41 = ((*&v17[290] - *&v17[289]) >> 3) - 1;
      *v39 = HIDWORD(v26);
      v39[1] = v41;
      SSAOIntensityData = ecs2::pool<md::Counter,64ul>::page_at_index(&v17[292], v41);
      v42 = v41 & 0x3F;
      v43 = (*(*&v17[292] + 8 * SSAOIntensityData) + 24 * v42);
      *v43 = vdupq_n_s64(1uLL);
      v43[1].i16[0] = 1;
      v44 = v41 >> 6;
      v45 = v17[299];
      v46 = v17[298];
      v47 = *&v45 - *&v46;
      v214 = a3;
      if (v41 >> 6 >= (*&v45 - *&v46) >> 3)
      {
        v48 = v44 + 1;
        v49 = v44 + 1 - (v47 >> 3);
        v50 = v17[300];
        if (v49 > (*&v50 - *&v45) >> 3)
        {
          v51 = *&v50 - *&v46;
          v52 = (*&v50 - *&v46) >> 2;
          if (v52 <= v48)
          {
            v52 = v44 + 1;
          }

          if (v51 >= 0x7FFFFFFFFFFFFFF8)
          {
            v53 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v53);
        }

        v54 = 0;
        v55 = (v49 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v56 = vdupq_n_s64(v55);
        do
        {
          v57 = vmovn_s64(vcgeq_u64(v56, vorrq_s8(vdupq_n_s64(v54), xmmword_1B33B0560)));
          if (v57.i8[0])
          {
            *(*&v45 + 8 * v54) = 0;
          }

          if (v57.i8[4])
          {
            *(*&v45 + 8 * v54 + 8) = 0;
          }

          v54 += 2;
        }

        while (v55 - ((v49 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v54);
        v58 = v8;
        v17[299] = (*&v45 + 8 * v49);
        v59 = v17[302];
        v60 = v17[301];
        v61 = (*&v59 - *&v60) >> 4;
        if (v61 <= v44)
        {
          v62 = v48 - v61;
          v63 = v17[303];
          if (v62 > (*&v63 - *&v59) >> 4)
          {
            v64 = *&v63 - *&v60;
            v65 = v64 >> 3;
            if (v64 >> 3 <= v48)
            {
              v65 = v44 + 1;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF0)
            {
              v66 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v66 = v65;
            }

            if (!(v66 >> 60))
            {
              operator new();
            }

            goto LABEL_274;
          }

          bzero(*&v17[302], 16 * v62);
          v17[302] = (*&v59 + 16 * v62);
          v8 = v58;
        }

        else if (v48 < v61)
        {
          v17[302] = (*&v60 + 16 * v48);
        }

        v46 = v17[298];
        a3 = v214;
        if (v47 < *&v17[299] - *&v46)
        {
          operator new();
        }
      }

      v67 = *(*&v46 + 8 * v44) + 32 * v42;
      *(v67 + 4) = *&v219[4];
      *v67 = *v219;
      *(v67 + 8) = *&v219[8];
      *(v67 + 12) = *&v219[12];
      v68 = v17[305];
      v69 = v17[304];
      v70 = *&v68 - *&v69;
      if (v44 >= (*&v68 - *&v69) >> 3)
      {
        v71 = v44 + 1;
        v72 = v44 + 1 - (v70 >> 3);
        v73 = v17[306];
        if (v72 > (*&v73 - *&v68) >> 3)
        {
          v74 = *&v73 - *&v69;
          v75 = (*&v73 - *&v69) >> 2;
          if (v75 <= v71)
          {
            v75 = v44 + 1;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v76 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v76 = v75;
          }

          if (!(v76 >> 61))
          {
            operator new();
          }

          goto LABEL_274;
        }

        v77 = 0;
        v78 = (v72 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v79 = vdupq_n_s64(v78);
        do
        {
          v80 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(vdupq_n_s64(v77), xmmword_1B33B0560)));
          if (v80.i8[0])
          {
            *(*&v68 + 8 * v77) = 0;
          }

          if (v80.i8[4])
          {
            *(*&v68 + 8 * v77 + 8) = 0;
          }

          v77 += 2;
        }

        while (v78 - ((v72 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v77);
        v17[305] = (*&v68 + 8 * v72);
        v81 = v17[308];
        v82 = v17[307];
        v83 = (*&v81 - *&v82) >> 4;
        if (v83 <= v44)
        {
          v84 = v8;
          v85 = v71 - v83;
          v86 = v17[309];
          if (v85 > (*&v86 - *&v81) >> 4)
          {
            v87 = *&v86 - *&v82;
            v88 = v87 >> 3;
            if (v87 >> 3 <= v71)
            {
              v88 = v44 + 1;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF0)
            {
              v89 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v89 = v88;
            }

            if (!(v89 >> 60))
            {
              operator new();
            }

            goto LABEL_274;
          }

          bzero(*&v17[308], 16 * v85);
          v17[308] = (*&v81 + 16 * v85);
          v8 = v84;
          a3 = v214;
        }

        else if (v71 < v83)
        {
          v17[308] = (*&v82 + 16 * v71);
        }

        v69 = v17[304];
        if (v70 < *&v17[305] - *&v69)
        {
          operator new();
        }
      }

      *(*(*&v69 + 8 * v44) + 8 * v42) = v221;
    }

    v90 = *a3;
    v91 = v17[330];
    if (v91)
    {
      v92 = vcnt_s8(v91);
      v92.i16[0] = vaddlv_u8(v92);
      if (v92.u32[0] > 1uLL)
      {
        v93 = *a3;
        if (v90 >= *&v91)
        {
          v93 = v90 % *&v91;
        }
      }

      else
      {
        v93 = (*&v91 - 1) & v90;
      }

      v94 = *(*&v17[329] + 8 * v93);
      if (v94)
      {
        v95 = *v94;
        if (*v94)
        {
          do
          {
            v96 = v95[1];
            if (v96 == v90)
            {
              if (v95[2] == v90)
              {
                v95[3] = v26;
                v97 = *a3;
                v98 = v17[335];
                if (!*&v98)
                {
                  goto LABEL_118;
                }

                v99 = vcnt_s8(v98);
                v99.i16[0] = vaddlv_u8(v99);
                if (v99.u32[0] > 1uLL)
                {
                  v100 = v26;
                  if (v26 >= *&v98)
                  {
                    v100 = v26 % *&v98;
                  }
                }

                else
                {
                  v100 = (*&v98 - 1) & v26;
                }

                v101 = *(*&v17[334] + 8 * v100);
                if (!v101 || (v102 = *v101) == 0)
                {
LABEL_118:
                  operator new();
                }

                while (1)
                {
                  v103 = v102[1];
                  if (v103 == v26)
                  {
                    if (v102[2] == v26)
                    {
                      v102[3] = v97;
                      v104 = *v8;
                      v105 = ecs2::ExecutionTaskContext::currentEntity(SSAOIntensityData);
                      ecs2::addComponent<md::ls::StyleSSAODataKeyHandle>(v104, v105, v26);
                      v12 = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>(&(**v218)[285], v26);
                      v16 = 0;
                      v13 = **v218;
                      goto LABEL_119;
                    }
                  }

                  else
                  {
                    if (v99.u32[0] > 1uLL)
                    {
                      if (v103 >= *&v98)
                      {
                        v103 %= *&v98;
                      }
                    }

                    else
                    {
                      v103 &= *&v98 - 1;
                    }

                    if (v103 != v100)
                    {
                      goto LABEL_118;
                    }
                  }

                  v102 = *v102;
                  if (!v102)
                  {
                    goto LABEL_118;
                  }
                }
              }
            }

            else
            {
              if (v92.u32[0] > 1uLL)
              {
                if (v96 >= *&v91)
                {
                  v96 %= *&v91;
                }
              }

              else
              {
                v96 &= *&v91 - 1;
              }

              if (v96 != v93)
              {
                break;
              }
            }

            v95 = *v95;
          }

          while (v95);
        }
      }
    }

    operator new();
  }

  v12 = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>((**(a1 + 16) + 2280), *v7);
  v218 = (a1 + 16);
  v13 = **(a1 + 16);
  v14 = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(&v13[275], v12);
  if (v14)
  {
    v16 = v14[6];
  }

  else
  {
    v16 = 0;
  }

  v27 = *(a1 + 24);
  _H0 = *(v27 + 4);
  __asm { FCVT            S0, H0 }

  v15.i32[0] = *v27;
  *(v12 + 12) = vcvtq_f32_f16(v15).u64[0];
  *(v12 + 20) = _S0;
  *(v12 + 24) = *v11;
LABEL_119:
  result = std::__hash_table<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>,std::__unordered_map_equal<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,std::equal_to<md::StyleSSAOKey>,md::StyleSSAOKeyHasher,true>,std::allocator<std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>>>::find<md::StyleSSAOKey>(&v13[275], v12);
  if (result)
  {
    v107 = result[6];
    if (v107)
    {
      if (v16 != v107)
      {
        v108 = *(*(*&v13[232] + 8 * (result[6] >> 6)) + 16 * (result[6] & 0x3F) + 8);
        v109 = *(*&v13[238] + ((v108 >> 3) & 0x1FFFFFFFFFFFFFF8)) + 24 * (v108 & 0x3F);
        ++*(v109 + 8);
        return md::updateRetainedCounter(&v13[231], v16);
      }

      return result;
    }
  }

  memset(v219, 0, 24);
  v221 = 0;
  v110 = v13[258];
  v111 = v13[260];
  v215 = v16;
  if (*&v13[257] == *&v110)
  {
    v224 = ((*&v13[261] - *&v111) >> 3) | 0x100000000;
    std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v13[260], &v224);
    v112 = v224;
  }

  else
  {
    v112 = *(*&v111 + 8 * *(*&v110 - 8));
    v13[258] = (*&v110 - 8);
  }

  v224 = v112;
  v113 = v112 >> 6;
  v114 = v13[233];
  v115 = v13[232];
  if (v113 >= (*&v114 - *&v115) >> 3)
  {
    v116 = v113 + 1;
    v117 = v113 + 1 - ((*&v114 - *&v115) >> 3);
    v118 = v13[234];
    if (v117 > (*&v118 - *&v114) >> 3)
    {
      v119 = *&v118 - *&v115;
      if (v119 >> 2 > v116)
      {
        v116 = v119 >> 2;
      }

      if (v119 >= 0x7FFFFFFFFFFFFFF8)
      {
        v120 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v120 = v116;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<std::unique_ptr<std::array<unsigned short,128ul>>>>(v120);
    }

    bzero(*&v13[233], 8 * v117);
    v13[233] = (*&v114 + 8 * v117);
    v115 = v13[232];
  }

  v121 = *(*&v115 + 8 * v113);
  if (!v121)
  {
    operator new();
  }

  v122 = (v121 + 16 * (v112 & 0x3F));
  if (*v122 != -1 || v122[1] != 0)
  {
    goto LABEL_201;
  }

  std::vector<geo::PolylineCoordinate>::push_back[abi:nn200100](&v13[235], &v224);
  v124 = ((*&v13[236] - *&v13[235]) >> 3) - 1;
  *v122 = HIDWORD(v224);
  v122[1] = v124;
  v125 = v124 & 0x3F;
  v126 = *(*&v13[238] + 8 * ecs2::pool<md::Counter,64ul>::page_at_index(&v13[238], v124)) + 24 * v125;
  *v126 = vdupq_n_s64(1uLL);
  *(v126 + 16) = 1;
  *(v126 + 18) = v222;
  *(v126 + 22) = v223;
  v127 = v124 >> 6;
  v128 = v13[245];
  v129 = v13[244];
  v130 = *&v128 - *&v129;
  v213 = v125;
  if (v124 >> 6 >= (*&v128 - *&v129) >> 3)
  {
    v131 = v127 + 1;
    v132 = v127 + 1 - (v130 >> 3);
    v133 = v13[246];
    if (v132 > (*&v133 - *&v128) >> 3)
    {
      v134 = *&v133 - *&v129;
      v135 = (*&v133 - *&v129) >> 2;
      if (v135 <= v131)
      {
        v135 = v127 + 1;
      }

      if (v134 >= 0x7FFFFFFFFFFFFFF8)
      {
        v136 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v136 = v135;
      }

      if (!(v136 >> 61))
      {
        operator new();
      }

      goto LABEL_274;
    }

    v137 = 0;
    v138 = (v132 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v139 = vdupq_n_s64(v138);
    do
    {
      v140 = vmovn_s64(vcgeq_u64(v139, vorrq_s8(vdupq_n_s64(v137), xmmword_1B33B0560)));
      if (v140.i8[0])
      {
        *(*&v128 + 8 * v137) = 0;
      }

      if (v140.i8[4])
      {
        *(*&v128 + 8 * v137 + 8) = 0;
      }

      v137 += 2;
    }

    while (v138 - ((v132 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v137);
    v13[245] = (*&v128 + 8 * v132);
    v141 = v13[248];
    v142 = v13[247];
    v143 = (*&v141 - *&v142) >> 4;
    if (v143 <= v127)
    {
      v144 = v131 - v143;
      v145 = v13[249];
      if (v144 > (*&v145 - *&v141) >> 4)
      {
        v146 = *&v145 - *&v142;
        v147 = v146 >> 3;
        if (v146 >> 3 <= v131)
        {
          v147 = v127 + 1;
        }

        if (v146 >= 0x7FFFFFFFFFFFFFF0)
        {
          v148 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v148 = v147;
        }

        if (!(v148 >> 60))
        {
          operator new();
        }

        goto LABEL_274;
      }

      bzero(*&v13[248], 16 * v144);
      v13[248] = (*&v141 + 16 * v144);
      v125 = v213;
    }

    else if (v131 < v143)
    {
      v13[248] = (*&v142 + 16 * v131);
    }

    v129 = v13[244];
    if (v130 < *&v13[245] - *&v129)
    {
      operator new();
    }
  }

  v149 = *(*&v129 + 8 * v127) + 24 * v125;
  *v149 = *v219;
  *(v149 + 16) = *&v219[16];
  *&v219[8] = 0;
  *&v219[16] = 0;
  v150 = v13[251];
  v151 = v13[250];
  v152 = *&v150 - *&v151;
  if (v127 >= (*&v150 - *&v151) >> 3)
  {
    v153 = v127 + 1;
    v154 = v127 + 1 - (v152 >> 3);
    v155 = v13[252];
    if (v154 > (*&v155 - *&v150) >> 3)
    {
      v156 = *&v155 - *&v151;
      v157 = (*&v155 - *&v151) >> 2;
      if (v157 <= v153)
      {
        v157 = v127 + 1;
      }

      if (v156 >= 0x7FFFFFFFFFFFFFF8)
      {
        v158 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v158 = v157;
      }

      if (!(v158 >> 61))
      {
        operator new();
      }

      goto LABEL_274;
    }

    v159 = 0;
    v160 = (v154 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v161 = vdupq_n_s64(v160);
    do
    {
      v162 = vmovn_s64(vcgeq_u64(v161, vorrq_s8(vdupq_n_s64(v159), xmmword_1B33B0560)));
      if (v162.i8[0])
      {
        *(*&v150 + 8 * v159) = 0;
      }

      if (v162.i8[4])
      {
        *(*&v150 + 8 * v159 + 8) = 0;
      }

      v159 += 2;
    }

    while (v160 - ((v154 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v159);
    v13[251] = (*&v150 + 8 * v154);
    v163 = v13[254];
    v164 = v13[253];
    v165 = (*&v163 - *&v164) >> 4;
    if (v165 > v127)
    {
      if (v153 < v165)
      {
        v13[254] = (*&v164 + 16 * v153);
      }

      goto LABEL_198;
    }

    v166 = v153 - v165;
    v167 = v13[255];
    if (v166 <= (*&v167 - *&v163) >> 4)
    {
      bzero(*&v13[254], 16 * v166);
      v13[254] = (*&v163 + 16 * v166);
      v125 = v213;
LABEL_198:
      v151 = v13[250];
      if (v152 < *&v13[251] - *&v151)
      {
        operator new();
      }

      goto LABEL_200;
    }

    v168 = *&v167 - *&v164;
    v169 = v168 >> 3;
    if (v168 >> 3 <= v153)
    {
      v169 = v127 + 1;
    }

    if (v168 >= 0x7FFFFFFFFFFFFFF0)
    {
      v170 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v170 = v169;
    }

    if (!(v170 >> 60))
    {
      operator new();
    }

LABEL_274:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

LABEL_200:
  *(*(*&v151 + 8 * v127) + 8 * v125) = v221;
  v112 = v224;
LABEL_201:
  v171 = std::__unordered_map_hasher<md::StyleSSAOKey,std::__hash_value_type<md::StyleSSAOKey,geo::handle<md::ConstantDataResource<ggl::DaVinci::StyleSSAO>>>,md::StyleSSAOKeyHasher,std::equal_to<md::StyleSSAOKey>,true>::operator()[abi:nn200100](v12);
  v172 = v13[276];
  if (!*&v172)
  {
    goto LABEL_223;
  }

  v173 = vcnt_s8(v172);
  v173.i16[0] = vaddlv_u8(v173);
  if (v173.u32[0] > 1uLL)
  {
    v174 = v171;
    if (v171 >= *&v172)
    {
      v174 = v171 % *&v172;
    }
  }

  else
  {
    v174 = (*&v172 - 1) & v171;
  }

  v175 = *(*&v13[275] + 8 * v174);
  if (!v175 || (v176 = *v175) == 0)
  {
LABEL_223:
    operator new();
  }

  while (1)
  {
    v177 = v176[1];
    if (v177 == v171)
    {
      break;
    }

    if (v173.u32[0] > 1uLL)
    {
      if (v177 >= *&v172)
      {
        v177 %= *&v172;
      }
    }

    else
    {
      v177 &= *&v172 - 1;
    }

    if (v177 != v174)
    {
      goto LABEL_223;
    }

LABEL_222:
    v176 = *v176;
    if (!v176)
    {
      goto LABEL_223;
    }
  }

  if (*(v176 + 10) != *(v12 + 24))
  {
    goto LABEL_222;
  }

  if (*(v176 + 28) != *(v12 + 12) || *(v176 + 9) != *(v12 + 20))
  {
    goto LABEL_222;
  }

  v176[6] = v112;
  v179 = v13[281];
  if (!*&v179)
  {
    goto LABEL_241;
  }

  v180 = vcnt_s8(v179);
  v180.i16[0] = vaddlv_u8(v180);
  if (v180.u32[0] > 1uLL)
  {
    v181 = v112;
    if (v112 >= *&v179)
    {
      v181 = v112 % *&v179;
    }
  }

  else
  {
    v181 = (*&v179 - 1) & v112;
  }

  v182 = *(*&v13[280] + 8 * v181);
  if (!v182 || (v183 = *v182) == 0)
  {
LABEL_241:
    operator new();
  }

  while (2)
  {
    v184 = v183[1];
    if (v184 != v112)
    {
      if (v180.u32[0] > 1uLL)
      {
        if (v184 >= *&v179)
        {
          v184 %= *&v179;
        }
      }

      else
      {
        v184 &= *&v179 - 1;
      }

      if (v184 != v181)
      {
        goto LABEL_241;
      }

      goto LABEL_240;
    }

    if (v183[2] != v112)
    {
LABEL_240:
      v183 = *v183;
      if (!v183)
      {
        goto LABEL_241;
      }

      continue;
    }

    break;
  }

  v16 = v215;
  for (i = 0; i != 6; i += 2)
  {
    *(v183 + i + 24) = *(v12 + i);
  }

  v186 = 0;
  *(v183 + 16) = *(v12 + 8);
  do
  {
    *(v183 + v186 + 36) = *(v12 + 12 + v186);
    v186 += 4;
  }

  while (v186 != 12);
  *(v183 + 12) = *(v12 + 24);
  if (*&v219[16])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v219[16]);
  }

  v187 = **v218;
  v188 = ecs2::sparse_set<geo::handle<md::MaterialIDStorage>,64ul>::find(&v187[231], v112);
  if (v188 == *&v187[236])
  {
    v189 = 0;
    goto LABEL_271;
  }

  v190 = v188;
  v191 = v187[235];
  v192 = v187[269];
  if (*&v187[268] == *&v192)
  {
    v193 = v187[274];
    if (!*&v193)
    {
      v212 = std::__throw_bad_function_call[abi:nn200100]();
      operator delete(v112);
      _Unwind_Resume(v212);
    }

    v189 = (*(**&v193 + 48))(v193);
  }

  else
  {
    v189 = *(*&v192 - 8);
    v187[269] = (*&v192 - 8);
  }

  v194 = 0x9DDFEA08EB382D69 * ((8 * (v189 & 0x1FFFFFFF) + 8) ^ HIDWORD(v189));
  v195 = 0x9DDFEA08EB382D69 * (HIDWORD(v189) ^ (v194 >> 47) ^ v194);
  v196 = 0x9DDFEA08EB382D69 * (v195 ^ (v195 >> 47));
  v197 = v187[264];
  if (!*&v197)
  {
    goto LABEL_270;
  }

  v198 = vcnt_s8(v197);
  v198.i16[0] = vaddlv_u8(v198);
  if (v198.u32[0] > 1uLL)
  {
    v199 = 0x9DDFEA08EB382D69 * (v195 ^ (v195 >> 47));
    if (v196 >= *&v197)
    {
      v199 = v196 % *&v197;
    }
  }

  else
  {
    v199 = v196 & (*&v197 - 1);
  }

  v200 = *(*&v187[263] + 8 * v199);
  if (!v200 || (v201 = *v200) == 0)
  {
LABEL_270:
    operator new();
  }

  while (2)
  {
    v202 = v201[1];
    if (v202 != v196)
    {
      if (v198.u32[0] > 1uLL)
      {
        if (v202 >= *&v197)
        {
          v202 %= *&v197;
        }
      }

      else
      {
        v202 &= *&v197 - 1;
      }

      if (v202 != v199)
      {
        goto LABEL_270;
      }

      goto LABEL_269;
    }

    if (v201[2] != v189)
    {
LABEL_269:
      v201 = *v201;
      if (!v201)
      {
        goto LABEL_270;
      }

      continue;
    }

    break;
  }

  v203 = (((v190 - *&v191) >> 3) >> 3) & 0x1FFFFFFFFFFFFFF8;
  v204 = *(*&v187[238] + v203);
  v205 = ((v190 - *&v191) >> 3) & 0x3F;
  v206 = *(*&v187[244] + v203);
  v207 = *(*&v187[250] + v203);
  *(v206 + 24 * v205) = v189;
  ++*(v204 + 24 * v205);
  *(v207 + 8 * v205) = v189;
LABEL_271:
  ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v219, v189);
  v208 = *(v217 + 24);
  v209 = v220;
  v210 = *v208;
  *(v220 + 4) = *(v208 + 2);
  *v209 = v210;
  _S0 = *v216;
  __asm { FCVT            H0, S0 }

  *(v209 + 8) = _S0;
  ggl::BufferMemory::~BufferMemory(v219);
  v13 = **(v217 + 16);
  return md::updateRetainedCounter(&v13[231], v16);
}

uint64_t ecs2::addComponent<md::ls::StyleSSAODataKeyHandle>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = &unk_1F2A50B38;
  *&v6 = a3;
  *(&v6 + 1) = a2;
  v7 = &v5;
  v10 = &v8;
  v8 = &unk_1F2A50B38;
  v9 = v6;
  HIDWORD(v9) = 0;
  v11 = 0;
  ecs2::Runtime::queueCommand();
  if (v11 != -1)
  {
    (off_1F2A34158[v11])(&v4, &v8);
  }

  v11 = -1;
  return std::__function::__value_func<void ()(ecs2::BasicRegistry<void> &)>::~__value_func[abi:nn200100](&v5);
}

void std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleSSAODataKeyHandle>(ecs2::Entity,md::ls::StyleSSAODataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  v5 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata;
  v6 = ecs2::BasicRegistry<void>::storage<md::ls::StyleSSAODataKeyHandle>(a2);
  v7 = v6;
  v8 = v4 >> 22;
  v10 = (v6 + 8);
  v9 = *(v6 + 8);
  if (v4 >> 22 >= (*(v6 + 16) - v9) >> 3)
  {
    std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v6 + 8), v8 + 1);
    v9 = *v10;
  }

  v11 = *(v9 + 8 * v8);
  if (!v11)
  {
    operator new();
  }

  v12 = (v11 + 4 * ((v4 >> 16) & 0x3F));
  v13 = v12[1];
  if (*v12 != -1 || v13 != 0)
  {
    *(*(*(v7 + 56) + ((v13 >> 3) & 0x1FF8)) + 8 * (v13 & 0x3F)) = *(a1 + 8);
    goto LABEL_54;
  }

  v16 = *(v7 + 40);
  v15 = *(v7 + 48);
  v56 = v5;
  if (v16 >= v15)
  {
    v18 = *(v7 + 32);
    v19 = (v16 - v18) >> 2;
    if ((v19 + 1) >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v20 = v15 - v18;
    v21 = v20 >> 1;
    if (v20 >> 1 <= (v19 + 1))
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v22 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = v21;
    }

    if (v22)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v22);
    }

    *(4 * v19) = v4;
    v17 = 4 * v19 + 4;
    v23 = *(v7 + 32);
    v24 = *(v7 + 40) - v23;
    v25 = (4 * v19 - v24);
    memcpy(v25, v23, v24);
    v26 = *(v7 + 32);
    *(v7 + 32) = v25;
    *(v7 + 40) = v17;
    *(v7 + 48) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v16 = v4;
    v17 = (v16 + 1);
  }

  *(v7 + 40) = v17;
  v27 = ((v17 - *(v7 + 32)) >> 2) - 1;
  *v12 = v4;
  v12[1] = v27;
  v28 = v27 >> 6;
  v30 = *(v7 + 56);
  v29 = *(v7 + 64);
  v31 = v29 - v30;
  if (v27 >> 6 >= (v29 - v30) >> 3)
  {
    v55 = a2;
    v32 = v28 + 1;
    v33 = v28 + 1 - (v31 >> 3);
    v34 = *(v7 + 72);
    if (v33 > (v34 - v29) >> 3)
    {
      v35 = v34 - v30;
      v36 = (v34 - v30) >> 2;
      if (v36 <= v32)
      {
        v36 = v28 + 1;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v36;
      }

      if (!(v37 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    v38 = 0;
    v39 = (v33 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v40 = vdupq_n_s64(v39);
    do
    {
      v41 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(vdupq_n_s64(v38), xmmword_1B33B0560)));
      if (v41.i8[0])
      {
        *(v29 + 8 * v38) = 0;
      }

      if (v41.i8[4])
      {
        *(v29 + 8 * v38 + 8) = 0;
      }

      v38 += 2;
    }

    while (v39 - ((v33 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v38);
    *(v7 + 64) = v29 + 8 * v33;
    v42 = *(v7 + 80);
    v43 = *(v7 + 88);
    v44 = (v43 - v42) >> 4;
    if (v44 <= v28)
    {
      v46 = v32 - v44;
      v47 = *(v7 + 96);
      if (v46 > (v47 - v43) >> 4)
      {
        v48 = v47 - v42;
        v49 = v48 >> 3;
        if (v48 >> 3 <= v32)
        {
          v49 = v28 + 1;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v49;
        }

        if (!(v50 >> 60))
        {
          operator new();
        }

LABEL_56:
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      bzero(*(v7 + 88), 16 * v46);
      v45 = v43 + 16 * v46;
    }

    else
    {
      if (v32 >= v44)
      {
        goto LABEL_50;
      }

      v45 = v42 + 16 * v32;
    }

    *(v7 + 88) = v45;
LABEL_50:
    v30 = *(v7 + 56);
    a2 = v55;
    if (v31 < (*(v7 + 64) - v30))
    {
      operator new();
    }
  }

  v51 = *(v30 + 8 * v28);
  v5 = v56;
  *(v51 + 8 * (v27 & 0x3F)) = *(a1 + 8);
  v52 = *(v7 + 152);
  for (i = *(v7 + 160); v52 != i; v52 += 32)
  {
    std::function<void ()(ecs2::Entity)>::operator()(*(v52 + 24), v4);
  }

LABEL_54:
  v54 = *(a2 + 41016) + (v4 >> 16 << 6);
  *(v54 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v5;
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>();
  *(a2 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::StyleSSAODataKeyHandle>(void)::metadata) = *(a2 + 4096);
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::StyleSSAODataKeyHandle>(ecs2::Entity,md::ls::StyleSSAODataKeyHandle &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A50B38;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

__n128 std::__function::__func<md::ita::ProcessRenderableForSSAOConstantData::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *>)::$_0,std::allocator<md::ita::ProcessRenderableForSSAOConstantData::operator()(ecs2::Query<md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *>)::$_0>,void ()(md::ls::InView const&,md::ls::MeshRenderableID const&,md::ls::SharedSSAOIntensityDataHandle const&,md::ls::StyleSSAODataKeyHandle *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A34190;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t *md::Label::setAnimationsToEnd(md::Label *this)
{
  md::Label::setupShowAnimation(this);
  *(this + 308) = 1065353216;
  *(this + 309) = (*(this + 156))(1.0);
  *(this + 300) = 1065353216;
  *(this + 301) = (*(this + 152))(1.0);

  return std::unique_ptr<md::LabelAnimator>::reset[abi:nn200100](this + 158, 0);
}

void md::Label::updateClusterState(unsigned __int8 *a1, uint64_t a2, int a3, int a4)
{
  v4 = a1[1186];
  v5 = 2 * (v4 != 1);
  if (a4)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1[1186];
  }

  if (!a4)
  {
    v5 = 0;
  }

  if (v4 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = 6;
  }

  if (v4 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v4 >= 5)
  {
    v8 = 5;
  }

  if (a3 == 37)
  {
    LOBYTE(v4) = 4;
  }

  else
  {
    v8 = 0;
  }

  if (a3 == 7)
  {
    LOBYTE(v4) = 7;
  }

  else
  {
    v7 = v8;
  }

  if (a3 == 6)
  {
    LOBYTE(v4) = v6;
  }

  else
  {
    v5 = v7;
  }

  if (v5 != a1[1187])
  {
    a1[1187] = v5;
    a1[1188] = v4;
    if (v5 - 2) <= 4 && ((0x1Bu >> (v5 - 2)))
    {
      operator new();
    }
  }
}

uint64_t md::Label::setupPickedHideAnimation(uint64_t this, md::LabelManager *a2)
{
  v3 = this;
  if (*(this + 296))
  {
    if (*(this + 1162))
    {
      return this;
    }

    this = md::Label::clearAnimatingPart(this);
  }

  atomic_load((v3 + 1330));
  v4 = mdm::zone_mallocator::instance(this);
  v5 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v4, 0x240uLL);
  bzero(v5, 0x240uLL);
  v6 = md::LabelPart::LabelPart(v5);
  *v5 = &unk_1F2A47848;
  v7 = *(v3 + 280);
  *(v3 + 280) = v5;
  if (v7)
  {
    v7 = (*(*v7 + 8))(v7, v6);
  }

  *(v3 + 1161) = 257;
  v8 = mdm::zone_mallocator::instance(v7);
  v9 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v8, 0x2E8uLL);
  md::AnimatedCrossFadeLabelPart::AnimatedCrossFadeLabelPart(v9, a2, v3, *(v3 + 1377), *(v3 + 272), *(v3 + 280), 0);
  this = *(v3 + 296);
  *(v3 + 296) = v9;
  if (this)
  {
    v10 = *(*this + 8);

    return v10();
  }

  return this;
}

void sub_1B3120BD0(mdm::zone_mallocator *a1)
{
  v3 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, v1);
  _Unwind_Resume(a1);
}

void md::NullLabelPart::populateDebugNode(md::NullLabelPart *this, gdc::DebugTreeNode *a2)
{
  std::string::basic_string[abi:nn200100]<0>(&v6, "Is Null LabelPart");
  gdc::DebugTreeValue::DebugTreeValue(v3, " ");
  gdc::DebugTreeNode::addProperty(a2, &v6, v3);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

uint64_t *std::unique_ptr<BlitPass>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::unique_ptr<ggl::RenderQueue>::reset[abi:nn200100](v2, 0);

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B3121A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B3121B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture2D>::__shared_ptr_default_delete<ggl::Texture2D,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ggl::Texture2D *,std::shared_ptr<ggl::Texture2D>::__shared_ptr_default_delete<ggl::Texture2D,ggl::Texture2D>,std::allocator<ggl::Texture2D>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B31232D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  v25 = v24;

  _Block_object_dispose(&a18, 8);
  a9.super_class = MDDisplayLayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33563(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B3123F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, uint64_t a26)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

void sub_1B31241D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_guard_abort(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result);

  _Unwind_Resume(a1);
}

void sub_1B31242AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_guard_abort(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result);

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<MDDisplayLayerRendererProvider *,std::shared_ptr<MDDisplayLayerRendererProvider>::__shared_ptr_default_delete<MDDisplayLayerRendererProvider,MDDisplayLayerRendererProvider>,std::allocator<MDDisplayLayerRendererProvider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MDDisplayLayerRendererProvider *,std::shared_ptr<MDDisplayLayerRendererProvider>::__shared_ptr_default_delete<MDDisplayLayerRendererProvider,MDDisplayLayerRendererProvider>,std::allocator<MDDisplayLayerRendererProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void MDDisplayLayerRendererProvider::~MDDisplayLayerRendererProvider(id *this)
{

  JUMPOUT(0x1B8C62190);
}

{
}

uint64_t std::__shared_ptr_pointer<MDDisplayLayerSwapchainProvider *,std::shared_ptr<MDDisplayLayerSwapchainProvider>::__shared_ptr_default_delete<MDDisplayLayerSwapchainProvider,MDDisplayLayerSwapchainProvider>,std::allocator<MDDisplayLayerSwapchainProvider>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MDDisplayLayerSwapchainProvider *,std::shared_ptr<MDDisplayLayerSwapchainProvider>::__shared_ptr_default_delete<MDDisplayLayerSwapchainProvider,MDDisplayLayerSwapchainProvider>,std::allocator<MDDisplayLayerSwapchainProvider>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

_OWORD *std::vector<std::shared_ptr<ggl::SwapchainDrawable>>::__emplace_back_slow_path<std::shared_ptr<ggl::SwapchainDrawable>&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v7 = 16 * v2;
  v8 = *a2;
  *(16 * v2) = *a2;
  if (*(&v8 + 1))
  {
    atomic_fetch_add_explicit((*(&v8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v7 + 16;
  v10 = *a1;
  v11 = *(a1 + 8) - *a1;
  v12 = v7 - v11;
  memcpy((v7 - v11), *a1, v11);
  *a1 = v12;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v9;
}

void MDDisplayLayerSwapchainProvider::~MDDisplayLayerSwapchainProvider(MDDisplayLayerSwapchainProvider *this)
{
  MDDisplayLayerSwapchainProvider::~MDDisplayLayerSwapchainProvider(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A34280;

  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  if (*(this + 28))
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](this + 28);
    operator delete(*(this + 28));
  }

  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  std::condition_variable::~condition_variable((this + 120));
  std::condition_variable::~condition_variable((this + 72));
  std::mutex::~mutex((this + 8));
}

uint64_t std::__shared_ptr_pointer<MDDisplayLayerRenderTargetPreparer *,std::shared_ptr<MDDisplayLayerRenderTargetPreparer>::__shared_ptr_default_delete<MDDisplayLayerRenderTargetPreparer,MDDisplayLayerRenderTargetPreparer>,std::allocator<MDDisplayLayerRenderTargetPreparer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<MDDisplayLayerRenderTargetPreparer *,std::shared_ptr<MDDisplayLayerRenderTargetPreparer>::__shared_ptr_default_delete<MDDisplayLayerRenderTargetPreparer,MDDisplayLayerRenderTargetPreparer>,std::allocator<MDDisplayLayerRenderTargetPreparer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void MDDisplayLayerRenderTargetPreparer::~MDDisplayLayerRenderTargetPreparer(id *this)
{

  JUMPOUT(0x1B8C62190);
}

{
}

void ggl::OuterShadowRibbon::PipelineSetup::~PipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

float md::SignedDistanceFieldGenerator::_hypot(uint64_t this, uint64_t a2)
{
  if (this >= 0)
  {
    v2 = this;
  }

  else
  {
    v2 = -this;
  }

  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = -a2;
  }

  if (v3 > 0xFF || v2 > 0xFF)
  {
    return sqrtf((this * this + a2 * a2));
  }

  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= v3)
  {
    v2 = v3;
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  return md::SignedDistanceFieldGenerator::_hypotCache[(((v5 - 1) * v5) >> 1) + v2];
}

void md::HillshadeLogic::debugConsoleString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void md::HillshadeLogic::~HillshadeLogic(md::HillshadeLogic *this)
{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));

  JUMPOUT(0x1B8C62190);
}

{
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 13));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(this + 10));
}

unint64_t md::GEOFlyoverTileResourceFetcher::tileKey(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a3 + 8);
  Int32 = gdc::ResourceKey::getInt32(v6, 0);
  v8 = gdc::ResourceKey::getInt32(v6, 1u);
  v9 = gdc::ResourceKey::getInt32(v6, 2u);
  v10 = *(a1 + 712);
  if (v10 == 16)
  {
    v12 = 0;
  }

  else
  {
    if (v10 == 92)
    {
      v11 = GEOTileKeyMake() & 0xFFFFFFFFFFFFFF7FLL;
      goto LABEL_16;
    }

    gdc::ResourceKey::keyData(&v20, a3);
    v13 = v20;
    if (gdc::GenericKey::size(v20, *(&v20 + 1)) < 0x14)
    {
      v12 = 0;
    }

    else
    {
      v12 = gdc::ResourceKey::getInt32(*(a3 + 8), 4u);
    }

    if (v13 != v21)
    {
      free(v13);
    }
  }

  gdc::ResourceKey::keyData(&v20, a3);
  v14 = v20;
  if (gdc::GenericKey::size(v20, *(&v20 + 1)) < 0x18)
  {
    v15 = 0;
  }

  else
  {
    v15 = gdc::ResourceKey::getInt32(*(a3 + 8), 5u);
  }

  if (v14 != v21)
  {
    free(v14);
  }

  v16 = *(a1 + 712);
  v17 = [v5 size];
  v18 = [v5 scale];
  LOBYTE(v20) = GEOTileKeyMakeEmpty();
  *(&v20 + 1) = v9 & 0x3F | (Int32 << 6);
  *(&v20 + 5) = ((*&v15 & 0xFFFFFFLL) << 34) | (v12 << 26) | (v16 << 58) | v8 & 0x3FFFFFF;
  BYTE13(v20) = v16 >> 6;
  HIWORD(v20) = v17 | (v18 << 8);
  v11 = v20;
LABEL_16:

  return v11;
}

uint64_t md::GEOFlyoverTileResourceFetcher::tileSize(md::GEOFlyoverTileResourceFetcher *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    if ([v2 scale] == 2)
    {
      if (*(this + 2) > 1.0)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 1;
    }

    v4 = [*(this + 96) size];
    v5 = 0x20001000080uLL >> (16 * v4);
    if (v4 >= 3)
    {
      LOWORD(v5) = 0;
    }

    v6 = (v5 / v3) | 0x100000000;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 178);
  if (v7 == 15)
  {
    v13 = *(this + 96);
    if (v13)
    {
      v14 = [v13 size];
      if (v14 > 2)
      {
        return 0x100000000;
      }

      else
      {
        return qword_1B3416DC8[v14];
      }
    }

    else if ((v6 & 0x100000000) != 0)
    {
      return vcvts_n_f32_u32(v6, 1uLL) | 0x100000000;
    }

    else
    {
      return 0x100000100;
    }
  }

  else
  {
    v8 = (v6 >> 1) | 0x100000000;
    v9 = (v6 & 0x100000000) == 0;
    if ((v6 & 0x100000000) == 0)
    {
      v8 = 0x100000100;
    }

    v10 = v6 | 0x100000000;
    if (v9)
    {
      v10 = 0x100000100;
    }

    if (v7 == 92 || v7 == 16)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }
}

unint64_t md::GEOFlyoverTileResourceFetcher::downloadZoomRange(md::GEOFlyoverTileResourceFetcher *this)
{
  if (*(this + 178) == 16)
  {
    return 0xE0000000ELL;
  }

  v2 = *(this + 94);
  v3 = v2 & 0xFFFFFFFF00000000;
  if (v2 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(this + 94);
  }

  if (*(this + 190))
  {
    v2 = v4;
  }

  else
  {
    v2 = v2;
  }

  return v3 | v2;
}

uint64_t md::GEOFlyoverTileResourceFetcher::resourceTileForTile@<X0>(uint64_t this@<X0>, const geo::QuadTile *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 712);
  if (v3 == 92)
  {
    if (*(a2 + 1))
    {
      v8 = 0;
      LOBYTE(v9) = *(a2 + 1) - 1;
      v10 = vshr_n_s32(*(a2 + 4), 1uLL);
      v11 = 1;
    }

    else
    {
      LOBYTE(v9) = 0;
      v10 = *(a2 + 4);
      v8 = *(a2 + 2);
      v11 = *(a2 + 24);
    }

    if (!*(this + 768) || (*(this + 760) & 1) == 0)
    {
      goto LABEL_21;
    }

    v19 = *a2;
    if (v9 - *(this + 756) >= 1)
    {
      if (!v9)
      {
LABEL_20:
        v7 = 0;
        *a3 = 0;
        goto LABEL_46;
      }

      v8 = 0;
      v20 = (v9 - *(this + 756));
      if (v9 < v20)
      {
        v20 = v9;
      }

      LOBYTE(v9) = v9 - v20;
      v10 = vshl_s32(v10, vneg_s32(vdup_n_s32(v20)));
      v11 = 1;
    }

    if (v9)
    {
      v21 = *(this + 752);
      v9 = v9;
      do
      {
        if (v21 > v9)
        {
          break;
        }

        v22 = *(this + 728);
        v23 = *(this + 736);
        while (v22 != v23)
        {
          v31 = *v22;
          v32[0] = *(v22 + 2);
          v24 = v31 <= v9 && DWORD1(v31) >= v9;
          if (v24)
          {
            v25 = 0;
            if (v9 >= (v9 - v31))
            {
              v26 = (v9 - v31);
            }

            else
            {
              v26 = v9;
            }

            v27 = vshl_s32(v10, vneg_s32(vdup_n_s32(v26)));
            v28 = v27.u32[1];
            v29 = 1;
            while (1)
            {
              v30 = v29;
              if (v28 < *(&v32[-1] + v25) || v28 > *(v32 + v25))
              {
                break;
              }

              v29 = 0;
              v28 = v27.i32[0];
              v25 = 1;
              if ((v30 & 1) == 0)
              {
                *(a3 + 1) = v9;
                *(a3 + 4) = v10;
                *a3 = v19;
                *(a3 + 16) = v8;
                v7 = 1;
                *(a3 + 24) = v11;
                goto LABEL_46;
              }
            }
          }

          v22 = (v22 + 24);
        }

        v8 = 0;
        --v9;
        v10 = vshr_n_s32(v10, 1uLL);
        v11 = 1;
      }

      while (v9);
    }

    goto LABEL_20;
  }

  if (v3 == 16)
  {
    v4 = *(a2 + 1);
    v24 = v4 >= 0xE;
    v5 = v4 - 14;
    if (!v24)
    {
      goto LABEL_21;
    }

    v6 = *a2;
    *(a3 + 1) = 14;
    *(a3 + 4) = vshl_s32(*(a2 + 4), vneg_s32(vdup_n_s32(v5)));
    *a3 = v6;
    *(a3 + 16) = 0;
    v7 = 1;
    *(a3 + 24) = 1;
  }

  else
  {
    if ((*(this + 760) & 1) == 0)
    {
LABEL_21:
      v7 = 0;
      *a3 = 0;
      goto LABEL_46;
    }

    v12 = *(a2 + 1);
    v13 = *(a2 + 4);
    v14 = *a2;
    v15 = *(a2 + 2);
    v16 = *(a2 + 24);
    v17 = v12 - *(this + 756);
    if (v17 >= 1 && *(a2 + 1))
    {
      v15 = 0;
      v18 = (v12 - *(this + 756));
      if (v12 < v17)
      {
        v18 = *(a2 + 1);
      }

      LOBYTE(v12) = v12 - v18;
      v13 = vshl_s32(v13, vneg_s32(vdup_n_s32(v18)));
      v16 = 1;
    }

    *(a3 + 1) = v12;
    *(a3 + 4) = v13;
    *a3 = v14;
    *(a3 + 16) = v15;
    v7 = 1;
    *(a3 + 24) = v16;
  }

LABEL_46:
  *(a3 + 32) = v7;
  return this;
}

void md::GEOFlyoverTileResourceFetcher::~GEOFlyoverTileResourceFetcher(md::GEOFlyoverTileResourceFetcher *this)
{
  md::TiledGEOResourceFetcher::~TiledGEOResourceFetcher(this);

  JUMPOUT(0x1B8C62190);
}

_BYTE *md::C3mResourceDecoder<md::GEOFlyoverTileResource>::decode@<X0>(uint64_t a1@<X0>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = *a3;
  if (*a3 && (a3[112] & 1) != 0)
  {
    v8 = (*(*result + 32))(result);
    v9 = (*(**a3 + 24))();
    geo::c3m::loadFromChunk(v25, a1 + 72, v8, v9, v10, v11, v12);
    if (v25[0])
    {
      memset(v24, 0, sizeof(v24));
      std::vector<std::shared_ptr<md::GEOVectorTileResource>>::reserve(v24, 0x4EC4EC4EC4EC4EC5 * ((v27 - v26) >> 3));
      v13 = v26;
      for (i = v27; v13 != i; v13 += 104)
      {
        v15 = *v13;
        if ((v15 - 4) < 2 || v15 == 2)
        {
          v17 = *(v13 + 1);
          if (*(v13 + 2) - v17 == 32)
          {
            v23 = 0;
            v21 = 0uLL;
            v22 = 0;
            v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v17 length:(*v17)[1] - **v17 freeWhenDone:0];
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(&v19, &v20);
          }
        }

        else if (!*v13)
        {
          v18 = *(v13 + 1);
          if (*(v13 + 2) - v18 == 32)
          {
            v23 = 0;
            v21 = 0uLL;
            v22 = 0;
            v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:**v18 length:(*v18)[1] - **v18 freeWhenDone:0];
            std::allocate_shared[abi:nn200100]<gdc::DataObject,std::allocator<gdc::DataObject>,NSData * {__strong}&,0>(&v19, &v20);
          }
        }

        v21 = 0uLL;
        std::vector<std::shared_ptr<gdc::Resource>>::push_back[abi:nn200100](v24, &v21);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v21 + 1));
        }
      }

      operator new();
    }

    *a4 = 0;
    a4[1] = 0;
    return geo::optional<geo::c3m::Model>::~optional(v25);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void sub_1B312573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base((v30 + 496));
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base((v30 + 280));
  v32 = *(v30 + 40);
  if (v32 != *(v30 + 56))
  {
    free(v32);
  }

  std::__shared_weak_count::~__shared_weak_count(v30);
  operator delete(v33);
  a13 = &a28;
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&a13);
  geo::optional<geo::c3m::Model>::~optional(va);
  _Unwind_Resume(a1);
}

void md::GEOFlyoverTileResource::~GEOFlyoverTileResource(char **this)
{
  md::GEOFlyoverTileResource::~GEOFlyoverTileResource(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A347E0;
  v3 = (this + 102);
  std::vector<std::shared_ptr<md::TrafficDynamicTileResource>>::__destroy_vector::operator()[abi:nn200100](&v3);
  geo::small_vector_base<std::pair<geo::c3m::MaterialType,geo::small_vector<geo::c3m::TextureData,2ul>>>::~small_vector_base(this + 59);
  geo::small_vector_base<geo::c3m::Mesh>::~small_vector_base(this + 32);
  v2 = this[2];
  if (v2 != this[4])
  {
    free(v2);
  }
}

void std::__shared_ptr_emplace<md::GEOFlyoverTileResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A347A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::C3mResourceDecoder<md::GEOFlyoverTileResource>::~C3mResourceDecoder(uint64_t a1)
{
  md::C3mResourceDecoder<md::GEOFlyoverTileResource>::~C3mResourceDecoder(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::C3mResourceDecoder<md::GEOFlyoverTileResource>::~C3mResourceDecoder(uint64_t a1)
{
  *a1 = &unk_1F2A34730;
  std::mutex::~mutex((a1 + 112));
  std::__hash_table<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,std::__unordered_map_hasher<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsHash,geo::c3m::HuffmanParamsEquals,true>,std::__unordered_map_equal<huffman_params_t,std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>,geo::c3m::HuffmanParamsEquals,geo::c3m::HuffmanParamsHash,true>,std::allocator<std::__hash_value_type<huffman_params_t,geo::c3m::EdgebreakerDecodeTable>>>::~__hash_table(a1 + 72);
  *(a1 + 40) = &unk_1F2A34780;
  *(a1 + 48) = &unk_1F2A59028;

  *(a1 + 8) = &unk_1F2A34758;
  *(a1 + 16) = &unk_1F2A59028;

  return a1;
}

void std::__shared_ptr_emplace<md::C3mResourceDecoder<md::GEOFlyoverTileResource>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A346F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t md::WaypointLabelPart::populateMeshDescriptor(uint64_t a1, uint64_t a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  *(a2 + 1) = 1;
  *(a2 + 2) = *(a1 + 829);
  v3[0] = &unk_1F2A34C08;
  v3[1] = a1;
  v3[3] = v3;
  std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::swap[abi:nn200100](v3, (a2 + 8));
  return std::__function::__value_func<void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::~__value_func[abi:nn200100](v3);
}

void std::__function::__func<md::WaypointLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::WaypointLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  md::IconLabelPart::populateMesh(v4, a3);
  v5 = 0;
  *(a3 + 72) = *(v4 + 960);
  do
  {
    *(a3 + 88 + v5) = *(v4 + 888 + v5);
    ++v5;
  }

  while (v5 != 4);
  for (i = 0; i != 4; ++i)
  {
    *(a3 + 92 + i) = *(v4 + 892 + i);
  }

  for (j = 0; j != 4; ++j)
  {
    *(a3 + 96 + j) = *(v4 + 896 + j);
  }

  if (*(v4 + 829) == 1)
  {
    for (k = 0; k != 4; ++k)
    {
      *(a3 + 100 + k) = *(v4 + 900 + k);
    }

    for (m = 0; m != 4; ++m)
    {
      *(a3 + 104 + m) = *(v4 + 904 + m);
    }

    for (n = 0; n != 4; ++n)
    {
      *(a3 + 108 + n) = *(v4 + 908 + n);
    }
  }
}

uint64_t std::__function::__func<md::WaypointLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0,std::allocator<md::WaypointLabelPart::populateMeshDescriptor(md::IconMeshDescriptor &)::$_0>,void ()(md::LabelRenderDescriptor const&,md::IconMeshData &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A34C08;
  a2[1] = v2;
  return result;
}

uint64_t md::WaypointLabelPart::layoutForDisplay(float32x2_t *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5)
{
  v10 = a1[109];
  v11 = fminf(fmaxf(*(*&a1[4] + 64), 0.0), 23.0);
  v12 = md::LabelStylePropertyRamp::valueAtZ(v10, v11);
  v10[84] = v12;
  v13 = md::LabelStylePropertyRamp::valueAtZ((v10 + 28), v11);
  v10[85] = v13;
  v14 = md::LabelStylePropertyRamp::valueAtZ((v10 + 56), v11);
  v10[86] = v14;
  a1[120].f32[0] = v12;
  v15 = v13 + v12;
  a1[120].f32[1] = v13 + v12;
  v16 = (v13 + v12) + v14;
  a1[121].f32[0] = v16;
  if (v13 <= 0.0)
  {
    if (v14 <= 0.0)
    {
      a1[120].f32[0] = v12 + 1.0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v12 = fmaxf(v12 + -1.0, 0.0);
  a1[120].f32[0] = v12;
  if (v14 > 0.0)
  {
LABEL_5:
    a1[120].f32[1] = fmaxf(v12, v15 + -1.0);
    v16 = v16 + 1.0;
    a1[121].f32[0] = v16;
    goto LABEL_7;
  }

  a1[120].f32[1] = v15 + 1.0;
LABEL_7:
  v17 = v16 + 1.0;
  a1[121].f32[1] = (v16 + 1.0) + (v16 + 1.0);
  v18 = -(v16 + 1.0);
  a1[118].f32[0] = v18;
  a1[118].f32[1] = v18;
  a1[119].f32[0] = v17;
  a1[119].f32[1] = v17;
  md::IconLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
  return 37;
}

void md::WaypointLabelPart::updateForDisplay(md::WaypointLabelPart *this)
{
  md::IconLabelPart::updateForDisplay(this);
  v2 = *(this + 104);
  v3 = *(this + 105);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 109) = v2;
  v4 = *(this + 110);
  *(this + 110) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  *(this + 111) = *(this + 106);
  *(this + 224) = *(this + 214);
  *(this + 900) = *(this + 860);
  *(this + 227) = *(this + 217);
}

void md::WaypointLabelPart::prepareForDisplay(md::WaypointLabelPart *this, md::LabelManager *a2)
{
  v3 = *(this + 153);
  if (v3 == *(this + 204))
  {
    v4 = 0;
    v5 = 1;
    while (*(this + v4 + 80) >= *(this + v4 + 78))
    {
      v6 = v5;
      v5 = 0;
      v4 = 1;
      if ((v6 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  *(this + 204) = v3;
  (*(*this + 920))(this, 1, this + 640, this + 312);
LABEL_7:
  if (*(this + 565) == 1)
  {
    operator new();
  }

  v7 = **(this + 4);
  v8 = *(v7 + 440);
  if (!v8)
  {
    md::LabelStyle::prepareDisplayIconStyleGroup(**(this + 4));
  }

  v9 = *(v7 + 448);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 104) = v8;
  v10 = *(this + 105);
  *(this + 105) = v9;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

float md::WaypointLabelPart::updateWithStyle(md::WaypointLabelPart *this, md::LabelManager *a2)
{
  md::ImageLabelPart::updateWithStyle(this, a2);
  v3 = *(this + 4);
  if (*(this + 104))
  {
    v4 = *(*v3 + 55);
    if (!v4)
    {
      md::LabelStyle::prepareDisplayIconStyleGroup(*v3);
    }

    v5 = *(*v3 + 56);
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    *(this + 104) = v4;
    v6 = *(this + 105);
    *(this + 105) = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  if (*(this + 592) == 4)
  {
    v7 = *v3;
    v8 = *(*v3 + 38);
    if (!v8)
    {
      v9 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v3, 1);
      v8 = *v9;
      *(v7 + 38) = *v9;
    }

    for (i = 0; i != 4; ++i)
    {
      *(this + i + 860) = *(v8 + 72 + i);
    }

    for (j = 0; j != 4; ++j)
    {
      *(this + j + 864) = *(v8 + 80 + j);
    }

    v12 = 0;
    v13 = v8 + 84;
    do
    {
      *(this + v12 + 868) = *(v13 + v12);
      ++v12;
    }

    while (v12 != 4);
  }

  v14 = *v3;
  v15 = *(*v3 + 37);
  if (!v15)
  {
    v16 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(*v3, 0);
    v15 = *v16;
    *(v14 + 37) = *v16;
  }

  for (k = 0; k != 4; ++k)
  {
    *(this + k + 848) = *(v15 + k + 72);
  }

  for (m = 0; m != 4; ++m)
  {
    *(this + m + 852) = *(v15 + m + 80);
  }

  for (n = 0; n != 4; ++n)
  {
    *(this + n + 856) = *(v15 + n + 84);
  }

  result = (v15[12] + v15[11]) + v15[13];
  *(this + 228) = -result;
  *(this + 229) = -result;
  *(this + 230) = result;
  *(this + 231) = result;
  return result;
}

void md::WaypointLabelPart::~WaypointLabelPart(md::WaypointLabelPart *this)
{
  *this = &unk_1F2A34838;
  v2 = *(this + 110);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::IconLabelPart::~IconLabelPart(this);
  v5 = mdm::zone_mallocator::instance(v4);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v5, this);
}

{
  *this = &unk_1F2A34838;
  v2 = *(this + 110);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  md::IconLabelPart::~IconLabelPart(this);
}

uint64_t md::StyleFadeLabelPart::layoutForDisplay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 3528);
  if (v10)
  {
    v11 = *(v10 + 520);
    v12 = *(v10 + 528);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *(v11 + 272);
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    else
    {
      v13 = *(v11 + 272);
    }
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 632) = v13;

  return md::CrossFadeLabelPart::layoutForDisplay(a1, a2, a3, a4, a5);
}

void md::StyleFadeLabelPart::~StyleFadeLabelPart(md::StyleFadeLabelPart *this)
{
  md::CompositeLabelPart::~CompositeLabelPart(this);
  v3 = mdm::zone_mallocator::instance(v2);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v3, this);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t a2, uint64_t **a3)
{
  v7 = *(a1 + 1);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = i[1];
        if (v11 == a2)
        {
          if (i[2] == a2)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v12 = mdm::zone_mallocator::instance(a1);
  v13 = pthread_rwlock_rdlock((v12 + 32));
  if (v13)
  {
    geo::read_write_lock::logFailure(v13, "read lock", v14);
  }

  i = malloc_type_zone_malloc(*v12, 0x28uLL, 0x10200409D4F30A8uLL);
  atomic_fetch_add((v12 + 24), 1u);
  geo::read_write_lock::unlock((v12 + 32));
  *i = 0;
  i[1] = a2;
  v16 = **a3;
  i[3] = 0;
  i[4] = 0;
  i[2] = v16;
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v7 || (v18 * v7) < v17)
  {
    v19 = 1;
    if (v7 >= 3)
    {
      v19 = (v7 & (v7 - 1)) != 0;
    }

    v20 = v19 | (2 * v7);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      prime = std::__next_prime(v22);
      v22 = prime;
    }

    v7 = *(a1 + 1);
    if (v22 > v7)
    {
      goto LABEL_32;
    }

    if (v22 < v7)
    {
      prime = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (v7 < 3 || (v31 = vcnt_s8(v7), v31.i16[0] = vaddlv_u8(v31), v31.u32[0] > 1uLL))
      {
        prime = std::__next_prime(prime);
      }

      else
      {
        v32 = 1 << -__clz(prime - 1);
        if (prime >= 2)
        {
          prime = v32;
        }
      }

      if (v22 <= prime)
      {
        v22 = prime;
      }

      if (v22 >= v7)
      {
        v7 = *(a1 + 1);
      }

      else
      {
        if (v22)
        {
LABEL_32:
          v23 = mdm::zone_mallocator::instance(prime);
          v24 = pthread_rwlock_rdlock((v23 + 32));
          if (v24)
          {
            geo::read_write_lock::logFailure(v24, "read lock", v25);
          }

          v26 = malloc_type_zone_malloc(*v23, 8 * v22, 0x2004093837F09uLL);
          atomic_fetch_add((v23 + 24), 1u);
          geo::read_write_lock::unlock((v23 + 32));
          std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(a1, v26);
          v27 = 0;
          *(a1 + 1) = v22;
          do
          {
            *(*a1 + 8 * v27++) = 0;
          }

          while (v22 != v27);
          v28 = *(a1 + 3);
          if (v28)
          {
            v29 = v28[1];
            v30 = vcnt_s8(v22);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              if (v29 >= v22)
              {
                v29 %= v22;
              }
            }

            else
            {
              v29 &= v22 - 1;
            }

            *(*a1 + 8 * v29) = a1 + 6;
            v33 = *v28;
            if (*v28)
            {
              do
              {
                v34 = v33[1];
                if (v30.u32[0] > 1uLL)
                {
                  if (v34 >= v22)
                  {
                    v34 %= v22;
                  }
                }

                else
                {
                  v34 &= v22 - 1;
                }

                if (v34 != v29)
                {
                  v35 = *a1;
                  if (!*(*a1 + 8 * v34))
                  {
                    *(v35 + 8 * v34) = v28;
                    goto LABEL_56;
                  }

                  *v28 = *v33;
                  *v33 = **(v35 + 8 * v34);
                  **(v35 + 8 * v34) = v33;
                  v33 = v28;
                }

                v34 = v29;
LABEL_56:
                v28 = v33;
                v33 = *v33;
                v29 = v34;
              }

              while (v33);
            }
          }

          v7 = v22;
          goto LABEL_60;
        }

        std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(a1, 0);
        v7 = 0;
        *(a1 + 1) = 0;
      }
    }

LABEL_60:
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }

      else
      {
        v3 = a2;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }
  }

  v36 = *a1;
  v37 = *(*a1 + 8 * v3);
  if (v37)
  {
    *i = *v37;
LABEL_73:
    *v37 = i;
    goto LABEL_74;
  }

  *i = *(a1 + 3);
  *(a1 + 3) = i;
  *(v36 + 8 * v3) = a1 + 6;
  if (*i)
  {
    v38 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v38 >= v7)
      {
        v38 %= v7;
      }
    }

    else
    {
      v38 &= v7 - 1;
    }

    v37 = (*a1 + 8 * v38);
    goto LABEL_73;
  }

LABEL_74:
  ++*(a1 + 5);
  return i;
}

void sub_1B3126998(_Unwind_Exception *a1)
{
  geo::read_write_lock::unlock((v2 + 32));
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<md::NamedLabelDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::LabelSpacingDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *result, void *a2)
{
  if (result)
  {
    result = a2[4];
    if (result)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](result);
    }
  }

  else if (!a2)
  {
    return;
  }

  v3 = mdm::zone_mallocator::instance(result);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *> *> *>(v3, v2);
  }
}

void std::__shared_ptr_emplace<md::MuninPointLabelDedupingGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](std::__shared_weak_count *a1, void *a2)
{
  if (a1)
  {
    a1 = a2[3];
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](a1);
    }
  }

  v3 = mdm::zone_mallocator::instance(a1);

  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *>>(v3, a2);
}

void std::unique_ptr<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *[],std::__bucket_list_deallocator<geo::allocator_adapter<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *,mdm::zone_mallocator>>>::reset[abi:nn200100]<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> **,0>(mdm::zone_mallocator *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::__hash_node_base<std::__hash_node<std::shared_ptr<md::LabelDedupingGroup>,void *> *> *>(v3, v2);
  }
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::weak_ptr<md::Label>>,void *>>(uint64_t a1)
{
  v2 = pthread_rwlock_rdlock((a1 + 32));
  if (v2)
  {
    geo::read_write_lock::logFailure(v2, "read lock", v3);
  }

  v4 = malloc_type_zone_malloc(*a1, 0x40uLL, 0x102004081FDBCCDuLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v4;
}

void std::__shared_ptr_emplace<md::Label>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A34C50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::LabelPool::labelForCustomFeature(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int *a5, int a6)
{
  v21 = a3;
  *a1 = 0;
  a1[1] = 0;
  v19 = *(*a4 + 72);
  v20 = *a5;
  std::mutex::lock((a2 + 480));
  v11 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(a2 + 544, v19, v20);
  if (a2 + 552 == v11)
  {
    std::allocate_shared[abi:nn200100]<md::Label,std::allocator<md::Label>,md::LabelManager *&,std::shared_ptr<md::LabelFeature> const&,md::LabelIdentifier const&,0>(&v18, &v21, a4, a5);
  }

  v13 = *(v11 + 48);
  v12 = *(v11 + 56);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *a1 = v13;
  a1[1] = v12;
  std::mutex::unlock((a2 + 480));
  if (a6)
  {
    v14 = v19;
    v15 = v20;
    if (a2 + 232 == std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::find<std::pair<unsigned long long,md::LabelIdentifier>>(a2 + 224, v19, v20))
    {
      v18 = &v19;
      v16 = std::__tree<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::__map_value_compare<std::pair<unsigned long long,md::LabelIdentifier>,std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,std::less<std::pair<unsigned long long,md::LabelIdentifier>>,true>,geo::allocator_adapter<std::__value_type<std::pair<unsigned long long,md::LabelIdentifier>,std::shared_ptr<md::Label>>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::pair<unsigned long long,md::LabelIdentifier>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long long,md::LabelIdentifier> const&>,std::tuple<>>((a2 + 224), v14, v15, &v18);
      if (v12)
      {
        atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(v16 + 7);
      *(v16 + 6) = v13;
      *(v16 + 7) = v12;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }

      if ((*(v13 + 1341) & 1) == 0)
      {
        *(v13 + 1341) = 1;
      }

      *(a2 + 758) = 1;
    }
  }
}

void sub_1B3126F74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,geo::allocator_adapter<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,mdm::zone_mallocator>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 3)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[5];
  std::__hash_node_destructor<geo::allocator_adapter<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<md::LabelDedupingGroup>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::shared_ptr<md::Label>>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x20040A4A59CD2uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

uint64_t std::vector<std::shared_ptr<md::Label>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::erase(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v12 = a2;
    }

    else
    {
      v6 = -*a1;
      v7 = *a1 + a2;
      v8 = *a1 + a3;
      do
      {
        v9 = (v8 + v6);
        v10 = *(v8 + v6);
        *v9 = 0;
        v9[1] = 0;
        v11 = *(v7 + v6 + 8);
        *(v7 + v6) = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        }

        v7 += 16;
        v8 += 16;
      }

      while (v8 + v6 != v5);
      v12 = v7 + v6;
      v5 = a1[1];
    }

    while (v5 != v12)
    {
      v13 = *(v5 - 8);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      v5 -= 16;
    }

    a1[1] = v12;
  }

  return a2;
}

void std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__emplace_unique_key_args<std::shared_ptr<md::LabelMapTile>,std::shared_ptr<md::LabelMapTile> const&>(mdm::zone_mallocator *result, unint64_t a2, void *a3)
{
  v6 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v7 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v6 >> 47) ^ v6);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = *(result + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    if (v10.u32[0] > 1uLL)
    {
      v3 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }
    }

    else
    {
      v3 = v8 & (v9 - 1);
    }

    v11 = *(*result + 8 * v3);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v8)
        {
          if (i[2] == a2)
          {
            return;
          }
        }

        else
        {
          if (v10.u32[0] > 1uLL)
          {
            if (v13 >= v9)
            {
              v13 %= v9;
            }
          }

          else
          {
            v13 &= v9 - 1;
          }

          if (v13 != v3)
          {
            break;
          }
        }
      }
    }
  }

  v14 = mdm::zone_mallocator::instance(result);
  v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__hash_node<std::shared_ptr<md::LabelMapTile>,void *>>(v14);
  *v15 = 0;
  v15[1] = v8;
  v16 = a3[1];
  v15[2] = *a3;
  v15[3] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = (*(result + 5) + 1);
  v18 = *(result + 12);
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    std::__hash_table<std::shared_ptr<md::LabelMapTile>,std::hash<std::shared_ptr<md::LabelMapTile>>,std::equal_to<std::shared_ptr<md::LabelMapTile>>,geo::allocator_adapter<std::shared_ptr<md::LabelMapTile>,mdm::zone_mallocator>>::__rehash<true>(result, v22);
    v9 = *(result + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v23 = *result;
  v24 = *(*result + 8 * v3);
  if (v24)
  {
    *v15 = *v24;
LABEL_40:
    *v24 = v15;
    goto LABEL_41;
  }

  *v15 = *(result + 3);
  *(result + 3) = v15;
  *(v23 + 8 * v3) = result + 24;
  if (*v15)
  {
    v25 = *(*v15 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*result + 8 * v25);
    goto LABEL_40;
  }

LABEL_41:
  ++*(result + 5);
}

uint64_t *std::__tree<std::shared_ptr<md::Label>,std::less<std::shared_ptr<md::Label>>,geo::allocator_adapter<std::shared_ptr<md::Label>,mdm::zone_mallocator>>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result + 1;
  v4 = result[1];
  result[1] = a2[1];
  a2[1] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  if (result[3])
  {
    result = (*v3 + 16);
  }

  *result = v3;
  v6 = (a2[1] + 16);
  if (!v5)
  {
    v6 = a2;
  }

  *v6 = (a2 + 1);
  return result;
}

uint64_t md::LabelPool::isPointInActiveRegion(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 1;
  do
  {
    v4 = *(a2 + 8 * v2);
    if (v4 < *(a1 + 48 + 8 * v2) || v4 >= *(a1 + 64 + 8 * v2))
    {
      return 0;
    }

    v5 = v3;
    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    result = 0;
    for (i = 1; ; i = 0)
    {
      v10 = *(a2 + 8 * result);
      if (v10 < *(*v6 + 48 + 8 * result) || v10 >= *(*v6 + 64 + 8 * result))
      {
        break;
      }

      v11 = i;
      result = 1;
      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    result = 0;
    v6 += 2;
  }

  while (v6 != v7);
  return result;
}

uint64_t md::LabelPool::isRectInActiveRegion(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a2 + 16;
  v4 = 1;
  do
  {
    if (*(a1 + 64 + 8 * v2) <= *(a2 + 8 * v2) || *(a1 + 48 + 8 * v2) >= *(v3 + 8 * v2))
    {
      return 0;
    }

    v5 = v4;
    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v6 == v7)
  {
    return 0;
  }

  do
  {
    result = 0;
    v9 = 1;
    while (*(*v6 + 64 + 8 * result) > *(a2 + 8 * result) && *(*v6 + 48 + 8 * result) < *(v3 + 8 * result))
    {
      v10 = v9;
      v9 = 0;
      result = 1;
      if ((v10 & 1) == 0)
      {
        return result;
      }
    }

    result = 0;
    v6 += 2;
  }

  while (v6 != v7);
  return result;
}

uint64_t md::LabelPool::replacementForLabel(md::LabelPool *this, const md::Label *a2)
{
  v4 = (*(**(a2 + 1) + 160))(*(a2 + 1));
  v5 = (*(**(a2 + 1) + 176))(*(a2 + 1));
  std::mutex::lock((this + 480));
  v6 = *(this + 28);
  if (v6 != (this + 232))
  {
    while (1)
    {
      v7 = *(v6 + 6);
      if (v7 != a2 && *(v7 + 844) && *(v7 + 1352) == 1 && (*(**(v7 + 8) + 216))(*(v7 + 8)))
      {
        break;
      }

LABEL_12:
      v10 = *(v6 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v6 + 2);
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
      if (v11 == (this + 232))
      {
        goto LABEL_18;
      }
    }

    if (v4)
    {
      v8 = (*(**(v7 + 8) + 160))(*(v7 + 8)) == v4;
      if (v5)
      {
LABEL_8:
        v9 = (*(**(v7 + 8) + 176))(*(v7 + 8)) == v5;
        goto LABEL_11;
      }
    }

    else
    {
      v8 = 0;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
LABEL_11:
    if (v8 || v9)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_18:
  v7 = 0;
LABEL_19:
  std::mutex::unlock((this + 480));
  return v7;
}

void md::LabelPool::setLocalLabel(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2)
  {
    v6 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    *(a1 + 760) = 0;
    *(a1 + 758) = 1;
  }

  v7 = *a3;
  if (*a3)
  {
    v8 = a3[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a2[1];
    *a2 = v7;
    a2[1] = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    *(a1 + 760) = 0;
  }
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  result = md::getStorage<geo::handle<md::CachedKey<md::StyleSSAOKey>>,md::CachedKey<md::StyleSSAOKey>,md::CachedKey<md::StyleSSAOKey>*>((**(a1 + 8) + 2280), *a4);
  if (*(result + 24) > 0.01 && **(a1 + 16) == 1)
  {
    v7 = **(a1 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 20) = v7 & 1;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorSSAO::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::IsMercator const&,md::ls::StyleSSAODataKeyHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A34E50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls16UseGlobeLightingEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UseGlobeLighting>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UseGlobeLighting>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseGlobeLighting,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UseGlobeLighting,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50228;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorGlobeLight::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::UseGlobeLighting const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A34E98;
  a2[1] = v2;
  return result;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls10UsesShadowEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UsesShadow>(v3);
  v6 = v5[1];
  if (v2 >> 22 < (v5[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = v5;
        v9 = v5[25];
        v10 = v5[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UsesShadow>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UsesShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50138;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UsesShadow,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A50138;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::HasMaterialRasterRenderItem const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(md::ls::FunctionConstants &,md::ls::IsMaterial const&,md::ls::MainPassItem const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls13IsNotMercatorEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata;
  IsNot = ecs2::BasicRegistry<void>::storage<md::ls::IsNotMercator>(v3);
  v6 = IsNot[1];
  if (v2 >> 22 < (IsNot[2] - v6) >> 3)
  {
    v7 = *(v6 + 8 * (v2 >> 22));
    if (v7)
    {
      if (*(v7 + 4 * ((v2 >> 16) & 0x3F)) == v2)
      {
        v8 = IsNot;
        v9 = IsNot[25];
        v10 = IsNot[26];
        while (v9 != v10)
        {
          std::function<void ()(ecs2::Entity)>::operator()(*(v9 + 24), v2);
          v9 += 32;
        }

        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v8, v2, WORD1(v2));
      }
    }
  }

  v11 = *(v3 + 41016) + (v2 >> 16 << 6);
  *(v11 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::IsNotMercator>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsNotMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));
  ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::IsNotMercator,0ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4FAE0;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 7));

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void _ZNSt3__110__function6__funcIZN4ecs213BasicRegistryIvE7storageIN2md2ls19UniqueRenderArrayIDEEERN3gdc12constness_asINS2_16component_traitsIJu14__remove_constIT_EvEE12storage_typeESC_E4typeEvEUlNS2_6EntityEE_NS_9allocatorISK_EEFvSJ_EEclEOSJ_(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  v4 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata;
  v5 = ecs2::BasicRegistry<void>::storage<md::ls::UniqueRenderArrayID>(v3);
  v6 = v2 >> 22;
  v7 = v5[1];
  if (v2 >> 22 < (v5[2] - v7) >> 3)
  {
    v8 = *(v7 + 8 * v6);
    if (v8)
    {
      v9 = (v2 >> 16) & 0x3F;
      if (*(v8 + 4 * v9) == v2)
      {
        v10 = v5;
        v11 = v5[31];
        v12 = v5[32];
        if (v11 != v12)
        {
          do
          {
            std::function<void ()(ecs2::Entity)>::operator()(*(v11 + 24), v2);
            v11 += 32;
          }

          while (v11 != v12);
          v8 = *(v10[1] + 8 * v6);
        }

        v13 = *(v8 + 4 * v9 + 2);
        v14 = ((v10[5] - v10[4]) >> 2) - 1;
        v15 = v14 & 0x3F;
        v16 = v10[7];
        v17 = *(v16 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8));
        v18 = v13 & 0x3F;
        v19 = *(v16 + ((v13 >> 3) & 0x1FF8));
        v20 = *(v19 + 8 * v18);
        *(v19 + 8 * v18) = *(v17 + 8 * v15);
        *(v17 + 8 * v15) = v20;
        ecs2::sparse_set<ecs2::Entity,64ul>::erase(v10, v2, WORD1(v2));
      }
    }
  }

  *(*(v3 + 41016) + (v2 >> 16 << 6) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) &= ~(1 << v4);
  ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>();
  *(v3 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::ls::UniqueRenderArrayID>(void)::metadata) = *(v3 + 4096);
}

void ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));
  ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(void *a1)
{
  *a1 = &unk_1F2A4F260;
    ;
  }

  v3 = a1[7];
  v4 = a1[8];
  while (v3 != v4)
  {
    if (*v3)
    {
      operator delete(*v3);
    }

    ++v3;
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  return ecs2::sparse_set<ecs2::Entity,64ul>::~sparse_set(a1);
}

void ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(void *a1)
{
  ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);

  JUMPOUT(0x1B8C62190);
}

void *ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>>::~signal_mixin(void *a1)
{
  *a1 = &unk_1F2A4F240;
  ecs2::signal_mixin<ecs2::storage<ecs2::Entity,md::ls::BaseMapTileHandle,64ul>>::{unnamed type#1}::~signal_mixin((a1 + 13));

  return ecs2::storage<ecs2::Entity,md::ls::UniqueRenderArrayID,64ul>::~storage(a1);
}

__n128 std::__function::__func<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0,std::allocator<md::ita::CheckIfRenderableIsUnique::operator()(ecs2::Query<md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&>)::$_0>,void ()(md::ls::UniqueRenderArrayID const&,md::ls::SharedUniqueID const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35090;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorTileClipping::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ClippingConstantDataHandle const&,md::ls::SharedUniqueID const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A351B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorColorCorrection::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorCorrectionDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A351F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorRoutelineMask::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::StyleRouteLineMaskDataKeyHandle const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A35240;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0,std::allocator<md::ita::PrepareFunctionConstantDescriptorBlendedWater::operator()(ecs2::Query<md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&>)::$_0>,void ()(md::ls::FunctionConstants &,md::ls::ColorRampDataHandle const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35288;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::Gradient2Texture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient2Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

__n128 std::__function::__func<ecs2::AddComponent::AddComponent<md::ls::TextureHandleForType<DaVinci::Gradient1Texture>>(ecs2::Entity,md::ls::TextureHandleForType<DaVinci::Gradient1Texture> &&)::{lambda(ecs2::BasicRegistry<void> &)#1},std::allocator<ecs2::BasicRegistry<void> &>,void ()(ecs2::BasicRegistry<void>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A35500;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void *std::unique_ptr<geo::Cache<unsigned char,PolylineWithElevation,std::hash<unsigned char>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (v2[8])
    {
      v3 = v2[7];
      v4 = *(v2[6] + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      v2[8] = 0;
      if (v3 != v2 + 6)
      {
        do
        {
          v6 = v3[1];
          std::__function::__alloc_func<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0,std::allocator<md::DrapingLogic::drapeStrokeMesh(ggl::Loader *,md::FoundationMesh const&,geo::QuadTile,ggl::PolylineOverlayRibbon::BaseMesh const&,geo::QuadTile,md::EdgeScales,gdc::Statistics *)::$_0>,void ()(ggl::ResourceAccessor *)>::destroy[abi:nn200100]((v3 + 2));
          operator delete(v3);
          v3 = v6;
        }

        while (v6 != v2 + 6);
      }
    }

    v7 = v2[3];
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = v2[1];
    v2[1] = 0;
    if (v9)
    {
      operator delete(v9);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B3129F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, os_unfair_lock_s *a13)
{
  operator delete(v13);
  v16 = v14;
  if ((a11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
    v16 = a10;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  os_unfair_lock_unlock(a13 + 18);
  if (a9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a9);
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  _Unwind_Resume(a1);
}

void std::vector<geo::Mercator2<double>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v10);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    bzero(a1[1], 16 * v6);
    v11 = v4 + 16 * v6;
  }

  a1[1] = v11;
}

uint64_t geo::dpSimplify<geo::Mercator2<double>>(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, double a6)
{
  v10 = result;
  v11 = a6 * a6;
  __asm { FMOV            V0.2D, #1.0 }

  v34 = _Q0;
  while (1)
  {
    v17 = a2 + 1;
    if (a2 + 1 >= a3)
    {
      break;
    }

    v18 = 0;
    v19 = *(v10 + 16 * a2);
    v20 = vsubq_f64(*(v10 + 16 * a3), v19);
    v21 = vmulq_f64(v20, v20);
    v22 = vaddq_f64(vdupq_laneq_s64(v21, 1), v21);
    v23 = vaddvq_f64(v21);
    v24 = vdivq_f64(v34, v22);
    v25 = 0.0;
    do
    {
      v26 = *(v10 + 16 * v17);
      v27 = 0.0;
      if (v23 > 1.0e-15)
      {
        v28 = vmulq_f64(vsubq_f64(v26, v19), v20);
        v27 = fmin(fmax(vmulq_f64(vaddq_f64(vdupq_laneq_s64(v28, 1), v28), v24).f64[0], 0.0), 1.0);
      }

      v29 = vsubq_f64(v26, vmlaq_n_f64(v19, v20, v27));
      v30 = vaddvq_f64(vmulq_f64(v29, v29));
      if (v30 > v25)
      {
        v18 = v17;
      }

      v25 = fmax(v30, v25);
      ++v17;
    }

    while (a3 != v17);
    if (v25 <= v11)
    {
      break;
    }

    result = geo::dpSimplify<geo::Mercator2<double>>(v10, a2, v18, a4, a5, a6);
    v31 = (v10 + 16 * v18);
    v32 = (*a5)++;
    v33 = (a4 + 16 * v32);
    *v33 = *v31;
    v33[1] = v31[1];
    a2 = v18;
  }

  return result;
}

void geo::dpSimplify<geo::Mercator2<double>>(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8)
{
  while (1)
  {
    v8 = a8;
    v9 = *(a2 + 8 * a3);
    v31 = *(a1 + 16 * a3);
    v32 = v9;
    v10 = *(a2 + 8 * a4);
    v29 = *(a1 + 16 * a4);
    v30 = v10;
    v11 = a3 + 1;
    if (a3 + 1 >= a4)
    {
      break;
    }

    v12 = a7;
    v13 = a6;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = a2;
    v18 = a1;
    v19 = 0;
    v20 = 0.0;
    do
    {
      v21 = *(v17 + 8 * v11);
      v27 = *(v18 + 16 * v11);
      v28 = v21;
      v22 = gm::Matrix<double,3,1>::distanceSquaredToLineSegment<int,void>(&v27, &v31, &v29, &v33);
      if (v22 > v20)
      {
        v19 = v11;
      }

      v20 = fmax(v22, v20);
      ++v11;
    }

    while (v15 != v11);
    if (v20 <= v8 * v8)
    {
      break;
    }

    geo::dpSimplify<geo::Mercator2<double>>(v18, v17, v16, v19, v14, v13, v12, v8);
    v23 = (v18 + 16 * v19);
    v24 = *v12;
    v25 = (v14 + 16 * *v12);
    *v25 = *v23;
    v25[1] = v23[1];
    v26 = *(v17 + 8 * v19);
    *v12 = v24 + 1;
    *(v13 + 8 * v24) = v26;
    a1 = v18;
    a2 = v17;
    a8 = v8;
    a3 = v19;
    a4 = v15;
    a5 = v14;
    a6 = v13;
    a7 = v12;
  }
}

void std::__shared_ptr_emplace<std::vector<double>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35858;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<std::vector<geo::Mercator2<double>>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<geo::Mercator2<double>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void sub_1B312AAEC(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AC0C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AD3C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AE2C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312AF1C(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312B064(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312B2C8(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void _colorFromCGColor(CGColor *a1, double a2, CGColor *a3)
{
  if (a3 && (v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]), CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v5, kCGRenderingIntentDefault, a3, 0), CFRelease(v5), CopyByMatchingToColorSpace))
  {
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(*Components), Components[1]);

    CGColorRelease(CopyByMatchingToColorSpace);
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
  }
}

void sub_1B312B88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16)
{
  os_unfair_lock_unlock(v17 + 49);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B312B9C0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = VKVectorOverlayPolylineGroup;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B312BCE8(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312C068(_Unwind_Exception *a1)
{
  v4 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_1B312C250(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VKVectorOverlayCircle;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1B312C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, ...)
{
  va_start(va, a29);
  ggl::BufferMemory::~BufferMemory(&a22);
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a29);
  }

  ggl::BufferMemory::~BufferMemory(va);
  v32 = *(v30 - 144);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
  }

  v33 = 184;
  while (1)
  {
    v34 = *(&v29->__vftable + v33);
    *(&v29->__vftable + v33) = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v33 -= 8;
    if (v33 == 152)
    {
      while (1)
      {
        v35 = *(&v29->__vftable + v33);
        *(&v29->__vftable + v33) = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        v33 -= 8;
        if (v33 == 120)
        {
          while (1)
          {
            v36 = *(&v29->__vftable + v33);
            if (v36)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v36);
            }

            v33 -= 16;
            if (v33 == 88)
            {
              shared_weak_owners = v29[3].__shared_weak_owners_;
              v29[3].__shared_weak_owners_ = 0;
              if (shared_weak_owners)
              {
                (*(*shared_weak_owners + 8))(shared_weak_owners);
              }

              v38 = v29[2].__shared_weak_owners_;
              if (v38)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v38);
              }

              std::__shared_weak_count::~__shared_weak_count(v29);
              operator delete(v39);

              _Unwind_Resume(a1);
            }
          }
        }
      }
    }
  }
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable>::__on_zero_shared(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 184;
  do
  {
    v4 = *(v3 + v2);
    *(v3 + v2) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v2 -= 8;
  }

  while (v2 != -32);
  v5 = 0;
  v6 = a1 + 152;
  do
  {
    v7 = *(v6 + v5);
    *(v6 + v5) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v5 -= 8;
  }

  while (v5 != -32);
  for (i = 0; i != -32; i -= 16)
  {
    v9 = *(a1 + 120 + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  v10 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A358C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::CircleOverlayRenderable::Style>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A35890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void *std::unique_ptr<geo::Cache<unsigned char,std::shared_ptr<geo::Polygon2<double>>,std::hash<unsigned char>,geo::LRUPolicy>>::reset[abi:nn200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (v2[8])
    {
      v3 = v2[7];
      v4 = *(v2[6] + 8);
      v5 = *v3;
      *(v5 + 8) = v4;
      *v4 = v5;
      v2[8] = 0;
      if (v3 != v2 + 6)
      {
        do
        {
          v6 = v3[1];
          v7 = v3[4];
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          operator delete(v3);
          v3 = v6;
        }

        while (v6 != v2 + 6);
      }
    }

    v8 = v2[3];
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }

    v10 = v2[1];
    v2[1] = 0;
    if (v10)
    {
      operator delete(v10);
    }

    JUMPOUT(0x1B8C62190);
  }

  return result;
}

void sub_1B312D8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_unfair_lock_s *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *__p)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  if (__p)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(a11 + 10);
  _Unwind_Resume(a1);
}

void geo::Cache<unsigned char,std::shared_ptr<geo::Polygon2<double>>,std::hash<unsigned char>,geo::LRUPolicy>::insert(uint64_t a1, unsigned __int8 *a2, uint64_t a3, std::__shared_weak_count *a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit(&a4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = std::__hash_table<std::__hash_value_type<gms::PropertyKey,BOOL>,std::__unordered_map_hasher<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::hash<gms::PropertyKey>,std::equal_to<gms::PropertyKey>,true>,std::__unordered_map_equal<gms::PropertyKey,std::__hash_value_type<gms::PropertyKey,BOOL>,std::equal_to<gms::PropertyKey>,std::hash<gms::PropertyKey>,true>,std::allocator<std::__hash_value_type<gms::PropertyKey,BOOL>>>::find<gms::PropertyKey>((a1 + 8), *a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[3];
    v9 = *v7;
    v8 = v7[1];
    v9[1] = v8;
    *v8 = v9;
    --*(a1 + 64);
    v10 = v7[4];
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    operator delete(v7);
    std::__hash_table<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::__unordered_map_hasher<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,geo::QuadTileHash,std::equal_to<geo::QuadTile>,true>,std::__unordered_map_equal<geo::QuadTile,std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>,std::equal_to<geo::QuadTile>,geo::QuadTileHash,true>,std::allocator<std::__hash_value_type<geo::QuadTile,std::__list_iterator<std::pair<geo::QuadTile,md::TerrainTileMesh>,void *>>>>::erase((a1 + 8), v6);
  }

  operator new();
}

void sub_1B312DEA8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(uint64_t *result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
LABEL_1:
  v10 = a2 - 3;
  v215 = a2 - 2;
  v11 = result;
  while (1)
  {
    result = v11;
    v12 = a2 - v11;
    v13 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:

          std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 3, a2 - 3, a3);
          return;
        case 4:

          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, (v11 + 3), v11 + 6, a2 - 3, a3);
          return;
        case 5:

          std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v11, v11 + 3, (v11 + 6), v11 + 9, a2 - 3, a3);
          return;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v94 = *(a2 - 3);
        if (*(a2 - 8) == *(v11 + 16))
        {
          v95 = *v11;
LABEL_184:
          v96 = **a3;
          v97 = (v96 + 16 * v94);
          v98 = (v96 + 16 * v95);
          if (*v97 >= *v98 && (*v97 != *v98 || v97[1] >= v98[1]))
          {
            return;
          }
        }

        else
        {
          v95 = *v11;
          if (v94 != v11[1] || *v215 != v95)
          {
            goto LABEL_184;
          }

          if (!*(a2 - 8))
          {
            return;
          }
        }

        v225 = v11[2];
        v220 = *v11;
        v199 = *v10;
        *(v11 + 16) = *(a2 - 8);
        *v11 = v199;
        *(a2 - 8) = v225;
        *v10 = v220;
        return;
      }
    }

    if (v12 <= 575)
    {
      break;
    }

    if (!a4)
    {
      if (v11 == a2)
      {
        return;
      }

      v122 = (v13 - 2) >> 1;
      v123 = v122;
      while (1)
      {
        v124 = v123;
        if (v122 < v123)
        {
          goto LABEL_288;
        }

        v125 = (2 * v123) | 1;
        v126 = &v11[3 * v125];
        if (2 * v124 + 2 < v13)
        {
          v127 = *v126;
          if (*(v126 + 16) == *(v126 + 40))
          {
            v128 = v126[3];
          }

          else
          {
            v128 = v126[3];
            if (v127 == v126[4] && v126[1] == v128)
            {
              if (!*(v126 + 16))
              {
                goto LABEL_250;
              }

LABEL_249:
              v126 += 3;
              v125 = 2 * v124 + 2;
              goto LABEL_250;
            }
          }

          v130 = **a3;
          v131 = (v130 + 16 * v127);
          v132 = (v130 + 16 * v128);
          if (*v131 < *v132 || *v131 == *v132 && v131[1] < v132[1])
          {
            goto LABEL_249;
          }
        }

LABEL_250:
        v133 = &v11[3 * v124];
        v134 = *(v126 + 16);
        v135 = *(v133 + 16);
        v136 = *v126;
        if (v134 == v135)
        {
          v137 = *v133;
LABEL_256:
          v139 = **a3;
          v140 = (v139 + 16 * v136);
          v141 = (v139 + 16 * v137);
          if (*v140 < *v141 || *v140 == *v141 && v140[1] < v141[1])
          {
            goto LABEL_288;
          }

          goto LABEL_261;
        }

        v137 = *v133;
        if (v136 != v133[1] || v126[1] != v137)
        {
          goto LABEL_256;
        }

        if (v134)
        {
          goto LABEL_288;
        }

LABEL_261:
        v142 = v133[1];
        do
        {
          while (1)
          {
            v143 = *v126;
            *(v133 + 16) = *(v126 + 16);
            *v133 = v143;
            if (v122 < v125)
            {
              goto LABEL_287;
            }

            v133 = v126;
            v144 = 2 * v125;
            v125 = (2 * v125) | 1;
            v126 = &v11[3 * v125];
            v145 = v144 + 2;
            if (v145 < v13)
            {
              v146 = *v126;
              if (*(v126 + 16) == *(v126 + 40))
              {
                v147 = v126[3];
LABEL_270:
                v149 = **a3;
                v150 = (v149 + 16 * v146);
                v151 = (v149 + 16 * v147);
                if (*v150 >= *v151 && (*v150 != *v151 || v150[1] >= v151[1]))
                {
                  goto LABEL_276;
                }

LABEL_275:
                v126 += 3;
                v125 = v145;
                goto LABEL_276;
              }

              v147 = v126[3];
              if (v146 != v126[4] || v126[1] != v147)
              {
                goto LABEL_270;
              }

              if (*(v126 + 16))
              {
                goto LABEL_275;
              }
            }

LABEL_276:
            v152 = *(v126 + 16);
            v153 = *v126;
            if (v152 == v135)
            {
              break;
            }

            if (v153 != v142 || v126[1] != v137)
            {
              break;
            }

            if (v152)
            {
              goto LABEL_286;
            }
          }

          v155 = **a3;
          v156 = (v155 + 16 * v153);
          v157 = (v155 + 16 * v137);
        }

        while (*v156 >= *v157 && (*v156 != *v157 || v156[1] >= v157[1]));
LABEL_286:
        v126 = v133;
LABEL_287:
        *v126 = v137;
        v126[1] = v142;
        *(v126 + 16) = v135;
LABEL_288:
        v123 = v124 - 1;
        if (!v124)
        {
          v158 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
          while (1)
          {
            v159 = 0;
            v224 = v11[2];
            v219 = *v11;
            v160 = v11;
            do
            {
              v161 = v160;
              v162 = &v160[3 * v159];
              v160 = v162 + 3;
              v163 = 2 * v159;
              v159 = (2 * v159) | 1;
              v164 = v163 + 2;
              if (v164 >= v158)
              {
                goto LABEL_304;
              }

              v165 = v162 + 6;
              v166 = *(v162 + 40);
              v167 = v162[3];
              if (v166 == *(v162 + 64))
              {
                v168 = *v165;
              }

              else
              {
                v168 = v162[6];
                v169 = v162[7];
                v170 = v162[4];
                if (v167 == v169 && v170 == v168)
                {
                  if (!v166)
                  {
                    goto LABEL_304;
                  }

LABEL_303:
                  v160 = v165;
                  v159 = v164;
                  goto LABEL_304;
                }
              }

              v172 = **a3;
              v173 = (v172 + 16 * v167);
              v174 = (v172 + 16 * v168);
              if (*v173 < *v174 || *v173 == *v174 && v173[1] < v174[1])
              {
                goto LABEL_303;
              }

LABEL_304:
              v175 = *v160;
              *(v161 + 16) = *(v160 + 16);
              *v161 = v175;
            }

            while (v159 <= (v158 - 2) / 2);
            a2 -= 3;
            if (v160 == a2)
            {
              *(v160 + 16) = v224;
              *v160 = v219;
              goto LABEL_334;
            }

            v176 = *a2;
            *(v160 + 16) = *(a2 + 16);
            *v160 = v176;
            *(a2 + 16) = v224;
            *a2 = v219;
            v177 = v160 - v11 + 24;
            if (v177 < 25)
            {
              goto LABEL_334;
            }

            v178 = 0xAAAAAAAAAAAAAAABLL * (v177 >> 3) - 2;
            v179 = v178 >> 1;
            v180 = &v11[3 * (v178 >> 1)];
            v181 = *(v160 + 16);
            v182 = *v180;
            if (*(v180 + 16) == v181)
            {
              v183 = *v160;
LABEL_314:
              v185 = **a3;
              v186 = (v185 + 16 * v182);
              v187 = (v185 + 16 * v183);
              if (*v186 >= *v187 && (*v186 != *v187 || v186[1] >= v187[1]))
              {
                goto LABEL_334;
              }
            }

            else
            {
              v183 = *v160;
              if (v182 != v160[1] || v180[1] != v183)
              {
                goto LABEL_314;
              }

              if (!*(v180 + 16))
              {
                goto LABEL_334;
              }
            }

            v188 = v160[1];
            v189 = *v180;
            *(v160 + 16) = *(v180 + 16);
            *v160 = v189;
            if (v178 < 2)
            {
              goto LABEL_333;
            }

            while (2)
            {
              v190 = v180;
              v191 = v179 - 1;
              v179 = (v179 - 1) >> 1;
              v180 = &v11[3 * v179];
              v192 = *v180;
              if (*(v180 + 16) != v181 && v192 == v188 && v180[1] == v183)
              {
                if (!*(v180 + 16))
                {
                  goto LABEL_332;
                }

LABEL_330:
                v197 = *v180;
                *(v190 + 16) = *(v180 + 16);
                *v190 = v197;
                if (v191 <= 1)
                {
                  goto LABEL_333;
                }

                continue;
              }

              break;
            }

            v194 = **a3;
            v195 = (v194 + 16 * v192);
            v196 = (v194 + 16 * v183);
            if (*v195 < *v196 || *v195 == *v196 && v195[1] < v196[1])
            {
              goto LABEL_330;
            }

LABEL_332:
            v180 = v190;
LABEL_333:
            *v180 = v183;
            v180[1] = v188;
            *(v180 + 16) = v181;
LABEL_334:
            if (v158-- <= 2)
            {
              return;
            }
          }
        }
      }
    }

    v14 = v13 >> 1;
    v15 = &v11[3 * (v13 >> 1)];
    if (v12 < 0xC01)
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(&result[3 * v14], result, a2 - 3, a3);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(result, &result[3 * v14], a2 - 3, a3);
      v16 = 3 * v14;
      v17 = &result[3 * v14 - 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(result + 3, v17, a2 - 6, a3);
      v18 = &result[v16 + 3];
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(result + 6, v18, a2 - 9, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,0>(v17, v15, v18, a3);
      v221 = result[2];
      v216 = *result;
      v19 = *(v15 + 16);
      *result = *v15;
      *(result + 16) = v19;
      *(v15 + 16) = v221;
      *v15 = v216;
    }

    --a4;
    if (a5)
    {
      v20 = *result;
      v21 = *(result + 16);
LABEL_21:
      v27 = result[1];
      v28 = *a3;
      for (i = (result + 3); ; i += 24)
      {
        v30 = *i;
        if (*(i + 16) == v21)
        {
          break;
        }

        if (v30 != v27 || *(i + 8) != v20)
        {
          break;
        }

        if (!*(i + 16))
        {
          goto LABEL_33;
        }

LABEL_32:
        ;
      }

      v32 = (*v28 + 16 * v30);
      v33 = (*v28 + 16 * v20);
      if (*v32 < *v33 || *v32 == *v33 && v32[1] < v33[1])
      {
        goto LABEL_32;
      }

LABEL_33:
      j = (a2 - 3);
      if ((i - 24) != result)
      {
        while (1)
        {
          v35 = *(j + 16);
          v36 = *j;
          if (v35 != v21 && (v36 == v27 ? (v37 = *(j + 8) == v20) : (v37 = 0), v37))
          {
            if (v35)
            {
              goto LABEL_65;
            }
          }

          else
          {
            v38 = (*v28 + 16 * v36);
            v39 = (*v28 + 16 * v20);
            if (*v38 < *v39 || *v38 == *v39 && v38[1] < v39[1])
            {
              goto LABEL_65;
            }
          }

          j -= 24;
        }
      }

      j = a2;
      if (i < a2)
      {
        for (j = (a2 - 3); ; j -= 24)
        {
          v40 = *(j + 16);
          v41 = *j;
          if (v40 != v21 && (v41 == v27 ? (v42 = *(j + 8) == v20) : (v42 = 0), v42))
          {
            if (i >= j || (v40 & 1) != 0)
            {
              break;
            }
          }

          else
          {
            v43 = (*v28 + 16 * v41);
            v44 = (*v28 + 16 * v20);
            if (*v43 < *v44)
            {
              break;
            }

            if (*v43 == *v44)
            {
              if (v43[1] < v44[1] || i >= j)
              {
                break;
              }
            }

            else if (i >= j)
            {
              break;
            }
          }
        }
      }

LABEL_65:
      v11 = i;
      if (i < j)
      {
        v11 = i;
        v46 = j;
        do
        {
          v222 = v11[2];
          v217 = *v11;
          v47 = *v46;
          *(v11 + 16) = *(v46 + 16);
          *v11 = v47;
          *(v46 + 16) = v222;
          *v46 = v217;
          v48 = *a3;
          do
          {
            while (1)
            {
              v11 += 3;
              v49 = *v11;
              if (*(v11 + 16) != v21 && v49 == v27 && v11[1] == v20)
              {
                break;
              }

              v51 = (*v48 + 16 * v49);
              v52 = (*v48 + 16 * v20);
              if (*v51 >= *v52 && (*v51 != *v52 || v51[1] >= v52[1]))
              {
                goto LABEL_80;
              }
            }
          }

          while (*(v11 + 16));
          do
          {
LABEL_80:
            while (1)
            {
              v46 -= 24;
              v53 = *(v46 + 16);
              v54 = *v46;
              if (v53 == v21)
              {
                break;
              }

              if (v54 != v27 || *(v46 + 8) != v20)
              {
                break;
              }

              if (v53)
              {
                goto LABEL_88;
              }
            }

            v56 = (*v48 + 16 * v54);
            v57 = (*v48 + 16 * v20);
          }

          while (*v56 >= *v57 && (*v56 != *v57 || v56[1] >= v57[1]));
LABEL_88:
          ;
        }

        while (v11 < v46);
      }

      if (v11 - 3 != result)
      {
        v58 = *(v11 - 3);
        *(result + 16) = *(v11 - 8);
        *result = v58;
      }

      *(v11 - 3) = v20;
      *(v11 - 2) = v27;
      *(v11 - 8) = v21;
      if (i < j)
      {
LABEL_94:
        std::__introsort<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*,false>(result, (v11 - 3), a3, a4, a5 & 1);
        a5 = 0;
      }

      else
      {
        v59 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(result, (v11 - 3), a3);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::{lambda(BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo const&)#1} &,BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo*>(v11, a2, a3))
        {
          a2 = v11 - 3;
          if (v59)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v59)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      v22 = *(result - 8);
      v21 = *(result + 16);
      v23 = *(result - 3);
      if (v22 == v21)
      {
        v20 = *result;
LABEL_18:
        v24 = **a3;
        v25 = (v24 + 16 * v23);
        v26 = (v24 + 16 * v20);
        if (*v25 < *v26 || *v25 == *v26 && v25[1] < v26[1])
        {
          goto LABEL_21;
        }

        goto LABEL_98;
      }

      v20 = *result;
      if (v23 != result[1] || *(result - 2) != v20)
      {
        goto LABEL_18;
      }

      if (v22)
      {
        goto LABEL_21;
      }

LABEL_98:
      v60 = result[1];
      v61 = *(a2 - 8);
      if (v21 == v61)
      {
        v62 = *v10;
      }

      else
      {
        v62 = *v10;
        if (v20 == *v215 && v60 == v62)
        {
          if (*(result + 16))
          {
            v63 = *a3;
LABEL_108:
            v11 = result + 3;
            while (2)
            {
              if (v21 == *(v11 + 16))
              {
                v67 = *v11;
LABEL_115:
                v69 = (*v63 + 16 * v20);
                v70 = (*v63 + 16 * v67);
                if (*v69 < *v70 || *v69 == *v70 && v69[1] < v70[1])
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v67 = *v11;
                if (v20 != v11[1] || v60 != v67)
                {
                  goto LABEL_115;
                }

                if (v21)
                {
                  goto LABEL_135;
                }
              }

              v11 += 3;
              continue;
            }
          }

          goto LABEL_121;
        }
      }

      v63 = *a3;
      v64 = **a3;
      v65 = (v64 + 16 * v20);
      v66 = (v64 + 16 * v62);
      if (*v65 < *v66 || *v65 == *v66 && v65[1] < v66[1])
      {
        goto LABEL_108;
      }

LABEL_121:
      v11 = result + 3;
      if (result + 3 < a2)
      {
        v71 = *a3;
        do
        {
          if (v21 == *(v11 + 16))
          {
            v72 = *v11;
          }

          else
          {
            v72 = *v11;
            if (v20 == v11[1] && v60 == v72)
            {
              if (v21)
              {
                break;
              }

              goto LABEL_134;
            }
          }

          v74 = (*v71 + 16 * v20);
          v75 = (*v71 + 16 * v72);
          if (*v74 < *v75 || *v74 == *v75 && v74[1] < v75[1])
          {
            break;
          }

LABEL_134:
          v11 += 3;
        }

        while (v11 < a2);
      }

LABEL_135:
      v76 = a2;
      if (v11 >= a2)
      {
        goto LABEL_173;
      }

      v77 = *a3;
      v78 = a2 - 2;
      while (v21 != v61)
      {
        v79 = *(v78 - 1);
        if (v20 != *v78 || v60 != v79)
        {
          goto LABEL_143;
        }

        if (!*(result + 16))
        {
          goto LABEL_149;
        }

LABEL_148:
        LOBYTE(v61) = *(v78 - 16);
        v78 -= 3;
      }

      v79 = *(v78 - 1);
LABEL_143:
      v81 = (*v77 + 16 * v20);
      v82 = (*v77 + 16 * v79);
      if (*v81 < *v82 || *v81 == *v82 && v81[1] < v82[1])
      {
        goto LABEL_148;
      }

LABEL_149:
      v76 = (v78 - 1);
LABEL_173:
      if (v11 < v76)
      {
        v223 = v11[2];
        v218 = *v11;
        v83 = *v76;
        *(v11 + 16) = *(v76 + 16);
        *v11 = v83;
        *(v76 + 16) = v223;
        *v76 = v218;
        v84 = *a3;
        while (1)
        {
          v11 += 3;
          if (v21 == *(v11 + 16))
          {
            v85 = *v11;
LABEL_157:
            v87 = (*v84 + 16 * v20);
            v88 = (*v84 + 16 * v85);
            if (*v87 < *v88 || *v87 == *v88 && v87[1] < v88[1])
            {
              while (1)
              {
LABEL_164:
                v76 -= 24;
                if (v21 == *(v76 + 16))
                {
                  v89 = *v76;
LABEL_170:
                  v91 = (*v84 + 16 * v20);
                  v92 = (*v84 + 16 * v89);
                  if (*v91 >= *v92 && (*v91 != *v92 || v91[1] >= v92[1]))
                  {
                    goto LABEL_173;
                  }
                }

                else
                {
                  v89 = *v76;
                  if (v20 != *(v76 + 8) || v60 != v89)
                  {
                    goto LABEL_170;
                  }

                  if (!v21)
                  {
                    goto LABEL_173;
                  }
                }
              }
            }
          }

          else
          {
            v85 = *v11;
            if (v20 != v11[1] || v60 != v85)
            {
              goto LABEL_157;
            }

            if (v21)
            {
              goto LABEL_164;
            }
          }
        }
      }

      if (v11 - 3 != result)
      {
        v93 = *(v11 - 3);
        *(result + 16) = *(v11 - 8);
        *result = v93;
      }

      a5 = 0;
      *(v11 - 3) = v20;
      *(v11 - 2) = v60;
      *(v11 - 8) = v21;
    }
  }

  v99 = v11 + 3;
  v101 = v11 == a2 || v99 == a2;
  if ((a5 & 1) == 0)
  {
    if (v101)
    {
      return;
    }

    while (1)
    {
      v200 = result;
      result = v99;
      v201 = *(v200 + 40);
      v202 = v200[3];
      if (v201 == *(v200 + 16))
      {
        break;
      }

      v203 = *v200;
      if (v202 != v200[1] || v200[4] != v203)
      {
        goto LABEL_348;
      }

      if (*(v200 + 40))
      {
        goto LABEL_353;
      }

LABEL_366:
      v99 = result + 3;
      if (result + 3 == a2)
      {
        return;
      }
    }

    v203 = *v200;
LABEL_348:
    v205 = **a3;
    v206 = (v205 + 16 * v202);
    v207 = (v205 + 16 * v203);
    if (*v206 >= *v207 && (*v206 != *v207 || v206[1] >= v207[1]))
    {
      goto LABEL_366;
    }

LABEL_353:
    v208 = v200[4];
    while (1)
    {
      v209 = v200;
      *(v200 + 3) = *v200;
      *(v200 + 40) = *(v200 + 16);
      v200 -= 3;
      if (v201 == *(v209 - 8))
      {
        v210 = *v200;
LABEL_360:
        v212 = **a3;
        v213 = (v212 + 16 * v202);
        v214 = (v212 + 16 * v210);
        if (*v213 >= *v214 && (*v213 != *v214 || v213[1] >= v214[1]))
        {
LABEL_365:
          *v209 = v202;
          v209[1] = v208;
          *(v209 + 16) = v201;
          goto LABEL_366;
        }
      }

      else
      {
        v210 = *(v209 - 3);
        if (v202 != *(v209 - 2) || v208 != v210)
        {
          goto LABEL_360;
        }

        if ((v201 & 1) == 0)
        {
          goto LABEL_365;
        }
      }
    }
  }

  if (v101)
  {
    return;
  }

  v102 = 0;
  v103 = v11;
  while (2)
  {
    v104 = v103;
    v103 = v99;
    v105 = *(v104 + 40);
    v106 = v104[3];
    if (v105 == *(v104 + 16))
    {
      v107 = *v104;
LABEL_209:
      v109 = **a3;
      v110 = (v109 + 16 * v106);
      v111 = (v109 + 16 * v107);
      if (*v110 >= *v111 && (*v110 != *v111 || v110[1] >= v111[1]))
      {
        goto LABEL_232;
      }
    }

    else
    {
      v107 = *v104;
      if (v106 != v104[1] || v104[4] != v107)
      {
        goto LABEL_209;
      }

      if (!*(v104 + 40))
      {
        goto LABEL_232;
      }
    }

    v112 = v104[4];
    *v103 = *v104;
    *(v103 + 16) = *(v104 + 16);
    v113 = v11;
    if (v104 == v11)
    {
      goto LABEL_231;
    }

    v114 = v102;
    while (2)
    {
      v115 = v11 + v114;
      v116 = (v11 + v114 - 24);
      if (v105 == *(v11 + v114 - 8))
      {
        v117 = *v116;
LABEL_222:
        v119 = **a3;
        v120 = (v119 + 16 * v106);
        v121 = (v119 + 16 * v117);
        if (*v120 >= *v121 && (*v120 != *v121 || v120[1] >= v121[1]))
        {
          v113 = v104;
          goto LABEL_231;
        }

        goto LABEL_227;
      }

      v117 = *v116;
      if (v106 != *(v115 - 2) || v112 != v117)
      {
        goto LABEL_222;
      }

      if (v105)
      {
LABEL_227:
        v104 -= 3;
        *v115 = *v116;
        v115[16] = *(v11 + v114 - 8);
        v114 -= 24;
        if (!v114)
        {
          v113 = v11;
          goto LABEL_231;
        }

        continue;
      }

      break;
    }

    v113 = (v11 + v114);
LABEL_231:
    *v113 = v106;
    v113[1] = v112;
    *(v113 + 16) = v105;
LABEL_232:
    v99 = v103 + 3;
    v102 += 24;
    if (v103 + 3 != a2)
    {
      continue;
    }

    break;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<BOOL geo::Intersect::isSelfIntersecting<double>(std::vector<gm::Matrix<double,2,1>> const&,BOOL)::EventInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL gm::LineSegment<double,2>::intersects<double,void>(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3)
{
  v4 = 0.0;
  v5 = 0.0;
  result = gm::LineSegment<double,2>::intersect<double,void>(a1, a2, &v5, &v4, a3);
  if (result)
  {
    return v5 >= 0.0 && v5 <= 1.0 && v4 >= 0.0 && v4 <= 1.0;
  }

  return result;
}

BOOL geo::Intersect::SHSegmentComparator<double>::operator()(float64x2_t *a1, float64x2_t *a2)
{
  if (*&a1->f64[0] == *&a2->f64[0] && *&a1->f64[1] == *&a2->f64[1])
  {
    v3 = *a1;
    v5 = vaddq_f64(a1[1], *a1);
    v4 = *a2;
    v6 = vaddq_f64(a2[1], *a2);
    if (*&v5.f64[0] == *&v6.f64[0] && *&v5.f64[1] == *&v6.f64[1])
    {
      return 0;
    }
  }

  else
  {
    v3.f64[0] = a1->f64[0];
    v4.f64[0] = a2->f64[0];
  }

  if (v3.f64[0] > v4.f64[0])
  {
    v8 = a2[1].f64[0];
    v9 = a2[1].f64[1];
    v10 = a1->f64[1] - a2->f64[1];
    v11 = v3.f64[0] - v4.f64[0];
    v12 = -(v9 * v11 - v10 * v8);
    v13 = v12 < 0.0;
    if (v12 == 0.0)
    {
      return (v10 + a1[1].f64[1]) * v8 <= (v11 + a1[1].f64[0]) * v9;
    }

    return v13;
  }

  v16 = a1->f64[1];
  v15 = a1[1].f64[0];
  v17 = a1[1].f64[1];
  v18 = a2->f64[1];
  v19 = v4.f64[0] - v3.f64[0];
  v20 = -(v17 * v19 - (v18 - v16) * v15);
  v21 = v20 <= 0.0;
  if (v20 == 0.0)
  {
    if (v3.f64[0] == v15 + v3.f64[0])
    {
      return v16 < v18;
    }

    v21 = (v18 - v16 + a2[1].f64[1]) * v15 <= (v19 + a2[1].f64[0]) * v17;
  }

  return !v21;
}