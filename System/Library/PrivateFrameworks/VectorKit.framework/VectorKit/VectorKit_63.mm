void gms::MaterialManager<ggl::Texture2D>::rawMaterialForIDAndAttributes(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<gms::MaterialSheet<ggl::Texture2D>>>>>::find<unsigned long long>((a2 + 16), a3);
  if (!v9)
  {
    v10 = 0;
LABEL_19:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_20;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 256;
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::copy(v18, a5);
    v12 = *(a4 + 12);
    if (*(a4 + 12))
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = *(a4 + 12);
      do
      {
        if (v15 < v16 && (v13 & 1) == 0)
        {
          v14 = (*a4 + 4 * v15);
          v5 = (*a4 + *(a4 + 8) + 2 * v15);
          v13 = 1;
        }

        v17 = *v5;
        *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v18, *v14) = v17;
        v16 = *(a4 + 12);
        if (v15 + 1 < v16)
        {
          ++v15;
        }

        else
        {
          v15 = *(a4 + 12);
        }

        if (v13)
        {
          v13 = 0;
        }
      }

      while (v15 != v12);
    }

    gms::MaterialSheet<ggl::Texture2D>::matchAttributes(a1, v11, v18);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v18);
  }

  else
  {
    gms::MaterialSheet<ggl::Texture2D>::matchAttributes(a1, v11, a5);
  }

LABEL_20:
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

void sub_1B2BE77FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t gms::LinearResolver::matchAttributes(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v25 = *(a1 + 16);
  if (v25 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2;
  v22 = 0;
  v7 = 0;
  v8 = *(a2 + 12);
  v28 = *a2 + *(a2 + 8);
  v9 = 0xFFFFFFFFLL;
  v10 = *(a1 + 8);
  v23 = v10;
  do
  {
    result = (v10 - v5) >> 5;
    v4 &= 0xFFFFFFFFFFFFFF00;
    v12 = *(v10 + 12);
    if (*(v10 + 12))
    {
      v26 = v9;
      v27 = v7;
      v24 = (v10 - v5) >> 5;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (v15 < v12 && (v14 & 1) == 0)
        {
          v4 = *v10 + 4 * v15;
          v2 = (*v10 + *(v10 + 8) + 2 * v15);
          v14 = 1;
        }

        v16 = v6;
        v17 = geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v6, *v4);
        if (v17 == v8)
        {
          goto LABEL_20;
        }

        if (v17 < v8)
        {
          v3 = (v28 + 2 * v17);
        }

        if (*v3 != *v2)
        {
LABEL_20:
          result = v26;
          v13 = v27;
          v6 = v16;
          v5 = v23;
          goto LABEL_31;
        }

        v13 = (v13 + 1);
        v18 = v15 + 1;
        if (v14)
        {
          v14 = 0;
        }

        if (v18 < v12)
        {
          ++v15;
        }

        else
        {
          v15 = v12;
        }

        v6 = v16;
      }

      while (v18 < v12);
      v7 = v27;
      if (v13 > v27)
      {
        v22 = *(v10 + 24);
        v5 = v23;
        result = v24;
        goto LABEL_31;
      }

      v5 = v23;
      LODWORD(result) = v24;
      v9 = v26;
    }

    else
    {
      LOBYTE(v13) = 0;
    }

    if (v13 == v7)
    {
      v19 = *(v10 + 24);
      v20 = v22;
      v21 = v19 > v22;
      if (v19 > v22)
      {
        v20 = *(v10 + 24);
      }

      v22 = v20;
      if (v21)
      {
        result = result;
      }

      else
      {
        result = v9;
      }

      v13 = v7;
    }

    else
    {
      v13 = v7;
      result = v9;
    }

LABEL_31:
    v10 += 32;
    v9 = result;
    v7 = v13;
  }

  while (v10 != v25);
  return result;
}

uint64_t gms::MaterialSheet<ggl::Texture2D>::matchAttributes(void *a1, uint64_t a2, uint64_t a3)
{
  result = (***(a2 + 16))(*(a2 + 16), a3);
  if (result == -1)
  {
    v7 = *(a2 + 80);
    *a1 = *(a2 + 72);
    a1[1] = v7;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v6 = *(*(a2 + 40) + 16 * result);
    *a1 = v6;
    v7 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return result;
    }
  }

  atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  return result;
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  memset(&v52, 0, sizeof(v52));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = v2[13];
  v5 = v2[14];
  if (v4 != v5)
  {
    while (*v4 != v3)
    {
      if (++v4 == v5)
      {
        goto LABEL_57;
      }
    }
  }

  if (v4 == v5 || (v47 = v2 + 10, v2[9] == v2 + 10))
  {
LABEL_57:
    shared_weak_owners = 0;
    shared_owners = 0;
    v45 = 0;
  }

  else
  {
    v6 = v2[9];
    do
    {
      v7 = std::__tree<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,std::__map_value_compare<geo::QuadTile,std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,md::LabelCustomFeatureProvider::TileKeyLess,true>,geo::allocator_adapter<std::__value_type<geo::QuadTile,md::LabelCustomFeatureProvider::TileInfo>,mdm::zone_mallocator>>::find<geo::QuadTile>((v6 + 13), *(a1 + 16) + 8);
      v50 = v6;
      if (v6 + 14 != v7)
      {
        if ((*(v7 + 184) & 1) == 0)
        {
          v49 = v7;
          if (v6[35])
          {
            v51 = v6[34];
            if ((*(v51 + 128) & 1) == 0)
            {
              md::LabelClusterProvider::initializeSourceAnnotations(v51);
              operator new();
            }

            v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v12 = *(v51 + 10);
            v13 = [v12 countByEnumeratingWithState:&v56 objects:v54 count:16];
            if (v13)
            {
              v14 = *v57;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v57 != v14)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v16 = *(*(&v56 + 1) + 8 * i);
                  v17 = [v16 feature];
                  v19 = [v17 pointFeature] + 192;
                  v18 = *v19;
                  if (*(v19 + 8) == *v19)
                  {
                    md::LabelPoint::NullPoint(v18);
                    v18 = &md::LabelPoint::NullPoint(void)::kNullLabelPoint;
                  }

                  v20 = md::LabelPoint::mercatorPoint(v18);
                  v21 = 0;
                  v22 = 1;
                  while (1)
                  {
                    v23 = *(v20 + 8 * v21);
                    if (v23 < *(v49 + 96 + 8 * v21) || v23 >= *(v49 + 112 + 8 * v21))
                    {
                      break;
                    }

                    v24 = v22;
                    v22 = 0;
                    v21 = 1;
                    if ((v24 & 1) == 0)
                    {

                      [(NSArray *)v11 addObject:v16];
                      goto LABEL_27;
                    }
                  }

LABEL_27:
                  ;
                }

                v13 = [v12 countByEnumeratingWithState:&v56 objects:v54 count:16];
              }

              while (v13);
            }
          }

          else
          {
            v8 = v6[5];
            v9 = v50[11];
            v10 = [v9 annotationsInMapRect:{*(v49 + 64), *(v49 + 72), *(v49 + 80), *(v49 + 88)}];
            v11 = md::LabelCustomFeatureSupport::filterAnnotations(v8, v10);
          }

          md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap((v50 + 5), v11, 0);
          md::LabelCustomFeatureProvider::removeAnnotationsFromFeatureMap(v50 + 5, *(v49 + 168), 0);
          v25 = [(NSArray *)v11 copy];
          geo::_retain_ptr<NSArray * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v49 + 160, v25);

          *(v49 + 184) = 1;
          v7 = v49;
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v26 = *(v7 + 168);
        v27 = [v26 countByEnumeratingWithState:&v56 objects:v54 count:16];
        if (v27)
        {
          v28 = *v57;
          v29 = v50 + 31;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v57 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v56 + 1) + 8 * j);
              v32 = v31;
              v33 = *v29;
              if (*v29)
              {
                v34 = v50 + 31;
                do
                {
                  v35 = v33[4];
                  v36 = v35 >= v31;
                  v37 = v35 < v31;
                  if (v36)
                  {
                    v34 = v33;
                  }

                  v33 = v33[v37];
                }

                while (v33);
                if (v34 != v29 && v31 >= v34[4])
                {
                  v39 = v34[5];
                  v38 = (v34 + 5);
                  if (v39)
                  {
                    std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v52, v38);
                    if (!*(*v38 + 128))
                    {
                      memset(&v61, 0, sizeof(v61));
                      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::push_back[abi:nn200100](&v61, v38);
                      md::LabelFeatureStyler::styleExternalFeatures(*(v50[6] + 296), &v61);
                      v60 = &v61;
                      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v60);
                    }
                  }
                }
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v56 objects:v54 count:16];
          }

          while (v27);
        }
      }

      v40 = v50;
      v41 = v50[1];
      if (v41)
      {
        do
        {
          v42 = v41;
          v41 = *v41;
        }

        while (v41);
      }

      else
      {
        do
        {
          v42 = v40[2];
          v43 = *v42 == v40;
          v40 = v42;
        }

        while (!v43);
      }

      v6 = v42;
    }

    while (v42 != v47);
    v3 = *(a1 + 16);
    v1 = v53;
    v45 = v52.__vftable;
    shared_owners = v52.__shared_owners_;
    shared_weak_owners = v52.__shared_weak_owners_;
  }

  LOBYTE(v55) = v1;
  v54[0] = v3;
  v54[1] = v45;
  v54[2] = shared_owners;
  v54[3] = shared_weak_owners;
  memset(&v52, 0, sizeof(v52));
  *(&v57 + 1) = 0;
  operator new();
}

void sub_1B2BE89C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  v51 = *(v49 - 168);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v51);
  }

  std::__function::__value_func<void ()(md::LabelManager *)>::~__value_func[abi:nn200100](va);
  *(v49 - 208) = v48;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v49 - 208));
  a26 = &a29;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a26);
  _Unwind_Resume(a1);
}

void md::LabelCustomFeatureProvider::addAnnotationsToFeatureMap(md::LabelCustomFeatureProvider *this, NSArray *a2, char a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = a2;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v3)
  {
    v32 = *v36;
    v4 = (this + 208);
    do
    {
      v33 = v3;
      for (i = 0; i != v33; ++i)
      {
        if (*v36 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v35 + 1) + 8 * i);
        v7 = v6;
        v8 = *v4;
        if (*v4)
        {
          v9 = (this + 208);
          do
          {
            v10 = *(v8 + 4);
            v11 = v10 >= v6;
            v12 = v10 < v6;
            if (v11)
            {
              v9 = v8;
            }

            v8 = *&v8[8 * v12];
          }

          while (v8);
          if (v9 != v4 && v6 >= v9[4])
          {
            v22 = v9 + 5;
            ++*(v9 + 14);
            if ((a3 & 1) == 0)
            {
              *(*v22 + 145) = 1;
              goto LABEL_45;
            }

            goto LABEL_44;
          }
        }

        v13 = [v6 feature];
        v14 = v13;
        if (v13 && (v13 = [(mdm::zone_mallocator *)v13 feature], *v13))
        {
          v15 = *(this + 6);
          [(mdm::zone_mallocator *)v14 setDataSource:v15];

          v16 = *[(mdm::zone_mallocator *)v14 feature];
          v17 = *(this + 19);
          v18 = *(this + 20);
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19 = *(v16 + 104);
          *(v16 + 96) = v17;
          *(v16 + 104) = v18;
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v19);
          }

          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
          }

          if ([(mdm::zone_mallocator *)v14 isPointFeature])
          {
            v20 = [(mdm::zone_mallocator *)v14 feature];
            v21 = *(v20 + 8);
            v39[0] = *v20;
            v39[1] = v21;
            if (v21)
            {
              atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          if (([(mdm::zone_mallocator *)v14 isLineFeature]& 1) != 0)
          {
            v23 = *([(mdm::zone_mallocator *)v14 feature]+ 8);
            if (v23)
            {
              atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
            }

            operator new();
          }
        }

        else
        {
          v24 = *v4;
          v25 = (this + 208);
          v26 = (this + 208);
          if (*v4)
          {
            while (1)
            {
              while (1)
              {
                v26 = v24;
                v27 = v24[4];
                if (v7 >= v27)
                {
                  break;
                }

                v24 = *v26;
                v25 = v26;
                if (!*v26)
                {
                  goto LABEL_40;
                }
              }

              if (v27 >= v7)
              {
                break;
              }

              v24 = v26[1];
              if (!v24)
              {
                v25 = v26 + 1;
                goto LABEL_40;
              }
            }

            v29 = v26;
          }

          else
          {
LABEL_40:
            v28 = mdm::zone_mallocator::instance(v13);
            v29 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::__value_type<objc_object  {objcproto25VKCustomFeatureAnnotation}* {__strong},md::LabelCustomFeatureProvider::FeatureInfo>,void *>>(v28);
            *(v29 + 4) = v7;
            *(v29 + 40) = 0uLL;
            *(v29 + 7) = 1;
            std::__tree<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,std::less<unsigned long>,true>,geo::allocator_adapter<std::__value_type<unsigned long,std::shared_ptr<ggl::DeviceData>>,ggl::zone_mallocator>>::__insert_node_at(this + 25, v26, v25, v29);
          }

          if (a3)
          {
            v22 = v29 + 40;
LABEL_44:
            ++v22[5];
          }
        }

LABEL_45:
      }

      v3 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v3);
  }

  if (v41 != v42 && (a3 & 1) == 0)
  {
    md::LabelFeatureStyler::styleExternalFeatures(*(*(this + 1) + 296), &v41);
  }

  v39[0] = &v41;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v39);
}

void sub_1B2BE931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t *a29)
{
  a29 = (v29 - 144);
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a29);

  _Unwind_Resume(a1);
}

void std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::destroy_deallocate(void **a1)
{
  v2 = a1 + 2;
  std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v2);

  operator delete(a1);
}

void std::__function::__func<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0,std::allocator<md::LabelCustomFeatureSupport::populateLabelFeaturesInTile(md::LabelMapTile *)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::vector<md::RouteFeatureAnchorWithPixelBounds,geo::allocator_adapter<md::RouteFeatureAnchorWithPixelBounds,mdm::zone_mallocator>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 64);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void md::MercatorAnchor::~MercatorAnchor(md::MercatorAnchor *this)
{
  md::Anchor::~Anchor(this);

  JUMPOUT(0x1B8C62190);
}

uint64_t std::__shared_ptr_pointer<md::MercatorAnchor *,std::shared_ptr<md::Anchor>::__shared_ptr_default_delete<md::Anchor,md::MercatorAnchor>,std::allocator<md::MercatorAnchor>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__function::__func<md::LabelMapTile::setCustomFeatures(std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&)::$_0,std::allocator<std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>> &&>,void ()(md::LabelManager *)>::operator()(void *a1)
{
  v1 = a1[1];
  v2 = (v1 + 352);
  if ((v1 + 352) != a1 + 2)
  {
    v4 = a1[2];
    v3 = a1[3];
    v5 = v3 - v4;
    v6 = *(v1 + 368);
    v7 = *(v1 + 352);
    if (v6 - v7 < (v3 - v4))
    {
      v8 = v5 >> 4;
      if (v7)
      {
        std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100]((v1 + 352));
        v9 = *v2;
        v11 = mdm::zone_mallocator::instance(v10);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::shared_ptr<md::LabelFeature>>(v11, v9);
        v6 = 0;
        *v2 = 0;
        *(v1 + 360) = 0;
        *(v1 + 368) = 0;
      }

      if (v8 >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = v6 >> 3;
      if (v6 >> 3 <= v8)
      {
        v12 = v8;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      std::vector<std::shared_ptr<md::LabelFeature>,geo::allocator_adapter<std::shared_ptr<md::LabelFeature>,mdm::zone_mallocator>>::__vallocate[abi:nn200100]((v1 + 352), v13);
      for (i = *(v1 + 360); v4 != v3; i += 2)
      {
        v15 = *(v4 + 1);
        *i = *v4;
        i[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v4 += 16;
      }

LABEL_21:
      *(v1 + 360) = i;
      goto LABEL_27;
    }

    v16 = *(v1 + 360) - v7;
    if (v16 < v5)
    {
      v17 = &v4[v16];
      std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a1[2], &v4[v16], v7);
      for (i = *(v1 + 360); v17 != v3; i += 2)
      {
        v18 = v17[1];
        *i = *v17;
        i[1] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }

        v17 += 2;
      }

      goto LABEL_21;
    }

    v19 = std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(a1[2], v3, v7);
    for (j = *(v1 + 360); j != v19; j -= 2)
    {
      v21 = *(j - 1);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }
    }

    *(v1 + 360) = v19;
  }

LABEL_27:
  *(v1 + 136) = 1;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *,std::shared_ptr<ggl::VertexData> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }

  return a3;
}

mdm::zone_mallocator *std::__split_buffer<md::LabelBoundingRect,geo::allocator_adapter<md::LabelBoundingRect,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v2 = *(a1 + 2);
  if (v2 != *(a1 + 1))
  {
    *(a1 + 2) = (v2 - *(a1 + 1) - 48) % 0x30uLL + *(a1 + 1);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::LabelBoundingRect>(v4, v3);
  }

  return a1;
}

void sub_1B2BE99A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  a9.super_class = VKImage;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ta2::TextureAtlasRegion::free(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 128))
  {
    *(a1 + 128) = 1;
    v3 = *(a1 + 8);
    std::mutex::lock(v3);
    v4 = *(v3 + 72);
    v5 = *(v3 + 80);
    if (v4 >= v5)
    {
      v8 = *(v3 + 64);
      v9 = (v4 - v8) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v13 = 16 * v9;
      v14 = *a2;
      *(16 * v9) = *a2;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v7 = (v13 + 16);
      v15 = *(v3 + 64);
      v16 = *(v3 + 72) - v15;
      v17 = v13 - v16;
      memcpy((v13 - v16), v15, v16);
      *(v3 + 64) = v17;
      *(v3 + 72) = v7;
      *(v3 + 80) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      *v4 = *a2;
      v4[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = v4 + 2;
    }

    *(v3 + 72) = v7;

    std::mutex::unlock(v3);
  }
}

void ta2::TextureAtlasRegion::deactivate(ta2::TextureAtlasRegion *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = v2[45];
    v3 = v2[46];
    if (v4 != v3)
    {
      while (*v4 != this)
      {
        v4 += 16;
        if (v4 == v3)
        {
          goto LABEL_17;
        }
      }
    }

    if (v4 != v3)
    {
      std::vector<std::shared_ptr<md::MuninRoadLabel>>::push_back[abi:nn200100]((v2[49] - 24), v4);
      v5 = v2[46];
      if (v4 + 16 != v5)
      {
        do
        {
          v6 = *(v4 + 16);
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
          v7 = *(v4 + 8);
          *v4 = v6;
          if (v7)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v7);
          }

          v8 = v4 + 16;
          v9 = v4 + 32;
          v4 += 16;
        }

        while (v9 != v5);
        v5 = v2[46];
        v4 = v8;
      }

      while (v5 != v4)
      {
        v10 = *(v5 - 8);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        v5 -= 16;
      }

      v2[46] = v4;
    }
  }

LABEL_17:
  *(this + 64) = 1026;
  *(this + 4) = 0;
}

