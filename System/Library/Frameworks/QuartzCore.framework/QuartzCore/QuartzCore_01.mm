uint64_t CA::Render::Update::mark_root_dependence(uint64_t this, CA::Render::LayerNode *a2, CA::Render::LayerNode *a3)
{
  if ((this & 1) == 0)
  {
    v3 = a3;
    v4 = a2;
    if (a2)
    {
      this = CA::Render::LayerNode::shared_ancestor(a2, a3);
      if (this)
      {
        v5 = *(this + 40);
        if (!v5)
        {
          return this;
        }

LABEL_13:
        *(v5 + 104) |= 0x1000000000000000uLL;
        return this;
      }

      do
      {
        v7 = v3;
        v3 = *(v3 + 11);
      }

      while (v3);
      v8 = *(v7 + 5);
      if (v8)
      {
        *(v8 + 104) |= 0x1000000000000000uLL;
      }

      do
      {
        v6 = v4;
        v4 = *(v4 + 11);
      }

      while (v4);
    }

    else
    {
      do
      {
        v6 = v3;
        v3 = *(v3 + 11);
      }

      while (v3);
    }

    v5 = *(v6 + 5);
    if (!v5)
    {
      return this;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t CA::Render::LayerNode::shared_ancestor(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    if (!a2)
    {
      return 0;
    }

    if (*(result + 88) == a2)
    {
      return a2;
    }

    if (*(a2 + 88) != result)
    {
      v2 = 1;
      v3 = 1;
      v4 = a2;
      v5 = result;
      while (1)
      {
        if (v3)
        {
          v6 = *(v5 + 24);
          if ((v6 & 0x200000) != 0)
          {
            goto LABEL_19;
          }

          *(v5 + 24) = v6 | 0x200000;
          v5 = *(v5 + 88);
          if (!v2)
          {
LABEL_9:
            v4 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          v5 = 0;
          if (!v2)
          {
            goto LABEL_9;
          }
        }

        v7 = *(v4 + 24);
        if ((v7 & 0x200000) != 0)
        {
          v5 = v4;
          do
          {
LABEL_19:
            v8 = *(result + 24);
            if ((v8 & 0x200000) == 0)
            {
              break;
            }

            *(result + 24) = v8 & 0xFFFFFFFFFFDFFFFFLL;
            result = *(result + 88);
          }

          while (result);
          do
          {
            v9 = *(a2 + 24);
            if ((v9 & 0x200000) == 0)
            {
              break;
            }

            *(a2 + 24) = v9 & 0xFFFFFFFFFFDFFFFFLL;
            a2 = *(a2 + 88);
          }

          while (a2);
          return v5;
        }

        *(v4 + 24) = v7 | 0x200000;
        v4 = *(v4 + 88);
LABEL_13:
        v3 = v5 != 0;
        v2 = v4 != 0;
        if (!(v5 | v4))
        {
          v5 = 0;
          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

void CA::Render::LayerNode::MapGeometry::map(uint64_t this, CA::Render::LayerNode *a2, CA::Render::LayerNode *a3)
{
  v5 = this;
  v45 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    this = CA::Render::LayerNode::shared_ancestor(a2, a3);
    v6 = this;
    if (this)
    {
      do
      {
        if ((*(*(v6 + 4) + 13) & 9) == 0)
        {
          break;
        }

        v6 = *(v6 + 11);
      }

      while (v6);
    }
  }

  else
  {
    v6 = 0;
  }

  v37 = xmmword_183E20E00;
  v38 = 0u;
  v7.f64[1] = 1.0;
  v39 = xmmword_183E20E60;
  v40 = 0u;
  v41 = 0u;
  v42 = xmmword_183E20E00;
  v35 = xmmword_183E20E60;
  v36 = xmmword_183E20E00;
  v43 = 0u;
  v44 = xmmword_183E20E60;
  if (v6 == a2)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v9 = a2;
  do
  {
    while (1)
    {
      if (v9 != a2 && (*(*(v9 + 4) + 12) & 0x900) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(v9 + 7);
      if (!v10)
      {
        v12 = *(v9 + 4);
        v7.f64[0] = *(v9 + 10);
        v37 = vmlaq_laneq_f64(v37, v12, v38, 1);
        v38 = vmlaq_laneq_f64(v38, v7, v38, 1);
        v39 = vmlaq_laneq_f64(v39, v12, v40, 1);
        v40 = vmlaq_laneq_f64(v40, v7, v40, 1);
        v41 = vmlaq_laneq_f64(v41, v12, v42, 1);
        v42 = vmlaq_laneq_f64(v42, v7, v42, 1);
        v43 = vmlaq_laneq_f64(v43, v12, v44, 1);
        v44 = vmlaq_laneq_f64(v44, v7, v44, 1);
        goto LABEL_16;
      }

      this = CA::Mat4Impl::mat4_is_affine(*(v9 + 7), a2);
      if (this)
      {
        break;
      }

      (**v5)(v5, &v37);
      this = (**v5)(v5, *(v9 + 7));
      v8 = 0;
      v13 = 0;
      v7.f64[1] = *(&v35 + 1);
      v37 = v36;
      v38 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v35;
      v42 = v36;
      v43 = 0u;
      v44 = v35;
      v9 = *(v9 + 11);
      if (v9 == v6)
      {
        goto LABEL_24;
      }
    }

    if (v8)
    {
      CA::Mat4Impl::mat4_concat(&v37, &v37, v10->f64, v11);
LABEL_16:
      v8 = 1;
      goto LABEL_20;
    }

    v14 = v10[1];
    v15 = v10[2];
    v16 = v10[3];
    v37 = *v10;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    v7 = v10[5];
    v17 = v10[6];
    v18 = v10[7];
    v41 = v10[4];
    v42 = v7;
    v8 = 1;
    v43 = v17;
    v44 = v18;
LABEL_20:
    v9 = *(v9 + 11);
  }

  while (v9 != v6);
  if ((v8 & 1) == 0)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  this = (**v5)(v5, &v37);
  v13 = 1;
LABEL_24:
  if (v6 != a3)
  {
    v19 = 0;
    v20 = 2304;
    v21 = a3;
    do
    {
      if (v21 == a3 || (*(*(v21 + 4) + 12) & v20) == 0)
      {
        MEMORY[0x1EEE9AC00](this);
        *(&v35 - 2) = v21;
        *(&v35 - 1) = v19;
        v19 = &v35 - 1;
      }

      v21 = *(v21 + 11);
    }

    while (v21 != v6);
    if (v13)
    {
      v37 = v36;
      v38 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v35;
      v42 = v36;
      v43 = 0u;
      v44 = v35;
    }

    if (v19)
    {
      v22 = 0;
      do
      {
        while (1)
        {
          v23 = *v19;
          v24 = *(*v19 + 56);
          if (v24)
          {
            break;
          }

          v26 = *(v23 + 64);
          v27 = *(v23 + 72);
          v28 = *(v23 + 80);
          v43 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v43, v37, v26), v39, v27), v41, v28);
          v44 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v44, v38, v26), v40, v27), v42, v28);
LABEL_47:
          v19 = *(v19 + 1);
          v22 = 1;
          if (!v19)
          {
            if (CA::Mat4Impl::mat4_invert(&v37, &v37, a3))
            {
              (*(*v5 + 8))(v5, &v37);
            }

            return;
          }
        }

        if (CA::Mat4Impl::mat4_is_affine(*(*v19 + 56), a2))
        {
          if (v22)
          {
            CA::Mat4Impl::mat4_concat(&v37, v24->f64, &v37, v25);
          }

          else
          {
            v29 = v24[1];
            v30 = v24[2];
            v31 = v24[3];
            v37 = *v24;
            v38 = v29;
            v39 = v30;
            v40 = v31;
            v32 = v24[5];
            v33 = v24[6];
            v34 = v24[7];
            v41 = v24[4];
            v42 = v32;
            v43 = v33;
            v44 = v34;
          }

          goto LABEL_47;
        }

        if ((v22 & 1) != 0 && CA::Mat4Impl::mat4_invert(&v37, &v37, a3))
        {
          (*(*v5 + 8))(v5, &v37);
        }

        if (CA::Mat4Impl::mat4_invert(&v37, *(v23 + 56), a3))
        {
          (*(*v5 + 8))(v5, &v37);
        }

        v22 = 0;
        v37 = v36;
        v38 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = v35;
        v42 = v36;
        v43 = 0u;
        v44 = v35;
        v19 = *(v19 + 1);
      }

      while (v19);
    }
  }
}

void *CA::Render::Update::release_object(void *this, const CA::Render::Object *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *this;
    v5 = *(*this + 16);
    v6 = v5 >= 0x10;
    v7 = v5 - 16;
    if (v6)
    {
      this = *(v4 + 8);
      *(v4 + 8) = this + 2;
      *(v4 + 16) = v7;
    }

    else
    {
      this = x_heap_malloc_small_(*this, 0x10uLL);
    }

    v8 = v3[44];
    *this = a2;
    this[1] = v8;
    v3[44] = this;
  }

  return this;
}

char *CA::Render::SDFElementLayer::copy@<X0>(CA::Render::SDFElementLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0xDEEC3011uLL);
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 47;
    ++dword_1ED4EAAF4;
    *result = &unk_1EF1FEAC8;
    *(result + 6) = 1065353216;
    *(result + 8) = *(this + 8);
    *(result + 20) = *(this + 20);
    *(result + 7) = *(this + 7);
    result[32] = *(this + 32);
  }

  *a2 = result;
  return result;
}

void CA::Render::Layer::Ext::unref(CA::Render::Layer::Ext *this)
{
  if (atomic_fetch_add(this + 88, 0xFFFFFFFF) == 1)
  {
    v3 = *(this + 18);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = *(this + 17);
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    v5 = *(this + 16);
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    v6 = *(this + 15);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    v7 = *(this + 14);
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    v8 = *(this + 13);
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8);
    }

    v9 = *(this + 12);
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }

    v10 = *(this + 11);
    if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
    }

    v11 = *(this + 10);
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    v12 = *(this + 9);
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
    }

    v13 = *(this + 8);
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }

    v14 = *(this + 7);
    if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
    }

    v15 = *(this + 6);
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    v16 = *(this + 5);
    if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v16 + 16))(v16);
    }

    v17 = *(this + 4);
    if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 16))(v17);
    }

    v18 = *(this + 3);
    if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
    }

    v19 = *(this + 2);
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v19 + 16))(v19);
    }

    v20 = *(this + 1);
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20);
    }

    v21 = *this;
    if (*this && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v22 = malloc_zone;

    malloc_zone_free(v22, this);
  }
}

atomic_uint *CA::Render::Layer::set_transform_matrix(atomic_uint *result, uint64_t a2, int a3, unint64_t a4, const double *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x10)
  {
    result = CA::Render::Layer::ensure_ext(result);
    v10 = result;
    v11.n128_f64[0] = *a5;
    if (*a5 == 1.0)
    {
      v17 = 1;
      while (v17 != 16)
      {
        v18 = v17;
        v11.n128_f64[0] = a5[v17];
        v19 = *(&CA::Mat4Impl::mat4_identity_double + v17++);
        if (v11.n128_f64[0] != v19)
        {
          if ((v18 - 1) < 0xF)
          {
            goto LABEL_3;
          }

          break;
        }
      }

      if ((a3 & 1) == 0)
      {
        result = *(result + a2);
        *(v10 + a2) = 0;
        if (result)
        {
          if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            v20 = *(*result + 16);

            return v20(v11);
          }
        }
      }
    }

    else
    {
LABEL_3:
      memset(v21, 0, sizeof(v21));
      if (a3)
      {
        v12 = *(result + a2);
        if (v12)
        {
          v13 = *(v12 + 16);
          v14 = (v12 + 24);
          if (v13 <= 0xF)
          {
            v15 = &CA::Mat4Impl::mat4_identity_double;
          }

          else
          {
            v15 = v14;
          }

          CA::Mat4Impl::mat4_concat(v21, v15, a5, v9);
          a5 = v21;
        }
      }

      v16 = CA::Render::Vector::new_vector(0x10, a5, v8);
      result = *(v10 + a2);
      *(v10 + a2) = v16;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          return (*(*result + 16))(result);
        }
      }
    }
  }

  return result;
}

double CA::Mat4Impl::mat4_get_scale(float64x2_t *this, double *a2, double *a3, double *a4)
{
  v4 = vaddvq_f64(vmulq_f64(*this, *this));
  v5 = vaddvq_f64(vmulq_f64(this[2], this[2]));
  v6 = this[7].f64[1];
  if (v6 != 1.0)
  {
    v7 = 1.0 / (v6 * v6);
    v4 = v7 * v4;
    v5 = v7 * v5;
  }

  v8 = v4 != 1.0;
  if (v5 != 1.0)
  {
    v8 = 1;
  }

  v9 = sqrt(v4);
  v10 = sqrt(v5);
  if (v8)
  {
    v5 = v10;
  }

  if (a2)
  {
    if (v8)
    {
      v4 = v9;
    }

    *a2 = v4;
  }

  if (a3)
  {
    *a3 = v5;
  }

  result = (v10 + v9) * 0.5;
  if (!v8)
  {
    return 1.0;
  }

  return result;
}

float64x2_t CA::Render::Layer::compute_frame_transform(uint64_t a1, uint64_t a2, CA::Mat4Impl *this, const double *a4)
{
  v7 = *(a1 + 136);
  if (a2)
  {
    v8 = *(a2 + 136);
    v9 = (*(a2 + 50) >> 6) & 1;
    if (v7)
    {
LABEL_3:
      v10 = vmulq_f64(*(v7 + 168), *(a1 + 88));
      v11 = *(v7 + 184);
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0uLL;
  v11 = 0.0;
  if ((*(a1 + 50) & 0x40) == 0)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v10 = vmulq_f64(*(a1 + 88), _Q1);
  }

LABEL_7:
  if (v8)
  {
    v17 = *(v8 + 24);
  }

  else
  {
    v17 = 0;
  }

  if (!(a4 | v17))
  {
    if (v7)
    {
      v18 = *(v7 + 16);
      if (v18)
      {
        goto LABEL_16;
      }

      *this = xmmword_183E20E00;
      *(this + 1) = 0u;
      *(this + 2) = xmmword_183E20E60;
      *(this + 3) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = xmmword_183E20E00;
      *(this + 6) = 0u;
      *(this + 7) = xmmword_183E20E60;
      result = vsubq_f64(*(a1 + 56), v10);
      *(this + 6) = result;
      v43 = *(v7 + 192);
    }

    else
    {
      *this = xmmword_183E20E00;
      *(this + 1) = 0u;
      *(this + 2) = xmmword_183E20E60;
      *(this + 3) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = xmmword_183E20E00;
      *(this + 6) = 0u;
      *(this + 7) = xmmword_183E20E60;
      result = vsubq_f64(*(a1 + 56), v10);
      *(this + 6) = result;
      v43 = 0.0;
    }

    *(this + 14) = v43 - v11;
    v35 = xmmword_183E20E60;
    v38 = xmmword_183E20E00;
    v37 = 0uLL;
    v36 = 0uLL;
    v34 = 0uLL;
    v33 = xmmword_183E20E00;
    goto LABEL_37;
  }

  if (v7)
  {
    v18 = *(v7 + 16);
    if (v18)
    {
LABEL_16:
      v20 = *(v18 + 16);
      v19 = (v18 + 24);
      if (v20 <= 0xF)
      {
        v19 = &CA::Mat4Impl::mat4_identity_double;
      }

      goto LABEL_18;
    }
  }

  v19 = &CA::Mat4Impl::mat4_identity_double;
LABEL_18:
  v22 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  v24 = v19[3];
  *this = *v19;
  *(this + 1) = v21;
  *(this + 2) = v23;
  *(this + 3) = v24;
  v26 = v19[4];
  v25 = v19[5];
  v27 = v19[6];
  v28 = v19[7];
  *(this + 4) = v26;
  *(this + 5) = v25;
  v29 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v27, v22, v10.f64[0], 0), v23, v10.f64[1], 0), v26, v11, 0);
  v30 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v28, v21, v10.f64[0], 0), v24, v10.f64[1], 0), v25, v11, 0);
  *(this + 6) = v29;
  *(this + 7) = v30;
  v31 = *(a1 + 56);
  if (v7)
  {
    v32 = *(v7 + 192);
  }

  else
  {
    v32 = 0;
  }

  v33 = vmlaq_laneq_f64(v22, v31, v21, 1);
  v34 = vmlaq_laneq_f64(v21, v32, v21, 1);
  v35 = vmlaq_laneq_f64(v23, v31, v24, 1);
  v36 = vmlaq_laneq_f64(v24, v32, v24, 1);
  v37 = vmlaq_laneq_f64(v26, v31, v25, 1);
  v38 = vmlaq_laneq_f64(v25, v32, v25, 1);
  result = vmlaq_laneq_f64(v29, v31, v30, 1);
  *this = v33;
  *(this + 1) = v34;
  *(this + 2) = v35;
  *(this + 3) = v36;
  *(this + 4) = v37;
  *(this + 5) = v38;
  v40 = vmlaq_laneq_f64(v30, v32, v30, 1);
  *(this + 6) = result;
  *(this + 7) = v40;
  if (a4 | v17)
  {
    if (v8)
    {
      v41 = vmulq_f64(*(v8 + 168), *(a2 + 88));
      v42 = *(v8 + 184);
    }

    else
    {
      v41 = 0uLL;
      v42 = 0.0;
      if ((v9 & 1) == 0)
      {
        __asm { FMOV            V16.2D, #0.5 }

        v41 = vmulq_f64(*(a2 + 88), _Q16);
      }
    }

    v60 = vaddq_f64(*(a2 + 72), v41);
    v61 = v42;
    *this = vmlsq_laneq_f64(v33, v60, v34, 1);
    *(this + 1) = vmlaq_laneq_f64(v34, COERCE_UNSIGNED_INT64(-v42), v34, 1);
    *(this + 2) = vmlsq_laneq_f64(v35, v60, v36, 1);
    *(this + 3) = vmlaq_laneq_f64(v36, COERCE_UNSIGNED_INT64(-v42), v36, 1);
    *(this + 4) = vmlsq_laneq_f64(v37, v60, v38, 1);
    *(this + 5) = vmlaq_laneq_f64(v38, COERCE_UNSIGNED_INT64(-v42), v38, 1);
    *(this + 6) = vmlsq_laneq_f64(result, v60, v40, 1);
    *(this + 7) = vmlaq_laneq_f64(v40, COERCE_UNSIGNED_INT64(-v42), v40, 1);
    if (v17)
    {
      v45 = *(v17 + 16);
      v46 = (v17 + 24);
      if (v45 <= 0xF)
      {
        v47 = &CA::Mat4Impl::mat4_identity_double;
      }

      else
      {
        v47 = v46;
      }

      CA::Mat4Impl::mat4_concat(this, this, v47, a4);
      v42 = v61;
    }

    if (a4)
    {
      CA::Mat4Impl::mat4_concat(this, this, a4, a4);
      v42 = v61;
    }

    v48 = *(this + 1);
    v49 = *(this + 3);
    v50 = *(this + 5);
    v51 = *(this + 7);
    v33 = vmlaq_laneq_f64(*this, v60, v48, 1);
    v34 = vmlaq_laneq_f64(v48, *&v42, v48, 1);
    v35 = vmlaq_laneq_f64(*(this + 2), v60, v49, 1);
    v36 = vmlaq_laneq_f64(v49, *&v42, v49, 1);
    v37 = vmlaq_laneq_f64(*(this + 4), v60, v50, 1);
    v38 = vmlaq_laneq_f64(v50, *&v42, v50, 1);
    result = vmlaq_laneq_f64(*(this + 6), v60, v51, 1);
    *this = v33;
    *(this + 1) = v34;
    *(this + 2) = v35;
    *(this + 3) = v36;
    *(this + 4) = v37;
    *(this + 5) = v38;
    *(this + 6) = result;
    *(this + 7) = vmlaq_laneq_f64(v51, *&v42, v51, 1);
  }

LABEL_37:
  v52 = *(a1 + 40);
  if ((v52 & 0x80000000000) != 0)
  {
    v53 = *(a1 + 96);
    result = vmlaq_n_f64(result, v35, v53);
    v35 = vnegq_f64(v35);
    v54 = vmlaq_n_f64(*(this + 7), v36, v53);
    *(this + 6) = result;
    *(this + 7) = v54;
    v36 = vnegq_f64(v36);
    *(this + 2) = v35;
    *(this + 3) = v36;
    v52 = *(a1 + 40);
  }

  if ((v52 & 0x800000000000) != 0)
  {
    v58 = *(a1 + 88);
    result = vmlaq_n_f64(result, v33, v58);
    v33 = vnegq_f64(v33);
    v59 = vmlaq_n_f64(*(this + 7), v34, v58);
    *(this + 6) = result;
    *(this + 7) = v59;
    v34 = vnegq_f64(v34);
    *this = v33;
    *(this + 1) = v34;
  }

  v56 = *(a1 + 72);
  v55 = *(a1 + 80);
  if (v56 != 0.0 || v55 != 0.0)
  {
    result = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(result, v33, v56, 0), v35, v55, 0), 0, v37);
    v57 = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(this + 7), v34, v56, 0), v36, v55, 0), 0, v38);
    *(this + 6) = result;
    *(this + 7) = v57;
  }

  return result;
}

BOOL CA::Render::Layer::is_containerable(CA::Render::Layer *this, const double *a2)
{
  if (*(this + 13))
  {
    return 0;
  }

  v4 = *(this + 12);
  if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if (*(this + 37))
  {
    return 0;
  }

  v5 = *(this + 17);
  if (v5)
  {
    if (*(v5 + 344) != 0.0)
    {
      return 0;
    }
  }

  if (*(this + 15))
  {
    return 0;
  }

  v6 = *(this + 5);
  if ((v6 & 0x830000000000000) != 0 || *(this + 36) != 255 && *(this + 36))
  {
    return 0;
  }

  result = 0;
  if ((v4 & 0x4010) == 0x10 && (v6 & 0x800000C000000000) == 0)
  {
    v7 = *(this + 19);
    if (v7)
    {
      result = 0;
      if ((v4 & 0x200000) != 0 || (*(v7 + 104) & 0x8000000000000000) != 0)
      {
        return result;
      }
    }

    else if ((v4 & 0x200000) != 0)
    {
      return 0;
    }

    if ((v6 & 0x30007FF00000) != 0x300000000000)
    {
      return 0;
    }

    if (!v5)
    {
      goto LABEL_42;
    }

    if (*(v5 + 240) > 0.0)
    {
      return 0;
    }

    if (*v5)
    {
      return 0;
    }

    v22 = *(this + 5);
    v23 = v5;
    if (*(v5 + 96) || *(v5 + 88) || *(v5 + 104) || *(v5 + 112) || *(v5 + 80))
    {
      return 0;
    }

    v8 = *(v5 + 16);
    if (!v8 || ((v9 = *(v8 + 16), v10 = (v8 + 24), v9 >= 0x10) ? (v11 = v10) : (v11 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v11, a2)))
    {
      v12 = *(v23 + 24);
      if (!v12 || (*(v12 + 16) >= 0x10u ? (v13 = (v12 + 24)) : (v13 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v13, a2)))
      {
        if (*(v23 + 192) == 0.0 && *(v23 + 184) == 0.0 && ((v22 & 0x10000000000) == 0 || *(v23 + 232) == 0.0 && !(*(v23 + 72) | v12)))
        {
LABEL_42:
          v14 = *(this + 18);
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = 8 * v15;
              v17 = v14 + 24;
              while (*(*v17 + 12) != 61)
              {
                v17 += 8;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_47;
                }
              }

              return 0;
            }
          }

LABEL_47:
          v18 = *(this + 14);
          if ((*(this + 13) & 0x20) != 0)
          {
            if (v18)
            {
              result = CA::Render::Layer::sublayer_allows_containerization(this, v18);
              if (!result)
              {
                return result;
              }
            }
          }

          else if (v18)
          {
            v19 = v18[4];
            if (v19)
            {
              v20 = 8 * v19;
              for (i = (v18 + 6); CA::Render::Layer::sublayer_allows_containerization(this, *i); ++i)
              {
                v20 -= 8;
                if (!v20)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

void CA::Render::LayerNode::MapPoints::apply(uint64_t result, float64x2_t *this, double *a3)
{
  if (*(result + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_apply_to_point2(this, (*(result + 16) + v5), a3);
      ++v6;
      v5 += 16;
    }

    while (v6 < *(result + 8));
  }
}

void CA::Render::LayerNode::MapPoints::unapply(uint64_t result, float64x2_t *this, double *a3)
{
  if (*(result + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_unapply_inverse_to_point2(this, (*(result + 16) + v5), a3);
      ++v6;
      v5 += 16;
    }

    while (v6 < *(result + 8));
  }
}

double CA::Mat4Impl::mat4_set_corner_matrix(uint64_t a1, float64x2_t *a2, double *a3, double *a4)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = vaddq_f64(vsubq_f64(v4, vaddq_f64(v7, v5)), *a2);
  v9 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vabsq_f64(v8)));
  if (v9.i32[0] & v9.i32[1])
  {
    _Q1 = vsubq_f64(v7, v6);
    _Q3 = vsubq_f64(v4, v7);
    v12.f64[0] = 0.0;
    v13 = 0.0;
  }

  else
  {
    v14.f64[0] = a2[1].f64[0];
    v14.f64[1] = a2[3].f64[1];
    v15 = vsubq_f64(v14, v4);
    v16 = vextq_s8(v15, v15, 8uLL);
    v17.f64[0] = a2[3].f64[0];
    v17.f64[1] = a2[1].f64[1];
    v18 = vsubq_f64(v17, v4);
    v15.f64[1] = v18.f64[1];
    v19 = vmulq_f64(vzip1q_s64(v16, v18), v15);
    v12 = vdivq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(vextq_s8(v8, v8, 8uLL), v18)), v16, v8), vdupq_lane_s64(*&vsubq_f64(v19, vdupq_laneq_s64(v19, 1)), 0));
    _Q3 = vmlaq_laneq_f64(vsubq_f64(v5, v6), v5, v12, 1);
    _Q1 = vmlaq_n_f64(vsubq_f64(v7, v6), v7, v12.f64[0]);
    v13 = v12.f64[1];
  }

  if (*a3 == 0.0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0x3FF0000000000000;
    v20 = 0.0;
  }

  else
  {
    *a1 = _Q1.f64[0] / *a3;
    *(a1 + 8) = _Q1.f64[1] / *a3;
    *(a1 + 16) = 0;
    v20 = v12.f64[0] / *a3;
  }

  *(a1 + 24) = v20;
  v21 = a3[1];
  if (v21 == 0.0)
  {
    *(a1 + 32) = xmmword_183E20E60;
    *(a1 + 48) = 0;
    v22 = 0.0;
  }

  else
  {
    *(a1 + 32) = _Q3.f64[0] / v21;
    *(a1 + 40) = _Q3.f64[1] / a3[1];
    *(a1 + 48) = 0;
    v22 = v13 / a3[1];
  }

  *(a1 + 56) = v22;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_183E20E00;
  *(a1 + 96) = v6;
  *(a1 + 112) = xmmword_183E20E60;
  *(a1 + 96) = v6.f64[0] + *a4 * _Q1.f64[0] + a4[1] * _Q3.f64[0];
  _Q3.f64[0] = *a4;
  __asm { FMLA            D0, D3, V1.D[1] }

  *(a1 + 104) = _D0 + a4[1] * _Q3.f64[1];
  result = *a4 * v12.f64[0] + 1.0 + a4[1] * v13;
  *(a1 + 120) = result;
  return result;
}

void CA::Render::LayerNode::depth_sort_sublayers(CA::Render::LayerNode *this)
{
  MEMORY[0x1EEE9AC00](this);
  v164 = *MEMORY[0x1E69E9840];
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v3 = v1[3];
  if ((v3 & 0x20) != 0)
  {
    v1[3] = v3 & 0xFFFFFFFFFFFFFFDFLL;
    if ((*(v1[4] + 45) & 0x20) != 0)
    {
      v4 = v1 + 12;
      v5 = v1[13];
      if (v5 != (v1 + 12))
      {
        v6 = 0;
        LODWORD(v153) = 0;
        v7 = 0;
        v154 = v1;
        v155 = &v155;
        v156 = &v155;
        v8 = 16;
        if (v2)
        {
          v8 = 0;
        }

        v9 = v8 | 4;
        v10 = v8 | 8;
        v11 = 1;
        do
        {
          v12 = v6;
          v6 = v5;
          while (1)
          {
            v5 = *(v6 + 1);
            v13 = *(v6 + 3);
            if ((v13 & v9) == 4)
            {
              CA::Render::LayerNode::update_z_range(v6, v2);
              v13 = *(v6 + 3);
            }

            v14 = v13 & v10;
            v15 = v13 & 0x400000;
            v16 = v14 && v15 == 0;
            if (!v16)
            {
              break;
            }

            v18 = *v6;
            v17 = *(v6 + 1);
            *(v18 + 8) = v17;
            *v17 = v18;
            *v6 = v6;
            *(v6 + 1) = &v155;
            v19 = v155;
            v155 = v6;
            *v6 = v19;
            *(v19 + 1) = v6;
            v6 = v5;
            if (v5 == v4)
            {
              goto LABEL_22;
            }
          }

          if (v7)
          {
            v20 = v6[30];
            v11 &= v20 <= v12[30];
            v21 = LODWORD(v153);
            if (v20 < v12[31])
            {
              v21 = 1;
            }

            LODWORD(v153) = v21;
          }

          ++v7;
        }

        while (v5 != v4);
LABEL_22:
        v22 = v11;
        if (v11)
        {
          v23 = v154;
          if ((LOBYTE(v153) & (v7 > 1)) == 0)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v23 = v154;
          if (v7 < 2)
          {
            goto LABEL_164;
          }
        }

        v24 = 32 * v7;
        if (32 * v7 > 0x1000)
        {
          v26 = malloc_type_malloc(32 * v7, 0x108004057E67DB5uLL);
          v25 = v26;
          if (!v26)
          {
            goto LABEL_164;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](v1);
          v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v25, 32 * v7);
        }

        if (4 * v7 <= 0x1000)
        {
          MEMORY[0x1EEE9AC00](v26);
          v27 = &v147 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v27, 4 * v7);
          goto LABEL_32;
        }

        v27 = malloc_type_malloc(4 * v7, 0x465AA25BuLL);
        if (v27)
        {
LABEL_32:
          v151 = 4 * v7;
          v28 = v23[13];
          if (v28 != v4)
          {
            v29 = v7 - 1;
            v30 = &v27[4 * v7 - 4];
            v31 = &v25[16 * v7 - 8];
            do
            {
              *(v31 - 1) = ((*(v28 + 240) >> 63) | 0x8000000000000000) ^ *(v28 + 240);
              *v31 = v28;
              *v28 = 0;
              *v30 = *(v28 + 116);
              v30 -= 4;
              *(v28 + 116) = v29;
              v28 = *(v28 + 8);
              --v29;
              v31 -= 16;
            }

            while (v28 != v4);
          }

          v150 = v27;
          if ((v22 & 1) == 0)
          {
            if (v7 > 0x3F)
            {
              bzero(v162, 0x2000uLL);
              v40 = v25;
              v41 = v7;
              do
              {
                v42 = *v40;
                v40 += 2;
                ++LODWORD(v162[4 * v42]);
                ++HIDWORD(v162[4 * BYTE1(v42)]);
                ++LODWORD(v162[4 * BYTE2(v42) + 1]);
                ++HIDWORD(v162[4 * BYTE3(v42) + 1]);
                ++LODWORD(v162[4 * BYTE4(v42) + 2]);
                ++DWORD1(v163[2 * BYTE5(v42)]);
                ++DWORD2(v163[2 * BYTE6(v42)]);
                ++HIDWORD(v163[2 * HIBYTE(v42)]);
                --v41;
              }

              while (v41);
              v43 = 0;
              v44 = 0uLL;
              v45 = 0uLL;
              do
              {
                v46 = &v162[4 * v43];
                v47 = v46[6];
                v48 = v46[7];
                v49 = vaddq_s32(*v46, v44);
                v50 = vaddq_s32(v46[1], v45);
                v51 = vaddq_s32(v50, v46[3]);
                v52 = vaddq_s32(v49, v46[2]);
                v53 = vaddq_s32(v52, v46[4]);
                v54 = vaddq_s32(v51, v46[5]);
                *v46 = v44;
                v46[1] = v45;
                v45 = vaddq_s32(v54, v48);
                v44 = vaddq_s32(v53, v47);
                v46[2] = v49;
                v46[3] = v50;
                v46[4] = v52;
                v46[5] = v51;
                v46[6] = v53;
                v46[7] = v54;
                v55 = v43 >= 0xFC;
                v43 += 4;
              }

              while (!v55);
              v56 = 0;
              v161[0] = v25;
              v161[1] = &v25[16 * v7];
              do
              {
                v57 = v161[!(v56 & 1)];
                v58 = (v161[v56 & 1] + 8);
                v59 = v7;
                do
                {
                  v60 = *(v58 - 1);
                  v61 = *v58;
                  v62 = &v162[4 * (v60 >> (8 * v56))];
                  v63 = *(v62 + v56);
                  *(v62 + v56) = v63 + 1;
                  v64 = (v57 + 16 * v63);
                  *v64 = v60;
                  v64[1] = v61;
                  v58 += 2;
                  --v59;
                }

                while (v59);
                ++v56;
              }

              while (v56 != 8);
            }

            else if (v7 >= 2)
            {
              v32 = 1;
              v33 = v25;
              do
              {
                v34 = &v25[16 * v32];
                v35 = *v34;
                v36 = *(v34 + 1);
                v37 = v33;
                v38 = v32;
                while (*v37 > v35)
                {
                  --v38;
                  v37[1] = *v37;
                  --v37;
                  if (v38 + 1 <= 1)
                  {
                    v38 = 0;
                    break;
                  }
                }

                v39 = &v25[16 * v38];
                *v39 = v35;
                *(v39 + 1) = v36;
                ++v32;
                ++v33;
              }

              while (v32 != v7);
            }
          }

          v157 = &v157;
          v158 = &v157;
          if (v7)
          {
            v65 = 8;
            v66 = v7;
            do
            {
              v67 = *&v25[v65];
              *v67 = v67;
              v67[1] = &v157;
              v68 = v157;
              v157 = v67;
              *v67 = v68;
              *(v68 + 1) = v67;
              v67[11] = 0;
              v67[3] = (v67[3] & 0xFFFFFFFFFFFFFFFDLL);
              v65 += 16;
              --v66;
            }

            while (v66);
            if (v24 > 0x1000)
            {
              free(v25);
            }
          }

          v69 = v162;
          v162[0] = 0;
          v162[1] = &v163[1];
          v163[0] = xmmword_183E21230;
          v159 = 0;
          v160 = v162;
          v70 = 0x2000;
          if (v7 * v7 < 0x2000)
          {
            v70 = v7 * v7;
          }

          v23[12] = v23 + 12;
          v23[13] = v4;
          v71 = v158;
          if (v158 == &v157)
          {
LABEL_160:
            x_heap_free(v69);
            v141 = v23[13];
            v142 = v150;
            for (i = v151; v141 != v4; v141 = *(v141 + 8))
            {
              *(v141 + 116) = v142[*(v141 + 116)];
            }

            if (i > 0x1000)
            {
              free(v142);
            }

            goto LABEL_164;
          }

          v148 = v70;
          v152 = 0;
          v153 = -0.0000999999975;
          v149 = 0.0001;
LABEL_63:
          v72 = *(v71 + 8);
          if (v72 == &v157)
          {
            goto LABEL_148;
          }

          while (1)
          {
            while (1)
            {
              if (*(v71 + 248) <= *(v72 + 240))
              {
                if ((*(v72 + 24) & 2) == 0)
                {
                  goto LABEL_147;
                }

                goto LABEL_73;
              }

              v73 = *(v71 + 88);
              if (!v73)
              {
                v73 = CA::Render::compute_occlusion_data(&v159, v71);
                *(v71 + 88) = v73;
                if (!v73)
                {
                  v121 = *v71;
                  v120 = *(v71 + 8);
                  *(v121 + 8) = v120;
                  *v120 = v121;
                  *v71 = v71;
                  *(v71 + 8) = v71;
                  if (atomic_fetch_add((v71 + 16), 0xFFFFFFFF) == 1)
                  {
                    CA::Render::LayerNode::delete_node(v71, v74);
                  }

LABEL_126:
                  v122 = v152;
                  v23 = v154;
                  goto LABEL_127;
                }
              }

              v75 = *(v72 + 88);
              if (v75)
              {
                break;
              }

              v75 = CA::Render::compute_occlusion_data(&v159, v72);
              *(v72 + 88) = v75;
              if (v75)
              {
                break;
              }

              v102 = *v72;
              v103 = *(v72 + 8);
              *(v102 + 1) = v103;
              *v103 = v102;
              *v72 = v72;
              *(v72 + 8) = v72;
              if (atomic_fetch_add((v72 + 16), 0xFFFFFFFF) == 1)
              {
                CA::Render::LayerNode::delete_node(v72, v76);
              }

              v72 = v103;
              if (v103 == &v157)
              {
                goto LABEL_147;
              }
            }

            if (*v73 >= *v75)
            {
              if (*(v75 + 16) <= *v73)
              {
                goto LABEL_73;
              }
            }

            else if (*(v73 + 16) <= *v75)
            {
              goto LABEL_73;
            }

            v77 = *(v73 + 8);
            v78 = *(v75 + 8);
            if (v77 >= v78)
            {
              if (*(v75 + 24) <= v77)
              {
                goto LABEL_73;
              }
            }

            else if (*(v73 + 24) <= v78)
            {
              goto LABEL_73;
            }

            v79 = *(v75 + 56);
            v80 = *(v73 + 56);
            if (vabdd_f64(v79, v80) > 0.0000999999975)
            {
              break;
            }

            v92 = *(v75 + 32);
            v93 = *(v75 + 40);
            v85 = *(v73 + 32);
            v84 = *(v73 + 40);
            v95 = *(v75 + 48);
            v87 = *(v73 + 48);
            v104 = v85 * v92 + v84 * v93 + v87 * v95;
            if (1.0 - fabsf(v104) >= 0.0000999999975)
            {
              v81 = *(v75 + 72);
              if (v81)
              {
                v105 = *(v75 + 80);
                v106 = *(v75 + 88);
                v107 = *(v75 + 72);
                v108 = *(v75 + 96);
                while (fabs(v80 + *v105 * v85 + *v106 * v84 + *v108 * v87) <= 0.0000999999975)
                {
                  ++v108;
                  ++v106;
                  ++v105;
                  if (!--v107)
                  {
                    goto LABEL_100;
                  }
                }

                goto LABEL_82;
              }
            }

LABEL_100:
            if (*(v71 + 116) >= *(v72 + 116))
            {
              LODWORD(v89) = *(v73 + 72);
LABEL_102:
              if (v89)
              {
                goto LABEL_103;
              }

LABEL_109:
              v111 = *(v75 + 72);
              if (!v111)
              {
                goto LABEL_128;
              }

              v112 = 0;
              do
              {
                if (v112)
                {
                  v113 = v112;
                }

                else
                {
                  v113 = v111;
                }

                v114 = CA::Render::separating_axis(v75, v73, v113 - 1, v112);
                if (v114)
                {
                  break;
                }

                v16 = v111 - 1 == v112++;
              }

              while (!v16);
              if (!v114)
              {
LABEL_128:
                v123 = *(v72 + 24);
                if ((v123 & 2) == 0 && (CA::Render::in_positive_half_space(v75, v73) || CA::Render::in_negative_half_space(v73, v75)))
                {
                  v125 = *v72;
                  v124 = *(v72 + 8);
                  *(v125 + 1) = v124;
                  *v124 = v125;
                  *(v72 + 8) = v72;
                  v126 = v158;
                  v158 = v72;
                  *v72 = &v157;
                  *v126 = v72;
                  *(v72 + 8) = v126;
                  *(v72 + 24) = v123 | 2;
                  goto LABEL_126;
                }

                v127 = *(v71 + 144);
                if (v127)
                {
                  v128 = *(v127 + 8) + 1;
                }

                else
                {
                  v128 = 1;
                }

                v129 = *(v72 + 144);
                if (v129)
                {
                  v130 = *(v129 + 8) + 1;
                }

                else
                {
                  v130 = 1;
                }

                if (CA::Render::in_both_half_spaces(v75, v73, ((v128 * v128) * v149)))
                {
                  v131 = (v75 + 32);
                  if (fabs(v92) >= 0.0000999999975 || fabs(v93) >= 0.0000999999975 || fabs(v95 + -1.0) >= 0.0000999999975)
                  {
                    v72 = v71;
                    v75 = v73;
                    v23 = v154;
                    v132 = v148;
LABEL_155:
                    v122 = v152 + 1;
                    if (v152 > v132 || (v137 = *(v72 + 144)) != 0 && *(v137 + 8) > 0x40u)
                    {
                      ++v152;
                      goto LABEL_148;
                    }

                    v139 = *v72;
                    v138 = *(v72 + 8);
                    *(v139 + 1) = v138;
                    *v138 = v139;
                    *v72 = v72;
                    *(v72 + 8) = v72;
                    *(v75 + 64) = v159;
                    v159 = v75;
                    *(v72 + 88) = 0;
                    *(v72 + 24) &= ~2uLL;
                    v140 = CA::Render::LayerNode::split_node(v72, v131);
                    CA::Render::insert_node_by_minz(&v157, v140);
                    CA::Render::insert_node_by_minz(&v157, v72);
LABEL_127:
                    v71 = v158;
                    v152 = v122;
                    goto LABEL_151;
                  }
                }

                if (!CA::Render::in_both_half_spaces(v73, v75, ((v130 * v130) * v149)))
                {
LABEL_147:
                  v23 = v154;
                  goto LABEL_148;
                }

                v131 = (v73 + 32);
                v132 = v148;
                if (fabs(v85) >= 0.0000999999975 || fabs(v84) >= 0.0000999999975)
                {
                  v23 = v154;
                  goto LABEL_155;
                }

                v23 = v154;
                if (fabs(v87 + -1.0) >= 0.0000999999975)
                {
                  goto LABEL_155;
                }

LABEL_148:
                v133 = *(v71 + 88);
                if (v133)
                {
                  *(v133 + 64) = v159;
                  v159 = v133;
                }

                v135 = *v71;
                v134 = *(v71 + 8);
                *(v135 + 8) = v134;
                *v134 = v135;
                *(v71 + 8) = v71;
                v136 = v23[13];
                v23[13] = v71;
                *v71 = v4;
                *v136 = v71;
                *(v71 + 8) = v136;
                *(v71 + 88) = v23;
                *(v71 + 24) &= ~2uLL;
                v71 = v158;
LABEL_151:
                if (v71 == &v157)
                {
                  v69 = v160;
                  goto LABEL_160;
                }

                goto LABEL_63;
              }
            }

LABEL_73:
            v72 = *(v72 + 8);
            if (v72 == &v157)
            {
              goto LABEL_147;
            }
          }

          v81 = *(v75 + 72);
LABEL_82:
          if (v81)
          {
            v82 = *(v75 + 80);
            v83 = *(v75 + 88);
            v85 = *(v73 + 32);
            v84 = *(v73 + 40);
            v86 = *(v75 + 96);
            v87 = *(v73 + 48);
            v88 = v80 + 0.0000999999975;
            if (v88 + *v82 * v85 + *v83 * v84 + *v86 * v87 >= 0.0)
            {
              v115 = 0;
              v116 = v82 + 1;
              v117 = v83 + 1;
              v118 = v86 + 1;
              while (v81 - 1 != v115)
              {
                v119 = v88 + v116[v115] * v85 + v117[v115] * v84 + v118[v115] * v87;
                ++v115;
                if (v119 < 0.0)
                {
                  if (v115 >= v81)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_84;
                }
              }

              goto LABEL_73;
            }

LABEL_84:
            v89 = *(v73 + 72);
            if (v89)
            {
              v90 = *(v73 + 80);
              v91 = *(v73 + 88);
              v92 = *(v75 + 32);
              v93 = *(v75 + 40);
              v94 = *(v73 + 96);
              v95 = *(v75 + 48);
              v96 = v79 + v153;
              if (v96 + *v90 * v92 + *v91 * v93 + *v94 * v95 <= 0.0)
              {
                v97 = 0;
                v98 = v90 + 1;
                v99 = v91 + 1;
                v100 = v94 + 1;
                while (v89 - 1 != v97)
                {
                  v101 = v96 + v98[v97] * v92 + v99[v97] * v93 + v100[v97] * v95;
                  ++v97;
                  if (v101 > 0.0)
                  {
                    if (v97 >= v89)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_102;
                  }
                }

                goto LABEL_73;
              }

LABEL_103:
              v109 = 0;
              while (1)
              {
                v110 = v109 ? v109 : v89;
                if (CA::Render::separating_axis(v73, v75, v110 - 1, v109))
                {
                  goto LABEL_73;
                }

                if (v89 == ++v109)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          goto LABEL_73;
        }

LABEL_164:
        v144 = v156;
        v145 = *v4;
        *(v145 + 8) = v156;
        *v144 = v145;
        v146 = v155;
        *(v155 + 1) = v4;
        *v4 = v146;
      }
    }
  }
}

unint64_t CA::Render::Context::copy_dirty_shape(CA::Render::Context *this, const CA::Bounds *a2)
{
  v3 = *(this + 76);
  if (v3)
  {
    return CA::Shape::ref(v3, a2);
  }

  else
  {
    return CA::Shape::new_shape((this + 616), a2);
  }
}

void CA::Render::LayerHost::retain_hosted_context(CA::Render::LayerHost *this, CA::Render::Context *a2, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0;
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  if (a4)
  {
    v9 = *(a2 + 11);
    if (v9)
    {
      v10 = (v9 + 8);
      if (!atomic_fetch_add((v9 + 8), 1u))
      {
        v9 = 0;
        atomic_fetch_add(v10, 0xFFFFFFFF);
      }
    }

    goto LABEL_9;
  }

  v11 = *(a2 + 12);
  if (!v11)
  {
    *(a2 + 12) = a3;
    *(a3 + 456) = x_list_prepend(*(a3 + 456), a2);
    v11 = *(a2 + 12);
  }

  if (v11 != a3)
  {
    v9 = 0;
LABEL_9:
    *this = v9;

    os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
    return;
  }

  v12 = *(a2 + 11);
  if (v12)
  {
    v13 = (v12 + 8);
    if (!atomic_fetch_add((v12 + 8), 1u))
    {
      v12 = 0;
      atomic_fetch_add(v13, 0xFFFFFFFF);
    }

    goto LABEL_15;
  }

  v17 = *(a2 + 7);
  if (v17)
  {
    if (a3)
    {
      v18 = a3;
      while (v17 != *(v18 + 16))
      {
        v19 = *(v18 + 448);
        if (v19)
        {
          v18 = *(v19 + 96);
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v20 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a2 + 7);
        *buf = 67109120;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, "LayerHost trying to host itself or one of its ancestors (context id %d)\n", buf, 8u);
      }

      *(a2 + 7) = 0;
    }

LABEL_38:
    v21 = CA::Render::Context::context_by_hosting_token((a2 + 16), v8);
    v12 = v21;
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = *(v21 + 448);
    if (v22)
    {
      v23 = v22[12];
      x_list_remove(*(v23 + 456), *(v21 + 448));
      *(v23 + 456) = v24;
      *(v12 + 448) = 0;
      v22[11] = 0;
      v22[12] = 0;
      *(v23 + 12) |= 0x2000u;
      X::Ref<CA::Render::Texture>::operator=(&v39, v12);
      v25 = v22[6];
      v22[6] = 0;
      *(a2 + 11) = v12;
      *buf = v25;
      if ((*(a2 + 13) & 4) == 0)
      {
        goto LABEL_60;
      }

      if (v25)
      {
        X::Ref<CA::Render::AsynchronousState>::operator=(a2 + 6, buf);
LABEL_59:
        v34 = *(a2 + 6);
        *(v34 + 21) = (*(a2 + 3) & 0x800) != 0;
        *(v34 + 64) = *(a2 + 10);
        std::vector<unsigned long long>::__move_assign(v34 + 40, (a2 + 56));
        *(a2 + 8) = *(a2 + 7);
LABEL_60:
        *(v12 + 448) = a2;
        if (*(*(a2 + 12) + 584))
        {
          v35 = *(a2 + 12);
        }

        else
        {
          v35 = 0;
        }

        CA::Render::Context::update_backdrop_namespaces_locked(v12, v35);
        CA::Render::Context::set_visible_locked(v12, *(a3 + 352) != 0);
        atomic_fetch_add(CA::Render::LayerHost::_seed, 1u);
        v36 = *buf;
        if (*buf && atomic_fetch_add((*buf + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v36 + 16))(v36);
        }

        goto LABEL_15;
      }
    }

    else
    {
      X::Ref<CA::Render::Texture>::operator=(&v39, v21);
      *(a2 + 11) = v12;
      *buf = 0;
      if ((*(a2 + 13) & 4) == 0)
      {
        goto LABEL_60;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v26 = malloc_type_zone_malloc(malloc_zone, 0x48uLL, 0x165299FDuLL);
    if (v26)
    {
      v28 = *(a2 + 5);
      if (v28)
      {
        v29 = v28 + 2;
        if (!atomic_fetch_add(v28 + 2, 1u))
        {
          v28 = 0;
          atomic_fetch_add(v29, 0xFFFFFFFF);
        }
      }

      v38 = v28;
      v30.n128_f64[0] = CA::Render::AsynchronousState::AsynchronousState(v26, &v38, *(a2 + 7));
      v31 = *(a2 + 6);
      *(a2 + 6) = v32;
      if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v31 + 16))(v31, v30.n128_f64[0]);
      }

      if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v28 + 16))(v28, v30);
      }
    }

    else
    {
      v33 = *(a2 + 6);
      *(a2 + 6) = 0;
      if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 16))(v33, v27);
      }
    }

    goto LABEL_59;
  }

  v12 = 0;
LABEL_15:
  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  if (v39)
  {
    CA::Render::invalidate_context(v39, v14);
  }

  if (v12)
  {
    CA::Render::Context::set_display_mask(v12, *(a3 + 640));
    CA::Render::Context::set_display_id(v12, *(a3 + 644));
    v15 = *(a3 + 632);
    if (*(v12 + 632) != v15)
    {
      *(v12 + 632) = v15;
      if (*(v12 + 260))
      {
        *(v12 + 12) |= 0x400000u;
      }
    }
  }

  *this = v12;
  v16 = v39;
  if (v39 && atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 16))(v16);
  }
}

uint64_t CA::Render::LayerHost::update@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(a2 + 1376) & 1) == 0)
  {
    v6 = *(result + 48);
    result = *(a3 + 264);
    if (result != v6)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v6)
      {
        v7 = (v6 + 8);
        if (!atomic_fetch_add((v6 + 8), 1u))
        {
          v6 = 0;
          atomic_fetch_add(v7, 0xFFFFFFFF);
        }
      }

      *(a3 + 264) = v6;
    }
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0x7FF0000000000000;
  return result;
}

void CA::Render::Updater::union_opaque_rect(uint64_t a1, uint64_t a2, const CA::Bounds *a3, float64x2_t a4, float64x2_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = vceqzq_f64(a5);
  if ((vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) != 0 || (v8 = vceqq_f64(a5, a5), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8).u64[0] & 0x8000000000000000) != 0))
  {
    v15 = 0uLL;
  }

  else
  {
    v9 = vmaxnmq_f64(a4, vdupq_n_s64(0xC1BFFFFFFF000000));
    v10 = vminnmq_f64(vaddq_f64(a4, a5), vdupq_n_s64(0x41C0000000000000uLL));
    v11 = vcvtpq_s64_f64(v9);
    v15 = vuzp1q_s32(v11, vsubq_s64(vcvtmq_s64_f64(v10), v11));
  }

  CA::shape_union((a2 + 56), &v15, a3);
  v14 = *(*a1 + 64);

  CA::shape_subtract((a2 + 56), v14, v12, v13);
}

BOOL CA::Render::Update::allowed_in_update(CA::Render::Update *this, CA::Render::Context *a2, const CA::Render::Layer *a3, int a4)
{
  v5 = (*(a3 + 10) >> 20) & 0x7FF | a4;
  v6 = *(this + 172);
  if ((v6 & 0x40) != 0)
  {
    v5 = (*(a3 + 10) >> 20) & 0x100 | a4 & 0x100;
  }

  if (v5)
  {
    if ((*(this + 172) & 0x28000000) == 0x8000000 && (v5 & 2) != 0)
    {
      return 0;
    }

    v8 = *(this + 73) & 0x10000;
    if ((v5 & 4) != 0)
    {
      if (v8)
      {
        return 0;
      }
    }

    if ((v5 & 8) != 0 && !v8 || (v6 & 0x20000000) != 0 && a2 && (v5 & 0x20) != 0 && (*(a2 + 292) & 8) != 0 || (v6 & 0x20) != 0 && (v5 & 0x40) != 0)
    {
      return 0;
    }

    if ((v6 & 0x100000000) != 0 && ((v5 & 0x100) != 0 || (v5 & 0x10) != 0 && ((v6 >> 7) & ((v5 & 0x400) >> 10)) == 0))
    {
      result = 0;
      *(this + 172) = v6 | 0x200000000;
      return result;
    }

    if ((v6 & 0x10000000) != 0 && (v5 & 0x200) != 0)
    {
      return 0;
    }
  }

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v9 = *(a3 + 17);
  if (!v9)
  {
    return 1;
  }

  v10 = *(v9 + 144);
  if (!v10)
  {
    return 1;
  }

  if (!*(this + 127))
  {
    return 1;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = (v10 + 24);
  v14 = 8 * v12 - 8;
  do
  {
    v15 = *v13++;
    v16 = *(this + 127);
    v17 = CA::Render::String::unsafe_cf_string(v15);
    v18 = CFSetContainsValue(v16, v17);
    result = v18 == 0;
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 == 0;
    }

    v14 -= 8;
  }

  while (!v19);
  return result;
}

void CA::Render::LayerNode::delete_node(CA::Render::LayerNode *this, CA::Render::LayerNode *a2)
{
  v2 = this;
  v3 = 0;
  v4 = 0;
  *(this + 11) = 0;
  do
  {
    v5 = v2;
    v6 = *(v2 + 11);
    v7 = *(v2 + 13);
    if (v7 != (v2 + 96))
    {
      do
      {
        v8 = *(v7 + 1);
        if (v8 == v7)
        {
          break;
        }

        *(v7 + 11) = 0;
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        *v7 = v7;
        *(v7 + 1) = v7;
        if (atomic_fetch_add(v7 + 4, 0xFFFFFFFF) == 1)
        {
          *(v7 + 11) = v6;
          v6 = v7;
        }

        v7 = v8;
      }

      while (v8 != (v2 + 96));
    }

    v10 = *(v2 + 16);
    if (v10 && (*(v10 + 11) = 0, atomic_fetch_add(v10 + 4, 0xFFFFFFFF) == 1))
    {
      *(v10 + 11) = v6;
    }

    else
    {
      v10 = v6;
    }

    v2 = *(v2 + 17);
    if (v2 && (*(v2 + 11) = 0, atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1))
    {
      *(v2 + 11) = v10;
    }

    else
    {
      v2 = v10;
    }

    v11 = *(v5 + 6);
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11, a2);
    }

    v12 = *(v5 + 26);
    if (v12)
    {
      CA::Shape::unref(v12);
    }

    v13 = *(v5 + 27);
    if (v13)
    {
      CA::Shape::unref(v13);
    }

    v14 = *(v5 + 28);
    if (v14)
    {
      CA::Shape::unref(v14);
    }

    v15 = *(v5 + 29);
    if (v15)
    {
      CA::Shape::unref(v15);
    }

    v16 = *(v5 + 7);
    if (v16)
    {
      *v16 = v3;
      v3 = *(v5 + 7);
    }

    v17 = *(v5 + 4);
    if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 16))(v17, a2);
    }

    v18 = *(v5 + 15);
    if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18, a2);
    }

    v19 = *(v5 + 5);
    if (v19)
    {
      *(v19 + 40) = 0;
    }

    v20 = *(v5 + 32);
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20, a2);
    }

    v21 = *(v5 + 33);
    if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21, a2);
    }

    v22 = *(v5 + 18);
    if (v22)
    {
      do
      {
        v23 = *v22;
        free(v22);
        v22 = v23;
      }

      while (v23);
    }

    *(v5 + 11) = v4;
    v4 = v5;
  }

  while (v2);
  do
  {
    while (1)
    {
      v24 = v5;
      v5 = *(v5 + 11);
      *&v25 = 0x2222222222222222;
      *(&v25 + 1) = 0x2222222222222222;
      *v24 = v25;
      *(v24 + 1) = v25;
      *(v24 + 2) = v25;
      *(v24 + 3) = v25;
      *(v24 + 6) = v25;
      *(v24 + 7) = v25;
      *(v24 + 8) = v25;
      *(v24 + 9) = v25;
      *(v24 + 10) = v25;
      *(v24 + 11) = v25;
      *(v24 + 12) = v25;
      *(v24 + 13) = v25;
      *(v24 + 14) = v25;
      *(v24 + 15) = v25;
      *(v24 + 16) = v25;
      *(v24 + 17) = v25;
      *(v24 + 4) = v25;
      *(v24 + 5) = v25;
      if (CA::Render::LayerNodeAllocator::_data > v24)
      {
        if (x_malloc_get_zone::once == -1)
        {
          goto LABEL_50;
        }

LABEL_54:
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        goto LABEL_50;
      }

      v26 = 0x8E38E38E38E38E39 * ((v24 - CA::Render::LayerNodeAllocator::_data) >> 5);
      if (v26 < 0x1000)
      {
        break;
      }

      if (x_malloc_get_zone::once != -1)
      {
        goto LABEL_54;
      }

LABEL_50:
      malloc_zone_free(malloc_zone, v24);
      if (!v5)
      {
        goto LABEL_55;
      }
    }

    os_unfair_lock_lock(&CA::Render::LayerNodeAllocator::_lock);
    v27 = CA::Render::LayerNodeAllocator::_free_offsets_count++;
    *(CA::Render::LayerNodeAllocator::_free_offsets + 2 * v27) = v26;
    os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
  }

  while (v5);
LABEL_55:
  if (v3)
  {
    do
    {
      v28 = *v3;
      free(v3);
      v3 = v28;
    }

    while (v28);
  }
}

void CA::Render::Update::add_included_context(CA::Render::Update *this, CA::Render::Context *a2, char a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v20 = 0.0;
  v21 = 0.0;
  CA::Render::Context::get_begin_time(a2, &v21, &v20, *(this + 107), *(this + 16));
  v5 = mach_absolute_time();
  v6 = CATimeWithHostTime(v5);
  if (v6 >= v21)
  {
    v7.f64[0] = v21;
  }

  else
  {
    v7.f64[0] = v6;
  }

  v8 = v20;
  if (v20 < v7.f64[0])
  {
    v8 = v7.f64[0];
  }

  v20 = v8;
  v21 = v7.f64[0];
  v9 = *(this + 107);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 && v7.f64[0] != 1.79769313e308 && v9 != 0)
  {
    v19 = v7.f64[0];
    v12 = (*(v9 + 16))(v7.f64[0]);
    v7.f64[0] = v19;
    v8 = v12 + v19;
  }

  v7.f64[1] = v8;
  *(this + 824) = vbslq_s8(vcgtq_f64(v7, *(this + 824)), *(this + 824), v7);
  v13 = *(a2 + 77);
  if (v13 > *(this + 295))
  {
    *(this + 295) = v13;
    if (BYTE14(xmmword_1ED4E980C) == 1)
    {
      if (!atomic_load(a2 + 57))
      {
        if (*(a2 + 64))
        {
          v17 = 0;
        }

        else
        {
          v17 = getpid();
        }

        v18 = 0;
        atomic_compare_exchange_strong(a2 + 57, &v18, v17);
      }

      kdebug_trace();
    }

    v14 = atomic_load(a2 + 57);
    if (!v14)
    {
      v15 = *(a2 + 64) ? 0 : getpid();
      v14 = 0;
      atomic_compare_exchange_strong(a2 + 57, &v14, v15);
      if (!v14)
      {
        v14 = v15;
      }
    }

    if (*(this + 153) - *(this + 152) <= 0xFFuLL)
    {
      v22.n128_u16[0] = 1024;
      *(v22.n128_u64 + 4) = __PAIR64__(LODWORD(v13), v14);
      v22.n128_f32[3] = v13;
      X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(this + 152, &v22);
    }
  }

  CAHostTimeWithTime(v21);
  v22 = 0uLL;
  mach_get_times();
  if (*(a2 + 73))
  {
    *(this + 38) |= 0x1000000uLL;
  }

  operator new();
}

BOOL CA::Render::Update::ContextInfo::operator<(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v6 = *(a1 + 3);
  v7 = *(a2 + 3);
  v8 = v6 >= v7;
  if (v6 != v7)
  {
    return !v8;
  }

  v9 = *a1;
  v10 = atomic_load((*a1 + 228));
  if (!v10)
  {
    if (*(v9 + 256))
    {
      v11 = 0;
    }

    else
    {
      v11 = getpid();
    }

    v13 = 0;
    atomic_compare_exchange_strong((v9 + 228), &v13, v11);
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  v14 = *a2;
  v15 = atomic_load((*a2 + 228));
  if (!v15)
  {
    v16 = *(v14 + 256) ? 0 : getpid();
    v15 = 0;
    atomic_compare_exchange_strong((v14 + 228), &v15, v16);
    if (!v15)
    {
      v15 = v16;
    }
  }

  v17 = *a1;
  if (v10 == v15)
  {
    v18 = v17[4];
    v19 = *(*a2 + 16);
    v8 = v18 >= v19;
    if (v18 == v19)
    {
      v8 = a1[2] >= a2[2];
    }

    return !v8;
  }

  v20 = atomic_load(v17 + 57);
  if (!v20)
  {
    if (v17[64])
    {
      v21 = 0;
    }

    else
    {
      v21 = getpid();
    }

    v22 = 0;
    atomic_compare_exchange_strong(v17 + 57, &v22, v21);
    if (v22)
    {
      v20 = v22;
    }

    else
    {
      v20 = v21;
    }
  }

  v23 = *a2;
  v24 = atomic_load((v23 + 228));
  if (!v24)
  {
    v25 = *(v23 + 256) ? 0 : getpid();
    v24 = 0;
    atomic_compare_exchange_strong((v23 + 228), &v24, v25);
    if (!v24)
    {
      v24 = v25;
    }
  }

  return v20 < v24;
}

uint64_t CA::Render::Update::allowed_to_include_context(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 376);
  if (!v4 || (result = (*(*v4 + 40))(v4, a2), result))
  {
    v6 = *(a1 + 348);
    if (v6)
    {
      v7 = atomic_load((a2 + 228));
      if (!v7)
      {
        if (*(a2 + 256))
        {
          v8 = 0;
        }

        else
        {
          v8 = getpid();
        }

        v7 = 0;
        atomic_compare_exchange_strong((a2 + 228), &v7, v8);
        if (!v7)
        {
          v7 = v8;
        }
      }

      return v6 == v7;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void CA::Render::Context::get_begin_time(uint64_t a1, double *a2, double *a3, uint64_t a4, double a5)
{
  os_unfair_lock_lock((a1 + 512));
  v10 = *(a1 + 520);
  v11 = *(a1 + 528);
  if (v10 == v11)
  {
    v12 = INFINITY;
    v13 = 1.79769313e308;
  }

  else
  {
    v12 = INFINITY;
    v13 = 1.79769313e308;
    do
    {
      v14 = v10[1];
      v15 = COERCE_DOUBLE(atomic_load(&CA::Render::Context::_begin_time_threshold));
      if (v14 > v15)
      {
        if (v10[1] > a5)
        {
          break;
        }

        v16 = *v10;
        v17 = v10[2];
        if (a4 && v16 != 1.79769313e308 && (v10[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v17 = (*(a4 + 16))(a4, *v10) + v16;
        }

        if (v13 >= v16)
        {
          v13 = v16;
        }

        if (v12 >= v17)
        {
          v12 = v17;
        }
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  *a2 = v13;
  *a3 = v12;

  os_unfair_lock_unlock((a1 + 512));
}

double ___ZN2CA12WindowServer6Server15render_for_timeEdPK11CVTimeStampyPK17CATimingReferencej_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(**(v1 + 96) + 2280))(*(v1 + 96));
  return (*(**(v1 + 96) + 776))() * v2;
}

uint64_t CA::WindowServer::IOMFBDisplay::frame_interval_at_time(os_unfair_lock_s *this, __n128 a2)
{
  if ((this[160]._os_unfair_lock_opaque & 0x100) != 0)
  {
    v3 = a2.n128_f64[0];
    os_unfair_lock_lock(this + 7269);
    v4 = *&this[7270]._os_unfair_lock_opaque;
    v5 = v4 + 3;
    v6 = &this[4 * v4 + 7284];
    v7 = -3;
    while (1)
    {
      v8 = *&v6[-12 * (v5 / 3)]._os_unfair_lock_opaque;
      if (v8 != 0.0 && v8 < v3)
      {
        break;
      }

      --v5;
      v6 -= 4;
      if (__CFADD__(v7++, 1))
      {
        os_unfair_lock_unlock(this + 7269);
        goto LABEL_10;
      }
    }

    os_unfair_lock_opaque = this[4 * (v5 % 3) + 7274]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 7269);
    return os_unfair_lock_opaque;
  }

  else
  {
LABEL_10:
    v11 = *(*&this->_os_unfair_lock_opaque + 784);

    return v11(this, a2);
  }
}

void CA::Render::Context::invalidate(CA::Shape **this, int32x2_t *a2, const CA::Bounds *a3, __n128 a4, __n128 a5)
{
  v5 = a2[1].i32[0];
  if (v5 >= a2[1].i32[1])
  {
    v5 = a2[1].i32[1];
  }

  if (v5 >= 1)
  {
    if (this[76])
    {
      v7 = (this + 76);
      CA::shape_union(this + 76, a2, a3);
      v8 = *v7;
      if ((*v7 & 1) == 0 && *(v8 + 4) >= 65)
      {
        CA::Shape::get_bounds(v8, (this + 77));
        CA::Shape::unref(this[76]);
        this[76] = 0;
      }
    }

    else
    {
      v9 = *a2;
      v10 = a2[1];
      v11 = (this + 77);

      CA::BoundsImpl::Union(v11, v9, v10);
    }
  }
}

int32x4_t *CA::Bounds::set_interior(int32x4_t *this, const Rect *a2, float64x2_t a3, float64x2_t a4)
{
  v4 = vceqzq_f64(a4);
  if ((vorrq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0] & 0x8000000000000000) != 0 || (v5 = vceqq_f64(a4, a4), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v5), 1), v5).u64[0] & 0x8000000000000000) != 0))
  {
    *this = 0uLL;
  }

  else
  {
    v6 = vmaxnmq_f64(a3, vdupq_n_s64(0xC1BFFFFFFF000000));
    v7 = vminnmq_f64(vaddq_f64(a3, a4), vdupq_n_s64(0x41C0000000000000uLL));
    v8 = vcvtpq_s64_f64(v6);
    *this = vuzp1q_s32(v8, vsubq_s64(vcvtmq_s64_f64(v7), v8));
  }

  return this;
}

void CA::Render::Context::invalidate(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 1)
    {
      return;
    }
  }

  else if (*(a2 + 1) == 6)
  {
    return;
  }

  if (this[76])
  {
    v4 = (this + 76);
    CA::shape_union(this + 76, a2, a3);
    v5 = *v4;
    if ((*v4 & 1) == 0 && *(v5 + 4) >= 65)
    {
      CA::Shape::get_bounds(v5, (this + 77));
      CA::Shape::unref(this[76]);
      this[76] = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    CA::Shape::get_bounds(a2, &v6);
    CA::BoundsImpl::Union(this + 77, v6, v7);
  }
}

uint64_t CA::Render::Update::allowed_in_secure_update(CA::Render::Update *this, CA::Render::Context *a2, const CA::Render::LayerHost *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(this + 172);
  if ((v3 & 0x20) == 0)
  {
    return 1;
  }

  if ((*(a2 + 292) & 4) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v7 = *(a3 + 12);
    if (v7)
    {
      if ((*(v7 + 584) & 4) != 0 && (*(a3 + 13) & 2) != 0)
      {
        return 1;
      }
    }
  }

  if ((*(a2 + 14) & 4) == 0 && (v3 & 1) == 0)
  {
    memset(v26, 0, sizeof(v26));
    if (a3)
    {
      v8 = *(a3 + 12);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v8[4];
        v11 = atomic_load(v8 + 57);
        if (!v11)
        {
          if (v8[64])
          {
            v12 = 0;
          }

          else
          {
            v12 = getpid();
          }

          v14 = 0;
          atomic_compare_exchange_strong(v8 + 57, &v14, v12);
          if (v14)
          {
            v11 = v14;
          }

          else
          {
            v11 = v12;
          }
        }

        v15 = CA::Render::Context::process_path(*(a3 + 12));
        X::Stream::printf(v26, "Cannot host %x in context %x - pid %u [%s].\n", v9, v10, v11, v15 + 28);
      }
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v16 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a2 + 4);
      v21 = atomic_load(a2 + 57);
      if (!v21)
      {
        if (*(a2 + 64))
        {
          v22 = 0;
        }

        else
        {
          v22 = getpid();
        }

        v23 = 0;
        atomic_compare_exchange_strong(a2 + 57, &v23, v22);
        if (v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v22;
        }
      }

      v24 = CA::Render::Context::process_path(a2) + 7;
      v25 = x_stream_get(v26);
      *buf = 67109890;
      v28 = v20;
      v29 = 1024;
      v30 = v21;
      v31 = 2080;
      v32 = v24;
      v33 = 2080;
      v34 = v25;
      _os_log_error_impl(&dword_183AA6000, v16, OS_LOG_TYPE_ERROR, "insecure context %x - pid %u [%s].\n%s", buf, 0x22u);
      if (!a3)
      {
        goto LABEL_35;
      }
    }

    else if (!a3)
    {
LABEL_35:
      *(a2 + 3) |= 0x40000u;
      *(this + 38) |= 0x200uLL;
      if (v26[0])
      {
        free(v26[0]);
      }

      return 0;
    }

    v17 = *(a3 + 12);
    if (v17)
    {
      v18 = atomic_load((v17 + 228));
      if (!v18)
      {
        if (*(v17 + 256))
        {
          v19 = 0;
        }

        else
        {
          v19 = getpid();
        }

        v18 = 0;
        atomic_compare_exchange_strong((v17 + 228), &v18, v19);
        if (!v18)
        {
          v18 = v19;
        }
      }

      *(a2 + 75) = v18;
      *(a2 + 76) = *(*(a3 + 12) + 16);
    }

    goto LABEL_35;
  }

  return 0;
}

uint64_t CA::Render::MatchMoveDependence::run(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 104) & 8) != 0)
  {
    *(*(result + 48) + 76) = *(a2 + 272);
  }

  return result;
}

uint64_t CA::Render::MatchPropertyDependence::run(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 24;
  if (*(result + 360))
  {
    v3 = 8;
  }

  if ((v3 & *(a3 + 104)) != 0)
  {
    *(*(result + 48) + 76) = *(a2 + 272);
  }

  return result;
}

_DWORD *CA::Render::Vector::new_vector(CA::Render::Vector *this, const void *a2, const double *a3)
{
  v4 = this;
  v5 = 8 * this;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, v5 + 24, 0xF521AEBEuLL);
  v7 = v6;
  if (v6)
  {
    v6[2] = 1;
    v6[3] = 62;
    ++dword_1ED4EAB30;
    *v6 = &unk_1EF202890;
    v6[4] = v4;
    v8 = v6 + 6;
    if (a2)
    {
      memcpy(v8, a2, v5);
    }

    else
    {
      bzero(v8, v5);
    }
  }

  return v7;
}

void CA::Render::InterpolatedFunction::allocate_storage(CA::Render::InterpolatedFunction *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!v1)
  {
    return;
  }

  if (*(this + 4))
  {
    goto LABEL_3;
  }

  if (!is_mul_ok(v1, *(this + 6)))
  {
    return;
  }

  v8 = v1 * *(this + 6);
  v9 = *(this + 3);
  if ((v9 & 0x200) == 0)
  {
    v1 = 0;
  }

  v10 = __CFADD__(v8, v1);
  v11 = v8 + v1;
  if (v10 || v11 >> 62)
  {
    return;
  }

  v12 = 4 * v11;
  if (4 * v11 <= 0x28000)
  {
    v14 = malloc_type_malloc(v12, 0x100004052888210uLL);
    *(this + 4) = v14;
    if ((v9 & 0x200) != 0 && v14)
    {
      *(this + 5) = &v14[4 * v8];
    }

LABEL_3:
    if (!*(this + 6) && (*(this + 13) & 4) != 0)
    {
      v3 = *(this + 2) - 1;
      if (!(v3 >> 59))
      {
        v4 = 32 * v3;
        if (32 * v3 <= 0x14000)
        {
          *(this + 6) = malloc_type_malloc(32 * v3, 0x100004000313F17uLL);
        }

        else
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v5 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v6 = *(this + 2);
            v15 = 134218240;
            v16 = v4;
            v17 = 2048;
            v18 = v6;
            v7 = "suspiciously large interpolations: %zu count: %zu";
LABEL_21:
            _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, v7, &v15, 0x16u);
            return;
          }
        }
      }
    }

    return;
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v5 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v13 = *(this + 2);
    v15 = 134218240;
    v16 = v12;
    v17 = 2048;
    v18 = v13;
    v7 = "suspiciously large function size: %zu count: %zu";
    goto LABEL_21;
  }
}

void CA::Render::PropertyAnimation::set(void *const *this, CA::Render::Layer *a2, CA::Render::VelocityState *a3, unint64_t a4, double *a5, const double *a6, const double *a7, double *a8, const double *a9, const double *a10, float64x2_t *a11, double *a12)
{
  v211 = *MEMORY[0x1E69E9840];
  if (!(a4 >> 61))
  {
    v15 = a4;
    v18 = this;
    v163 = a7;
    v164 = 8 * a4;
    if (8 * a4 > 0x1000)
    {
      v33 = malloc_type_malloc(v164, 0x3850EDF1uLL);
      v34 = v163;
      if (!v33)
      {
        return;
      }

      v21 = v33;
      __asm { FMOV            V0.2D, #1.0 }

      v187 = _Q0;
      if (!a3)
      {
        v160 = a2;
        v31 = 0;
        v162 = 0;
        v32 = 0;
        goto LABEL_12;
      }

      v162 = malloc_type_malloc(v164, 0x6660C058uLL);
      if (!v162)
      {
LABEL_109:
        free(v21);
        return;
      }

      v160 = a2;
      v31 = 1;
      v32 = v21;
    }

    else
    {
      v158 = a4;
      v159 = this;
      v19 = v164;
      MEMORY[0x1EEE9AC00](this);
      v20 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = (v149.f64 - v20);
      bzero(&v149 - v20, v164);
      __asm { FMOV            V0.2D, #1.0 }

      v187 = _Q0;
      v160 = a2;
      if (a3)
      {
        MEMORY[0x1EEE9AC00](v22);
        v162 = (&v149 - v20);
        bzero(&v149 - v20, v19);
        v31 = 1;
        v32 = (&v149 - v20);
      }

      else
      {
        v31 = 0;
        v162 = 0;
        v32 = 0;
      }

      v15 = v158;
      v18 = v159;
    }

    v34 = v163;
LABEL_12:
    v36 = *(v18 + 13);
    v161 = a3;
    if ((v36 & 4) != 0 && (v37 = *(v18 + 5)) != 0)
    {
      if (*(v37 + 13))
      {
        a10 = a9;
      }
    }

    else
    {
      a10 = 0;
    }

    v39 = *(v18 + 12);
    v159 = v18 + 12;
    if (v39)
    {
      if (v39)
      {
        v40 = v39 >> 1;
      }

      else
      {
        if (!*v39)
        {
          goto LABEL_33;
        }

        v40 = v39[1];
      }

      if (v40 == 154 || v40 == 716 || v40 == 693)
      {
        if (v15 == 6)
        {
          v202 = 0u;
          v203 = 0u;
          v201 = 0u;
          if (v34)
          {
            v92 = *(a6 + 1);
            v198 = *a6;
            v199 = v92;
            v200 = *(a6 + 2);
            v93 = *(v34 + 1);
            v179 = *v34;
            v180 = v93;
            v181 = *(v34 + 4);
            v94 = v31;
            if (v31)
            {
              v192.f64[0] = 0.0;
              v190 = 0u;
              v191 = 0u;
              v188 = 0u;
              v189 = 0u;
              CA::Mat2Impl::mat2_mix_with_deriv(&v201, &v198, &v179, &v188, &v187, a11->f64[0], a11->f64[1]);
              v32 = &v187;
              v95 = v162;
              *v162 = v188;
              v95[1] = v189;
              v95[2].f64[0] = v190.f64[0];
            }

            else
            {
              v102 = v32;
              CA::Mat2Impl::mat2_mix(&v201, v198.f64, v179.f64, v25, a11->f64[0]);
              v32 = v102;
            }

            v90 = v94;
            LOBYTE(v31) = v94;
          }

          else
          {
            v90 = 0;
            v100 = *(a6 + 2);
            v201 = *a6;
            v202 = v100;
            v203 = *(a6 + 4);
          }

          v56 = v160;
          if (a10)
          {
            v103 = *(a10 + 2);
            v188 = *a10;
            v189 = v103;
            v190 = *(a10 + 4);
            v104 = v31;
            v105 = v32;
            CA::Mat2Impl::mat2_pow(&v188, a12);
            v32 = v105;
            LOBYTE(v31) = v104;
            v106 = vmlaq_n_f64(vmulq_n_f64(v201, v188.f64[0]), v202, v188.f64[1]);
            v107 = vmlaq_n_f64(vmulq_n_f64(v201, v189.f64[0]), v202, v189.f64[1]);
            v108 = vmlaq_n_f64(vmlaq_n_f64(v203, v201, v190.f64[0]), v202, v190.f64[1]);
          }

          else
          {
            v106 = v201;
            v107 = v202;
            v108 = v203;
          }

          v91 = v161;
          v34 = v163;
          *v21 = v106;
          v21[1] = v107;
          v21[2] = v108;
LABEL_93:
          v143 = v31 ^ 1;
          if (!v34)
          {
            v143 = 1;
          }

          if ((v143 & 1) == 0)
          {
            CA::Render::VelocityState::set_keypath_velocity(v91, *(v18 + 12), *(v18 + 13), (*(v18 + 3) >> 9) & 1, v15, v162, v32->f64, v90);
          }

          v144 = *(v18 + 13);
          if (v144)
          {
            if ((*(*v144 + 104))(v144) <= v15)
            {
              v145 = (*(**(v18 + 13) + 112))(*(v18 + 13));
              v146 = v145;
              if (v145 <= 0x200)
              {
                MEMORY[0x1EEE9AC00](v145);
                v148 = &v149 - ((v147 + 15) & 0xFFFFFFFF0);
                bzero(v148, v147);
LABEL_103:
                *&v188.f64[0] = v18;
                *&v188.f64[1] = v56;
                if ((*(**(v18 + 13) + 128))(*(v18 + 13), 1, v21, 0, v148, 0, CA::Render::animation_get_function_param, &v188))
                {
                  CA::Render::Layer::set_keypath_value(v56, v159, ((*(v18 + 3) >> 9) & 1), v146, v148);
                }

                if (v146 >= 0x201)
                {
                  free(v148);
                }

                goto LABEL_107;
              }

              v148 = malloc_type_malloc(8 * v145, 0x2D98A9AAuLL);
              if (v148)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            CA::Render::Layer::set_keypath_value(v56, v159, ((*(v18 + 3) >> 9) & 1), v15, v21);
          }

LABEL_107:
          if (v164 <= 0x1000)
          {
            return;
          }

          free(v162);
          goto LABEL_109;
        }

        if (v15 == 16)
        {
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          if (v34)
          {
            v41 = *(a6 + 5);
            v175 = *(a6 + 4);
            v176 = v41;
            v42 = *(a6 + 7);
            v177 = *(a6 + 12);
            v178 = v42;
            v43 = *(a6 + 1);
            v172[0] = *a6;
            v172[1] = v43;
            v44 = *(a6 + 3);
            v173 = *(a6 + 4);
            v174 = v44;
            v45 = *v34;
            v46 = *(v34 + 1);
            v47 = *(v34 + 3);
            v166 = *(v34 + 2);
            v167 = v47;
            v165[0] = v45;
            v165[1] = v46;
            v48 = *(v34 + 4);
            v49 = *(v34 + 5);
            v50 = *(v34 + 7);
            v170 = *(v34 + 6);
            v171 = v50;
            v168 = v48;
            v169 = v49;
            v51 = v31;
            if (v31)
            {
              v52 = a11->f64[0];
              *&v48 = a11->f64[1];
              *v157 = v48;
              if (CA::Mat4Impl::mat4_is_affine(v172, v23) && CA::Mat4Impl::mat4_is_affine(v165, v53))
              {
                v201 = v172[0];
                v202 = v173;
                v203 = v177;
                v198 = v165[0];
                v199 = v166;
                v200 = v170;
                CA::Mat2Impl::mat2_mix_with_deriv(v210, &v201, &v198, &v188, &v187, v52, v157[0]);
                v54 = 0uLL;
                v55 = 0.0;
                v56 = v160;
                v34 = v163;
                v31 = v51;
                v57 = v188;
                v58 = v189;
                memset(v197, 0, 40);
                v183 = 0uLL;
                v184 = xmmword_183E20E00;
                v179 = v210[0];
                v180 = 0uLL;
                v181 = v210[1];
                v182 = 0uLL;
                v59 = 1;
                v60 = 0.0;
                v185 = v210[2];
                v186 = xmmword_183E20E60;
                v61 = 0.0;
                v62 = 0uLL;
                v63 = v190.f64[0];
              }

              else
              {
                CA::Mat4Impl::mat4_get_unmatrix(v172, &v188, 1);
                CA::Mat4Impl::mat4_get_unmatrix(v165, &v201, 1);
                CA::mix(&v198, &v188, &v201, v52);
                v109 = *(&v194 + 1);
                v156 = vmulq_n_f64(vsubq_f64(v205, v192), v157[0]);
                v197[0] = v156;
                v197[1] = vmulq_n_f64(vsubq_f64(v206, v193), v157[0]);
                *&v197[2] = (v207 - *&v194) * v157[0];
                v110 = v196;
                v111 = v195;
                v112 = vmuld_lane_f64(v196, v209, 1);
                v113 = vaddvq_f64(vmulq_f64(vextq_s8(v208, v209, 8uLL), v195));
                v114 = v113 + *v208.i64 * *(&v194 + 1) + v112;
                v56 = v160;
                if (v114 < 0.0)
                {
                  v114 = -(v113 + v112 + *v208.i64 * *(&v194 + 1));
                  v109 = -*(&v194 + 1);
                  v111 = vnegq_f64(v195);
                  v110 = -v196;
                }

                v154 = vsubq_f64(v201, v188);
                v152 = vsubq_f64(v203, v190);
                v153 = vsubq_f64(v202, v189);
                v115 = vmlaq_f64(vmulq_n_f64(v209, v109), vzip2q_s64(v209, v208), v111);
                v116 = vsubq_f64(vmlaq_n_f64(vmulq_f64(v111, vzip1q_s64(v209, v208)), v208, v110), vextq_s8(v115, v115, 8uLL));
                v117.f64[0] = v111.f64[0];
                v117.f64[1] = v109;
                v118 = vmulq_f64(v117, v208);
                v111.f64[0] = v110;
                v119 = vmlaq_f64(vextq_s8(v118, v118, 8uLL), v209, v111);
                v120 = vsubq_f64(v119, vdupq_laneq_s64(v119, 1));
                v150 = v116;
                v151 = vsubq_f64(v204, v191);
                v121 = vmulq_f64(v116, v116);
                v149 = v120;
                v122 = vmlaq_f64(vaddq_f64(vdupq_laneq_s64(v121, 1), v121), v120, v120);
                v122.f64[0] = sqrt(v122.f64[0]);
                v155 = v122;
                v125 = atan2(v122.f64[0], v114);
                v126 = v125 + v125;
                if (v155.f64[0] == 0.0)
                {
                  v155 = 0u;
                  v128 = 1.0;
                }

                else
                {
                  v127 = vdivq_f64(v150, vdupq_lane_s64(*&v155.f64[0], 0));
                  v128 = v149.f64[0] / v155.f64[0];
                  if (v149.f64[0] / v155.f64[0] >= 0.0)
                  {
                    v155 = v127;
                  }

                  else
                  {
                    v155 = vnegq_f64(v127);
                    v128 = -v128;
                    v126 = -v126;
                  }
                }

                v153 = vmulq_n_f64(v153, v157[0]);
                v154 = vmulq_n_f64(v154, v157[0]);
                v151 = vmulq_n_f64(v151, v157[0]);
                v152 = vmulq_n_f64(v152, v157[0]);
                v63 = -(v157[0] * v126);
                v187 = v198;
                CA::Mat4Impl::mat4_set_unmatrix(&v179, &v198, v123, v124);
                v58 = v151;
                v62 = v152;
                v55 = v153.f64[0];
                v57 = v154;
                v59 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v197 + 8)), vceqzq_f64(*(&v197[1] + 8)))))) ^ 1;
                v61 = v128 + -1.0;
                v34 = v163;
                v31 = v51;
                v54 = v155;
                v60 = v156.f64[0];
              }

              if ((v59 & 1) == 0 || fabs(v54.f64[0]) >= 0.000001 || (v54.f64[0] = v61, v129 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vabsq_f64(v54))), (v129.i8[4] & 1) == 0) || (v129.i8[0] & 1) == 0 || v62.f64[0] != 0.0 || v62.f64[1] != 0.0)
              {
                v130 = v161;
                if ((*(v161 + 153) & 0x10) == 0)
                {
                  *(v161 + 156) = 3;
                }

                *(v130 + 38) = 4096;
              }

              if (fabs(v55 + -1.0) >= 0.000001 || fabs(v60) >= 0.000001)
              {
                *(v161 + 38) |= 0x400u;
              }

              v131 = v162;
              *v162 = v57;
              *(v131 + 1) = v58;
              v32 = &v187;
              v90 = v31;
              *(v131 + 4) = v63;
            }

            else
            {
              v101 = v32;
              CA::Mat4Impl::mat4_mix(&v179, v172, v165, v25, a11->f64[0]);
              v32 = v101;
              v90 = 0;
              v56 = v160;
              v34 = v163;
              LOBYTE(v31) = 0;
            }
          }

          else
          {
            v90 = 0;
            v96 = *(a6 + 5);
            v183 = *(a6 + 4);
            v184 = v96;
            v97 = *(a6 + 7);
            v185 = *(a6 + 12);
            v186 = v97;
            v98 = *(a6 + 1);
            v179 = *a6;
            v180 = v98;
            v99 = *(a6 + 3);
            v181 = *(a6 + 4);
            v182 = v99;
            v56 = v160;
          }

          if (a10)
          {
            v132 = *(a10 + 10);
            v192 = *(a10 + 8);
            v193 = v132;
            v133 = *(a10 + 14);
            v194 = *(a10 + 6);
            v195 = v133;
            v134 = *(a10 + 2);
            v188 = *a10;
            v189 = v134;
            v135 = *(a10 + 6);
            v190 = *(a10 + 4);
            v191 = v135;
            v136 = v31;
            v137 = v32;
            CA::Mat4Impl::mat4_pow(&v188, a12, v24, v25);
            CA::Mat4Impl::mat4_concat(&v179, v188.f64, v179.f64, v138);
            v32 = v137;
            LOBYTE(v31) = v136;
            v34 = v163;
          }

          v139 = v184;
          v21[4] = v183;
          v21[5] = v139;
          v140 = v186;
          v21[6] = v185;
          v21[7] = v140;
          v141 = v180;
          *v21 = v179;
          v21[1] = v141;
          v142 = v182;
          v21[2] = v181;
          v21[3] = v142;
LABEL_92:
          v91 = v161;
          goto LABEL_93;
        }
      }
    }

LABEL_33:
    LODWORD(v157[0]) = a12;
    v158 = v21;
    if (v34)
    {
      v64 = v21;
      v65 = v32;
      v66 = v31;
      (*(*v18 + 20))(v18, v15, v64, a5, a6, v34, a8, a11);
      v32 = v65;
      LOBYTE(v31) = v66;
      v34 = v163;
      if (v66)
      {
        if (LOBYTE(a11[7].f64[0]) == 1 && a5 | a8)
        {
          v67 = v15;
          v68 = v162;
          v69 = v163;
          while (1)
          {
            v70 = *a6++;
            v71.f64[0] = v70;
            v72 = *v69++;
            v73.f64[0] = v72;
            if (a5)
            {
              v74 = *a5++;
              v75 = v74;
              if (!a8)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v75 = -(v73.f64[0] + v71.f64[0] * -2.0);
              if (!a8)
              {
LABEL_42:
                v77 = -(v71.f64[0] + v73.f64[0] * -2.0);
                goto LABEL_43;
              }
            }

            v76 = *a8++;
            v77 = v76;
LABEL_43:
            v71.f64[1] = a11[5].f64[0] * (v71.f64[0] - v75) + a11[5].f64[1] * (v73.f64[0] - v71.f64[0]);
            v73.f64[1] = a11[6].f64[0] * (v73.f64[0] - v71.f64[0]) + a11[6].f64[1] * (v77 - v73.f64[0]);
            *v68++ = vaddvq_f64(vmlaq_f64(vmulq_f64(a11[4], v73), v71, a11[3])) * a11->f64[1];
            v67 = (v67 - 1);
            if (!v67)
            {
              goto LABEL_50;
            }
          }
        }

        v80 = v15;
        v81 = v163;
        v82 = v162;
        do
        {
          v83 = *a6++;
          v84 = v83;
          v85 = *v81++;
          *v82++ = a11->f64[1] * (v85 - v84);
          v80 = (v80 - 1);
        }

        while (v80);
      }
    }

    else
    {
      v78 = v15;
      do
      {
        v79 = *a6++;
        *v21 = v79;
        v21 = (v21 + 8);
        v78 = (v78 - 1);
      }

      while (v78);
    }

LABEL_50:
    if (!a10)
    {
      v90 = 0;
      v56 = v160;
      v91 = v161;
      v21 = v158;
      goto LABEL_93;
    }

    v86 = SLODWORD(v157[0]);
    v21 = v158;
    v87 = v158;
    v88 = v15;
    v56 = v160;
    do
    {
      v89 = *a10++;
      *v87 = *v87 + v89 * v86;
      ++v87;
      v88 = (v88 - 1);
    }

    while (v88);
    v90 = 0;
    goto LABEL_92;
  }
}

double CA::Render::Animation::time_derivative(CA::Render::Animation *this, double a2, const double *a3)
{
  v4 = *(this + 5);
  v5 = 1.0;
  if (v4)
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 16);
  }

  else
  {
    v6 = INFINITY;
    v7 = 1.0;
  }

  v8 = *(this + 6);
  if (v8 && *(v8 + 16) == 4)
  {
    v5 = CA::Render::TimingFunction::evaluate_derivative_inverse(this, a3, *(v8 + 24), *(v8 + 40), a2, 0.001 / v6);
  }

  return v5 * v7 / v6;
}

double CA::Render::PropertyAnimation::interpolate_vector(CA::Render::PropertyAnimation *this, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7, float64x2_t *a8)
{
  if (LOBYTE(a8[7].f64[0]) == 1 && (a4 | a7) != 0)
  {
    return CA::Render::ValueInterpolator::mix_n<double>(a8, a2, a3, a4, a5, a6, a7);
  }

  for (; a2; --a2)
  {
    v9 = *a5++;
    v10 = v9;
    v11 = *a6++;
    result = v10 + a8->f64[0] * (v11 - v10);
    *a3++ = result;
  }

  return result;
}

void CA::Render::BasicAnimation0::apply(CA::Render::BasicAnimation0 *this, CA::Render::Layer **a2, double a3, int a4, char a5)
{
  v131 = *MEMORY[0x1E69E9840];
  keypath_object = *(this + 14);
  v11 = *(this + 15);
  v12 = *(this + 16);
  v13 = CA::Render::PropertyAnimation::apply_velocity_state(this, a2);
  v14 = v13;
  if ((a5 & 1) != 0 || !v13)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = (*(*this + 128))(this, a3) * *(a2 + 2);
  }

  v16 = (this + 96);
  v17 = COERCE_VOID_((*(*this + 168))(this, a3));
  if (CA::Render::Layer::keypath_is_object(a2[5], this + 12, v18, v19))
  {
    if (keypath_object)
    {
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      keypath_object = CA::Render::Layer::get_keypath_object(a2[5], this + 12, v20);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    v11 = CA::Render::Layer::get_keypath_object(a2[2], this + 12, v20);
LABEL_8:
    *&v126 = 0;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v119.var0 = v17;
    *&v119.var1.var0.var0 = v15;
    v107.var0 = 0;
    CA::Render::mix_objects(&v107, keypath_object, v11, &v119);
    CA::Render::Layer::set_keypath_object(a2[5], this + 12, v107.var0);
    var0 = v107.var0;
    if (v107.var0)
    {
      if (atomic_fetch_add(v107.var0 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*var0 + 2))(var0);
      }
    }

    return;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  v24 = *v16;
  if (!*v16)
  {
    goto LABEL_22;
  }

  if (v24)
  {
    v25 = v24 >> 1;
  }

  else
  {
    if (!*v24)
    {
LABEL_22:
      v26 = 0;
      goto LABEL_23;
    }

    v25 = v24[1];
  }

  v26 = 1;
  if (v25 != 154 && v25 != 693 && v25 != 716)
  {
    goto LABEL_22;
  }

LABEL_23:
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0;
  v108 = 0u;
  v91 = &v119;
  v90 = &v107;
  if (keypath_object && v11)
  {
    v27 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v119, &v91, v21, v22);
LABEL_26:
    v30 = v27;
    keypath_value = CA::Render::PropertyAnimation::animation_value(v11, &v107, &v90, v28, v29);
LABEL_27:
    v32 = keypath_value;
    goto LABEL_28;
  }

  if (keypath_object && v12)
  {
    v30 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v119, &v91, v21, v22);
    v37 = CA::Render::PropertyAnimation::animation_value(v12, &v107, &v90, v35, v36);
    v32 = v37;
    if (v26)
    {
      v39 = v90;
      if (v30 >= v37)
      {
        v40 = v37;
      }

      else
      {
        v40 = v30;
      }

      if (v40 == 6)
      {
        v64 = *(v91 + 2);
        v65 = vmlaq_laneq_f64(vmulq_n_f64(*v91, v90[2]), v64, *(v90 + 2), 1);
        v66 = vmlaq_laneq_f64(vmlaq_n_f64(*(v91 + 4), *v91, v90[4]), v64, *(v90 + 4), 1);
        *v90 = vmlaq_laneq_f64(vmulq_n_f64(*v91, *v90), v64, *v90, 1);
        *(v39 + 1) = v65;
        *(v39 + 2) = v66;
        goto LABEL_28;
      }

      if (v40 == 16)
      {
        v103 = *(v90 + 4);
        v104 = *(v90 + 5);
        v105 = *(v90 + 6);
        v106 = *(v90 + 7);
        *v100 = *v90;
        *&v100[16] = *(v90 + 1);
        v101 = *(v90 + 2);
        v102 = *(v90 + 3);
        v41 = *v91;
        v42 = *(v91 + 1);
        v43 = *(v91 + 3);
        v94 = *(v91 + 2);
        v95 = v43;
        v92 = v41;
        v93 = v42;
        v44 = *(v91 + 4);
        v45 = *(v91 + 5);
        v46 = *(v91 + 7);
        v98 = *(v91 + 6);
        v99 = v46;
        v96 = v44;
        v97 = v45;
LABEL_56:
        CA::Mat4Impl::mat4_concat(v100, v100, v92.f64, v38);
        *(v39 + 4) = v103;
        *(v39 + 5) = v104;
        *(v39 + 6) = v105;
        *(v39 + 7) = v106;
        *v39 = *v100;
        *(v39 + 1) = *&v100[16];
        *(v39 + 2) = v101;
        *(v39 + 3) = v102;
        goto LABEL_28;
      }
    }

    else if (v30 >= v37)
    {
      v40 = v37;
    }

    else
    {
      v40 = v30;
    }

    if (v40)
    {
      v59 = v90;
      v58 = v91;
      do
      {
        v60 = *v58++;
        *v59 = *v59 + v60;
        ++v59;
        --v40;
      }

      while (v40);
    }

    goto LABEL_28;
  }

  if (v11 && v12)
  {
    v30 = CA::Render::PropertyAnimation::animation_value(v12, &v119, &v91, v21, v22);
    v49 = CA::Render::PropertyAnimation::animation_value(v11, &v107, &v90, v47, v48);
    v32 = v49;
    if (v26)
    {
      v39 = v91;
      if (v30 >= v49)
      {
        v51 = v49;
      }

      else
      {
        v51 = v30;
      }

      if (v51 == 6)
      {
        v68 = *v90;
        v67 = *(v90 + 2);
        v69 = *(v90 + 4);
        v70 = *v91;
        v71 = *(v91 + 2);
        *v100 = v70;
        *&v100[16] = v71;
        v72.f64[0] = v71.f64[1];
        v72.f64[1] = v71.f64[0];
        v73 = vdupq_lane_s64(*&v70.f64[1], 0);
        v73.f64[0] = v70.f64[0];
        v74 = *(v91 + 4);
        v75 = vmulq_f64(v72, v73);
        v76 = vsubq_f64(v75, vdupq_laneq_s64(v75, 1)).f64[0];
        if (v76 != 0.0)
        {
          v77 = 1.0 / v76;
          v78 = vmulq_n_f64(*&v100[8], v77);
          v79 = vmulq_n_f64(vextq_s8(v71, v70, 8uLL), v77);
          *v100 = v79.f64[0];
          *&v100[8] = vnegq_f64(v78);
          *&v100[24] = v79.f64[1];
          v80 = vmulq_f64(v74, v78);
          v81 = vmlsq_f64(vextq_s8(v80, v80, 8uLL), v79, v74);
          v70 = *v100;
          v71 = *&v100[16];
          v74 = v81;
        }

        *v91 = vmlaq_laneq_f64(vmulq_n_f64(v70, v68.f64[0]), v71, v68, 1);
        *(v39 + 1) = vmlaq_laneq_f64(vmulq_n_f64(v70, v67.f64[0]), v71, v67, 1);
        *(v39 + 2) = vmlaq_laneq_f64(vmlaq_n_f64(v74, v70, v69.f64[0]), v71, v69, 1);
        goto LABEL_28;
      }

      if (v51 == 16)
      {
        v103 = *(v90 + 4);
        v104 = *(v90 + 5);
        v105 = *(v90 + 6);
        v106 = *(v90 + 7);
        *v100 = *v90;
        *&v100[16] = *(v90 + 1);
        v101 = *(v90 + 2);
        v102 = *(v90 + 3);
        v52 = *v91;
        v53 = *(v91 + 1);
        v54 = *(v91 + 3);
        v94 = *(v91 + 2);
        v95 = v54;
        v92 = v52;
        v93 = v53;
        v55 = *(v91 + 4);
        v56 = *(v91 + 5);
        v57 = *(v91 + 7);
        v98 = *(v91 + 6);
        v99 = v57;
        v96 = v55;
        v97 = v56;
        CA::Mat4Impl::mat4_invert(&v92, &v92, v50);
        goto LABEL_56;
      }
    }

    else if (v30 >= v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = v30;
    }

    if (v51)
    {
      v61 = v90;
      v62 = v91;
      do
      {
        v63 = *v61++;
        *v62 = v63 - *v62;
        ++v62;
        --v51;
      }

      while (v51);
    }

    goto LABEL_28;
  }

  if (keypath_object)
  {
    v30 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v119, &v91, v21, v22);
    keypath_value = CA::Render::Layer::get_keypath_value(a2[2], this + 12, 0x18uLL, &v107, &v90);
    goto LABEL_27;
  }

  if (v11)
  {
    v27 = CA::Render::Layer::get_keypath_value(a2[5], this + 12, 0x18uLL, &v119, &v91);
    goto LABEL_26;
  }

  if (v12)
  {
    v30 = CA::Render::Layer::get_keypath_value(a2[5], this + 12, 0x18uLL, &v119, &v91);
    v84 = CA::Render::PropertyAnimation::animation_value(v12, &v107, &v90, v82, v83);
    v32 = v84;
    if (v26)
    {
      if (v30 >= v84)
      {
        v85 = v84;
      }

      else
      {
        v85 = v30;
      }

      {
        goto LABEL_28;
      }
    }

    else if (v30 >= v84)
    {
      v85 = v84;
    }

    else
    {
      v85 = v30;
    }

    if (v85)
    {
      v87 = v90;
      v86 = v91;
      do
      {
        v88 = *v86++;
        *v87 = *v87 + v88;
        ++v87;
        v85 = (v85 - 1);
      }

      while (v85);
    }

    goto LABEL_28;
  }

  v30 = 0;
  v32 = 0;
LABEL_28:
  if (v32 >= v30)
  {
    v33 = v30;
  }

  else
  {
    v33 = v32;
  }

  v34 = v91;
  if (v33)
  {
    *&v106 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    *&v100[16] = 0u;
    v101 = 0u;
    *v100 = v17;
    *&v100[8] = v15;
    LODWORD(v89) = a4;
    CA::Render::PropertyAnimation::set(this, a2[5], v14, v33, 0, v91, v90, 0, v91, v90, v100, v89);
    v34 = v91;
  }

  if (v34 != &v119)
  {
    free(v34);
  }

  if (v90 != &v107)
  {
    free(v90);
  }
}

char *CA::Render::PropertyAnimation::apply_velocity_state(CA::Render::PropertyAnimation *this, CA::Render::AnimationEvaluator *a2)
{
  v4 = *(a2 + 224);
  v5 = CA::Render::Animation::affects_velocity(this);
  v8 = v5;
  if (v4)
  {
    v9 = a2 + 48;
    v10 = *(this + 12);
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10)
    {
      v11 = v10 >> 1;
    }

    else
    {
      if (!*v10)
      {
        goto LABEL_12;
      }

      v11 = v10[1];
    }

    if (v11 == 716)
    {
      if (v5)
      {
        CA::Render::VelocityState::init_scale((a2 + 48), *(a2 + 5), v6, v7);
      }

      else
      {
        *(a2 + 50) |= 0x200u;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

double CA::Render::BasicAnimation0::interpolate_vector(CA::Render::BasicAnimation0 *this, uint64_t a2, float64x2_t *a3, double *a4, double *a5, double *a6, double *a7, float64x2_t *a8)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  if (a2 != 2)
  {
LABEL_5:
    result = CA::Render::PropertyAnimation::interpolate_vector(this, a2, a3->f64, a4, a5, a6, a7, a8);
    if ((*(this + 15) & 2) != 0 && v10)
    {
      do
      {
        v15 = *v8++;
        result = round(v9->f64[0] - v15) + v15;
        v9->f64[0] = result;
        v9 = (v9 + 8);
        --v10;
      }

      while (v10);
    }

    return result;
  }

  v12 = *(this + 17);
  v13 = *(this + 18);
  if (v12 == 0.0 && v13 == 0.0)
  {
    a2 = 2;
    goto LABEL_5;
  }

  v16 = a8->f64[0];
  v17 = *a5;
  v18 = *a6;

  *&result = *&CA::Render::point_interpolate(a3, 2, a3->f64, a4, v17, v18, v16, v12, v13);
  return result;
}

uint64_t CA::Render::PropertyAnimation::animation_value(CA::Render::PropertyAnimation *this, const Object *a2, const Object **a3, double *a4, double **a5)
{
  if (*(this + 12) != 62)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(this + 4);
  v9 = a2;
  if (v8 < 0x19)
  {
LABEL_5:
    if (v9)
    {
      v6 = v9;
      result = v8;
    }

    else
    {
      result = 24;
    }

    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    v9 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    goto LABEL_5;
  }

  result = 24;
LABEL_12:
  for (i = 0; i != result; ++i)
  {
    *(&v6->var0 + i) = *(this + i + 3);
  }

LABEL_14:
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

void CA::Render::GroupAnimation::apply(CA::Render::GroupAnimation *this, CA::Render::AnimationEvaluator *a2, __n128 a3, int a4, unsigned __int8 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v5 = *(this + 12);
  if (v5)
  {
    v7 = a3.n128_f64[0];
    v9 = *(this + 5);
    if (v9)
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = INFINITY;
    }

    v11 = *(a2 + 2);
    v12 = v10 * v11 * (*(*this + 128))(this, a3);
    *(a2 + 2) = v12;
    v13 = *(v5 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v10 * v7;
      do
      {
        v16 = *(v5 + 24 + 8 * v14);
        if (*(v16 + 13))
        {
          v18 = 0;
          v17 = v15;
          if (CA::Render::Animation::map_time(v16, &v17, &v19, 0, &v18))
          {
            (*(*v16 + 120))(v16, a2, v19, (a5 | v18) & 1, v17);
          }

          v13 = *(v5 + 16);
        }

        ++v14;
      }

      while (v14 < v13);
    }

    *(a2 + 2) = v11;
  }
}

void **CA::Render::GradientLayer::copy@<X0>(CA::Render::GradientLayer *this@<X0>, void ***a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
  v5 = result;
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 20;
    ++dword_1ED4EAA88;
    *result = &unk_1EF204CF8;
    *(result + 6) = 1;
    *(result + 7) = 18;
    ++dword_1ED4EAA80;
    result[2] = &unk_1EF1FBE88;
    result[4] = *(this + 4);
    *(result + 10) = *(this + 10);
    v6 = *(this + 11);
    result[6] = 0;
    v7 = result + 6;
    *(result + 11) = v6;
    result[7] = 0;
    result[8] = 0;
    *(result + 7) = *(this + 7) & 0xFFFFFF00 | 0x12;
    CA::Render::InterpolatedFunction::allocate_storage((result + 2));
    if (*v7)
    {
      memcpy(*v7, *(this + 6), 4 * v5[4] * *(v5 + 10));
      v8 = v5[7];
      if (v8)
      {
        v9 = *(this + 7);
        if (v9)
        {
          memcpy(v8, v9, 4 * v5[4]);
        }
      }
    }

    v10 = v5[8];
    if (v10)
    {
      v11 = *(this + 8);
      if (v11)
      {
        v12 = v5[4];
        if (v12)
        {
          memcpy(v10, v11, 32 * v12 - 32);
        }
      }
    }

    v5[2] = &unk_1EF1FBF20;
    *(v5 + 9) = *(this + 72);
    *(v5 + 11) = *(this + 88);
    *(v5 + 26) = *(this + 26);
    *(v5 + 27) = *(this + 27);
    v13 = *(this + 14);
    if (v13)
    {
      v14 = v13 + 2;
      if (!atomic_fetch_add(v13 + 2, 1u))
      {
        v13 = 0;
        atomic_fetch_add(v14, 0xFFFFFFFF);
      }
    }

    v5[14] = v13;
    v15 = *(this + 15);
    if (v15)
    {
      v16 = v15 + 2;
      if (!atomic_fetch_add(v15 + 2, 1u))
      {
        v15 = 0;
        atomic_fetch_add(v16, 0xFFFFFFFF);
      }
    }

    v17 = *(this + 16);
    v5[15] = v15;
    v5[16] = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    result = *(this + 17);
    v5[17] = result;
    if (result)
    {
      result = CFRetain(result);
    }
  }

  *a2 = v5;
  return result;
}

void sub_183AB96C4(_Unwind_Exception *exception_object, const CA::Render::Object *a2)
{
  --dword_1ED4EAA80;
  *(v2 + 16) = &unk_1EF1F6D08;
  if ((*(v2 + 28) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(v3, a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CA::Render::BackdropLayer::copy@<X0>(CA::Render::BackdropLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 3;
    ++dword_1ED4EAA44;
    *result = &unk_1EF1FA150;
    v5 = *(this + 3);
    *(result + 2) = *(this + 2);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *(result + 3) = v5;
    *(result + 4) = *(this + 4);
    result[10] = *(this + 10);
    *(result + 3) = *(this + 3);
    *(result + 4) = *(this + 4);
    *(result + 10) = *(this + 10);
    result[22] = *(this + 22);
    *(result + 6) = *(this + 6);
    *(result + 7) = *(this + 7);
    *(result + 128) = *(this + 128);
    v7 = *(this + 17);
    if (v7)
    {
      v8 = (v7 + 8);
      if (!atomic_fetch_add((v7 + 8), 1u))
      {
        v7 = 0;
        atomic_fetch_add(v8, 0xFFFFFFFF);
      }
    }

    *(result + 17) = v7;
    result[3] |= *(this + 3) & 0xFFFFFF00;
  }

  *a2 = result;
  return result;
}

unint64_t CA::Shape::subtract(CA::Shape *this, const CA::Bounds *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = this == 1;
  }

  else
  {
    v3 = *(this + 1) == 6;
  }

  v4 = v3;
  if ((v4 & 1) == 0 && *(a2 + 2) && *(a2 + 3))
  {
    memset(v8, 0, sizeof(v8));
    CA::Shape::operator=(v8, a2);
    return CA::Shape::subtract(this, v8, v5, v6);
  }

  else
  {

    return CA::Shape::ref(this, a2);
  }
}

void CA::Render::Updater::add_background_filters_(uint64_t ***result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 136);
  if (!v6)
  {
    return;
  }

  v11 = *(v6 + 88);
  if (!v11 || (*(v11 + 13) & 1) == 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = 0;
  v41 = *(v11 + 24);
  if (v41 != 533 && v41 != 669)
  {
    v43 = (a2 + 72);
    *(a2 + 72) |= 0x20C00000uLL;
    v44 = CA::Render::Filter::compositing_dod(v41) - 5;
    v12 = v44 < 0xFFFFFFFE;
    if (v41 > 548)
    {
      if ((v41 - 695) <= 0x3F && ((1 << (v41 + 73)) & 0x8036800000000007) != 0)
      {
        goto LABEL_78;
      }

      if ((v41 - 549) <= 0x11 && ((1 << (v41 - 37)) & 0x3E041) != 0)
      {
        goto LABEL_78;
      }

      if ((v41 - 620) <= 0x30 && ((1 << (v41 - 108)) & 0x1148000000021) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v41 <= 292)
      {
        if ((v41 - 179) > 0x3D || ((1 << (v41 + 77)) & 0x2000000004001EE3) == 0)
        {
          v46 = (v41 - 99) > 0x3B || ((1 << (v41 - 99)) & 0x800000000000151) == 0;
          if (v46 && v41 != 60)
          {
            goto LABEL_106;
          }
        }

LABEL_78:
        if (!*(a4 + 116) && v44 > 0xFFFFFFFD)
        {
          goto LABEL_111;
        }

        v51 = *(a2 + 48);
        if (v51)
        {
          *(v51 + 24) |= 0x4000uLL;
        }

        if (v41 > 523)
        {
          v53 = (v41 - 664) > 0x21 || ((1 << (v41 + 104)) & 0x300000011) == 0;
          if (v53 && v41 != 758 && v41 != 524)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v52 = (v41 - 158) > 0x1F || ((1 << (v41 + 98)) & 0xD8000001) == 0;
          if (v52 && v41 != 99 && v41 != 520)
          {
            goto LABEL_111;
          }
        }

        v54 = *(a3 + 40);
        if ((v54 & 0x800000000000000) == 0 && (*(a2 + 89) & 4) == 0)
        {
          v55 = *(a2 + 56);
          if (v55)
          {
            if ((v54 & 0x40000000000) != 0 || (*(v55 + 48) & 8) != 0)
            {
              goto LABEL_111;
            }
          }

          else if ((v54 & 0x40000000000) != 0)
          {
            goto LABEL_111;
          }

          v57 = 0x200000000;
          goto LABEL_110;
        }

LABEL_111:
        *(a2 + 89) |= 2u;
        if (a6)
        {
          v58 = *(v11 + 24);
          if (v58 != 158 && v58 != 669)
          {
            v59 = *(a6 + 56);
            if (v59)
            {
              CA::Shape::unref(v59);
              *(a6 + 56) = 0;
            }
          }
        }

        goto LABEL_5;
      }

      v50 = (v41 - 475) > 0x32 || ((1 << (v41 + 37)) & 0x6202000801C03) == 0;
      if (!v50 || v41 == 293 || v41 == 307)
      {
        goto LABEL_78;
      }
    }

LABEL_106:
    v56 = *(a2 + 48);
    if (v56)
    {
      v43 = (v56 + 24);
      v57 = 0x8000;
LABEL_110:
      *v43 |= v57;
      goto LABEL_111;
    }

    goto LABEL_111;
  }

LABEL_5:
  v60 = a6;
  v13 = *(a3 + 136);
  if (v13)
  {
    v14 = v13[13];
    if (v14)
    {
      if (!*v13 || ((*(**v13 + 176))(*v13) & 1) == 0)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = -v15;
          v17 = v15 - 1;
          do
          {
            v18 = *(v14 + 24 + 8 * v17);
            if ((*(v18 + 12) & 0x40100) == 0x100)
            {
              v19 = x_heap_malloc_small_(**result, 0x38uLL);
              if (v19)
              {
                v20 = **result;
                *(v19 + 16) = 1;
                *(v19 + 18) = 0;
                *v19 = &unk_1EF1F8248;
                v21 = *(a2 + 56);
                *(v19 + 24) = a2 + 8;
                *(v19 + 32) = v21;
                *(v19 + 40) = v18;
                *(v19 + 48) = 1;
                v22 = x_heap_malloc_small_(v20, 0x28uLL);
                if (v22)
                {
                  v23 = *(v19 + 24);
                  v24 = *v23;
                  v25 = v23[1];
                  *(v22 + 32) = *(v23 + 4);
                  *v22 = v24;
                  *(v22 + 16) = v25;
                }

                *(v19 + 24) = v22;
                v26 = *(v19 + 32);
                if (v26)
                {
                  v27 = (v26 + 8);
                  if (!atomic_fetch_add(v27, 1u))
                  {
                    atomic_fetch_add(v27, 0xFFFFFFFF);
                  }
                }

                v28 = *(v19 + 40);
                if (v28)
                {
                  v29 = (v28 + 8);
                  if (!atomic_fetch_add(v29, 1u))
                  {
                    atomic_fetch_add(v29, 0xFFFFFFFF);
                  }
                }
              }

              *(v19 + 8) = *a2;
              *a2 = v19;
              if ((*(a2 + 64) & 8) != 0)
              {
                *(v18 + 20) = *(result + 2);
              }

              *(a2 + 89) |= 3u;
              *(a2 + 72) |= 0x20C00000uLL;
              v12 = 1;
            }

            --v17;
          }

          while (!__CFADD__(v16++, 1));
        }
      }
    }
  }

  if (v60 && v12)
  {
    CA::Render::Updater::LayerShapes::union_bounds(v60, (v60 + 88), 1);
    v32 = *(v60 + 56);
    if (v32)
    {
      CA::Shape::unref(v32);
      *(v60 + 56) = 1;
    }

    if (a5)
    {
      v33 = *(v60 + 104);
      if (v33 >= *(v60 + 112))
      {
        v33 = *(v60 + 112);
      }

      if (v33 > 0.0)
      {
        v34 = *(a2 + 56);
        if (v34)
        {
          if ((*(v34 + 48) & 8) == 0)
          {
            v35 = *result;
            v36 = *(v60 + 104);
            v37 = vceqzq_f64(v36);
            if ((vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0] & 0x8000000000000000) != 0 || (v38 = vceqq_f64(v36, v36), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v38), 1), v38).u64[0] & 0x8000000000000000) != 0))
            {
              v62[0] = 0;
              v62[1] = 0;
            }

            else
            {
              v39 = *(v60 + 88);
              v40 = vcvtmq_s64_f64(vmaxnmq_f64(v39, vdupq_n_s64(0xC1BFFFFFFF000000)));
              *v62 = vuzp1q_s32(v40, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v39, v36), vdupq_n_s64(0x41C0000000000000uLL))), v40));
            }

            CA::shape_union(v35 + 8, v62, v31);
            *(a5 + 72) |= 4uLL;
          }
        }
      }
    }
  }
}

uint64_t CA::Render::Updater::prepare_layer(uint64_t *a1, uint64_t a2, unint64_t *a3, CA::Render::Updater::LayerShapes *a4, void *a5, double a6, int32x4_t a7)
{
  v1143 = a2;
  v1187 = *MEMORY[0x1E69E9840];
  if (*&a3 == 0.0)
  {
    return 0;
  }

  v7 = a4;
  v8 = *&a3;
  v9 = a1;
  v1137 = a5;
  v10 = a3[4];
  v11 = *a1;
  v12 = *(*a1 + 1376);
  if (v12)
  {
    v1130 = 0;
    v13 = 0;
LABEL_19:
    v17 = 268435516;
    goto LABEL_20;
  }

  v13 = *(v10 + 152);
  if (!v13)
  {
    v1130 = 0;
    goto LABEL_19;
  }

  v14 = 13;
  if (v13[11].i32[0] == *(a1 + 2))
  {
    v14 = 14;
  }

  v15 = v13[v14];
  v1130 = (*&v13[13] >> 53) & 7;
  _ZF = (*&v15 & 0x1800000000) == 0 || (v12 & 0x20000000000) == 0;
  if (_ZF)
  {
    v17 = *(v1143 + 64) & 8 | *&v15 | *(v1143 + 64) & (v15.i32[0] >> 1) & 0x20;
  }

  else
  {
    v17 = *(v1143 + 64) & 8 | *&v15 | *(v1143 + 64) & (v15.i32[0] >> 1) & 0x20 | 4;
  }

  if ((v12 & 0x200000) != 0 && !a3[28] && (a3[3] & 0x40) != 0)
  {
    v17 |= 0xCuLL;
  }

LABEL_20:
  v18 = a3[3];
  v19 = v18 & 0x800000000;
  *&v1141.f64[0] = v10;
  v1140.n128_u64[0] = v18;
  if ((v18 & 0x400000000) != 0)
  {
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v20 = *(*&v8 + 152);
    if (!v20)
    {
      __assert_rtn("flattened_cache_get_flatten_info", "render-flatten-cache.cpp", 809, "node->flatten_entry != nullptr");
    }

    v21 = *(v20 + 168);
    v1129 = v21;
    v22 = *(v20 + 200);
    if (v22)
    {
      v1136 = [*v22 protectionOptions];
    }

    else
    {
      v1136 = 0;
    }

    v25 = *(v20 + 136);
    v1131.f64[0] = *(v20 + 208);
    v23 = *(v20 + 252);
    LODWORD(v21) = *(v20 + 232);
    v1133 = v21;
    v1134 = v25;
    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
  }

  else
  {
    v23 = 0.0;
    v1136 = 0;
    v1131.f64[0] = 0.0;
    if (v19)
    {
      *(a1 + 40) = 0;
      a1[4] = 0;
      *(a1 + 48) = 1;
      v17 |= 0x1000003CuLL;
      *(v11 + 304) |= 0x10000000uLL;
    }

    v24 = 0uLL;
    v1133 = 0u;
    v1134 = 0u;
    v1129 = 0u;
  }

  *(v1143 + 80) = v17;
  v26 = *(*&v8 + 24);
  if ((v26 & 0x4000000) != 0)
  {
    v27 = v17 | 0x3C;
  }

  else
  {
    v27 = v17;
  }

  if ((v26 & 0x4000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = v13;
  }

  if (byte_1ED4E9869)
  {
    goto LABEL_1958;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  v24.n128_u32[0] = dword_1ED4E9748;
  if (*&dword_1ED4E9748)
  {
LABEL_1958:
    v27 |= 0x1000003CuLL;
  }

  v29 = *v9;
  if (*(v9 + 56))
  {
    v30 = v29[113];
    if (v30)
    {
      v31 = *(*&v8 + 32);
      v32 = 0x9DDFEA08EB382D69 * ((8 * (v31 & 0x1FFFFFFF) + 8) ^ HIDWORD(v31));
      v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v32 >> 47) ^ v32);
      v34 = 0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47));
      v24.n128_u64[0] = vcnt_s8(v30);
      v24.n128_u16[0] = vaddlv_u8(v24.n128_u64[0]);
      if (v24.n128_u32[0] > 1uLL)
      {
        v35 = v34;
        if (v34 >= *&v30)
        {
          v35 = v34 % *&v30;
        }
      }

      else
      {
        v35 = v34 & (*&v30 - 1);
      }

      v36 = v29[112][v35];
      if (v36)
      {
        for (i = *v36; i; i = *i)
        {
          v38 = i[1];
          if (v34 == v38)
          {
            if (i[2] == v31)
            {
              *(*&v8 + 116) = 0;
              break;
            }
          }

          else
          {
            if (v24.n128_u32[0] > 1uLL)
            {
              if (v38 >= *&v30)
              {
                v38 %= *&v30;
              }
            }

            else
            {
              v38 &= *&v30 - 1;
            }

            if (v38 != v35)
            {
              break;
            }
          }
        }
      }
    }
  }

  ++*(v29 + 200);
  v1144 = v9;
  v1138 = v7;
  v1139 = v28;
  v1142.f64[0] = v8;
  if ((v27 & 0x3C) == 0)
  {
    v49 = *&v1141.f64[0];
    if (*(*&v1141.f64[0] + 136))
    {
      CA::Render::Updater::add_background_filters_(v9, v1143, *&v1141.f64[0], *&v8, 0, 0);
    }

    v50 = *(*&v8 + 24);
    if ((v50 & 0x20) != 0)
    {
      CA::Render::LayerNode::depth_sort_sublayers(*&v8);
      v50 = *(*&v8 + 24);
    }

    if ((v50 & 0x10) != 0)
    {
      goto LABEL_344;
    }

    if (v28)
    {
      v51 = v28[16].i32[0];
      v52 = v28[16].i32[1];
      if (v51 <= v52)
      {
        v53 = v28[16].i32[1];
      }

      else
      {
        v53 = v28[16].i32[0];
      }

      v24.n128_u32[0] = 1073741822;
      a7.i32[0] = v53;
      v54 = vdupq_lane_s32(*&vcgtq_s32(a7, v24), 0);
      v55 = v28[15];
      v56.i64[0] = v55.i32[0];
      v56.i64[1] = v55.i32[1];
      v57 = vbslq_s8(v54, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v56));
      v58 = v51;
      if (v53 > 1073741822)
      {
        v58 = 1.79769313e308;
      }

      v1180[0] = v57;
      if (v53 <= 1073741822)
      {
        v59 = v52;
      }

      else
      {
        v59 = 1.79769313e308;
      }

      *v1180[1].i64 = v58;
      *&v1180[1].i64[1] = v59;
      CA::Render::Updater::LayerShapes::union_bounds(v7, v1180, 0);
    }

    v60 = *(*&v8 + 208);
    if (v60)
    {
      if (*(v7 + 7))
      {
        CA::shape_union(v7 + 7, v60, v49);
      }

      if ((*(v1143 + 89) & 0x40) == 0)
      {
        CA::Render::Update::fullfill_backdrops(*v9, *(*&v8 + 208));
        CA::Render::Update::add_opaque_shape(*v9, *(*&v8 + 208), v61);
      }
    }

    v62 = (v7 + 64);
    if (!*(v7 + 8) || (v64 = (*&v1142.f64[0] + 224), (v63 = *(*&v1142.f64[0] + 224)) == 0))
    {
LABEL_328:
      v8 = v1142.f64[0];
      if (*(v7 + 9))
      {
        v195 = *(*&v1142.f64[0] + 232);
        if (v195)
        {
          CA::shape_union(v7 + 9, v195, v49);
        }
      }

      v196 = *(v7 + 10);
      if (v196)
      {
        v197 = *(*&v1142.f64[0] + 168);
        v198 = *(*&v1142.f64[0] + 172);
        if (v197 <= v198)
        {
          v199 = *(*&v1142.f64[0] + 172);
        }

        else
        {
          v199 = *(*&v1142.f64[0] + 168);
        }

        v24.n128_u32[0] = 1073741822;
        a7.i32[0] = v199;
        v200 = vdupq_lane_s32(*&vcgtq_s32(a7, v24), 0);
        v201 = *(*&v1142.f64[0] + 160);
        v202.i64[0] = v201;
        v202.i64[1] = SHIDWORD(v201);
        v203 = vbslq_s8(v200, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v202));
        v204 = v197;
        v205 = v198;
        if (v199 > 1073741822)
        {
          v204 = 1.79769313e308;
          v205 = 1.79769313e308;
        }

        v1180[0] = v203;
        *v1180[1].i64 = v204;
        *&v1180[1].i64[1] = v205;
        v206 = *(*&v1142.f64[0] + 56);
        if (v206)
        {
          CA::Mat4Impl::mat4_apply_to_rect(v206, v1180, v49);
          v207 = v1180[0];
        }

        else
        {
          v207 = vaddq_f64(v203, *(*&v1142.f64[0] + 64));
        }

        v208 = vceqzq_f64(v1180[1]);
        v209 = vorrq_s8(vdupq_laneq_s64(v208, 1), v208).u64[0];
        v210 = 0uLL;
        if ((v209 & 0x8000000000000000) == 0)
        {
          v211 = vceqq_f64(v1180[1], v1180[1]);
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v211), 1), v211).u64[0] & 0x8000000000000000) == 0)
          {
            v212 = vcvtmq_s64_f64(vmaxnmq_f64(v207, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v210 = vuzp1q_s32(v212, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v207, v1180[1]), vdupq_n_s64(0x41C0000000000000uLL))), v212));
          }
        }

        CA::BoundsImpl::Union(v196, *v210.i8, *&vextq_s8(v210, v210, 8uLL));
      }

LABEL_344:
      if ((v27 & 2) != 0)
      {
        if (v28)
        {
          if (*&v28[2] == *&v1141.f64[0])
          {
            *&v28[13] &= ~2uLL;
            if ((*(v1143 + 64) & 2) == 0)
            {
              v213 = *v9;
              CA::Render::Context::invalidate(*(v9 + 64), v28 + 15, v49, v24, a7);
              CA::Render::Update::invalidate_backdrops(v213, &v28[15], 0, 0xFFFFFFFF);
            }
          }
        }
      }

      v214 = v27 | 0x20;
      if ((v27 & 3) == 0)
      {
        v214 = v27;
      }

      *v1137 |= (2 * v214) & 0x15480000000 | v214 & 0x407C15583C06020;
      v215 = *(v1143 + 48);
      if (v215)
      {
        *(v215 + 24) |= *(*&v8 + 24) & 0x14010481400;
      }

      if (v28)
      {
        v216 = v28[13];
        if (v216.i16[0] < 0)
        {
          *(*v9 + 344) = (*(*v9 + 212) * *(*v9 + 208));
        }

        if ((*&v216 & 0x100000000) != 0)
        {
          CA::shape_union((*v9 + 48), &v28[15], v49);
        }
      }

      return 0;
    }

    v66 = (v7 + 72);
    v65 = *(v7 + 9);
    if (!v65)
    {
      CA::Render::Updater::LayerShapes::union_visible_shape(v7, *(*&v1142.f64[0] + 224), v49);
      v28 = v1139;
LABEL_327:
      CA::Render::Update::add_visible_shape(*v9, *v64, v177);
      goto LABEL_328;
    }

    if (!v1139 || !*(*&v1142.f64[0] + 232) || (*(v1139[13].i16 + 1) & 0x780) == 0)
    {
LABEL_322:
      v192 = CA::Shape::subtract(v63, v65, v49, a4);
      v28 = v1139;
      if (*v62)
      {
        CA::shape_union(v62, v192, v191);
        v193 = *v62;
        if ((*v62 & 1) == 0 && *(v193 + 1) >= 257)
        {
          v1180[0] = 0uLL;
          CA::Shape::get_bounds(v193, v1180);
          CA::Shape::unref(*v62);
          *v62 = CA::Shape::new_shape(v1180, v194);
        }
      }

      CA::Shape::unref(v192);
      v7 = v1138;
      goto LABEL_327;
    }

    v67 = CA::Shape::intersect(*(v7 + 9), *(*&v1142.f64[0] + 232));
    v68 = v67;
    if (v67)
    {
      if (v67 == 1)
      {
LABEL_321:
        CA::Shape::unref(v68);
        v63 = *v64;
        v65 = *v66;
        v9 = v1144;
        goto LABEL_322;
      }
    }

    else if (*(v67 + 4) == 6)
    {
      goto LABEL_321;
    }

    v186 = CA::Shape::dilate(v67, 1, 1);
    CA::Render::Updater::LayerShapes::union_visible_shape(v1138, v186, v187);
    CA::shape_union(v64, v186, v188);
    CA::shape_subtract(v66, v186, v189, v190);
    CA::Shape::unref(v186);
    *&v1139[13] |= 0x40uLL;
    goto LABEL_321;
  }

  v1167 = v8;
  v1168 = *&v1141.f64[0];
  v1169 = v27;
  v1172 = *(v1143 + 89) & 0x4C;
  v39 = *(*&v8 + 24);
  if ((v39 & 0x40) == 0)
  {
    v27 &= 0xFFFFFFFFFFF87FFFLL;
    v1169.i64[0] = v27;
  }

  *(*&v8 + 24) = v39 & 0xFFFFFEBFEFA20BEFLL;
  v40 = *(v9 + 8);
  v41 = *(v9 + 64);
  *(v41 + 648) = v40;
  v1128.i32[0] = *(*&v8 + 112);
  if (v28)
  {
    if ((v27 & 0x10000000) != 0)
    {
      CA::Render::Update::invalidate_backdrops(v29, &v28[15], *(*&v8 + 256), v1128.u32[0]);
      v29 = *v9;
      v41 = *(v9 + 64);
      v40 = *(v9 + 8);
    }

    CA::Render::Updater::update_handle(v29, v28, v41, v40, v24, a7);
  }

  v42 = *(*&v8 + 216);
  if (v42)
  {
    CA::Shape::unref(v42);
    *(*&v8 + 216) = 0;
  }

  v43 = *(*&v8 + 224);
  v44 = v1141.f64[0];
  if (v43)
  {
    CA::Shape::unref(v43);
    *(*&v8 + 224) = 0;
  }

  v45 = *(*&v8 + 232);
  if (v45)
  {
    CA::Shape::unref(v45);
    *(*&v8 + 232) = 0;
  }

  if ((*(*&v44 + 42) & 0x110) != 0)
  {
    v1169.i64[1] = 0x8000000000;
  }

  is_2d_affine = *(*&v8 + 208);
  if (is_2d_affine)
  {
    CA::Shape::unref(is_2d_affine);
    *(*&v8 + 208) = 0;
  }

  v47 = *v1143;
  v1163 = *v1143;
  v48 = *(*&v8 + 56);
  v1135 = v19;
  if (v48)
  {
    CA::Transform::set(v1180, v48, 1);
    if ((v1182 & 0x10) == 0)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v69 = *(*&v8 + 80);
    if (v69 == 0.0)
    {
      v1166 = *(v1143 + 40);
      v1165 = *(v1143 + 24);
      v1164 = *(v1143 + 8);
      v76 = v1166;
      v80 = vdup_n_s32(v1166);
      v81 = vceqz_s32(vand_s8(v80, 0x800000004));
      v82 = vdup_lane_s32(v81, 1);
      v83.i64[0] = v82.i32[0];
      v83.i64[1] = v82.i32[1];
      v84 = vbslq_s8(v83, *(*&v8 + 64), vmulq_n_f64(*(*&v8 + 64), v1165.n128_f64[0]));
      v85 = vdup_lane_s32(v81, 0);
      v86 = vdupq_lane_s64(v84.i64[0], 0);
      *v86.i64 = -*&v84.i64[1];
      v83.i64[0] = v85.i32[0];
      v83.i64[1] = v85.i32[1];
      v87 = vbslq_s8(v83, v84, v86);
      v88 = vceqz_s32(vand_s8(v80, 0x100000002));
      v83.i64[0] = v88.i32[0];
      v83.i64[1] = v88.i32[1];
      v75 = vaddq_f64(vbslq_s8(v83, v87, vnegq_f64(v87)), v1164);
      v1164 = v75;
      if (!v19)
      {
        goto LABEL_124;
      }

      goto LABEL_117;
    }

    v1180[0] = xmmword_183E20E00;
    v1180[1] = 0uLL;
    v1180[2] = xmmword_183E20E60;
    memset(&v1180[3], 0, 32);
    v1180[5] = xmmword_183E20E00;
    v70 = *(*&v8 + 64);
    *(&v1181[1] + 1) = 0x3FF0000000000000;
    v1181[0] = v70;
    *&v1181[1] = v69;
    __asm { FMOV            V0.2D, #1.0 }

    v1181[2] = _Q0;
    LOBYTE(v1182) = 16;
  }

  if (!CA::Mat4Impl::mat4_is_affine(v1180, v48) && (*(*&v44 + 45) & 0x10) == 0 && !CA::Mat4Impl::mat4_is_front_facing(v1180, v74))
  {
    *(*&v8 + 24) |= 0x10uLL;
  }

LABEL_111:
  CA::Transform::concat(v1180, v1143 + 8);
  if ((v1182 & 0x10) != 0)
  {
    MEMORY[0x1EEE9AC00](is_2d_affine);
    v1109 = 0;
    *&v1116[24] = 0u;
    v1107 = &unk_1EF1F82D0;
    v1110 = v1180[0];
    v1111 = v1180[1];
    v1112 = v1180[2];
    v1113 = v1180[3];
    v1114 = v1180[4];
    *v1115 = v1180[5];
    *&v1115[16] = v1181[0];
    *v1116 = v1181[1];
    *&v1116[16] = v1181[2];
    v1116[32] = v77 & 0x1F;
    is_2d_affine = CA::Mat4Impl::mat4_is_2d_affine(v1180, v78);
    v75 = 0uLL;
    v76 = 0;
    *&v1116[40] = is_2d_affine;
    v1108 = v47;
    v9 = v1144;
    v1163 = &v1107;
    v1164 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v1165 = _Q0;
    v19 = v1135;
    v47 = &v1107;
    v1166 = 0;
    if (!v1135)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v75 = v1181[0];
    v1164 = v1181[0];
    v1165 = v1181[2];
    v76 = v1182 & 0xF;
    v1166 = v1182 & 0xF;
    if (!v19)
    {
      goto LABEL_124;
    }
  }

LABEL_117:
  if ((v76 & 0xF) != 0 || (v89 = vmovn_s64(vceqzq_f64(v75)), (v89.i8[0] & 1) == 0) || (v89.i8[4] & 1) == 0)
  {
    v1182 = 0;
    memset(v1181, 0, sizeof(v1181));
    memset(v1180, 0, sizeof(v1180));
    CA::Transform::set(v1180, &v1164);
    MEMORY[0x1EEE9AC00](v90);
    v1109 = 0;
    memset(&v1116[24], 0, 24);
    v1107 = &unk_1EF1F82D0;
    v1110 = v1180[0];
    v1111 = v1180[1];
    v1112 = v1180[2];
    v1113 = v1180[3];
    v75 = v1180[5];
    v1114 = v1180[4];
    *v1115 = v1180[5];
    *&v1115[16] = v1181[0];
    *v1116 = v1181[1];
    *&v1116[16] = v1181[2];
    v1116[32] = v1182 & 0x1F;
    is_2d_affine = ((v1182 & 0x10) == 0 || CA::Mat4Impl::mat4_is_2d_affine(v1180, v91));
    v1116[40] = is_2d_affine;
    v1108 = v47;
    v1163 = &v1107;
    v1164 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v1165 = _Q0;
    v1166 = v76 & 0xF0;
    v9 = v1144;
  }

LABEL_124:
  v93 = *(*&v44 + 136);
  v94 = *&v44;
  if (v93)
  {
    v95 = *(v93 + 112);
    v94 = *&v44;
    if (v95)
    {
      MEMORY[0x1EEE9AC00](is_2d_affine);
      memset(&v1116[8], 0, 40);
      memset(&v1115[8], 0, 24);
      os_unfair_lock_lock(v95 + 4);
      CA::Render::MeshTransform::update_locked(v95, 1);
      os_unfair_lock_unlock(v95 + 4);
      v94 = v1168;
      *&v1115[24] = 0;
      v1115[26] = 0;
      *v1116 = &v1164;
      *&v1116[8] = v95;
      *&v1116[16] = *(v1168 + 72);
      *&v1116[32] = *(v1168 + 88);
      *&v1115[8] = &unk_1EF1F81E0;
      *&v1115[16] = v1163;
      v1163 = &v1115[8];
    }
  }

  v96 = *(v1143 + 88);
  if (v96 >= *(*&v8 + 116))
  {
    LOBYTE(v96) = *(*&v8 + 116);
  }

  v1171 = v96;
  v97.i32[1] = 0;
  v97.i64[1] = 0;
  v1147 = 0u;
  v1148 = 0u;
  v1146 = 0u;
  v1149 = 0;
  v1153 = (*&v8 + 160);
  if ((v96 - 1) <= 0xFDu)
  {
    if ((*(v94 + 48) & 4) == 0)
    {
      goto LABEL_141;
    }

    if ((*(*&v8 + 24) & 0x80) != 0)
    {
      goto LABEL_141;
    }

    v98 = *v9;
    if ((*(*v9 + 292) & 4) != 0)
    {
      goto LABEL_141;
    }

    v99 = v98[45];
    if (!v99)
    {
      v99 = x_heap_malloc_small_(*v98, 0x10uLL);
      v100 = *v9;
      if (v99)
      {
        v101 = *v100;
        *v99 = 0;
        v99[1] = v101;
      }

      v100[45] = v99;
    }

    *v97.i64 = MEMORY[0x1EEE9AC00](v99);
    *&v1116[32] = 0;
    *&v1116[40] = 0;
    *&v1116[24] = v102;
    v1149 = &v1116[24];
  }

  if ((v1169.i8[2] & 0x10) != 0 || v96 != 0xFF || *(*&v8 + 144))
  {
LABEL_141:
    v103 = 0;
    goto LABEL_142;
  }

  v103 = 1;
LABEL_142:
  v104 = ((*(*v9 + 1376) >> 21) & 1);
  v1150 = v103;
  v1151 = v104;
  v1152 = v104;
  if ((v1140.n128_u64[0] & 0x400000000) != 0)
  {
    if (v1134.i32[2] <= v1134.i32[3])
    {
      v105 = v1134.i32[3];
    }

    else
    {
      v105 = v1134.i32[2];
    }

    v97.i32[0] = 1073741822;
    LODWORD(v75.f64[0]) = v105;
    v106.i64[0] = v1134.i32[0];
    v106.i64[1] = v1134.i32[1];
    v107 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v75, v97), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v106));
    v108 = v1134.i32[2];
    if (v105 > 1073741822)
    {
      v108 = 1.79769313e308;
    }

    v1180[0] = v107;
    if (v105 <= 1073741822)
    {
      v109 = v1134.i32[3];
    }

    else
    {
      v109 = 1.79769313e308;
    }

    *v1180[1].i64 = v108;
    *&v1180[1].i64[1] = v109;
    CA::Rect::apply_transform(v1180[0].i64, &v1164);
    CA::Render::Updater::LayerShapes::union_bounds(&v1146, v1180, 1);
  }

  if (v28 && (v110 = v28[3]) != 0 && (*(v110 + 292) & 0x10) != 0)
  {
    v134 = CA::Render::Context::root_layer_handle(v110);
    if (v134)
    {
      v135 = *(v134 + 2);
    }

    else
    {
      v135 = 0;
    }

    CA::Render::Updater::prepare_layer_mask(v9, &v1163, v7, &v1146);
    if (v135 == *&v44)
    {
      v1124 = v1155;
      v1125 = v1154;
      v1154 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v1155 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v1134.i32[0] = 1;
      goto LABEL_157;
    }
  }

  else
  {
    CA::Render::Updater::prepare_layer_mask(v9, &v1163, v7, &v1146);
  }

  v1134.i32[0] = 0;
  v1124 = 0u;
  v1125 = 0u;
LABEL_157:
  v1127 = 0u;
  if ((*(*&v8 + 27) & 2) == 0 && (v111 = *(v1168 + 104)) != 0 && (CA::Render::Updater::prepare_layer_contents(v9, &v1163, *(v1168 + 104), &v1146), *(v111 + 12) == 25))
  {
    v112 = v1163;
    v1180[0] = v1146;
    v1180[1] = v1147;
    v1127 = v1147;
    memset(&v1180[2], 0, 56);
    if (v1163)
    {
      do
      {
        (*(*v112 + 3))(v112, v1180, 0);
        v112 = v112[1];
      }

      while (v112);
      v1127 = v1180[1];
    }

    v1126.i32[0] = 1;
  }

  else
  {
    v1126.i32[0] = 0;
  }

  v113 = v1168;
  v114 = *(v1168 + 24);
  v115 = *(v1168 + 136);
  if (v115)
  {
    v116 = *(v115 + 80);
  }

  else
  {
    v116 = 0;
  }

  v117.n128_u32[0] = *(v1168 + 28);
  v119 = *(v1168 + 20) == 0.0 && *(v1168 + 16) == 0.0;
  v120 = v119 && v114 == 0.0;
  if ((v120 & 1) == 0)
  {
    v121 = v116 == 0;
LABEL_183:
    v114 = 1.0;
    v124 = v117.n128_f32[0] == 1.0;
    if (v117.n128_f32[0] == 1.0 && !v121)
    {
      v126 = *(v116 + 128);
      v124 = v126 && (*(v126 + 13) & 0x10) != 0 && *(v116 + 96) <= *(v116 + 80) && *(v116 + 104) <= *(v116 + 88);
    }

    if (v117.n128_f32[0] == 1.0)
    {
      v125 = v120;
    }

    else
    {
      v125 = 0;
    }

    if (!v115)
    {
      v133 = *(v1168 + 88);
      v1180[0] = *(v1168 + 72);
      v1180[1] = v133;
      v123 = 1;
      goto LABEL_239;
    }

    v123 = 1;
    goto LABEL_195;
  }

  v121 = v116 == 0;
  if (v117.n128_f32[0] != 0.0 || v116 != 0)
  {
    goto LABEL_183;
  }

  if (!v115)
  {
    goto LABEL_284;
  }

  v123 = 0;
  v124 = 0;
  v125 = 1;
LABEL_195:
  v117.n128_u32[0] = *(v115 + 240);
  if (v117.n128_f32[0] > 0.0)
  {
    v127 = 0;
    v117.n128_u32[0] = *(v115 + 244);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 248);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 252);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 256);
    if (v117.n128_f32[0] != 0.0 || *(v115 + 128) != 0)
    {
      v114 = 1.0;
      v127 = v117.n128_f32[0] == 1.0;
LABEL_204:
      ++v123;
      v125 &= v127;
      v129 = 1;
      goto LABEL_206;
    }
  }

  v129 = 0;
LABEL_206:
  v130 = *v115;
  if (!*v115)
  {
    goto LABEL_233;
  }

  v1180[0].i8[0] = 0;
  v131 = (*(*v130 + 160))(v130);
  v125 &= v131 ^ 1;
  v124 |= (v131 & v1180[0].i8[0]);
  v123 += v131;
  v132 = v130[12];
  if (v132 <= 7)
  {
    if (v132 == 3)
    {
      v138 = *(v1168 + 136);
      if (v138)
      {
        v138 = *v138;
        if (v138)
        {
          if (*(v138 + 12) != 3)
          {
            v138 = 0;
          }
        }
      }

      if ((*(v138 + 13) & 5) == 0)
      {
        goto LABEL_232;
      }

      v139 = v1172 | 0x10;
      v1172 |= 0x10u;
      v136 = (*(v138 + 6) >> 7) & 0x20 | v139 & 0xFFFFFFDF;
      goto LABEL_231;
    }

    if (v132 == 6)
    {
      LOWORD(v136) = v1172 | 0x80;
LABEL_231:
      v1172 = v136;
    }
  }

  else if (v132 == 8)
  {
    *(*v9 + 1376) |= 0x10000000000uLL;
    v1172 |= 2u;
    v1169.i64[1] |= 4uLL;
    *(*&v1167 + 24) |= 0x1000uLL;
  }

  else
  {
    if (v132 != 19)
    {
      if (v132 == 50)
      {
        v1172 |= 0x102u;
        *(*&v1167 + 24) |= 0x1000uLL;
      }

      goto LABEL_232;
    }

    v137 = v1172 & 0xFDFF | ((*(**(v1168 + 136) + 16) != 0) << 9);
    v1172 = v137;
    if (*(*v9 + 447) == 1)
    {
      LOWORD(v136) = v137 | 2;
      goto LABEL_231;
    }
  }

LABEL_232:
  v113 = v1168;
LABEL_233:
  if (v123)
  {
    v140 = *(v113 + 88);
    v1180[0] = *(v113 + 72);
    v1180[1] = v140;
    if (v129)
    {
      v141 = *(v113 + 136);
      if (v141)
      {
        v142 = *(v141 + 236);
        if (v142 > 0.0)
        {
          CA::BoundsImpl::inset(v1180, -v142, -v142);
          v124 = 0;
        }
      }

      CA::Rect::apply_transform(v1180[0].i64, &v1164);
      goto LABEL_249;
    }

LABEL_239:
    CA::Rect::apply_transform(v1180[0].i64, &v1164);
    if (v1150)
    {
      if (v1150)
      {
        if (v1150 == 1)
        {
          goto LABEL_249;
        }
      }

      else if (*(v1150 + 4) == 6)
      {
        goto LABEL_249;
      }

      v143 = vceqzq_f64(v1180[1]);
      if ((vorrq_s8(vdupq_laneq_s64(v143, 1), v143).u64[0] & 0x8000000000000000) != 0 || (v144 = vceqq_f64(v1180[1], v1180[1]), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v144), 1), v144).u64[0] & 0x8000000000000000) != 0))
      {
        v1174 = 0uLL;
      }

      else
      {
        v145 = vcvtmq_s64_f64(vmaxnmq_f64(v1180[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
        v1174 = vuzp1q_s32(v145, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1180[0], v1180[1]), vdupq_n_s64(0x41C0000000000000uLL))), v145));
      }

      if (CA::Shape::contains(v1150, &v1174))
      {
LABEL_283:
        v113 = v1168;
        goto LABEL_284;
      }
    }

LABEL_249:
    v146 = 549453824;
    if (v125)
    {
      v146 = 0x800000;
    }

    v1169.i64[1] |= v146;
    if (v123 != 1)
    {
      v147 = v1149;
      if (v1149)
      {
        v1149[16] = 1;
        v148 = *(v147 + 1);
        if (v148)
        {
          CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v147, v148);
          *(v147 + 1) = 0;
        }
      }
    }

    if (v1151)
    {
      if (v1151)
      {
        v149 = v1151 == 1;
      }

      else
      {
        v149 = *(v1151 + 4) == 6;
      }

      v151 = v149;
      v150 = v151 ^ 1;
    }

    else
    {
      v150 = 0;
    }

    CA::Render::Updater::LayerShapes::union_bounds(&v1146, v1180, (v1171 != 0));
    if (v1150)
    {
      v153 = v124;
    }

    else
    {
      v153 = 0;
    }

    if (v153 == 1)
    {
      v154 = *(v1168 + 136);
      if (v154)
      {
        v117.n128_u32[0] = *(v154 + 232);
        if (v117.n128_f32[0] > 0.0 || *(v154 + 72))
        {
          CA::Render::Updater::corner_clipped_layer_bounds(&v1174, v1168, v117);
          v1180[0] = v1174;
          v1180[1] = v1175;
          CA::Rect::apply_transform(v1180[0].i64, &v1164);
        }
      }

      CA::Render::Updater::union_opaque_rect(v9, &v1146, v152, v1180[0], v1180[1]);
      if (*&v1152 == 0.0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v125;
      }

      if (v155 == 1)
      {
        v117.n128_f64[0] = *&v1180[1].i64[1] * *v1180[1].i64;
        v114 = 0.0;
        if (!((*&v1180[1].i64[1] * *v1180[1].i64 <= 4096.0) | v150 & 1))
        {
          v156 = *(v1168 + 136);
          if ((!v156 || !*(v156 + 96)) && (*(*(v9 + 64) + 15) & 4) == 0)
          {
            for (j = v1163; j; j = j[1])
            {
              (*(*j + 5))(j, v1180, v117);
            }

            CA::BoundsImpl::intersect(v1180, v1154, v1155);
            v1174 = 0uLL;
            CA::Bounds::set_interior(&v1174, v158, v1180[0], v1180[1]);
            CA::shape_union(&v1152, &v1174, v159);
          }
        }
      }
    }

    goto LABEL_283;
  }

LABEL_284:
  v160 = *(v113 + 136);
  v161 = 0.0;
  if (!v160 || (v162 = *v160) == 0)
  {
    v1132 = 0;
    v165 = 0;
    goto LABEL_400;
  }

  if (*(v162 + 12) != 48)
  {
    v1132 = 0;
    goto LABEL_369;
  }

  v163 = *(v162 + 136);
  if (v163 == 6)
  {
    v164 = *v9;
    if ((*(v162 + 64) & 1) == 0)
    {
      v163 = 6;
      goto LABEL_306;
    }
  }

  else
  {
    if (v163 != 8)
    {
      v164 = *v9;
      goto LABEL_306;
    }

    v164 = *v9;
    if (*(v162 + 132) != 1)
    {
      v163 = 8;
      goto LABEL_306;
    }
  }

  if ((*(v164 + 1381) & 0x80) != 0)
  {
    v1169.i64[0] |= 0x10000002uLL;
  }

  v1182 = 0;
  v1180[0] = xmmword_183E20E00;
  v1180[1] = 0u;
  v1180[2] = xmmword_183E20E60;
  memset(&v1180[3], 0, 32);
  v1180[5] = xmmword_183E20E00;
  v1181[0] = 0u;
  v1181[1] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v1181[2] = _Q0;
  v167 = CA::Transform::concat(v1180, &v1164);
  for (k = v1163; k; k = k[1])
  {
    (*(*k + 7))(k, v1180, v167);
  }

  v169 = vcvt_f32_f64(v1180[0]);
  v170 = vcvt_f32_f64(v1180[2]);
  v171 = vcvtq_f64_f32(vext_s8(v169, v170, 4uLL));
  v172 = vcvtq_f64_f32(__PAIR64__(v170.u32[1], v169.u32[0]));
  v173 = vmulq_f64(vzip2q_s64(v172, v171), vzip1q_s64(v172, v171));
  v174 = vsubq_f64(v173, vdupq_laneq_s64(v173, 1)).f64[0];
  if (v174 == 0.0)
  {
    _Q0 = vcvt_hight_f32_f64(v169, v1180[2]);
    _D2 = vext_s8(v170, v169, 4uLL);
  }

  else
  {
    *&v171.f64[0] = vcvt_f32_f64(vmulq_n_f64(v171, 1.0 / v174));
    _Q0 = vnegq_f32(vextq_s8(v171, v171, 0xCuLL));
    _D2 = vcvt_f32_f64(vmulq_n_f64(v172, 1.0 / v174));
  }

  v164 = *v9;
  _S4 = *(*v9 + 1188);
  _S5 = *(*v9 + 1192);
  __asm
  {
    FMLA            S1, S4, V2.S[1]
    FMLA            S1, S5, V0.S[2]; float
    FMLA            S3, S4, V0.S[1]
  }

  v183 = atan2f(_S3 + (*_D2.i32 * _S5), _S1);
  *(*&v1142.f64[0] + 272) = v183;
  v1169.i64[1] |= 0x2000000uLL;
  v163 = *(v162 + 136);
LABEL_306:
  v161 = 0.0;
  if (!CA::Render::Updater::should_track_layer_headroom(*&v1167, v164[70]))
  {
    goto LABEL_316;
  }

  if (v163 == 8)
  {
    v184 = *(v162 + 40);
    if (v184 <= *(v162 + 76))
    {
      v184 = *(v162 + 76);
    }
  }

  else
  {
    if (v163 != 6)
    {
      v161 = 1.0;
      goto LABEL_316;
    }

    v184 = *(v162 + 60);
  }

  if (v184 >= 0.0)
  {
    if (v163 != 8)
    {
      v161 = *(v162 + 60);
LABEL_318:
      v185 = *(v162 + 60);
      goto LABEL_364;
    }

    if (*(v162 + 40) <= *(v162 + 76))
    {
      v161 = *(v162 + 76);
    }

    else
    {
      v161 = *(v162 + 40);
    }

LABEL_362:
    v185 = *(v162 + 40);
    if (v185 <= *(v162 + 76))
    {
      v185 = *(v162 + 76);
    }

    goto LABEL_364;
  }

LABEL_316:
  if (v163 == 8)
  {
    goto LABEL_362;
  }

  v185 = 1.0;
  if (v163 == 6)
  {
    goto LABEL_318;
  }

LABEL_364:
  v1132 = 4 * (v185 > 1.0);
  CA::Render::SDFLayer::sdf_padding(v162);
  v219 = MEMORY[0x1EEE9AC00](v218);
  memset(&v1116[8], 0, 48);
  if (*&v219 < 1.0)
  {
    *&v219 = 1.0;
  }

  v220 = 0;
  if (*(v162 + 136) == 5)
  {
    v220 = *(v162 + 28);
  }

  *&v1116[32] = &v1164;
  *&v1116[40] = LODWORD(v219);
  *&v1116[44] = v220;
  *&v1116[8] = &unk_1EF1F8470;
  *&v1116[16] = v1163;
  v1163 = &v1116[8];
  v1169.i64[1] |= 0x20C00000uLL;
LABEL_369:
  if (v1149)
  {
    if ((v1149[16] & 1) == 0)
    {
      if ((*(*v162 + 208))(v162, v1168))
      {
        v221 = v1149;
        v1149[16] = 1;
        v222 = *(v221 + 1);
        if (v222)
        {
          CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v221, v222);
          *(v221 + 1) = 0;
        }
      }
    }
  }

  memset(v1180, 0, 48);
  v223 = (*(*v162 + 176))(v162);
  v165 = v223;
  if (!v223)
  {
    v1174 = 0u;
    v1175 = 0u;
    *buf = 0u;
    v1184 = 0u;
    if (!(*(*v162 + 184))(v162, v1168, &v1174, buf))
    {
      goto LABEL_397;
    }

    v228 = (*(*v162 + 200))(v162);
    CA::Rect::apply_transform(v1174.f64, &v1164);
    CA::Render::Updater::LayerShapes::union_bounds(&v1146, &v1174, v228);
    if (v1184.f64[0] != 0.0 && v1150)
    {
      CA::Rect::apply_transform(buf, &v1164);
      CA::Render::Updater::union_opaque_rect(v9, &v1146, v229, *buf, v1184);
    }

    if (!v228)
    {
      goto LABEL_397;
    }

    goto LABEL_396;
  }

  if ((*(*v162 + 192))(v162, v1168, v1180))
  {
    v1174 = v1180[0];
    v1175 = vsubq_f64(*(&v1180[1] + 8), v1180[0]);
    CA::Rect::apply_transform(v1174.f64, &v1164);
    v225 = v1174;
    v224 = v1175;
    v1180[0] = v1174;
    *(&v1180[1] + 8) = vaddq_f64(v1175, v1174);
    v1174 = 0u;
    v1175 = 0u;
    v226 = *&v224.i64[1];
    if (*v224.i64 >= *&v224.i64[1])
    {
      v227 = *&v224.i64[1];
    }

    else
    {
      v227 = *v224.i64;
    }

    if (v227 > 0.0)
    {
      if (*v224.i64 > *&v224.i64[1])
      {
        v226 = *v224.i64;
      }

      if (v226 >= 1.79769313e308)
      {
        v1174 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v224 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v1174 = v225;
      }

      v1175 = v224;
    }

    CA::Render::Updater::LayerShapes::union_bounds(&v1146, &v1174, 1);
    if (*&v1148 > *v1180[1].i64)
    {
      *&v1148 = v1180[1].i64[0];
    }

    if (*(&v1148 + 1) < *&v1180[2].i64[1])
    {
      *(&v1148 + 1) = v1180[2].i64[1];
    }

LABEL_396:
    v1169.i64[1] |= 0x20C00000uLL;
  }

LABEL_397:
  if ((*(*v162 + 168))(v162, v1168))
  {
    v1169.i64[1] |= 0x800000000uLL;
  }

  v113 = v1168;
LABEL_400:
  v230 = v1142.f64[0];
  valid_occlusion = CA::Render::Layer::get_valid_occlusion(v113, v117.n128_f32[0], v114);
  if (valid_occlusion)
  {
    *(*&v230 + 24) |= 0x30000000000uLL;
  }

  v236.n128_f64[0] = v161;
  if (v161 > 1.001)
  {
    v1169.i64[1] |= 0x800000004uLL;
  }

  if ((v1140.n128_u64[0] & 0x400000000) != 0)
  {
    v237 = ((v1136 & 7) << 47) | v1169.i64[1] | *&v1131.f64[0];
    if (((v1169.i64[1] | *&v1131.f64[0]) & 0x1000000000) != 0)
    {
      v236.n128_u32[0] = *(*v9 + 1184);
      if (v236.n128_f32[0] <= v23)
      {
        v236.n128_f32[0] = v23;
      }

      *(*v9 + 1184) = v236.n128_u32[0];
    }

    goto LABEL_411;
  }

  if (v19)
  {
    v237 = v1169.i64[1];
LABEL_411:
    v1169.i64[1] = v237 | 4;
  }

  v238 = v1168;
  if (*(v1168 + 37))
  {
    v239 = *(v1168 + 136);
    if (!v239 || (v236 = vmvnq_s8(vceqzq_f32(*(v239 + 200))), v236.n128_u64[0] = vmovn_s32(v236), v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]), (v236.n128_u8[0] & 1) != 0))
    {
      v240 = *(v1168 + 48);
      if ((v240 & 0x80) != 0)
      {
        v242 = CA::RectTraits<double>::infinity;
        goto LABEL_443;
      }

      if ((v240 & 0x100) != 0)
      {
        v241 = (v1168 + 72);
        goto LABEL_422;
      }

      if (v239)
      {
        valid_occlusion = *(v239 + 120);
        if (valid_occlusion)
        {
          v241 = CA::Render::Path::bounding_rect(valid_occlusion);
          v238 = v1168;
          v239 = *(v1168 + 136);
LABEL_422:
          v243 = *v241;
          v244 = *(v241 + 1);
          v1180[1] = v244;
          if (v239)
          {
            v245 = (*(v239 + 228) * -2.8);
          }

          else
          {
            v245 = -8.39999962;
          }

          if (*v244.i64 <= *&v244.i64[1])
          {
            v246 = *&v244.i64[1];
          }

          else
          {
            v246 = *v244.i64;
          }

          if (v246 < 1.79769313e308)
          {
            v247 = *v244.i64 >= *&v244.i64[1] ? *&v244.i64[1] : *v244.i64;
            if (v247 > 0.0)
            {
              v243 = vaddq_f64(v243, vdupq_lane_s64(*&v245, 0));
              v248 = v245 * -2.0;
              *v1180[1].i64 = v248 + *v244.i64;
              *&v1180[1].i64[1] = v248 + *&v244.i64[1];
              if (v248 + *v244.i64 <= 0.0 || v248 + *&v244.i64[1] <= 0.0)
              {
                v1180[1] = 0uLL;
              }
            }
          }

          if (v239)
          {
            v249 = vcvtq_f64_f32(*(v239 + 220));
          }

          else
          {
            v249 = xmmword_183E20FC0;
          }

          v1180[0] = vaddq_f64(v243, v249);
          CA::Rect::apply_transform(v1180[0].i64, &v1164);
          v251 = *(v238 + 136);
          if (v251)
          {
            v252 = *(v251 + 96);
            if (v252)
            {
              if (*(v252 + 16))
              {
                MEMORY[0x1EEE9AC00](v250);
                v236 = v1180[0];
                *&v1116[16] = v1180[0];
                *&v1116[32] = v1180[1];
                *&v1115[24] = &unk_1EF1F84D8;
                *v1116 = v1163;
                *&v1116[8] = 0;
                v1163 = &v1115[24];
                goto LABEL_444;
              }
            }
          }

          v242 = v1180;
LABEL_443:
          valid_occlusion = CA::Render::Updater::LayerShapes::union_bounds(&v1146, v242, 1);
LABEL_444:
          v1169.i64[1] |= 0x20C00000uLL;
        }
      }
    }
  }

  v253 = v1168;
  v254 = *(v1168 + 136);
  if (v254)
  {
    v236.n128_u32[0] = *(v254 + 344);
    if (v236.n128_f32[0] != 0.0)
    {
      v236 = vmvnq_s8(vceqzq_f32(*(v254 + 324)));
      v236.n128_u64[0] = vmovn_s32(v236);
      v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]);
      if ((v236.n128_u8[0] & 1) != 0 && (*(v1168 + 49) & 8) != 0)
      {
        v255 = *(v1168 + 72);
        v256 = *(v1168 + 88);
        v1180[0] = v255;
        v1180[1] = v256;
        if (*v256.i64 <= *&v256.i64[1])
        {
          v257 = *&v256.i64[1];
        }

        else
        {
          v257 = *v256.i64;
        }

        if (v257 < 1.79769313e308)
        {
          v258 = *v256.i64 >= *&v256.i64[1] ? *&v256.i64[1] : *v256.i64;
          if (v258 > 0.0)
          {
            *&v259 = -*(v254 + 320);
            v1180[0] = vaddq_f64(v255, vdupq_lane_s64(v259, 0));
            *v1180[1].i64 = *&v259 * -2.0 + *v256.i64;
            *&v1180[1].i64[1] = *&v259 * -2.0 + *&v256.i64[1];
            if (*v1180[1].i64 <= 0.0 || *&v259 * -2.0 + *&v256.i64[1] <= 0.0)
            {
              v1180[1] = 0uLL;
            }
          }
        }

        CA::Rect::apply_transform(v1180[0].i64, &v1164);
        v261 = *(v254 + 96);
        if (v261 && *(v261 + 16))
        {
          MEMORY[0x1EEE9AC00](v260);
          v236 = v1180[0];
          *&v1116[16] = v1180[0];
          *&v1116[32] = v1180[1];
          *&v1115[24] = &unk_1EF1F84D8;
          *v1116 = v1163;
          *&v1116[8] = 0;
          v1163 = &v1115[24];
        }

        else
        {
          valid_occlusion = CA::Render::Updater::LayerShapes::union_bounds(&v1146, v1180, 1);
          v253 = v1168;
        }

        v1169.i64[1] |= 0x20C00000uLL;
      }
    }
  }

  v262 = v1163;
  if (v165)
  {
    v263 = v1139;
    goto LABEL_466;
  }

  if ((*(v253 + 46) & 0x10) != 0)
  {
    v236.n128_u32[0] = v1165.n128_u32[0];
    v1180[0].i64[0] = v1165.n128_u64[0];
    v1180[0].i64[1] = v1165.n128_u64[0];
    if (v1163)
    {
      v272 = v1163;
      do
      {
        valid_occlusion = (*(*v272 + 6))(v272, v1180);
        v272 = v272[1];
      }

      while (v272);
      v253 = v1168;
    }

    v273 = *(v253 + 136);
    if (v273)
    {
      v236.n128_u32[0] = *(v273 + 308);
    }

    else
    {
      v236.n128_u8[0] = *(v253 + 39);
      v236.n128_f32[0] = v236.n128_u32[0];
    }

    v309 = v1180[0].i64[0];
    if (*v1180[0].i64 <= *&v1180[0].i64[1])
    {
      v309 = v1180[0].i64[1];
    }

    v236.n128_f64[0] = *&v309 / v236.n128_f32[0];
    v236.n128_f32[0] = v236.n128_f64[0];
    if (fabsf(v236.n128_f32[0] + -1.0) > 0.001)
    {
      v236.n128_f64[0] = MEMORY[0x1EEE9AC00](valid_occlusion);
      v236.n128_f32[0] = v236.n128_f32[0] + 1.0;
      *&v1116[40] = 0;
      *&v1116[44] = v236.n128_f32[0];
      *&v1116[24] = &unk_1EF1F83A0;
      *&v1116[32] = v1163;
      v1163 = &v1116[24];
    }

    v1172 |= 4u;
  }

  if ((v1140.n128_u64[0] & 0xC00000000) != 0)
  {
    v1172 |= 4u;
  }

  v310 = *(v253 + 40);
  v263 = v1139;
  if ((v310 & 0x400000000000000) != 0)
  {
    if (!(v310 & 0x10000000000000 | v1135))
    {
      goto LABEL_569;
    }

    goto LABEL_568;
  }

  if (v1135)
  {
LABEL_568:
    *(*&v1167 + 24) |= 0x1000uLL;
  }

LABEL_569:
  v311 = *(v253 + 136);
  if (!*(v253 + 37))
  {
    if (!v311)
    {
      goto LABEL_466;
    }

    goto LABEL_575;
  }

  if (v311)
  {
    v236 = vmvnq_s8(vceqzq_f32(*(v311 + 200)));
    v236.n128_u64[0] = vmovn_s32(v236);
    if ((vmaxv_u16(v236.n128_u64[0]) & 1) != 0 && !*(v311 + 120))
    {
      v312 = (*(v253 + 49) & 1) == 0;
LABEL_576:
      v236.n128_u32[0] = *(v311 + 344);
      v313 = v236.n128_f32[0] != 0.0 && (v236 = vmvnq_s8(vceqzq_f32(*(v311 + 324))), v236.n128_u64[0] = vmovn_s32(v236), v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]), (v236.n128_u8[0] & 1) != 0) && (*(v253 + 49) & 8) == 0;
      if (!v312 && !v313)
      {
        goto LABEL_584;
      }

      goto LABEL_583;
    }

LABEL_575:
    v312 = 0;
    goto LABEL_576;
  }

  if (*(v253 + 49))
  {
    goto LABEL_466;
  }

LABEL_583:
  v236.n128_f64[0] = MEMORY[0x1EEE9AC00](valid_occlusion);
  *&v1116[8] = 0;
  *&v1116[40] = 0;
  *&v1116[16] = &v1164;
  *&v1116[24] = v314;
  *&v1116[28] = v236.n128_u64[0];
  *&v1116[36] = v315;
  *&v1115[24] = &unk_1EF1F8408;
  *v1116 = v1163;
  v1163 = &v1115[24];
  v1169.i64[1] |= 0x20C00000uLL;
  if (v316)
  {
    goto LABEL_466;
  }

LABEL_584:
  v317 = *(v311 + 96);
  if (v317)
  {
    v318 = *(v317 + 16);
    if (v318)
    {
      v319 = v317 + 24;
      v320 = -v318;
      v321 = v318 - 1;
      while (1)
      {
        v322 = *(v319 + 8 * v321);
        v323 = *(v322 + 12);
        if ((v323 & 0x40100) == 0x100 && ((v323 & 0x20000) == 0 || *(*&v1167 + 88) || (*(*v1144 + 1377) & 0x10) == 0))
        {
          break;
        }

LABEL_597:
        --v321;
        _CF = __CFADD__(v320++, 1);
        if (_CF)
        {
          v253 = v1168;
          v9 = v1144;
          v7 = v1138;
          v263 = v1139;
          goto LABEL_466;
        }
      }

      MEMORY[0x1EEE9AC00](valid_occlusion);
      v236 = 0uLL;
      *&v1116[32] = 0u;
      *v1116 = 0u;
      *&v1115[24] = &unk_1EF1F8248;
      v233 = v1168;
      *&v1116[16] = &v1164;
      *&v1116[24] = v1168;
      *&v1116[32] = v322;
      valid_occlusion = *(v322 + 48);
      if (valid_occlusion && (valid_occlusion = (*(*valid_occlusion + 8))(valid_occlusion, v322), !valid_occlusion))
      {
        if (*&v1116[32])
        {
LABEL_595:
          *v1116 = v1163;
          v1163 = &v1115[24];
          if ((*(v1143 + 64) & 8) != 0)
          {
            *(v322 + 20) = v1144[2];
          }

          goto LABEL_597;
        }
      }

      else
      {
        *&v1116[32] = 0;
      }

      v1116[10] = 1;
      goto LABEL_595;
    }
  }

LABEL_466:
  v264 = *&v1167;
  v265 = *(*&v1167 + 24);
  if ((*(v253 + 49) & 0x40) != 0)
  {
    *&v265 |= 0x400000uLL;
    *(*&v1167 + 24) = v265;
  }

  if ((v265.i8[0] & 0x10) == 0 && (*&v265 & 0x40000000000) == 0 && !*(*&v1142.f64[0] + 120) && !v1171)
  {
    v266 = *(v253 + 136);
    if (v266 && (v267 = *(v266 + 104)) != 0 && (v268 = *(v267 + 16), v268))
    {
      if (*(*(v267 + 24) + 13))
      {
        goto LABEL_495;
      }

      v269 = 0;
      v270 = v267 + 32;
      while (v268 - 1 != v269)
      {
        v271 = *(v270 + 8 * v269++);
        if (*(v271 + 13))
        {
          goto LABEL_1094;
        }
      }

      v269 = v268;
LABEL_1094:
      if ((*&v265 & 0x80000000000) != 0 || v269 < v268)
      {
        goto LABEL_495;
      }
    }

    else if ((*&v265 & 0x80000000000) != 0)
    {
      goto LABEL_495;
    }

    if ((*(v9 + 48) & 1) == 0)
    {
      if (!v266 || (v274 = *(v266 + 88)) == 0 || (*(v274 + 13) & 1) == 0 || (*(v253 + 45) & 4) != 0 || (valid_occlusion = CA::Render::Filter::compositing_dod(*(v274 + 24)), (valid_occlusion - 5) >= 0xFFFFFFFE))
      {
        *&v265 |= 0x10uLL;
        v264[3] = v265;
      }
    }
  }

LABEL_495:
  if ((v265.i8[0] & 0x10) != 0)
  {
    v236 = 0uLL;
    v1156 = 0u;
    v1155 = 0u;
    v1154 = 0u;
  }

  else if (*(*v9 + 1376))
  {
    v236.n128_u64[0] = v1155.n128_u64[0];
    if (v1155.n128_f64[0] >= v1155.n128_f64[1])
    {
      v236.n128_u64[0] = v1155.n128_u64[1];
    }

    if (v236.n128_f64[0] <= 0.0 && (v1172 & 4) == 0)
    {
      v264[3] = (*&v265 | 0x10);
    }
  }

  for (m = v1163; m != v262; m = m[1])
  {
    valid_occlusion = (*(*m + 3))(m, &v1146, (v1172 >> 2) & 1, v236);
  }

  v276 = v1141.f64[0];
  if (*v1147.i64 == 0.0)
  {
    v297 = *&v1167;
    *(*&v1167 + 160) = 0;
    v297[21] = 0;
    if (!v262)
    {
      goto LABEL_512;
    }

    goto LABEL_511;
  }

  v1180[0] = v1146;
  v1180[1] = v1147;
  CA::Rect::unapply_transform(v1180[0].i64, &v1164);
  v277 = vceqzq_f64(v1180[1]);
  v278 = vorrq_s8(vdupq_laneq_s64(v277, 1), v277).u64[0];
  v279 = 0uLL;
  if ((v278 & 0x8000000000000000) == 0)
  {
    v280 = vceqq_f64(v1180[1], v1180[1]);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v280), 1), v280).u64[0] & 0x8000000000000000) == 0)
    {
      v281 = vcvtmq_s64_f64(vmaxnmq_f64(v1180[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
      v279 = vuzp1q_s32(v281, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1180[0], v1180[1]), vdupq_n_s64(0x41C0000000000000uLL))), v281));
    }
  }

  for (*(*&v1167 + 160) = v279; v262; v262 = v262[1])
  {
LABEL_511:
    valid_occlusion = (*(*v262 + 3))(v262, &v1146, (v1172 >> 2) & 1);
  }

LABEL_512:
  v282 = v1163;
  if (!v1163 || (*(v1163 + 17) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](valid_occlusion);
    *&v1116[32] = v282;
    *&v1116[40] = 65792;
    *&v1116[24] = &unk_1EF1F8338;
    v1163 = &v1116[24];
    v282 = &v1116[24];
  }

  v283 = v1142.f64[0];
  v284 = v1146;
  v285 = v1147;
  v286 = vceqzq_f64(v1147);
  v287 = vdupq_laneq_s64(v286, 1);
  v288 = vorrq_s8(v287, v286).u64[0];
  v289 = 0uLL;
  if ((v288 & 0x8000000000000000) == 0)
  {
    v290 = vceqq_f64(v1147, v1147);
    v287 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v290), 1), v290);
    if ((v287.n128_u64[0] & 0x8000000000000000) == 0)
    {
      v291 = vcvtmq_s64_f64(vmaxnmq_f64(v1146, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v287 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1146, v1147), vdupq_n_s64(0x41C0000000000000uLL))), v291);
      v289 = vuzp1q_s32(v291, v287);
    }
  }

  *(*&v1142.f64[0] + 192) = v289;
  if ((*(*&v283 + 28) & 0x20) != 0)
  {
    v1172 |= 0xAu;
  }

  if ((v1140.n128_u64[0] & 0x400000000) != 0 || (v292 = (*&v1167 + 96), v293 = *(*&v1167 + 104), v293 == (*&v1167 + 96)))
  {
    v296 = v1144;
    if (v1151)
    {
      v232 = v1152;
      if (*&v1152 != 0.0)
      {
        CA::shape_subtract(&v1151, v1152, v233, v234);
      }
    }

    goto LABEL_625;
  }

  v294 = *&v1152;
  *buf = v1151;
  v295 = *(*v1144 + 1376);
  if ((v295 & 0x200000) != 0)
  {
    v1151 = 1;
    v1152 = 1;
  }

  if ((v295 & 1) != 0 && (*(*&v1167 + 24) & 0x18) != 0)
  {
    v296 = v1144;
    if ((v295 & 0x200000) == 0)
    {
      goto LABEL_625;
    }

    goto LABEL_620;
  }

  v1174.f64[0] = 0.0;
  v1131.f64[0] = v294;
  v1121 = v285;
  v1122 = v284;
  if (!v1150 || (v1169.i8[2] & 0x10) != 0)
  {
    LODWORD(v1123) = 1;
  }

  else
  {
    LODWORD(v1123) = 0;
    *&v1174.f64[0] = v1150;
    v1150 = 1;
  }

  v298 = 0;
  v299 = v1169.i32[2];
  v1169.i64[1] &= 0xFFFFFFFFFE3FFFFFLL;
  v289 = vdupq_n_s64(0x100000uLL);
  v1140 = v289;
  v300 = 1;
  v301 = v1144;
  do
  {
    v302 = v293;
    v293 = v293[1];
    CA::Render::Updater::prepare_layer(v301, &v1163, v302, &v1146, &v1169.i64[1], v289.f64[0], v287);
    if (*(v301 + 50) == 1 && (v1169.i32[0] & 0x20000) != 0)
    {
      v1169.i64[0] |= 8uLL;
    }

    v298 |= (*&v1170 & 0x28000) != 0;
    if ((v298 & 1) == 0)
    {
      v300 &= (v1170 & 0x800000) == 0;
    }

    if (v1150 && !(v1169.i64[0] & 0x100000 | v1150 & 1) && *(v1150 + 4) >= 65)
    {
      CA::Shape::unref(v1150);
      v1150 = 1;
      v287 = v1140;
      v289 = vorrq_s8(v1169, v1140);
      v1169 = v289;
    }
  }

  while (v293 != v292);
  v303 = v299 & 0x1C00000;
  v304 = v1163;
  if (v1163 != v282)
  {
    do
    {
      v305 = v304[1];
      (**v304)(v304);
      v304 = v305;
    }

    while (v305 != v282);
  }

  v1163 = v282;
  v306 = v1169.i64[1];
  v296 = v1144;
  v283 = v1142.f64[0];
  v294 = v1131.f64[0];
  if ((v303 & ~v1169.i64[1]) == 0)
  {
    v263 = v1139;
    goto LABEL_613;
  }

  v263 = v1139;
  v307 = v1121;
  v308 = v1122;
  if (!v1150)
  {
    goto LABEL_612;
  }

  if (v1150)
  {
    if (v1150 == 1)
    {
LABEL_612:
      v306 |= v303;
      v1169.i64[1] = v306;
      goto LABEL_613;
    }
  }

  else if (*(v1150 + 4) == 6)
  {
    goto LABEL_612;
  }

  v324 = vclezq_f64(v1121);
  if ((vorrq_s8(vdupq_laneq_s64(v324, 1), v324).u64[0] & 0x8000000000000000) == 0)
  {
    v325 = vclezq_f64(v1155);
    if ((vorrq_s8(vdupq_laneq_s64(v325, 1), v325).u64[0] & 0x8000000000000000) != 0)
    {
      v307 = 0uLL;
    }

    else
    {
      v326 = vmaxnmq_f64(v1122, v1154);
      v327 = vsubq_f64(vminnmq_f64(vaddq_f64(v1122, v1121), vaddq_f64(v1154, v1155)), v326);
      v328 = vclezq_f64(v327);
      v329 = vdupq_laneq_s64(v328, 1);
      v330 = vorrq_s8(v329, v328);
      v329.i64[0] = -1;
      v331 = vdupq_lane_s64(vcgtq_s64(v330, v329).i64[0], 0);
      v308 = vbslq_s8(v331, v326, v1122);
      v307 = vandq_s8(v327, v331);
    }
  }

  v332 = vceqzq_f64(v307);
  if ((vorrq_s8(vdupq_laneq_s64(v332, 1), v332).u64[0] & 0x8000000000000000) != 0 || (v333 = vceqq_f64(v307, v307), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v333), 1), v333).u64[0] & 0x8000000000000000) != 0))
  {
    v1180[0] = 0uLL;
  }

  else
  {
    v334 = vcvtmq_s64_f64(vmaxnmq_f64(v308, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v1180[0] = vuzp1q_s32(v334, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v308, v307), vdupq_n_s64(0x41C0000000000000uLL))), v334));
  }

  if ((CA::Shape::contains(v1150, v1180) & 1) == 0)
  {
    goto LABEL_612;
  }

LABEL_613:
  if (!(v300 & 1 | ((v298 & 1) == 0)))
  {
    v1169.i64[1] = v306 | 0x20C00000;
  }

  v335 = *&v1167;
  v7 = v1138;
  v276 = v1141.f64[0];
  if ((v1123 & 1) == 0)
  {
    v336 = v1150;
    *(*&v1167 + 216) = v1150;
    CA::shape_union(&v1174, v336, v233);
    v1150 = *&v1174.f64[0];
    v335 = *&v1167;
  }

  if ((v335[3].i8[0] & 0x20) != 0)
  {
    CA::Render::LayerNode::depth_sort_sublayers(v335);
  }

  if ((*(*v296 + 1376) & 0x200000) != 0)
  {
LABEL_620:
    CA::shape_union(&v1152, *&v294, v233);
    CA::shape_subtract(buf, v1152, v337, v338);
    v340 = *buf;
    if (v1151)
    {
      CA::shape_union(&v1151, *buf, v339);
      if ((v1151 & 1) == 0 && *(v1151 + 4) >= 257)
      {
        v1180[0] = 0uLL;
        CA::Shape::get_bounds(v1151, v1180);
        CA::Shape::unref(v1151);
        v1151 = CA::Shape::new_shape(v1180, v341);
      }
    }

    CA::Shape::unref(v340);
    CA::Shape::unref(*&v294);
  }

LABEL_625:
  if (v1134.i32[0])
  {
    v289 = v1124;
    v287 = v1125;
    v1154 = v1125;
    v1155 = v1124;
  }

  if (v1151 && *&v1152 != 0.0)
  {
    v343 = CA::Shape::subtract(v1152, &v1156);
    if (v1151)
    {
      CA::shape_union(&v1151, v343, v342);
      if ((v1151 & 1) == 0 && *(v1151 + 4) >= 257)
      {
        v1180[0] = 0uLL;
        CA::Shape::get_bounds(v1151, v1180);
        CA::Shape::unref(v1151);
        v1151 = CA::Shape::new_shape(v1180, v344);
      }
    }

    CA::Shape::unref(v343);
    v346 = *(*&v276 + 136);
    if (v346)
    {
      LODWORD(v289.f64[0]) = *(v346 + 240);
      if (*v289.f64 > 0.0)
      {
        if (*(v346 + 244) != 0.0 || *(v346 + 248) != 0.0 || *(v346 + 252) != 0.0 || (LODWORD(v289.f64[0]) = *(v346 + 256), *v289.f64 != 0.0) || *(v346 + 128))
        {
          CA::Render::Updater::LayerShapes::union_visible_shape(&v1146, v1152, v345);
        }
      }
    }
  }

  if ((*(*&v283 + 27) & 2) == 0 && (byte_1ED4E9880 & 1) == 0)
  {
    v1027 = *(v1168 + 104);
    if (v1027)
    {
      if (*(v1027 + 12) == 25 && *(v1027 + 529) == 1)
      {
        v1028 = *v296;
        v1140 = *(*v296 + 200);
        v1174 = 0uLL;
        v1131 = v1146;
        v1125 = v1147;
        CA::Bounds::set_exterior(&v1174, v232, v1146, v1147);
        if (CA::BoundsImpl::intersect(&v1174, v1140.n128_u64[0], *&vextq_s8(v1140, v1140, 8uLL)))
        {
          v1030 = (v1140.n128_u32[3] * v1140.n128_u32[2]) * 0.95 < (HIDWORD(v1174.f64[1]) * LODWORD(v1174.f64[1]));
        }

        else
        {
          v1030 = 0;
        }

        v1076 = *(v1028 + 568);
        memset(buf, 0, sizeof(buf));
        CA::Bounds::set_exterior(buf, v1029, v1131, v1125);
        v1077 = CA::Shape::intersect(v1076, buf);
        v1078 = CA::Shape::area(v1077);
        v1080 = *&buf[8];
        v1079 = *&buf[12];
        v1081 = *&buf[12] * *&buf[8];
        v1082 = (*&buf[12] * *&buf[8]) * 0.2;
        if (byte_1ED4E9881 == 1)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1102 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v1131.f64[0]) = v1082 > v1078;
            v1122.f64[0] = *(v1027 + 536);
            LODWORD(v1123) = *buf;
            LODWORD(v1124.f64[0]) = *&buf[4];
            v1103 = v1140.n128_u32[3] * v1140.n128_u32[2];
            v1125.n128_u32[0] = HIDWORD(v1174.f64[1]) * LODWORD(v1174.f64[1]);
            v1104 = ((HIDWORD(v1174.f64[1]) * LODWORD(v1174.f64[1])) / (v1140.n128_u32[3] * v1140.n128_u32[2]));
            v1105 = CA::Shape::area(v1076);
            v1106 = CA::Shape::area(v1077);
            v1180[0].i32[0] = 134222336;
            *(v1180[0].i64 + 4) = *&v1122.f64[0];
            v1180[0].i16[6] = 1024;
            *(&v1180[0].i32[3] + 2) = v1123;
            v1180[1].i16[1] = 1024;
            v1180[1].i32[1] = LODWORD(v1124.f64[0]);
            v1180[1].i16[4] = 1024;
            *(&v1180[1].i32[2] + 2) = v1080;
            v1180[1].i16[7] = 1024;
            v1180[2].i32[0] = v1079;
            v1180[2].i16[2] = 1024;
            *(&v1180[2].i32[1] + 2) = v1081;
            v1180[2].i16[5] = 1024;
            v1180[2].i32[3] = v1140.n128_u32[0];
            v1180[3].i16[0] = 1024;
            *(v1180[3].i32 + 2) = v1140.n128_i32[1];
            v1180[3].i16[3] = 1024;
            *(&v1180[3].i32[3] + 2) = v1140.n128_i32[3];
            v1180[3].i32[2] = v1140.n128_i32[2];
            v1180[3].i16[6] = 1024;
            v1180[4].i16[1] = 1024;
            v1180[4].i32[1] = v1103;
            v1180[4].i16[4] = 2048;
            *(&v1180[4].i64[1] + 2) = v1104;
            v1180[5].i16[1] = 1024;
            v1180[5].i32[1] = v1125.n128_u32[0];
            v1180[5].i16[4] = 1024;
            *(&v1180[5].i32[2] + 2) = v1030;
            v1180[5].i16[7] = 2048;
            *&v1181[0] = v1105;
            WORD4(v1181[0]) = 2048;
            *(v1181 + 10) = (v1106 / v1081);
            WORD1(v1181[1]) = 2048;
            *(&v1181[1] + 4) = v1106;
            WORD6(v1181[1]) = 1024;
            *(&v1181[1] + 14) = LODWORD(v1131.f64[0]);
            _os_log_impl(&dword_183AA6000, v1102, OS_LOG_TYPE_DEFAULT, "IQ Preferred Latency %f: \n  self_bounds %i %i %i %i (area=%i)\n  update_bounds %i %i %i %i (area=%i)\n  intersection %.2f%% (area=%i)\n  is_full_screen %i\n\n  visible_shape_above area %ld\n  intersection %.2f%% (area=%ld)\n  unoccluded %i", v1180, 0x82u);
          }
        }

        CA::Shape::unref(v1077);
        v1083 = v1082 > v1078 && v1030;
        if (v1083 && (v289.f64[0] = *(*v1144 + 152), v289.f64[0] == 0.0))
        {
          v289 = *(v1027 + 536);
          *(*v1144 + 152) = v289;
          v1084 = 1;
        }

        else
        {
          v1084 = 0;
        }

        if (v1139)
        {
          v1085 = v1084 ^ 1;
          if (!*&v1139[3])
          {
            v1085 = 1;
          }

          if ((v1085 & 1) == 0)
          {
            v1086 = atomic_load((*(*(v1027 + 16) + 24) + 8));
            if ((v1086 & 0x1000000000000) != 0)
            {
              v1087 = v1139[3];
              v1088 = atomic_load((*&v1087 + 228));
              if (!v1088)
              {
                v1089 = *(*&v1087 + 256) ? 0 : getpid();
                v1088 = 0;
                atomic_compare_exchange_strong((*&v1087 + 228), &v1088, v1089);
                if (!v1088)
                {
                  v1088 = v1089;
                }
              }

              *(*v1144 + 1384) = v1088;
            }
          }
        }

        v1095 = *(*(v1027 + 16) + 24);
        v1096 = atomic_load((v1095 + 8));
        if ((v1096 & 0x10000000000000) != 0)
        {
          v1097 = 0;
        }

        else
        {
          v1097 = v1084;
        }

        if (v1097 == 1)
        {
          atomic_fetch_or((v1095 + 8), 0x10000000000000uLL);
        }

        else
        {
          if ((v1096 & 0x10000000000000) != 0)
          {
            v1098 = v1084;
          }

          else
          {
            v1098 = 1;
          }

          if ((v1098 & 1) == 0)
          {
            atomic_fetch_and((v1095 + 8), 0xFFEFFFFFFFFFFFFFLL);
          }
        }

        v1169.i64[1] |= 4uLL;
        v296 = v1144;
        v7 = v1138;
        v263 = v1139;
        v283 = v1142.f64[0];
        v276 = v1141.f64[0];
      }
    }
  }

  v347 = *(*&v283 + 120);
  if (v347)
  {
    v1140 = v1155;
    v1131 = v1154;
    v1154 = *(v7 + 88);
    v1155 = *(v7 + 104);
    v1125 = v1156;
    v1156 = *(v7 + 120);
    v1169.i64[1] |= 0x20C00000uLL;
    v1179[0] = 0;
    v1177 = 0u;
    v1178 = 0u;
    v1175 = 0u;
    v1176 = 0u;
    v1174 = 0u;
    *&v1179[1] = v1154;
    *&v1179[3] = v1155;
    *&v1179[5] = v1156;
    v348 = v1143;
    v349 = *(v1143 + 80);
    CA::Render::Updater::prepare_layer(v296, v1143, *(*&v1167 + 136), &v1174, &v1169.i64[1], v1154.f64[0], v1155);
    v350 = *(v348 + 80);
    *(v348 + 80) = v349;
    v353 = CA::Render::Transition::subclass(v347, v351, v352);
    if (v353)
    {
      v355 = v353;
      v356 = *(v1168 + 72);
      v357 = *(v1168 + 88);
      *buf = v356;
      v1184 = v357;
      v358 = *(*&v1167 + 56);
      if (v358)
      {
        CA::Mat4Impl::mat4_apply_to_rect(v358, buf, v354);
      }

      else
      {
        *buf = vaddq_f64(*(*&v1167 + 64), v356);
      }

      v1160[0] = v1174;
      v1160[1] = v1175;
      v1157 = v1146;
      v1158 = v1147;
      v360 = *v1143;
      if (*v1143)
      {
        v361 = 0;
        do
        {
          v362 = v361;
          v361 = v360;
          v360 = v360[1];
          v361[1] = v362;
        }

        while (v360);
        v363 = 0;
        do
        {
          (*(*v361 + 9))(v361, v1160);
          (*(*v361 + 9))(v361, &v1157);
          v364 = v361[1];
          v361[1] = v363;
          v363 = v361;
          v361 = v364;
        }

        while (v364);
      }

      v365 = v1143;
      CA::Rect::unapply_transform(v1160, v1143 + 8);
      CA::Rect::unapply_transform(v1157.i64, v365 + 8);
      v1182 = 0;
      memset(v1181, 0, sizeof(v1181));
      memset(v1180, 0, sizeof(v1180));
      v366 = CA::Transform::set(v1180, v365 + 8);
      ((*v355)[2])(v1173, v355, v347, buf, v1180, v1160, &v1157, v366);
      v287 = v1173[1];
      v1146 = v1173[0];
      v1147 = v1173[1];
      if (v1150)
      {
        CA::Shape::unref(v1150);
        v1150 = 1;
      }

      v367 = *v1143;
      v7 = v1138;
      if (*v1143)
      {
        do
        {
          (*(*v367 + 3))(v367, &v1146, (v1172 >> 2) & 1);
          v367 = v367[1];
        }

        while (v367);
      }
    }

    else
    {
      CA::Render::Updater::LayerShapes::union_bounds(&v1146, &v1174, 1);
    }

    if (v1151)
    {
      v368 = vceqzq_f64(v1147);
      if ((vorrq_s8(vdupq_laneq_s64(v368, 1), v368).u64[0] & 0x8000000000000000) != 0 || (v369 = vceqq_f64(v1147, v1147), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v369), 1), v369).u64[0] & 0x8000000000000000) != 0))
      {
        v1180[0] = 0uLL;
      }

      else
      {
        v370 = vcvtmq_s64_f64(vmaxnmq_f64(v1146, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v1180[0] = vuzp1q_s32(v370, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1146, v1147), vdupq_n_s64(0x41C0000000000000uLL))), v370));
      }

      CA::shape_union(&v1151, v1180, v359);
    }

    if (v1153)
    {
      *v1153 = xmmword_183E21120;
    }

    if (!v1150)
    {
      goto LABEL_666;
    }

    if (v1150)
    {
      if (v1150 == 1)
      {
LABEL_666:
        if ((v1169.i8[0] & 0x18) != 0)
        {
          *(v347 + 19) = v296[2];
        }

        if ((v350 & 0x18) != 0)
        {
          *(v347 + 17) = v296[2];
        }

        v1154 = v1131;
        v1155 = v1140;
        v289 = v1125;
        v1156 = v1125;
        goto LABEL_671;
      }
    }

    else if (*(v1150 + 4) == 6)
    {
      goto LABEL_666;
    }

    CA::Shape::unref(v1150);
    v1150 = 1;
    goto LABEL_666;
  }

LABEL_671:
  v371 = v1168;
  v372 = *(v1168 + 136);
  v373 = v1142.f64[0];
  if (v372)
  {
    v374 = *(v372 + 96);
    if (v374)
    {
      if ((v1172 & 0x20) == 0)
      {
        v1024 = *(v374 + 16);
        if (v1024)
        {
          if ((v1169.i32[2] & 0x800000) == 0)
          {
            v1025 = 8 * v1024;
            v1026 = v374 + 24;
            while ((*(*v1026 + 12) & 0x40100) != 0x100 || *(*v1026 + 24) == 111)
            {
              v1026 += 8;
              v1025 -= 8;
              if (!v1025)
              {
                goto LABEL_673;
              }
            }
          }

          v1169.i64[1] |= 0x20C00000uLL;
        }
      }
    }
  }

LABEL_673:
  if ((*(*v296 + 1376) & 0x18000000000) == 0x8000000000)
  {
    v1172 |= 2u;
  }

  v375 = *&v1167;
  if (v372)
  {
    CA::Render::Updater::add_background_filters_(v296, v1143, v1168, *&v1167, &v1163, &v1146);
    v375 = *&v1167;
  }

  v376 = v375[3];
  if ((v376.i8[0] & 0x10) == 0 && (v1172 & 4) == 0)
  {
    v287.n128_u64[0] = v1147.u64[1];
    *&v289.f64[0] = v1147.i64[0];
    if (*v1147.i64 >= *&v1147.i64[1])
    {
      *&v289.f64[0] = v1147.i64[1];
    }

    if (v289.f64[0] <= 0.0 || (v289 = v1155, v377 = vclezq_f64(v1155), v287 = vorrq_s8(vdupq_laneq_s64(v377, 1), v377), (v287.n128_u64[0] & 0x8000000000000000) != 0) || (v287 = v1147, v378 = vclezq_f64(v1147), (vorrq_s8(vdupq_laneq_s64(v378, 1), v378).u64[0] & 0x8000000000000000) != 0) || (v379 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v1154, v1155), vaddq_f64(v1146, v1147)), vmaxnmq_f64(v1154, v1146))), v287 = vdupq_laneq_s64(v379, 1), v289 = vorrq_s8(v287, v379), (*&v289.f64[0] & 0x8000000000000000) != 0))
    {
      *&v376 |= 0x10uLL;
      v375[3] = v376;
    }
  }

  v380 = *(*&v276 + 136);
  if (v380)
  {
    v381 = *(v380 + 96);
    if (v381)
    {
      v382 = *(v381 + 16);
      float_key = 1.0;
      if (v382)
      {
        v384 = 8 * v382;
        v385 = (v381 + 24);
        while (1)
        {
          v386 = *v385;
          v387 = *(*v385 + 24);
          if (((v387 - 215) < 2 || v387 == 516) && (*(v386 + 12) & 0x40100) == 0x100)
          {
            break;
          }

          ++v385;
          v384 -= 8;
          if (!v384)
          {
            float_key = 1.0;
            goto LABEL_703;
          }
        }

        v388 = *(v386 + 40);
        int_key = CA::Render::KeyValueArray::get_int_key(v388, 320, 0);
        v390 = 0x4000000000000;
        if (!int_key)
        {
          v390 = 0x800000000;
        }

        v391 = v390 | v1169.i64[1];
        v1169.i64[1] |= v390;
        float_key = 1.0;
        if (!int_key)
        {
          float_key = CA::Render::KeyValueArray::get_float_key(v388, 325, 1.0);
        }

        if ((*(*v296 + 1381) & 2) != 0)
        {
          v1169.i64[1] = v391 | 0x10000000;
          v7 = v1138;
          if (v263)
          {
            v263[9].i32[1] = v296[2];
          }
        }

        else
        {
          v7 = v1138;
        }
      }

LABEL_703:
      v392 = !CA::Render::Updater::should_track_layer_headroom(v375, *(*v296 + 560)) || float_key <= 1.0;
      if (!v392)
      {
        if (v161 <= float_key)
        {
          v161 = float_key;
        }

        v1132 |= 0x10u;
        v1169.i64[1] |= 4uLL;
      }
    }
  }

  v393 = *(*&v276 + 104);
  if (v393 && *(v393 + 12) == 25)
  {
    if ((*(*v296 + 1376) & 1) == 0)
    {
      CA::Render::ImageQueue::set_visible(*(*&v276 + 104), (v376.i8[0] & 0x10) == 0);
    }

    if ((v376.i8[0] & 0x10) != 0)
    {
      CA::Render::ImageQueue::did_composite(v393);
    }

    if ((*(*v296 + 1376) & 1) == 0)
    {
      v289 = v1147;
      v394 = vceqzq_f64(v1147);
      v395 = vorrq_s8(vdupq_laneq_s64(v394, 1), v394).u64[0];
      v287 = 0uLL;
      if ((v395 & 0x8000000000000000) == 0)
      {
        v396 = vceqq_f64(v1147, v1147);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v396), 1), v396).u64[0] & 0x8000000000000000) == 0)
        {
          v397 = vcvtmq_s64_f64(vmaxnmq_f64(v1146, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v289 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1146, v1147), vdupq_n_s64(0x41C0000000000000uLL))), v397);
          v287 = vuzp1q_s32(v397, v289);
        }
      }

      *(*(*(v393 + 16) + 24) + 64) = v287.n128_u32[3] * v287.n128_u32[2];
    }
  }

  v398 = *&v1167;
  v399 = *(*&v1167 + 24);
  if ((v399.i8[0] & 0x10) != 0)
  {
    *(*&v373 + 176) = 0;
    *(*&v373 + 184) = 0;
    if ((v399.i8[0] & 0x40) != 0 && *&v398[32])
    {
      v407 = *(*&v373 + 256);
      *(v407 + 64) = 0;
      *(v407 + 72) = 0;
      *(v407 + 153) = 1;
    }

    goto LABEL_1285;
  }

  v400 = vdupq_n_s64(0xC1BFFFFFFF000000);
  v401 = vbslq_s8(vcgtq_f64(v400, v1146), v400, v1146);
  v402 = vsubq_f64(vdupq_n_s64(0x41C0000000000000uLL), v401);
  v287 = vbslq_s8(vcgtq_f64(v1147, v402), v402, v1147);
  v1146 = v401;
  v1147 = v287;
  v403 = vceqzq_f64(v287);
  if ((vorrq_s8(vdupq_laneq_s64(v403, 1), v403).u64[0] & 0x8000000000000000) != 0 || (v404 = vceqq_f64(v287, v287), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v404), 1), v404).u64[0] & 0x8000000000000000) != 0))
  {
    v1145 = 0uLL;
    v406 = 0uLL;
  }

  else
  {
    v405 = vcvtmq_s64_f64(vmaxnmq_f64(v401, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v406 = vuzp1q_s32(v405, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v401, v287), vdupq_n_s64(0x41C0000000000000uLL))), v405));
    v1145 = v406;
  }

  v408 = *(v1168 + 40);
  if ((v408 & 0x2000000000000000) != 0 && (v408 & 0xF00) != 0)
  {
    v409.i64[0] = v406.i32[0];
    v409.i64[1] = v406.i32[1];
    v410 = vcvtq_f64_s64(v409);
    v409.i64[0] = v406.i32[2];
    v409.i64[1] = v406.i32[3];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v401, v410), vceqq_f64(v287, vcvtq_f64_s64(v409)))))) & 1) != 0 && (v399.i16[0] & 0x100) == 0 && (*(*v296 + 292) & 8) == 0)
    {
      v411 = v406.i32[2];
      if (v406.i32[2] <= v406.i32[3])
      {
        v412 = v406.i32[3];
      }

      else
      {
        v412 = v406.i32[2];
      }

      if (v406.i32[2] >= v406.i32[3])
      {
        v411 = v406.i32[3];
      }

      if (v412 <= 1073741822 && v411 >= 1)
      {
        v1145 = vaddq_s32(v406, xmmword_183E20FD0);
        v413 = vclez_s32(*&vextq_s8(v1145, v1145, 8uLL));
        if (vorr_s8(v413, vdup_lane_s32(v413, 1)).u8[0])
        {
          v1145.i64[1] = 0;
        }
      }
    }
  }

  v414 = vorrq_s8(vcltzq_f64(v287), vclezq_f64(v1155));
  v415 = vorrq_s8(vdupq_laneq_s64(v414, 1), v414);
  if ((*&v415.f64[0] & 0x8000000000000000) != 0)
  {
    v417 = 0;
  }

  else
  {
    v415 = v1154;
    v416 = vandq_s8(vcgeq_f64(vaddq_f64(v1154, v1155), vaddq_f64(v401, v287)), vcgeq_f64(v401, v1154));
    v287 = vdupq_laneq_s64(v416, 1);
    v417 = vandq_s8(v287, v416).u64[0] >> 63;
  }

  if ((v1172 & 0x10) == 0)
  {
    goto LABEL_1170;
  }

  v418 = *(*&v1167 + 256);
  if (v418 == 0.0)
  {
    v1172 &= 0xFFCFu;
    goto LABEL_1170;
  }

  os_unfair_lock_lock((*&v418 + 52));
  v419 = *(*&v418 + 56);
  os_unfair_lock_lock((v419 + 40));
  v422 = **(v1168 + 136);
  if (*(v422 + 12) != 3)
  {
    v422 = 0;
  }

  if (!(((*(v422 + 13) & 4) == 0) | v417 & 1))
  {
    v423 = vceqzq_f64(v1155);
    v424 = vorrq_s8(vdupq_laneq_s64(v423, 1), v423).u64[0];
    v425 = 0uLL;
    if ((v424 & 0x8000000000000000) == 0)
    {
      v426 = vceqq_f64(v1155, v1155);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v426), 1), v426).u64[0] & 0x8000000000000000) == 0)
      {
        v427 = vcvtmq_s64_f64(vmaxnmq_f64(v1154, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v425 = vuzp1q_s32(v427, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1154, v1155), vdupq_n_s64(0x41C0000000000000uLL))), v427));
      }
    }

    v428 = vclez_s32(v1145.u64[1]);
    if ((vpmax_u32(v428, v428).u32[0] & 0x80000000) == 0)
    {
      v429 = vextq_s8(v425, v425, 8uLL).u64[0];
      v430 = vclez_s32(v429);
      if ((vpmax_u32(v430, v430).u32[0] & 0x80000000) != 0 || (v431 = vadd_s32(*v425.i8, v429), *v425.i8 = vmax_s32(*v1145.i8, *v425.i8), v432 = vsub_s32(vmin_s32(vadd_s32(*v1145.i8, v1145.u64[1]), v431), *v425.i8), v433 = vclez_s32(v432), (vpmax_u32(v433, v433).u32[0] & 0x80000000) != 0))
      {
        v1145.i64[1] = 0;
      }

      else
      {
        v425.u64[1] = v432;
        v1145 = v425;
      }
    }
  }

  v434 = v1145;
  v435 = *v296;
  v436 = vextq_s8(v434, v434, 8uLL).u64[0];
  v437 = vclez_s32(v436);
  if ((vpmax_u32(v437, v437).u32[0] & 0x80000000) == 0)
  {
    v438 = v435[26];
    v439 = vclez_s32(v438);
    if ((vpmax_u32(v439, v439).u32[0] & 0x80000000) != 0 || (v440 = v435[25], v441 = vadd_s32(*v1145.i8, v436), *v442.i8 = vmax_s32(*v1145.i8, v440), v443 = vsub_s32(vmin_s32(v441, vadd_s32(v440, v438)), *v442.i8), v444 = vclez_s32(v443), (vpmax_u32(v444, v444).u32[0] & 0x80000000) != 0))
    {
      v434.i64[1] = 0;
    }

    else
    {
      v442.u64[1] = v443;
      v434 = v442;
    }
  }

  v1140.n128_u32[0] = v296[2];
  v1121.f64[0] = v1167;
  v445 = *(*(*&v1167 + 32) + 136);
  if (v445)
  {
    v446 = *v445;
    if (*v445 && *(*&v446 + 12) != 3)
    {
      v446 = 0.0;
    }
  }

  else
  {
    v446 = 0.0;
  }

  v1159 = v434;
  v1122.f64[0] = v446;
  if ((*(*&v446 + 12) & 0x1400) == 0x1000)
  {
    v1159 = 0uLL;
  }

  *&v1124.f64[0] = v417;
  v447 = *(v419 + 56);
  v1125 = v434;
  if (v447)
  {
    if (v447 != v1140.n128_u32[0])
    {
      goto LABEL_1151;
    }

    CA::shape_union((v419 + 544), &v1159, v421);
    v451 = v1121.f64[0];
    v452 = v1122.f64[0];
  }

  else
  {
    if (v445 && (BYTE1(xmmword_1ED4E97EC) & 1) == 0 && (v453 = *(v445 + 12)) != 0)
    {
      v454 = *(v419 + 624);
      v451 = v1121.f64[0];
      v452 = v1122.f64[0];
      if (v454 != v453)
      {
        if (v454 && atomic_fetch_add(v454 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v454 + 16))(v454);
        }

        v455 = v453 + 2;
        if (!atomic_fetch_add(v453 + 2, 1u))
        {
          v453 = 0;
          atomic_fetch_add(v455, 0xFFFFFFFF);
        }

        *(v419 + 624) = v453;
      }
    }

    else
    {
      v456 = *(v419 + 624);
      v451 = v1121.f64[0];
      v452 = v1122.f64[0];
      if (v456)
      {
        if (atomic_fetch_add(v456 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v456 + 16))(v456);
        }

        *(v419 + 624) = 0;
      }
    }

    v457 = *(v419 + 544);
    if (v457)
    {
      CA::Shape::unref(v457);
    }

    *(v419 + 56) = v1140.n128_u32[0];
    *(v419 + 64) = *(*&v452 + 32);
    *(v419 + 544) = CA::Shape::new_shape(&v1159, v420);
    *(v419 + 676) = 2139095039;
    *(v419 + 684) = 0;
    *(v419 + 689) = 0;
  }

  v458 = v1125;
  if ((*(*&v452 + 14) & 0x10) != 0)
  {
    v459 = *(v419 + 624);
    if (v459)
    {
      if (atomic_fetch_add(v459 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v459 + 16))(v459);
        v458 = v1125;
      }

      *(v419 + 624) = 0;
    }
  }

  v460 = *(*(*&v451 + 32) + 136);
  v1131.f64[0] = v418;
  v1123 = v435;
  if (!v460)
  {
    v463 = *(v419 + 624);
    if (!v463)
    {
      goto LABEL_1058;
    }

    v462 = (v419 + 624);
LABEL_1055:
    if (atomic_fetch_add(v463 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v463 + 16))(v463);
      v458 = v1125;
    }

    *v462 = 0;
    goto LABEL_1058;
  }

  v461 = *(v460 + 96);
  v462 = (v419 + 624);
  v463 = *(v419 + 624);
  if (!v461)
  {
    if (!v463)
    {
      goto LABEL_1058;
    }

    goto LABEL_1055;
  }

  if (!v463)
  {
LABEL_1058:
    v469.i32[1] = 0;
    v469.i64[1] = 0;
    v1119 = 0u;
    v1120 = 0u;
    goto LABEL_1059;
  }

  v464 = *(v461 + 16);
  v465 = v463[4];
  if (v464 >= v465)
  {
    v466 = v465;
  }

  else
  {
    v466 = v464;
  }

  if (!v466)
  {
    v469.i32[1] = 0;
    v469.i64[1] = 0;
    v1119 = 0u;
    v1120 = 0u;
LABEL_2040:
    if (atomic_fetch_add(v463 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v463 + 16))(v463);
      v458 = v1125;
    }

    *v462 = 0;
    goto LABEL_1059;
  }

  v467 = 0;
  v468 = v461 + 24;
  v469.i32[1] = 0;
  v469.i64[1] = 0;
  v1119 = 0u;
  v1120 = 0u;
  while (1)
  {
    v470 = *(v468 + 8 * v467);
    v471 = *&(*v462)[2 * v467 + 6];
    v472 = *(v470 + 24);
    if (v472 != *(v471 + 24) || ((*(v470 + 13) ^ *(v471 + 13)) & 1) != 0)
    {
      break;
    }

    v473 = *(v470 + 40);
    v474 = *(v471 + 40);
    if (!(v473 | v474))
    {
      goto LABEL_861;
    }

    if ((v473 != 0) != (v474 != 0))
    {
      goto LABEL_1957;
    }

    if (v472 > 214)
    {
      if (v472 > 496)
      {
        if (v472 > 626)
        {
          if (v472 == 627)
          {
            v503 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 358, 1.0);
            v504 = CA::Render::KeyValueArray::get_float_key(v474, 358, 1.0);
            v505 = CA::Render::KeyValueArray::get_int_key(v473, 359, 1);
            v506 = CA::Render::KeyValueArray::get_int_key(v474, 359, 1);
            if (v503 != v504 || v505 != v506)
            {
              goto LABEL_1955;
            }

            goto LABEL_930;
          }

          if (v472 != 679)
          {
            if (v472 != 737)
            {
              goto LABEL_1957;
            }

            goto LABEL_867;
          }

LABEL_869:
          v476 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 325, 0.5);
          v477 = 0.5;
          goto LABEL_870;
        }

        if (v472 != 497)
        {
          if (v472 != 516)
          {
            if (v472 != 540)
            {
              goto LABEL_1957;
            }

            v476 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 325, 0.0);
            v477 = 0.0;
            goto LABEL_870;
          }

          goto LABEL_862;
        }

        goto LABEL_861;
      }

      if (v472 <= 303)
      {
        if ((v472 - 215) >= 2)
        {
          if (v472 != 280)
          {
            goto LABEL_1957;
          }

          v475 = CA::Render::KeyValueArray::get_float_key(v473, 400, 0.0);
          *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 400, 0.0);
          if (v475 != *v469.i64)
          {
            goto LABEL_1955;
          }

          CA::Render::KeyValueArray::get_rect_key(v1180, v473, 0x165, 0, 0);
          v469 = v1180[0];
          v1119 = v1180[1];
          v1120 = v1180[0];
          goto LABEL_930;
        }

LABEL_862:
        v491 = CA::Render::KeyValueArray::get_float_key(v473, 325, 0.0);
        *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
        if (v491 != *v469.i64)
        {
          goto LABEL_1955;
        }

        v476 = CA::Render::KeyValueArray::get_float_key(v473, 416, 1.0);
        v477 = 1.0;
        v492 = v474;
        v493 = 416;
        goto LABEL_871;
      }

      if (v472 == 304)
      {
        if (!v473)
        {
          goto LABEL_914;
        }

        v500 = *(v473 + 16);
        if (!v500)
        {
          goto LABEL_914;
        }

        v501 = 0;
        while (1)
        {
          v502 = *(v473 + 24 + 8 * v501);
          if (*(v502 + 16) == 363)
          {
            break;
          }

          if (v500 == ++v501)
          {
            goto LABEL_914;
          }
        }

        if ((v501 & 0x80000000) == 0)
        {
          v525 = *(v502 + 24);
        }

        else
        {
LABEL_914:
          v525 = 0;
        }

        if (!v474)
        {
          goto LABEL_923;
        }

        v526 = *(v474 + 16);
        if (!v526)
        {
          goto LABEL_923;
        }

        v527 = 0;
        while (1)
        {
          v528 = *(v474 + 24 + 8 * v527);
          if (*(v528 + 16) == 363)
          {
            break;
          }

          if (v526 == ++v527)
          {
            goto LABEL_923;
          }
        }

        if ((v527 & 0x80000000) == 0)
        {
          v529 = *(v528 + 24);
        }

        else
        {
LABEL_923:
          v529 = 0;
        }

        if (v525 != v529)
        {
          goto LABEL_1955;
        }

        v530 = CA::Render::KeyValueArray::get_float_key(v473, 325, 0.0);
        *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
        if (v530 != *v469.i64)
        {
          goto LABEL_1955;
        }

        v531 = CA::Render::KeyValueArray::get_float_key(v473, 397, 0.0);
        *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 397, 0.0);
        if (v531 != *v469.i64)
        {
          goto LABEL_1955;
        }

        LODWORD(v1118) = CA::Render::KeyValueArray::get_color_key(v473, 321, 0);
        color_key = CA::Render::KeyValueArray::get_color_key(v474, 321, 0);
        if (v1118 != color_key)
        {
          goto LABEL_1955;
        }

        v484 = CA::Render::KeyValueArray::get_color_key(v473, 322, 0);
        v518 = CA::Render::KeyValueArray::get_color_key(v474, 322, 0);
        goto LABEL_929;
      }

      if (v472 == 495)
      {
        v494 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 325, 0.0);
        *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
        if (v494 != *v469.i64)
        {
          goto LABEL_1955;
        }

        if (v473 && (v496 = *(v473 + 16), v496))
        {
          v497 = 0;
          v498 = (v473 + 24);
          v418 = v1131.f64[0];
          while (1)
          {
            v499 = *&v498[2 * v497];
            if (*(v499 + 16) == 436)
            {
              break;
            }

            if (v496 == ++v497)
            {
              goto LABEL_978;
            }
          }

          if ((v497 & 0x80000000) == 0)
          {
            v522 = *(v499 + 24);
            goto LABEL_979;
          }

LABEL_978:
          v522 = 0;
        }

        else
        {
          v522 = 0;
          v418 = v1131.f64[0];
        }

LABEL_979:
        if (v474)
        {
          v548 = *(v474 + 16);
          if (v548)
          {
            v549 = 0;
            while (1)
            {
              v550 = *(v474 + 24 + 8 * v549);
              if (*(v550 + 16) == 436)
              {
                break;
              }

              if (v548 == ++v549)
              {
                goto LABEL_1049;
              }
            }

LABEL_1047:
            if ((v549 & 0x80000000) == 0)
            {
              v574 = *(v550 + 24);
LABEL_1050:
              if (!CA::Render::curves_equal(v522, v574, v495))
              {
                goto LABEL_1956;
              }

LABEL_931:
              v458 = v1125;
              goto LABEL_932;
            }
          }
        }

LABEL_1049:
        v574 = 0;
        goto LABEL_1050;
      }

      if (v472 != 496)
      {
        goto LABEL_1957;
      }

      v478 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 325, 0.0);
      *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
      if (v478 != *v469.i64)
      {
        goto LABEL_1955;
      }

      v458 = v1125;
      if (v473 && (v479 = *(v473 + 16), v479))
      {
        v480 = 0;
        v481 = (v473 + 24);
        v418 = v1131.f64[0];
        while (1)
        {
          v482 = *&v481[2 * v480];
          if (*(v482 + 16) == 363)
          {
            break;
          }

          if (v479 == ++v480)
          {
            goto LABEL_987;
          }
        }

        if ((v480 & 0x80000000) == 0)
        {
          v523 = *(v482 + 24);
          goto LABEL_988;
        }

LABEL_987:
        v523 = 0;
      }

      else
      {
        v523 = 0;
        v418 = v1131.f64[0];
      }

      if (!v474)
      {
        goto LABEL_996;
      }

      v551 = *(v474 + 16);
      if (!v551)
      {
        goto LABEL_996;
      }

LABEL_988:
      v552 = 0;
      while (1)
      {
        v553 = *(v474 + 24 + 8 * v552);
        if (*(v553 + 16) == 363)
        {
          break;
        }

        if (v551 == ++v552)
        {
          goto LABEL_996;
        }
      }

      if ((v552 & 0x80000000) == 0)
      {
        v554 = *(v553 + 24);
      }

      else
      {
LABEL_996:
        v554 = 0;
      }

      if (v523 != v554)
      {
        break;
      }
    }

    else
    {
      if (v472 <= 109)
      {
        if (v472 > 103)
        {
          if (v472 != 104 && v472 != 106)
          {
            if (v472 != 109)
            {
              goto LABEL_1957;
            }

            v483 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 326, 0.0);
            *v469.i64 = CA::Render::KeyValueArray::get_float_key(v474, 326, 0.0);
            if (v483 != *v469.i64)
            {
LABEL_1955:
              v418 = v1131.f64[0];
LABEL_1956:
              v458 = v1125;
              break;
            }

            v484 = CA::Render::KeyValueArray::get_int_key(v473, 384, 0);
            v485 = v474;
            v486 = 384;
LABEL_902:
            v518 = CA::Render::KeyValueArray::get_int_key(v485, v486, 0);
LABEL_929:
            if (v484 != v518)
            {
              goto LABEL_1955;
            }

LABEL_930:
            v418 = v1131.f64[0];
            goto LABEL_931;
          }

LABEL_864:
          v476 = CA::Render::KeyValueArray::get_float_key(*(v470 + 40), 325, 1.0);
          v477 = 1.0;
LABEL_870:
          v492 = v474;
          v493 = 325;
LABEL_871:
          *v469.i64 = CA::Render::KeyValueArray::get_float_key(v492, v493, v477);
          if (v476 != *v469.i64)
          {
            goto LABEL_1955;
          }

          goto LABEL_930;
        }

        if (v472 != 57)
        {
          if (v472 != 96)
          {
            if (v472 != 97)
            {
              goto LABEL_1957;
            }

LABEL_867:
            v418 = v1131.f64[0];
            if (v470 != v471)
            {
              break;
            }

            goto LABEL_932;
          }

          v1117 = v468;
          v1180[0] = 0uLL;
          vec2_key = CA::Render::KeyValueArray::get_vec2_key(v473, 401, v1180);
          v510 = v509;
          v1174 = 0uLL;
          *v469.i64 = CA::Render::KeyValueArray::get_vec2_key(v474, 401, &v1174);
          if (vec2_key != *v469.i64 || v510 != *v450.i64)
          {
            goto LABEL_2029;
          }

          memset(buf, 0, sizeof(buf));
          v511 = CA::Render::KeyValueArray::get_vec2_key(v473, 382, buf);
          v513 = v512;
          v1160[0] = 0uLL;
          *v469.i64 = CA::Render::KeyValueArray::get_vec2_key(v474, 382, v1160);
          if (v511 != *v469.i64 || v513 != *v450.i64)
          {
            goto LABEL_2029;
          }

          v1157 = 0uLL;
          v515 = CA::Render::KeyValueArray::get_vec2_key(v473, 344, &v1157);
          v517 = v516;
          v1173[0] = 0uLL;
          *v469.i64 = CA::Render::KeyValueArray::get_vec2_key(v474, 344, v1173);
          if (v515 != *v469.i64)
          {
            goto LABEL_2029;
          }

          v468 = v1117;
          if (v517 != *v450.i64)
          {
            goto LABEL_1955;
          }

          goto LABEL_930;
        }

LABEL_861:
        v418 = v1131.f64[0];
        goto LABEL_932;
      }

      if (v472 > 116)
      {
        if (v472 > 176)
        {
          if (v472 != 177)
          {
            if (v472 != 202)
            {
LABEL_1957:
              v418 = v1131.f64[0];
              break;
            }

            goto LABEL_867;
          }

          if (!v473)
          {
            goto LABEL_936;
          }

          v519 = *(v473 + 16);
          if (!v519)
          {
            goto LABEL_936;
          }

          v520 = 0;
          while (1)
          {
            v521 = *(v473 + 24 + 8 * v520);
            if (*(v521 + 16) == 402)
            {
              break;
            }

            if (v519 == ++v520)
            {
              goto LABEL_936;
            }
          }

          if ((v520 & 0x80000000) == 0)
          {
            v533 = *(v521 + 24);
          }

          else
          {
LABEL_936:
            v533 = 0;
          }

          if (!v474)
          {
            goto LABEL_945;
          }

          v534 = *(v474 + 16);
          if (!v534)
          {
            goto LABEL_945;
          }

          v535 = 0;
          while (1)
          {
            v536 = *(v474 + 24 + 8 * v535);
            if (*(v536 + 16) == 402)
            {
              break;
            }

            if (v534 == ++v535)
            {
              goto LABEL_945;
            }
          }

          if ((v535 & 0x80000000) == 0)
          {
            v537 = *(v536 + 24);
          }

          else
          {
LABEL_945:
            v537 = 0;
          }

          if (!CA::Render::curves_equal(v533, v537, v449))
          {
            goto LABEL_1955;
          }

          if (!v473)
          {
            goto LABEL_1001;
          }

          v539 = *(v473 + 16);
          if (!v539)
          {
            goto LABEL_1001;
          }

          v540 = 0;
          while (1)
          {
            v541 = *(v473 + 24 + 8 * v540);
            if (*(v541 + 16) == 383)
            {
              break;
            }

            if (v539 == ++v540)
            {
              goto LABEL_1001;
            }
          }

          if ((v540 & 0x80000000) == 0)
          {
            v555 = *(v541 + 24);
          }

          else
          {
LABEL_1001:
            v555 = 0;
          }

          if (!v474)
          {
            goto LABEL_1010;
          }

          v556 = *(v474 + 16);
          if (!v556)
          {
            goto LABEL_1010;
          }

          v557 = 0;
          while (1)
          {
            v558 = *(v474 + 24 + 8 * v557);
            if (*(v558 + 16) == 383)
            {
              break;
            }

            if (v556 == ++v557)
            {
              goto LABEL_1010;
            }
          }

          if ((v557 & 0x80000000) == 0)
          {
            v559 = *(v558 + 24);
          }

          else
          {
LABEL_1010:
            v559 = 0;
          }

          if (!CA::Render::curves_equal(v555, v559, v538))
          {
            goto LABEL_1955;
          }

          if (!v473)
          {
            goto LABEL_1020;
          }

          v561 = *(v473 + 16);
          if (!v561)
          {
            goto LABEL_1020;
          }

          v562 = 0;
          while (1)
          {
            v563 = *(v473 + 24 + 8 * v562);
            if (*(v563 + 16) == 345)
            {
              break;
            }

            if (v561 == ++v562)
            {
              goto LABEL_1020;
            }
          }

          if ((v562 & 0x80000000) == 0)
          {
            v564 = *(v563 + 24);
          }

          else
          {
LABEL_1020:
            v564 = 0;
          }

          if (!v474)
          {
            goto LABEL_1029;
          }

          v565 = *(v474 + 16);
          if (!v565)
          {
            goto LABEL_1029;
          }

          v566 = 0;
          while (1)
          {
            v567 = *(v474 + 24 + 8 * v566);
            if (*(v567 + 16) == 345)
            {
              break;
            }

            if (v565 == ++v566)
            {
              goto LABEL_1029;
            }
          }

          if ((v566 & 0x80000000) == 0)
          {
            v568 = *(v567 + 24);
          }

          else
          {
LABEL_1029:
            v568 = 0;
          }

          if (!CA::Render::curves_equal(v564, v568, v560))
          {
            goto LABEL_1955;
          }

          if (v473 && (v569 = *(v473 + 16), v569))
          {
            v570 = 0;
            v571 = (v473 + 24);
            v418 = v1131.f64[0];
            while (1)
            {
              v572 = *&v571[2 * v570];
              if (*(v572 + 16) == 324)
              {
                break;
              }

              if (v569 == ++v570)
              {
                goto LABEL_1040;
              }
            }

            if ((v570 & 0x80000000) == 0)
            {
              v522 = *(v572 + 24);
              goto LABEL_1041;
            }

LABEL_1040:
            v522 = 0;
          }

          else
          {
            v522 = 0;
            v418 = v1131.f64[0];
          }

LABEL_1041:
          if (v474)
          {
            v573 = *(v474 + 16);
            if (v573)
            {
              v549 = 0;
              while (1)
              {
                v550 = *(v474 + 24 + 8 * v549);
                if (*(v550 + 16) == 324)
                {
                  goto LABEL_1047;
                }

                if (v573 == ++v549)
                {
                  goto LABEL_1049;
                }
              }
            }
          }

          goto LABEL_1049;
        }

        if (v472 == 117)
        {
          goto LABEL_864;
        }

        if (v472 != 125)
        {
          goto LABEL_1957;
        }

        goto LABEL_869;
      }

      if (v472 == 110)
      {
        goto LABEL_861;
      }

      v1118 = *(v471 + 40);
      if (v472 == 111)
      {
        v484 = CA::Render::KeyValueArray::get_int_key(v473, 410, 0);
        v485 = v1118;
        v486 = 410;
        goto LABEL_902;
      }

      if (v472 != 113)
      {
        goto LABEL_1957;
      }

      v1117 = v468;
      if (v473)
      {
        v487 = *(v473 + 16);
        v488 = v1118;
        if (!v487)
        {
          goto LABEL_955;
        }

        v489 = 0;
        while (1)
        {
          v490 = *(v473 + 24 + 8 * v489);
          if (*(v490 + 16) == 364)
          {
            break;
          }

          if (v487 == ++v489)
          {
            goto LABEL_955;
          }
        }

        if ((v489 & 0x80000000) != 0)
        {
LABEL_955:
          v524 = 0;
        }

        else
        {
          v524 = *(v490 + 24);
        }
      }

      else
      {
        v524 = 0;
        v488 = v1118;
      }

      if (!v488)
      {
        goto LABEL_964;
      }

      v542 = *(v488 + 4);
      if (!v542)
      {
        goto LABEL_964;
      }

      v543 = 0;
      while (1)
      {
        v544 = *(v488 + v543 + 3);
        if (*(v544 + 16) == 364)
        {
          break;
        }

        if (v542 == ++v543)
        {
          goto LABEL_964;
        }
      }

      if ((v543 & 0x80000000) == 0)
      {
        v545 = *(v544 + 24);
      }

      else
      {
LABEL_964:
        v545 = 0;
      }

      v546 = CA::Render::KeyValueArray::get_int_key(v473, 398, 0) != 0;
      if (v546 == (CA::Render::KeyValueArray::get_int_key(v1118, 398, 0) == 0) || v524 == 0)
      {
LABEL_2029:
        v418 = v1131.f64[0];
LABEL_2030:
        v458 = v1125;
        v468 = v1117;
        break;
      }

      v418 = v1131.f64[0];
      if (*(v524 + 12) != 62 || !v545 || *(v545 + 12) != 62 || *(v524 + 16) != 20 || *(v545 + 16) != 20 || memcmp((v524 + 24), (v545 + 24), 0xA0uLL))
      {
        goto LABEL_2030;
      }

      v458 = v1125;
      v468 = v1117;
    }

LABEL_932:
    v467 = (v467 + 1);
    if (v467 == v466)
    {
      v467 = v466;
      break;
    }
  }

  _CF = BYTE14(xmmword_1ED4E982C) != 1 || v467 >= v466;
  if (!_CF)
  {
    v1092 = *(v468 + 8 * v467);
    v1093 = *&(*v462)[2 * v467 + 6];
    memset(v1180, 0, 24);
    X::Stream::printf(v1180, "\nFilter A:");
    X::Stream::printf(v1180, "\n%*s", 2, "");
    (*(*v1092 + 40))(v1092, v1180, 1, 0);
    X::Stream::printf(v1180, "\nFilter B:");
    X::Stream::printf(v1180, "\n%*s", 2, "");
    (*(*v1093 + 40))(v1093, v1180, 1, 0);
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v1094 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v1099 = x_stream_get(v1180);
      LODWORD(v1174.f64[0]) = 136315138;
      *(v1174.f64 + 4) = v1099;
      _os_log_error_impl(&dword_183AA6000, v1094, OS_LOG_TYPE_ERROR, "Filter merging failed:%s", &v1174, 0xCu);
    }

    if (v1180[0].i64[0])
    {
      free(v1180[0].i64[0]);
    }

    v418 = v1131.f64[0];
    v451 = v1121.f64[0];
    v458 = v1125;
  }

  v463 = *v462;
  if (!v467)
  {
    v452 = v1122.f64[0];
    if (!v463)
    {
      goto LABEL_1059;
    }

    goto LABEL_2040;
  }

  v1071 = v463[4];
  if (v467 == v1071)
  {
    v452 = v1122.f64[0];
    goto LABEL_1059;
  }

  if (v1071 >= v467)
  {
    v1072 = CA::Render::Array::new_array(v467, v463 + 6, 1, v463[3] >> 8);
    v458 = v1125;
    v1073 = v1072;
    v463 = *v462;
    *v462 = v1073;
    v452 = v1122.f64[0];
    if (v463)
    {
      goto LABEL_2046;
    }
  }

  else
  {
    *v462 = 0;
    v452 = v1122.f64[0];
LABEL_2046:
    if (atomic_fetch_add(v463 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v463 + 16))(v463);
      v458 = v1125;
    }
  }

LABEL_1059:
  v576 = *(v419 + 72);
  v575 = *(v419 + 80);
  v577 = v575 - v576;
  _ZF = v575 == v576;
  v578 = 0xAAAAAAAAAAAAAAABLL * ((v575 - v576) >> 6);
  if (_ZF)
  {
LABEL_1067:
    X::small_vector_base<CA::Render::BackdropGroup::Item>::resize(v419 + 72, v578 + 1);
    v580 = *(v419 + 72);
    if (*(v419 + 80) - v580 <= v577)
    {
      __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
    }

    v576 = v580 + v577;
    *v576 = *(*&v418 + 24);
    v469 = *(*&v418 + 32);
    *(v576 + 8) = v469;
    *(v419 + 12) |= 0x400u;
    v458 = v1125;
  }

  else
  {
    if (v578 <= 1)
    {
      v579 = 1;
    }

    else
    {
      v579 = v578;
    }

    while (*v576 != *(*&v418 + 24) || *(*&v418 + 32) != *(v576 + 8) || *(v576 + 16) != *(*&v418 + 40))
    {
      v576 += 192;
      if (!--v579)
      {
        goto LABEL_1067;
      }
    }
  }

  v581 = *(*(*&v451 + 32) + 136);
  if (v581)
  {
    v582 = *(*&v452 + 12);
    if ((v582 & 0x200) != 0)
    {
      v584 = *(v581 + 96);
      if (v584 && (v585 = *(v584 + 16), v585))
      {
        v586 = v584 + 24;
        v587 = 8 * v585 - 8;
        do
        {
          if ((*(*v586 + 12) & 0x40100) == 0x100)
          {
            v588 = CAAtomIndexInArray(25, CA::Render::Filter::is_one_to_one(void)const::atoms, *(*v586 + 24));
            v458 = v1125;
            v583 = v588 != -1;
          }

          else
          {
            v583 = 1;
          }

          if (!v583)
          {
            break;
          }

          v586 += 8;
          v589 = v587;
          v587 -= 8;
        }

        while (v589);
        v418 = v1131.f64[0];
        v451 = v1121.f64[0];
      }

      else
      {
        LOBYTE(v583) = 1;
      }
    }

    else
    {
      LOBYTE(v583) = 0;
    }
  }

  else
  {
    v582 = *(*&v452 + 12);
    v583 = (v582 >> 9) & 1;
  }

  *(v419 + 689) |= (v582 & 0x400) >> 10;
  v296 = v1144;
  if ((*(*&v452 + 13) & 0x40) == 0)
  {
    goto LABEL_1104;
  }

  LOBYTE(v583) = 0;
  if (v451 == 0.0 || *(v419 + 632))
  {
    goto LABEL_1104;
  }

  v590 = v451;
  while (2)
  {
    v591 = *(*(*&v590 + 32) + 136);
    if (!v591)
    {
      *(v419 + 632) = 0;
LABEL_1091:
      v590 = *(*&v590 + 88);
      if (v590 == 0.0)
      {
        LOBYTE(v583) = 0;
        goto LABEL_1104;
      }

      continue;
    }

    break;
  }

  v592 = *(v591 + 112);
  *(v419 + 632) = v592;
  if (!v592)
  {
    goto LABEL_1091;
  }

  v593 = (v592 + 8);
  if (!atomic_fetch_add(v593, 1u))
  {
    atomic_fetch_add(v593, 0xFFFFFFFF);
  }

  v594 = *(*&v590 + 32);
  *(v419 + 640) = *(v594 + 72);
  v595 = *(v594 + 88);
  *(v419 + 656) = v595;
  v596 = *(v594 + 136);
  if (v596)
  {
    LODWORD(v595) = *(v596 + 308);
  }

  else
  {
    LOBYTE(v595) = *(v594 + 39);
    *&v595 = v595;
  }

  *v469.i64 = CA::BoundsImpl::scale((v419 + 640), *&v595, *&v595);
  LOBYTE(v583) = 0;
  v458 = v1125;
LABEL_1104:
  *(v576 + 24) = v451;
  if (SLODWORD(v458.f64[1]) <= SHIDWORD(v458.f64[1]))
  {
    v597 = HIDWORD(v458.f64[1]);
  }

  else
  {
    v597 = LODWORD(v458.f64[1]);
  }

  v469.i32[0] = 1073741822;
  v450.i32[0] = v597;
  *(v576 + 184) = v1140.n128_u32[0];
  v598.i64[0] = SLODWORD(v458.f64[0]);
  v598.i64[1] = SHIDWORD(v458.f64[0]);
  v599 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v450, v469), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v598));
  v600 = SLODWORD(v458.f64[1]);
  v601 = SHIDWORD(v458.f64[1]);
  v602 = v1119;
  *(v576 + 64) = v1120;
  *(v576 + 80) = v602;
  if (v597 > 1073741822)
  {
    v600 = 1.79769313e308;
    v601 = 1.79769313e308;
  }

  *(v576 + 96) = v599;
  *(v576 + 112) = v600;
  *(v576 + 120) = v601;
  if ((*(*&v452 + 12) & 0x1400) == 0x1000)
  {
    *(v576 + 32) = 0u;
    *(v576 + 48) = 0u;
  }

  else
  {
    (*(**&v452 + 184))(COERCE_FLOAT64_T(*&v452), *(*&v451 + 32), v576 + 32, 0);
  }

  v603 = *(*&v451 + 32);
  v604 = *(v603 + 16);
  *(v576 + 176) = *(v603 + 32);
  *(v576 + 160) = v604;
  *(v576 + 180) = v583;
  v605 = *(*&v451 + 32);
  v606 = *(v605 + 136);
  if (v606)
  {
    v607 = *(v606 + 96);
    if (v607)
    {
      v608 = *(v607 + 16);
      if (v608)
      {
        v609 = 8 * v608;
        v610 = v607 + 24;
        do
        {
          if (*(*v610 + 24) == 283)
          {
            v611 = *(*v610 + 40);
            glass_filter_shadow_blur_radius = CA::Render::get_glass_filter_shadow_blur_radius(v611, v448);
            glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v611, v613);
            v615 = CA::Render::KeyValueArray::get_float_key(v611, 356, 30.0);
            v616 = *(v419 + 680);
            if (v616 < glass_filter_shadow_blur_radius)
            {
              v616 = glass_filter_shadow_blur_radius;
            }

            if (v616 < glass_filter_bleed_blur_radius)
            {
              v616 = glass_filter_bleed_blur_radius;
            }

            if (v616 < v615)
            {
              v616 = v615;
            }

            *(v419 + 680) = v616;
            if (CA::Render::KeyValueArray::get_float_key(v611, 428, 1.0) <= 0.0 && CA::Render::KeyValueArray::get_float_key(v611, 343, 1.0) <= 0.0 && CA::Render::KeyValueArray::get_float_key(v611, 351, 1.0) == 1.0 && CA::Render::KeyValueArray::get_float_key(v611, 353, 0.1) == 1.0 && CA::Render::KeyValueArray::get_float_key(v611, 354, 0.1) == 1.0 && CA::Render::KeyValueArray::get_float_key(v611, 355, 0.4) == 1.0)
            {
              *(v419 + 684) = 1;
            }

            else
            {
              v617 = *(v419 + 676);
              if (v617 > glass_filter_shadow_blur_radius)
              {
                v617 = glass_filter_shadow_blur_radius;
              }

              if (v617 <= glass_filter_bleed_blur_radius)
              {
                v618 = v617;
              }

              else
              {
                v618 = glass_filter_bleed_blur_radius;
              }

              *(v419 + 676) = v618;
              v619 = CA::Render::KeyValueArray::get_float_key(v611, 354, 0.4);
              if (v618 <= v619)
              {
                v615 = v618;
              }

              else
              {
                v615 = v619;
              }
            }

            *(v419 + 676) = v615;
            v418 = v1131.f64[0];
            v620 = *(*&v1131.f64[0] + 56);
            if (*(v620 + 60) != v1140.n128_u32[0])
            {
              *(v620 + 60) = v1140.n128_u32[0];
              ++*(v1123 + 202);
            }
          }

          v610 += 8;
          v609 -= 8;
        }

        while (v609);
      }
    }
  }

  v7 = v1138;
  v373 = v1142.f64[0];
  if (*(v605 + 72) == *(v576 + 64) && *(v605 + 80) == *(v576 + 72) && *(v605 + 88) == *(v576 + 80) && *(v605 + 96) == *(v576 + 88))
  {
    if (BYTE11(xmmword_1ED4E97DC) == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v1090 = x_log_get_render(void)::log;
      v1091 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
      v296 = v1144;
      v7 = v1138;
      v373 = v1142.f64[0];
      if (v1091)
      {
        v1180[0].i16[0] = 0;
        _os_log_impl(&dword_183AA6000, v1090, OS_LOG_TYPE_DEFAULT, "Filter merging aborted: layer.bounds == blur.inputBounds\n", v1180, 2u);
      }
    }

    v621 = *(v419 + 624);
    v418 = v1131.f64[0];
    if (v621)
    {
      if (atomic_fetch_add(v621 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v621 + 16))(v621);
      }

      *(v419 + 624) = 0;
    }
  }

LABEL_1151:
  if ((*(*v296 + 1377) & 8) != 0)
  {
    v622 = *(v419 + 48);
    if (v622)
    {
      v1169.i64[1] |= *(v622 + 16) << 47;
    }
  }

  v623 = v1145.i32[0];
  v276 = v1141.f64[0];
  LOBYTE(v417) = LOBYTE(v1124.f64[0]);
  if (*(*&v418 + 64) == v1145.i64[0] && (v624 = *(*&v418 + 72), *(*&v418 + 72) == v1145.i64[1]))
  {
    if ((LOBYTE(v1124.f64[0]) & 1) == 0 && (v1169.i8[3] & 0x10) != 0)
    {
      *(v419 + 12) |= 0x400u;
    }
  }

  else
  {
    v625 = *(v1168 + 136);
    if (v625)
    {
      v626 = *v625;
      if (*v625)
      {
        memset(v1180, 0, 32);
        (*(*v626 + 184))(v626);
        *&v1174.f64[0] = &unk_1EF1FBD80;
        *&v1174.f64[1] = 1;
        *&v1175.f64[0] = v1180;
        CA::Render::LayerNode::MapGeometry::map(&v1174, *&v373, 0);
        v627 = vceqzq_f64(v1180[1]);
        if ((vorrq_s8(vdupq_laneq_s64(v627, 1), v627).u64[0] & 0x8000000000000000) != 0)
        {
          v630 = 0uLL;
        }

        else
        {
          v628 = vceqq_f64(v1180[1], v1180[1]);
          v629 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v628), 1), v628).u64[0];
          v630 = 0uLL;
          if ((v629 & 0x8000000000000000) == 0)
          {
            v631 = vcvtmq_s64_f64(vmaxnmq_f64(v1180[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
            v630 = vuzp1q_s32(v631, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1180[0], v1180[1]), vdupq_n_s64(0x41C0000000000000uLL))), v631));
          }
        }

        *(*&v418 + 80) = v630;
        v623 = v1145.i32[0];
        LOBYTE(v417) = LOBYTE(v1124.f64[0]);
      }
    }

    v632 = v1145.i32[1];
    *(*&v418 + 64) = v623;
    *(*&v418 + 68) = v632;
    v633 = v1145.i32[2];
    *(*&v418 + 72) = v1145.i64[1];
    *(v419 + 12) |= 0x400u;
    *(v296 + 50) = 1;
    v624 = v633;
  }

  v634 = v1145.i32[3];
  if (v624 < v1145.i32[3])
  {
    v634 = v624;
  }

  *(*&v418 + 153) = v634 < 1;
  os_unfair_lock_unlock((v419 + 40));
  os_unfair_lock_unlock((*&v418 + 52));
  v263 = v1139;
LABEL_1170:
  if ((v417 & 1) == 0)
  {
    v635 = v1155;
    v636 = vceqzq_f64(v1155);
    v287 = vorrq_s8(vdupq_laneq_s64(v636, 1), v636);
    v637 = 0uLL;
    if ((v287.n128_u64[0] & 0x8000000000000000) == 0)
    {
      v638 = vceqq_f64(v1155, v1155);
      v287 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v638), 1), v638);
      if ((v287.n128_u64[0] & 0x8000000000000000) == 0)
      {
        v415 = vdupq_n_s64(0x41C0000000000000uLL);
        v287 = vcvtmq_s64_f64(vmaxnmq_f64(v1154, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v635 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1154, v1155), v415)), v287);
        v637 = vuzp1q_s32(v287, v635);
      }
    }

    if ((*(*&v276 + 13) & 4) != 0)
    {
      v1140 = v637;
      if (v1145.i32[2] <= v1145.i32[3])
      {
        v1057 = v1145.i32[3];
      }

      else
      {
        v1057 = v1145.i32[2];
      }

      v635.i32[0] = 1073741822;
      v287.n128_u32[0] = v1057;
      v1058.i64[0] = v1145.i32[0];
      v1058.i64[1] = v1145.i32[1];
      v1059 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v287, v635), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v1058));
      v1060 = v1145.i32[2];
      v1061 = v1145.i32[3];
      if (v1057 > 1073741822)
      {
        v1060 = 1.79769313e308;
        v1061 = 1.79769313e308;
      }

      v1174 = v1059;
      v1175.f64[0] = v1060;
      v1175.f64[1] = v1061;
      v1062 = *(*&v276 + 88);
      v1063 = *(*&v276 + 96);
      if (v1062 >= v1063)
      {
        v1064 = *(*&v276 + 96);
      }

      else
      {
        v1064 = *(*&v276 + 88);
      }

      if (v1064 > 0.0)
      {
        v1180[0] = *(*&v1141.f64[0] + 72);
        *v1180[1].i64 = v1062;
        *&v1180[1].i64[1] = v1063;
        CA::Rect::apply_transform(v1180[0].i64, v1143 + 8);
        CA::BoundsImpl::intersect(&v1174, v1180[0], v1180[1]);
        v1059 = v1174;
      }

      memset(buf, 0, sizeof(buf));
      CA::Bounds::set_exterior(buf, v232, v1059, v1175);
      CA::BoundsImpl::intersect(&v1145, v1140.n128_u64[0], *&vextq_s8(v1140, v1140, 8uLL));
      v1066 = *&buf[8];
      v1065 = *&buf[12];
      v287.n128_f64[0] = (*&buf[12] * *&buf[8]) * 0.9;
      if (v287.n128_f64[0] >= (v1145.i32[3] * v1145.i32[2]))
      {
        if (BYTE4(xmmword_1ED4E982C) == 1)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1100 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
          {
            v1101 = v1139;
            if (v1139)
            {
              v1101 = v1139[11].i32[1];
            }

            v1180[0].i32[0] = 67112192;
            v1180[0].i32[1] = v1101;
            v1180[0].i16[4] = 1024;
            *(&v1180[0].i32[2] + 2) = *buf;
            v1180[0].i16[7] = 1024;
            v1180[1].i32[0] = *&buf[4];
            v1180[1].i16[2] = 1024;
            *(&v1180[1].i32[1] + 2) = v1066;
            v1180[1].i16[5] = 1024;
            v1180[1].i32[3] = v1065;
            v1180[2].i16[0] = 1024;
            *(v1180[2].i32 + 2) = v1145.i32[0];
            v1180[2].i16[3] = 1024;
            v1180[2].i32[2] = v1145.i32[1];
            v1180[2].i16[6] = 1024;
            *(&v1180[2].i32[3] + 2) = v1145.i32[2];
            v1180[3].i16[1] = 1024;
            v1180[3].i32[1] = v1145.i32[3];
            v1180[3].i16[4] = 1024;
            *(&v1180[3].i32[2] + 2) = v1140.n128_u32[0];
            v1180[3].i16[7] = 1024;
            v1180[4].i32[0] = v1140.n128_i32[1];
            v1180[4].i16[2] = 1024;
            *(&v1180[4].i32[1] + 2) = v1140.n128_i32[2];
            v1180[4].i16[5] = 1024;
            v1180[4].i32[3] = v1140.n128_i32[3];
            _os_log_impl(&dword_183AA6000, v1100, OS_LOG_TYPE_INFO, "Slot <%d> [%d %d %d %d] clipped to[%d %d %d %d] by [%d %d %d %d]", v1180, 0x50u);
          }
        }

        *(*&v1142.f64[0] + 24) |= 0x40000uLL;
      }

      v296 = v1144;
      v7 = v1138;
      v263 = v1139;
      v373 = v1142.f64[0];
      v276 = v1141.f64[0];
    }

    else
    {
      v639 = vclez_s32(v1145.u64[1]);
      v287.n128_u64[0] = vpmax_u32(v639, v639);
      if ((v287.n128_u32[0] & 0x80000000) == 0)
      {
        v287 = vextq_s8(v637, v637, 8uLL);
        v640 = vclez_s32(v287.n128_u64[0]);
        if ((vpmax_u32(v640, v640).u32[0] & 0x80000000) != 0 || (*&v415.f64[0] = vadd_s32(*v1145.i8, v1145.u64[1]), *v641.i8 = vmax_s32(*v1145.i8, *v637.i8), v287.n128_u64[0] = vsub_s32(vmin_s32(*&v415.f64[0], vadd_s32(*v637.i8, v287.n128_u64[0])), *v641.i8), v642 = vclez_s32(v287.n128_u64[0]), (vpmax_u32(v642, v642).u32[0] & 0x80000000) != 0))
        {
          v1145.i64[1] = 0;
        }

        else
        {
          v641.i64[1] = v287.n128_u64[0];
          v1145 = v641;
        }
      }
    }
  }

  if (v1134.i32[0])
  {
    v287.n128_u64[1] = v1147.u64[1];
    v1180[0] = v1146;
    v1180[1] = v1147;
    v1031 = *(*&v276 + 88);
    v287.n128_u64[0] = *(*&v276 + 96);
    if (v1031 >= v287.n128_f64[0])
    {
      v1032 = *(*&v276 + 96);
    }

    else
    {
      v1032 = *(*&v276 + 88);
    }

    if (v1032 > 0.0)
    {
      v1174 = *(*&v276 + 72);
      v1175.f64[0] = v1031;
      *&v1175.f64[1] = v287.n128_u64[0];
      CA::Rect::apply_transform(v1174.f64, v1143 + 8);
      CA::BoundsImpl::intersect(v1180, v1174, v1175);
    }

    v1033 = *v296;
    if (*(*v296 + 216) || *(v1033 + 55) || *(v1033 + 56) || *(v1033 + 57))
    {
      v1034 = v1033[27];
      v287.n128_u64[0] = v1033[28];
      v1035 = v287.n128_i32[1];
      v1036.i64[0] = v1034;
      v1036.i64[1] = SHIDWORD(v1034);
      v1037 = v1036;
      v1036.i64[0] = v287.n128_i32[0];
      v1036.i64[1] = v287.n128_i32[1];
      v1038 = v1036;
      if (v287.n128_i32[0] > v287.n128_i32[1])
      {
        v1035 = v1033[28];
      }

      v287.n128_u32[0] = v1035;
      LODWORD(v415.f64[0]) = 1073741822;
      v1140 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v1039 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v287, v415), 0), v1140, vcvtq_f64_s64(v1037));
      v1040 = vcvtq_f64_s64(v1038);
      v1041 = vdup_n_s32(v1035 > 1073741822);
      v1042.i64[0] = v1041.u32[0];
      v1042.i64[1] = v1041.u32[1];
      v1134 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      if (CA::BoundsImpl::contains(v1039, vbslq_s8(vcltzq_s64(vshlq_n_s64(v1042, 0x3FuLL)), v1134, v1040), v1180[0], v1180[1]))
      {
        v1044 = v1033[25];
        v287.n128_u64[0] = v1033[26];
        v1045.i64[0] = v1044;
        v1045.i64[1] = SHIDWORD(v1044);
        v1046 = vcvtq_f64_s64(v1045);
        v1047 = v287.n128_i32[1];
        v1045.i64[0] = v287.n128_i32[0];
        v1045.i64[1] = v287.n128_i32[1];
        v1048 = v1045;
        if (v287.n128_i32[0] > v287.n128_i32[1])
        {
          v1047 = v1033[26];
        }

        v287.n128_u32[0] = v1047;
        v1043.i32[0] = 1073741822;
        v1049 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v287, v1043), 0), v1140, v1046);
        v1050 = vcvtq_f64_s64(v1048);
        v1051 = vdup_n_s32(v1047 > 1073741822);
        v1052.i64[0] = v1051.u32[0];
        v1052.i64[1] = v1051.u32[1];
        CA::BoundsImpl::intersect(v1180, v1049, vbslq_s8(vcltzq_s64(vshlq_n_s64(v1052, 0x3FuLL)), v1134, v1050));
      }
    }

    v287.n128_f64[0] = *&v1180[1].i64[1] * *v1180[1].i64;
    v1053 = (v1145.i32[3] * v1145.i32[2]) / (*&v1180[1].i64[1] * *v1180[1].i64);
    v373 = v1142.f64[0];
    v1054 = *(*&v1142.f64[0] + 24);
    v287.n128_u32[0] = 1.0;
    if (v1053 < 1.0)
    {
      v1054 |= 0x40000uLL;
      v1055 = 1.0 - v1053;
      if (v1055 > 1.0)
      {
        v1055 = 1.0;
      }

      v287.n128_u64[0] = 0;
      if (v1055 < 0.0)
      {
        v1055 = 0.0;
      }

      *(*&v1142.f64[0] + 20) = v1055;
    }

    *(*&v373 + 24) = v1054 | 0x4000000000;
    v296 = v1144;
    v7 = v1138;
    v263 = v1139;
    v276 = v1141.f64[0];
  }

  v643 = *(v1143 + 48);
  if ((!v643 || (*(v643 + 24) & 0x2000000020) == 0) && (v1172 & 0x10) == 0 && (v1169.i8[13] & 0x40) == 0 && (*(v1143 + 77) & 0x40) == 0 && !(v1172 & 0x200 | *(*&v276 + 13) & 4) && (*(*v296 + 1380) & 0x80) == 0)
  {
    v644 = *(v7 + 7);
    if (v644)
    {
      if (CA::Shape::intersects(v644, &v1145))
      {
        CA::Bounds::subtract_exterior(v1145.i32, *(v7 + 7));
        v1169.i64[1] |= 0x40uLL;
      }
    }
  }

  if (v263)
  {
    CA::BoundsImpl::Union(v263 + 15, *v1145.i8, v1145.u64[1]);
  }

  v645 = v1145;
  *(*&v373 + 176) = v1145;
  if ((v1169.i8[3] & 0x10) != 0)
  {
    if ((v1172 & 8) != 0)
    {
      *(v1143 + 64) |= 2uLL;
    }

    CA::Render::Update::invalidate_backdrops(*v296, &v1145, *(*&v1167 + 256), v1128.u32[0]);
    *&v289.f64[0] = v1145.i64[1];
  }

  else
  {
    v289 = vextq_s8(v645, v645, 8uLL);
  }

  v646 = LODWORD(v289.f64[0]);
  if (SLODWORD(v289.f64[0]) >= SHIDWORD(v289.f64[0]))
  {
    v646 = HIDWORD(v289.f64[0]);
  }

  if (v646 >= 1)
  {
    v647 = *v296;
    goto LABEL_1204;
  }

  v647 = *v296;
  if ((v1172 & 4) != 0)
  {
LABEL_1204:
    if ((v647[172] & 1) == 0 && (*(*&v276 + 42) & 0x10) != 0)
    {
      *(*&v1167 + 24) |= 8uLL;
      v1172 |= 2u;
    }
  }

  else
  {
    *(*&v1167 + 24) |= 0x10uLL;
  }

  v648 = v1126.i8[0] ^ 1;
  if (!v263)
  {
    v648 = 1;
  }

  if ((v648 & 1) == 0)
  {
    LODWORD(v289.f64[0]) = *(v647 + 86);
    v289.f64[0] = *&v289.f64[0];
    v287 = vmulq_laneq_f64(v1127, v1127, 1);
    if (v287.n128_f64[0] >= v289.f64[0])
    {
      v289.f64[0] = v287.n128_f64[0];
    }

    *v289.f64 = v289.f64[0];
    *(v647 + 86) = *v289.f64;
  }

  v649 = v647[172];
  if ((v649 & 0x800000) == 0)
  {
    goto LABEL_1282;
  }

  v650 = *(*&v276 + 136);
  if (!v650)
  {
    goto LABEL_1226;
  }

  v651 = *(v650 + 88);
  if (v651)
  {
    v652 = *(v651 + 24);
    if ((v652 - 564) < 3 || v652 == 486 || v652 == 749)
    {
      goto LABEL_1281;
    }
  }

  v653 = *(v650 + 96);
  if (!v653 || (v654 = *(v653 + 16), !v654))
  {
LABEL_1226:
    if ((*(*&v276 + 50) & 2) != 0)
    {
      v665 = *(*&v276 + 16);
      if (v665 < 0.0 || v665 > 1.0)
      {
        goto LABEL_1281;
      }

      v667 = *(*&v276 + 20);
      if (v667 < 0.0 || v667 > 1.0)
      {
        goto LABEL_1281;
      }

      v669 = *(*&v276 + 24);
      v287.n128_u32[0] = 1.0;
      if (v669 < 0.0 || v669 > 1.0)
      {
        goto LABEL_1281;
      }

      LODWORD(v289.f64[0]) = *(*&v276 + 28);
      if (*v289.f64 < 0.0 || *v289.f64 > 1.0)
      {
        goto LABEL_1281;
      }
    }

    if (v650)
    {
      if (*(v650 + 240) > 0.0)
      {
        v658 = *(v650 + 244);
        v287.n128_u32[0] = 1.0;
        if (v658 < 0.0 || v658 > 1.0)
        {
          goto LABEL_1281;
        }

        v660 = *(v650 + 248);
        if (v660 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v660 > 1.0)
        {
          goto LABEL_1281;
        }

        v661 = *(v650 + 252);
        if (v661 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v661 > 1.0)
        {
          goto LABEL_1281;
        }

        v662 = *(v650 + 256);
        if (v662 < 0.0 || v662 > 1.0)
        {
          goto LABEL_1281;
        }
      }

      if (!*(*&v276 + 37))
      {
        goto LABEL_1271;
      }

      v664 = *(v650 + 200);
      v663 = *(v650 + 204);
      v287.n128_u32[0] = *(v650 + 208);
      LODWORD(v289.f64[0]) = *(v650 + 212);
    }

    else
    {
      if (!*(*&v276 + 37))
      {
        goto LABEL_1282;
      }

      v287.n128_u64[0] = 0;
      LODWORD(v289.f64[0]) = 1.0;
      v663 = 0.0;
      v664 = 0.0;
    }

    if (v664 < 0.0)
    {
      goto LABEL_1281;
    }

    if (v664 > 1.0)
    {
      goto LABEL_1281;
    }

    if (v663 < 0.0)
    {
      goto LABEL_1281;
    }

    if (v663 > 1.0)
    {
      goto LABEL_1281;
    }

    if (v287.n128_f32[0] < 0.0)
    {
      goto LABEL_1281;
    }

    if (v287.n128_f32[0] > 1.0)
    {
      goto LABEL_1281;
    }

    if (*v289.f64 < 0.0)
    {
      goto LABEL_1281;
    }

    v287.n128_u32[0] = 1.0;
    if (*v289.f64 > 1.0)
    {
      goto LABEL_1281;
    }

    if (!v650)
    {
      goto LABEL_1282;
    }

LABEL_1271:
    LODWORD(v289.f64[0]) = *(v650 + 320);
    if (*v289.f64 != 0.0)
    {
      LODWORD(v289.f64[0]) = *(v650 + 344);
      if (*v289.f64 > 0.0)
      {
        v671 = *(v650 + 324);
        if (v671 < 0.0)
        {
          goto LABEL_1281;
        }

        v287.n128_u32[0] = 1.0;
        if (v671 > 1.0)
        {
          goto LABEL_1281;
        }

        v672 = *(v650 + 328);
        if (v672 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v672 > 1.0)
        {
          goto LABEL_1281;
        }

        v673 = *(v650 + 332);
        if (v673 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v673 > 1.0)
        {
          goto LABEL_1281;
        }

        LODWORD(v289.f64[0]) = *(v650 + 336);
        if (*v289.f64 < 0.0 || *v289.f64 > 1.0)
        {
          goto LABEL_1281;
        }
      }
    }

    goto LABEL_1282;
  }

  v655 = v653 + 8 * v654 + 24;
  v656 = v653 + 24;
LABEL_1222:
  v657 = 0;
  while (*(*v656 + 24) != CA::Render::Updater::layer_may_leave_P3(CA::Render::Layer const*)::atoms[v657])
  {
    if (++v657 == 9)
    {
      v656 += 8;
      if (v656 != v655)
      {
        goto LABEL_1222;
      }

      goto LABEL_1226;
    }
  }

LABEL_1281:
  v1169.i64[1] |= 0x100000000uLL;
  CA::shape_union(v647 + 6, &v1145, v371);
  v647 = *v296;
  v649 = *(*v296 + 1376);
LABEL_1282:
  if ((v649 & 0x1000000) != 0 && (*(*&v276 + 50) & 0x20) != 0)
  {
    v1169.i64[1] |= 4uLL;
    CA::shape_union(v647 + 7, &v1145, v371);
  }

LABEL_1285:
  v674 = v1172;
  if ((v1172 & 4) != 0)
  {
    *(*&v373 + 24) |= 0x80000uLL;
  }

  v675 = *v296;
  v676 = *&v1167;
  *(*&v1167 + 112) = *(*v296 + 552);
  if (*&v676[32] && (v676[3].i8[0] & 0x10) == 0)
  {
    v677 = v1163;
    v678 = (v675 + 68);
    v679 = v675 + 68;
    while (1)
    {
      v679 = *v679;
      if (!v679)
      {
        break;
      }

      if (v679[1] == v676)
      {
        goto LABEL_1336;
      }
    }

    v680 = *(*&v676[4] + 136);
    if (v680 && (v681 = *v680) != 0)
    {
      if (*(v681 + 12) == 3)
      {
        v682 = v681;
      }

      else
      {
        v682 = 0;
      }
    }

    else
    {
      v682 = 0;
    }

    v683 = x_heap_malloc_small_(*v675, 0x78uLL);
    v685 = v683;
    if (v683)
    {
      *v683 = 0;
      atomic_fetch_add(&v676[2], 1u);
      *(v683 + 8) = v676;
      *(v683 + 88) = 0;
      *(v683 + 32) = 0;
      *(v683 + 40) = 0;
      *(v683 + 24) = 0;
      *(v683 + 104) |= 0x10000000u;
    }

    v686 = *(v675 + 138) + 1;
    *(v675 + 138) = v686;
    v687 = *(v683 + 104) & 0xF8000000 | v686 & 0x7FFFFFF;
    *(v683 + 104) = v687;
    *(v683 + 108) = *(v682 + 40);
    v688 = v687 & 0xF7FFFFFF | (((*(v682 + 12) >> 12) & 1) << 27);
    *(v683 + 104) = v688;
    *(v683 + 104) = v688 & 0xCFFFFFFF | (((*(v682 + 12) >> 8) & 1) << 28);
    *(v683 + 96) = *(v682 + 48);
    *(v683 + 112) = *(v682 + 88);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E9788 != 0.0)
    {
      *(v685 + 112) = dword_1ED4E9788;
    }

    if ((*(v675 + 1382) & 0x80) != 0)
    {
      v689 = -0.0005;
    }

    else
    {
      v689 = *(v685 + 112) + -0.0005;
    }

    v690 = 0.0;
    v691 = fmax(v689, 0.0);
    *(v685 + 112) = v691;
    v692 = v676[32];
    v693 = *(v675 + 10);
    v694 = *(*&v692 + 128);
    if (v693 >= v694)
    {
      v690 = v693 - v694;
    }

    if (v690 >= v691)
    {
      *(*&v692 + 116) = *(v675 + 68);
    }

    *(v685 + 40) = CA::Shape::ref(v675[70], v684);
    v289 = v1164;
    v287 = v1165;
    *(v685 + 48) = v1164;
    *(v685 + 64) = v287;
    *(v685 + 80) = v1166;
    if (v677)
    {
      v695 = *v675;
      v1180[0].i64[0] = 0;
      v696 = v1180;
      do
      {
        if ((*(v677 + 18) & 1) == 0)
        {
          v697 = (*(*v677 + 2))(v677, v695);
          if (v697)
          {
            v696->i64[0] = v697;
            *(v697 + 8) = 0;
            v696 = (v697 + 8);
          }
        }

        v677 = v677[1];
      }

      while (v677);
      *(v685 + 88) = v1180[0].i64[0];
    }

    ++v676[14].i32[0];
    v698 = *(*&v676[32] + 56);
    v699 = (v675 + 73);
    do
    {
      v699 = *v699;
      if (!v699)
      {
        v699 = x_heap_malloc_small_(*v675, 0x30uLL);
        *(v699 + 8) = v698;
        *(v699 + 16) = 0;
        *(v699 + 32) = 0;
        *(v699 + 40) = 0;
        *v699 = v675[73];
        v675[73] = v699;
        goto LABEL_1330;
      }
    }

    while (*(v699 + 8) != v698);
    v700 = *(v699 + 16);
    if (v700)
    {
      CA::Shape::unref(v700);
      *(v699 + 16) = 0;
    }

    v701 = *v678;
    if (*v678)
    {
      do
      {
        if (v701[2] == v699)
        {
          v701[3] = 0;
          v701[4] = 0;
        }

        v701 = *v701;
      }

      while (v701);
    }

LABEL_1330:
    *(v685 + 16) = v699;
    *v685 = *v678;
    *v678 = v685;
    ++*(v699 + 40);
    v702 = v676;
    if (*(v699 + 32))
    {
      v702 = CA::Render::LayerNode::shared_ancestor(*(v699 + 32), v676);
    }

    *(v699 + 32) = v702;
    v263 = v1139;
    if ((*(v685 + 107) & 0x10) != 0)
    {
      if (*(v698 + 584))
      {
        v703 = v675[79];
        atomic_fetch_add(&v676[2], 1u);
        v675[79] = x_list_prepend(v703, v676);
        v704 = *(v698 + 584);
        if (v704)
        {
          CA::Shape::unref(v704);
          *(v698 + 584) = 0;
        }
      }
    }

LABEL_1336:
    v676 = *&v1167;
    v1169.i64[1] |= 0x400000000004uLL;
    v674 = v1172;
    v296 = v1144;
    v276 = v1141.f64[0];
  }

  if ((v676[3].i8[0] & 0x10) != 0)
  {
    goto LABEL_1356;
  }

  if ((v674 & 0x80) != 0 && (*(*v296 + 1377) & 2) != 0)
  {
    v1182 = 0;
    v1180[0] = xmmword_183E20E00;
    v1180[1] = 0u;
    v1180[2] = xmmword_183E20E60;
    memset(&v1180[3], 0, 32);
    v1180[5] = xmmword_183E20E00;
    v1181[0] = 0u;
    v1181[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1181[2] = _Q0;
    v706 = CA::Transform::concat(v1180, &v1164);
    v707 = v1163;
    if (!v1163)
    {
      goto LABEL_1343;
    }

    do
    {
      (*(*v707 + 7))(v707, v1180, v706);
      v707 = v707[1];
    }

    while (v707);
    v676 = *&v1167;
    if (v1167 == 0.0)
    {
      v709 = 1.0;
    }

    else
    {
LABEL_1343:
      v708 = 255;
      do
      {
        v708 = (v708 + v708 * v676[14].u8[4]) >> 8;
        v676 = v676[11];
      }

      while (v676);
      v709 = v708 * 0.0039216;
    }

    v710 = **(*&v276 + 136);
    if (*(v710 + 12) != 6)
    {
      v710 = 0;
    }

    v711 = *v296;
    v712 = *(v710 + 16);
    v1140 = v1180[0];
    v1134 = v1180[1];
    v1131 = v1180[2];
    v1127 = v1180[4];
    v1128 = v1180[3];
    v1125 = v1181[0];
    v1126 = v1180[5];
    v1124 = v1181[1];
    v713 = x_heap_malloc_small_(*v711, 0xC8uLL);
    *v713 = v711[140];
    if (v712)
    {
      v714 = CFRetain(v712);
    }

    else
    {
      v714 = 0;
    }

    *(v713 + 8) = v714;
    *(v713 + 16) = *(*&v276 + 72);
    v715 = v1140;
    *(v713 + 32) = *(*&v276 + 88);
    *(v713 + 48) = v715;
    v716 = v1131;
    *(v713 + 64) = v1134;
    *(v713 + 80) = v716;
    v717 = v1127;
    *(v713 + 96) = v1128;
    *(v713 + 112) = v717;
    v289 = v1125;
    v287 = v1126;
    *(v713 + 128) = v1126;
    *(v713 + 144) = v289;
    v289.f64[1] = v1124.f64[1];
    *(v713 + 160) = v1124;
    v718 = *(*&v276 + 136);
    LODWORD(v289.f64[0]) = 0;
    if (v718)
    {
      LODWORD(v289.f64[0]) = *(v718 + 232);
    }

    v289.f64[0] = *v289.f64;
    *(v713 + 176) = v289.f64[0];
    *(v713 + 184) = v709;
    LOBYTE(v289.f64[0]) = *(*&v276 + 36);
    v287.n128_u32[0] = 998277249;
    *v289.f64 = LODWORD(v289.f64[0]) * 0.0039216;
    *(v713 + 188) = LODWORD(v289.f64[0]);
    *(v713 + 192) = (*(*&v276 + 40) & 0x300000000) != 0;
    v711[140] = v713;
    v1169.i64[1] |= 4uLL;
    v674 = v1172;
    v296 = v1144;
  }

  if ((v674 & 0x100) == 0)
  {
LABEL_1356:
    v719 = *&v1142.f64[0];
    goto LABEL_1357;
  }

  v719 = *&v1142.f64[0];
  if ((*(*v296 + 1377) & 4) != 0)
  {
    v738 = *&v1167;
    if (v1167 == 0.0)
    {
      v739 = 255;
    }

    else
    {
      v739 = 255;
      do
      {
        v740 = v739 + v739 * v738[14].u8[4];
        v739 = v740 >> 8;
        v738 = v738[11];
      }

      while (v738);
      if (v740 < 0x100)
      {
LABEL_2056:
        v1169.i64[1] |= 4uLL;
        goto LABEL_1357;
      }
    }

    v1182 = 0;
    v1180[0] = xmmword_183E20E00;
    v1180[1] = 0u;
    v1180[2] = xmmword_183E20E60;
    memset(&v1180[3], 0, 32);
    v1180[5] = xmmword_183E20E00;
    v1181[0] = 0u;
    v1181[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1181[2] = _Q0;
    v749 = CA::Transform::concat(v1180, &v1164);
    for (n = v1163; n; n = n[1])
    {
      (*(*n + 7))(n, v1180, v749);
    }

    v751 = *(*&v276 + 88);
    v1157 = *(*&v276 + 72);
    v1158 = v751;
    CA::Rect::apply_transform(&v1157, v1180, v748);
    *&v753.f64[0] = v1157.i64[1];
    *&v752.f64[0] = v1157.i64[0];
    *&v752.f64[1] = v1158.i64[0];
    v754 = vcvt_f32_f64(v752);
    *&v753.f64[1] = v1158.i64[1];
    v755 = vcvt_f32_f64(v753);
    memset(v1179, 0, sizeof(v1179));
    v1177 = 0u;
    v1178 = 0u;
    v1175 = 0u;
    v1176 = 0u;
    v1174 = 0u;
    CA::Mat4Impl::mat4_get_unmatrix(v1180, &v1174, 0);
    v756 = *(*(*&v276 + 136) + 96);
    v757 = 0.0;
    if (v756 && *(v756 + 16))
    {
      v758 = *(v756 + 24);
      if (*(v758 + 24) == 280)
      {
        v757 = CA::Render::KeyValueArray::get_float_key(*(v758 + 40), 400, 0.0);
      }

      else
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v759 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          v1023 = [(__CFString *)CAAtomGetString(*(v758 + 24)) cStringUsingEncoding:4];
          *buf = 136315138;
          *&buf[4] = v1023;
          _os_log_error_impl(&dword_183AA6000, v759, OS_LOG_TYPE_ERROR, "Unsupported filter %s for SIL", buf, 0xCu);
        }
      }
    }

    v760 = **(*&v276 + 136);
    if (*(v760 + 12) != 50)
    {
      v760 = 0;
    }

    v761 = *&v1179[5];
    v762 = v739 * 0.0039216;
    v763 = *(v760 + 20);
    v764 = *(v760 + 16);
    v765 = *(v760 + 24);
    v766 = *v296;
    *v1160 = v1167;
    v767.i64[0] = v754.u32[0];
    v767.i64[1] = v754.u32[1];
    v768 = vorrq_s8(vshll_n_s32(v755, 0x20uLL), v767);
    *(v1160 + 8) = v768;
    *(&v1160[1] + 2) = v761;
    *(&v1160[1] + 3) = v762;
    *v1161 = v757;
    *&v1161[4] = v763;
    *&v1161[8] = v764;
    *&v1161[12] = v765;
    *&v1161[14] = 0;
    v1162 = 0;
    if (COERCE_UNSIGNED_INT(fabs(vaddv_f32(*&v768) + (v761 + v762))) >= 0x7F800000)
    {
      if (CA::Render::Update::add_secure_indicator(CA::Render::Update::SecureIndicator)::once[0] != -1)
      {
        dispatch_once(CA::Render::Update::add_secure_indicator(CA::Render::Update::SecureIndicator)::once, &__block_literal_global_36);
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v1074 = x_log_get_render(void)::log;
      v1075 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      v719 = *&v1142.f64[0];
      if (v1075)
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v1074, OS_LOG_TYPE_ERROR, "SIL being dropped due to non finite property", buf, 2u);
      }
    }

    else
    {
      v1140.n128_u64[0] = (v766 + 141);
      v769 = v766[141];
      v770 = v766[142];
      v1134.i64[0] = v766;
      if (v769 == v770)
      {
        v771 = 0x6DB6DB6DB6DB6DB7 * (v766[143] - v769);
        if (v771 < 4)
        {
          v772 = 2 * v771;
          if (v772 <= 4)
          {
            v773 = 4;
          }

          else
          {
            v773 = v772;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Update::SecureIndicator>>(v773);
        }

        *(v770 + 12) = 0u;
        *(v770 + 13) = 0u;
        *(v770 + 10) = 0u;
        *(v770 + 11) = 0u;
        *(v770 + 8) = 0u;
        *(v770 + 9) = 0u;
        *(v770 + 6) = 0u;
        *(v770 + 7) = 0u;
        *(v770 + 4) = 0u;
        *(v770 + 5) = 0u;
        *(v770 + 2) = 0u;
        *(v770 + 3) = 0u;
        *v770 = 0u;
        *(v770 + 1) = 0u;
        v766[142] = v770 + 28;
        v769 = *v1140.n128_u64[0];
      }

      v774 = 0;
      v775 = 14;
      if (v764 >= 3)
      {
        v776 = 3;
      }

      else
      {
        v775 = 0;
        v776 = v764;
      }

      v777 = CA::WindowServer::SILMgr::indicator_priority::priorities[v776];
      v778 = &v769[v775];
      v779 = (v762 * v762) * *(&v768 + 2);
      v780 = 1;
      v781 = 1;
      while (1)
      {
        v782 = v780;
        v783 = &v778[7 * v774];
        v784 = *(v783 + 10);
        if (v784 >= 3)
        {
          v784 = 3;
        }

        v785 = CA::WindowServer::SILMgr::indicator_priority::priorities[v784];
        if (v777 <= v785)
        {
          v786 = *(v783 + 47);
        }

        else
        {
          v786 = 0;
        }

        if (v786 != 1)
        {
          goto LABEL_1443;
        }

        *buf = vcvtq_s32_f32(*(v783 + 1));
        if (CA::Shape::intersects(v781, buf))
        {
          break;
        }

        if (v777 == v785 && v779 > ((*(v783 + 7) * *(v783 + 7)) * *(v783 + 4)))
        {
          goto LABEL_1445;
        }

        v781 = CA::Shape::Union(v781, buf);
        v780 = 0;
        v774 = 1;
        if ((v782 & 1) == 0)
        {
          v774 = 2;
LABEL_1443:
          v787 = v786 ^ 1;
          goto LABEL_1446;
        }
      }

      *(v783 + 47) = 0;
LABEL_1445:
      v787 = 1;
LABEL_1446:
      v719 = *&v1142.f64[0];
      v788 = v1134.i64[0];
      *buf = vcvtq_s32_f32(*(v1160 + 8));
      v1161[15] = !CA::Shape::intersects(v781, buf);
      CA::Shape::unref(v781);
      v789 = vcvtq_s32_f32(*(v1160 + 8));
      if (CA::Render::Update::under_visible_backdrops(*(v788 + 544), v790, *v789.i8, *&vextq_s8(v789, v789, 8uLL)))
      {
        *(*&v1160[0] + 24) |= 0x200000000uLL;
      }

      if (!v787)
      {
        v1161[14] = 1;
        *(*&v1160[0] + 24) |= 0x200000000uLL;
        v797 = v1140.n128_u64[0];
        std::vector<CA::Render::Update::SecureIndicator>::push_back[abi:nn200100](v1140.n128_i64[0], v1160);
        goto LABEL_1457;
      }

      v791 = &v778[7 * v774];
      if (v774 != 1)
      {
        if (v774)
        {
          *buf = *(v778 + 7);
          v1184 = *(v778 + 9);
          v1185 = *(v778 + 11);
          v1186 = v778[13];
          memmove(&v778[7 * v774 + 7], &v778[7 * v774], 49 - 56 * v774);
          *v791 = *buf;
          *(v791 + 1) = v1184;
          *(v791 + 2) = v1185;
          *(v791 + 48) = v1186;
        }

        else
        {
          v792 = v791[6];
          v794 = *(v791 + 1);
          v793 = *(v791 + 2);
          v795 = *v791;
          v796 = *(v791 + 9);
          *v791 = *(v791 + 7);
          *(v791 + 1) = v796;
          *(v791 + 2) = *(v791 + 11);
          *(v791 + 48) = *(v791 + 104);
          *(v791 + 7) = v795;
          *(v791 + 9) = v794;
          *(v791 + 11) = v793;
          *(v791 + 104) = v792;
        }
      }

      v1185 = *(v791 + 2);
      *buf = *v791;
      v1184 = *(v791 + 1);
      v1186 = v791[6];
      *v791 = v1160[0];
      *(v791 + 1) = v1160[1];
      *(v791 + 2) = *v1161;
      *(v791 + 48) = v1161[16];
      v797 = v1140.n128_u64[0];
      if (HIBYTE(v1185) == 1)
      {
        BYTE14(v1185) = 1;
        *(*buf + 24) |= 0x200000000uLL;
        std::vector<CA::Render::Update::SecureIndicator>::push_back[abi:nn200100](v797, buf);
      }

      if (v1161[14])
      {
LABEL_1457:
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v798 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = *&v1161[8];
          _os_log_impl(&dword_183AA6000, v798, OS_LOG_TYPE_DEFAULT, "Bumped indicator t:%u to GPU render due to missing slot", buf, 8u);
        }
      }

      v799 = 0;
      v800 = 0;
      v287 = xmmword_183E212C0;
      v289 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*(*v797 + 40) == 0)), 0x1FuLL)), xmmword_183E212D0, xmmword_183E212C0);
      *buf = v289;
      do
      {
        v801 = (*v797 + 56 * *&buf[v799]);
        if (v801[47] == 1 && (v801[46] & 1) == 0)
        {
          v802 = MEMORY[0x1EEE910E0] ? SILManagerIndicatorExtent() : 20;
          v800 += v802;
          if (v800 >= 0x101)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v803 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v1173[0].f64[0]) = 0;
              _os_log_impl(&dword_183AA6000, v803, OS_LOG_TYPE_DEFAULT, "Bumped indicator to GPU render due to HW limit reached", v1173, 2u);
            }

            v801[46] = 1;
            v804 = *v801;
            *(v804 + 24) = *(*v801 + 24) | 0x200000000;
            v805 = *(v804 + 40);
            if (v805)
            {
              CA::Render::Handle::set_update_flags(v805, 3);
            }

            v797 = v1140.n128_u64[0];
          }
        }

        v799 += 4;
      }

      while (v799 != 16);
    }

    v674 = v1172;
    v296 = v1144;
    v263 = v1139;
    v276 = v1141.f64[0];
    goto LABEL_2056;
  }

LABEL_1357:
  if ((v674 & 0x200) != 0)
  {
    v1182 = 0;
    v1180[0] = xmmword_183E20E00;
    v1180[1] = 0u;
    v1180[2] = xmmword_183E20E60;
    memset(&v1180[3], 0, 32);
    v1180[5] = xmmword_183E20E00;
    v1181[0] = 0u;
    v1181[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1181[2] = _Q0;
    v289 = CA::Transform::concat(v1180, &v1164);
    for (ii = v1163; ii; ii = ii[1])
    {
      (*(*ii + 7))(ii, v1180, v289);
    }

    if ((byte_1ED4E985B & 1) == 0)
    {
      v722 = *(*&v276 + 136);
      if (v722)
      {
        v723 = *v722;
        if (v723)
        {
          if (*(v723 + 12) == 19 && *(v723 + 16))
          {
            v724 = *v296;
            v725 = x_heap_malloc_small_(**v296, 0xB0uLL);
            *v725 = v724[144];
            v726 = v276;
            if (!atomic_fetch_add((*&v276 + 8), 1u))
            {
              v726 = 0.0;
              atomic_fetch_add((*&v276 + 8), 0xFFFFFFFF);
            }

            *(v725 + 8) = v726;
            v727 = v1180[1];
            v728 = v1180[2];
            v729 = v1180[3];
            *(v725 + 16) = v1180[0];
            *(v725 + 32) = v727;
            *(v725 + 48) = v728;
            *(v725 + 64) = v729;
            v287 = v1180[5];
            v730 = v1181[0];
            v731 = v1181[1];
            *(v725 + 80) = v1180[4];
            *(v725 + 96) = v287;
            *(v725 + 112) = v730;
            *(v725 + 128) = v731;
            v289 = v1181[2];
            *(v725 + 144) = v1181[2];
            *(v725 + 160) = *(v725 + 160) & 0xE0 | v1182 & 0x1F;
            *(v725 + 168) = 0;
            v732 = *(*&v276 + 136);
            if (v732)
            {
              v733 = *v732;
              if (v733)
              {
                if (*(v733 + 12) == 19)
                {
                  *(v725 + 168) = *(v733 + 16) == 2;
                }
              }
            }

            v724[144] = v725;
          }
        }
      }
    }

    v1169.i64[1] |= 4uLL;
  }

  if ((v1169.i8[0] & 2) == 0)
  {
    goto LABEL_1394;
  }

  v734 = *v296;
  if (*(*v296 + 1376))
  {
    goto LABEL_1394;
  }

  if (!v263)
  {
    if ((v1172 & 8) == 0)
    {
      v735 = *(*&v1167 + 24);
      goto LABEL_1389;
    }

LABEL_1393:
    *(v1143 + 64) |= 2uLL;
    goto LABEL_1394;
  }

  *&v263[13] &= ~2uLL;
  if ((v1172 & 8) != 0)
  {
    goto LABEL_1393;
  }

  v735 = *(*&v1167 + 24);
  if ((v735.i8[0] & 0x40) != 0)
  {
    if ((v735.i8[0] & 0x10) == 0 && (*(v1143 + 64) & 2) == 0)
    {
      v736 = *(v296 + 8);
      v737 = v263 + 15;
      goto LABEL_1392;
    }

    goto LABEL_1394;
  }

LABEL_1389:
  if ((v735.i8[0] & 0x10) == 0)
  {
    v1180[0] = v1146;
    v1180[1] = v1147;
    if (CA::BoundsImpl::intersect(v1180, v1154, v1155))
    {
      v1174 = 0uLL;
      CA::Bounds::set_exterior(&v1174, v232, v1180[0], v1180[1]);
      v736 = *(v296 + 8);
      v737 = &v1174;
LABEL_1392:
      CA::Render::Update::invalidate_context(v734, v736, v737, v289, v287);
    }
  }

LABEL_1394:
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr != 1 || (*(v719 + 27) & 2) != 0 || (*(*&v1167 + 24) & 0x10) != 0 || (*(*v296 + 1376) & 4) != 0)
  {
    goto LABEL_1560;
  }

  v741 = *(v1168 + 104);
  if (!v741 || *(v741 + 12) != 25)
  {
    goto LABEL_1559;
  }

  v742 = *(v296 + 9);
  if ((*(*&v276 + 13) & 4) != 0)
  {
    v806 = *(v741 + 464);
    if (v806)
    {
      v744 = CA::Render::Context::context_by_id(v806);
      if (v744)
      {
        goto LABEL_1479;
      }

      v742 = 0;
      goto LABEL_1482;
    }

LABEL_1480:
    v744 = 0;
LABEL_1482:
    v745 = 1;
    goto LABEL_1483;
  }

  v743 = *(*&v276 + 152);
  if (!v743)
  {
    goto LABEL_1480;
  }

  v744 = *(v743 + 24);
  v745 = 1;
  if (!v744)
  {
    goto LABEL_1483;
  }

  v746 = (v744 + 8);
  if (!atomic_fetch_add((v744 + 8), 1u))
  {
    v742 = 0;
    v744 = 0;
    atomic_fetch_add(v746, 0xFFFFFFFF);
    goto LABEL_1483;
  }

LABEL_1479:
  pthread_mutex_lock((v744 + 72));
  v745 = 0;
  v742 = v744;
LABEL_1483:
  if (v1139)
  {
    v807 = v1139[13].u8[1] >> 7;
  }

  else
  {
    v807 = 0;
  }

  v808 = *(v741 + 24);
  if (v808)
  {
    v1182 = 0;
    v1180[0] = xmmword_183E20E00;
    v1180[1] = 0u;
    v1180[2] = xmmword_183E20E60;
    memset(&v1180[3], 0, 32);
    v1180[5] = xmmword_183E20E00;
    v1181[0] = 0u;
    v1181[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1181[2] = _Q0;
    v810 = 1.0;
    if ((HIBYTE(xmmword_1ED4E982C) & 1) == 0 && (*(*v296 + 1378) & 8) != 0 && CA::Render::Layer::append_texture_transform(*&v276, v1180, v808, v741))
    {
      v812 = CA::Transform::concat(v1180, &v1164);
      for (jj = v1163; jj; jj = jj[1])
      {
        (*(*jj + 7))(jj, v1180, v812);
      }

      rotation_flags = CA::Render::Updater::get_rotation_flags(v1180, v811);
      if ((v1182 & 0x10) == 0 && (*(*&v276 + 40) >> 12) - 9 <= 2)
      {
        v810 = *&v1181[2];
      }
    }

    else
    {
      rotation_flags = -1;
    }
  }

  else
  {
    rotation_flags = -1;
    v810 = 1.0;
  }

  if (byte_1ED4E9842)
  {
    v815 = 1;
  }

  else
  {
    v815 = (*(*&v276 + 48) >> 1) & 1;
  }

  v1180[0].i8[0] = 0;
  v816 = CA::Render::ImageQueue::forward_dm(v741, v742, *v296, v810, rotation_flags, v815, v1180, v235);
  if (v1180[0].u8[0] == 1)
  {
    *(v1143 + 64) |= 2uLL;
  }

  v817 = v815 ^ 1;
  v818 = *(*(*(v741 + 16) + 24) + 128);
  if (((v818 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v818 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || v818 == 0xFFF0000000000000 || (v818 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
  {
    if (*(*(*(v741 + 16) + 24) + 128) >= *(*v296 + 80))
    {
      v1169.i64[1] |= 4uLL;
    }

    else
    {
      v817 = 0;
    }
  }

  if (v816 && (*(*&v276 + 44) & 0xC0) != 0)
  {
    if (v817)
    {
      v822 = 0x800000000;
      if (v807)
      {
        v822 = 0x2000000000;
      }

      v1169.i64[1] |= v822;
      *(v296 + 43) = 1;
LABEL_1522:
      v161 = 3.4028e38;
    }

    else if ((v807 & 1) == 0)
    {
      v1169.i64[1] |= 0x4000000000000uLL;
      goto LABEL_1522;
    }

    v1132 |= 0x20u;
  }

  CA::Render::ImageQueue::pse_mitigate(v741, *v296);
  if (CA::Render::ImageQueue::is_protected(v741))
  {
    v823 = *(v741 + 64);
    if (v823 || (v823 = *(v741 + 80)) != 0)
    {
LABEL_1529:
      v824 = (*(*v823 + 256))(v823);
      v1169.i64[1] |= (v824 << 47) & 0x3000000000000 | 0x800000000000;
    }

    else if (*(v741 + 24))
    {
      v823 = *(v741 + 24);
      goto LABEL_1529;
    }
  }

  if ((v745 & 1) == 0)
  {
    pthread_mutex_unlock((v744 + 72));
    if (atomic_fetch_add((v744 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v744 + 16))(v744);
    }
  }

  v825 = *(*&v1142.f64[0] + 48);
  v263 = v1139;
  if (v825)
  {
    if (atomic_fetch_add(v825 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v825 + 16))(v825);
    }

    *(*&v1142.f64[0] + 48) = 0;
  }

  v826 = (*(*v741 + 80))(v741);
  if (v826)
  {
    v827 = v826;
    v828 = v826;
    if (!atomic_fetch_add((v826 + 8), 1u))
    {
      v828 = 0;
      atomic_fetch_add((v826 + 8), 0xFFFFFFFF);
    }

    *(*&v1142.f64[0] + 48) = v828;
    v829 = *v296;
    v830 = BYTE11(xmmword_1ED4E980C);
    v831 = *(*v296 + 447);
    if (((*(*v296 + 445) & 1) != 0 || (BYTE11(xmmword_1ED4E980C) & 1) != 0 || *(*v296 + 447)) && *(v826 + 12) == 57 && *(v741 + 16))
    {
      if ((*(*v296 + 445) & 1) != 0 || *(*v296 + 447))
      {
        v232 = *(v826 + 160);
        if (v232)
        {
          X::CFRef<__CFData const*>::operator=(v829 + 125, v232);
          v1169.i64[1] |= 4uLL;
          v829 = *v296;
        }

        if ((*(v829 + 113) - 3) <= 1)
        {
          *(v829 + 1208) |= *(v827 + 368) & 3;
          v1169.i64[1] |= 4uLL;
          if (v831)
          {
            v232 = *(v827 + 168);
            if (v232)
            {
              X::CFRef<__CFData const*>::operator=((*v296 + 1008), v232);
            }
          }
        }
      }

      if (v830)
      {
        kdebug_trace();
      }
    }
  }

  else
  {
    v832 = *(v741 + 32);
    if (v832)
    {
      v833 = (v832 + 8);
      if (!atomic_fetch_add((v832 + 8), 1u))
      {
        v832 = 0;
        atomic_fetch_add(v833, 0xFFFFFFFF);
      }

      *(*&v1142.f64[0] + 48) = v832;
    }
  }

LABEL_1559:
  v719 = *&v1142.f64[0];
LABEL_1560:
  v834 = v1169.i64[1];
  v835 = *v296;
  if (v263 && (v1169.i64[1] & 0x2000000000) != 0 && CA::Render::Update::under_visible_backdrops(v835[68], v232, v263[15], v263[16]))
  {
    v834 |= 0x800000000uLL;
    v1169.i64[1] = v834;
  }

  if (!CA::Render::Updater::should_track_layer_headroom(*&v1167, v835[70]))
  {
    goto LABEL_1579;
  }

  v838 = *(v719 + 32);
  v839 = *(v838 + 40);
  v840 = 1;
  if ((v839 & 0x800000C000000000) == 0)
  {
    v841 = *(v838 + 152);
    if (!v841 || (*(v841 + 104) & 0x8000000000000000) == 0)
    {
      v840 = 0;
    }
  }

  v842 = *(v838 + 136);
  if (v842)
  {
    v843 = *(v842 + 316);
  }

  else
  {
    v843 = 1.0;
  }

  v844 = *(v1168 + 136);
  if (v844)
  {
    v845 = *v844;
    if (v845)
    {
      if (*(v845 + 12) == 48)
      {
        v840 = 0;
      }
    }
  }

  if (!v840 && v843 <= 1.0)
  {
LABEL_1579:
    v846 = v1138;
    v847 = v1135;
    goto LABEL_1580;
  }

  if (v839 < 0 || v843 > 1.0)
  {
    v834 |= 0x800000000uLL;
    v1169.i64[1] = v834;
    if (!v840)
    {
      goto LABEL_1633;
    }

LABEL_1622:
    if (v842)
    {
      v862 = *(v842 + 276);
      v863 = *(v838 + 104);
      if (!v863)
      {
        goto LABEL_1691;
      }

      v836.n128_u32[0] = *(v842 + 272);
      if (v836.n128_f32[0] > 0.0)
      {
        if (v836.n128_f32[0] >= v862 && v862 >= 1.0)
        {
          v836.n128_u32[0] = *(v842 + 276);
        }

        if (v836.n128_f32[0] <= 1.0)
        {
          goto LABEL_1683;
        }

        goto LABEL_1682;
      }

      if (v863[12] == 25)
      {
        v836.n128_u32[0] = *(v842 + 276);
        if (v862 <= 1.0)
        {
          goto LABEL_1683;
        }

        goto LABEL_1682;
      }
    }

    else
    {
      v863 = *(v838 + 104);
      if (!v863)
      {
        goto LABEL_1692;
      }

      v862 = 0.0;
      if (v863[12] == 25)
      {
        goto LABEL_1692;
      }
    }

    v877 = (*(*v863 + 80))(v863);
    if (v877)
    {
      v836.n128_u32[0] = *(v877 + 64);
      v878 = *(v877 + 88);
      if (v836.n128_f32[0] > 1.0 || v878 > 1.0)
      {
        if (v836.n128_f32[0] <= v878)
        {
          v836.n128_u32[0] = *(v877 + 88);
        }

        if (v836.n128_f32[0] >= v862)
        {
          v880 = v862;
        }

        else
        {
          v880 = v836.n128_f32[0];
        }

        if (v862 != 0.0)
        {
          v836.n128_f32[0] = v880;
        }

        if (v836.n128_f32[0] <= 1.0)
        {
LABEL_1683:
          v881 = 1.0;
          if (v836.n128_f32[0] > 1.0)
          {
            v882 = *(v838 + 136);
            if (v882)
            {
              if (*(v882 + 264) != 0.0)
              {
                goto LABEL_1688;
              }

              v881 = *(v882 + 268);
            }

            v883 = log2f(v836.n128_f32[0]);
            v836.n128_f32[0] = exp2f(v881 * v883);
LABEL_1688:
            if (v161 <= v836.n128_f32[0])
            {
              v161 = v836.n128_f32[0];
            }

LABEL_1695:
            v865 = 1;
LABEL_1696:
            v884 = *(v1168 + 136);
            if (v884)
            {
              v836.n128_u32[0] = v884[85];
              v837.i32[0] = v884[65];
              v885 = v884[54];
              v886 = v884[75];
            }

            else
            {
              v836.n128_u64[0] = 0;
              v837.i64[0] = 0;
              v885 = 0;
              v886 = 0;
            }

            v887 = *(v1168 + 32);
            v1180[0].i64[0] = __PAIR64__(v837.u32[0], v836.n128_u32[0]);
            v1180[0].i64[1] = __PAIR64__(v887, v885);
            v1180[1].i32[0] = v886;
            v888 = 1;
            v889 = v1180;
            do
            {
              if (v836.n128_f32[0] < *&v1180[0].i32[v888])
              {
                v836.n128_u32[0] = v1180[0].u32[v888];
                v889 = &v1180[0].i32[v888];
              }

              ++v888;
            }

            while (v888 != 5);
            if (*v889 > 1.0)
            {
              if (v161 <= *v889)
              {
                v161 = *v889;
              }

              v1169.i64[1] |= 0x800000000uLL;
              v865 = 1;
            }

            goto LABEL_1707;
          }

          goto LABEL_1691;
        }

        v834 = v1169.i64[1];
LABEL_1682:
        v1169.i64[1] = v834 | 0x800000000;
        goto LABEL_1683;
      }
    }

LABEL_1691:
    if (v862 != 0.0)
    {
      if (v161 <= v862)
      {
        v161 = v862;
      }

      goto LABEL_1695;
    }

LABEL_1692:
    v865 = 0;
    goto LABEL_1696;
  }

  if (v840)
  {
    goto LABEL_1622;
  }

LABEL_1633:
  v865 = 0;
LABEL_1707:
  if (v843 > 1.0)
  {
    v1056 = *(v719 + 276);
    if (v843 > v1056)
    {
      v1056 = v843;
    }

    if (v161 <= v1056)
    {
      v161 = v1056;
    }

    v865 = 1;
  }

  v890 = *(v838 + 136);
  if (v890)
  {
    v891 = *(v890 + 280);
    if (v891 != 0.0 && v840)
    {
      if (v161 >= v891 || v161 <= 0.001)
      {
        v161 = v891;
      }

      v865 = 1;
    }
  }

  if (CADeviceFlickerHeadroomLimit::once != -1)
  {
    dispatch_once(&CADeviceFlickerHeadroomLimit::once, &__block_literal_global_217);
  }

  if (*&CADeviceFlickerHeadroomLimit::headroom_limit > 0.001 && (*(v838 + 47) & 0x40) != 0)
  {
    if (v161 >= *&CADeviceFlickerHeadroomLimit::headroom_limit || v161 <= 0.001)
    {
      LODWORD(v161) = CADeviceFlickerHeadroomLimit::headroom_limit;
    }

    v1132 |= 2u;
    v846 = v1138;
    v847 = v1135;
LABEL_1734:
    v1169.i64[1] |= 4uLL;
  }

  else
  {
    v1132 |= 2u;
    v847 = v1135;
    if (v865)
    {
      v846 = v1138;
      goto LABEL_1734;
    }

    v161 = 3.4028e38;
    v846 = v1138;
  }

LABEL_1580:
  if ((v1169.i16[0] & 0x300) != 0)
  {
    v1169.i64[1] |= 4uLL;
  }

  if ((v1169.i16[0] & 0x100) != 0)
  {
    v1169.i64[1] |= 8uLL;
  }

  v848 = *&v1167;
  v849 = *(*&v1167 + 24);
  if ((v849.i8[0] & 0x10) != 0)
  {
    v1169.i64[1] &= ~0x200uLL;
  }

  if (v1172)
  {
    *(*&v1167 + 24) = *&v849 | 0x10000;
    if ((*(v1143 + 66) & 2) != 0)
    {
      *(*v296 + 304) |= 4uLL;
    }
  }

  v850 = v848[33];
  if (v850)
  {
    v851 = *(*&v850 + 24);
    if (v851)
    {
      v852 = *v296;
      v853 = *(*v296 + 648);
      if (v853)
      {
        while (*v853 != v851)
        {
          v853 = v853[1];
          if (!v853)
          {
            goto LABEL_1594;
          }
        }

LABEL_1596:
        v856 = *(v852 + 295);
        if (v856 <= *(v851 + 200))
        {
          v856 = *(v851 + 200);
        }

        *(v852 + 295) = v856;
        if (CA::Render::Updater::should_track_layer_headroom(v848, v852[70]))
        {
          if (v161 <= *(v851 + 204))
          {
            v161 = *(v851 + 204);
          }

          v1132 |= 8u;
        }

        if (*(v851 + 176) == 1)
        {
          v1169.i64[1] |= 0x800000000uLL;
        }

        if (*(v851 + 177) == 1)
        {
          v1169.i64[1] |= 0x8000000000uLL;
        }

        if (*(v851 + 178) == 1)
        {
          v1169.i64[1] |= 0x2000000uLL;
          if ((*(v852 + 1381) & 0x80) != 0)
          {
            *(v851 + 179) = 1;
            (*(*v851 + 32))(v851);
          }
        }

        v857 = *(v851 + 184);
        if (v857)
        {
          if (*(*v296 + 294))
          {
            *(*&v1167 + 24) |= 0x10uLL;
          }

          v1169.i64[1] |= (v857 & 7) << 47;
        }
      }

      else
      {
LABEL_1594:
        if ((*(*v851 + 16))(v851))
        {
          v854 = *v296;
          v855 = *(*v296 + 648);
          atomic_fetch_add((v851 + 8), 1u);
          v854[81] = x_list_prepend(v855, v851);
          v852 = *v296;
          v848 = *&v1167;
          goto LABEL_1596;
        }
      }
    }

    v858 = v1169.i64[1] | 4;
    v1169.i64[1] |= 4uLL;
  }

  else
  {
    v858 = v1169.i64[1];
  }

  if ((v858 & 0x2800000000) != 0)
  {
    v859 = *(v296 + 8);
    v860 = atomic_load((v859 + 228));
    if (!v860)
    {
      v861 = *(v859 + 256) ? 0 : getpid();
      v860 = 0;
      atomic_compare_exchange_strong((v859 + 228), &v860, v861);
      if (!v860)
      {
        v860 = v861;
      }
    }

    if (v860)
    {
      v866 = v860;
    }

    else
    {
      v866 = -1;
    }

    if ((*(*&v1167 + 24) & 0x10) == 0)
    {
      if (*(v296 + 48) == 1)
      {
        v867 = *(v296 + 9);
        if (v867 <= v161)
        {
          v867 = v161;
        }

        *(v296 + 9) = v867;
      }

      v868 = *v296;
      if (*(*v296 + 1184) < v161)
      {
        *(v868 + 296) = v161;
        if (byte_1ED4E98A6 == 1)
        {
          v1174 = 0uLL;
          v1175.f64[0] = 0.0;
          CA::Render::show_object(&v1174, v1168);
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1067 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v1068 = v1144[2];
            v1069 = x_stream_get(&v1174);
            v1180[0].i32[0] = 67109634;
            v1180[0].i32[1] = v1068;
            v1180[0].i16[4] = 2048;
            *(&v1180[0].i64[1] + 2) = v161;
            v1180[1].i16[1] = 2080;
            *(v1180[1].i64 + 4) = v1069;
            _os_log_impl(&dword_183AA6000, v1067, OS_LOG_TYPE_DEFAULT, "update 0x%x track_headroom --> %f:\n%s", v1180, 0x1Cu);
          }

          if (*&v1174.f64[0])
          {
            free(*&v1174.f64[0]);
          }

          v296 = v1144;
          v868 = *v1144;
          v846 = v1138;
          v719 = *&v1142.f64[0];
          v276 = v1141.f64[0];
          v847 = v1135;
        }

        if (BYTE14(xmmword_1ED4E980C) == 1)
        {
          kdebug_trace();
          v868 = *v296;
        }

        if ((v868[153] - v868[152]) <= 0xFF)
        {
          v869 = *(v868 + 296);
          v1180[0].i16[0] = v1132;
          *(v1180[0].i64 + 4) = __PAIR64__(LODWORD(v161), v866);
          v1180[0].i32[3] = v869;
          v836 = X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(v868 + 152, v1180);
        }
      }
    }
  }

  if (v847)
  {
    v870 = *(*(v296 + 9) + 16);
    v871 = *(*&v276 + 136);
    if (v871)
    {
      v872 = *v871;
      if (v872)
      {
        v873 = *(v872 + 12);
        if (v873 == 31)
        {
          v874 = *(v872 + 88);
          if (v874)
          {
            v870 = v874[4];
            v875 = atomic_load(v874 + 57);
            if (!v875)
            {
              v876 = v874[64] ? 0 : getpid();
              v875 = 0;
              atomic_compare_exchange_strong(v874 + 57, &v875, v876);
              if (!v875)
              {
                v875 = v876;
              }
            }
          }

          else
          {
            v870 = 0;
            v875 = 0;
          }

          v895 = v1133;
          DWORD1(v895) = v875;
          v1133 = v895;
        }

        else if (v873 == 63)
        {
          v870 = *(v872 + 24);
        }
      }
    }

    v896 = v1169.i64[1];
    if ((v1169.i64[1] & 0x3800000000000) != 0)
    {
      _ZF = (*(*v296 + 292) & 0x10000) == 0;
      v897 = v296;
      LODWORD(v296) = (*(*v296 + 292) & 0x10000u) >> 16;
      v898 = v1136;
      if (_ZF)
      {
        v898 = 1;
      }

      v1136 = v898;
    }

    else
    {
      v897 = v296;
      LOBYTE(v296) = 0;
    }

    v899 = *(*&v276 + 128);
    v1142 = *(*&v1167 + 160);
    v900 = v897[9];
    v901 = *(v897 + 43);
    if (CA::Render::FlattenManager::is_stager(v719))
    {
      v902 = v1133;
      LODWORD(v902) = v870;
      v1133 = v902;
      os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
      v904 = *(v719 + 152);
      v905 = v1129;
      if (v1129)
      {
        v906 = *(v904 + 168);
        if (v906)
        {
          CA::Shape::unref(v906);
        }

        *(v904 + 168) = CA::Shape::ref(v905, v903);
      }

      v276 = v1141.f64[0];
      if (v899)
      {
        v907 = *(v904 + 176);
        if (v907 && atomic_fetch_add(v907 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v907 + 16))(v907);
        }

        v908 = (v899 + 8);
        if (!atomic_fetch_add((v899 + 8), 1u))
        {
          v899 = 0;
          atomic_fetch_add(v908, 0xFFFFFFFF);
        }

        *(v904 + 176) = v899;
      }

      *(v904 + 232) = v1133;
      *(v904 + 136) = v1142;
      *(v904 + 272) = v1136 != 0;
      *(v904 + 208) = v896 & 0x407815583C00000;
      *(v904 + 252) = v900;
      *(v904 + 276) = v901;
      *(v904 + 277) = v296;
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    }

    v296 = v1144;
    *(v1144 + 48) = 0;
    v846 = v1138;
  }

  v909 = *&v1167;
  if ((*(*&v1167 + 24) & 0x10) != 0)
  {
    v929 = v1169.i64[0];
    if ((v1169.i64[0] & 0x78000) != 0)
    {
      *(*v296 + 304) |= 4uLL;
      v1169.i64[0] = v929 & 0xFFFFFFFFFFF87FFFLL;
    }

    v1169.i64[1] &= 0xFFF87E011E3FFFFFLL;
    v930 = v1139;
    if (v1151)
    {
      v909[28] = 1;
    }

    goto LABEL_1860;
  }

  v910 = *(v719 + 184);
  v911 = *(v719 + 188);
  if (v910 <= v911)
  {
    v912 = *(v719 + 188);
  }

  else
  {
    v912 = *(v719 + 184);
  }

  v836.n128_u32[0] = 1073741822;
  v837.i32[0] = v912;
  v913 = vdupq_lane_s32(*&vcgtq_s32(v837, v836), 0);
  v914 = *(v719 + 176);
  v915.i64[0] = v914;
  v915.i64[1] = SHIDWORD(v914);
  v916 = vbslq_s8(v913, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v915));
  v917 = v910;
  if (v912 > 1073741822)
  {
    v917 = 1.79769313e308;
  }

  v1180[0] = v916;
  if (v912 <= 1073741822)
  {
    v918 = v911;
  }

  else
  {
    v918 = 1.79769313e308;
  }

  *v1180[1].i64 = v917;
  *&v1180[1].i64[1] = v918;
  CA::Render::Updater::LayerShapes::union_bounds(v846, v1180, 0);
  v924 = *(*&v276 + 136);
  if (v924)
  {
    v925 = *v924;
    if (v925)
    {
      if (*(v925 + 12) == 31)
      {
        v926 = *(v719 + 184);
        if (v926 >= *(v719 + 188))
        {
          v926 = *(v719 + 188);
        }

        if (v926 >= 1)
        {
          v927 = *(v925 + 88);
          v928 = v927 ? *(v927 + 16) : 0;
          v931 = CA::Render::Context::context_by_id(v928);
          if (v931)
          {
            v932 = v931;
            v933 = *v296;
            v934 = *(*v296 + 1024);
            v935 = *(*v296 + 1032);
            if (v934 != v935)
            {
              while (*v934 != *(v931 + 268))
              {
                if (++v934 == v935)
                {
                  goto LABEL_1787;
                }
              }
            }

            if (v934 == v935)
            {
LABEL_1787:
              v1180[0].i32[0] = *(v931 + 268);
              X::small_vector_base<unsigned int>::push_back(v933 + 128, v1180[0].i32);
            }

            if (atomic_fetch_add(v932 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v932 + 16))(v932);
            }
          }
        }
      }
    }
  }

  if (v1149 && (v1149[16] & 1) == 0)
  {
    *(*&v1167 + 24) |= 0x100000uLL;
  }

  if (v1150 && (v1172 & 2) == 0)
  {
    if (v1150)
    {
      if (v1150 != 1)
      {
        goto LABEL_1799;
      }
    }

    else
    {
      if (*(v1150 + 4) == 6)
      {
        goto LABEL_1805;
      }

LABEL_1799:
      if ((CA::Bounds::contains(&v1156, v1150) & 1) == 0)
      {
        CA::shape_intersect(&v1150, &v1156, v919);
      }

      if (*(v846 + 56))
      {
        CA::shape_union((v846 + 56), v1150, v919);
      }

      if ((*(v1143 + 89) & 0x40) == 0)
      {
        CA::Render::Update::fullfill_backdrops(*v296, v1150);
        CA::Render::Update::add_opaque_shape(*v296, v1150, v936);
      }
    }

LABEL_1805:
    if ((v1169.i8[2] & 0x10) == 0)
    {
      *(*&v1167 + 208) = v1150;
      v1150 = 0;
    }
  }

  v930 = v1139;
  if (!v1151)
  {
    goto LABEL_1838;
  }

  v937 = vceqzq_f64(v1155);
  if ((vorrq_s8(vdupq_laneq_s64(v937, 1), v937).u64[0] & 0x8000000000000000) != 0 || (v938 = vceqq_f64(v1155, v1155), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v938), 1), v938).u64[0] & 0x8000000000000000) != 0))
  {
    v1180[0] = 0uLL;
  }

  else
  {
    v939 = vcvtmq_s64_f64(vmaxnmq_f64(v1154, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v1180[0] = vuzp1q_s32(v939, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1154, v1155), vdupq_n_s64(0x41C0000000000000uLL))), v939));
  }

  CA::shape_intersect(&v1151, v1180, v919);
  v941 = (v846 + 64);
  if (!*(v846 + 64))
  {
    goto LABEL_1837;
  }

  v943 = (v846 + 72);
  v942 = *(v846 + 72);
  if (!v942)
  {
    goto LABEL_1827;
  }

  if (!v930 || *&v1152 == 0.0)
  {
    if (v930)
    {
      goto LABEL_1825;
    }

    goto LABEL_1831;
  }

  if ((*(v930[13].i16 + 1) & 0x780) == 0)
  {
    goto LABEL_1825;
  }

  v944 = CA::Shape::intersect(*(v846 + 72), v1152);
  v945 = v944;
  if (v944)
  {
    if (v944 == 1)
    {
      goto LABEL_1824;
    }

    goto LABEL_1823;
  }

  if (*(v944 + 4) != 6)
  {
LABEL_1823:
    v946 = CA::Shape::dilate(v944, 1, 1);
    CA::Render::Updater::LayerShapes::union_visible_shape(v1138, v946, v947);
    CA::Render::Updater::LayerShapes::union_visible_shape(&v1146, v946, v948);
    CA::shape_subtract((v846 + 72), v946, v949, v950);
    v1169.i64[1] |= 0x40uLL;
    v951 = v946;
    v296 = v1144;
    CA::Shape::unref(v951);
  }

LABEL_1824:
  CA::Shape::unref(v945);
  v846 = v1138;
LABEL_1825:
  if ((*(v930[13].i16 + 1) & 0x780) == 0)
  {
    v942 = *v943;
LABEL_1831:
    v955 = CA::Shape::subtract(v1151, v942, v919, v940);
    if (*v941)
    {
      CA::shape_union(v941, v955, v954);
      v956 = *v941;
      if ((*v941 & 1) == 0 && *(v956 + 1) >= 257)
      {
        v1180[0] = 0uLL;
        CA::Shape::get_bounds(v956, v1180);
        CA::Shape::unref(*v941);
        *v941 = CA::Shape::new_shape(v1180, v957);
      }
    }

    CA::Shape::unref(v955);
    v846 = v1138;
    goto LABEL_1836;
  }

  if (*v941)
  {
LABEL_1827:
    CA::shape_union(v941, v1151, v919);
    v952 = *v941;
    if ((*v941 & 1) == 0 && *(v952 + 1) >= 257)
    {
      v1180[0] = 0uLL;
      CA::Shape::get_bounds(v952, v1180);
      CA::Shape::unref(*v941);
      *v941 = CA::Shape::new_shape(v1180, v953);
    }
  }

LABEL_1836:
  CA::Render::Update::add_visible_shape(*v296, v1151, v919);
LABEL_1837:
  *(*&v1167 + 224) = v1151;
  v1151 = 0;
LABEL_1838:
  v958 = v1152;
  if (*&v1152 == 0.0)
  {
    v961 = *&v1167;
  }

  else
  {
    v960 = *(v846 + 72);
    v959 = (v846 + 72);
    if (v960)
    {
      CA::shape_union(v959, v1152, v919);
      v958 = v1152;
    }

    v961 = *&v1167;
    *(*&v1167 + 232) = v958;
    *&v1152 = 0.0;
  }

  v962 = v961[21].i32[0];
  if (!v962)
  {
    goto LABEL_1859;
  }

  v963 = v1168;
  v964 = *(v1168 + 40);
  if ((v964 & 0x10000000000) == 0 || *&v961[16])
  {
    goto LABEL_1846;
  }

  v987 = *(v1168 + 136);
  v921.f64[0] = 0.0;
  if (!v987)
  {
LABEL_1888:
    v988 = *(v1168 + 72);
    v989 = *(v1168 + 88);
    v1180[0] = v988;
    v1180[1] = v989;
    if ((v964 & 0xF0000) == 0)
    {
      v921.f64[0] = 0.0;
    }

    v990 = *&v989.i64[1];
    if (v987 && *(v987 + 72))
    {
      v1141 = v989;
      v1142 = v988;
      CA::Render::Layer::max_corner_radii(v987);
      v989.i64[0] = *&v1141.f64[0];
      v988 = v1142;
      *v921.f64 = v920.f64[0];
    }

    if (*v989.i64 <= v990)
    {
      v920.f64[0] = v990;
    }

    else
    {
      v920.f64[0] = *v989.i64;
    }

    v922.i32[1] = 2146435071;
    if (v920.f64[0] < 1.79769313e308)
    {
      v920.f64[0] = *v989.i64 >= v990 ? v990 : *v989.i64;
      if (v920.f64[0] > 0.0)
      {
        v920 = vdupq_n_s64(0xBEE4F8B588E368F1);
        v988 = vaddq_f64(v988, v920);
        v1180[0] = v988;
        *v922.i64 = *v989.i64 + 0.00002;
        v920.f64[0] = v990 + 0.00002;
        *v1180[1].i64 = *v989.i64 + 0.00002;
        *&v1180[1].i64[1] = v990 + 0.00002;
        if (*v989.i64 + 0.00002 <= 0.0 || v920.f64[0] <= 0.0)
        {
          v1180[1] = 0uLL;
        }
      }
    }

    v991 = v961[21].i32[1];
    if (v962 <= v991)
    {
      v992 = v961[21].i32[1];
    }

    else
    {
      v992 = v962;
    }

    LODWORD(v920.f64[0]) = 1073741822;
    v922.i32[0] = v992;
    v920 = vdupq_lane_s32(*&vcgtq_s32(v922, v920), 0);
    v993 = v961[20];
    v994.i64[0] = v993.i32[0];
    v994.i64[1] = v993.i32[1];
    v995 = vbslq_s8(v920, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v994));
    if (v992 <= 1073741822)
    {
      v996.f64[0] = v962;
    }

    else
    {
      v996.f64[0] = 1.79769313e308;
    }

    if (v992 <= 1073741822)
    {
      v997 = v991;
    }

    else
    {
      v997 = 1.79769313e308;
    }

    v996.f64[1] = v997;
    if (*v921.f64 == 0.0)
    {
      v920 = v1180[1];
      v998 = vorrq_s8(vcltzq_f64(v996), vclezq_f64(v1180[1]));
      v921 = vorrq_s8(vdupq_laneq_s64(v998, 1), v998);
      if ((*&v921.f64[0] & 0x8000000000000000) != 0)
      {
        goto LABEL_1846;
      }

      v999 = vandq_s8(vcgeq_f64(vaddq_f64(v988, v1180[1]), vaddq_f64(v995, v996)), vcgeq_f64(v995, v988));
    }

    else
    {
      if (v987 && *(v987 + 56))
      {
        v920.f64[0] = *v921.f64;
        if (*(v963 + 50))
        {
          v1141 = v995;
          v1142 = v996;
          CA::BoundsImpl::inset(v1180, v920.f64[0], *v921.f64);
          if ((CA::BoundsImpl::contains(v1180[0], v1180[1], v1141, v1142) & 1) == 0)
          {
            goto LABEL_1846;
          }

          goto LABEL_1954;
        }

        v1000 = v1180[1];
      }

      else
      {
        v920.f64[0] = *v921.f64;
        v1000 = v1180[1];
        if (*v1180[1].i64 <= *&v1180[1].i64[1])
        {
          v1001 = v1180[1].i64[1];
        }

        else
        {
          v1001 = v1180[1].i64[0];
        }

        _NF = *&v1001 < 1.79769313e308;
        v1002 = v988;
        v1003 = v1180[1];
        if (_NF)
        {
          v1004 = *v1180[1].i64 >= *&v1180[1].i64[1] ? *&v1180[1].i64[1] : *v1180[1].i64;
          v392 = v1004 <= 0.0;
          v1002 = v988;
          v1003 = v1180[1];
          if (!v392)
          {
            v1005 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(v920.f64[0] * -0.644365081), 0), v1180[1]);
            v1006 = vmovn_s64(vmvnq_s8(vclezq_f64(v1005)));
            v1002 = vaddq_f64(v988, vdupq_lane_s64(COERCE__INT64(v920.f64[0] * 0.322182541), 0));
            v1007 = vdup_lane_s32(vand_s8(v1006, vdup_lane_s32(v1006, 1)), 0);
            v1008.i64[0] = v1007.i32[0];
            v1008.i64[1] = v1007.i32[1];
            v1003 = vandq_s8(v1005, v1008);
          }
        }

        v1009 = vorrq_s8(vcltzq_f64(v996), vclezq_f64(v1003));
        if ((vorrq_s8(vdupq_laneq_s64(v1009, 1), v1009).u64[0] & 0x8000000000000000) == 0)
        {
          v1010 = vandq_s8(vcgeq_f64(vaddq_f64(v1002, v1003), vaddq_f64(v995, v996)), vcgeq_f64(v995, v1002));
          if ((vandq_s8(vdupq_laneq_s64(v1010, 1), v1010).u64[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_1954;
          }
        }
      }

      v1011 = v920.f64[0] * 1.52866;
      if ((v964 & 0x300000000) == 0)
      {
        v1011 = *v921.f64;
      }

      v920.f64[0] = v1011;
      HIDWORD(v921.f64[0]) = HIDWORD(v1000.f64[1]);
      if (v1000.f64[0] <= v1000.f64[1])
      {
        v1012 = v1000.f64[1];
      }

      else
      {
        v1012 = v1000.f64[0];
      }

      v1013 = v988;
      v1014 = v1000;
      if (v1012 < 1.79769313e308)
      {
        v1015 = v1000.f64[0] >= v1000.f64[1] ? v1000.f64[1] : v1000.f64[0];
        v1013 = v988;
        v1014 = v1000;
        if (v1015 > 0.0)
        {
          v1013 = vaddq_f64(v988, *&v920.f64[0]);
          v1016.i64[1] = *&v1000.f64[1];
          *v1016.i64 = v1000.f64[0] - (v920.f64[0] + v920.f64[0]);
          v923.f64[0] = 0.0;
          v1014 = vandq_s8(v1016, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v923, COERCE_UNSIGNED_INT64(fmin(*v1016.i64, v1000.f64[1])))).i64[0], 0));
        }
      }

      v1017 = vcltzq_f64(v996);
      v1018 = vorrq_s8(v1017, vclezq_f64(v1014));
      if ((vorrq_s8(vdupq_laneq_s64(v1018, 1), v1018).u64[0] & 0x8000000000000000) == 0)
      {
        v1019 = vandq_s8(vcgeq_f64(vaddq_f64(v1013, v1014), vaddq_f64(v995, v996)), vcgeq_f64(v995, v1013));
        if ((vandq_s8(vdupq_laneq_s64(v1019, 1), v1019).u64[0] & 0x8000000000000000) != 0)
        {
LABEL_1954:
          *&v961[3] |= 0x2000uLL;
          goto LABEL_1846;
        }
      }

      if (v1012 < 1.79769313e308)
      {
        v1020 = v1000.f64[0] >= v1000.f64[1] ? v1000.f64[1] : v1000.f64[0];
        if (v1020 > 0.0)
        {
          v1021.f64[0] = 0.0;
          v1021.f64[1] = v920.f64[0];
          v988 = vaddq_f64(v988, v1021);
          v920.f64[0] = v1000.f64[1] - (v920.f64[0] + v920.f64[0]);
          v921.f64[0] = fmin(v1000.f64[0], v920.f64[0]);
          v1000.f64[1] = v920.f64[0];
          v920.f64[0] = 0.0;
          v1000 = vandq_s8(v1000, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v920, v921)).i64[0], 0));
        }
      }

      v1022 = vorrq_s8(v1017, vclezq_f64(v1000));
      v921 = vdupq_laneq_s64(v1022, 1);
      v920 = vorrq_s8(v921, v1022);
      if ((*&v920.f64[0] & 0x8000000000000000) != 0)
      {
        goto LABEL_1846;
      }

      v999 = vandq_s8(vcgeq_f64(vaddq_f64(v988, v1000), vaddq_f64(v995, v996)), vcgeq_f64(v995, v988));
    }

    v921 = vdupq_laneq_s64(v999, 1);
    v920 = vandq_s8(v921, v999);
    if ((*&v920.f64[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_1846;
    }

    goto LABEL_1954;
  }

  if (!*(v987 + 112))
  {
    LODWORD(v921.f64[0]) = *(v987 + 232);
    goto LABEL_1888;
  }

LABEL_1846:
  v965 = v1138[10];
  if (v965)
  {
    v966 = v961[21].i32[0];
    v967 = v961[21].i32[1];
    if (v966 <= v967)
    {
      v968 = v961[21].i32[1];
    }

    else
    {
      v968 = v961[21].i32[0];
    }

    LODWORD(v920.f64[0]) = 1073741822;
    LODWORD(v921.f64[0]) = v968;
    v969 = vdupq_lane_s32(*&vcgtq_s32(v921, v920), 0);
    v970 = v961[20];
    v971.i64[0] = v970.i32[0];
    v971.i64[1] = v970.i32[1];
    v972 = vbslq_s8(v969, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v971));
    v973 = v966;
    v974 = v967;
    if (v968 > 1073741822)
    {
      v973 = 1.79769313e308;
      v974 = 1.79769313e308;
    }

    v1180[0] = v972;
    *v1180[1].i64 = v973;
    *&v1180[1].i64[1] = v974;
    v975 = v961[7];
    if (v975)
    {
      CA::Mat4Impl::mat4_apply_to_rect(v975, v1180, v919);
      v976 = v1180[0];
    }

    else
    {
      v976 = vaddq_f64(v972, *v961[8].i8);
    }

    v977 = vceqzq_f64(v1180[1]);
    v978 = vorrq_s8(vdupq_laneq_s64(v977, 1), v977).u64[0];
    v979 = 0uLL;
    if ((v978 & 0x8000000000000000) == 0)
    {
      v980 = vceqq_f64(v1180[1], v1180[1]);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v980), 1), v980).u64[0] & 0x8000000000000000) == 0)
      {
        v981 = vcvtmq_s64_f64(vmaxnmq_f64(v976, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v979 = vuzp1q_s32(v981, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v976, v1180[1]), vdupq_n_s64(0x41C0000000000000uLL))), v981));
      }
    }

    CA::BoundsImpl::Union(v965, *v979.i8, *&vextq_s8(v979, v979, 8uLL));
  }

LABEL_1859:
  if (v1169.i8[10] < 0)
  {
    v986 = *(*v1144 + 1376);
    if ((v986 & 0x800000000) != 0 && v1130 != 6 && v1130 > ((v986 >> 36) & 7))
    {
      *(*v1144 + 1376) = v986 & 0xFFFFFF8FFFFFFFFFLL | ((v1130 & 7) << 36);
    }
  }

LABEL_1860:
  if (v1150)
  {
    CA::Shape::unref(v1150);
  }

  if (v1151)
  {
    CA::Shape::unref(v1151);
  }

  if (*&v1152 != 0.0)
  {
    CA::Shape::unref(v1152);
  }

  if (v1149)
  {
    v982 = *(v1149 + 1);
    if (v982)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v1149, v982);
    }
  }

  v983 = v1169.i64[1];
  if ((v1169.i64[1] & 0x1800000000) != 0)
  {
    *(*&v1167 + 24) |= 0x400uLL;
    goto LABEL_1872;
  }

  if (v1169.i64[1])
  {
LABEL_1872:
    if (v930)
    {
      *&v930[13] |= v983;
    }

    if ((v983 & 0x3F) != 0)
    {
      v984 = v983 | 0x20;
    }

    else
    {
      v984 = v1169.i64[1];
    }

    v1169.i64[1] = (2 * v984) & 0x15480000000 | v984;
    *v1137 |= (2 * v984) & 0x15480000000 | v984 & 0x407C15583C06020;
  }

  v985 = *(v1143 + 48);
  if (v985)
  {
    *(v985 + 24) |= *(*&v1167 + 24) & 0x14010481400;
  }

  return 1;
}