uint64_t std::construct_at[abi:nn200100]<md::RouteFeatureAnchorWithPixelBounds,std::shared_ptr<md::Anchor> &,gm::Box<float,2> const&,BOOL const&,md::RouteFeatureAnchorWithPixelBounds*>(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3, _OWORD *a4, char *a5)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a5;
    *a1 = a2;
    *(a1 + 8) = a3;
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 16) = *a4;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    std::__shared_weak_count::__release_shared[abi:nn200100](a3);
  }

  else
  {
    v7 = *a5;
    *a1 = a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = *a4;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v7;
  }

  return a1;
}

void ta2::TextureAtlasRegion::~TextureAtlasRegion(ta2::TextureAtlasRegion *this)
{
  v11 = *MEMORY[0x1E69E9840];
  *this = &unk_1F2A16D78;
  if (*(this + 128) != 2)
  {
    if (GEOGetVectorKitTextureAtlasLog(void)::onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitTextureAtlasLog(void)::onceToken, &__block_literal_global_17126);
    }

    v2 = GEOGetVectorKitTextureAtlasLog(void)::log;
    if (os_log_type_enabled(GEOGetVectorKitTextureAtlasLog(void)::log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315650;
      v6 = "_state == State::Inactive";
      v7 = 2080;
      v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/TextureAtlas2.cpp";
      v9 = 1024;
      v10 = 789;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "TextureAtlasRegion: Texture atlas region should be inactive before deleting: Assertion with expression - %s : Failed in file - %s line - %i", &v5, 0x1Cu);
    }
  }

  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

{
  ta2::TextureAtlasRegion::~TextureAtlasRegion(this);

  JUMPOUT(0x1B8C62190);
}

void *esl::toFontWeight@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*(result + 23) < 0)
  {
    if (result[1] == 10 && **result == 0x67696C6172746C75 && *(*result + 8) == 29800)
    {
      goto LABEL_45;
    }

    if (result[1] == 5 && **result == 1751607660 && *(*result + 4) == 116)
    {
      goto LABEL_59;
    }

    if (result[1] == 4 && **result == 1852401780)
    {
LABEL_47:
      v11 = 513;
      goto LABEL_70;
    }

    if (result[1] != 7 || (**result == 1969710450 ? (v8 = *(*result + 3) == 1918987381) : (v8 = 0), !v8))
    {
      v9 = result[1];
      if (v9 != 8)
      {
        if (v9 == 6 && **result == 1768187245 && *(*result + 4) == 28021)
        {
          goto LABEL_36;
        }

        goto LABEL_62;
      }

      v12 = *result;
      goto LABEL_61;
    }

LABEL_53:
    v11 = 769;
    goto LABEL_70;
  }

  v4 = *(result + 23);
  if (v4 > 6)
  {
    if (v4 != 7)
    {
      v12 = result;
      if (v4 != 8)
      {
        if (v4 != 10)
        {
          goto LABEL_62;
        }

        if (*result != 0x67696C6172746C75 || *(result + 4) != 29800)
        {
          goto LABEL_62;
        }

LABEL_45:
        v11 = 1;
        goto LABEL_70;
      }

LABEL_61:
      if (*v12 == 0x646C6F62696D6573)
      {
        v11 = 1281;
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    if (*result != 1969710450 || *(result + 3) != 1918987381)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

  if (v4 == 4)
  {
    if (*result != 1852401780)
    {
      goto LABEL_62;
    }

    goto LABEL_47;
  }

  if (v4 != 5)
  {
    if (v4 != 6)
    {
      goto LABEL_62;
    }

    if (*result != 1768187245 || *(result + 2) != 28021)
    {
      goto LABEL_62;
    }

LABEL_36:
    v11 = 1025;
    goto LABEL_70;
  }

  if (*result == 1751607660 && *(result + 4) == 116)
  {
LABEL_59:
    v11 = 257;
    goto LABEL_70;
  }

LABEL_62:
  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("bold", result);
  if (result)
  {
    v11 = 1537;
  }

  else
  {
    result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("heavy", v2);
    if (result)
    {
      v11 = 1793;
    }

    else
    {
      result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("black", v2);
      if (!result)
      {
        *a2 = 0;
        return result;
      }

      v11 = 2049;
    }
  }

LABEL_70:
  *a2 = v11;
  return result;
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(const char *a1, void *a2)
{
  v4 = strlen(a1);
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a2, a1, v4) == 0;
  }

  if (v4 == a2[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a2 = *a2;
    return memcmp(a2, a1, v4) == 0;
  }

  return 0;
}

uint64_t esl::toFontWeightAxisValue@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      *a2 = 1;
      if (result == 2)
      {
        v2 = 1120403456;
      }

      else
      {
        v2 = 1137180672;
      }

      goto LABEL_20;
    }

    if (!result)
    {
      *a2 = 1;
      v2 = 1128792064;
      goto LABEL_20;
    }

    if (result == 1)
    {
      *a2 = 1;
      v2 = 1133903872;
      goto LABEL_20;
    }
  }

  else
  {
    if (result <= 5)
    {
      *a2 = 1;
      if (result == 4)
      {
        v2 = 1140457472;
      }

      else
      {
        v2 = 1142292480;
      }

      goto LABEL_20;
    }

    switch(result)
    {
      case 6:
        *a2 = 1;
        v2 = 1143930880;
        goto LABEL_20;
      case 7:
        *a2 = 1;
        v2 = 1145569280;
        goto LABEL_20;
      case 8:
        *a2 = 1;
        v2 = 1147207680;
LABEL_20:
        *(a2 + 4) = v2;
        return result;
    }
  }

  *a2 = 0;
  return result;
}

uint64_t esl::toCGWeight@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v2 = MEMORY[0x1E6965968];
      }

      else
      {
        v2 = MEMORY[0x1E6965958];
      }

      goto LABEL_20;
    }

    if (!result)
    {
      v2 = MEMORY[0x1E6965978];
      goto LABEL_20;
    }

    if (result == 1)
    {
      v2 = MEMORY[0x1E6965948];
      goto LABEL_20;
    }
  }

  else
  {
    if (result <= 5)
    {
      if (result == 4)
      {
        v2 = MEMORY[0x1E6965950];
      }

      else
      {
        v2 = MEMORY[0x1E6965960];
      }

      goto LABEL_20;
    }

    switch(result)
    {
      case 6:
        v2 = MEMORY[0x1E6965938];
        goto LABEL_20;
      case 7:
        v2 = MEMORY[0x1E6965940];
        goto LABEL_20;
      case 8:
        v2 = MEMORY[0x1E6965930];
LABEL_20:
        v3 = *v2;
        *a2 = 1;
        *(a2 + 4) = v3;
        return result;
    }
  }

  *a2 = 0;
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7B2F550, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7B2F558, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

esl::QuartzImage *esl::QuartzImage::QuartzImage(esl::QuartzImage *this, const unsigned __int8 *a2, CFIndex a3)
{
  *(this + 2) = 0;
  v4 = (this + 16);
  *this = &unk_1F29E1060;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v5 = CFDataCreate(0, a2, a3);
  v6 = CGDataProviderCreateWithCFData(v5);
  *v4 = CGImageCreateWithPNGDataProvider(v6, 0, 0, kCGRenderingIntentDefault);
  CGDataProviderRelease(v6);
  if (v5)
  {
    CFRelease(v5);
  }

  return this;
}

void esl::QuartzImage::asPNG(CGImageRef *this@<X0>, void *a2@<X8>)
{
  if (((*(*this + 5))(this) & 1) != 0 && (DataProvider = CGImageGetDataProvider(this[2]), (v5 = CGDataProviderCopyData(DataProvider)) != 0))
  {
    v6 = v5;
    Length = CFDataGetLength(v5);
    v8 = malloc_type_malloc(Length, 0x100004077774924uLL);
    v9 = CFDataGetLength(v6);
    v11.location = 0;
    v11.length = v9;
    CFDataGetBytes(v6, v11, v8);
    CFRelease(v6);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v9;
    if (v9)
    {
      memmove(a2, v8, v9);
    }

    *(a2 + v9) = 0;

    free(v8);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

BOOL esl::QuartzImage::writeAsPNG(CGImageRef *this, const char *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, a2, 0x600u);
  v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v6 = CGImageDestinationCreateWithURL(v5, @"public.png", 1uLL, 0);
  v8 = v6;
  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (!v8)
  {
    v13 = GEOGetEaselImageLog(v6, v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = a2;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v15, 0xCu);
    }

    return 0;
  }

  CGImageDestinationAddImage(v8, this[2], 0);
  v9 = CGImageDestinationFinalize(v8);
  v11 = v9;
  if (!v9)
  {
    v12 = GEOGetEaselImageLog(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = a2;
      _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v15, 0xCu);
    }
  }

  CFRelease(v8);
  return v11;
}

const __CFData *esl::QuartzImage::byteData(CGImageRef *this)
{
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(this[2]);
  result = CGDataProviderCopyData(DataProvider);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    this[4] = Length;
    v6 = this[3];
    if (v6)
    {
      v7 = malloc_type_realloc(v6, Length, 0x100004077774924uLL);
    }

    else
    {
      v7 = malloc_type_malloc(Length, 0x100004077774924uLL);
    }

    this[3] = v7;
    v8.length = this[4];
    v8.location = 0;
    CFDataGetBytes(v4, v8, v7);
    CFRelease(v4);
    return this[3];
  }

  return result;
}

CGImageRef esl::QuartzImage::byteLength(CGImageRef *this)
{
  if (!(*(*this + 5))(this))
  {
    return 0;
  }

  DataProvider = CGImageGetDataProvider(this[2]);
  v3 = CGDataProviderCopyData(DataProvider);
  this[4] = CFDataGetLength(v3);
  CFRelease(v3);
  return this[4];
}

size_t esl::QuartzImage::bytesPerRow(unsigned int (***this)(CGImage **))
{
  if (!(*this)[5](this))
  {
    return 0;
  }

  v2 = this[2];

  return CGImageGetBytesPerRow(v2);
}

void geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<esl::QuartzContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<esl::QuartzImage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E11B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGImage *,geo::_retain_cf<CGImage *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1200;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGContext *,geo::_retain_cf<CGContext *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1260;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__shared_ptr_emplace<esl::QuartzImage>::__shared_ptr_emplace[abi:ne200100]<CGImage *,std::allocator<esl::QuartzImage>,0>(void *a1, CGImageRef *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F29E11B0;
  esl::QuartzImage::QuartzImage((a1 + 3), *a2);
  return a1;
}

void esl::QuartzContext::translate(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextTranslateCTM(v6, a2, a3);
  }
}

void esl::QuartzContext::scale(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextScaleCTM(v6, a2, a3);
  }
}

void esl::QuartzContext::rotate(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);

    CGContextRotateCTM(v4, a2);
  }
}

void esl::QuartzContext::concat(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (a2)
  {
    if (v4)
    {
      v5 = a1[1];
      v6 = *(a2 + 24);
      *&v7.a = *(a2 + 8);
      *&v7.c = v6;
      *&v7.tx = *(a2 + 40);
      CGContextConcatCTM(v5, &v7);
    }
  }
}

size_t esl::QuartzContext::bytesPerRow(unsigned int (***this)(CGContext **))
{
  if (!(*this)[3](this))
  {
    return 0;
  }

  v2 = this[1];

  return CGBitmapContextGetBytesPerRow(v2);
}

BOOL esl::QuartzContext::writeToPNG(CGContextRef *this, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  v4 = CFStringCreateWithCString(0, a2, 0x600u);
  v5 = CFURLCreateWithFileSystemPath(0, v4, kCFURLPOSIXPathStyle, 0);
  v6 = CGImageDestinationCreateWithURL(v5, @"public.png", 1uLL, 0);
  CFRelease(v5);
  CFRelease(v4);
  if (!v6)
  {
    v14 = GEOGetEaselContextLog(v7, v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = a2;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v16, 0xCu);
    }

    return 0;
  }

  Image = CGBitmapContextCreateImage(this[1]);
  CGImageDestinationAddImage(v6, Image, 0);
  v10 = CGImageDestinationFinalize(v6);
  v12 = v10;
  if (!v10)
  {
    v13 = GEOGetEaselContextLog(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = a2;
      _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "Failed to write image to %s", &v16, 0xCu);
    }
  }

  CFRelease(Image);
  CFRelease(v6);
  return v12;
}

uint64_t esl::QuartzContext::write(uint64_t a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3 != 1)
  {
    v5 = GEOGetEaselContextLog(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "ImageFormat::PNG == format";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
      v12 = 1024;
      v13 = 2157;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_ERROR, "Only PNG is supported for writing thus far: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }

    v14 = 0;
    *v15 = 0xE00000001;
    v16 = 1;
    v17 = getpid();
    v7 = 648;
    if (!sysctl(v15, 4u, buf, &v7, 0, 0) && (v14 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return (*(*a1 + 472))(a1, a2);
}

void esl::QuartzContext::flip(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);
    v5.b = 0.0;
    v5.c = 0.0;
    v5.a = 1.0;
    *&v5.d = xmmword_1B33ADD90;
    v5.ty = a2;
    CGContextConcatCTM(v4, &v5);
  }
}

uint64_t esl::QuartzContext::fillWithColor(CGContextRef *this, const esl::QuartzColor *a2)
{
  result = (*(*this + 3))(this);
  if (result)
  {
    result = (*(*this + 29))(this, a2);
    if (result)
    {
      v5 = (*(*this + 14))(this);
      v6.size.height = (*(*this + 15))(this);
      v6.origin.x = 0.0;
      v6.origin.y = 0.0;
      v6.size.width = v5;
      CGContextFillRect(this[1], v6);
      return 1;
    }
  }

  return result;
}

uint64_t esl::QuartzContext::setStrokeColor(uint64_t (***this)(CGContext **), const esl::QuartzColor *a2)
{
  v6[3] = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*this)[3](this);
    if (result)
    {
      v5 = this[1];
      esl::QuartzColor::color(v6, a2);
      CGContextSetStrokeColorWithColor(v5, v6[1]);
      geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v6);
      return 1;
    }
  }

  return result;
}

void esl::QuartzContext::setLineWidth(esl::QuartzContext *this, float a2)
{
  if ((*(*this + 24))(this))
  {
    v4 = *(this + 1);

    CGContextSetLineWidth(v4, a2);
  }
}

void esl::QuartzContext::setLineCapStyle(void *a1, CGLineCap a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a2 > kCGLineCapSquare;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1[1];

    CGContextSetLineCap(v5, a2);
  }
}

void esl::QuartzContext::setLineJoinStyle(void *a1, CGLineJoin a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a2 > kCGLineJoinBevel;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a1[1];

    CGContextSetLineJoin(v5, a2);
  }
}

void esl::QuartzContext::strokeEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextStrokeEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::fillEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextFillEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::addEllipseInRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextAddEllipseInRect(v4, *&v6);
  }
}

void esl::QuartzContext::addArc(esl::QuartzContext *this, float a2, float a3, float a4, float a5, float a6, int a7)
{
  if ((*(*this + 24))(this))
  {
    v14 = *(this + 1);

    CGContextAddArc(v14, a2, a3, a4, a5, a6, a7);
  }
}

void esl::QuartzContext::replacePathWithStrokedPath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextReplacePathWithStrokedPath(v2);
  }
}

void esl::QuartzContext::clearRect(void *a1, float *a2)
{
  if ((*(*a1 + 24))(a1))
  {
    v4 = a1[1];
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[3] - v5;
    if ((a2[2] - *a2) >= 0.0)
    {
      v9 = a2[2] - *a2;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = v9;
    if (v8 >= 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0.0;
    }

    v12 = v11;

    CGContextClearRect(v4, *&v6);
  }
}

void esl::QuartzContext::clip(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextClip(v2);
  }
}

void esl::QuartzContext::evenOddClip(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextEOClip(v2);
  }
}

uint64_t esl::QuartzContext::addPath(CGContextRef *a1, uint64_t a2)
{
  result = (*(*a1 + 3))(a1);
  if (result)
  {
    if (*a2 && (v5 = *(*a2 + 8)) != 0)
    {
      CGContextAddPath(a1[1], v5);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void esl::QuartzContext::beginPath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextBeginPath(v2);
  }
}

void esl::QuartzContext::strokePath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextStrokePath(v2);
  }
}

void esl::QuartzContext::closePath(esl::QuartzContext *this)
{
  if ((*(*this + 24))(this))
  {
    v2 = *(this + 1);

    CGContextClosePath(v2);
  }
}

void esl::QuartzContext::moveTo(esl::QuartzContext *this, float a2, float a3)
{
  if ((*(*this + 24))(this))
  {
    v6 = *(this + 1);

    CGContextMoveToPoint(v6, a2, a3);
  }
}

uint64_t esl::QuartzContext::setShadowWithColor(void *a1, float *a2, uint64_t *a3, float a4)
{
  v23 = *MEMORY[0x1E69E9840];
  result = (*(*a3 + 48))(a3);
  if (result)
  {
    result = (*(*a1 + 24))(a1);
    if (result)
    {
      if (a4 < 0.0)
      {
        v10 = GEOGetEaselContextLog(result, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *color = "0 <= radius";
          *&color[8] = 2080;
          *&color[10] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
          v17 = 1024;
          v18 = 2529;
          _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "Can not set shadow with negative blur radius: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
        }

        v19 = 0;
        *v20 = 0xE00000001;
        v21 = 1;
        v22 = getpid();
        v14 = 648;
        if (!sysctl(v20, 4u, buf, &v14, 0, 0) && (v19 & 0x800) != 0)
        {
          __debugbreak();
        }
      }

      v11 = a1[1];
      v12 = *a2;
      v13 = a2[1];
      esl::QuartzColor::color(buf, a3);
      v24.width = v12;
      v24.height = v13;
      CGContextSetShadowWithColor(v11, v24, a4, *&color[4]);
      geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(buf);
      return 1;
    }
  }

  return result;
}

void sub_1B2BEDE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t esl::QuartzContext::drawLinearGradient(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  result = (*(*a2 + 48))(a2);
  if (result)
  {
    result = (*(*a4 + 48))(a4);
    if (result)
    {
      result = (*(*a1 + 24))(a1);
      if (result)
      {
        __p = &unk_1F29E15F0;
        v17 = &unk_1F29E1130;
        v11 = a2[2];
        if (v11)
        {
          CFRetain(v11);
        }

        v18 = v11;
        v19 = &unk_1F29E15F0;
        v20[0] = &unk_1F29E1130;
        v12 = a4[2];
        if (v12)
        {
          CFRetain(v12);
        }

        v20[1] = v12;
        memset(v14, 0, sizeof(v14));
        std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(v14, &__p, &v21, 2uLL);
        for (i = 0; i != -8; i -= 4)
        {
          v20[i - 1] = &unk_1F29E15F0;
          geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v20[i]);
        }

        v15 = 0x3F80000000000000;
        v17 = 0;
        v18 = 0;
        __p = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &v15, &__p, 2uLL);
        (*(*a1 + 360))(a1, v14, &__p, a3, a5);
        if (__p)
        {
          v17 = __p;
          operator delete(__p);
        }

        __p = v14;
        std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&__p);
        return 1;
      }
    }
  }

  return result;
}

BOOL esl::QuartzContext::drawLinearGradient(CGContextRef *a1, uint64_t **a2, float **a3, float *a4, float *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v8 = a3[1];
    if (*a3 != v8 && (v6 - v5) >> 5 == v8 - *a3)
    {
      v13 = *a2;
      while (((*(*v13 + 48))(v13) & 1) != 0)
      {
        v13 += 32;
        v5 += 32;
        if (v13 == v6)
        {
          if (!(*(*a1 + 3))(a1))
          {
            return 0;
          }

          __src = 0;
          v36 = 0;
          v37 = 0;
          std::vector<double>::reserve(&__src, a3[1] - *a3);
          v14 = *a3;
          v15 = a3[1];
          if (*a3 != v15)
          {
            v16 = v36;
            do
            {
              v17 = *v14;
              if (v16 >= v37)
              {
                v18 = __src;
                v19 = v16 - __src;
                v20 = (v16 - __src) >> 3;
                v21 = v20 + 1;
                if ((v20 + 1) >> 61)
                {
                  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
                }

                v22 = v37 - __src;
                if ((v37 - __src) >> 2 > v21)
                {
                  v21 = v22 >> 2;
                }

                if (v22 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v23 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v23);
                }

                v24 = (v16 - __src) >> 3;
                v25 = (8 * v20);
                v26 = (8 * v20 - 8 * v24);
                *v25 = v17;
                v16 = v25 + 1;
                memcpy(v26, v18, v19);
                v27 = __src;
                __src = v26;
                v36 = v16;
                v37 = 0;
                if (v27)
                {
                  operator delete(v27);
                }
              }

              else
              {
                *v16++ = v17;
              }

              v36 = v16;
              ++v14;
            }

            while (v14 != v15);
          }

          Mutable = CFArrayCreateMutable(0, (a2[1] - *a2) >> 5, 0);
          v41 = &unk_1F29E14A8;
          colors = Mutable;
          if (Mutable)
          {
            v29 = *a2;
            v30 = a2[1];
            if (*a2 != v30)
            {
              do
              {
                v31 = colors;
                esl::QuartzColor::color(&v39, v29);
                CFArrayAppendValue(v31, value);
                geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v39);
                v29 += 4;
              }

              while (v29 != v30);
              v29 = *a2;
            }

            esl::QuartzColor::cgColorSpace(&v39, v29);
            if (value)
            {
              v32 = CGGradientCreateWithColors(value, colors, __src);
              v38[0] = &unk_1F29E14D8;
              v38[1] = v32;
              v33 = v32 != 0;
              if (v32)
              {
                v44.x = *a4;
                v44.y = a4[1];
                v45.x = *a5;
                v45.y = a5[1];
                CGContextDrawLinearGradient(a1[1], v32, v44, v45, 3u);
              }

              geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v38);
            }

            else
            {
              v33 = 0;
            }

            geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v39);
          }

          else
          {
            v33 = 0;
          }

          geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v41);
          if (__src)
          {
            v36 = __src;
            operator delete(__src);
          }

          return v33;
        }
      }
    }
  }

  return 0;
}

void sub_1B2BEE4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a13);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a16);
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<double>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, a2);
    }

    std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
  }
}

BOOL esl::QuartzContext::drawRadialGradient(CGContextRef *a1, void *a2, float *a3, void *a4, float *a5, float a6, float a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!(*(*a2 + 48))(a2) || !(*(*a4 + 48))(a4) || !(*(*a1 + 3))(a1))
  {
    return 0;
  }

  __p = &unk_1F29E15F0;
  v50 = &unk_1F29E1130;
  v14 = a2[2];
  if (v14)
  {
    CFRetain(v14);
  }

  v51 = v14;
  v52 = &unk_1F29E15F0;
  v53[0] = &unk_1F29E1130;
  v15 = a4[2];
  if (v15)
  {
    CFRetain(v15);
  }

  v53[1] = v15;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(&v38, &__p, &v54, 2uLL);
  for (i = 0; i != -8; i -= 4)
  {
    v53[i - 1] = &unk_1F29E15F0;
    geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v53[i]);
  }

  __src = 0x3F80000000000000;
  v50 = 0;
  v51 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, &__src, &v47, 2uLL);
  __src = 0;
  v47 = 0;
  v48 = 0;
  std::vector<double>::reserve(&__src, (v50 - __p) >> 2);
  v17 = __p;
  v18 = v50;
  if (__p != v50)
  {
    v19 = v47;
    do
    {
      v20 = *v17;
      if (v19 >= v48)
      {
        v21 = __src;
        v22 = v19 - __src;
        v23 = (v19 - __src) >> 3;
        v24 = v23 + 1;
        if ((v23 + 1) >> 61)
        {
          std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
        }

        v25 = v48 - __src;
        if ((v48 - __src) >> 2 > v24)
        {
          v24 = v25 >> 2;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v26 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v26);
        }

        v27 = (v19 - __src) >> 3;
        v28 = (8 * v23);
        v29 = (8 * v23 - 8 * v27);
        *v28 = v20;
        v19 = v28 + 1;
        memcpy(v29, v21, v22);
        v30 = __src;
        __src = v29;
        v47 = v19;
        v48 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v19++ = v20;
      }

      v47 = v19;
      ++v17;
    }

    while (v17 != v18);
  }

  Mutable = CFArrayCreateMutable(0, (v39 - v38) >> 5, 0);
  v44 = &unk_1F29E14A8;
  colors = Mutable;
  if (Mutable)
  {
    v32 = v38;
    v33 = v39;
    if (v38 != v39)
    {
      do
      {
        v34 = colors;
        esl::QuartzColor::color(&v42, v32);
        CFArrayAppendValue(v34, value);
        geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v42);
        v32 += 4;
      }

      while (v32 != v33);
      v32 = v38;
    }

    esl::QuartzColor::cgColorSpace(&v42, v32);
    if (value)
    {
      v35 = CGGradientCreateWithColors(value, colors, __src);
      v41[0] = &unk_1F29E14D8;
      v41[1] = v35;
      v36 = v35 != 0;
      if (v35)
      {
        v55.x = *a3;
        v55.y = a3[1];
        v56.x = *a5;
        v56.y = a5[1];
        CGContextDrawRadialGradient(a1[1], v35, v55, a6, v56, a7, 3u);
      }

      geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(v41);
    }

    else
    {
      v36 = 0;
    }

    geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v42);
  }

  else
  {
    v36 = 0;
  }

  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v44);
  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  __p = &v38;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&__p);
  return v36;
}

void sub_1B2BEEA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char *a25, char *a26)
{
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a13);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a16);
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&a19);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  a25 = &a10;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&a25);
  _Unwind_Resume(a1);
}

void esl::QuartzContext::imageInRect(uint64_t a1@<X0>, float *a2@<X1>, void *a3@<X8>)
{
  if ((*(*a1 + 24))(a1))
  {
    (*(*a1 + 392))(&image, a1);
    v7 = image;
    v6 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v17);
      }
    }

    if (v7)
    {
      v8 = a2[1];
      v10 = v8;
      v11 = a2[3] - v8;
      if ((a2[2] - *a2) >= 0.0)
      {
        v12 = a2[2] - *a2;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = v12;
      if (v11 >= 0.0)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0.0;
      }

      v15 = v14;
      v9 = *a2;
      image = CGImageCreateWithImageInRect(*(v7 + 2), *(&v10 - 1));
      std::allocate_shared[abi:ne200100]<esl::QuartzImage,std::allocator<esl::QuartzImage>,CGImage *&,0>();
    }

    *a3 = 0;
    a3[1] = 0;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }
}

void sub_1B2BEEC94(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *esl::QuartzContext::byteData(unsigned int (***this)(CGContext **))
{
  if (!(*this)[3](this))
  {
    return 0;
  }

  v2 = this[1];

  return CGBitmapContextGetData(v2);
}

size_t esl::QuartzContext::byteLength(CGContextRef *this)
{
  if (!(*(*this + 3))(this))
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(this[1]);
  return CGBitmapContextGetHeight(this[1]) * BytesPerRow;
}

uint64_t esl::QuartzContext::bitmapData(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  if (v4)
  {
    v5 = (*(*a1 + 128))(a1);
    *a2 = (*(*a1 + 432))(a1);
    *(a2 + 8) = v5;
    *(a2 + 12) = v5 >> 16;
    *(a2 + 16) = (*(*a1 + 96))(a1);
  }

  return v4;
}

uint64_t esl::QuartzContext::pngData(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = GEOGetEaselContextLog(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v6 = "false";
    v7 = 2080;
    v8 = "/Library/Caches/com.apple.xbs/Sources/VectorKit/geo/GeoResourceLib/Submodules/Easel/context/context.cpp";
    v9 = 1024;
    v10 = 2749;
    _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_ERROR, "Need to implement QuartzContext::pngData before using.: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

  v11 = 0;
  *v12 = 0xE00000001;
  v13 = 1;
  v14 = getpid();
  v4 = 648;
  if (!sysctl(v12, 4u, buf, &v4, 0, 0) && (v11 & 0x800) != 0)
  {
    __debugbreak();
  }

  return 0;
}

CGContext *esl::QuartzContext::width(esl::QuartzContext *this)
{
  result = *(this + 1);
  if (result)
  {
    return CGBitmapContextGetWidth(result);
  }

  return result;
}

CGContext *esl::QuartzContext::height(esl::QuartzContext *this)
{
  result = *(this + 1);
  if (result)
  {
    return CGBitmapContextGetHeight(result);
  }

  return result;
}

uint64_t esl::QuartzContext::dimensions(esl::QuartzContext *this)
{
  if (!(*(*this + 24))(this))
  {
    return 0;
  }

  v2 = (*(*this + 112))(this);
  return v2 | ((*(*this + 120))(this) << 16);
}

uint64_t *std::vector<esl::QuartzColor>::__init_with_size[abi:ne200100]<esl::QuartzColor const*,esl::QuartzColor const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<esl::QuartzColor>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B2BEF11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<esl::QuartzColor>::__destroy_vector::operator()[abi:nn200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<esl::QuartzColor>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<esl::QuartzColor>>(a1, a2);
  }

  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<esl::QuartzColor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = (a4 + v7);
      *v8 = &unk_1F29E15F0;
      v8[1] = &unk_1F29E1130;
      v9 = *(a2 + v7 + 16);
      if (v9)
      {
        CFRetain(*(a2 + v7 + 16));
      }

      v8[2] = v9;
      v7 += 32;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B2BEF2A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B2BEF31C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFArray *,geo::_retain_cf<__CFArray *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E14A8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<CGGradient *,geo::_retain_cf<CGGradient *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E14D8;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<esl::QuartzColor>,esl::QuartzColor const*,esl::QuartzColor const*,esl::QuartzColor*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 32;
  v4 = (a1 - 32);
  v5 = (a1 - 32);
  do
  {
    v6 = *v5;
    v5 -= 4;
    result = (*v6)(v4);
    v3 -= 32;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

double esl::AffineTransformMake@<D0>(double *__return_ptr a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, float a6@<S4>, float a7@<S5>)
{
  *a1 = &unk_1F29E1508;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = a4;
  a1[4] = a5;
  result = a7;
  a1[5] = a6;
  a1[6] = a7;
  return result;
}

__n128 esl::QuartzAffineTransform::QuartzAffineTransform(esl::QuartzAffineTransform *this)
{
  *this = &unk_1F29E1508;
  result = *MEMORY[0x1E695EFD0];
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *(this + 40) = *(MEMORY[0x1E695EFD0] + 32);
  *(this + 24) = v2;
  *(this + 8) = result;
  return result;
}

CGFloat esl::QuartzAffineTransform::scale(esl::QuartzAffineTransform *this, float a2, float a3)
{
  v4 = *(this + 24);
  *&v7.a = *(this + 8);
  *&v7.c = v4;
  *&v7.tx = *(this + 40);
  CGAffineTransformScale(&v8, &v7, a2, a3);
  v5 = *&v8.c;
  *(this + 8) = *&v8.a;
  *(this + 24) = v5;
  result = v8.tx;
  *(this + 40) = *&v8.tx;
  return result;
}

CGFloat esl::AffineTransformMakeTranslation@<D0>(float a1@<S0>, float a2@<S1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  *a3 = &unk_1F29E1508;
  v5 = *v4;
  v6 = v4[1];
  *(a3 + 8) = *v4;
  *(a3 + 24) = v6;
  v7 = v4[2];
  *(a3 + 40) = v7;
  *&v10.a = v5;
  *&v10.c = v6;
  *&v10.tx = v7;
  CGAffineTransformTranslate(&v11, &v10, a1, a2);
  v8 = *&v11.c;
  *(a3 + 8) = *&v11.a;
  *(a3 + 24) = v8;
  result = v11.tx;
  *(a3 + 40) = *&v11.tx;
  return result;
}

CGFloat esl::QuartzAffineTransform::translate(esl::QuartzAffineTransform *this, float a2, float a3)
{
  v4 = *(this + 24);
  *&v7.a = *(this + 8);
  *&v7.c = v4;
  *&v7.tx = *(this + 40);
  CGAffineTransformTranslate(&v8, &v7, a2, a3);
  v5 = *&v8.c;
  *(this + 8) = *&v8.a;
  *(this + 24) = v5;
  result = v8.tx;
  *(this + 40) = *&v8.tx;
  return result;
}

CGFloat esl::QuartzAffineTransform::rotate(esl::QuartzAffineTransform *this, float a2)
{
  v3 = *(this + 24);
  *&v6.a = *(this + 8);
  *&v6.c = v3;
  *&v6.tx = *(this + 40);
  CGAffineTransformRotate(&v7, &v6, a2);
  v4 = *&v7.c;
  *(this + 8) = *&v7.a;
  *(this + 24) = v4;
  result = v7.tx;
  *(this + 40) = *&v7.tx;
  return result;
}

double esl::AffineTransformConcat@<D0>(esl *this@<X0>, const esl::QuartzAffineTransform *a2@<X1>, const esl::QuartzAffineTransform *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = (*(*this + 80))(this, a2, a3);
  v8 = (*(*a2 + 80))(a2);
  v9 = (*(*this + 88))(this);
  v10 = v9 * (*(*a2 + 96))(a2) + v7 * v8;
  v11 = (*(*this + 80))(this);
  v12 = (*(*a2 + 88))(a2);
  v13 = (*(*this + 88))(this);
  v14 = v13 * (*(*a2 + 104))(a2) + v11 * v12;
  v15 = (*(*this + 96))(this);
  v16 = (*(*a2 + 80))(a2);
  v17 = (*(*this + 104))(this);
  v18 = v17 * (*(*a2 + 96))(a2) + v15 * v16;
  v19 = (*(*this + 96))(this);
  v20 = (*(*a2 + 88))(a2);
  v21 = (*(*this + 104))(this);
  v34 = v21 * (*(*a2 + 104))(a2) + v19 * v20;
  v22 = (*(*this + 112))(this);
  v23 = (*(*a2 + 80))(a2);
  v24 = (*(*this + 120))(this);
  v25 = v24 * (*(*a2 + 96))(a2) + v22 * v23;
  v33 = v25 + (*(*a2 + 112))(a2);
  v26 = (*(*this + 112))(this);
  v27 = (*(*a2 + 88))(a2);
  v28 = (*(*this + 120))(this);
  v29 = v28 * (*(*a2 + 104))(a2) + v26 * v27;
  v30 = v29 + (*(*a2 + 120))(a2);
  *a4 = &unk_1F29E1508;
  result = v30;
  *(a4 + 8) = v10;
  *(a4 + 16) = v14;
  *(a4 + 24) = v18;
  v32.f64[0] = v34;
  v32.f64[1] = v33;
  *(a4 + 32) = vcvtq_f64_f32(vcvt_f32_f64(v32));
  *(a4 + 48) = result;
  return result;
}

uint64_t esl::QuartzAffineTransform::invert(esl::QuartzAffineTransform *this)
{
  v2 = *(this + 24);
  *&v5.a = *(this + 8);
  *&v5.c = v2;
  *&v5.tx = *(this + 40);
  CGAffineTransformInvert(&v6, &v5);
  v3 = *&v6.c;
  *(this + 8) = *&v6.a;
  *(this + 24) = v3;
  *(this + 40) = *&v6.tx;
  return 1;
}

BOOL esl::QuartzAffineTransform::equalToTransform(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  v4 = *(a1 + 24);
  *&t1.a = *(a1 + 8);
  *&t1.c = v4;
  *&t1.tx = *(a1 + 40);
  v5 = *(v3 + 8);
  v6 = *(v3 + 40);
  *&v8.c = *(v3 + 24);
  *&v8.tx = v6;
  *&v8.a = v5;
  return CGAffineTransformEqualToTransform(&t1, &v8);
}

BOOL esl::QuartzAffineTransform::isIdentity(esl::QuartzAffineTransform *this)
{
  v1 = *(this + 24);
  *&t1.a = *(this + 8);
  *&t1.c = v1;
  *&t1.tx = *(this + 40);
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  *&v4.a = *MEMORY[0x1E695EFD0];
  *&v4.c = v2;
  *&v4.tx = *(MEMORY[0x1E695EFD0] + 32);
  return CGAffineTransformEqualToTransform(&t1, &v4);
}

float esl::QuartzAffineTransform::applyToRect(uint64_t a1, float *a2)
{
  v2 = a2[1];
  v3 = 0.0;
  if ((a2[2] - *a2) >= 0.0)
  {
    v4 = a2[2] - *a2;
  }

  else
  {
    v4 = 0.0;
  }

  if ((a2[3] - v2) >= 0.0)
  {
    v3 = a2[3] - v2;
  }

  v8.origin.x = *a2;
  v8.origin.y = v2;
  v8.size.width = v4;
  v8.size.height = v3;
  v5 = *(a1 + 24);
  *&v7.a = *(a1 + 8);
  *&v7.c = v5;
  *&v7.tx = *(a1 + 40);
  return COERCE_DOUBLE(CGRectApplyAffineTransform(v8, &v7));
}

void esl::FontKey::tokenize(uint64_t *__return_ptr a1@<X8>, std::string *__str@<X0>)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  std::string::basic_string(&v3, __str, 1uLL, 1uLL, &__p);
  operator new();
}

void sub_1B2BF028C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<std::string>::clear(v20);
  _Unwind_Resume(a1);
}

void std::list<std::string>::pop_front(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *v1;
  v3 = *(v1 + 8);
  v4[1] = v3;
  *v3 = v4;
  *(a1 + 16) = v2 - 1;
  std::__list_imp<std::string>::__delete_node[abi:ne200100](a1, v1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

int64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

uint64_t std::string::rfind[abi:ne200100](unsigned __int8 *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = a1[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
  }

  v7 = strlen(__s);
  if (v6 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 - v8;
  v10 = v8 + v7;
  if (v9 <= v7)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = &v5[v11];
  if (v7 && v11)
  {
    v15 = *__s;
    v14 = __s + 1;
    v13 = v15;
    v16 = v5;
    v17 = &v5[v11];
    do
    {
      v18 = v16 + 1;
      while (*v16 != v13)
      {
        ++v16;
        ++v18;
        if (v16 == v12)
        {
          goto LABEL_25;
        }
      }

      v19 = v7 - 1;
      v20 = v14;
      while (v19)
      {
        if (v18 == v12)
        {
          goto LABEL_25;
        }

        v22 = *v18++;
        v21 = v22;
        v23 = *v20++;
        --v19;
        if (v21 != v23)
        {
          goto LABEL_22;
        }
      }

      v17 = v16;
LABEL_22:
      ++v16;
    }

    while (v16 != v12);
  }

  else
  {
    v17 = &v5[v11];
  }

LABEL_25:
  if (v17 != v12 || v7 == 0)
  {
    return v17 - v5;
  }

  else
  {
    return -1;
  }
}

void esl::FontKey::parseStylisticAlternates(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v28 = a2;
  v29 = a3;
  do
  {
    v5 = std::string_view::find_first_of[abi:ne200100](&v28, "+-", v4 + 1);
    if (v29 < v4)
    {
      std::__throw_out_of_range[abi:ne200100]("string_view::substr");
    }

    v6 = v5;
    v7 = v5 - v4;
    if (v5 == -1)
    {
      v7 = -1;
    }

    if (v29 - v4 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v29 - v4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v27 = v8;
    if (v8)
    {
      memmove(__dst, (v28 + v4), v8);
    }

    *(__dst + v8) = 0;
    if (v27 < 0)
    {
      if (!__dst[1])
      {
        goto LABEL_33;
      }

      v25 = 0;
      v9 = __dst[0];
    }

    else
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      v25 = 0;
      v9 = __dst;
    }

    v10 = strtol(v9, &v25, 10);
    if (!*v25)
    {
      v12 = a1[13];
      v11 = a1[14];
      if (v12 >= v11)
      {
        v14 = a1[12];
        v15 = v12 - v14;
        v16 = (v12 - v14) >> 2;
        v17 = v16 + 1;
        if ((v16 + 1) >> 62)
        {
          std::vector<unsigned char,geo::allocator_adapter<unsigned char,gss::zone_mallocator>>::__throw_length_error[abi:ne200100]();
        }

        v18 = v11 - v14;
        if (v18 >> 1 > v17)
        {
          v17 = v18 >> 1;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
        v20 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v19)
        {
          v20 = v17;
        }

        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((a1 + 12), v20);
        }

        v21 = v16;
        v22 = (4 * v16);
        v23 = &v22[-v21];
        *v22 = v10;
        v13 = v22 + 1;
        memcpy(v23, v14, v15);
        v24 = a1[12];
        a1[12] = v23;
        a1[13] = v13;
        a1[14] = 0;
        if (v24)
        {
          operator delete(v24);
        }
      }

      else
      {
        *v12 = v10;
        v13 = v12 + 4;
      }

      a1[13] = v13;
    }

    if (v27 < 0)
    {
LABEL_33:
      operator delete(__dst[0]);
    }

LABEL_34:
    v4 = v6;
  }

  while (v6 != -1);
}

void sub_1B2BF0790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *geo::optional<esl::FontWeight>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    v6 = 1;
    v7 = 0x10000000ELL;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(&v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 1;
}

_BYTE *geo::optional<int>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    v6 = 1;
    v7 = 0x10000000ELL;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(&v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 4;
}

uint64_t geo::optional<float>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*a1)
    {
      v3 = *geo::optional<float>::value(a2);
      *geo::optional<float>::value(a1) = v3;
    }

    else
    {
      *(a1 + 4) = *geo::optional<float>::value(a2);
      *a1 = 1;
    }
  }

  else if (*a1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

unint64_t esl::FontKey::hash(esl::FontKey *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = ((*(this + 9) | ((*(this + 8) - 0x61C8864680B583EBLL) << 6)) - 0x3A3AA7D820E2E4E6) ^ (*(this + 8) - 0x61C8864680B583EBLL);
  v5 = ((*(this + 10) | (v4 << 6)) + (v4 >> 2) - 0x61C8864680B583EBLL) ^ v4;
  v6 = ((*(this + 11) | (v5 << 6)) + (v5 >> 2) - 0x61C8864680B583EBLL) ^ v5;
  v7 = ((*(this + 12) | (v6 << 6)) + (v6 >> 2) - 0x61C8864680B583EBLL) ^ v6;
  v8 = ((*(this + 13) | (v7 << 6)) + (v7 >> 2) - 0x61C8864680B583EBLL) ^ v7;
  v9 = LODWORD(v2) - 0x61C8864680B583EBLL;
  if (v2 == 0.0)
  {
    v9 = 0x9E3779B97F4A7C15;
  }

  v10 = (v9 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v11 = LODWORD(v3) - 0x61C8864680B583EBLL;
  if (v3 == 0.0)
  {
    v11 = 0x9E3779B97F4A7C15;
  }

  v12 = (v11 + (v10 << 6) + (v10 >> 2)) ^ v10;
  v13 = (*(this + 40) + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583EBLL) ^ v12;
  v14 = (std::__string_hash<char>::operator()[abi:ne200100](&v16, this + 6) + (v13 << 6) + (v13 >> 2) - 0x61C8864680B583EBLL) ^ v13;
  return (std::__string_hash<char>::operator()[abi:ne200100](&v17, this + 9) + (v14 << 6) + (v14 >> 2) - 0x61C8864680B583EBLL) ^ v14;
}

uint64_t *std::istringstream::basic_istringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[21] = 0;
  v6 = MEMORY[0x1E69E5568] + 64;
  a1[15] = MEMORY[0x1E69E5568] + 64;
  v7 = *(MEMORY[0x1E69E54E0] + 16);
  v8 = *(MEMORY[0x1E69E54E0] + 8);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  a1[1] = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, a1 + 2);
  v10 = MEMORY[0x1E69E5568] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  *a1 = v10;
  a1[15] = v6;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 2), a2, a3 | 8);
  return a1;
}

void sub_1B2BF0C98(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C620C0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1B8C61BC0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1B2BF0E24(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1B2BF0DE4);
  }

  __cxa_rethrow();
}

char *std::remove_if[abi:ne200100]<std::__wrap_iter<char *>,int (*)(int)>(char *a1, char *a2, unsigned int (*a3)(void))
{
  v3 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    while (!a3(*v3))
    {
      if (++v3 == a2)
      {
        v3 = a2;
        break;
      }
    }

    if (v3 != a2)
    {
      for (i = v3 + 1; i != a2; ++i)
      {
        if (!a3(*i))
        {
          *v3++ = *i;
        }
      }
    }
  }

  return v3;
}

int isspace(int _c)
{
  if (_c <= 0x7F)
  {
    v1 = *(MEMORY[0x1E69E9830] + 4 * _c + 60) & 0x4000;
  }

  else
  {
    v1 = __maskrune(_c, 0x4000uLL);
  }

  return v1 != 0;
}

uint64_t std::string_view::find_first_of[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = strlen(__s);
  if (v6 <= a3 || v7 == 0)
  {
    return -1;
  }

  v10 = (v5 + v6);
  v11 = (v5 + a3);
LABEL_7:
  v12 = v7;
  v13 = __s;
  while (*v11 != *v13)
  {
    ++v13;
    if (!--v12)
    {
      if (++v11 != v10)
      {
        goto LABEL_7;
      }

      v11 = (v5 + v6);
      break;
    }
  }

  if (v11 == v10)
  {
    return -1;
  }

  else
  {
    return &v11[-v5];
  }
}

BOOL esl::FontKey::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  if (*(a2 + 9) != *(a1 + 9) || *(a2 + 10) != *(a1 + 10) || *(a2 + 11) != *(a1 + 11) || *(a2 + 12) != *(a1 + 12) || *(a2 + 13) != *(a1 + 13) || *(a2 + 16) != *(a1 + 16) || *(a2 + 40) != *(a1 + 40) || *(a2 + 20) != *(a1 + 20) || std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 48), (a1 + 48)))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<int,std::allocator<int>>(a2 + 96, a1 + 96);
  if (result)
  {
    return !std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 72), (a1 + 72));
  }

  return result;
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 1;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) != 0;
}

void std::__list_imp<std::string>::clear(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    while (v2 != result)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::string>::__delete_node[abi:ne200100](result, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::string>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t std::istringstream::~istringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 16) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

_BYTE *geo::optional<float>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

_BYTE *geo::optional<float>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 4;
}

_BYTE *geo::optional<int>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<int>::value(a1);
    *a1 = 0;
  }

  return a1;
}

_BYTE *geo::optional<esl::FontWeight>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<esl::FontWeight>::value(a1);
    *a1 = 0;
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
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
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
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

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
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

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1B8C61F50](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:nn200100](a1);
  return a1;
}

void sub_1B2BF1A7C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<int,std::allocator<int>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t esl::QuartzColor::colorSpace@<X0>(CGColorRef *this@<X0>, _BYTE *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  result = (*(*this + 6))(this);
  if ((result & 1) == 0)
  {
    *a2 = 0;
    return result;
  }

  ColorSpace = CGColorGetColorSpace(this[2]);
  v12 = &unk_1F29E1230;
  if (ColorSpace)
  {
    v6 = ColorSpace;
    CFRetain(ColorSpace);
    v13 = v6;
    Name = CGColorSpaceGetName(v6);
    v8 = Name;
    v10 = &unk_1F29E1668;
    if (Name)
    {
      CFRetain(Name);
      cf1 = v8;
      if (CFEqual(v8, *MEMORY[0x1E695F1C0]))
      {
        v9 = 513;
LABEL_18:
        *a2 = v9;
        goto LABEL_19;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F1B0]))
      {
        v9 = 1;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F138]))
      {
        v9 = 257;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F0B8]))
      {
        v9 = 769;
        goto LABEL_18;
      }

      if (CFEqual(cf1, *MEMORY[0x1E695F0B0]))
      {
        v9 = 1025;
        goto LABEL_18;
      }
    }

    else
    {
      cf1 = 0;
    }

    *a2 = 0;
LABEL_19:
    geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v10);
    return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v12);
  }

  v13 = 0;
  *a2 = 0;
  return geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(&v12);
}

void sub_1B2BF1D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va);
  geo::_retain_ptr<CGColorSpace *,geo::_retain_cf<CGColorSpace *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(va1);
  _Unwind_Resume(a1);
}

float64x2_t *esl::QuartzColor::sRGBComponents@<X0>(CGColorRef *this@<X0>, uint64_t a2@<X8>)
{
  result = CGColorGetComponents(this[2]);
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  v5 = result;
  v6 = 1.0;
  if ((*(*this + 5))(this) == 4)
  {
    v6 = v5[1].f64[1];
  }

  (*(*this + 2))(v44, this);
  v7 = v44[0];
  *a2 = 0;
  if (v7 == 1)
  {
    v8 = *geo::optional<geo::ColorSpace>::value(v44);
    if (v8 <= 1)
    {
      if (v8)
      {
        v20 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v20;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDisplayRGBGammaCorrection, &v41);
        v45.i32[1] = v21;
        v46 = v22;
        v47 = v23;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v24;
        v17 = v25;
        v19 = v26;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v35 = v5[1].f64[0];
        v45 = vcvt_f32_f64(*v5);
        v46 = v35;
        v47 = v6;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v41, &v45);
        v15 = v36;
        v17 = v37;
        v19 = v38;
        if (*a2 == 1)
        {
LABEL_20:
          geo::optional<float>::value(a2);
LABEL_22:
          *(a2 + 4) = v13;
          *(a2 + 8) = v15;
          *(a2 + 12) = v17;
          *(a2 + 16) = v19;
          return geo::optional<geo::ColorSpace>::~optional(v44);
        }
      }

LABEL_21:
      *a2 = 1;
      goto LABEL_22;
    }

    switch(v8)
    {
      case 2u:
        v40 = *v5;
        v27 = v5[1].f64[0];
        if (*a2 == 1)
        {
          geo::optional<float>::value(a2);
        }

        else
        {
          *a2 = 1;
        }

        *(a2 + 4) = vcvt_f32_f64(v40);
        v39 = v27;
        *(a2 + 12) = v39;
        *(a2 + 16) = v6;
        return geo::optional<geo::ColorSpace>::~optional(v44);
      case 3u:
        v28 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v28;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDisplayP3GammaCorrection, &v41);
        v45.i32[1] = v29;
        v46 = v30;
        v47 = v31;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v32;
        v17 = v33;
        v19 = v34;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      case 4u:
        v9 = v5[1].f64[0];
        v41 = vcvt_f32_f64(*v5);
        v42 = v9;
        v43 = v6;
        v45.i32[0] = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseDCI_P3GammaCorrection, &v41);
        v45.i32[1] = v10;
        v46 = v11;
        v47 = v12;
        v13 = geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(&v48, &v45);
        v15 = v14;
        v17 = v16;
        v19 = v18;
        if (*a2 == 1)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
    }
  }

  return geo::optional<geo::ColorSpace>::~optional(v44);
}

void sub_1B2BF206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15)
{
  geo::optional<geo::Color<float,4,(geo::ColorSpace)2>>::~optional(v15);
  geo::optional<geo::ColorSpace>::~optional(&a15);
  _Unwind_Resume(a1);
}

_BYTE *geo::optional<geo::ColorSpace>::value(_BYTE *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*a1 & 1) == 0)
  {
    printf("%s : Assertion with expression - %s : Failed in file - %s line - %i\n", "optional has no value. Undefined behavior.", "_hasValue", "/AppleInternal/Library/BuildRoots/4~CAoLugAsLasTjeCOf6FAOz9MKC8yJ3zJ1z5wbIU/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/GeoStdLib/Optional.hpp", 355);
    v5 = 0;
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = getpid();
    v3 = 648;
    if (!sysctl(v6, 4u, v4, &v3, 0, 0) && (v5 & 0x800) != 0)
    {
      __debugbreak();
    }
  }

  return a1 + 1;
}

size_t esl::QuartzColor::numberOfComponents(CGColorRef *this)
{
  NumberOfComponents = CGColorGetNumberOfComponents(this[2]);
  if (NumberOfComponents)
  {
    return NumberOfComponents - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *esl::QuartzColor::cgColorSpace@<X0>(uint64_t *__return_ptr a1@<X8>, CGColorRef *this@<X0>)
{
  result = CGColorGetColorSpace(this[2]);
  v4 = result;
  *a1 = &unk_1F29E1230;
  if (result)
  {
    result = CFRetain(result);
  }

  a1[1] = v4;
  return result;
}

void esl::QuartzColor::~QuartzColor(esl::QuartzColor *this)
{
  *this = &unk_1F29E15F0;
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(this + 1);
}

{
  *this = &unk_1F29E15F0;
  geo::_retain_ptr<CGColor *,geo::_retain_cf<CGColor *>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(this + 1);

  JUMPOUT(0x1B8C62190);
}

_BYTE *geo::optional<geo::ColorSpace>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<geo::ColorSpace>::value(a1);
    *a1 = 0;
  }

  return a1;
}

void geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(a1);

  JUMPOUT(0x1B8C62190);
}

void *geo::_retain_ptr<__CFString const*,geo::_retain_cf<__CFString const*>,geo::_release_cf,geo::_hash_cf,geo::_equal_cf>::~_retain_ptr(void *a1)
{
  *a1 = &unk_1F29E1668;
  v2 = a1[1];
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

_BYTE *geo::optional<geo::Color<float,4,(geo::ColorSpace)2>>::~optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    geo::optional<float>::value(a1);
    *a1 = 0;
  }

  return a1;
}

float geo::fromLinear<float,4,(geo::ColorSpace)2,int,void>::operator()(uint64_t a1, float *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  if (*a2 >= 0.0031308)
  {
    v5 = (powf(v2, 0.41667) * 1.055) + -0.055;
  }

  else
  {
    v5 = v2 * 12.92;
  }

  if (v3 >= 0.0031308)
  {
    powf(v3, 0.41667);
  }

  if (v4 >= 0.0031308)
  {
    powf(v4, 0.41667);
  }

  return v5;
}

float geo::colorTransform<geo::ReverseGammaCorrection>(float *a1, float *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  v7 = a1[3] * v6;
  if (*a2 >= v7)
  {
    v8 = powf((v3 + *a1) / (*a1 + 1.0), a1[1]);
  }

  else
  {
    v8 = v3 / v6;
  }

  if (v4 >= v7)
  {
    powf((v4 + *a1) / (*a1 + 1.0), a1[1]);
  }

  if (v5 >= v7)
  {
    powf((v5 + *a1) / (*a1 + 1.0), a1[1]);
  }

  return v8;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[2];
  v7 = v6 * a1[3];
  if (*a2 >= v7)
  {
    v8 = powf((*a1 + v3) / (*a1 + 1.0), a1[1]);
  }

  else
  {
    v8 = v3 / v6;
  }

  if (v4 >= v7)
  {
    powf((*a1 + v4) / (*a1 + 1.0), a1[1]);
  }

  if (v5 >= v7)
  {
    powf((*a1 + v5) / (*a1 + 1.0), a1[1]);
  }

  return v8;
}

uint64_t esl::QuartzPath::moveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4)
{
  v8 = (*(*a1 + 2))(a1);
  if (v8)
  {
    if (a2)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    CGPathMoveToPoint(a1[1], v9, a3, a4);
  }

  return v8;
}

uint64_t esl::QuartzPath::addLineToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4)
{
  v8 = (*(*a1 + 2))(a1);
  if (v8)
  {
    if (a2)
    {
      v9 = (a2 + 8);
    }

    else
    {
      v9 = 0;
    }

    CGPathAddLineToPoint(a1[1], v9, a3, a4);
  }

  return v8;
}

uint64_t esl::QuartzPath::addCurveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8)
{
  v16 = (*(*a1 + 2))(a1);
  if (v16)
  {
    if (a2)
    {
      v17 = (a2 + 8);
    }

    else
    {
      v17 = 0;
    }

    CGPathAddCurveToPoint(a1[1], v17, a3, a4, a5, a6, a7, a8);
  }

  return v16;
}

uint64_t esl::QuartzPath::addQuadCurveToPoint(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    CGPathAddQuadCurveToPoint(a1[1], v13, a3, a4, a5, a6);
  }

  return v12;
}

uint64_t esl::QuartzPath::addEllipseInRect(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if ((a5 - a3) >= 0.0)
    {
      v14 = a5 - a3;
    }

    else
    {
      v14 = 0.0;
    }

    if ((a6 - a4) >= 0.0)
    {
      v15 = a6 - a4;
    }

    else
    {
      v15 = 0.0;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = v14;
    v17.size.height = v15;
    CGPathAddEllipseInRect(a1[1], v13, v17);
  }

  return v12;
}

uint64_t esl::QuartzPath::addArc(CGMutablePathRef *a1, BOOL a2, uint64_t a3, float a4, float a5, float a6, float a7, float a8)
{
  v16 = (*(*a1 + 2))(a1);
  if (v16)
  {
    if (a3)
    {
      v17 = (a3 + 8);
    }

    else
    {
      v17 = 0;
    }

    CGPathAddArc(a1[1], v17, a4, a5, a6, a7, a8, a2);
  }

  return v16;
}

uint64_t esl::QuartzPath::addPath(CGMutablePathRef *a1, uint64_t *a2, uint64_t a3)
{
  if (!(*(*a1 + 2))(a1))
  {
    return 0;
  }

  if (a3)
  {
    v6 = (a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      CGPathAddPath(a1[1], v6, v9);
      v10 = 1;
      if (!v8)
      {
        return v10;
      }

      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v8)
  {
LABEL_13:
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v10;
}

void sub_1B2BF2A60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t esl::QuartzPath::addRect(CGMutablePathRef *a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v12 = (*(*a1 + 2))(a1);
  if (v12)
  {
    if (a2)
    {
      v13 = (a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if ((a5 - a3) >= 0.0)
    {
      v14 = a5 - a3;
    }

    else
    {
      v14 = 0.0;
    }

    if ((a6 - a4) >= 0.0)
    {
      v15 = a6 - a4;
    }

    else
    {
      v15 = 0.0;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = v14;
    v17.size.height = v15;
    CGPathAddRect(a1[1], v13, v17);
  }

  return v12;
}

void std::__shared_ptr_emplace<esl::QuartzPath>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t GEOGetEaselContextLog(uint64_t a1, uint64_t a2)
{
  if (GEOGetEaselContextLog::onceToken != -1)
  {
    GEOGetEaselContextLog_cold_1();
  }

  return GEOGetEaselContextLog::log;
}

os_log_t __GEOGetEaselContextLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.Easel", "Context");
  GEOGetEaselContextLog::log = result;
  return result;
}

uint64_t GEOGetEaselImageLog(uint64_t a1, uint64_t a2)
{
  if (GEOGetEaselImageLog::onceToken != -1)
  {
    GEOGetEaselImageLog_cold_1();
  }

  return GEOGetEaselImageLog::log;
}

os_log_t __GEOGetEaselImageLog_block_invoke()
{
  result = os_log_create("com.apple.VectorKit.Easel", "Image");
  GEOGetEaselImageLog::log = result;
  return result;
}

void Flyover::GetDataIDs(Flyover *this)
{
  v2[9] = *MEMORY[0x1E69E9840];
  {
    v2[0] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Transform>>();
    v2[1] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::S2Transform>>();
    v2[2] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Clip>>();
    v2[3] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Texcoords>>();
    v2[4] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Shared>>();
    v2[5] = gdc::typeIndex<ggl::ConstantDataTyped<ggl::FlyoverCommon::Material>>();
    v2[6] = gdc::typeIndex<Flyover::AtmosphereTexture>();
    v2[7] = gdc::typeIndex<Flyover::DiffuseTexture>();
    v1 = 0;
    v2[8] = gdc::typeIndex<Flyover::NightTexture>();
    Flyover::GetDataIDs(void)::kDataIDs = 0u;
    *algn_1EB829230 = 0u;
    dword_1EB829240 = 1065353216;
    do
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&Flyover::GetDataIDs(void)::kDataIDs, v2[v1], &v2[v1]);
      ++v1;
    }

    while (v1 != 9);
  }
}

void md::Logic<md::DrapingLogic,md::DrapingContext,md::LogicDependencies<gdc::TypeList<md::OverlaysContext,md::CameraContext,md::PendingSceneContext,md::ElevationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 3;
      do
      {
        v7 = v6;
        std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v7);
        v7 = v6 - 3;
        std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](&v7);
        if (*(v6 - 33) < 0)
        {
          operator delete(*(v6 - 7));
        }

        v6 -= 10;
      }

      while (v6 + 3 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 6;
      do
      {
        v8 = v6 + 3;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&v8);
        v8 = v6;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&v8);
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 3));
        }

        if (*(v6 - 25) < 0)
        {
          operator delete(*(v6 - 6));
        }

        v7 = v6 - 6;
        v6 -= 12;
      }

      while (v7 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<gdc::DebugTreeValue>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<gdc::DebugTreeValue>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void _ZZN2md12DrapingLogic14runAfterLayoutERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__0clENS5_6EntityERNS_17overlayComponents13VectorOverlayE(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v4 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v4, a2))
  {
    operator new();
  }
}

__n128 std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#3},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#3}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A5FEE0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#2},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#2}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A5FE98;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1},std::allocator<gdc::Registry::_registerStorageDataSignals(unsigned long,gdc::TypeInfo,gdc::ComponentStorageSignals *)::{lambda(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)#1}>,void ()(gdc::Registry*,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *(*(result + 8) + 184);
  if (v3)
  {
    v4 = *a2;
    v5 = *a3;
    v6 = a3[1];
    do
    {
      result = std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v3[6], v4, v5, v6);
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[3];
    __p[3] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void *geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if ((v4 - 8) != a2)
  {
    *a2 = *(v4 - 8);
    v5 = (a2 - *(a1 + 24)) >> 3;
    *(geo::sparse_set<gdc::Entity,unsigned short,256ul>::_getOrCreatePage(a1, *(*(a1 + 32) - 4)) + 2 * (a2 & 0x7F)) = v5;
    v4 = *(a1 + 32);
  }

  *(a1 + 32) = v4 - 8;
  return a2;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::TileIsInView>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::remove(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 104 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 96);
    *v6 = *(v7 - 104);
    v9 = *(v7 - 88);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 16);
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v12 = *(v7 - 80);
    v11 = *(v7 - 72);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v6 + 32);
    *(v6 + 24) = v12;
    *(v6 + 32) = v11;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v15 = *(v7 - 64);
    v14 = *(v7 - 56);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v6 + 48);
    *(v6 + 40) = v15;
    *(v6 + 48) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v18 = *(v7 - 48);
    v17 = *(v7 - 40);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *(v6 + 64);
    *(v6 + 56) = v18;
    *(v6 + 64) = v17;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    v21 = *(v7 - 32);
    v20 = *(v7 - 24);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v22 = *(v6 + 80);
    *(v6 + 72) = v21;
    *(v6 + 80) = v20;
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    v23 = *(v7 - 16);
    *(v6 + 96) = *(v7 - 8);
    *(v6 + 88) = v23;
    std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100]((a1 + 10), a1[11] - 104);
    v24 = a1[28];
    if (v24)
    {
      v25 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v24[6], v25, &v27, 1);
        v24 = *v24;
      }

      while (v24);
    }
  }

  return v5 != v4;
}

void std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 104)
  {
    v5 = *(i - 24);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(i - 40);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v7 = *(i - 56);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }

    v8 = *(i - 72);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    v9 = *(i - 88);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  *(a1 + 8) = a2;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<md::overlayComponents::VectorOverlay>::__base_destruct_at_end[abi:nn200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::VectorOverlay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::overlayComponents::VectorOverlay>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

unint64_t gdc::RegistryView<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::unordered_map<gdc::Registry *,std::vector<gdc::Entity>>,std::vector<gdc::Registry *>>::getComponent<md::overlayComponents::RasterOverlayBase<md::OverlayTileData::OverlayTileResource::RasterTile>,std::vector<gdc::Registry *>>(void *a1, uint64_t a2)
{
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  if (a1[8] == v3)
  {
    return a1[11];
  }

  else
  {
    return a1[10] + 24 * ((v3 - a1[7]) >> 3);
  }
}

void _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__2clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource10RasterTileEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t **a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(**a1, a2);
  v10 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(**a1);
  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2) || (*a1[1] & 1) == 0)
  {
    if (v11)
    {
      v13 = *(a4 + 16);
      if (v13)
      {
        do
        {
          v15 = v13[3];
          v14 = v13[4];
          v32 = v13;
          if (v15 != v14)
          {
            v16 = v13[2];
            do
            {
              v17 = *v15;
              v33 = v17;
              if ((gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(v9, v16, v17) & 1) == 0)
              {
                v18 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                v19 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v18, v17);
                if (v19)
                {
                  v20 = v19;
                  v21 = gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(v9, v16, &v33)[2];
                  v22 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                  v36 = v20[3];
                  v37 = v20[4];
                  v38[0] = v20[5];
                  *(v38 + 12) = *(v20 + 92);
                  *buf = *v20;
                  *&buf[16] = v20[1];
                  v35 = v20[2];
                  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v22, v21, buf);
                  v23 = gdc::Registry::storage<md::components::Visibility>(v16);
                  buf[0] = 1;
                  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v21, buf);
                  operator new();
                }

                v24 = GEOGetVectorKitDrapingLogicLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "false";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/DrapingLogic.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 307;
                  _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "Entity MUST have a mesh instance: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }
              }

              ++v15;
            }

            while (v15 != v14);
          }

          v13 = *v32;
        }

        while (*v32);
      }
    }

    else
    {
      v25 = *a5;
      v26 = a5[1];
      while (v25 != v26)
      {
        v27 = *v25;
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, *v25);
        v28 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v27, *buf, *&buf[8]);
        if (v28)
        {
          operator delete(v28);
        }

        ++v25;
      }

      for (i = *(a4 + 16); i; i = *i)
      {
        v30 = i[2];
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, v30);
        v31 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v30, *buf, *&buf[8]);
        if (v31)
        {
          operator delete(v31);
        }
      }
    }
  }
}

void sub_1B2BF3F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void _ZZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS_13LayoutContextERKNS_17LogicDependenciesIJN3gdc8TypeListIJNS_15OverlaysContextENS_13CameraContextENS_19PendingSceneContextENS_16ElevationContextEEEENS6_IJEEEEE20ResolvedDependenciesERNS_14DrapingContextEENK3__3clENS5_6EntityERNS_17overlayComponents17RasterOverlayBaseINS_15OverlayTileData19OverlayTileResource7TextureEEERNSt3__113unordered_mapIPNS5_8RegistryENSS_6vectorISK_NSS_9allocatorISK_EEEENSS_4hashISV_EENSS_8equal_toISV_EENSX_INSS_4pairIKSV_SZ_EEEEEERNSW_ISV_NSX_ISV_EEEE(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t **a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = gdc::Registry::getOrAdd<gdc::components::RegistryBridgeMap<gdc::Entity>>(**a1, a2);
  v10 = gdc::Registry::storage<md::overlayComponents::TileIsInView>(**a1);
  v11 = gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v10, a2);
  CanDisable = gdc::Registry::storage<md::overlayComponents::CanDisableDraping>(**a1);
  if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(CanDisable, a2) || (*a1[1] & 1) == 0)
  {
    if (v11)
    {
      v13 = *(a4 + 16);
      if (v13)
      {
        do
        {
          v15 = v13[3];
          v14 = v13[4];
          v32 = v13;
          if (v15 != v14)
          {
            v16 = v13[2];
            do
            {
              v17 = *v15;
              v33 = v17;
              if ((gdc::components::RegistryBridgeMap<gdc::Entity>::hasEntity(v9, v16, v17) & 1) == 0)
              {
                v18 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                v19 = gdc::ComponentStorageWrapper<md::components::MeshInstance>::get(v18, v17);
                if (v19)
                {
                  v20 = v19;
                  v21 = gdc::components::RegistryBridgeMap<gdc::Entity>::nodeForRegistryAndKey(v9, v16, &v33)[2];
                  v22 = gdc::Registry::storage<md::components::MeshInstance>(v16);
                  v36 = v20[3];
                  v37 = v20[4];
                  v38[0] = v20[5];
                  *(v38 + 12) = *(v20 + 92);
                  *buf = *v20;
                  *&buf[16] = v20[1];
                  v35 = v20[2];
                  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v22, v21, buf);
                  v23 = gdc::Registry::storage<md::components::Visibility>(v16);
                  buf[0] = 1;
                  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v23, v21, buf);
                  operator new();
                }

                v24 = GEOGetVectorKitDrapingLogicLog();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "false";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/Overlays/DrapingLogic.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 307;
                  _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_ERROR, "Entity MUST have a mesh instance: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
                }
              }

              ++v15;
            }

            while (v15 != v14);
          }

          v13 = *v32;
        }

        while (*v32);
      }
    }

    else
    {
      v25 = *a5;
      v26 = a5[1];
      while (v25 != v26)
      {
        v27 = *v25;
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, *v25);
        v28 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v27, *buf, *&buf[8]);
        if (v28)
        {
          operator delete(v28);
        }

        ++v25;
      }

      for (i = *(a4 + 16); i; i = *i)
      {
        v30 = i[2];
        gdc::components::RegistryBridgeMap<gdc::Entity>::entities(buf, v9, v30);
        v31 = *buf;
        md::components::QueuedForDestruction<>::addDestructionTagToEntities<md::DrapingLogic,std::__wrap_iter<gdc::Entity *>>(v30, *buf, *&buf[8]);
        if (v31)
        {
          operator delete(v31);
        }
      }
    }
  }
}

void sub_1B2BF4434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

id GEOGetVectorKitDrapingLogicLog(void)
{
  if (GEOGetVectorKitDrapingLogicLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDrapingLogicLog(void)::onceToken, &__block_literal_global);
  }

  v1 = GEOGetVectorKitDrapingLogicLog(void)::log;

  return v1;
}

BOOL std::__hash_table<md::FoundationOverlayPair,md::FoundationOverlayPairHash,std::equal_to<md::FoundationOverlayPair>,std::allocator<md::FoundationOverlayPair>>::__emplace_unique_key_args<md::FoundationOverlayPair,md::FoundationOverlayPair>(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 216);
  v4 = (*(a2 + 104) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_19;
  }

  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = (*(a2 + 104) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583EBLL) ^ v3;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = v4 & (*&v5 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = *(v11 + 1);
    if (v12 == v4)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v5)
      {
        v12 %= *&v5;
      }
    }

    else
    {
      v12 &= *&v5 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (!gdc::LayerDataRequestKey::operator==(v11 + 16, a2))
  {
    goto LABEL_18;
  }

  result = gdc::LayerDataRequestKey::operator==(v11 + 128, (a2 + 112));
  if (!result)
  {
    goto LABEL_18;
  }

  return result;
}

void sub_1B2BF4940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<md::FoundationOverlayPair,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<md::FoundationOverlayPair,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void md::FoundationOverlayPair::~FoundationOverlayPair(md::FoundationOverlayPair *this)
{
  v2 = *(this + 16);
  if (v2 != *(this + 18))
  {
    free(v2);
  }

  v3 = *(this + 2);
  if (v3 != *(this + 4))
  {
    free(v3);
  }
}

void md::DrapingLogic::_fixUpHoles(void *a1, uint64_t *a2, void *a3, char **a4)
{
  v4 = a2;
  v160[9] = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v7 = *v5;
  v6 = *(v5 + 8);
  while (v7 != v6)
  {
    if (*v7 == 1)
    {
      v6 = v7;
      break;
    }

    v7 += 16;
  }

  v8 = *(*(v6 + 2) + 16);
  v133[1] = 0;
  v133[0] = 0;
  v111 = v8;
  v132 = v133;
  if (a2)
  {
    do
    {
      v9 = v4 + 2;
      gdc::Tiled::tileFromLayerDataKey(&v148, v4[4]);
      v10 = v148.__r_.__value_.__s.__data_[1];
      gdc::Tiled::tileFromLayerDataKey(buf, v4[18]);
      if (v10 <= buf[1])
      {
        v11 = 0;
      }

      else
      {
        v11 = 14;
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(__p, &v9[v11]);
      gdc::Tiled::tileFromLayerDataKey(&v148, v4[4]);
      v12 = v148.__r_.__value_.__s.__data_[1];
      gdc::Tiled::tileFromLayerDataKey(v147, v4[18]);
      if (v12 <= v147[1])
      {
        v13 = 14;
      }

      else
      {
        v13 = 0;
      }

      gdc::LayerDataRequestKey::LayerDataRequestKey(buf, &v9[v13]);
      v14 = v133[0];
      if (!v133[0])
      {
        goto LABEL_26;
      }

      v15 = v133;
      do
      {
        v16 = v15;
        v17 = v14 + 32;
        v18 = gdc::LayerDataRequestKey::operator<(v14 + 32, __p);
        if (v18)
        {
          v19 = 8;
        }

        else
        {
          v19 = 0;
        }

        if (!v18)
        {
          v15 = v14;
        }

        v14 = *&v14[v19];
      }

      while (v14);
      if (v15 == v133 || (!v18 ? (v20 = v17) : (v20 = (v16 + 4)), (gdc::LayerDataRequestKey::operator<(__p, v20) & 1) != 0))
      {
LABEL_26:
        gdc::LayerDataRequestKey::LayerDataRequestKey(v147, buf);
        v144 = 0uLL;
        v145 = 0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>(&v144, v147, &v148);
      }

      std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](v15 + 18, buf);
      if (*&buf[16] != v154)
      {
        free(*&buf[16]);
      }

      if (v156 != v157)
      {
        free(v156);
      }

      v4 = *v4;
    }

    while (v4);
  }

  v116 = *a3;
  v22 = *(*a3 + 112);
  v21 = *(*a3 + 120);
  while (v22 != v21)
  {
    if (*v22 == 1)
    {
      v21 = v22;
      break;
    }

    v22 += 56;
  }

  v23 = *(v21 + 13);
  v130 = 0;
  v129 = 0;
  v131 = 0;
  v24 = v132;
  if (v132 != v133)
  {
    v109 = *(v111 + 56);
    v110 = v23;
    while (1)
    {
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v25 = GEOGetVectorKitDrapingFallbackLog_log;
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);

      if (v26)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v27 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          gdc::LayerDataRequestKey::keysInt32Str(&v148, v24 + 16);
          v28 = SHIBYTE(v148.__r_.__value_.__r.__words[2]);
          v29 = v148.__r_.__value_.__r.__words[0];
          v30 = &v148;
          if (v28 < 0)
          {
            v30 = v29;
          }

          v31 = __p;
          if (SHIBYTE(v156) < 0)
          {
            v31 = *__p;
          }

          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = v31;
          _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_DEBUG, "Hole: Larger tile %s contains pairs: %s", buf, 0x16u);
          if (SHIBYTE(v156) < 0)
          {
            operator delete(*__p);
          }

          v23 = v110;
          if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__data_);
          }
        }
      }

      memset(&v140, 0, sizeof(v140));
      if (*(v24 + 20) != 33)
      {
        strcpy(&v148, "!");
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(1);
      }

      std::vector<md::MapDataType>::__assign_with_size[abi:nn200100]<md::MapDataType*,md::MapDataType*>(&v140, *a4, a4[1], (a4[1] - *a4) >> 1);
      v32 = v140.__r_.__value_.__l.__size_ - v140.__r_.__value_.__r.__words[0];
      if (v140.__r_.__value_.__l.__size_ != v140.__r_.__value_.__r.__words[0])
      {
        if (((v32 >> 1) & 0x8000000000000000) == 0)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<md::MapDataType>>(v32 >> 1);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      gdc::Tiled::tileFromLayerDataKey(&v148, v24[6]);
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
      v158 = 0.0;
      v159 = 0.0;
      v160[0] = 0.0;
      gdc::LayerDataCollector::virtualTilesReferencingKey(v23, v24 + 32, &v158);
      v34 = *&v158;
      v33 = v159;
      v112 = v159;
      while (v34 != *&v33)
      {
        grl::LayerMetrics::anchor(*v34);
        v36 = v35;
        *&v134 = v35;
        while (1)
        {
          grl::LayerMetrics::anchor(v34[1]);
          if (!gdc::DataKeyIterator::operator!=(v36, v37))
          {
            break;
          }

          gdc::DataKeyIterator::operator++(&v134);
          v36 = v134;
        }

        v34 += 3;
        v33 = v112;
      }

      v152 = 0;
      v151 = 0uLL;
      v38 = v24;
      if (*buf != &buf[8])
      {
        v39 = 0;
        v40 = *buf;
        do
        {
          v41 = v39;
          v42 = *(v40 + 1);
          if (v42)
          {
            do
            {
              v43 = v42;
              v42 = *v42;
            }

            while (v42);
          }

          else
          {
            do
            {
              v43 = *(v40 + 2);
              v44 = *v43 == v40;
              v40 = v43;
            }

            while (!v44);
          }

          ++v39;
          v40 = v43;
        }

        while (v43 != &buf[8]);
        if (v41 < 0x249249249249249)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gdc::LayerDataRequestKey>>(v39);
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      if (v158 != 0.0)
      {
        operator delete(*&v158);
      }

      std::__tree<gdc::LayerDataRequestKey>::destroy(*&buf[8]);
      v23 = v110;
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v45 = GEOGetVectorKitDrapingFallbackLog_log;
      v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG);

      if (v46)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v47 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = &v148;
          if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v48 = v148.__r_.__value_.__r.__words[0];
          }

          *__p = 136315138;
          *&__p[4] = v48;
          _os_log_impl(&dword_1B2754000, v47, OS_LOG_TYPE_DEBUG, "smaller keys covering: %s", __p, 0xCu);
          if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__data_);
          }
        }
      }

      if (v151 != *(&v151 + 1))
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v148, v151);
        gdc::LayerDataRequestKey::LayerDataRequestKey(v128, (v24 + 4));
        gdc::LayerDataRequestKey::LayerDataRequestKey(v127, &v148);
        gdc::LayerDataRequestKey::LayerDataRequestKey(__p, (v24 + 4));
        v158 = 0.0;
        v159 = 0.0;
        v160[0] = 0.0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>(&v158, __p, &v158);
      }

      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v49 = GEOGetVectorKitDrapingFallbackLog_log;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v148.__r_.__value_.__l.__data_) = 134217984;
        *(v148.__r_.__value_.__r.__words + 4) = 0;
        _os_log_impl(&dword_1B2754000, v49, OS_LOG_TYPE_DEBUG, "Current Coverage: %f", &v148, 0xCu);
      }

      v158 = 0.0;
      v159 = 0.0;
      v160[0] = 0.0;
      if (v151 != *(&v151 + 1))
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v151);
        v50 = v24[18];
        for (i = v24[19]; v50 != i; v50 += 112)
        {
          if (gdc::LayerDataRequestKey::operator==(v50, __p))
          {
            break;
          }
        }

        gdc::LayerDataRequestKey::LayerDataRequestKey(v126, (v24 + 4));
        gdc::LayerDataRequestKey::LayerDataRequestKey(v125, __p);
        gdc::LayerDataRequestKey::LayerDataRequestKey(buf, (v24 + 4));
        v134 = 0uLL;
        v135 = 0;
        std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>(&v134, buf, __p);
      }

      if (gdc::LayerDataCollector::isFallbackData(v110, (v24 + 4)))
      {
        memset(buf, 0, 24);
      }

      else
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(&v148, (v24 + 4));
        md::DrapingLogic::_fallbackTilesForHoleTile(buf, a1, &v148, v109);
        if (v148.__r_.__value_.__r.__words[2] != v150)
        {
          free(v148.__r_.__value_.__r.__words[2]);
        }
      }

      if (*&buf[8] != *buf)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v52 = GEOGetVectorKitDrapingFallbackLog_log;
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);

        if (v53)
        {
          if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
          }

          v54 = GEOGetVectorKitDrapingFallbackLog_log;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = &v148;
            if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v55 = v148.__r_.__value_.__r.__words[0];
            }

            *__p = 136315138;
            *&__p[4] = v55;
            _os_log_impl(&dword_1B2754000, v54, OS_LOG_TYPE_DEBUG, "larger fallback keys: %s", __p, 0xCu);
            if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v148.__r_.__value_.__l.__data_);
            }
          }
        }

        v57 = *(&v151 + 1);
        v56 = v151;
        if (v151 != *(&v151 + 1))
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(&v148, v151);
          gdc::LayerDataRequestKey::LayerDataRequestKey(v124, (v24 + 4));
          gdc::LayerDataRequestKey::LayerDataRequestKey(v123, &v148);
          gdc::LayerDataRequestKey::LayerDataRequestKey(__p, &v148);
          v134 = 0uLL;
          v135 = 0;
          std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>(&v134, __p, &v158);
        }

        while (v56 != v57)
        {
          gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v56);
          v59 = v24[18];
          v58 = v24[19];
          if (v59 != v58)
          {
            while (!gdc::LayerDataRequestKey::operator==(v59, __p))
            {
              v59 += 112;
              if (v59 == v58)
              {
                v59 = v58;
                break;
              }
            }
          }

          gdc::LayerDataRequestKey::LayerDataRequestKey(v120, (v24 + 4));
          gdc::LayerDataRequestKey::LayerDataRequestKey(v117, __p);
          if (v59 == v58)
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v144, __p);
            v134 = 0uLL;
            v135 = 0;
            std::vector<gdc::LayerDataRequestKey>::__init_with_size[abi:nn200100]<gdc::LayerDataRequestKey const*,gdc::LayerDataRequestKey const*>(&v134, &v144, v147);
          }

          if (gdc::LayerDataCollector::isFallbackData(v110, __p))
          {
            v134 = 0uLL;
            v135 = 0;
          }

          else
          {
            gdc::LayerDataRequestKey::LayerDataRequestKey(&v148, __p);
            md::DrapingLogic::_fallbackTilesForHoleTile(&v134, a1, &v148, v109);
            if (v148.__r_.__value_.__r.__words[2] != v150)
            {
              free(v148.__r_.__value_.__r.__words[2]);
            }
          }

          v60 = md::DrapingLogic::_evaluateCoverageOfTilePairs(a1, v120, v117, buf, &v134);
          v160[0] = v160[0] + v60;
          v148.__r_.__value_.__r.__words[0] = &v134;
          std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v148);
          if (v59 == v58 && v145 != v146)
          {
            free(v145);
          }

          if (v118 != v119)
          {
            free(v118);
          }

          if (v121 != v122)
          {
            free(v121);
          }

          if (v156 != v157)
          {
            free(v156);
          }

          v56 += 112;
        }
      }

      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v61 = GEOGetVectorKitDrapingFallbackLog_log;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v148.__r_.__value_.__l.__data_) = 134218496;
        *(v148.__r_.__value_.__r.__words + 4) = v158;
        WORD2(v148.__r_.__value_.__r.__words[1]) = 2048;
        *(&v148.__r_.__value_.__r.__words[1] + 6) = v159;
        HIWORD(v148.__r_.__value_.__r.__words[2]) = 2048;
        v149 = v160[0];
        _os_log_impl(&dword_1B2754000, v61, OS_LOG_TYPE_DEBUG, "Coverage for fallback smaller: %f  fallback larger: %f  Fallback smaller and larger: %f", &v148, 0x20u);
      }

      v62 = fmax(v158, v159);
      v63 = &v159;
      if (v158 >= v159)
      {
        v63 = &v158;
      }

      v64 = 16;
      if (v62 >= v160[0])
      {
        v64 = 8 * (v158 < v159);
      }

      v65 = v160;
      if (v62 >= v160[0])
      {
        v65 = v63;
      }

      v66 = *(&v158 + v64);
      if (v66 <= 0.0)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v69 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v148.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v69, OS_LOG_TYPE_DEBUG, "failed to fill hole!", &v148, 2u);
        }

        goto LABEL_174;
      }

      v67 = v65 - &v158;
      if (v67 == 2)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v71 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v148.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v71, OS_LOG_TYPE_DEBUG, "Filled hole by falling back both tiles of pair", &v148, 2u);
        }

        std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(&v129, v130, v24[18], v24[19], 0x6DB6DB6DB6DB6DB7 * ((v24[19] - v24[18]) >> 4));
      }

      else
      {
        if (v67 != 1)
        {
          if (!v67)
          {
            if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
            }

            v68 = GEOGetVectorKitDrapingFallbackLog_log;
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v148.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_1B2754000, v68, OS_LOG_TYPE_DEBUG, "Filled hole by falling back smaller tile of pair", &v148, 2u);
            }

            std::vector<gdc::LayerDataRequestKey>::__insert_with_size[abi:nn200100]<std::__wrap_iter<gdc::LayerDataRequestKey const*>,std::__wrap_iter<gdc::LayerDataRequestKey const*>>(&v129, v130, v24[18], v24[19], 0x6DB6DB6DB6DB6DB7 * ((v24[19] - v24[18]) >> 4));
          }

          goto LABEL_174;
        }

        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v70 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v148.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&dword_1B2754000, v70, OS_LOG_TYPE_DEBUG, "Filled hole by falling back larger tile of pair", &v148, 2u);
        }
      }

      std::vector<gdc::LayerDataRequestKey>::push_back[abi:nn200100](&v129, (v24 + 4));
LABEL_174:
      v148.__r_.__value_.__r.__words[0] = buf;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v148);
      v148.__r_.__value_.__r.__words[0] = &v151;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v148);
      if (v140.__r_.__value_.__r.__words[0])
      {
        operator delete(v140.__r_.__value_.__l.__data_);
      }

      v72 = v24[1];
      if (v72)
      {
        do
        {
          v73 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v73 = v38[2];
          v44 = *v73 == v38;
          v38 = v73;
        }

        while (!v44);
      }

      v24 = v73;
      if (v73 == v133)
      {
        v74 = a3;
        v116 = *a3;
        goto LABEL_184;
      }
    }
  }

  v74 = a3;
LABEL_184:
  v75 = v74[1];
  if (v75)
  {
    atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v129 != v130)
  {
    v113 = v75;
    if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
    }

    v76 = GEOGetVectorKitDrapingFallbackLog_log;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v148.__r_.__value_.__l.__data_) = 134217984;
      *(v148.__r_.__value_.__r.__words + 4) = 0x6DB6DB6DB6DB6DB7 * ((v130 - v129) >> 4);
      _os_log_impl(&dword_1B2754000, v76, OS_LOG_TYPE_DEBUG, "Holding back %zu tiles", &v148, 0xCu);
    }

    v77 = v129;
    v115 = v130;
    while (v77 != v115)
    {
      if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
      }

      v78 = GEOGetVectorKitDrapingFallbackLog_log;
      v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG);

      if (v79)
      {
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v80 = GEOGetVectorKitDrapingFallbackLog_log;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          gdc::LayerDataRequestKey::keysInt32Str(&v148, v77);
          v81 = &v148;
          if ((v148.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v81 = v148.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          *&buf[4] = v81;
          _os_log_impl(&dword_1B2754000, v80, OS_LOG_TYPE_DEBUG, "Holding back %s", buf, 0xCu);
          if (SHIBYTE(v148.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v148.__r_.__value_.__l.__data_);
          }
        }
      }

      md::SceneStateManager::setHasLayerDataDependency(v116, v77);
      v82 = gdc::Camera::cameraFrame(v77);
      gdc::LayerDataKey::LayerDataKey(&v158, v82);
      gdc::LayerDataRequestKey::LayerDataRequestKey(&v148, 1u, &v158);
      if (*&v159 != *&v160[1])
      {
        free(*&v159);
      }

      md::SceneStateManager::setHasLayerDataDependency(v116, &v148);
      gdc::LayerDataRequestKey::LayerDataRequestKey(__p, v77);
      md::DrapingLogic::_fallbackTilesForHoleTile(v143, a1, __p, *(v111 + 56));
      if (v156 != v157)
      {
        free(v156);
      }

      v83 = v143[0];
      v84 = v143[1];
      while (v83 != v84)
      {
        gdc::LayerDataRequestKey::LayerDataRequestKey(buf, v83);
        if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
        }

        v85 = GEOGetVectorKitDrapingFallbackLog_log;
        v86 = os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG);

        if (v86)
        {
          if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
          }

          v87 = GEOGetVectorKitDrapingFallbackLog_log;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
          {
            gdc::LayerDataRequestKey::keysInt32Str(&v140, buf);
            v88 = &v140;
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v88 = v140.__r_.__value_.__r.__words[0];
            }

            LODWORD(v151) = 136315138;
            *(&v151 + 4) = v88;
            _os_log_impl(&dword_1B2754000, v87, OS_LOG_TYPE_DEBUG, "Replacing this with %s", &v151, 0xCu);
            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }
          }
        }

        v89 = a1[58];
        v90 = *(v89 + 80);
        v91 = *(v89 + 88);
        if (v90 == v91)
        {
          goto LABEL_226;
        }

        while (*v90 != *&buf[8])
        {
          v90 += 8;
          if (v90 == v91)
          {
            goto LABEL_226;
          }
        }

        if (v90 == v91)
        {
LABEL_226:
          v92 = 0;
        }

        else
        {
          v92 = *(v90 + 1);
        }

        gdc::LayerDataStore::get(v141, v92, buf);
        gdc::Tiled::tileFromLayerDataKey(&v140, *(v77 + 16));
        gdc::Tiled::tileFromLayerDataKey(&v151, *&buf[16]);
        if (v140.__r_.__value_.__s.__data_[1] <= BYTE1(v151))
        {
          v93 = BYTE1(v151);
        }

        else
        {
          v93 = v140.__r_.__value_.__s.__data_[1];
        }

        v94 = &v140;
        if (v140.__r_.__value_.__s.__data_[1] < BYTE1(v151))
        {
          v94 = &v151;
        }

        v96 = HIDWORD(v94->__r_.__value_.__r.__words[0]);
        v95 = v94->__r_.__value_.__r.__words[1];
        v97 = v94->__r_.__value_.__s.__data_[0];
        v98 = *(v111 + 64);
        v138 = 0;
        v137 = 0;
        v139 = 0;
        v99 = *(v98 + 24);
        if (v99)
        {
          v100 = 0;
          while (1)
          {
            if (*(v99 + 16) == v97)
            {
              v101 = *(v99 + 17);
              v102 = v101 - v93;
              if (v101 >= v93)
              {
                if (v101 == v93 && *(v99 + 5) == v96)
                {
                  v104 = v95;
                  v103 = v96;
                  if (*(v99 + 6) == v95)
                  {
LABEL_249:
                    if (v100 >= v139)
                    {
                      v100 = std::vector<geo::QuadTile>::__emplace_back_slow_path<geo::QuadTile const&>(&v137, (v99 + 2));
                    }

                    else
                    {
                      v100[24] = 0;
                      v100[1] = v101;
                      *(v100 + 1) = v103;
                      *(v100 + 2) = v104;
                      *v100 = v97;
                      *(v100 + 2) = v99[4];
                      v100[24] = *(v99 + 40);
                      v100 += 32;
                    }

                    v138 = v100;
                    goto LABEL_253;
                  }
                }
              }

              else
              {
                v103 = v96 >> (v93 - v101);
                if (*(v99 + 5) == v103)
                {
                  v104 = v95 >> (v93 - v101);
                  if (*(v99 + 6) == v104)
                  {
                    goto LABEL_249;
                  }
                }
              }

              if (v93 >= v101)
              {
                if (v93 != v101 || v96 != *(v99 + 5))
                {
                  goto LABEL_253;
                }

                v105 = *(v99 + 6);
                v104 = v95;
                v103 = v96;
              }

              else
              {
                v103 = *(v99 + 5);
                if (v96 != v103 >> v102)
                {
                  goto LABEL_253;
                }

                v104 = *(v99 + 6);
                v105 = v104 >> v102;
              }

              if (v95 == v105)
              {
                goto LABEL_249;
              }
            }

LABEL_253:
            v99 = *v99;
            if (!v99)
            {
              v106 = v137;
              if (v137 != v100)
              {
                do
                {
                  *(&v134 + 4) = *(v106 + 4);
                  LOWORD(v134) = *v106;
                  v135 = *(v106 + 2);
                  v136 = v106[24];
                  gdc::LayerDataCollector::addFallbackData(v23, buf, &v134, v141);
                  v106 += 32;
                }

                while (v106 != v100);
                v106 = v137;
              }

              if (v106)
              {
                v138 = v106;
                operator delete(v106);
              }

              break;
            }
          }
        }

        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        if (*&buf[16] != v154)
        {
          free(*&buf[16]);
        }

        v83 += 112;
      }

      *buf = v143;
      std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](buf);
      if (v148.__r_.__value_.__r.__words[2] != v150)
      {
        free(v148.__r_.__value_.__r.__words[2]);
      }

      v77 += 112;
    }

    gdc::LayerDataCollector::sortIndexList(v23);
    v75 = v113;
  }

  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v75);
  }

  v148.__r_.__value_.__r.__words[0] = &v129;
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&v148);
  std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(v133[0]);
}

void sub_1B2BF6488(_Unwind_Exception *a1)
{
  STACK[0x6F0] = &STACK[0x680];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x6F0]);
  STACK[0x6F0] = &STACK[0x660];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x6F0]);
  if (STACK[0x4A8])
  {
    operator delete(STACK[0x4A8]);
  }

  STACK[0x680] = &STACK[0x440];
  std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](&STACK[0x680]);
  std::__tree<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::__map_value_compare<gdc::LayerDataRequestKey,std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>,std::less<gdc::LayerDataRequestKey>,true>,std::allocator<std::__value_type<gdc::LayerDataRequestKey,std::vector<gdc::LayerDataRequestKey>>>>::destroy(STACK[0x460]);
  _Unwind_Resume(a1);
}

uint64_t gdc::Registry::view<md::components::MeshInstance,md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(uint64_t a1)
{
  v2 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(a1);
  return v2;
}

void _ZNK3gdc12RegistryViewIJN2md10components12MeshInstanceENS1_17overlayComponents18FoundationMeshTypeILN3gss8MeshTypeE24EEEEE4eachIZNS1_12DrapingLogic29runBeforeLayoutAtVariableRateERKNS1_13LayoutContextERKNS1_17LogicDependenciesIJNS_8TypeListIJNS1_15OverlaysContextENS1_13CameraContextENS1_19PendingSceneContextENS1_16ElevationContextEEEENSG_IJEEEEE20ResolvedDependenciesERNS1_14DrapingContextEE3__4EEvT_(void *result, uint64_t *a2, __int128 **a3)
{
  v7 = *result;
  v6 = result[1];
  v8 = *result + 32;
  if (!*result)
  {
    v8 = 0;
  }

  v9 = v6 + 32;
  if (!v6)
  {
    v9 = 0;
  }

  if (*(v9 + 32) - *(v9 + 24) >= *(v8 + 32) - *(v8 + 24))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    v11 = v7[7];
    v12 = v7[8];
    if (v11 != v12)
    {
      v13 = v7[10];
      do
      {
        v14 = result[1];
        if (*(v14 + 64) != geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((v14 + 32), *(v11 + 4)))
        {
          v15 = *v11;
          HasDebug = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
          if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(HasDebug, v15))
          {
            v17 = a3[1];
            v18 = a3[2];
            if (v17 >= v18)
            {
              v25 = 0x6DB6DB6DB6DB6DB7 * (v17 - *a3);
              v26 = v25 + 1;
              if ((v25 + 1) > 0x249249249249249)
              {
LABEL_60:
                std::__throw_bad_array_new_length[abi:nn200100]();
              }

              v27 = 0x6DB6DB6DB6DB6DB7 * (v18 - *a3);
              if (2 * v27 > v26)
              {
                v26 = 2 * v27;
              }

              if (v27 >= 0x124924924924924)
              {
                v28 = 0x249249249249249;
              }

              else
              {
                v28 = v26;
              }

              if (v28)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v28);
              }

              v29 = 112 * v25;
              v30 = *v13;
              v31 = v13[2];
              *(v29 + 16) = v13[1];
              *(v29 + 32) = v31;
              *v29 = v30;
              v32 = v13[3];
              v33 = v13[4];
              v34 = v13[6];
              *(v29 + 80) = v13[5];
              *(v29 + 96) = v34;
              *(v29 + 48) = v32;
              *(v29 + 64) = v33;
              v35 = *a3;
              v36 = a3[1];
              v37 = (112 * v25 + *a3 - v36);
              if (*a3 != v36)
              {
                v38 = (v29 + *a3 - v36);
                do
                {
                  v39 = *v35;
                  v40 = v35[2];
                  v38[1] = v35[1];
                  v38[2] = v40;
                  *v38 = v39;
                  v41 = v35[3];
                  v42 = v35[4];
                  v43 = v35[6];
                  v38[5] = v35[5];
                  v38[6] = v43;
                  v38[3] = v41;
                  v38[4] = v42;
                  v35 += 7;
                  v38 += 7;
                }

                while (v35 != v36);
                v35 = *a3;
              }

              v24 = (v29 + 112);
              *a3 = v37;
              a3[1] = (v29 + 112);
              a3[2] = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              v19 = *v13;
              v20 = v13[2];
              v17[1] = v13[1];
              v17[2] = v20;
              *v17 = v19;
              v21 = v13[3];
              v22 = v13[4];
              v23 = v13[6];
              v17[5] = v13[5];
              v17[6] = v23;
              v17[3] = v21;
              v17[4] = v22;
              v24 = v17 + 7;
            }

            a3[1] = v24;
            v44 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
            gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v44, v15);
          }
        }

        v13 += 7;
        v11 += 8;
      }

      while (v11 != v12);
      v6 = result[1];
    }
  }

  v45 = v6 + 32;
  if (!v6)
  {
    v45 = 0;
  }

  if (v45 == v10)
  {
    v46 = *(v6 + 56);
    for (i = *(v6 + 64); v46 != i; v46 += 8)
    {
      v48 = *result;
      Index = geo::sparse_set<gdc::Entity,unsigned short,256ul>::findIndex((*result + 32), *(v46 + 4));
      v50 = v48[8];
      if (v50 != Index)
      {
        v51 = *v46;
        v52 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(v48 + 4, HIDWORD(*v46));
        v53 = (v50 == v52 ? v48[11] : v48[10] + 112 * ((v52 - v48[7]) >> 3));
        v54 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
        if (!gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::get(v54, v51))
        {
          v55 = a3[1];
          v56 = a3[2];
          if (v55 >= v56)
          {
            v63 = 0x6DB6DB6DB6DB6DB7 * (v55 - *a3);
            v64 = v63 + 1;
            if ((v63 + 1) > 0x249249249249249)
            {
              goto LABEL_60;
            }

            v65 = 0x6DB6DB6DB6DB6DB7 * (v56 - *a3);
            if (2 * v65 > v64)
            {
              v64 = 2 * v65;
            }

            if (v65 >= 0x124924924924924)
            {
              v66 = 0x249249249249249;
            }

            else
            {
              v66 = v64;
            }

            if (v66)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v66);
            }

            v67 = 112 * v63;
            v68 = *v53;
            v69 = v53[2];
            *(v67 + 16) = v53[1];
            *(v67 + 32) = v69;
            *v67 = v68;
            v70 = v53[3];
            v71 = v53[4];
            v72 = v53[6];
            *(v67 + 80) = v53[5];
            *(v67 + 96) = v72;
            *(v67 + 48) = v70;
            *(v67 + 64) = v71;
            v73 = *a3;
            v74 = a3[1];
            v75 = (112 * v63 + *a3 - v74);
            if (*a3 != v74)
            {
              v76 = (v67 + *a3 - v74);
              do
              {
                v77 = *v73;
                v78 = v73[2];
                v76[1] = v73[1];
                v76[2] = v78;
                *v76 = v77;
                v79 = v73[3];
                v80 = v73[4];
                v81 = v73[6];
                v76[5] = v73[5];
                v76[6] = v81;
                v76[3] = v79;
                v76[4] = v80;
                v73 += 7;
                v76 += 7;
              }

              while (v73 != v74);
              v73 = *a3;
            }

            v62 = (v67 + 112);
            *a3 = v75;
            a3[1] = (v67 + 112);
            a3[2] = 0;
            if (v73)
            {
              operator delete(v73);
            }
          }

          else
          {
            v57 = *v53;
            v58 = v53[2];
            v55[1] = v53[1];
            v55[2] = v58;
            *v55 = v57;
            v59 = v53[3];
            v60 = v53[4];
            v61 = v53[6];
            v55[5] = v53[5];
            v55[6] = v61;
            v55[3] = v59;
            v55[4] = v60;
            v62 = v55 + 7;
          }

          a3[1] = v62;
          v82 = gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(*a2);
          gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v82, v51);
        }
      }
    }
  }
}

void gdc::Registry::add<md::components::MeshInstance,md::components::Material,md::components::Visibility,md::components::Collapsible,md::components::IntendedSceneLayer,md::components::CustomRenderState>(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, char *a5, char *a6, uint64_t *a7)
{
  v14 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v14, a2, a3);
  v15 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::emplace(v15, a2, a4);
  v16 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v16, a2, a5);
  v17 = gdc::Registry::storage<md::components::Collapsible>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v17, a2);
  v18 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);
  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v18, a2, a6);
  v19 = gdc::Registry::storage<md::components::CustomRenderState>(a1);

  gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(v19, a2, a7);
}

void gdc::Registry::add<md::components::MeshInstance,md::components::Material,md::components::Visibility,md::components::Collapsible,md::components::IntendedSceneLayer>(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4, char *a5, char *a6)
{
  v12 = gdc::Registry::storage<md::components::MeshInstance>(a1);
  gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(v12, a2, a3);
  v13 = gdc::Registry::storage<md::components::Material>(a1);
  gdc::ComponentStorageWrapper<md::components::Material>::emplace(v13, a2, a4);
  v14 = gdc::Registry::storage<md::components::Visibility>(a1);
  gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(v14, a2, a5);
  v15 = gdc::Registry::storage<md::components::Collapsible>(a1);
  gdc::ComponentStorageWrapper<md::components::QueuedForDestruction<>>::emplace(v15, a2);
  v16 = gdc::Registry::storage<md::components::IntendedSceneLayer>(a1);

  gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(v16, a2, a6);
}

uint64_t md::DrapingLogic::_cleanUpStaleDrapingTasks(gdc::Registry *,md::SceneContext const&)::$_0::operator()(md::SceneContext **a1, unint64_t *a2, unint64_t *a3, int a4)
{
  v5 = a2[1];
  if (!v5)
  {
    return 1;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  v11 = *a2;
  if (!*a2 || (v12 = a3[1]) == 0 || (v13 = std::__shared_weak_count::lock(v12)) == 0)
  {
    v17 = 1;
    goto LABEL_35;
  }

  v14 = v13;
  v15 = *a3;
  if (!*a3)
  {
    v17 = 1;
    goto LABEL_34;
  }

  v16 = md::SceneContext::layerDataInView(*a1, 33);
  v17 = 1;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = v16[1];
  if (!v18)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v19 = *(v18 + 48);
    v20 = *(v18 + 32);
    v21 = v11 < v20;
    if (*(v18 + 48))
    {
      v21 = v19 > 0;
    }

    if (v21)
    {
      goto LABEL_15;
    }

    v22 = v20 < v11;
    v23 = v19 == 0;
    v24 = v19 < 0;
    if (v23)
    {
      v24 = v22;
    }

    if (!v24)
    {
      break;
    }

    v18 += 8;
LABEL_15:
    v18 = *v18;
    if (!v18)
    {
      v17 = 1;
      goto LABEL_33;
    }
  }

  v25 = md::SceneContext::layerDataInView(*a1, a4);
  v17 = 1;
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v26 = v25[1];
  if (v26)
  {
    while (1)
    {
      v27 = *(v26 + 48);
      v28 = *(v26 + 32);
      v29 = v15 < v28;
      if (*(v26 + 48))
      {
        v29 = v27 > 0;
      }

      if (!v29)
      {
        v30 = v28 < v15;
        v23 = v27 == 0;
        v31 = v27 < 0;
        if (v23)
        {
          v31 = v30;
        }

        if (!v31)
        {
          v17 = 0;
          break;
        }

        v26 += 8;
      }

      v26 = *v26;
      if (!v26)
      {
        v17 = 1;
        break;
      }
    }
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_33:
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
LABEL_34:
  std::__shared_weak_count::__release_shared[abi:nn200100](v14);
LABEL_35:
  std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  return v17;
}

uint64_t std::__hash_table<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::__unordered_map_hasher<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,md::OverlayKeyHash,std::equal_to<md::OverlayKey>,true>,std::__unordered_map_equal<md::OverlayKey,std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,std::equal_to<md::OverlayKey>,md::OverlayKeyHash,true>,std::allocator<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>>>::erase(void *a1, uint64_t *a2)
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
  if (v7 != a1 + 2)
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
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,void *>>>::operator()[abi:nn200100](1, a2);
  return v4;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<md::OverlayKey,std::shared_ptr<md::DrapingTaskInfo>>,void *>>>::operator()[abi:nn200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[10];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void gdc::ComponentStorageWrapper<md::components::MeshInstance>::emplace(void *a1, uint64_t a2, _OWORD *a3)
{
  v44 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v44);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v23 = a1[10];
      v24 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v23) >> 4);
      v25 = v24 + 1;
      if ((v24 + 1) > 0x249249249249249)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v26 = 0x6DB6DB6DB6DB6DB7 * ((v8 - v23) >> 4);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0x124924924924924)
      {
        v27 = 0x249249249249249;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(v27);
      }

      v28 = 112 * v24;
      v29 = *a3;
      v30 = a3[2];
      *(v28 + 16) = a3[1];
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = a3[3];
      v32 = a3[4];
      v33 = a3[6];
      *(v28 + 80) = a3[5];
      *(v28 + 96) = v33;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      v14 = 112 * v24 + 112;
      v34 = a1[10];
      v35 = a1[11];
      v36 = 112 * v24 + v34 - v35;
      if (v34 != v35)
      {
        v37 = (112 * v24 + v34 - v35);
        do
        {
          v38 = *v34;
          v39 = *(v34 + 2);
          v37[1] = *(v34 + 1);
          v37[2] = v39;
          *v37 = v38;
          v40 = *(v34 + 3);
          v41 = *(v34 + 4);
          v42 = *(v34 + 6);
          v37[5] = *(v34 + 5);
          v37[6] = v42;
          v37[3] = v40;
          v37[4] = v41;
          v34 += 112;
          v37 += 7;
        }

        while (v34 != v35);
        v34 = a1[10];
      }

      a1[10] = v36;
      a1[11] = v14;
      a1[12] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      v9 = *a3;
      v10 = a3[2];
      v7[1] = a3[1];
      v7[2] = v10;
      *v7 = v9;
      v11 = a3[3];
      v12 = a3[4];
      v13 = a3[6];
      v7[5] = a3[5];
      v7[6] = v13;
      v7[3] = v11;
      v7[4] = v12;
      v14 = (v7 + 7);
    }

    a1[11] = v14;
    v21 = a1[31];
    goto LABEL_29;
  }

  v15 = 0;
  v16 = a1[10] + 112 * ((v5 - a1[7]) >> 3);
  v17 = *a3;
  v18 = a3[1];
  *(v16 + 32) = *(a3 + 32);
  *v16 = v17;
  *(v16 + 16) = v18;
  do
  {
    *(v16 + 36 + v15) = *(a3 + v15 + 36);
    v15 += 4;
  }

  while (v15 != 12);
  for (i = 0; i != 12; i += 4)
  {
    *(v16 + 48 + i) = *(a3 + i + 48);
  }

  for (j = 0; j != 48; j += 4)
  {
    *(v16 + 60 + j) = *(a3 + j + 60);
  }

  v21 = a1[31];
  if (v16 == a1[11])
  {
LABEL_29:
    for (k = a1[22]; k; k = *k)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(k[6], v21, &v44, 1);
    }

    return;
  }

  for (m = a1[16]; m; m = *m)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(m[6], v21, &v44, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::Material>::emplace(void *a1, uint64_t a2, void *a3)
{
  v34 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v34);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v17 = a1[10];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v17) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v17) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 24 * v18;
      v23 = a3[1];
      *v22 = *a3;
      *(v22 + 8) = v23;
      v24 = a3[2];
      *(v22 + 16) = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = (v22 + 24);
      v33 = (v22 + 24);
      v26 = a1[10];
      v25 = a1[11];
      v27 = v22 + v26 - v25;
      if (v25 != v26)
      {
        v28 = a1[10];
        v29 = v27;
        do
        {
          *v29 = *v28;
          *(v29 + 8) = *(v28 + 8);
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          v28 += 24;
          v29 += 24;
        }

        while (v28 != v25);
        do
        {
          v30 = *(v26 + 16);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          v26 += 24;
        }

        while (v26 != v25);
      }

      v31 = a1[10];
      a1[10] = v27;
      *(a1 + 11) = v33;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      v7[1] = v9;
      v10 = a3[2];
      v7[2] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v7 + 3;
    }

    a1[11] = v11;
    v15 = a1[31];
LABEL_32:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v34, 1);
    }

    return;
  }

  v12 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  *v12 = *a3;
  v13 = *(a3 + 1);
  a3[1] = 0;
  a3[2] = 0;
  v14 = *(v12 + 16);
  *(v12 + 8) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v15 = a1[31];
  if (v12 == a1[11])
  {
    goto LABEL_32;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v34, 1);
  }
}

void gdc::ComponentStorageWrapper<md::components::Visibility>::emplace(void *a1, uint64_t a2, char *a3)
{
  v21 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v21);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14);
      v16 = v8 - v14 + 1;
      if (v16 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      v19 = v8 - v14;
      *v15 = *a3;
      v9 = v15 + 1;
      memcpy(0, v14, v19);
      a1[10] = 0;
      a1[11] = v15 + 1;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_19;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_19:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v21, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v21, 1);
  }
}

uint64_t gdc::Registry::storage<md::components::Collapsible>(uint64_t a1)
{
  v3 = 0x3FD9D9EF0A6A9A58;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x3FD9D9EF0A6A9A58uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

uint64_t gdc::Registry::storage<md::components::IntendedSceneLayer>(uint64_t a1)
{
  v3 = 0x8217BEFF5E3814C6;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x8217BEFF5E3814C6);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

void gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::emplace(void *a1, uint64_t a2, char *a3)
{
  v23 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v23);
  if (v6)
  {
    v8 = a1[11];
    v7 = a1[12];
    if (v8 >= v7)
    {
      v14 = a1[10];
      v15 = (v8 - v14);
      v16 = v8 - v14 + 1;
      if (v16 < 0)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = v7 - v14;
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        operator new();
      }

      *v15 = *a3;
      v9 = v15 + 1;
      if (v14 != v8)
      {
        v19 = v14;
        v20 = 0;
        do
        {
          v21 = *v19++;
          *v20++ = v21;
        }

        while (v19 != v8);
      }

      a1[10] = 0;
      a1[11] = v9;
      a1[12] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v8 = *a3;
      v9 = v8 + 1;
    }

    a1[11] = v9;
    v12 = a1[31];
    goto LABEL_22;
  }

  v10 = a1[11];
  v11 = (a1[10] + ((v5 - a1[7]) >> 3));
  *v11 = *a3;
  v12 = a1[31];
  if (v11 == v10)
  {
LABEL_22:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v12, &v23, 1);
    }

    return;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v12, &v23, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::IntendedSceneLayer>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Collapsible>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::components::Collapsible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Collapsible>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Visibility>::remove(void *a1, uint64_t a2)
{
  v12 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10];
    v7 = (v3 - a1[7]) >> 3;
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v8 = a1[11];
    *(v6 + v7) = *(v8 - 1);
    a1[11] = v8 - 1;
    v9 = a1[28];
    if (v9)
    {
      v10 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v9[6], v10, &v12, 1);
        v9 = *v9;
      }

      while (v9);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Visibility>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Visibility>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

BOOL gdc::ComponentStorageWrapper<md::components::Material>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = (a1[10] + 24 * ((v3 - a1[7]) >> 3));
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v8 = *(v7 - 16);
    *v6 = *(v7 - 24);
    v9 = *(v7 - 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = v6[2];
    v6[1] = v8;
    v6[2] = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    v11 = a1[11];
    v12 = *(v11 - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 24;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::Material>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::Material>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::Material>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<md::components::MeshInstance>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

BOOL gdc::ComponentStorageWrapper<md::components::MeshInstance>::remove(void *a1, uint64_t a2)
{
  v17 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 112 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = 0;
    v8 = a1[11];
    v9 = *(v8 - 112);
    v10 = *(v8 - 96);
    *(v6 + 32) = *(v8 - 80);
    *v6 = v9;
    *(v6 + 16) = v10;
    do
    {
      *(v6 + 36 + v7) = *(v8 - 76 + v7);
      v7 += 4;
    }

    while (v7 != 12);
    for (i = 0; i != 12; i += 4)
    {
      *(v6 + 48 + i) = *(v8 - 64 + i);
    }

    v12 = 0;
    v13 = v8 - 52;
    do
    {
      *(v6 + 60 + v12) = *(v13 + v12);
      v12 += 4;
    }

    while (v12 != 48);
    a1[11] -= 112;
    v14 = a1[28];
    if (v14)
    {
      v15 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v14[6], v15, &v17, 1);
        v14 = *v14;
      }

      while (v14);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::MeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::components::MeshInstance>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void gdc::ComponentStorageWrapper<md::components::CustomRenderState>::emplace(void *a1, uint64_t a2, uint64_t *a3)
{
  v34 = a2;
  v5 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::insert(a1 + 4, &v34);
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[12];
    if (v7 >= v8)
    {
      v17 = a1[10];
      v18 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v17) >> 3);
      v19 = v18 + 1;
      if (v18 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v17) >> 3);
      if (2 * v20 > v19)
      {
        v19 = 2 * v20;
      }

      if (v20 >= 0x555555555555555)
      {
        v21 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v22 = 24 * v18;
      v23 = a3[1];
      *v22 = *a3;
      *(v22 + 8) = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      *(24 * v18 + 0x10) = *(a3 + 16);
      v10 = v22 + 24;
      v33 = (v22 + 24);
      v25 = a1[10];
      v24 = a1[11];
      v26 = v22 + v25 - v24;
      if (v25 != v24)
      {
        v27 = a1[10];
        v28 = v22 + v25 - v24;
        do
        {
          v29 = *(v27 + 8);
          *v28 = *v27;
          *(v28 + 8) = v29;
          if (v29)
          {
            atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          }

          *(v28 + 16) = *(v27 + 16);
          v27 += 24;
          v28 += 24;
        }

        while (v27 != v24);
        do
        {
          v30 = *(v25 + 8);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v30);
          }

          v25 += 24;
        }

        while (v25 != v24);
      }

      v31 = a1[10];
      a1[10] = v26;
      *(a1 + 11) = v33;
      if (v31)
      {
        operator delete(v31);
      }
    }

    else
    {
      v9 = a3[1];
      *v7 = *a3;
      *(v7 + 8) = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(v7 + 16) = *(a3 + 16);
      v10 = v7 + 24;
    }

    a1[11] = v10;
    v15 = a1[31];
LABEL_36:
    for (i = a1[22]; i; i = *i)
    {
      std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(i[6], v15, &v34, 1);
    }

    return;
  }

  v11 = a1[10] + 24 * ((v5 - a1[7]) >> 3);
  v13 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(v11 + 8);
  *v11 = v13;
  *(v11 + 8) = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  *(v11 + 16) = *(a3 + 16);
  v15 = a1[31];
  if (v11 == a1[11])
  {
    goto LABEL_36;
  }

  for (j = a1[16]; j; j = *j)
  {
    std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(j[6], v15, &v34, 1);
  }
}

BOOL gdc::ComponentStorageWrapper<md::components::CustomRenderState>::remove(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = v3;
  v5 = a1[8];
  if (v5 != v3)
  {
    v6 = a1[10] + 24 * ((v3 - a1[7]) >> 3);
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    v7 = a1[11];
    v9 = *(v7 - 24);
    v8 = *(v7 - 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(v6 + 8);
    *v6 = v9;
    *(v6 + 8) = v8;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }

    *(v6 + 16) = *(v7 - 8);
    v11 = a1[11];
    v12 = *(v11 - 16);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    a1[11] = v11 - 24;
    v13 = a1[28];
    if (v13)
    {
      v14 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v13[6], v14, &v16, 1);
        v13 = *v13;
      }

      while (v13);
    }
  }

  return v5 != v4;
}

void gdc::ComponentStorageWrapper<md::components::CustomRenderState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v3 = (a1 + 80);
  std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v3);

  JUMPOUT(0x1B8C62190);
}

void std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v6 = *(v4 - 2);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t gdc::ComponentStorageWrapper<md::components::CustomRenderState>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v4 = (a1 + 80);
  std::vector<md::components::CustomRenderState>::__destroy_vector::operator()[abi:nn200100](&v4);
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);
  return a1;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySsaoIntensity(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 848))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyDryAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 824))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyWetAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 800))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColdAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 776))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyHotAdjustment(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 752))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColorRampRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 728))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyGradientMaskFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 704))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissiveFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 680))();
  }

  return result;
}

void md::VectorOverlayMaterial::albedoFactorRGB(md::VectorOverlayMaterial *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 16);
  v6 = *(this + 7);
  v7 = v3;
  *a2 = geo::colorTransform<geo::ReverseGammaCorrection>(geo::reverseSRGBGammaCorrection, &v6);
  *(a2 + 4) = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = 1;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedoFactorRGB(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 656))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlpha(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 632))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyNoColorCorrection(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 608))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyHideOnCollapse(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 584))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyGradientMaskFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 560))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyBrightnessRemapRange(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 536))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySaturationRemapRange(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 512))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAcceptsOverlays(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 488))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyBrightnessFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySaturationFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 440))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyColorRamp(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 416))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyCastShadow(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 392))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyShininess(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 368))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnySpecularity(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 344))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyOffset(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 320))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyTiling(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 296))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyVisibility(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 272))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyLineWidth(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyZIndex(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t md::VectorOverlayMaterial::albedoFactor@<X0>(md::VectorOverlayMaterial *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 56);
  result = geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(a2, &v4);
  *(a2 + 16) = 1;
  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedoFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissiveFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyMetallicFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 152))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyRoughnessFactor(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 128))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyEmissive(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 104))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyRoughnessMetallic(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyNormal(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t gms::Material<ggl::Texture2D>::hasAnyAlbedo(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void md::VectorOverlayMaterial::~VectorOverlayMaterial(md::VectorOverlayMaterial *this)
{
  gms::Material<ggl::Texture2D>::~Material(this);

  JUMPOUT(0x1B8C62190);
}

void gms::Material<ggl::Texture2D>::~Material(void *a1)
{
  gms::Material<ggl::Texture2D>::~Material(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<md::VectorOverlayMaterial>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F29E1F78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::Registry::storage<md::overlayComponents::HasDebugDisplay>(uint64_t a1)
{
  v3 = 0x6A5EB78DB32E8B87;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x6A5EB78DB32E8B87uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::HasDebugDisplay>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

uint64_t gdc::Registry::storage<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>(uint64_t a1)
{
  v3 = 0x5C60C89240C40C60;
  v1 = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<gdc::ComponentStorageWrapperBase>>>>::find<unsigned long>((a1 + 120), 0x5C60C89240C40C60uLL);
  if (!v1)
  {
    operator new();
  }

  return v1[3];
}

BOOL gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::remove(void *a1, uint64_t a2)
{
  v8 = a2;
  v3 = geo::sparse_set<gdc::Entity,unsigned short,256ul>::find(a1 + 4, HIDWORD(a2));
  v4 = a1[8];
  if (v4 != v3)
  {
    geo::sparse_set<gdc::Entity,unsigned short,256ul>::erase((a1 + 4), v3);
    --a1[11];
    v5 = a1[28];
    if (v5)
    {
      v6 = a1[31];
      do
      {
        std::function<void ()(gdc::Registry *,std::span<gdc::Entity,18446744073709551615ul>)>::operator()(v5[6], v6, &v8, 1);
        v5 = *v5;
      }

      while (v5);
    }
  }

  return v4 != v3;
}

void gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v4);

  JUMPOUT(0x1B8C62190);
}

uint64_t gdc::ComponentStorageWrapper<md::overlayComponents::FoundationMeshType<(gss::MeshType)24>>::~ComponentStorageWrapper(uint64_t a1)
{
  gdc::ComponentStorageSignals::~ComponentStorageSignals((a1 + 104));
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v5 = (a1 + 32);
  std::vector<std::unique_ptr<std::array<unsigned short,128ul>>>::__destroy_vector::operator()[abi:nn200100](&v5);
  return a1;
}

void *_ZNSt3__110__function6__funcIZN2md12DrapingLogic29runBeforeLayoutAtVariableRateERKNS2_13LayoutContextERKNS2_17LogicDependenciesIJN3gdc8TypeListIJNS2_15OverlaysContextENS2_13CameraContextENS2_19PendingSceneContextENS2_16ElevationContextEEEENS9_IJEEEEE20ResolvedDependenciesERNS2_14DrapingContextEE3__1NS_9allocatorISM_EEFbRKPNS8_8RegistryEEEclESS_(uint64_t a1, void **a2)
{
  v2 = *a2;
  result = gdc::Context::context<md::components::SharedTransformData>(*a2);
  if (result)
  {
    return (gdc::Context::context<md::overlayComponents::Overlayable>(v2) != 0);
  }

  return result;
}

void *gdc::Context::context<md::overlayComponents::Overlayable>(void *a1)
{
  result = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](a1, 0x41A3BFA74D47A0E8uLL);
  if (result)
  {
    v2 = result[5];
    if (*(v2 + 8) == 0x41A3BFA74D47A0E8)
    {
      return *(v2 + 32);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__destroy_at[abi:nn200100]<md::FoundationOverlayPair,0>(void *a1)
{
  v2 = a1[16];
  if (v2 != a1[18])
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3 != a1[4])
  {

    free(v3);
  }
}

void std::vector<gdc::LayerDataRequestKey>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<gdc::LayerDataRequestKey>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t anonymous namespace::_tileListToString(void *a1, unsigned __int16 **a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v11);
  __p.__r_.__value_.__s.__data_[0] = 91;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, &__p, 1);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      gdc::LayerDataRequestKey::keysInt32Str(&__p, v4);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, p_p, size);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, " ", 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v4 += 56;
    }

    while (v4 != v5);
  }

  __p.__r_.__value_.__s.__data_[0] = 93;
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v12, &__p, 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:nn200100](a1, v11);
  v11[0] = *MEMORY[0x1E69E54D8];
  v8 = *(MEMORY[0x1E69E54D8] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v12 = v8;
  v13 = MEMORY[0x1E69E5548] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x1B8C620C0](&v16);
}

void sub_1B2BFA5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a15 = *MEMORY[0x1E69E54D8];
  v35 = *(MEMORY[0x1E69E54D8] + 72);
  *(&a15 + *(a15 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  a17 = v35;
  a18 = MEMORY[0x1E69E5548] + 16;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  a18 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a19);
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C620C0](&a34);
  _Unwind_Resume(a1);
}

void std::__tree<gdc::LayerDataRequestKey>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<gdc::LayerDataRequestKey>::destroy(*a1);
    std::__tree<gdc::LayerDataRequestKey>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 != a1[8])
    {
      free(v2);
    }

    operator delete(a1);
  }
}

double md::DrapingLogic::_evaluateCoverageOfTilePairs(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 **a4, unsigned __int16 **a5)
{
  v104 = *MEMORY[0x1E69E9840];
  gdc::Tiled::tileFromLayerDataKey(&v93, *(a2 + 16));
  v71 = a3;
  gdc::Tiled::tileFromLayerDataKey(&v91, *(a3 + 16));
  v8 = *a4;
  v72 = a4;
  v73 = a4[1];
  v9 = 0.0;
  if (*a4 != v73)
  {
    v78 = a1;
    while (1)
    {
      gdc::Tiled::tileFromLayerDataKey(&v89, *(v8 + 2));
      v11 = *a5;
      v10 = a5[1];
      v79 = v10;
      v80 = v8;
      if (*a5 != v10)
      {
        break;
      }

LABEL_80:
      v8 += 56;
      if (v8 == v73)
      {
        goto LABEL_81;
      }
    }

    while (1)
    {
      *&v12 = gdc::Tiled::tileFromLayerDataKey(&v87, *(v11 + 2));
      if (v89.__r_.__value_.__s.__data_[0] == v87.__r_.__value_.__s.__data_[0])
      {
        if (v89.__r_.__value_.__s.__data_[1] >= v87.__r_.__value_.__s.__data_[1])
        {
          if (v89.__r_.__value_.__s.__data_[1] == v87.__r_.__value_.__s.__data_[1] && *(v89.__r_.__value_.__r.__words + 4) == *(v87.__r_.__value_.__r.__words + 4))
          {
LABEL_15:
            v15 = v8[4];
            if (v15 == 33)
            {
              v16 = v11;
            }

            else
            {
              v16 = v8;
            }

            if (v15 == 33)
            {
              v17 = v89.__r_.__value_.__s.__data_[0];
            }

            else
            {
              v17 = v87.__r_.__value_.__s.__data_[0];
            }

            if (v15 == 33)
            {
              v18 = v89.__r_.__value_.__s.__data_[1];
            }

            else
            {
              v18 = v87.__r_.__value_.__s.__data_[1];
            }

            if (v15 == 33)
            {
              v19 = v87.__r_.__value_.__s.__data_[0];
            }

            else
            {
              v19 = v89.__r_.__value_.__s.__data_[0];
            }

            if (v15 == 33)
            {
              v20 = v87.__r_.__value_.__s.__data_[1];
            }

            else
            {
              v20 = v89.__r_.__value_.__s.__data_[1];
            }

            v21 = *(*(a1 + 168) + 24);
            if (v21)
            {
              LODWORD(v12) = 33;
              v13.i32[0] = v8[4];
              v22 = vdup_lane_s16(vceq_s16(v13, *&v12), 0);
              *&v14 = vbsl_s8(v22, *(v89.__r_.__value_.__r.__words + 4), *(v87.__r_.__value_.__r.__words + 4));
              *&v12 = vbsl_s8(v22, *(v87.__r_.__value_.__r.__words + 4), *(v89.__r_.__value_.__r.__words + 4));
              v23 = v16[4];
              v24 = v90;
              if (v15 == 33)
              {
                v25 = v88;
              }

              else
              {
                v25 = v90;
              }

              v26 = v87.__r_.__value_.__r.__words[2];
              if (v15 == 33)
              {
                v27 = v87.__r_.__value_.__r.__words[2];
              }

              else
              {
                v27 = v89.__r_.__value_.__r.__words[2];
              }

              if (v15 == 33)
              {
                v26 = v89.__r_.__value_.__r.__words[2];
              }

              else
              {
                v24 = v88;
              }

              v28 = (v18 - 0x61C8864680B583EBLL + ((v17 - 0x61C8864680B583EBLL) << 6) + ((v17 - 0x61C8864680B583EBLL) >> 2)) ^ (v17 - 0x61C8864680B583EBLL);
              v29 = v14;
              v30 = (v14 - 0x61C8864680B583EBLL + (v28 << 6) + (v28 >> 2)) ^ v28;
              v31 = DWORD1(v14);
              v32 = (SDWORD1(v14) - 0x61C8864680B583EBLL + (v30 << 6) + (v30 >> 2)) ^ v30;
              v33 = (v20 - 0x61C8864680B583EBLL + ((v19 - 0x61C8864680B583EBLL) << 6) + ((v19 - 0x61C8864680B583EBLL) >> 2)) ^ (v19 - 0x61C8864680B583EBLL);
              v34 = v12;
              v35 = (v12 - 0x61C8864680B583EBLL + (v33 << 6) + (v33 >> 2)) ^ v33;
              v36 = DWORD1(v12);
              v37 = (SDWORD1(v12) - 0x61C8864680B583EBLL + (v35 << 6) + (v35 >> 2)) ^ v35;
              while (1)
              {
                if (v21[40] == 1)
                {
                  v55 = v32;
                  v69 = v17;
                  v39 = v18;
                  v67 = v23;
                  v75 = v12;
                  v65 = v14;
                  v63 = v24;
                  v61 = v26;
                  v57 = v31;
                  v59 = v29;
                  geo::QuadTile::computeHash(v21 + 16);
                  v32 = v55;
                  v31 = v57;
                  v29 = v59;
                  v26 = v61;
                  v24 = v63;
                  v14 = v65;
                  v12 = v75;
                  v23 = v67;
                  v18 = v39;
                  v17 = v69;
                  v21[40] = 0;
                }

                if (v24)
                {
                  v26 = v32;
                  v24 = 0;
                }

                if (*(v21 + 4) == v26 && v21[16] == v17 && v21[17] == v18 && *(v21 + 5) == v29 && *(v21 + 6) == v31)
                {
                  v38 = *(v21 + 9);
                  if (v38)
                  {
                    break;
                  }
                }

LABEL_62:
                v21 = *v21;
                if (!v21)
                {
                  goto LABEL_77;
                }
              }

              while (1)
              {
                if (v38[40] == 1)
                {
                  v53 = v18;
                  v54 = v32;
                  v68 = v17;
                  v66 = v23;
                  v74 = v12;
                  v64 = v14;
                  v62 = v24;
                  v60 = v26;
                  v56 = v31;
                  v58 = v29;
                  geo::QuadTile::computeHash(v38 + 16);
                  v18 = v53;
                  v32 = v54;
                  v31 = v56;
                  v29 = v58;
                  v26 = v60;
                  v24 = v62;
                  v14 = v64;
                  v12 = v74;
                  v23 = v66;
                  v17 = v68;
                  v38[40] = 0;
                }

                if (v25)
                {
                  v25 = 0;
                  v27 = v37;
                }

                if (*(v38 + 4) == v27 && v38[16] == v19 && v38[17] == v20 && *(v38 + 5) == v34 && *(v38 + 6) == v36 && *(v38 + 24) == v23)
                {
                  break;
                }

                v38 = *v38;
                if (!v38)
                {
                  goto LABEL_62;
                }
              }

              v40 = *(v38 + 9);
              if (!v40)
              {
LABEL_77:
                a1 = v78;
LABEL_78:
                v10 = v79;
                v8 = v80;
                goto LABEL_79;
              }

              v41 = atomic_load(v40);
              a1 = v78;
              if (v41 != 2)
              {
                goto LABEL_78;
              }

              v76 = v12;
              v42 = v23;
              buf[1] = v18;
              v96 = v14;
              buf[0] = v17;
              *&v98[2] = v26;
              LOBYTE(v99) = v24;
              md::DrapingLogic::_dataInStore(&v84, *(*(v78 + 464) + 80), *(*(v78 + 464) + 88), buf, 33);
              buf[1] = v20;
              v96 = v76;
              buf[0] = v19;
              *&v98[2] = v27;
              LOBYTE(v99) = v25;
              md::DrapingLogic::_dataInStore(&__p, *(*(v78 + 464) + 80), *(*(v78 + 464) + 88), buf, v42);
              v10 = v79;
              v8 = v80;
              if (v82)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v82);
              }

              if (v85)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v85);
              }

              v43 = v89.__r_.__value_.__s.__data_[1];
              if (v89.__r_.__value_.__s.__data_[1] <= v94)
              {
                v43 = v94;
              }

              v44 = v87.__r_.__value_.__s.__data_[1];
              if (v87.__r_.__value_.__s.__data_[1] <= v92)
              {
                v44 = v92;
              }

              if (v43 <= v44)
              {
                v43 = v44;
              }

              v9 = COERCE_DOUBLE(0x3FF0000000000000 - ((v43 - v94) << 53)) + v9;
            }

            goto LABEL_79;
          }
        }

        else if (*(v89.__r_.__value_.__r.__words + 4) == __PAIR64__(SLODWORD(v87.__r_.__value_.__r.__words[1]) >> (v87.__r_.__value_.__s.__data_[1] - v89.__r_.__value_.__s.__data_[1]), SHIDWORD(v87.__r_.__value_.__r.__words[0]) >> (v87.__r_.__value_.__s.__data_[1] - v89.__r_.__value_.__s.__data_[1])))
        {
          goto LABEL_15;
        }

        if (v87.__r_.__value_.__s.__data_[1] >= v89.__r_.__value_.__s.__data_[1])
        {
          if (v87.__r_.__value_.__s.__data_[1] == v89.__r_.__value_.__s.__data_[1] && *(v87.__r_.__value_.__r.__words + 4) == *(v89.__r_.__value_.__r.__words + 4))
          {
            goto LABEL_15;
          }
        }

        else if (*(v87.__r_.__value_.__r.__words + 4) == __PAIR64__(SLODWORD(v89.__r_.__value_.__r.__words[1]) >> (v89.__r_.__value_.__s.__data_[1] - v87.__r_.__value_.__s.__data_[1]), SHIDWORD(v89.__r_.__value_.__r.__words[0]) >> (v89.__r_.__value_.__s.__data_[1] - v87.__r_.__value_.__s.__data_[1])))
        {
          goto LABEL_15;
        }
      }

LABEL_79:
      v11 += 56;
      if (v11 == v10)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_81:
  if (GEOGetVectorKitDrapingFallbackLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitDrapingFallbackLog_onceToken, &__block_literal_global_65);
  }

  v45 = GEOGetVectorKitDrapingFallbackLog_log;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    v46 = &v89;
    gdc::LayerDataRequestKey::keysInt32Str(&v89, a2);
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v46 = v89.__r_.__value_.__r.__words[0];
    }

    gdc::LayerDataRequestKey::keysInt32Str(&v87, v71);
    if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v87;
    }

    else
    {
      v47 = v87.__r_.__value_.__r.__words[0];
    }

    v48 = v86;
    v49 = v84;
    v50 = &v84;
    if (v48 < 0)
    {
      v50 = v49;
    }

    if (v83 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136316162;
    v96 = v46;
    v97 = 2080;
    *v98 = v47;
    *&v98[8] = 2080;
    v99 = v50;
    v100 = 2080;
    v101 = p_p;
    v102 = 2048;
    v103 = v9;
    _os_log_impl(&dword_1B2754000, v45, OS_LOG_TYPE_DEBUG, "evaluate coverage of : %s vs %s.  First Keys = %s.  Second Keys = %s  Area = %f", buf, 0x34u);
    if (v83 < 0)
    {
      operator delete(__p);
    }

    if (v86 < 0)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }
  }

  return v9;
}