uint64_t *re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::~DynamicArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v4 = a1[2];
      if (v4)
      {
        v5 = 176 * v4;
        v6 = v3 + 128;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v6);
          re::DynamicArray<unsigned long>::deinit(v6 - 40);
          re::DynamicArray<unsigned long>::deinit(v6 - 80);
          v6 += 176;
          v5 -= 176;
        }

        while (v5);
        v2 = *a1;
        v3 = a1[4];
      }

      (*(*v2 + 40))(v2, v3);
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    ++*(a1 + 6);
  }

  return a1;
}

_anonymous_namespace_ *re::anonymous namespace::extractControlPointsCallback(_anonymous_namespace_ *this, uint64_t a2, const CGPathElement *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!this || !a2)
  {
    return this;
  }

  v4 = this;
  v5 = *a2;
  if (*a2 <= 1)
  {
    if (!v5)
    {
      v14[0] = 1;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v15 = vnegq_f32(v8);
      v16 = v8;
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v20 = 0;
      v27 = 0;
      v21 = 0u;
      v22 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0;
      v26 = 0;
      v13 = vcvt_f32_f64(**(a2 + 8));
      re::DynamicArray<unsigned long>::add((&v24 + 8), &v13);
      v9 = **(a2 + 8);
      *v9.f32 = vcvt_f32_f64(v9);
      v10 = v15;
      v11 = v16;
      v10.i32[3] = 0;
      v11.i32[3] = 0;
      v15 = vminnmq_f32(v10, v9);
      v16 = vmaxnmq_f32(v11, v9);
      if (*(&v24 + 1))
      {
        if (v27)
        {
          (*(**(&v24 + 1) + 40))(v12);
        }

        v27 = 0;
        v25 = 0uLL;
        *(&v24 + 1) = 0;
        ++v26;
      }

      if (*(&v21 + 1))
      {
        if (v24)
        {
          (*(**(&v21 + 1) + 40))(v12);
        }

        *&v24 = 0;
        v22 = 0uLL;
        *(&v21 + 1) = 0;
        ++v23;
      }

      this = v17;
      if (v17 && v21)
      {
        return (*(*v17 + 40))(v12);
      }

      return this;
    }

    if (v5 != 1)
    {
LABEL_28:
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unknown element type!", "!Unreachable code", "extractControlPointsCallback", 155);
      this = _os_crash("assertion failure: (!Unreachable code) Unknown element type!");
      __break(1u);
      return this;
    }

    v6 = (*(this + 4) + 176 * *(this + 2) - 176);
    v7 = 1;
LABEL_13:
  }

  if (v5 == 2)
  {
    v6 = (*(this + 4) + 176 * *(this + 2) - 176);
    v7 = 2;
    goto LABEL_13;
  }

  if (v5 == 3)
  {
    v6 = (*(this + 4) + 176 * *(this + 2) - 176);
    v7 = 3;
    goto LABEL_13;
  }

  if (v5 != 4)
  {
    goto LABEL_28;
  }

  return this;
}

__n128 re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v20 = 2 * v4;
      v21 = v4 == 0;
      v22 = 8;
      if (!v21)
      {
        v22 = v20;
      }

      if (v22 <= v6)
      {
        v23 = v6;
      }

      else
      {
        v23 = v22;
      }
    }

    else
    {
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 176 * *(a1 + 16);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  *(v8 + 80) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 72) = 0;
  v11 = *(a2 + 56);
  *(v8 + 48) = *(a2 + 48);
  *(v8 + 56) = v11;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v12 = *(v8 + 64);
  *(v8 + 64) = *(a2 + 64);
  *(a2 + 64) = v12;
  v13 = *(v8 + 80);
  *(v8 + 80) = *(a2 + 80);
  *(a2 + 80) = v13;
  ++*(a2 + 72);
  ++*(v8 + 72);
  *(v8 + 120) = 0;
  *(v8 + 96) = 0;
  *(v8 + 104) = 0;
  *(v8 + 88) = 0;
  *(v8 + 112) = 0;
  v14 = *(a2 + 96);
  *(v8 + 88) = *(a2 + 88);
  *(v8 + 96) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v15 = *(v8 + 104);
  *(v8 + 104) = *(a2 + 104);
  *(a2 + 104) = v15;
  v16 = *(v8 + 120);
  *(v8 + 120) = *(a2 + 120);
  *(a2 + 120) = v16;
  ++*(a2 + 112);
  ++*(v8 + 112);
  *(v8 + 160) = 0;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 152) = 0;
  v17 = *(a2 + 136);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 136) = v17;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v18 = *(v8 + 144);
  *(v8 + 144) = *(a2 + 144);
  *(a2 + 144) = v18;
  v19 = *(v8 + 160);
  *(v8 + 160) = *(a2 + 160);
  *(a2 + 160) = v19;
  ++*(a2 + 152);
  ++*(v8 + 152);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::anonymous namespace::addCGElementToBoundaryHelper(unsigned int a1, float32x4_t *a2, uint64_t a3)
{
  v5 = a1;
  v14 = a1;
  if (a2->u8[0] < a1)
  {
    a2->i8[0] = a1;
  }

  v6 = 0;
  if (a1 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1;
  }

  v8 = 16 * v7;
  do
  {
    v13 = vcvt_f32_f64(*(*(a3 + 8) + v6));
    re::DynamicArray<unsigned long>::add(&a2[8], &v13);
    v9 = *(*(a3 + 8) + v6);
    *v9.f32 = vcvt_f32_f64(v9);
    v10 = a2[1];
    v11 = a2[2];
    v10.i32[3] = 0;
    v11.i32[3] = 0;
    a2[1] = vminnmq_f32(v10, v9);
    a2[2] = vmaxnmq_f32(v11, v9);
    v6 += 16;
  }

  while (v8 != v6);
  v13 = (a2[9].i64[0] + ~v5);
  re::DynamicArray<unsigned long>::add(&a2[5].u32[2], &v13);
  return re::DynamicArray<unsigned char>::add(&a2[3], &v14);
}

void *re::DynamicArray<re::anonymous namespace::PiecewiseBezierCurve>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v27, v29);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v28, v30);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = *(v8 + 32);
          *(v11 + 1) = *(v8 + 16);
          *(v11 + 2) = v13;
          *v11 = v12;
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v14 = v8 + 48;
          v15 = *(v8 + 56);
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v11[7] = v15;
          *(v8 + 56) = 0;
          v16 = v11[8];
          v11[8] = *(v8 + 64);
          *(v8 + 64) = v16;
          v17 = v11[10];
          v11[10] = *(v8 + 80);
          *(v8 + 80) = v17;
          ++*(v8 + 72);
          ++*(v11 + 18);
          v11[15] = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[11] = 0;
          *(v11 + 28) = 0;
          v18 = v8 + 88;
          v19 = *(v8 + 96);
          v11[11] = *(v8 + 88);
          *(v8 + 88) = 0;
          v11[12] = v19;
          *(v8 + 96) = 0;
          v20 = v11[13];
          v11[13] = *(v8 + 104);
          *(v8 + 104) = v20;
          v21 = v11[15];
          v11[15] = *(v8 + 120);
          *(v8 + 120) = v21;
          ++*(v8 + 112);
          ++*(v11 + 28);
          v11[20] = 0;
          v11[17] = 0;
          v11[18] = 0;
          v11[16] = 0;
          *(v11 + 38) = 0;
          v22 = *(v8 + 128);
          v23 = *(v8 + 136);
          v24 = v8 + 128;
          v11[16] = v22;
          v11[17] = v23;
          *v24 = 0;
          *(v24 + 8) = 0;
          v25 = v11[18];
          v11[18] = *(v24 + 16);
          *(v24 + 16) = v25;
          v26 = v11[20];
          v11[20] = *(v24 + 32);
          *(v24 + 32) = v26;
          ++*(v24 + 24);
          ++*(v11 + 38);
          re::DynamicArray<unsigned long>::deinit(v24);
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v14);
          v11 += 22;
          v8 = v24 + 48;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *,false>(uint64_t result, float32x4_t *a2, uint64_t a3, char a4, __n128 a5, __n128 a6)
{
  v8 = result;
  v323 = *MEMORY[0x1E69E9840];
  v9 = 0uLL;
  while (2)
  {
    v290 = &a2[-21];
    v291 = &a2[-11];
    v288 = &a2[-32];
    v289 = &a2[-20];
    v287 = &a2[-31];
    v10 = v8;
    while (1)
    {
      while (1)
      {
        v8 = v10;
        v11 = a2 - v10;
        v12 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v10) >> 4);
        v13 = v12 - 2;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v143 = vsubq_f32(*(v10 + 32), *(v10 + 16));
            v143.i32[3] = 0;
            v144 = vmaxnmq_f32(v143, 0).u64[0];
            v145 = vmuls_lane_f32(v144.f32[0], v144, 1);
            v146 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
            *v143.f32 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
            v147 = vmul_f32(vzip1_s32(*v143.f32, v146), vzip2_s32(*v143.f32, v146));
            if (v147.f32[1] > v145)
            {
              if (v147.f32[0] > v147.f32[1])
              {
                goto LABEL_132;
              }

              v272 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
              v273 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v274 = vmul_f32(vzip1_s32(v273, v272), vzip2_s32(v273, v272));
              if ((vcgt_f32(v274, vdup_lane_s32(v274, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v148 = (v10 + 176);
LABEL_133:
              v149 = a2 - 11;
            }

            if (v147.f32[0] <= v147.f32[1])
            {
              return result;
            }

            v248 = (v10 + 176);
            v249 = a2 - 11;
LABEL_258:
            v284 = vmaxnm_f32(vsub_f32(*(v10 + 32), *(v10 + 16)), 0);
            v285 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
            v286 = vmul_f32(vzip1_s32(v285, v284), vzip2_s32(v285, v284));
            if ((vcgt_f32(v286, vdup_lane_s32(v286, 1)).u32[0] & 1) == 0)
            {
              return result;
            }

            v149 = (v10 + 176);
            v148 = v10;
          }

          if (v12 != 4)
          {
            if (v12 == 5)
            {
            }

            goto LABEL_10;
          }

          v150 = vsubq_f32(*(v10 + 32), *(v10 + 16));
          v150.i32[3] = 0;
          v151 = vmaxnmq_f32(v150, 0).u64[0];
          v152 = vmuls_lane_f32(v151.f32[0], v151, 1);
          v153 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
          *v150.f32 = vmaxnm_f32(vsub_f32(*(v10 + 384), *(v10 + 368)), 0);
          v154 = vmul_f32(vzip1_s32(*v150.f32, v153), vzip2_s32(*v150.f32, v153));
          if (v154.f32[1] <= v152)
          {
            if (v154.f32[0] <= v154.f32[1])
            {
              goto LABEL_255;
            }

            v250 = vmaxnm_f32(vsub_f32(*(v10 + 32), *(v10 + 16)), 0);
            v251 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
            v252 = vmul_f32(vzip1_s32(v251, v250), vzip2_s32(v251, v250));
            if ((vcgt_f32(v252, vdup_lane_s32(v252, 1)).u8[0] & 1) == 0)
            {
              goto LABEL_255;
            }

            v155 = (v10 + 176);
          }

          else
          {
            if (v154.f32[0] <= v154.f32[1])
            {
              v275 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
              v276 = vmaxnm_f32(vsub_f32(*(v10 + 384), *(v10 + 368)), 0);
              v277 = vmul_f32(vzip1_s32(v276, v275), vzip2_s32(v276, v275));
              if ((vcgt_f32(v277, vdup_lane_s32(v277, 1)).u8[0] & 1) == 0)
              {
                goto LABEL_255;
              }

              v253 = (v10 + 176);
              v155 = (v10 + 352);
LABEL_254:
LABEL_255:
              v278 = vmaxnm_f32(vsub_f32(*(v10 + 384), *(v10 + 368)), 0);
              v279 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v280 = vmul_f32(vzip1_s32(v279, v278), vzip2_s32(v279, v278));
              if ((vcgt_f32(v280, vdup_lane_s32(v280, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v281 = vmaxnm_f32(vsub_f32(*(v10 + 208), *(v10 + 192)), 0);
              v282 = vmaxnm_f32(vsub_f32(*(v10 + 384), *(v10 + 368)), 0);
              v283 = vmul_f32(vzip1_s32(v282, v281), vzip2_s32(v282, v281));
              if ((vcgt_f32(v283, vdup_lane_s32(v283, 1)).u32[0] & 1) == 0)
              {
                return result;
              }

              v248 = (v10 + 176);
              v249 = (v10 + 352);
              goto LABEL_258;
            }

            v155 = (v10 + 352);
          }

          v253 = v10;
          goto LABEL_254;
        }

        if (v12 < 2)
        {
          return result;
        }

        if (v12 == 2)
        {
          v140 = vmaxnm_f32(vsub_f32(*(v10 + 32), *(v10 + 16)), 0);
          v141 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v142 = vmul_f32(vzip1_s32(v141, v140), vzip2_s32(v141, v140));
          if ((vcgt_f32(v142, vdup_lane_s32(v142, 1)).u32[0] & 1) == 0)
          {
            return result;
          }

LABEL_132:
          v148 = v10;
          goto LABEL_133;
        }

LABEL_10:
        if (v11 <= 4223)
        {
          if (a4)
          {
            if (v10 != a2)
            {
              v156 = (v10 + 176);
              if ((v10 + 176) != a2)
              {
                v157 = 0;
                v158 = v10;
                do
                {
                  v159 = v156;
                  v160 = vmaxnm_f32(vsub_f32(*(v158 + 32), *(v158 + 16)), 0);
                  v161 = vmaxnm_f32(vsub_f32(*(v158 + 208), *(v158 + 192)), 0);
                  v162 = vmul_f32(vzip1_s32(v161, v160), vzip2_s32(v161, v160));
                  if (vcgt_f32(v162, vdup_lane_s32(v162, 1)).u32[0])
                  {
                    v163 = *v156;
                    v164 = v156[2];
                    v311 = v156[1];
                    v312 = v164;
                    v310 = v163;
                    v313 = *(v158 + 224);
                    *(v158 + 224) = 0;
                    v314 = *(v158 + 232);
                    *(v158 + 232) = 0u;
                    ++*(v158 + 248);
                    v315 = 1;
                    v165 = *(v158 + 272);
                    v316 = *(v158 + 256);
                    v317 = v165;
                    *(v158 + 256) = 0u;
                    *(v158 + 272) = 0u;
                    ++*(v158 + 288);
                    v318 = 1;
                    v166 = *(v158 + 296);
                    *(v158 + 296) = 0u;
                    v319 = v166;
                    v167 = *(v158 + 312);
                    *(v158 + 312) = 0u;
                    v320 = v167;
                    v322 = *(v158 + 336);
                    *(v158 + 336) = 0;
                    ++*(v158 + 328);
                    v168 = v157;
                    v321 = 1;
                    while (1)
                    {
                      v169 = v10 + v168;
                      v170 = *(v10 + v168 + 16);
                      *(v169 + 176) = *(v10 + v168);
                      *(v169 + 192) = v170;
                      *(v169 + 208) = *(v10 + v168 + 32);
                      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v10 + v168 + 224, (v10 + v168 + 48));
                      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v169 + 264, (v169 + 88));
                      re::DynamicArray<re::RigComponentConstraint>::operator=(v169 + 304, (v169 + 128));
                      if (!v168)
                      {
                        break;
                      }

                      v171 = vmaxnm_f32(vsub_f32(*(v169 - 144), *(v169 - 160)), 0);
                      v172 = vmaxnm_f32(vsub_f32(*v312.f32, *v311.f32), 0);
                      v173 = vmul_f32(vzip1_s32(v172, v171), vzip2_s32(v172, v171));
                      v168 -= 176;
                      if ((vcgt_f32(v173, vdup_lane_s32(v173, 1)).u8[0] & 1) == 0)
                      {
                        v174 = v10 + v168 + 176;
                        goto LABEL_147;
                      }
                    }

                    v174 = v10;
LABEL_147:
                    v175 = v310;
                    v176 = v312;
                    *(v174 + 16) = v311;
                    *(v174 + 32) = v176;
                    *v174 = v175;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v169 + 48, &v313);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v169 + 88, &v316 + 1);
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v169 + 128, &v319 + 1);
                    if (*(&v319 + 1))
                    {
                      if (v322)
                      {
                        (*(**(&v319 + 1) + 40))();
                      }

                      v322 = 0;
                      v320 = 0uLL;
                      *(&v319 + 1) = 0;
                      ++v321;
                    }

                    if (*(&v316 + 1))
                    {
                      if (v319)
                      {
                        (*(**(&v316 + 1) + 40))();
                      }

                      *&v319 = 0;
                      v317 = 0uLL;
                      *(&v316 + 1) = 0;
                      ++v318;
                    }

                    result = v313;
                    if (*&v313 && v316)
                    {
                      result = (*(**&v313 + 40))();
                    }
                  }

                  v156 = v159 + 11;
                  v157 += 176;
                  v158 = v159;
                }

                while (&v159[11] != a2);
              }
            }
          }

          else if (v10 != a2)
          {
            v254 = (v10 + 176);
            if ((v10 + 176) != a2)
            {
              v255 = v10 - 160;
              do
              {
                v256 = v254;
                v257 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
                v258 = vmaxnm_f32(vsub_f32(*(v8 + 208), *(v8 + 192)), 0);
                v259 = vmul_f32(vzip1_s32(v258, v257), vzip2_s32(v258, v257));
                if (vcgt_f32(v259, vdup_lane_s32(v259, 1)).u32[0])
                {
                  v260 = *v254;
                  v261 = v254[2];
                  v311 = v254[1];
                  v312 = v261;
                  v310 = v260;
                  v313 = *(v8 + 224);
                  *(v8 + 224) = 0;
                  v314 = *(v8 + 232);
                  *(v8 + 232) = 0u;
                  ++*(v8 + 248);
                  v315 = 1;
                  v262 = *(v8 + 272);
                  v316 = *(v8 + 256);
                  v317 = v262;
                  *(v8 + 256) = 0u;
                  *(v8 + 272) = 0u;
                  ++*(v8 + 288);
                  v318 = 1;
                  v263 = *(v8 + 296);
                  *(v8 + 296) = 0u;
                  v319 = v263;
                  v264 = *(v8 + 312);
                  *(v8 + 312) = 0u;
                  v320 = v264;
                  v322 = *(v8 + 336);
                  *(v8 + 336) = 0;
                  ++*(v8 + 328);
                  v265 = v255;
                  v321 = 1;
                  do
                  {
                    v266 = *(v265 + 176);
                    *(v265 + 336) = *(v265 + 160);
                    *(v265 + 352) = v266;
                    *(v265 + 368) = *(v265 + 192);
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v265 + 384, (v265 + 208));
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v265 + 424, (v265 + 248));
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v265 + 464, (v265 + 288));
                    v267 = vmaxnm_f32(vsub_f32(*(v265 + 16), *v265), 0);
                    v268 = vmaxnm_f32(vsub_f32(*v312.f32, *v311.f32), 0);
                    v269 = vmul_f32(vzip1_s32(v268, v267), vzip2_s32(v268, v267));
                    v265 -= 176;
                  }

                  while ((vcgt_f32(v269, vdup_lane_s32(v269, 1)).u8[0] & 1) != 0);
                  v270 = v310;
                  v271 = v312;
                  *(v265 + 352) = v311;
                  *(v265 + 368) = v271;
                  *(v265 + 336) = v270;
                  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v265 + 384, &v313);
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v265 + 424, &v316 + 1);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v265 + 464, &v319 + 1);
                  if (*(&v319 + 1))
                  {
                    if (v322)
                    {
                      (*(**(&v319 + 1) + 40))();
                    }

                    v322 = 0;
                    v320 = 0uLL;
                    *(&v319 + 1) = 0;
                    ++v321;
                  }

                  if (*(&v316 + 1))
                  {
                    if (v319)
                    {
                      (*(**(&v316 + 1) + 40))();
                    }

                    *&v319 = 0;
                    v317 = 0uLL;
                    *(&v316 + 1) = 0;
                    ++v318;
                  }

                  result = v313;
                  if (*&v313 && v316)
                  {
                    result = (*(**&v313 + 40))();
                  }
                }

                v254 = v256 + 11;
                v255 += 176;
                v8 = v256;
              }

              while (&v256[11] != a2);
            }
          }

          return result;
        }

        if (!a3)
        {
          if (v10 != a2)
          {
            v177 = v13 >> 1;
            v178 = v13 >> 1;
            do
            {
              v179 = v178;
              if (v177 >= v178)
              {
                v180 = (2 * v178) | 1;
                v181 = v8 + 176 * v180;
                if (2 * v179 + 2 < v12)
                {
                  v182 = vmaxnm_f32(vsub_f32(*(v181 + 208), *(v181 + 192)), 0);
                  v183 = vmaxnm_f32(vsub_f32(*(v181 + 32), *(v181 + 16)), 0);
                  v184 = vmul_f32(vzip1_s32(v183, v182), vzip2_s32(v183, v182));
                  if (vcgt_f32(v184, vdup_lane_s32(v184, 1)).u8[0])
                  {
                    v181 += 176;
                    v180 = 2 * v179 + 2;
                  }
                }

                v185 = v8 + 176 * v179;
                v186 = vmaxnm_f32(vsub_f32(*(v185 + 32), *(v185 + 16)), 0);
                v187 = vmaxnm_f32(vsub_f32(*(v181 + 32), *(v181 + 16)), 0);
                v188 = vmul_f32(vzip1_s32(v187, v186), vzip2_s32(v187, v186));
                if ((vcgt_f32(v188, vdup_lane_s32(v188, 1)).u8[0] & 1) == 0)
                {
                  v189 = *v185;
                  v190 = *(v185 + 32);
                  v311 = *(v185 + 16);
                  v312 = v190;
                  v310 = v189;
                  v313 = *(v185 + 48);
                  *(v185 + 48) = 0;
                  *&v314 = *(v185 + 56);
                  *(v185 + 56) = 0;
                  *(&v314 + 1) = *(v185 + 64);
                  *(v185 + 64) = 0;
                  *&v316 = *(v185 + 80);
                  *(v185 + 80) = 0;
                  ++*(v185 + 72);
                  v315 = 1;
                  *(&v316 + 1) = *(v185 + 88);
                  *(v185 + 88) = 0;
                  *&v317 = *(v185 + 96);
                  *(v185 + 96) = 0;
                  *(&v317 + 1) = *(v185 + 104);
                  *(v185 + 104) = 0;
                  *&v319 = *(v185 + 120);
                  *(v185 + 120) = 0;
                  ++*(v185 + 112);
                  v318 = 1;
                  *(&v319 + 1) = *(v185 + 128);
                  *(v185 + 128) = 0;
                  *&v320 = *(v185 + 136);
                  *(v185 + 136) = 0;
                  *(&v320 + 1) = *(v185 + 144);
                  *(v185 + 144) = 0;
                  v322 = *(v185 + 160);
                  *(v185 + 160) = 0;
                  ++*(v185 + 152);
                  v321 = 1;
                  v191 = vmaxnm_f32(*&vsubq_f32(v312, v311), 0);
                  do
                  {
                    v192 = v181;
                    v193 = *v181;
                    v194 = *(v181 + 32);
                    *(v185 + 16) = *(v181 + 16);
                    *(v185 + 32) = v194;
                    *v185 = v193;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v185 + 48, (v181 + 48));
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v185 + 88, (v192 + 88));
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v185 + 128, (v192 + 128));
                    if (v177 < v180)
                    {
                      break;
                    }

                    v195 = (2 * v180) | 1;
                    v181 = v8 + 176 * v195;
                    if (2 * v180 + 2 < v12)
                    {
                      v196 = vmaxnm_f32(vsub_f32(*(v181 + 208), *(v181 + 192)), 0);
                      v197 = vmaxnm_f32(vsub_f32(*(v181 + 32), *(v181 + 16)), 0);
                      v198 = vmul_f32(vzip1_s32(v197, v196), vzip2_s32(v197, v196));
                      if (vcgt_f32(v198, vdup_lane_s32(v198, 1)).u8[0])
                      {
                        v181 += 176;
                        v195 = 2 * v180 + 2;
                      }
                    }

                    v199 = vmaxnm_f32(vsub_f32(*(v181 + 32), *(v181 + 16)), 0);
                    v200 = vmul_f32(vzip1_s32(v199, v191), vzip2_s32(v199, v191));
                    v185 = v192;
                    v180 = v195;
                  }

                  while ((vcgt_f32(v200, vdup_lane_s32(v200, 1)).u8[0] & 1) == 0);
                  v201 = v310;
                  v202 = v312;
                  *(v192 + 16) = v311;
                  *(v192 + 32) = v202;
                  *v192 = v201;
                  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v192 + 48, &v313);
                  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v192 + 88, &v316 + 1);
                  re::DynamicArray<re::RigComponentConstraint>::operator=(v192 + 128, &v319 + 1);
                  if (*(&v319 + 1))
                  {
                    if (v322)
                    {
                      (*(**(&v319 + 1) + 40))();
                    }

                    v322 = 0;
                    v320 = 0uLL;
                    *(&v319 + 1) = 0;
                    ++v321;
                  }

                  if (*(&v316 + 1))
                  {
                    if (v319)
                    {
                      (*(**(&v316 + 1) + 40))();
                    }

                    *&v319 = 0;
                    v317 = 0uLL;
                    *(&v316 + 1) = 0;
                    ++v318;
                  }

                  if (*&v313 && v316)
                  {
                    (*(**&v313 + 40))();
                  }
                }
              }

              v178 = v179 - 1;
            }

            while (v179);
            v203 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 4);
            do
            {
              v204 = 0;
              v205 = a2;
              v295 = *(v8 + 16);
              v296 = *(v8 + 32);
              v294 = *v8;
              v206 = *(v8 + 56);
              v297[0] = *(v8 + 48);
              *(v8 + 48) = 0;
              v297[1] = v206;
              *(v8 + 56) = 0;
              v297[2] = *(v8 + 64);
              *(v8 + 64) = 0;
              v207 = *(v8 + 88);
              v299 = *(v8 + 80);
              *(v8 + 80) = 0;
              ++*(v8 + 72);
              v298 = 1;
              v300 = v207;
              *(v8 + 88) = 0;
              v208 = *(v8 + 104);
              v301 = *(v8 + 96);
              *(v8 + 96) = 0;
              v302 = v208;
              *(v8 + 104) = 0;
              v209 = *(v8 + 128);
              v304 = *(v8 + 120);
              *(v8 + 120) = 0;
              ++*(v8 + 112);
              v303 = 1;
              v305 = v209;
              *(v8 + 128) = 0;
              v210 = *(v8 + 144);
              v306 = *(v8 + 136);
              *(v8 + 136) = 0;
              v307 = v210;
              *(v8 + 144) = 0;
              v309 = *(v8 + 160);
              *(v8 + 160) = 0;
              ++*(v8 + 152);
              v211 = v8;
              v308 = 1;
              do
              {
                v212 = &v211[11 * v204];
                v213 = v212 + 22;
                if (2 * v204 + 2 >= v203)
                {
                  v204 = (2 * v204) | 1;
                }

                else
                {
                  v214 = vmaxnm_f32(vsub_f32(v212[48], v212[46]), 0);
                  v215 = vmaxnm_f32(vsub_f32(v212[26], v212[24]), 0);
                  v216 = vmul_f32(vzip1_s32(v215, v214), vzip2_s32(v215, v214));
                  v217 = v212 + 44;
                  if (vcgt_f32(v216, vdup_lane_s32(v216, 1)).u8[0])
                  {
                    v213 = v217;
                    v204 = 2 * v204 + 2;
                  }

                  else
                  {
                    v204 = (2 * v204) | 1;
                  }
                }

                v218 = *v213->f32;
                v219 = *v213[4].f32;
                v211[1] = *v213[2].f32;
                v211[2] = v219;
                *v211 = v218;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v211 + 3), &v213[6]);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v211 + 88, &v213[11]);
                re::DynamicArray<re::RigComponentConstraint>::operator=((v211 + 8), &v213[16]);
                v211 = v213;
              }

              while (v204 <= ((v203 - 2) >> 1));
              a2 = v205 - 11;
              if (v213 == &v205[-11])
              {
                *v213[2].f32 = v295;
                *v213[4].f32 = v296;
                *v213->f32 = v294;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v213[6], v297);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v213[11], &v300);
                re::DynamicArray<re::RigComponentConstraint>::operator=(&v213[16], &v305);
              }

              else
              {
                v220 = *a2;
                v221 = v205[-9];
                *v213[2].f32 = v205[-10];
                *v213[4].f32 = v221;
                *v213->f32 = v220;
                v222 = &v205[-8];
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v213[6], &v205[-8]);
                v223 = &v205[-6].i64[1];
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v213[11], &v205[-6].i64[1]);
                v224 = &v205[-3];
                re::DynamicArray<re::RigComponentConstraint>::operator=(&v213[16], v224);
                *a2 = v294;
                a2[1] = v295;
                a2[2] = v296;
                re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v222, v297);
                re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v223, &v300);
                re::DynamicArray<re::RigComponentConstraint>::operator=(v224, &v305);
                v225 = &v213[22] - v8;
                if (v225 >= 177)
                {
                  v226 = (0x2E8BA2E8BA2E8BA3 * (v225 >> 4) - 2) >> 1;
                  v227 = v8 + 176 * v226;
                  v228 = vmaxnm_f32(vsub_f32(*(v227 + 32), *(v227 + 16)), 0);
                  v229 = vmaxnm_f32(vsub_f32(v213[4], v213[2]), 0);
                  v230 = vmul_f32(vzip1_s32(v228, v229), vzip2_s32(v228, v229));
                  if (vcgt_f32(v230, vdup_lane_s32(v230, 1)).u32[0])
                  {
                    v231 = *v213->f32;
                    v232 = *v213[2].f32;
                    v233 = *v213[4].f32;
                    v234 = v213[7];
                    v313 = v213[6];
                    v213[6] = 0;
                    *&v314 = v234;
                    v213[7] = 0;
                    *(&v314 + 1) = v213[8];
                    v213[8] = 0;
                    v235 = v213[11];
                    *&v316 = v213[10];
                    v213[10] = 0;
                    ++v213[9].i32[0];
                    *(&v316 + 1) = v235;
                    v213[11] = 0;
                    v236 = v213[13];
                    *&v317 = v213[12];
                    v213[12] = 0;
                    *(&v317 + 1) = v236;
                    v213[13] = 0;
                    v237 = v213[16];
                    *&v319 = v213[15];
                    v213[15] = 0;
                    ++v213[14].i32[0];
                    *(&v319 + 1) = v237;
                    v213[16] = 0;
                    v238 = v213[18];
                    *&v320 = v213[17];
                    v311 = v232;
                    v312 = v233;
                    v310 = v231;
                    v315 = 1;
                    v318 = 1;
                    v213[17] = 0;
                    *(&v320 + 1) = v238;
                    v213[18] = 0;
                    v322 = v213[20];
                    v213[20] = 0;
                    ++v213[19].i32[0];
                    v239 = vmaxnm_f32(*&vsubq_f32(v312, v311), 0);
                    v321 = 1;
                    do
                    {
                      v240 = v227;
                      v241 = *v227;
                      v242 = *(v227 + 32);
                      *v213[2].f32 = *(v227 + 16);
                      *v213[4].f32 = v242;
                      *v213->f32 = v241;
                      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v213[6], (v227 + 48));
                      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v213[11], (v240 + 88));
                      re::DynamicArray<re::RigComponentConstraint>::operator=(&v213[16], (v240 + 128));
                      if (!v226)
                      {
                        break;
                      }

                      v226 = (v226 - 1) >> 1;
                      v227 = v8 + 176 * v226;
                      v243 = vmaxnm_f32(vsub_f32(*(v227 + 32), *(v227 + 16)), 0);
                      v244 = vmul_f32(vzip1_s32(v243, v239), vzip2_s32(v243, v239));
                      v213 = v240;
                    }

                    while ((vcgt_f32(v244, vdup_lane_s32(v244, 1)).u8[0] & 1) != 0);
                    v245 = v310;
                    v246 = v312;
                    *(v240 + 16) = v311;
                    *(v240 + 32) = v246;
                    *v240 = v245;
                    re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v240 + 48, &v313);
                    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v240 + 88, &v316 + 1);
                    re::DynamicArray<re::RigComponentConstraint>::operator=(v240 + 128, &v319 + 1);
                    if (*(&v319 + 1))
                    {
                      if (v322)
                      {
                        (*(**(&v319 + 1) + 40))();
                      }

                      v322 = 0;
                      v320 = 0uLL;
                      *(&v319 + 1) = 0;
                      ++v321;
                    }

                    if (*(&v316 + 1))
                    {
                      if (v319)
                      {
                        (*(**(&v316 + 1) + 40))();
                      }

                      *&v319 = 0;
                      v317 = 0uLL;
                      *(&v316 + 1) = 0;
                      ++v318;
                    }

                    if (*&v313 && v316)
                    {
                      (*(**&v313 + 40))();
                    }
                  }
                }
              }

              if (v305)
              {
                if (v309)
                {
                  (*(*v305 + 40))();
                }

                v309 = 0;
                v306 = 0;
                v307 = 0;
                v305 = 0;
                ++v308;
              }

              if (v300)
              {
                if (v304)
                {
                  (*(*v300 + 40))();
                }

                v304 = 0;
                v301 = 0;
                v302 = 0;
                v300 = 0;
                ++v303;
              }

              result = v297[0];
              if (v297[0] && v299)
              {
                result = (*(*v297[0] + 40))();
              }
            }

            while (v203-- > 2);
          }

          return result;
        }

        v14 = v12 >> 1;
        v15 = v10 + 176 * (v12 >> 1);
        if (v11 >= 0x5801)
        {
          v16 = vsubq_f32(*(v8 + 32), *(v8 + 16));
          v16.i32[3] = 0;
          v16.i64[0] = vmaxnmq_f32(v16, v9).u64[0];
          v17 = vmuls_lane_f32(v16.f32[0], *v16.f32, 1);
          *v16.f32 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
          v18 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v19 = vmul_f32(vzip1_s32(v18, *v16.f32), vzip2_s32(v18, *v16.f32));
          if (v19.f32[1] <= v17)
          {
            {
LABEL_27:
              v37 = v8 + 176 * v14;
              v38 = v37 - 176;
              v39 = vsubq_f32(*(v8 + 208), *(v8 + 192));
              v39.i32[3] = 0;
              v39.i64[0] = vmaxnmq_f32(v39, 0).u64[0];
              v40 = vmuls_lane_f32(v39.f32[0], *v39.f32, 1);
              *v39.f32 = vmaxnm_f32(vsub_f32(*(v37 - 144), *(v37 - 160)), 0);
              v41 = vmaxnm_f32(vsub_f32(*v289, *v290), 0);
              v42 = vmul_f32(vzip1_s32(v41, *v39.f32), vzip2_s32(v41, *v39.f32));
              if (v42.f32[1] <= v40)
              {
                {
LABEL_39:
                  v54 = v8 + 176 * v14;
                  v55 = vsubq_f32(*(v8 + 384), *(v8 + 368));
                  v55.i32[3] = 0;
                  v55.i64[0] = vmaxnmq_f32(v55, 0).u64[0];
                  v56 = vmuls_lane_f32(v55.f32[0], *v55.f32, 1);
                  *v55.f32 = vmaxnm_f32(vsub_f32(*(v54 + 208), *(v54 + 192)), 0);
                  v57 = vmaxnm_f32(vsub_f32(*v287, *v288), 0);
                  v58 = vmul_f32(vzip1_s32(v57, *v55.f32), vzip2_s32(v57, *v55.f32));
                  if (v58.f32[1] <= v56)
                  {
                    {
LABEL_48:
                      v67 = vsubq_f32(*(v38 + 32), *(v38 + 16));
                      v67.i32[3] = 0;
                      v67.i64[0] = vmaxnmq_f32(v67, 0).u64[0];
                      v68 = vmuls_lane_f32(v67.f32[0], *v67.f32, 1);
                      *v67.f32 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
                      v69 = vmaxnm_f32(vsub_f32(*(v54 + 208), *(v54 + 192)), 0);
                      v70 = vmul_f32(vzip1_s32(v69, *v67.f32), vzip2_s32(v69, *v67.f32));
                      if (v70.f32[1] <= v68)
                      {
                        if (v70.f32[0] <= v70.f32[1])
                        {
                          goto LABEL_57;
                        }

                        v73 = vmaxnm_f32(vsub_f32(*(v38 + 32), *(v38 + 16)), 0);
                        v74 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
                        v75 = vmul_f32(vzip1_s32(v74, v73), vzip2_s32(v74, v73));
                        if ((vcgt_f32(v75, vdup_lane_s32(v75, 1)).u8[0] & 1) == 0)
                        {
                          goto LABEL_57;
                        }

                        v72 = v38;
                        v71 = v15;
                      }

                      else if (v70.f32[0] <= v70.f32[1])
                      {
                        v76 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
                        v77 = vmaxnm_f32(vsub_f32(*(v54 + 208), *(v54 + 192)), 0);
                        v78 = vmul_f32(vzip1_s32(v77, v76), vzip2_s32(v77, v76));
                        if ((vcgt_f32(v78, vdup_lane_s32(v78, 1)).u8[0] & 1) == 0)
                        {
LABEL_57:
                          v29 = v8;
                          v33 = v15;
                          goto LABEL_58;
                        }

                        v71 = (v54 + 176);
                        v72 = v15;
                      }

                      else
                      {
                        v71 = (v54 + 176);
                        v72 = v38;
                      }

                      goto LABEL_57;
                    }

                    v59 = (v8 + 352);
                    v63 = (v54 + 176);
                  }

                  else
                  {
                    v59 = (v8 + 352);
                    if (v58.f32[0] <= v58.f32[1])
                    {
                      v60 = vmaxnm_f32(vsub_f32(*(v54 + 208), *(v54 + 192)), 0);
                      v61 = vmaxnm_f32(vsub_f32(*v287, *v288), 0);
                      v62 = vmul_f32(vzip1_s32(v61, v60), vzip2_s32(v61, v60));
                      if ((vcgt_f32(v62, vdup_lane_s32(v62, 1)).u8[0] & 1) == 0)
                      {
                        goto LABEL_48;
                      }

                      v59 = (v54 + 176);
                    }

                    v63 = a2 - 33;
                  }

                  goto LABEL_48;
                }

                v43 = (v8 + 176);
                v47 = v38;
              }

              else
              {
                v43 = (v8 + 176);
                if (v42.f32[0] <= v42.f32[1])
                {
                  v44 = vmaxnm_f32(vsub_f32(*(v38 + 32), *(v38 + 16)), 0);
                  v45 = vmaxnm_f32(vsub_f32(*v289, *v290), 0);
                  v46 = vmul_f32(vzip1_s32(v45, v44), vzip2_s32(v45, v44));
                  if ((vcgt_f32(v46, vdup_lane_s32(v46, 1)).u8[0] & 1) == 0)
                  {
                    goto LABEL_39;
                  }

                  v43 = v38;
                }

                v47 = a2 - 22;
              }

              goto LABEL_39;
            }

            v20 = v8;
            v24 = (v8 + 176 * (v12 >> 1));
          }

          else
          {
            v20 = v8;
            if (v19.f32[0] <= v19.f32[1])
            {
              v21 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
              v22 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
              v23 = vmul_f32(vzip1_s32(v22, v21), vzip2_s32(v22, v21));
              if ((vcgt_f32(v23, vdup_lane_s32(v23, 1)).u8[0] & 1) == 0)
              {
                goto LABEL_27;
              }

              v20 = (v8 + 176 * (v12 >> 1));
            }

            v24 = a2 - 11;
          }

          goto LABEL_27;
        }

        v25 = vsubq_f32(*(v15 + 32), *(v15 + 16));
        v25.i32[3] = 0;
        v25.i64[0] = vmaxnmq_f32(v25, v9).u64[0];
        v26 = vmuls_lane_f32(v25.f32[0], *v25.f32, 1);
        *v25.f32 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
        v27 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
        v28 = vmul_f32(vzip1_s32(v27, *v25.f32), vzip2_s32(v27, *v25.f32));
        if (v28.f32[1] <= v26)
        {
          if (v28.f32[0] > v28.f32[1])
          {
            v48 = vmaxnm_f32(vsub_f32(*(v15 + 32), *(v15 + 16)), 0);
            v49 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
            v50 = vmul_f32(vzip1_s32(v49, v48), vzip2_s32(v49, v48));
            if (vcgt_f32(v50, vdup_lane_s32(v50, 1)).u8[0])
            {
              v29 = (v8 + 176 * (v12 >> 1));
              v33 = v8;
              goto LABEL_58;
            }
          }
        }

        else
        {
          v29 = (v8 + 176 * (v12 >> 1));
          if (v28.f32[0] > v28.f32[1])
          {
            goto LABEL_22;
          }

          v30 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
          v31 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
          v32 = vmul_f32(vzip1_s32(v31, v30), vzip2_s32(v31, v30));
          if (vcgt_f32(v32, vdup_lane_s32(v32, 1)).u8[0])
          {
            v29 = v8;
LABEL_22:
            v33 = a2 - 11;
LABEL_58:
          }
        }

        --a3;
        if (a4)
        {
          break;
        }

        v79 = vmaxnm_f32(vsub_f32(*(v8 + 32), *(v8 + 16)), 0);
        v80 = vmaxnm_f32(vsub_f32(*(v8 - 144), *(v8 - 160)), 0);
        v81 = vmul_f32(vzip1_s32(v80, v79), vzip2_s32(v80, v79));
        if (vcgt_f32(v81, vdup_lane_s32(v81, 1)).u8[0])
        {
          break;
        }

        v113 = *v8;
        v114 = *(v8 + 16);
        v115 = *(v8 + 32);
        v313 = *(v8 + 48);
        *(v8 + 48) = 0;
        v116 = *(v8 + 64);
        *&v314 = *(v8 + 56);
        *(v8 + 56) = 0;
        *(&v314 + 1) = v116;
        *(v8 + 64) = 0;
        *&v316 = *(v8 + 80);
        *(v8 + 80) = 0;
        ++*(v8 + 72);
        *(&v316 + 1) = *(v8 + 88);
        *(v8 + 88) = 0;
        v117 = *(v8 + 104);
        *&v317 = *(v8 + 96);
        *(v8 + 96) = 0;
        *(&v317 + 1) = v117;
        *(v8 + 104) = 0;
        *&v319 = *(v8 + 120);
        *(v8 + 120) = 0;
        v118 = *(v8 + 128);
        ++*(v8 + 112);
        *(&v319 + 1) = v118;
        *(v8 + 128) = 0;
        v119 = *(v8 + 144);
        *&v320 = *(v8 + 136);
        v311 = v114;
        v312 = v115;
        v310 = v113;
        v315 = 1;
        v318 = 1;
        *(v8 + 136) = 0;
        *(&v320 + 1) = v119;
        *(v8 + 144) = 0;
        v322 = *(v8 + 160);
        *(v8 + 160) = 0;
        ++*(v8 + 152);
        v321 = 1;
        *&v113 = vmaxnm_f32(vsub_f32(*a2[-9].f32, *a2[-10].f32), 0);
        *v114.f32 = vmaxnm_f32(vsub_f32(*v312.f32, *v311.f32), 0);
        v120 = vmul_f32(vzip1_s32(*v114.f32, *&v113), vzip2_s32(*v114.f32, *&v113));
        if (vcgt_f32(v120, vdup_lane_s32(v120, 1)).u8[0])
        {
          v121 = v8;
          v122 = 0uLL;
          do
          {
            v10 = &v121[11];
            v123 = vsubq_f32(v121[13], v121[12]);
            v123.i32[3] = 0;
            v123.i64[0] = vmaxnmq_f32(v123, 0).u64[0];
            v121 += 11;
          }

          while (*v120.i32 <= vmuls_lane_f32(v123.f32[0], *v123.f32, 1));
        }

        else
        {
          v124 = (v8 + 176);
          v122 = 0uLL;
          do
          {
            v10 = v124;
            if (v124 >= a2)
            {
              break;
            }

            v125 = vsubq_f32(v124[2], v124[1]);
            v125.i32[3] = 0;
            v125.i64[0] = vmaxnmq_f32(v125, 0).u64[0];
            v124 += 11;
          }

          while (*v120.i32 <= vmuls_lane_f32(v125.f32[0], *v125.f32, 1));
        }

        v126 = a2;
        if (v10 < a2)
        {
          v127 = a2;
          do
          {
            v126 = v127 - 11;
            v128 = vsubq_f32(v127[-9], v127[-10]);
            v128.i32[3] = 0;
            v128.i64[0] = vmaxnmq_f32(v128, v122).u64[0];
            v127 -= 11;
          }

          while (*v120.i32 > vmuls_lane_f32(v128.f32[0], *v128.f32, 1));
        }

        if (v10 < v126)
        {
          v293 = *v120.i32;
          do
          {
            do
            {
              v130 = *(v10 + 192);
              v129 = *(v10 + 208);
              v10 += 176;
              v131 = vsubq_f32(v129, v130);
              v131.i32[3] = 0;
              v131.i64[0] = vmaxnmq_f32(v131, 0).u64[0];
            }

            while (v293 <= vmuls_lane_f32(v131.f32[0], *v131.f32, 1));
            do
            {
              v133 = v126[-10];
              v132 = v126[-9];
              v126 -= 11;
              v134 = vsubq_f32(v132, v133);
              v134.i32[3] = 0;
              v134.i64[0] = vmaxnmq_f32(v134, 0).u64[0];
            }

            while (v293 > vmuls_lane_f32(v134.f32[0], *v134.f32, 1));
          }

          while (v10 < v126);
        }

        v135 = (v10 - 176);
        if (v10 - 176 != v8)
        {
          v136 = *v135;
          v137 = *(v10 - 144);
          *(v8 + 16) = *(v10 - 160);
          *(v8 + 32) = v137;
          *v8 = v136;
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 + 48, (v10 - 128));
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 + 88, (v10 - 88));
          re::DynamicArray<re::RigComponentConstraint>::operator=(v8 + 128, (v10 - 48));
        }

        v138 = v310;
        v139 = v312;
        *(v10 - 160) = v311;
        *(v10 - 144) = v139;
        *v135 = v138;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v10 - 128, &v313);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 - 88, &v316 + 1);
        re::DynamicArray<re::RigComponentConstraint>::operator=(v10 - 48, &v319 + 1);
        if (*(&v319 + 1))
        {
          if (v322)
          {
            (*(**(&v319 + 1) + 40))();
          }

          v322 = 0;
          v320 = 0uLL;
          *(&v319 + 1) = 0;
          ++v321;
        }

        v9 = 0uLL;
        if (*(&v316 + 1))
        {
          if (v319)
          {
            (*(**(&v316 + 1) + 40))();
            v9 = 0uLL;
          }

          *&v319 = 0;
          v317 = 0uLL;
          *(&v316 + 1) = 0;
          ++v318;
        }

        result = v313;
        if (*&v313 && v316)
        {
          result = (*(**&v313 + 40))();
          goto LABEL_94;
        }

LABEL_95:
        a4 = 0;
      }

      v82 = 0;
      v83 = *v8;
      v84 = *(v8 + 16);
      v85 = *(v8 + 32);
      v313 = *(v8 + 48);
      *(v8 + 48) = 0;
      v86 = *(v8 + 64);
      *&v314 = *(v8 + 56);
      *(v8 + 56) = 0;
      *(&v314 + 1) = v86;
      *(v8 + 64) = 0;
      *&v316 = *(v8 + 80);
      *(v8 + 80) = 0;
      ++*(v8 + 72);
      *(&v316 + 1) = *(v8 + 88);
      *(v8 + 88) = 0;
      v87 = *(v8 + 104);
      *&v317 = *(v8 + 96);
      *(v8 + 96) = 0;
      *(&v317 + 1) = v87;
      *(v8 + 104) = 0;
      *&v319 = *(v8 + 120);
      *(v8 + 120) = 0;
      ++*(v8 + 112);
      *(&v319 + 1) = *(v8 + 128);
      *(v8 + 128) = 0;
      v88 = *(v8 + 144);
      *&v320 = *(v8 + 136);
      *(v8 + 136) = 0;
      *(&v320 + 1) = v88;
      *(v8 + 144) = 0;
      v322 = *(v8 + 160);
      ++*(v8 + 152);
      v311 = v84;
      v312 = v85;
      v310 = v83;
      v315 = 1;
      v318 = 1;
      *(v8 + 160) = 0;
      v89 = vsubq_f32(v312, v311);
      v89.i32[3] = 0;
      v89.i64[0] = vmaxnmq_f32(v89, 0).u64[0];
      v90 = vmuls_lane_f32(v89.f32[0], *v89.f32, 1);
      v321 = 1;
      do
      {
        v91 = vsubq_f32(*(v8 + v82 + 208), *(v8 + v82 + 192));
        v91.i32[3] = 0;
        v91.i64[0] = vmaxnmq_f32(v91, 0).u64[0];
        v82 += 176;
      }

      while (vmuls_lane_f32(v91.f32[0], *v91.f32, 1) > v90);
      v92 = v8 + v82;
      v93 = a2;
      if (v82 == 176)
      {
        v96 = a2;
        while (v92 < v96)
        {
          v94 = v96 - 11;
          v97 = vsubq_f32(v96[-9], v96[-10]);
          v97.i32[3] = 0;
          v97.i64[0] = vmaxnmq_f32(v97, 0).u64[0];
          v96 -= 11;
          if (vmuls_lane_f32(v97.f32[0], *v97.f32, 1) > v90)
          {
            goto LABEL_71;
          }
        }

        v94 = v96;
      }

      else
      {
        do
        {
          v94 = v93 - 11;
          v95 = vsubq_f32(v93[-9], v93[-10]);
          v95.i32[3] = 0;
          v95.i64[0] = vmaxnmq_f32(v95, 0).u64[0];
          v93 -= 11;
        }

        while (vmuls_lane_f32(v95.f32[0], *v95.f32, 1) <= v90);
      }

LABEL_71:
      v10 = v92;
      if (v92 < v94)
      {
        v98 = v94;
        do
        {
          do
          {
            v100 = *(v10 + 192);
            v99 = *(v10 + 208);
            v10 += 176;
            v101 = vsubq_f32(v99, v100);
            v101.i32[3] = 0;
            v101.i64[0] = vmaxnmq_f32(v101, 0).u64[0];
          }

          while (vmuls_lane_f32(v101.f32[0], *v101.f32, 1) > v90);
          do
          {
            v103 = *(v98 - 10);
            v102 = *(v98 - 9);
            v98 -= 22;
            v104 = vsubq_f32(v102, v103);
            v104.i32[3] = 0;
            v104.i64[0] = vmaxnmq_f32(v104, 0).u64[0];
          }

          while (vmuls_lane_f32(v104.f32[0], *v104.f32, 1) <= v90);
        }

        while (v10 < v98);
      }

      v105 = (v10 - 176);
      if (v10 - 176 != v8)
      {
        v106 = *v105;
        v107 = *(v10 - 144);
        *(v8 + 16) = *(v10 - 160);
        *(v8 + 32) = v107;
        *v8 = v106;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v8 + 48, (v10 - 128));
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v8 + 88, (v10 - 88));
        re::DynamicArray<re::RigComponentConstraint>::operator=(v8 + 128, (v10 - 48));
      }

      v108 = v310;
      v109 = v312;
      *(v10 - 160) = v311;
      *(v10 - 144) = v109;
      *v105 = v108;
      re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v10 - 128, &v313);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v10 - 88, &v316 + 1);
      re::DynamicArray<re::RigComponentConstraint>::operator=(v10 - 48, &v319 + 1);
      if (*(&v319 + 1))
      {
        if (v322)
        {
          (*(**(&v319 + 1) + 40))();
        }

        v322 = 0;
        v320 = 0uLL;
        *(&v319 + 1) = 0;
        ++v321;
      }

      if (*(&v316 + 1))
      {
        if (v319)
        {
          (*(**(&v316 + 1) + 40))();
        }

        *&v319 = 0;
        v317 = 0uLL;
        *(&v316 + 1) = 0;
        ++v318;
      }

      if (v313)
      {
        if (v316)
        {
          (*(**&v313 + 40))();
        }
      }

      if (v92 < v94)
      {
LABEL_93:
LABEL_94:
        v9 = 0uLL;
        goto LABEL_95;
      }

      if (result)
      {
        break;
      }

      v9 = 0uLL;
      if (!v112)
      {
        goto LABEL_93;
      }
    }

    a2 = (v10 - 176);
    v9 = 0uLL;
    if (!v112)
    {
      continue;
    }

    return result;
  }
}

float32x4_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *,0>(float32x4_t *result, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5)
{
  v9 = result;
  v10 = vsubq_f32(result[2], result[1]);
  v10.i32[3] = 0;
  v11 = vmaxnmq_f32(v10, 0).u64[0];
  v12 = vmuls_lane_f32(v11.f32[0], v11, 1);
  v13 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
  *v10.f32 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
  v14 = vmul_f32(vzip1_s32(*v10.f32, v13), vzip2_s32(*v10.f32, v13));
  if (v14.f32[1] <= v12)
  {
    if (v14.f32[0] > v14.f32[1])
    {
      v19 = vmaxnm_f32(vsub_f32(*v9[2].f32, *v9[1].f32), 0);
      v20 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
      v21 = vmul_f32(vzip1_s32(v20, v19), vzip2_s32(v20, v19));
      if (vcgt_f32(v21, vdup_lane_s32(v21, 1)).u8[0])
      {
        result = v9;
        v18 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v14.f32[0] > v14.f32[1])
    {
LABEL_5:
      v18 = a3;
LABEL_9:
      goto LABEL_10;
    }

    v15 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
    v16 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
    v17 = vmul_f32(vzip1_s32(v16, v15), vzip2_s32(v16, v15));
    if (vcgt_f32(v17, vdup_lane_s32(v17, 1)).u8[0])
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v22 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
  v23 = vmaxnm_f32(vsub_f32(a4[4], a4[2]), 0);
  v24 = vmul_f32(vzip1_s32(v23, v22), vzip2_s32(v23, v22));
  if (vcgt_f32(v24, vdup_lane_s32(v24, 1)).u8[0])
  {
    v25 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
    v26 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
    v27 = vmul_f32(vzip1_s32(v26, v25), vzip2_s32(v26, v25));
    if (vcgt_f32(v27, vdup_lane_s32(v27, 1)).u8[0])
    {
      v28 = vmaxnm_f32(vsub_f32(*v9[2].f32, *v9[1].f32), 0);
      v29 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
      v30 = vmul_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
      if (vcgt_f32(v30, vdup_lane_s32(v30, 1)).u8[0])
      {
      }
    }
  }

  v31 = vmaxnm_f32(vsub_f32(a4[4], a4[2]), 0);
  v32 = vmaxnm_f32(vsub_f32(a5[4], a5[2]), 0);
  v33 = vmul_f32(vzip1_s32(v32, v31), vzip2_s32(v32, v31));
  if (vcgt_f32(v33, vdup_lane_s32(v33, 1)).u32[0])
  {
    v34 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
    v35 = vmaxnm_f32(vsub_f32(a4[4], a4[2]), 0);
    v36 = vmul_f32(vzip1_s32(v35, v34), vzip2_s32(v35, v34));
    if (vcgt_f32(v36, vdup_lane_s32(v36, 1)).u32[0])
    {
      v37 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
      v38 = vmaxnm_f32(vsub_f32(a3[4], a3[2]), 0);
      v39 = vmul_f32(vzip1_s32(v38, v37), vzip2_s32(v38, v37));
      if (vcgt_f32(v39, vdup_lane_s32(v39, 1)).u32[0])
      {
        v40 = vmaxnm_f32(vsub_f32(*v9[2].f32, *v9[1].f32), 0);
        v41 = vmaxnm_f32(vsub_f32(a2[4], a2[2]), 0);
        v42 = vmul_f32(vzip1_s32(v41, v40), vzip2_s32(v41, v40));
        if (vcgt_f32(v42, vdup_lane_s32(v42, 1)).u32[0])
        {
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::loadControlHullFromCoreText(__CTFont const*,unsigned short)::$_0 &,re::anonymous namespace::PiecewiseBezierCurve *>(float32x2_t *a1, float32x2_t *a2)
{
  v3 = a1;
  v83 = *MEMORY[0x1E69E9840];
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = vsubq_f32(*a1[4].f32, *a1[2].f32);
      v9.i32[3] = 0;
      v10 = vmaxnmq_f32(v9, 0).u64[0];
      v11 = vmuls_lane_f32(v10.f32[0], v10, 1);
      v12 = vmaxnm_f32(vsub_f32(a1[26], a1[24]), 0);
      *v9.f32 = vmaxnm_f32(vsub_f32(a2[-18], a2[-20]), 0);
      v13 = vmul_f32(vzip1_s32(*v9.f32, v12), vzip2_s32(*v9.f32, v12));
      if (v13.f32[1] > v11)
      {
        if (v13.f32[0] <= v13.f32[1])
        {
          v36 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
          v37 = vmaxnm_f32(vsub_f32(a2[-18], a2[-20]), 0);
          v38 = vmul_f32(vzip1_s32(v37, v36), vzip2_s32(v37, v36));
          if ((vcgt_f32(v38, vdup_lane_s32(v38, 1)).u32[0] & 1) == 0)
          {
            return 1;
          }

          a1 = v3 + 22;
        }

        v8 = &a2[-22];
LABEL_66:
        return 1;
      }

      if (v13.f32[0] <= v13.f32[1])
      {
        return 1;
      }

      v26 = &a1[22];
      v27 = &a2[-22];
LABEL_63:
      v66 = vmaxnm_f32(vsub_f32(v3[4], v3[2]), 0);
      v67 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
      v68 = vmul_f32(vzip1_s32(v67, v66), vzip2_s32(v67, v66));
      if (vcgt_f32(v68, vdup_lane_s32(v68, 1)).u32[0])
      {
        v8 = &v3[22];
        goto LABEL_65;
      }

      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        return 1;
      }

      goto LABEL_13;
    }

    v20 = vsubq_f32(*a1[4].f32, *a1[2].f32);
    v20.i32[3] = 0;
    v21 = vmaxnmq_f32(v20, 0).u64[0];
    v22 = vmuls_lane_f32(v21.f32[0], v21, 1);
    v23 = vmaxnm_f32(vsub_f32(a1[26], a1[24]), 0);
    *v20.f32 = vmaxnm_f32(vsub_f32(a1[48], a1[46]), 0);
    v24 = vmul_f32(vzip1_s32(*v20.f32, v23), vzip2_s32(*v20.f32, v23));
    if (v24.f32[1] <= v22)
    {
      if (v24.f32[0] <= v24.f32[1])
      {
        goto LABEL_60;
      }

      v32 = vmaxnm_f32(vsub_f32(v3[4], v3[2]), 0);
      v33 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
      v34 = vmul_f32(vzip1_s32(v33, v32), vzip2_s32(v33, v32));
      if ((vcgt_f32(v34, vdup_lane_s32(v34, 1)).u8[0] & 1) == 0)
      {
        goto LABEL_60;
      }

      v25 = &v3[22];
    }

    else
    {
      if (v24.f32[0] <= v24.f32[1])
      {
        v57 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
        v58 = vmaxnm_f32(vsub_f32(v3[48], v3[46]), 0);
        v59 = vmul_f32(vzip1_s32(v58, v57), vzip2_s32(v58, v57));
        if ((vcgt_f32(v59, vdup_lane_s32(v59, 1)).u8[0] & 1) == 0)
        {
          goto LABEL_60;
        }

        v35 = &v3[22];
        v25 = &v3[44];
LABEL_59:
LABEL_60:
        v60 = vmaxnm_f32(vsub_f32(v3[48], v3[46]), 0);
        v61 = vmaxnm_f32(vsub_f32(a2[-18], a2[-20]), 0);
        v62 = vmul_f32(vzip1_s32(v61, v60), vzip2_s32(v61, v60));
        if ((vcgt_f32(v62, vdup_lane_s32(v62, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v63 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
        v64 = vmaxnm_f32(vsub_f32(v3[48], v3[46]), 0);
        v65 = vmul_f32(vzip1_s32(v64, v63), vzip2_s32(v64, v63));
        if ((vcgt_f32(v65, vdup_lane_s32(v65, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v26 = &v3[22];
        v27 = &v3[44];
        goto LABEL_63;
      }

      v25 = &a1[44];
    }

    v35 = v3;
    goto LABEL_59;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = vmaxnm_f32(vsub_f32(a1[4], a1[2]), 0);
    v6 = vmaxnm_f32(vsub_f32(a2[-18], a2[-20]), 0);
    v7 = vmul_f32(vzip1_s32(v6, v5), vzip2_s32(v6, v5));
    if (vcgt_f32(v7, vdup_lane_s32(v7, 1)).u32[0])
    {
      v8 = &a2[-22];
LABEL_65:
      a1 = v3;
      goto LABEL_66;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 44;
  v15 = vsubq_f32(*a1[4].f32, *a1[2].f32);
  v15.i32[3] = 0;
  v16 = vmaxnmq_f32(v15, 0).u64[0];
  v17 = vmuls_lane_f32(v16.f32[0], v16, 1);
  v18 = vmaxnm_f32(vsub_f32(a1[26], a1[24]), 0);
  *v15.f32 = vmaxnm_f32(vsub_f32(a1[48], a1[46]), 0);
  v19 = vmul_f32(vzip1_s32(*v15.f32, v18), vzip2_s32(*v15.f32, v18));
  if (v19.f32[1] > v17)
  {
    if (v19.f32[0] <= v19.f32[1])
    {
      v39 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
      v40 = vmaxnm_f32(vsub_f32(v3[48], v3[46]), 0);
      v41 = vmul_f32(vzip1_s32(v40, v39), vzip2_s32(v40, v39));
      if ((vcgt_f32(v41, vdup_lane_s32(v41, 1)).u32[0] & 1) == 0)
      {
        goto LABEL_35;
      }

      a1 = v3 + 22;
    }

    v31 = &v3[44];
    goto LABEL_34;
  }

  if (v19.f32[0] > v19.f32[1])
  {
    v28 = vmaxnm_f32(vsub_f32(v3[4], v3[2]), 0);
    v29 = vmaxnm_f32(vsub_f32(v3[26], v3[24]), 0);
    v30 = vmul_f32(vzip1_s32(v29, v28), vzip2_s32(v29, v28));
    if (vcgt_f32(v30, vdup_lane_s32(v30, 1)).u32[0])
    {
      v31 = &v3[22];
      a1 = v3;
LABEL_34:
    }
  }

LABEL_35:
  v42 = v3 + 66;
  v43 = 1;
  if (&v3[66] != a2)
  {
    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = vmaxnm_f32(vsub_f32(v14[4], v14[2]), 0);
      v47 = vmaxnm_f32(vsub_f32(v42[4], v42[2]), 0);
      v48 = vmul_f32(vzip1_s32(v47, v46), vzip2_s32(v47, v46));
      if (vcgt_f32(v48, vdup_lane_s32(v48, 1)).u32[0])
      {
        v70 = *v42->f32;
        v71 = *v42[2].f32;
        v72 = *v42[4].f32;
        v73 = v42[6];
        v42[6] = 0;
        v74 = *v42[7].f32;
        *v42[7].f32 = 0u;
        ++v42[9].i32[0];
        v75 = 1;
        v49 = *v42[12].f32;
        v76 = *v42[10].f32;
        v77 = v49;
        *v42[10].f32 = 0u;
        *v42[12].f32 = 0u;
        ++v42[14].i32[0];
        v78 = 1;
        v79 = *v42[15].f32;
        *v42[15].f32 = 0u;
        v80 = *v42[17].f32;
        *v42[17].f32 = 0u;
        v82 = v42[20];
        v42[20] = 0;
        ++v42[19].i32[0];
        v50 = v44;
        v81 = 1;
        while (1)
        {
          v51 = v3 + v50;
          v52 = *(v3[46].f32 + v50);
          *(v51 + 33) = *(v3[44].f32 + v50);
          *(v51 + 34) = v52;
          *(v51 + 35) = *(v3[48].f32 + v50);
          re::DynamicArray<re::internal::DeferredUnregister *>::operator=(&v3[72] + v50, (&v3[50] + v50));
          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v51 + 616), v51 + 55);
          re::DynamicArray<re::RigComponentConstraint>::operator=((v51 + 656), v51 + 60);
          if (v50 == -352)
          {
            break;
          }

          v53 = vmaxnm_f32(vsub_f32(*(v51 + 208), *(v51 + 192)), 0);
          v54 = vmaxnm_f32(vsub_f32(*&v72, *&v71), 0);
          v55 = vmul_f32(vzip1_s32(v54, v53), vzip2_s32(v54, v53));
          v50 -= 176;
          if ((vcgt_f32(v55, vdup_lane_s32(v55, 1)).u8[0] & 1) == 0)
          {
            v56 = (v3 + v50 + 528);
            goto LABEL_43;
          }
        }

        v56 = v3;
LABEL_43:
        *v56->f32 = v70;
        *v56[2].f32 = v71;
        *v56[4].f32 = v72;
        re::DynamicArray<re::internal::DeferredUnregister *>::operator=((v51 + 400), &v73);
        re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v51 + 440), &v76 + 1);
        re::DynamicArray<re::RigComponentConstraint>::operator=((v51 + 480), &v79 + 1);
        if (*(&v79 + 1))
        {
          if (v82)
          {
            (*(**(&v79 + 1) + 40))();
          }

          v82 = 0;
          v80 = 0uLL;
          *(&v79 + 1) = 0;
          ++v81;
        }

        if (*(&v76 + 1))
        {
          if (v79)
          {
            (*(**(&v76 + 1) + 40))();
          }

          *&v79 = 0;
          v77 = 0uLL;
          *(&v76 + 1) = 0;
          ++v78;
        }

        if (*&v73 && v76)
        {
          (*(**&v73 + 40))();
        }

        if (++v45 == 8)
        {
          return &v42[22] == a2;
        }
      }

      v14 = v42;
      v44 += 176;
      v42 += 22;
      if (v42 == a2)
      {
        return 1;
      }
    }
  }

  return v43;
}

uint64_t std::iter_swap[abi:nn200100]<re::anonymous namespace::PiecewiseBezierCurve *,re::anonymous namespace::PiecewiseBezierCurve *>(__int128 *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v5 = *(a1 + 6);
  v4 = a1 + 3;
  v13 = v5;
  *v4 = 0;
  v14 = *(a1 + 56);
  *(a1 + 56) = 0u;
  ++*(a1 + 18);
  v15 = 1;
  v6 = a1[6];
  v16 = a1[5];
  v17 = v6;
  a1[5] = 0u;
  a1[6] = 0u;
  ++*(a1 + 28);
  v18 = 1;
  v19 = *(a1 + 120);
  *(a1 + 120) = 0u;
  v20 = *(a1 + 136);
  *(a1 + 136) = 0u;
  v22 = *(a1 + 20);
  *(a1 + 20) = 0;
  ++*(a1 + 38);
  v21 = 1;
  v7 = *a2;
  v8 = *(a2 + 2);
  a1[1] = *(a2 + 1);
  a1[2] = v8;
  *a1 = v7;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v4, a2 + 6);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(a1 + 88, a2 + 11);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a1 + 8), a2 + 16);
  *a2 = v10;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=((a2 + 6), &v13);
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 11), &v16 + 1);
  re::DynamicArray<re::RigComponentConstraint>::operator=((a2 + 16), &v19 + 1);
  if (*(&v19 + 1))
  {
    if (v22)
    {
      (*(**(&v19 + 1) + 40))();
    }

    v22 = 0;
    v20 = 0uLL;
    *(&v19 + 1) = 0;
    ++v21;
  }

  if (*(&v16 + 1))
  {
    if (v19)
    {
      (*(**(&v16 + 1) + 40))();
    }

    *&v19 = 0;
    v17 = 0uLL;
    *(&v16 + 1) = 0;
    ++v18;
  }

  result = v13;
  if (v13)
  {
    if (v16)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::Boundary>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xE0uLL))
        {
          v2 = 224 * a2;
          result = (*(*result + 32))(result, 224 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 224, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v29, v31);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v30, v32);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 224 * v9;
        v11 = v8 + 176;
        v12 = v7;
        do
        {
          v13 = *(v11 - 176);
          v14 = *(v11 - 144);
          *(v12 + 1) = *(v11 - 160);
          *(v12 + 2) = v14;
          *v12 = v13;
          v12[10] = 0;
          v12[7] = 0;
          v12[8] = 0;
          v12[6] = 0;
          *(v12 + 18) = 0;
          v15 = *(v11 - 120);
          v12[6] = *(v11 - 128);
          *(v11 - 128) = 0;
          v12[7] = v15;
          *(v11 - 120) = 0;
          v16 = v12[8];
          v12[8] = *(v11 - 112);
          *(v11 - 112) = v16;
          v17 = v12[10];
          v12[10] = *(v11 - 96);
          *(v11 - 96) = v17;
          ++*(v11 - 104);
          LODWORD(v17) = *(v12 + 18) + 1;
          v12[15] = 0;
          v12[12] = 0;
          v12[13] = 0;
          v12[11] = 0;
          *(v12 + 28) = 0;
          v18 = *(v11 - 88);
          *(v12 + 18) = v17;
          v19 = *(v11 - 80);
          v12[11] = v18;
          *(v11 - 88) = 0;
          v12[12] = v19;
          *(v11 - 80) = 0;
          v20 = v12[13];
          v12[13] = *(v11 - 72);
          *(v11 - 72) = v20;
          v21 = v12[15];
          v12[15] = *(v11 - 56);
          *(v11 - 56) = v21;
          ++*(v11 - 64);
          ++*(v12 + 28);
          v12[20] = 0;
          v12[17] = 0;
          v12[18] = 0;
          v12[16] = 0;
          *(v12 + 38) = 0;
          v22 = *(v11 - 40);
          v12[16] = *(v11 - 48);
          *(v11 - 48) = 0;
          v12[17] = v22;
          *(v11 - 40) = 0;
          v23 = v12[18];
          v12[18] = *(v11 - 32);
          *(v11 - 32) = v23;
          v24 = v12[20];
          v12[20] = *(v11 - 16);
          *(v11 - 16) = v24;
          ++*(v11 - 24);
          ++*(v12 + 38);
          v12[26] = 0;
          v12[23] = 0;
          v12[24] = 0;
          v12[22] = 0;
          *(v12 + 50) = 0;
          v25 = *(v11 + 8);
          v12[22] = *v11;
          v12[23] = v25;
          *v11 = 0;
          *(v11 + 8) = 0;
          v26 = v12[24];
          v12[24] = *(v11 + 16);
          *(v11 + 16) = v26;
          v27 = v12[26];
          v12[26] = *(v11 + 32);
          *(v11 + 32) = v27;
          ++*(v11 + 24);
          ++*(v12 + 50);
          re::DynamicArray<unsigned long>::deinit(v11 - 48);
          re::DynamicArray<unsigned long>::deinit(v11 - 88);
          re::DynamicArray<unsigned long>::deinit(v11 - 128);
          v12 += 28;
          v28 = v11 + 48;
          v11 += 224;
        }

        while (v28 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

_anonymous_namespace_ *re::anonymous namespace::makeCurveTessellationWithUniformSampling(_anonymous_namespace_ *result, unsigned __int8 *a2, unsigned int a3)
{
  v120 = *MEMORY[0x1E69E9840];
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *result = vnegq_f32(v4);
  *(result + 1) = v4;
  *(result + 4) = 0;
  v5 = (result + 32);
  *(result + 5) = 0;
  *(result + 6) = 0;
  *(result + 14) = 0;
  *(result + 18) = 0;
  *(result + 4) = 0u;
  *(result + 5) = 0u;
  *(result + 24) = 0;
  *(result + 104) = 0u;
  *(result + 120) = 0u;
  *(result + 34) = 0;
  v6 = *a2 - 1;
  if (!*a2)
  {
    v6 = 0;
  }

  if (v6 <= a3)
  {
    v6 = a3;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  v8 = *(a2 + 13);
  if (v8)
  {
    v10 = result;
    v11 = (v7 + 1) * v8;
    v12 = (v11 + 1);
    if (v11 == -1)
    {
      v13 = 0;
    }

    else
    {
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 4, (v11 + 1));
      v13 = *(v10 + 10);
    }

    if (v13 < v12)
    {
      re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v10 + 9, v12);
    }

    if (!*(a2 + 8))
    {
      goto LABEL_104;
    }

    if (!*(a2 + 18))
    {
LABEL_108:
      v107 = 0;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v108 = 136315906;
      *&v108[4] = "operator[]";
      v109 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v110 = 797;
      v111 = 2048;
      v112 = 0;
      v113 = 2048;
      v114 = 0;
      _os_log_send_and_compose_impl(v97, &v107, &v115, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
      _os_crash_msg();
      __break(1u);
      goto LABEL_112;
    }

    v14 = **(a2 + 10);
    v15 = *(a2 + 20);
    __asm { FMOV            V8.2S, #3.0 }

    if (v14 == 3)
    {
      v23 = vadd_f32(vmul_f32(v15[3], 0), vadd_f32(*v15, vmul_f32(vadd_f32(vmul_f32(v15[1], 0), vmul_f32(v15[2], 0)), _D8)));
    }

    else
    {
      if (v14 == 2)
      {
        v21 = vadd_f32(*v15, vmul_f32(v15[1], 0));
        v22 = v15[2];
      }

      else
      {
        if (v14 != 1)
        {
          v24 = 0;
LABEL_25:
          *&v115 = v24;
          re::DynamicArray<unsigned long>::add(v5, &v115);
          if (*(a2 + 8))
          {
            if (*(a2 + 18))
            {
              v25 = v8;
              v26 = **(a2 + 10);
              v27 = *(a2 + 20);
              switch(v26)
              {
                case 3:
                  v31 = v27[2];
                  v29 = vadd_f32(vmul_f32(vsub_f32(v27[1], *v27), _D8), vmul_f32(vsub_f32(v31, v27[1]), 0));
                  v30 = vmul_f32(vsub_f32(v27[3], v31), 0);
                  break;
                case 2:
                  v29 = vsub_f32(vadd_f32(v27[1], v27[1]), vadd_f32(*v27, *v27));
                  v30 = vmul_f32(v27[2], 0);
                  break;
                case 1:
                  v28 = vsub_f32(v27[1], *v27);
LABEL_34:
                  v32 = v28;
LABEL_36:
                  *&v115 = v32;
                  re::DynamicArray<unsigned long>::add((v10 + 72), &v115);
                  v34 = 0;
                  v35.i64[0] = *(*(v10 + 8) + 8 * *(v10 + 6) - 8);
                  v36 = *v10;
                  v37 = *(v10 + 1);
                  v36.i32[3] = 0;
                  v37.i32[3] = 0;
                  *v10 = vminnmq_f32(v36, v35);
                  *(v10 + 1) = vmaxnmq_f32(v37, v35);
                  while (1)
                  {
                    v38 = *(a2 + 8);
                    if (v38 <= v34)
                    {
                      v107 = 0;
                      v118 = 0u;
                      v119 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v115 = 0u;
                      v83 = MEMORY[0x1E69E9C10];
                      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v108 = 136315906;
                      *&v108[4] = "operator[]";
                      v109 = 1024;
                      if (v84)
                      {
                        v85 = 3;
                      }

                      else
                      {
                        v85 = 2;
                      }

                      v110 = 797;
                      v111 = 2048;
                      v112 = v34;
                      v113 = 2048;
                      v114 = v38;
                      _os_log_send_and_compose_impl(v85, &v107, &v115, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
                      _os_crash_msg();
                      __break(1u);
LABEL_96:
                      v107 = 0;
                      v118 = 0u;
                      v119 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v115 = 0u;
                      v86 = MEMORY[0x1E69E9C10];
                      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v108 = 136315906;
                      *&v108[4] = "operator[]";
                      v109 = 1024;
                      if (v87)
                      {
                        v88 = 3;
                      }

                      else
                      {
                        v88 = 2;
                      }

                      v110 = 797;
                      v111 = 2048;
                      v112 = v34;
                      v113 = 2048;
                      v114 = v38;
                      _os_log_send_and_compose_impl(v88, &v107, &v115, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
                      _os_crash_msg();
                      __break(1u);
LABEL_100:
                      v107 = 0;
                      v118 = 0u;
                      v119 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v115 = 0u;
                      v89 = MEMORY[0x1E69E9C10];
                      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v108 = 136315906;
                      *&v108[4] = "operator[]";
                      v109 = 1024;
                      if (v90)
                      {
                        v91 = 3;
                      }

                      else
                      {
                        v91 = 2;
                      }

                      v110 = 797;
                      v111 = 2048;
                      v112 = v38;
                      v113 = 2048;
                      v114 = v3;
                      _os_log_send_and_compose_impl(v91, &v107, &v115, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
                      _os_crash_msg();
                      __break(1u);
LABEL_104:
                      v107 = 0;
                      v118 = 0u;
                      v119 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v115 = 0u;
                      v92 = MEMORY[0x1E69E9C10];
                      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v108 = 136315906;
                      *&v108[4] = "operator[]";
                      v109 = 1024;
                      if (v93)
                      {
                        v94 = 3;
                      }

                      else
                      {
                        v94 = 2;
                      }

                      v110 = 797;
                      v111 = 2048;
                      v112 = 0;
                      v113 = 2048;
                      v114 = 0;
                      _os_log_send_and_compose_impl(v94, &v107, &v115, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_108;
                    }

                    v38 = *(a2 + 13);
                    if (v38 <= v34)
                    {
                      goto LABEL_96;
                    }

                    v38 = *(*(a2 + 15) + 8 * v34);
                    v3 = *(a2 + 18);
                    if (v3 <= v38)
                    {
                      goto LABEL_100;
                    }

                    v3 = *(*(a2 + 10) + v34);
                    v39 = (*(a2 + 20) + 8 * v38);
                    if (v3 == 3)
                    {
                      break;
                    }

                    if (v3 == 2)
                    {
                      v41 = vsub_f32(vadd_f32(v39[1], v39[1]), vadd_f32(*v39, *v39));
                      v42 = vmul_f32(v39[2], 0);
LABEL_46:
                      v40 = vadd_f32(v41, v42);
                      goto LABEL_47;
                    }

                    if (v3 == 1)
                    {
                      v40 = vsub_f32(v39[1], *v39);
LABEL_47:
                      v44 = v40;
                      goto LABEL_49;
                    }

                    v44 = 0;
LABEL_49:
                    *&v115 = v44;
                    v45 = *(v10 + 13) + 8 * *(v10 + 11);
                    v46 = *(v45 - 8);
                    if (v46 != v44.f32[0] && vabds_f32(v46, v44.f32[0]) >= (((fabsf(v44.f32[0]) + fabsf(v46)) + 1.0) * 0.00001) || (v47 = *(v45 - 4), v47 != v44.f32[1]) && vabds_f32(v47, v44.f32[1]) >= (((fabsf(v44.f32[1]) + fabsf(v47)) + 1.0) * 0.00001))
                    {
                      *v108 = *(v10 + 11);
                      re::DynamicArray<int>::add((v10 + 112), v108);
                      re::DynamicArray<unsigned long>::add((v10 + 72), &v115);
                    }

                    if (v7)
                    {
                      v48 = 1;
                      v49 = v7;
                      while (1)
                      {
                        *&v33 = (1.0 / (v7 + 1)) * v48;
                        v50 = 1.0 - *&v33;
                        if (v3 == 3)
                        {
                          break;
                        }

                        if (v3 == 2)
                        {
                          v104 = v33;
                          v105 = 1.0 - *&v33;
                          *v108 = vadd_f32(vadd_f32(vmul_n_f32(*v39, v50 * v50), vmul_n_f32(v39[1], *&v33 * (v50 + v50))), vmul_n_f32(v39[2], *&v33 * *&v33));
                          re::DynamicArray<unsigned long>::add(v5, v108);
                          v52 = vadd_f32(vmul_n_f32(*v39, v105 * -2.0), vmul_n_f32(v39[1], (*&v104 * -4.0) + 2.0));
                          v53 = *&v104 + *&v104;
                          v54 = v39[2];
LABEL_62:
                          v51 = vadd_f32(v52, vmul_n_f32(v54, v53));
                          goto LABEL_63;
                        }

                        if (v3 != 1)
                        {
                          *v108 = 0;
                          re::DynamicArray<unsigned long>::add(v5, v108);
                          v58 = 0;
                          goto LABEL_65;
                        }

                        *v108 = vadd_f32(vmul_n_f32(*v39, v50), vmul_n_f32(v39[1], *&v33));
                        re::DynamicArray<unsigned long>::add(v5, v108);
                        v51 = vsub_f32(v39[1], *v39);
LABEL_63:
                        v58 = v51;
LABEL_65:
                        *v108 = v58;
                        re::DynamicArray<unsigned long>::add((v10 + 72), v108);
                        v59.i64[0] = *(*(v10 + 8) + 8 * *(v10 + 6) - 8);
                        v60 = *v10;
                        v61 = *(v10 + 1);
                        v60.i32[3] = 0;
                        v61.i32[3] = 0;
                        *v10 = vminnmq_f32(v60, v59);
                        *(v10 + 1) = vmaxnmq_f32(v61, v59);
                        ++v48;
                        if (!--v49)
                        {
                          goto LABEL_66;
                        }
                      }

                      v55 = v50 * v50;
                      v56 = *&v33 * *&v33;
                      v104 = v33;
                      v106 = 1.0 - *&v33;
                      *v108 = vadd_f32(vmul_n_f32(v39[3], *&v33 * (*&v33 * *&v33)), vadd_f32(vmul_n_f32(*v39, v50 * (v50 * v50)), vmul_f32(vadd_f32(vmul_n_f32(v39[1], *&v33 * (v50 * v50)), vmul_n_f32(v39[2], v50 * (*&v33 * *&v33))), _D8)));
                      re::DynamicArray<unsigned long>::add(v5, v108);
                      v57 = v39[2];
                      v52 = vadd_f32(vmul_n_f32(vsub_f32(v39[1], *v39), v55 * 3.0), vmul_n_f32(vsub_f32(v57, v39[1]), *&v104 * (v106 * 6.0)));
                      v53 = v56 * 3.0;
                      v54 = vsub_f32(v39[3], v57);
                      goto LABEL_62;
                    }

LABEL_66:
                    if (v3 == 3)
                    {
                      *v108 = vadd_f32(v39[3], vadd_f32(vmul_f32(*v39, 0), vmul_f32(vadd_f32(vmul_f32(v39[1], 0), vmul_f32(v39[2], 0)), _D8)));
                      re::DynamicArray<unsigned long>::add(v5, v108);
                      v65 = v39[2];
                      v63 = vadd_f32(vmul_f32(vsub_f32(v39[1], *v39), 0), vmul_f32(vsub_f32(v65, v39[1]), 0));
                      v64 = vmul_f32(vsub_f32(v39[3], v65), _D8);
                      goto LABEL_72;
                    }

                    if (v3 == 2)
                    {
                      *v108 = vadd_f32(v39[2], vadd_f32(vmul_f32(*v39, 0), vmul_f32(v39[1], 0)));
                      re::DynamicArray<unsigned long>::add(v5, v108);
                      v63 = vsub_f32(vmul_f32(*v39, 0x8000000080000000), vadd_f32(v39[1], v39[1]));
                      v64 = vadd_f32(v39[2], v39[2]);
LABEL_72:
                      v62 = vadd_f32(v63, v64);
                      goto LABEL_73;
                    }

                    if (v3 != 1)
                    {
                      *v108 = 0;
                      re::DynamicArray<unsigned long>::add(v5, v108);
                      v66 = 0;
                      goto LABEL_75;
                    }

                    *v108 = vadd_f32(vmul_f32(*v39, 0), v39[1]);
                    re::DynamicArray<unsigned long>::add(v5, v108);
                    v62 = vsub_f32(v39[1], *v39);
LABEL_73:
                    v66 = v62;
LABEL_75:
                    *v108 = v66;
                    re::DynamicArray<unsigned long>::add((v10 + 72), v108);
                    v67 = *(v10 + 8);
                    v68 = *(v10 + 6);
                    v69 = &v67[2 * v68];
                    v70.i64[0] = *(v69 - 1);
                    v71 = *v10;
                    v72 = *(v10 + 1);
                    v71.i32[3] = 0;
                    v72.i32[3] = 0;
                    *v10 = vminnmq_f32(v71, v70);
                    *(v10 + 1) = vmaxnmq_f32(v72, v70);
                    if (++v34 == v25)
                    {
                      v73 = v68 > 1;
                      v74 = v68 - 1;
                      if (v73 && ((v75 = *(v69 - 2), v75 == *v67) || vabds_f32(v75, *v67) < (((fabsf(v75) + fabsf(*v67)) + 1.0) * 0.00001)) && ((v76 = *(v69 - 1), v77 = v67[1], v76 == v77) || vabds_f32(v76, v77) < (((fabsf(v76) + fabsf(v77)) + 1.0) * 0.00001)))
                      {
                        *(v10 + 6) = v74;
                        ++*(v10 + 14);
                      }

                      else
                      {
                        v78 = *(a2 + 18);
                        if (v78 >= 2)
                        {
                          v79 = vsub_f32(**(a2 + 20), *(*(a2 + 20) + 8 * v78 - 8));
                          *&v115 = v79;
                          v80 = *(v10 + 13) + 8 * *(v10 + 11);
                          v81 = *(v80 - 8);
                          if (v81 != v79.f32[0] && vabds_f32(v81, v79.f32[0]) >= (((fabsf(v79.f32[0]) + fabsf(v81)) + 1.0) * 0.00001) || (v82 = *(v80 - 4), v82 != v79.f32[1]) && vabds_f32(v82, v79.f32[1]) >= (((fabsf(v79.f32[1]) + fabsf(v82)) + 1.0) * 0.00001))
                          {
                            *v108 = *(v10 + 11);
                            re::DynamicArray<int>::add((v10 + 112), v108);
                            re::DynamicArray<unsigned long>::add((v10 + 72), &v115);
                          }

                          re::DynamicArray<unsigned long>::add((v10 + 72), &v115);
                        }
                      }

                      LODWORD(v115) = *(v10 + 11);
                      return re::DynamicArray<int>::add((v10 + 112), &v115);
                    }
                  }

                  v43 = v39[2];
                  *&v33 = v39[3];
                  v41 = vadd_f32(vmul_f32(vsub_f32(v39[1], *v39), _D8), vmul_f32(vsub_f32(v43, v39[1]), 0));
                  v42 = vmul_f32(vsub_f32(*&v33, v43), 0);
                  goto LABEL_46;
                default:
                  v32 = 0;
                  goto LABEL_36;
              }

              v28 = vadd_f32(v29, v30);
              goto LABEL_34;
            }

LABEL_116:
            v107 = 0;
            v118 = 0u;
            v119 = 0u;
            v116 = 0u;
            v117 = 0u;
            v115 = 0u;
            v101 = MEMORY[0x1E69E9C10];
            v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v108 = 136315906;
            *&v108[4] = "operator[]";
            v109 = 1024;
            if (v102)
            {
              v103 = 3;
            }

            else
            {
              v103 = 2;
            }

            v110 = 797;
            v111 = 2048;
            v112 = 0;
            v113 = 2048;
            v114 = 0;
            _os_log_send_and_compose_impl(v103, &v107, &v115, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
            _os_crash_msg();
            __break(1u);
          }

LABEL_112:
          v107 = 0;
          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v115 = 0u;
          v98 = MEMORY[0x1E69E9C10];
          v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v108 = 136315906;
          *&v108[4] = "operator[]";
          v109 = 1024;
          if (v99)
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          v110 = 797;
          v111 = 2048;
          v112 = 0;
          v113 = 2048;
          v114 = 0;
          _os_log_send_and_compose_impl(v100, &v107, &v115, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v108, 38, v104, *(&v104 + 1));
          _os_crash_msg();
          __break(1u);
          goto LABEL_116;
        }

        v21 = *v15;
        v22 = v15[1];
      }

      v23 = vadd_f32(v21, vmul_f32(v22, 0));
    }

    v24 = v23;
    goto LABEL_25;
  }

  return result;
}

_anonymous_namespace_ *re::anonymous namespace::appendToArray<re::Vector2<float>>(_anonymous_namespace_ *this, uint64_t a2)
{
  v3 = this;
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = v4 + *(this + 2);
  if (*(this + 1) < v5)
  {
    this = re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(this, v5);
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    v6 = 0;
    for (i = 0; i != v4; ++i)
    {
      v8 = *(a2 + 16);
      if (v8 <= i)
      {
        v12 = 0;
        memset(v21, 0, sizeof(v21));
        v9 = MEMORY[0x1E69E9C10];
        v13 = 136315906;
        v14 = "operator[]";
        v15 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v16 = 797;
        v17 = 2048;
        v18 = i;
        v19 = 2048;
        v20 = v8;
        _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
        _os_crash_msg();
        __break(1u);
      }

      this = re::DynamicArray<unsigned long>::add(v3, (*(a2 + 32) + v6));
      v6 += 8;
    }
  }

  return this;
}

uint64_t re::buildPyramid(uint64_t a1, unsigned __int16 *a2)
{
  v145 = *MEMORY[0x1E69E9840];
  v4 = &v121;
  re::internal::GeomBaseMesh::GeomBaseMesh(&v121);
  v5 = *a2;
  if (*a2)
  {
    v109 = a1;
    v6 = v5 + 1;
    v7 = (v5 + 1) * (v5 + 2);
    v8 = v7 >> 1;
    v9 = v5 * v5;
    HIDWORD(v110) = v5 + 1;
    v10 = v6 * v6 + 4 * (v7 >> 1);
    LODWORD(v121) = v6 * v6 + 4 * (v7 >> 1);
    v125 = v121;
    if (v126)
    {
      v11 = v127;
      v12 = 8 * v126;
      do
      {
        v13 = *v11++;
        (*(*v13 + 80))(v13, v125);
        v12 -= 8;
      }

      while (v12);
    }

    re::DynamicArray<re::GeomCell4>::resize(v122, (5 * v9));
    v128 = 5 * v9;
    if (v129)
    {
      v14 = v130;
      v15 = 8 * v129;
      do
      {
        v16 = *v14++;
        (*(*v16 + 80))(v16, v128);
        v15 -= 8;
      }

      while (v15);
    }

    re::internal::GeomAttributeManager::addAttribute(v124, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexNormal", 1, 7);
    }

    v18 = 4 * v8;
    v19 = 4 * v9;
    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexBitangent", 1, 7);
    }

    v20 = *(a2 + 3) * 0.5;
    v21 = vmul_f32(*(a2 + 2), 0x3F0000003F000000);
    *v17.f32 = vneg_f32(v21);
    v22 = v17;
    v22.f32[2] = v20;
    v113 = v22;
    v120 = v22;
    v23 = v17;
    v23.i32[0] = v21.i32[0];
    v24 = v23;
    v24.f32[2] = v20;
    v23.f32[2] = -v20;
    v111 = v23;
    v17.f32[2] = -v20;
    v118 = v23;
    v119 = v24;
    v117 = v17;
    LODWORD(v25) = 0;
    HIDWORD(v25) = v21.i32[1];
    v115 = v17;
    v116 = v25;
    v112 = vsubq_f32(v111, v115);
    v114 = vsubq_f32(v113, v115);
    v26 = re::internal::GeomAttributeManager::attributeByName(v124, "vertexPosition");
    v27 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v26);
    v29 = v28;
    v30 = 0;
    v31 = v5;
    v32 = v18;
    while (2)
    {
      v33 = 0;
      v34 = vaddq_f32(v115, vmulq_n_f32(v114, v30 / v31));
      v35 = v32;
      v36 = v28 - v32;
      if (v28 < v32)
      {
        v36 = 0;
      }

      v37 = v27 + 16 * v32;
      do
      {
        if (v36 == v33)
        {
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v91 = MEMORY[0x1E69E9C10];
          v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v133 = "operator[]";
          v134 = 1024;
          v135 = 621;
          if (v92)
          {
            v93 = 3;
          }

          else
          {
            v93 = 2;
          }

          v132 = 136315906;
          v136 = 2048;
          v137 = (v35 + v33);
          v138 = 2048;
          v139 = v29;
          _os_log_send_and_compose_impl(v93, &v131, &v140, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
LABEL_82:
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v94 = MEMORY[0x1E69E9C10];
          v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132 = 136315906;
          v133 = "operator[]";
          v134 = 1024;
          if (v95)
          {
            v96 = 3;
          }

          else
          {
            v96 = 2;
          }

          v135 = 789;
          v136 = 2048;
          v137 = v33;
          v138 = 2048;
          v139 = v29;
          _os_log_send_and_compose_impl(v96, &v131, &v140, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
LABEL_86:
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v97 = MEMORY[0x1E69E9C10];
          v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v133 = "operator[]";
          v134 = 1024;
          v135 = 621;
          if (v98)
          {
            v99 = 3;
          }

          else
          {
            v99 = 2;
          }

          v132 = 136315906;
          v136 = 2048;
          v137 = (v35 + v33);
          v138 = 2048;
          v139 = v29;
          _os_log_send_and_compose_impl(v99, &v131, &v140, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
LABEL_90:
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v100 = MEMORY[0x1E69E9C10];
          v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132 = 136315906;
          v133 = "operator[]";
          v134 = 1024;
          if (v101)
          {
            v102 = 3;
          }

          else
          {
            v102 = 2;
          }

          v135 = 621;
          v136 = 2048;
          v137 = v33;
          v138 = 2048;
          v139 = v29;
          _os_log_send_and_compose_impl(v102, &v131, &v140, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
LABEL_94:
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v103 = MEMORY[0x1E69E9C10];
          v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132 = 136315906;
          v133 = "operator[]";
          v134 = 1024;
          if (v104)
          {
            v105 = 3;
          }

          else
          {
            v105 = 2;
          }

          v135 = 621;
          v136 = 2048;
          v137 = v4;
          v138 = 2048;
          v139 = v29;
          _os_log_send_and_compose_impl(v105, &v131, &v140, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
LABEL_98:
          v131 = 0;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v106 = MEMORY[0x1E69E9C10];
          v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v132 = 136315906;
          v133 = "operator[]";
          v134 = 1024;
          if (v107)
          {
            v108 = 3;
          }

          else
          {
            v108 = 2;
          }

          v135 = 621;
          v136 = 2048;
          v137 = v35;
          v138 = 2048;
          v139 = v33;
          _os_log_send_and_compose_impl(v108, &v131, &v140, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v132, 38, v109, v110);
          _os_crash_msg();
          __break(1u);
        }

        *(v37 + 16 * v33) = vaddq_f32(v34, vmulq_n_f32(v112, v33 / v31));
        ++v33;
      }

      while (v5 + 1 != v33);
      v32 = v35 + v33;
      v38 = v30++ == v5;
      if (!v38)
      {
        continue;
      }

      break;
    }

    v39 = re::internal::GeomAttributeManager::attributeByName(v124, "vertexUV");
    if (v39)
    {
      v40 = vmulq_f32(v112, v112);
      v41 = vmulq_f32(v114, v114);
      *v40.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)), vadd_f32(vzip1_s32(*v40.i8, *v41.i8), vzip2_s32(*v40.i8, *v41.i8))));
      v42 = *v40.i32 <= *&v40.i32[1];
      v43 = *v40.i32 / *&v40.i32[1];
      v44 = *&v40.i32[1] / *v40.i32;
      if (v42)
      {
        v45 = 1.0;
      }

      else
      {
        v45 = v44;
      }

      if (v42)
      {
        v46 = v43;
      }

      else
      {
        v46 = 1.0;
      }

      v47 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v39);
      LODWORD(v29) = v48;
      v49 = 0;
      v50 = v18;
      do
      {
        v33 = 0;
        v35 = v50;
        v51 = v48 - v50;
        if (v48 < v50)
        {
          v51 = 0;
        }

        v52 = v47 + 8 * v50;
        do
        {
          if (v51 == v33)
          {
            goto LABEL_86;
          }

          *&v53 = v46 * (v33 / v31);
          *(&v53 + 1) = v45 * (v49 / v31);
          *(v52 + 8 * v33++) = v53;
        }

        while (v5 + 1 != v33);
        v50 = v35 + v33;
        v38 = v49++ == v5;
      }

      while (!v38);
    }

    v54 = re::internal::GeomAttributeManager::attributeByName(v124, "vertexNormal");
    if (v54)
    {
      v55 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v54);
      if (v10 > v18)
      {
        LODWORD(v29) = v56;
        v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL), vnegq_f32(v112)), v114, vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL));
        v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
        v59 = vmulq_f32(v57, v57);
        *&v60 = v59.f32[1] + (v59.f32[2] + v59.f32[0]);
        *v59.f32 = vrsqrte_f32(v60);
        *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32)));
        v61 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v60, vmul_f32(*v59.f32, *v59.f32))).f32[0]);
        v62 = (v55 + 16 * v18);
        if (v18 <= v56)
        {
          v33 = v56;
        }

        else
        {
          v33 = v18;
        }

        v63 = v10 - v18;
        v64 = v33 - v18;
        while (v64)
        {
          *v62++ = v61;
          --v64;
          if (!--v63)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_90;
      }
    }

LABEL_46:
    v29 = re::internal::GeomAttributeManager::attributeByName(v124, "vertexTangent");
    v65 = re::internal::GeomAttributeManager::attributeByName(v124, "vertexBitangent");
    if (v29)
    {
      v66 = v65;
      if (v65)
      {
        v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v29);
        LODWORD(v29) = v67;
        v68 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v66);
        if (v10 > v18)
        {
          LODWORD(v33) = v69;
          v70 = vmulq_f32(v112, v112);
          v71 = vaddv_f32(*v70.f32);
          *v70.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71));
          *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71), vmul_f32(*v70.f32, *v70.f32)));
          v70.i32[0] = vmul_f32(*v70.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v70.f32[2] + v71), vmul_f32(*v70.f32, *v70.f32))).u32[0];
          v72 = vmulq_f32(v114, v114);
          *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
          v74 = vmulq_n_f32(v112, v70.f32[0]);
          *v72.f32 = vrsqrte_f32(v73);
          *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
          v75 = vmulq_n_f32(v114, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
          v76 = (v68 + 16 * v18);
          if (v18 <= v29)
          {
            v4 = v29;
          }

          else
          {
            v4 = v18;
          }

          v77 = v10 - v18;
          v78 = (v35 + 16 * v18);
          if (v18 <= v69)
          {
            v35 = v69;
          }

          else
          {
            v35 = v18;
          }

          v79 = v35 - v18;
          v80 = (v4 - v18);
          while (v80)
          {
            *v78 = v74;
            if (!v79)
            {
              goto LABEL_98;
            }

            *v76++ = v75;
            ++v78;
            --v79;
            --v80;
            if (!--v77)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_94;
        }
      }
    }

LABEL_59:
    v81 = 0;
    v82 = v18 + HIDWORD(v110);
    v29 = v122[2];
    do
    {
      v83 = v123;
      v84 = v5;
      do
      {
        v33 = v19;
        if (v29 <= v19)
        {
          goto LABEL_82;
        }

        v85 = v82 + 1;
        v86 = v18 + 1;
        v87 = (v83 + 16 * v19);
        *v87 = v18;
        v87[1] = v18 + 1;
        v87[2] = v82 + 1;
        v87[3] = v82;
        ++v19;
        ++v82;
        ++v18;
        --v84;
      }

      while (v84);
      v18 = v86 + 1;
      v82 = v85 + 1;
      ++v81;
    }

    while (v81 != v5);
    v88 = re::GeomMesh::operator=(v109, &v121);
    if (*(a2 + 18) == 1)
    {
      re::internal::mergeVertexPositions(v88, v89);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v124, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v124, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v121);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v124);
  result = v122[0];
  if (v122[0])
  {
    if (v123)
    {
      return (*(*v122[0] + 40))();
    }
  }

  return result;
}

float32x4_t *re::anonymous namespace::populatePyramidSideHelper(unsigned int a1, uint64_t a2, unint64_t a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, unint64_t a7, void *a8)
{
  v11 = a6;
  v12 = a5;
  v164 = *MEMORY[0x1E69E9840];
  v144 = *a4;
  v148 = *a5;
  v143 = *a6;
  v17 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexPosition");
  v18 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v17);
  v20 = v19;
  v21 = a2;
  if (a1)
  {
    v22 = 0;
    v23 = vsubq_f32(*v11, *v12);
    v24 = vsubq_f32(*v11, *a4);
    v25 = vsubq_f32(*v12, *a4);
    v26 = a1 - 1;
    v21 = a2;
    do
    {
      if (v21 >= v19)
      {
        goto LABEL_81;
      }

      v27 = v22 / a1;
      v28 = vaddq_f32(*a4, vmulq_n_f32(v24, v27));
      *(v18 + 16 * v21) = v28;
      if (a1 - v22 < 2)
      {
        goto LABEL_9;
      }

      v29 = 0;
      do
      {
        if (!(1 - v19 + v21 + v29))
        {
          v150 = 0;
          v162 = 0u;
          v163 = 0u;
          v160 = 0u;
          v161 = 0u;
          v159 = 0u;
          v98 = MEMORY[0x1E69E9C10];
          v99 = v19;
          v151 = 136315906;
          v152 = "operator[]";
          v153 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v100 = 3;
          }

          else
          {
            v100 = 2;
          }

          v154 = 621;
          v155 = 2048;
          v156 = v99;
          v157 = 2048;
          v158 = v99;
          _os_log_send_and_compose_impl(v100, &v150, &v159, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
          _os_crash_msg();
          __break(1u);
          goto LABEL_69;
        }

        v30 = v29 + 1;
        *(v18 + 16 + 16 * v21 + 16 * v29) = vaddq_f32(v28, vmulq_n_f32(v25, (1.0 - v27) * ((v29 + 1) / (a1 - v22))));
        v29 = v30;
      }

      while (v26 != v30);
      v21 = (v21 + v30);
LABEL_9:
      v8 = v21 + 1;
      if (v21 + 1 >= v19)
      {
        goto LABEL_85;
      }

      *(v18 + 16 * v8) = vaddq_f32(vmulq_n_f32(v23, v27), *v12);
      v21 = (v21 + 2);
      ++v22;
      --v26;
    }

    while (v22 != a1);
  }

  if (v21 >= v19)
  {
    goto LABEL_113;
  }

  v31 = vsubq_f32(v148, v144);
  v145 = vsubq_f32(v143, v144);
  v149 = v31;
  *(v18 + 16 * v21) = *v11;
  v32 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexUV");
  if (v32)
  {
    v33 = v149;
    v34 = vmulq_f32(v33, v33);
    v37 = vmulq_f32(v145, v145);
    v34.f32[0] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
    v35 = vmulq_f32(v145, vdivq_f32(v149, vdupq_lane_s32(*v34.f32, 0)));
    v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    v37.f32[0] = sqrtf((v37.f32[2] + vaddv_f32(*v37.f32)) - (v36 * v36));
    if (v34.f32[0] <= v37.f32[0])
    {
      v33.f32[0] = v37.f32[0];
    }

    else
    {
      v33.f32[0] = v34.f32[0];
    }

    v34.i32[1] = v37.i32[0];
    *v37.f32 = vdiv_f32(*v34.f32, vdup_lane_s32(*v33.f32, 0));
    v143 = v37;
    *v39.i32 = v36 / v33.f32[0];
    v39.i32[1] = 0;
    if (a7)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }

    v41 = vdup_n_s32(v40);
    v37.f32[0] = v36 / v33.f32[0];
    v42 = vbsl_s8(v41, v39, *v37.f32);
    v43 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v32);
    a7 = v44;
    v11 = a2;
    if (a1)
    {
      v45 = 0;
      v46.i32[1] = v143.i32[1];
      v46.i32[0] = 0;
      v47 = vbsl_s8(v41, v46, v143.u32[0]);
      v48 = vand_s8(*v143.f32, v41);
      v49 = vsub_f32(v47, v48);
      v50 = vsub_f32(v42, v48);
      v51 = vsub_f32(v42, v47);
      v52 = a1 - 1;
      v11 = a2;
      while (1)
      {
        v53 = v45 / a1;
        if (v11 >= v44)
        {
          break;
        }

        v54 = vadd_f32(v48, vmul_n_f32(v50, v53));
        *(v43 + 8 * v11) = v54;
        if (a1 - v45 >= 2)
        {
          v55 = 0;
          do
          {
            if (!(1 - v44 + v11 + v55))
            {
              goto LABEL_77;
            }

            v56 = v55 + 1;
            *(v43 + 8 + 8 * v11 + 8 * v55) = vadd_f32(v54, vmul_n_f32(v49, (1.0 - v53) * ((v55 + 1) / (a1 - v45))));
            v55 = v56;
          }

          while (v52 != v56);
          v11 = (v11 + v56);
        }

        v12 = (v11 + 1);
        if (v12 >= v44)
        {
          goto LABEL_97;
        }

        *(v43 + 8 * v12) = vadd_f32(v47, vmul_n_f32(v51, v53));
        v11 = (v11 + 2);
        ++v45;
        --v52;
        if (v45 == a1)
        {
          goto LABEL_29;
        }
      }

LABEL_93:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      v153 = 1024;
      v154 = 621;
      v155 = 2048;
      v156 = v11;
      v157 = 2048;
      v158 = a7;
      _os_log_send_and_compose_impl(v123, &v150, &v159, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      v153 = 1024;
      v154 = 621;
      v155 = 2048;
      v156 = v12;
      v157 = 2048;
      v158 = a7;
      _os_log_send_and_compose_impl(v126, &v150, &v159, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
      goto LABEL_101;
    }

LABEL_29:
    if (v11 >= v44)
    {
      goto LABEL_117;
    }

    *(v43 + 8 * v11) = v42;
  }

  v57 = a1 + 1;
  result = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexNormal");
  if (result)
  {
    v59 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v145, v145), v145, 0xCuLL), vnegq_f32(v149)), v145, vextq_s8(vuzp1q_s32(v149, v149), v149, 0xCuLL));
    v60 = vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL);
    v61 = vmulq_f32(v59, v59);
    *&v62 = v61.f32[1] + (v61.f32[2] + v61.f32[0]);
    *v61.f32 = vrsqrte_f32(v62);
    *v61.f32 = vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32)));
    v146 = vmulq_n_f32(v60, vmul_f32(*v61.f32, vrsqrts_f32(v62, vmul_f32(*v61.f32, *v61.f32))).f32[0]);
    v8 = ((v57 * (a1 + 2)) >> 1) + a2;
    v63 = re::GeomAttribute::modifyValues<re::Vector3<float>>(result);
    v65 = vmulq_f32(v146, v146);
    *&v66 = v65.f32[2] + vaddv_f32(*v65.f32);
    *v65.f32 = vrsqrte_f32(v66);
    *v65.f32 = vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32)));
    v67 = vmulq_n_f32(v146, vmul_f32(*v65.f32, vrsqrts_f32(v66, vmul_f32(*v65.f32, *v65.f32))).f32[0]);
    if (v8 > a2)
    {
      a7 = v64;
      if (a2 <= v64)
      {
        v11 = v64;
      }

      else
      {
        v11 = a2;
      }

      v68 = (v63 + 16 * a2);
      v69 = a2 - v8;
      v70 = (v11 - a2);
      while (v70)
      {
        *v68++ = v67;
        --v70;
        v71 = __CFADD__(v69++, 1);
        if (v71)
        {
          goto LABEL_40;
        }
      }

LABEL_101:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      v153 = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      v154 = 621;
      v155 = 2048;
      v156 = v11;
      v157 = 2048;
      v158 = a7;
      _os_log_send_and_compose_impl(v129, &v150, &v159, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_105:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      v153 = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      v154 = 621;
      v155 = 2048;
      v156 = v21;
      v157 = 2048;
      v158 = a7;
      _os_log_send_and_compose_impl(v132, &v150, &v159, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_109:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v133 = MEMORY[0x1E69E9C10];
      v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      v153 = 1024;
      if (v134)
      {
        v135 = 3;
      }

      else
      {
        v135 = 2;
      }

      v154 = 621;
      v155 = 2048;
      v156 = v12;
      v157 = 2048;
      v158 = v11;
      _os_log_send_and_compose_impl(v135, &v150, &v159, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_113:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v136 = MEMORY[0x1E69E9C10];
      v137 = v20;
      v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      if (v138)
      {
        v139 = 3;
      }

      else
      {
        v139 = 2;
      }

      v153 = 1024;
      v154 = 621;
      v155 = 2048;
      v156 = v21;
      v157 = 2048;
      v158 = v137;
      _os_log_send_and_compose_impl(v139, &v150, &v159, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
LABEL_117:
      v150 = 0;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      v140 = MEMORY[0x1E69E9C10];
      v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v151 = 136315906;
      v152 = "operator[]";
      if (v141)
      {
        v142 = 3;
      }

      else
      {
        v142 = 2;
      }

      v153 = 1024;
      v154 = 621;
      v155 = 2048;
      v156 = v11;
      v157 = 2048;
      v158 = a7;
      _os_log_send_and_compose_impl(v142, &v150, &v159, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
      _os_crash_msg();
      __break(1u);
    }

LABEL_40:
    v147 = v67;
    v72 = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexTangent");
    result = re::internal::GeomAttributeManager::attributeByName((a8 + 6), "vertexBitangent");
    if (v72)
    {
      v11 = result;
      if (result)
      {
        v12 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v72);
        a7 = v73;
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v11);
        if (v8 > a2)
        {
          v11 = v74;
          v75 = vmulq_f32(v149, v149);
          v76 = vaddv_f32(*v75.f32);
          *v75.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v75.f32[2] + v76));
          *v75.f32 = vmul_f32(*v75.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v75.f32[2] + v76), vmul_f32(*v75.f32, *v75.f32)));
          v77 = vmulq_n_f32(v149, vmul_f32(*v75.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v75.f32[2] + v76), vmul_f32(*v75.f32, *v75.f32))).f32[0]);
          v78 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL), vnegq_f32(v147)), v77, vextq_s8(vuzp1q_s32(v147, v147), v147, 0xCuLL));
          v79 = vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL);
          v80 = vmulq_f32(v78, v78);
          *&v81 = v80.f32[1] + (v80.f32[2] + v80.f32[0]);
          *v80.f32 = vrsqrte_f32(v81);
          *v80.f32 = vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32)));
          v82 = vmulq_n_f32(v79, vmul_f32(*v80.f32, vrsqrts_f32(v81, vmul_f32(*v80.f32, *v80.f32))).f32[0]);
          v83 = &result[a2];
          if (a2 <= a7)
          {
            v21 = a7;
          }

          else
          {
            v21 = a2;
          }

          v84 = a2 - v8;
          v85 = (v12 + 16 * a2);
          if (a2 <= v74)
          {
            v12 = v74;
          }

          else
          {
            v12 = a2;
          }

          v86 = (v12 - a2);
          v87 = v21 - a2;
          while (v87)
          {
            *v85 = v77;
            if (!v86)
            {
              goto LABEL_109;
            }

            *v83++ = v82;
            --v86;
            --v87;
            ++v85;
            v71 = __CFADD__(v84++, 1);
            if (v71)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_105;
        }
      }
    }
  }

LABEL_54:
  if (a1)
  {
    v88 = 0;
    v89 = v57 + a2;
    a7 = a8[3];
    v90 = a8[5];
    v91 = a1 - 1;
    while (v88 == a1 - 1)
    {
      v92 = a2;
      v93 = v89;
LABEL_62:
      a2 = a3;
      if (a7 <= a3)
      {
        goto LABEL_89;
      }

      v97 = (v90 + 16 * a3);
      *v97 = v92;
      v97[1] = v92 + 1;
      v97[2] = v93;
      v97[3] = -1;
      a3 = (a3 + 1);
      v89 = v93 + 1;
      a2 = (v92 + 2);
      ++v88;
      --v91;
      if (v88 == a1)
      {
        return result;
      }
    }

    v94 = a8[5];
    v95 = v91;
    while (1)
    {
      v11 = a3;
      if (a7 <= a3)
      {
        break;
      }

      v92 = a2 + 1;
      v96 = (v94 + 16 * a3);
      *v96 = a2;
      v96[1] = a2 + 1;
      v96[2] = v89;
      v96[3] = -1;
      a3 = (a3 + 1);
      if (a7 <= a3)
      {
        goto LABEL_73;
      }

      v93 = v89 + 1;
      result = (v94 + 16 * a3);
      result->i32[0] = v92;
      result->i32[1] = v89 + 1;
      result->i32[2] = v89;
      result->i32[3] = -1;
      a3 = (v11 + 2);
      ++v89;
      a2 = (a2 + 1);
      if (!--v95)
      {
        goto LABEL_62;
      }
    }

LABEL_69:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v101 = MEMORY[0x1E69E9C10];
    v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    v153 = 1024;
    if (v102)
    {
      v103 = 3;
    }

    else
    {
      v103 = 2;
    }

    v154 = 789;
    v155 = 2048;
    v156 = v11;
    v157 = 2048;
    v158 = a7;
    _os_log_send_and_compose_impl(v103, &v150, &v159, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_73:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v104 = MEMORY[0x1E69E9C10];
    v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    v153 = 1024;
    if (v105)
    {
      v106 = 3;
    }

    else
    {
      v106 = 2;
    }

    v154 = 789;
    v155 = 2048;
    v156 = a3;
    v157 = 2048;
    v158 = a7;
    _os_log_send_and_compose_impl(v106, &v150, &v159, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v107 = MEMORY[0x1E69E9C10];
    v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    v153 = 1024;
    if (v108)
    {
      v109 = 3;
    }

    else
    {
      v109 = 2;
    }

    v154 = 621;
    v155 = 2048;
    v156 = a7;
    v157 = 2048;
    v158 = a7;
    _os_log_send_and_compose_impl(v109, &v150, &v159, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_81:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v110 = MEMORY[0x1E69E9C10];
    v111 = v20;
    v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    if (v112)
    {
      v113 = 3;
    }

    else
    {
      v113 = 2;
    }

    v153 = 1024;
    v154 = 621;
    v155 = 2048;
    v156 = v21;
    v157 = 2048;
    v158 = v111;
    _os_log_send_and_compose_impl(v113, &v150, &v159, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_85:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v114 = MEMORY[0x1E69E9C10];
    v115 = v20;
    v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    if (v116)
    {
      v117 = 3;
    }

    else
    {
      v117 = 2;
    }

    v153 = 1024;
    v154 = 621;
    v155 = 2048;
    v156 = v8;
    v157 = 2048;
    v158 = v115;
    _os_log_send_and_compose_impl(v117, &v150, &v159, 80, &dword_1E1C61000, v114, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_89:
    v150 = 0;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    v118 = MEMORY[0x1E69E9C10];
    v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v151 = 136315906;
    v152 = "operator[]";
    v153 = 1024;
    if (v119)
    {
      v120 = 3;
    }

    else
    {
      v120 = 2;
    }

    v154 = 789;
    v155 = 2048;
    v156 = a2;
    v157 = 2048;
    v158 = a7;
    _os_log_send_and_compose_impl(v120, &v150, &v159, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v151, 38, v143.u64[0], v143.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_93;
  }

  return result;
}

void re::buildPyramid(re::GeomMesh *a1, __int128 *a2)
{
  if (*(a2 + 18) == 1)
  {
    v5 = *(a2 + 4);
    v4 = *a2;
    BYTE2(v5) = 0;
    re::buildPyramid(a1, &v4);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v4, 0);
    re::buildPyramid(&v4, a2);
    if (*a2)
    {
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::clear(a1);
      re::DynamicArray<re::GeomMesh>::resize(a1, 5uLL, &v4);
    }

    re::GeomMesh::~GeomMesh(&v4);
  }
}

uint64_t re::anonymous namespace::splitMeshIntoEqualSizedSubmeshes(unint64_t a1, unsigned int a2, re::GeomMesh *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v29 = 0;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v26 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v23[1] = 0;
  v24 = 0;
  v23[0] = 0;
  v25 = 0;
  re::DynamicArray<re::GeomMesh>::clear(a3);
  re::DynamicArray<re::GeomMesh>::resize(a3, a2);
  v6 = *(a1 + 40);
  v7 = v6 / a2;
  re::DynamicArray<float>::resize(v23, v7);
  v8 = 0;
  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  do
  {
    v10 = v24;
    if (a2 <= v6)
    {
      v11 = 0;
      v12 = v26;
      while (v10 != v11)
      {
        *(v12 + 4 * v11) = v7 * v8 + v11;
        if (++v11 >= v7)
        {
          goto LABEL_8;
        }
      }

      *v35 = 0;
      memset(v34, 0, 80);
      v14 = MEMORY[0x1E69E9C10];
      v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v42[0]) = 136315906;
      *(v42 + 4) = "operator[]";
      WORD6(v42[0]) = 1024;
      if (v15)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      *(v42 + 14) = 789;
      WORD1(v42[1]) = 2048;
      *(&v42[1] + 4) = v10;
      WORD6(v42[1]) = 2048;
      *(&v42[1] + 14) = v10;
      _os_log_send_and_compose_impl(v16, v35, v34, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v42, 38, v20, v21);
      _os_crash_msg();
      __break(1u);
LABEL_24:
      v33 = 0;
      memset(v42, 0, sizeof(v42));
      v17 = MEMORY[0x1E69E9C10];
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v35 = 136315906;
      *&v35[4] = "operator[]";
      v36 = 1024;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      v37 = 789;
      v38 = 2048;
      v39 = v8;
      v40 = 2048;
      v41 = v10;
      _os_log_send_and_compose_impl(v19, &v33, v42, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v20, v21);
      _os_crash_msg();
      __break(1u);
    }

LABEL_8:
    v22[0] = v26;
    v22[1] = v10;
    v20 = 0;
    v21 = 0;
    re::makeMeshFromFaces(a1, v22, &v20, v30, v27, v34);
    v10 = *(a3 + 2);
    if (v10 <= v8)
    {
      goto LABEL_24;
    }

    re::GeomMesh::operator=((*(a3 + 4) + 736 * v8), v34);
    re::GeomMesh::~GeomMesh(v34);
    ++v8;
  }

  while (v8 != v9);
  if (v23[0] && v26)
  {
    (*(*v23[0] + 40))();
  }

  if (v27[0] && v29)
  {
    (*(*v27[0] + 40))();
  }

  result = v30[0];
  if (v30[0])
  {
    if (v32)
    {
      return (*(*v30[0] + 40))();
    }
  }

  return result;
}

uint64_t re::buildTetrahedron(re::internal *a1, unsigned __int16 *a2)
{
  re::internal::GeomBaseMesh::GeomBaseMesh(&v27);
  v4 = *a2;
  if (*a2)
  {
    v5 = v4 + 2 + (v4 + 2) * v4;
    v6 = v4 * v4;
    LODWORD(v27) = 4 * (v5 >> 1);
    v30 = v27;
    if (v31)
    {
      v7 = v32;
      v8 = 8 * v31;
      do
      {
        v9 = *v7++;
        (*(*v9 + 80))(v9, v30);
        v8 -= 8;
      }

      while (v8);
    }

    re::DynamicArray<re::GeomCell4>::resize(v28, (4 * v6));
    v33 = 4 * v6;
    if (v34)
    {
      v10 = v35;
      v11 = 8 * v34;
      do
      {
        v12 = *v10++;
        (*(*v12 + 80))(v12, v33);
        v11 -= 8;
      }

      while (v11);
    }

    re::internal::GeomAttributeManager::addAttribute(v29, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexNormal", 1, 7);
    }

    if (*(a2 + 8) == 1 && *(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexBitangent", 1, 7);
    }

    v13.i32[0] = *(a2 + 1);
    *v14.i32 = *v13.i32 * -0.5;
    v15 = *v13.i32;
    v16 = vmulq_n_f64(xmmword_1E306DD30, *v13.i32);
    *v16.i8 = vcvt_f32_f64(v16);
    *v13.i32 = *v13.i32 * 0.5;
    v25 = vextq_s8(vextq_s8(v13, v13, 4uLL), v16, 0xCuLL);
    v26 = vextq_s8(vextq_s8(v14, v14, 4uLL), v16, 0xCuLL);
    *&v17 = v15 * -0.433013;
    v18.i32[0] = 0;
    v19 = vzip1q_s32(0, v16);
    v19.i32[2] = v17;
    v24 = v19;
    v20 = v15 * 0.408248;
    *&v15 = v15 * 0.144338;
    v18.f32[1] = v20;
    v18.i64[1] = LODWORD(v15);
    v23 = v18;
    re::GeomMesh::operator=(a1, &v27);
    if (*(a2 + 10) == 1)
    {
      re::internal::mergeVertexPositions(a1, v21);
    }
  }

  else
  {
    re::internal::GeomAttributeManager::addAttribute(v29, "vertexPosition", 1, 7);
    if (*(a2 + 8) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexUV", 1, 6);
    }

    if (*(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexNormal", 1, 7);
    }

    if (*(a2 + 8) == 1 && *(a2 + 9) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v29, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v27);
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(v29);
  result = v28[0];
  if (v28[0])
  {
    if (v28[4])
    {
      return (*(*v28[0] + 40))();
    }
  }

  return result;
}

void re::buildTetrahedron(re::GeomMesh *a1, uint64_t *a2)
{
  if (*(a2 + 10) == 1)
  {
    v5 = *(a2 + 2);
    v4 = *a2;
    BYTE2(v5) = 0;
    re::buildTetrahedron(a1, &v4);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v4, 0);
    re::buildTetrahedron(&v4, a2);
    if (*a2)
    {
    }

    else
    {
      re::DynamicArray<re::GeomMesh>::resize(a1, 4uLL, &v4);
    }

    re::GeomMesh::~GeomMesh(&v4);
  }
}

uint64_t *re::geometryLogObjects(re *this)
{
  {
    re::geometryLogObjects(void)::logObjects = os_log_create("com.apple.re", "Geometry");
  }

  return &re::geometryLogObjects(void)::logObjects;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::GeomAttributeContainer(re::internal::GeomAttributeContainer *this)
{
  *this = 0;
  *(this + 4) = 4;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  v3 = re::DynamicArray<float *>::setCapacity(v2, 1uLL);
  ++*(this + 8);
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  return this;
}

uint64_t re::internal::GeomAttributeContainer::GeomAttributeContainer(uint64_t a1, char a2)
{
  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  v4 = re::DynamicArray<float *>::setCapacity(v3, 1uLL);
  ++*(a1 + 32);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::copy(re::internal::GeomAttributeContainer *this, re::internal::GeomAttributeContainer *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v3 = this;
    this = re::internal::GeomAttributeContainer::clearAttributes(a2, a2);
    *a2 = *v3;
    *(a2 + 4) = *(v3 + 4);
    v5 = *(v3 + 3);
    HIDWORD(v11) = 0;
    if (v5)
    {
      v6 = 0;
      do
      {
        v7 = *(v3 + 3);
        if (v7 <= v6)
        {
          v12 = 0;
          memset(v20, 0, sizeof(v20));
          v8 = MEMORY[0x1E69E9C10];
          v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v13 = 136315906;
          *&v13[4] = "operator[]";
          v14 = 1024;
          if (v9)
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }

          v15 = 797;
          v16 = 2048;
          v17 = v6;
          v18 = 2048;
          v19 = v7;
          _os_log_send_and_compose_impl(v10, &v12, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v13, 38, v11);
          _os_crash_msg();
          __break(1u);
        }

        *&v20[0] = re::GeomAttribute::createAttribute(*(*(v3 + 5) + 8 * v6), v4);
        re::DynamicArray<re::TransitionCondition *>::add((a2 + 8), v20);
        *v13 = *(*&v20[0] + 8);
        this = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a2 + 6, v13, &v11 + 1);
        ++HIDWORD(v11);
        v6 = HIDWORD(v11);
      }

      while (v5 > HIDWORD(v11));
    }
  }

  return this;
}

int8x16_t **re::internal::GeomAttributeContainer::clearAttributes(re::internal::GeomAttributeContainer *this, re::GeomAttribute *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(*(this + 5) + 8 * v4);
      if (v6)
      {
        re::GeomAttribute::freeAttribute(v6, a2);
        v3 = *(this + 3);
      }

      v4 = v5;
    }

    while (v3 > v5++);
  }

  result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear(this + 6);
  *(this + 3) = 0;
  ++*(this + 8);
  return result;
}

uint64_t re::internal::GeomAttributeContainer::attributeByIndex(re::internal::GeomAttributeContainer *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 3);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * a2);
}

{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 3);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 789;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * a2);
}

uint64_t re::internal::GeomAttributeContainer::attributeByName(re::internal::GeomAttributeContainer *this, char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v10);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 7) + 16 * v3 + 8);
  v5 = *(this + 3);
  if (v5 <= v4)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * v4);
}

{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v3 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v10);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = *(*(this + 7) + 16 * v3 + 8);
  v5 = *(this + 3);
  if (v5 <= v4)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v7 = MEMORY[0x1E69E9C10];
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (v8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 789;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 5) + 8 * v4);
}

uint64_t re::internal::GeomAttributeContainer::reorder(uint64_t result, uint64_t *a2)
{
  v9 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v2 = *(result + 24);
  if (v2)
  {
    v4 = *(result + 40);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      re::DynamicArray<float>::operator=(v7, a2);
      (*(*v6 + 48))(v6, v7);
      v5 -= 8;
    }

    while (v5);
    result = v7[0];
    if (v7[0])
    {
      if (v9)
      {
        return (*(*v7[0] + 40))();
      }
    }
  }

  return result;
}

re::GeomAttribute *re::internal::GeomAttributeContainer::addAttribute(re::internal::GeomAttributeContainer *a1, char *a2, int a3)
{
  result = re::internal::GeomAttributeContainer::attributeByName(a1, a2);
  if (result)
  {
    if (*(result + 17) != a3)
    {
      return 0;
    }
  }

  else
  {
    Attribute = re::GeomAttribute::createAttribute(a2, *(a1 + 4), a3, *a1);
    v8 = *(a1 + 3);
    re::DynamicArray<re::TransitionCondition *>::add((a1 + 8), &Attribute);
    v7 = *(Attribute + 1);
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(a1 + 6, &v7, &v8);
    return Attribute;
  }

  return result;
}

re::GeomAttribute *re::internal::GeomAttributeContainer::addAttribute(re::internal::GeomAttributeContainer *this, re::GeomAttribute *a2)
{
  v3 = *(a2 + 1);
  v6 = a2;
  v7 = v3;
  if (re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v7) != -1)
  {
    return 0;
  }

  v5 = *(this + 3);
  re::DynamicArray<re::TransitionCondition *>::add((this + 8), &v6);
  v7 = *(v6 + 1);
  re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addNew(this + 6, &v7, &v5);
  return v6;
}

BOOL re::internal::GeomAttributeContainer::deleteAttribute(re::internal::GeomAttributeContainer *this, char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v4 = re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find(this + 6, &v22);
  v5 = v4;
  if (v4 != -1)
  {
    v6 = *(this + 7) + 16 * v4;
    re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::remove(this + 48, &v22);
    v10 = *(v6 + 8);
    v9 = (v6 + 8);
    v8 = v10;
    v11 = *(this + 3);
    if (v11 <= v10)
    {
      v23 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v13 = MEMORY[0x1E69E9C10];
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v24 = 136315906;
      v25 = "operator[]";
      v26 = 1024;
      if (v14)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v27 = 789;
      v28 = 2048;
      v29 = v8;
      v30 = 2048;
      v31 = v11;
      _os_log_send_and_compose_impl(v15, &v23, &v32, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      re::GeomAttribute::freeAttribute(*(*(this + 5) + 8 * v8), v7);
      v2 = *(this + 3);
      v11 = *v9;
      v8 = v2 - 1;
      if (v2 - 1 <= v11)
      {
LABEL_7:
        re::DynamicArray<double>::resize(this + 8, v2 - 1);
        return v5 != -1;
      }

      if (v2)
      {
        if (v2 > v11)
        {
          *(*(this + 5) + 8 * v11) = *(*(this + 5) + 8 * v8);
          *&v32 = *(*(*(this + 5) + 8 * v11) + 8);
          re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::addOrReplace(this + 6, &v32, v9);
          goto LABEL_7;
        }

LABEL_17:
        v23 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v27 = 789;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v2;
        _os_log_send_and_compose_impl(v21, &v23, &v32, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
        _os_crash_msg();
        __break(1u);
      }
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v27 = 789;
    v28 = 2048;
    v29 = v8;
    v30 = 2048;
    v31 = 0;
    _os_log_send_and_compose_impl(v18, &v23, &v32, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  return v5 != -1;
}

uint64_t re::internal::GeomAttributeContainer::operator==(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this == a2)
  {
    return 1;
  }

  v11[5] = v2;
  v11[6] = v3;
  v6 = *(this + 3);
  if (v6 == *(a2 + 24) && *this == *a2)
  {
    if (!v6)
    {
      return 1;
    }

    v7 = 0;
    while (1)
    {
      v8 = re::internal::GeomAttributeContainer::attributeByIndex(this, v7);
      v11[0] = *(v8 + 8);
      if (re::HashBrown<char const*,unsigned int,re::internal::HashName,re::internal::HashName,void,false>::find((a2 + 48), v11) == -1)
      {
        break;
      }

      v9 = re::internal::GeomAttributeContainer::attributeByName(a2, *(v8 + 8));
      if ((re::GeomAttribute::operator==(v8, v9) & 1) == 0)
      {
        break;
      }

      if (++v7 >= *(this + 6))
      {
        return 1;
      }
    }
  }

  return 0;
}

re::internal::GeomAttributeContainer *re::internal::GeomAttributeContainer::operator=(re::internal::GeomAttributeContainer *this, uint64_t a2)
{
  if (this != a2)
  {
    re::internal::GeomAttributeContainer::clearAttributes(this, a2);
    *(this + 4) = *(a2 + 4);
    *this = *a2;
    re::DynamicArray<re::GeomAttribute *>::operator=(this + 1, (a2 + 8));
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 6, (a2 + 48));
    *(a2 + 4) = 4;
    *a2 = 0;
    *(a2 + 24) = 0;
    ++*(a2 + 32);
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::clear((a2 + 48));
  }

  return this;
}

BOOL re::planeOverlapsBox(float32x4_t *a1, float *a2, float *a3, float32x4_t a4)
{
  v4 = *a3;
  v5.i32[3] = 0;
  if (a1->f32[0] <= 0.0)
  {
    v5.f32[0] = v4 - *a2;
    v4 = -v4;
  }

  else
  {
    v5.f32[0] = -v4 - *a2;
  }

  a4.f32[0] = v4 - *a2;
  v6 = a3[1];
  if (a1->f32[1] <= 0.0)
  {
    v9 = a2[1];
    v5.f32[1] = v6 - v9;
    v8 = -v6 - v9;
  }

  else
  {
    v7 = a2[1];
    v5.f32[1] = -v6 - v7;
    v8 = v6 - v7;
  }

  v10 = a3[2];
  if (a1->f32[2] <= 0.0)
  {
    v13 = a2[2];
    v5.f32[2] = v10 - v13;
    v12 = -v10 - v13;
  }

  else
  {
    v11 = a2[2];
    v5.f32[2] = -v10 - v11;
    v12 = v10 - v11;
  }

  v14 = vmulq_f32(v5, *a1);
  if ((v14.f32[2] + vaddv_f32(*v14.f32)) > 0.0)
  {
    return 0;
  }

  a4.f32[1] = v8;
  a4.f32[2] = v12;
  v16 = vmulq_f32(a4, *a1);
  return (v16.f32[2] + vaddv_f32(*v16.f32)) >= 0.0;
}

BOOL re::triangleOverlapsBox(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vsubq_f32(*a5, *a4);
  v6.i32[3] = 0;
  v7 = vmulq_f32(vaddq_f32(*a4, *a5), v5);
  _Q5 = vmulq_f32(vmaxnmq_f32(v6, 0), v5);
  v85 = _Q5;
  v9 = vsubq_f32(*a1, v7);
  v84 = v9;
  v10 = vsubq_f32(*a2, v7);
  v11 = vsubq_f32(*a3, v7);
  _Q0 = vsubq_f32(v10, v9);
  _S6 = v9.i32[1];
  __asm { FMLA            S4, S6, V0.S[2] }

  _S7 = v11.i32[1];
  __asm { FMLA            S23, S7, V0.S[2] }

  if (_S4 >= _S23)
  {
    v20 = _S4;
  }

  else
  {
    v20 = _S23;
  }

  if (_S4 >= _S23)
  {
    _S4 = _S23;
  }

  _S24 = fabsf(*&_Q0.i32[2]);
  v22 = fabsf(*&_Q0.i32[1]);
  v23 = -(vmuls_lane_f32(v22, _Q5, 2) + (_S24 * _Q5.f32[1]));
  __asm { FMLA            S26, S24, V5.S[1] }

  if (_S4 > _S26 || v20 < v23)
  {
    return 0;
  }

  v26 = (v9.f32[2] * *_Q0.i32) - (*&_Q0.i32[2] * v9.f32[0]);
  v27 = (v11.f32[2] * *_Q0.i32) - (v11.f32[0] * *&_Q0.i32[2]);
  if (v26 >= v27)
  {
    v28 = (v9.f32[2] * *_Q0.i32) - (*&_Q0.i32[2] * v9.f32[0]);
  }

  else
  {
    v28 = (v11.f32[2] * *_Q0.i32) - (v11.f32[0] * *&_Q0.i32[2]);
  }

  if (v26 < v27)
  {
    v27 = (v9.f32[2] * *_Q0.i32) - (*&_Q0.i32[2] * v9.f32[0]);
  }

  v29 = fabsf(*_Q0.i32);
  v30 = (_Q5.f32[2] * v29) + (_S24 * _Q5.f32[0]);
  if (v27 > v30 || v28 < -v30)
  {
    return 0;
  }

  v32 = (*&_Q0.i32[1] * v10.f32[0]) - (v10.f32[1] * *_Q0.i32);
  v33 = (*&_Q0.i32[1] * v11.f32[0]) - (v11.f32[1] * *_Q0.i32);
  if (v32 >= v33)
  {
    v34 = (*&_Q0.i32[1] * v10.f32[0]) - (v10.f32[1] * *_Q0.i32);
  }

  else
  {
    v34 = (*&_Q0.i32[1] * v11.f32[0]) - (v11.f32[1] * *_Q0.i32);
  }

  if (v32 < v33)
  {
    v33 = (*&_Q0.i32[1] * v10.f32[0]) - (v10.f32[1] * *_Q0.i32);
  }

  v35 = (_Q5.f32[1] * v29) + (v22 * _Q5.f32[0]);
  if (v33 > v35 || v34 < -v35)
  {
    return 0;
  }

  _Q19 = vsubq_f32(v11, v10);
  __asm
  {
    FMLA            S24, S6, V19.S[2]
    FMLA            S22, S7, V19.S[2]
  }

  v40 = _S24 >= _S22 ? _S24 : _S22;
  v41 = _S24 >= _S22 ? _S22 : _S24;
  v42 = fabsf(*&_Q19.i32[2]);
  v43 = fabsf(*&_Q19.i32[1]);
  v44 = (_Q5.f32[2] * v43) + (v42 * _Q5.f32[1]);
  if (v41 > v44 || v40 < -v44)
  {
    return 0;
  }

  v46 = (v9.f32[2] * *_Q19.i32) - (*&_Q19.i32[2] * v9.f32[0]);
  v47 = (v11.f32[2] * *_Q19.i32) - (*&_Q19.i32[2] * v11.f32[0]);
  if (v46 >= v47)
  {
    v48 = (v9.f32[2] * *_Q19.i32) - (*&_Q19.i32[2] * v9.f32[0]);
  }

  else
  {
    v48 = (v11.f32[2] * *_Q19.i32) - (*&_Q19.i32[2] * v11.f32[0]);
  }

  if (v46 >= v47)
  {
    v46 = (v11.f32[2] * *_Q19.i32) - (*&_Q19.i32[2] * v11.f32[0]);
  }

  v49 = fabsf(*_Q19.i32);
  v50 = (_Q5.f32[2] * v49) + (v42 * _Q5.f32[0]);
  if (v46 > v50 || v48 < -v50)
  {
    return 0;
  }

  v52 = (*&_Q19.i32[1] * v9.f32[0]) - (v9.f32[1] * *_Q19.i32);
  v53 = (*_Q19.i32 * -v10.f32[1]) + (*&_Q19.i32[1] * v10.f32[0]);
  if (v52 >= v53)
  {
    v54 = (*&_Q19.i32[1] * v9.f32[0]) - (v9.f32[1] * *_Q19.i32);
  }

  else
  {
    v54 = (*_Q19.i32 * -v10.f32[1]) + (*&_Q19.i32[1] * v10.f32[0]);
  }

  if (v52 < v53)
  {
    v53 = (*&_Q19.i32[1] * v9.f32[0]) - (v9.f32[1] * *_Q19.i32);
  }

  v55 = (_Q5.f32[1] * v49) + (v43 * _Q5.f32[0]);
  if (v53 > v55 || v54 < -v55)
  {
    return 0;
  }

  v57 = vsubq_f32(v9, v11);
  v58 = (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]);
  v59 = (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]);
  v60 = v58 >= v59 ? (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]) : (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]);
  v61 = v58 >= v59 ? (v57.f32[2] * v10.f32[1]) - (v10.f32[2] * v57.f32[1]) : (v57.f32[1] * -v9.f32[2]) + (v57.f32[2] * v9.f32[1]);
  v62 = fabsf(v57.f32[2]);
  v63 = fabsf(v57.f32[1]);
  v64 = (_Q5.f32[2] * v63) + (v62 * _Q5.f32[1]);
  if (v61 > v64 || v60 < -v64)
  {
    return 0;
  }

  result = 0;
  v67 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  v68 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  if (v67 >= v68)
  {
    v69 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  }

  else
  {
    v69 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  }

  if (v67 >= v68)
  {
    v70 = (v10.f32[2] * v57.f32[0]) - (v57.f32[2] * v10.f32[0]);
  }

  else
  {
    v70 = (v9.f32[2] * v57.f32[0]) - (v57.f32[2] * v9.f32[0]);
  }

  v71 = fabsf(v57.f32[0]);
  if (v70 <= ((_Q5.f32[2] * v71) + (v62 * _Q5.f32[0])) && v69 >= -((_Q5.f32[2] * v71) + (v62 * _Q5.f32[0])))
  {
    result = 0;
    v72 = (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]);
    v73 = (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]);
    v74 = v72 >= v73 ? (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]) : (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]);
    v75 = v72 >= v73 ? (v57.f32[0] * -v11.f32[1]) + (v57.f32[1] * v11.f32[0]) : (v57.f32[0] * -v10.f32[1]) + (v57.f32[1] * v10.f32[0]);
    if (v75 <= ((_Q5.f32[1] * v71) + (v63 * _Q5.f32[0])) && v74 >= -((_Q5.f32[1] * v71) + (v63 * _Q5.f32[0])))
    {
      result = 0;
      if (vmovn_s32(vcgtq_f32(v9, v10)).u8[0])
      {
        v76 = v10.f32[0];
      }

      else
      {
        v76 = v9.f32[0];
      }

      v77 = vmovn_s32(vcgtq_f32(v10, v9)).u8[0];
      if (v11.f32[0] < v76)
      {
        v76 = v11.f32[0];
      }

      if (v77)
      {
        v9.f32[0] = v10.f32[0];
      }

      if (v9.f32[0] < v11.f32[0])
      {
        v9.f32[0] = v11.f32[0];
      }

      if (v76 <= _Q5.f32[0] && v9.f32[0] >= -_Q5.f32[0])
      {
        result = 0;
        if (v10.f32[1] >= v9.f32[1])
        {
          v78 = v9.f32[1];
        }

        else
        {
          v78 = v10.f32[1];
        }

        if (v11.f32[1] >= v78)
        {
          v79 = v78;
        }

        else
        {
          v79 = v11.f32[1];
        }

        if (v9.f32[1] >= v10.f32[1])
        {
          _Q5.f32[0] = v9.f32[1];
        }

        else
        {
          _Q5.f32[0] = v10.f32[1];
        }

        if (_Q5.f32[0] < v11.f32[1])
        {
          _Q5.f32[0] = v11.f32[1];
        }

        if (v79 <= _Q5.f32[1] && _Q5.f32[0] >= -_Q5.f32[1])
        {
          result = 0;
          if (v10.f32[2] >= v9.f32[2])
          {
            v80 = v9.f32[2];
          }

          else
          {
            v80 = v10.f32[2];
          }

          if (v11.f32[2] >= v80)
          {
            _Q5.f32[0] = v80;
          }

          else
          {
            _Q5.f32[0] = v11.f32[2];
          }

          if (v9.f32[2] >= v10.f32[2])
          {
            v81 = v9.f32[2];
          }

          else
          {
            v81 = v10.f32[2];
          }

          if (v81 < v11.f32[2])
          {
            v81 = v11.f32[2];
          }

          if (_Q5.f32[0] <= _Q5.f32[2] && v81 >= -_Q5.f32[2])
          {
            v82 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q19, _Q19), _Q19, 0xCuLL), vnegq_f32(_Q0)), _Q19, vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL));
            return re::planeOverlapsBox(&v83, v84.f32, v85.f32, vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL));
          }
        }
      }
    }
  }

  return result;
}

void re::splitClusters(float32x4_t *a1, float32x4_t **a2, int a3, char a4, void *a5, unint64_t a6, float a7)
{
  v7 = a3;
  v399 = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v10 = a2[1];
  v12 = v10 >> 1;
  v13 = v10;
  v14 = *a2;
  if (a4)
  {
    goto LABEL_76;
  }

  v18 = a2 + a3;
  v19 = v18[4];
  v20 = v18[8] - v19;
  bzero(a5, 4 * a6);
  v14 = *a2;
  v13 = a2[1];
  if (v13)
  {
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22 = *a2;
    while (1)
    {
      v23 = v22[1];
      v24 = vcgtq_f32(*v22, v23);
      v24.i32[3] = v24.i32[2];
      v25 = vmaxvq_u32(v24);
      v26 = vmulq_f32(vaddq_f32(*v22, v23), v21);
      v27 = v26.i64[1];
      if (v25 >= 0)
      {
        v28 = v26.i64[0];
      }

      else
      {
        v28 = 0;
      }

      if (v25 < 0)
      {
        v27 = 0;
      }

      v396.i64[0] = v28;
      v396.i64[1] = v27;
      v29 = (((v396.f32[v7] - v19) / v20) * a6);
      if (a6 - 1 < v29)
      {
        v29 = a6 - 1;
      }

      if (a6 <= v29)
      {
        break;
      }

      ++*(a5 + v29);
      v22 += 3;
      if (v22 == (v14 + 48 * v13))
      {
        goto LABEL_15;
      }
    }

LABEL_291:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, a6);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v371, v381);
    __break(1u);
LABEL_292:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v352, v355);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v372, v382);
    __break(1u);
LABEL_293:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v352, v355);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v373, v383);
    __break(1u);
LABEL_294:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v374, v384);
    __break(1u);
LABEL_295:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v375, v385);
    __break(1u);
LABEL_296:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v88);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v376, v386);
    __break(1u);
LABEL_297:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v34, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v377, v387);
    __break(1u);
LABEL_298:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v378, v388);
    __break(1u);
  }

  if (a6)
  {
LABEL_15:
    v30 = 0;
    LODWORD(v31) = 0;
    v32 = 1;
    while (1)
    {
      v31 = (*(a5 + v30) + v31);
      if (v12 <= v31)
      {
        break;
      }

      v30 = v32;
      v33 = a6 > v32++;
      if (!v33)
      {
        v30 = 0;
        break;
      }
    }
  }

  else
  {
    v30 = 0;
    LODWORD(v31) = 0;
  }

  if (v31 >= ((a7 / 100.0) * v10))
  {
LABEL_76:
    v96 = (v11 + 48 * v12);
    v97 = (v14 + 48 * v13);
    v393 = v7;
    while (v97 != v96)
    {
      v98 = 0xAAAAAAAAAAAAAAABLL * ((v97 - v14) >> 4);
      if (v98 < 2)
      {
        break;
      }

      if (v98 == 3)
      {
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(v14, (v14 + 48), v97 - 3, &v393);
        break;
      }

      if (v98 == 2)
      {
        v303 = v97[-3];
        v304 = v97[-2];
        v302 = v97 - 3;
        v305 = vcgtq_f32(v303, v304);
        v305.i32[3] = v305.i32[2];
        v306 = *v14;
        v307 = *(v14 + 16);
        v308 = vmaxvq_u32(v305);
        v309 = vaddq_f32(v303, v304);
        v310.i64[0] = 0x3F0000003F000000;
        v310.i64[1] = 0x3F0000003F000000;
        v311 = vmulq_f32(v309, v310);
        v312 = v311.i64[1];
        if (v308 >= 0)
        {
          v313 = v311.i64[0];
        }

        else
        {
          v313 = 0;
        }

        if (v308 < 0)
        {
          v312 = 0;
        }

        v396.i64[0] = v313;
        v396.i64[1] = v312;
        v314 = v396.f32[v7];
        v315 = vcgtq_f32(v306, v307);
        v315.i32[3] = v315.i32[2];
        v316 = vmaxvq_u32(v315);
        v317 = vmulq_f32(vaddq_f32(v306, v307), v310);
        v318 = v317.i64[1];
        v319 = v316 < 0;
        if (v316 >= 0)
        {
          v320 = v317.i64[0];
        }

        else
        {
          v320 = 0;
        }

        if (v319)
        {
          v318 = 0;
        }

        v394 = v320;
        v395 = v318;
        if (v314 < *(&v394 + v7))
        {
          v321 = *v14;
          v322 = *(v14 + 32);
          v397 = *(v14 + 16);
          v398 = v322;
          v396 = v321;
          v323 = *v302;
          v324 = v302[1];
          *(v14 + 32) = v302[2].i32[0];
          *v14 = v323;
          *(v14 + 16) = v324;
          v325 = v396;
          v326 = v397;
          v302[2].i32[0] = v398.i32[0];
          *v302 = v325;
          v302[1] = v326;
        }

        break;
      }

      if (v97 - v14 <= 383)
      {
        if (&v97[-3] != v14)
        {
          v327.i64[0] = 0x3F0000003F000000;
          v327.i64[1] = 0x3F0000003F000000;
          do
          {
            if (v14 != v97 && (v14 + 48) != v97)
            {
              v328 = *v14;
              v329 = 48;
              v330 = v14;
              do
              {
                v331 = v14 + v329;
                v332 = *(v14 + v329);
                v333 = *(v14 + v329 + 16);
                v334 = vcgtq_f32(v332, v333);
                v334.i32[3] = v334.i32[2];
                v335 = *(v330 + 16);
                v336 = vmaxvq_u32(v334);
                v337 = vmulq_f32(vaddq_f32(v332, v333), v327);
                v338 = v337.i64[1];
                if (v336 >= 0)
                {
                  v339 = v337.i64[0];
                }

                else
                {
                  v339 = 0;
                }

                if (v336 < 0)
                {
                  v338 = 0;
                }

                v396.i64[0] = v339;
                v396.i64[1] = v338;
                v337.i32[0] = v396.i32[v7];
                v340 = vcgtq_f32(v328, v335);
                v340.i32[3] = v340.i32[2];
                v340.i32[0] = vmaxvq_u32(v340);
                v341 = vmulq_f32(vaddq_f32(v328, v335), v327);
                v342 = v341.i64[1];
                if (v340.i32[0] >= 0)
                {
                  v343 = v341.i64[0];
                }

                else
                {
                  v343 = 0;
                }

                if (v340.i32[0] < 0)
                {
                  v342 = 0;
                }

                v394 = v343;
                v395 = v342;
                v340.i32[0] = *(&v394 + v7);
                v328 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v340, v337), 0), v332, v328);
                if (v337.f32[0] < v340.f32[0])
                {
                  v330 = v14 + v329;
                }

                v329 += 48;
              }

              while ((v331 + 48) != v97);
              if (v330 != v14)
              {
                v344 = *v14;
                v345 = *(v14 + 32);
                v397 = *(v14 + 16);
                v398 = v345;
                v396 = v344;
                v346 = *v330;
                v347 = *(v330 + 16);
                *(v14 + 32) = *(v330 + 32);
                *v14 = v346;
                *(v14 + 16) = v347;
                v348 = v396;
                v349 = v397;
                *(v330 + 32) = v398.i32[0];
                *v330 = v348;
                *(v330 + 16) = v349;
              }
            }

            v14 += 48;
          }

          while (v14 != &v97[-3]);
        }

        break;
      }

      v99 = (v14 + 48 * (v98 >> 1));
      v100 = &v97[-3];
      v101 = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(v14, v99, v97 - 3, &v393);
      v102.i64[0] = 0x3F0000003F000000;
      v102.i64[1] = 0x3F0000003F000000;
      v103 = *(v14 + 16);
      v104 = *v99;
      v105 = v99[1];
      v106 = vcgtq_f32(*v14, v103);
      v106.i32[3] = v106.i32[2];
      v107 = vmaxvq_u32(v106);
      v108 = vmulq_f32(vaddq_f32(*v14, v103), v102);
      v109 = v108.i64[1];
      if (v107 >= 0)
      {
        v110 = v108.i64[0];
      }

      else
      {
        v110 = 0;
      }

      if (v107 < 0)
      {
        v109 = 0;
      }

      v396.i64[0] = v110;
      v396.i64[1] = v109;
      v7 = v393;
      v111 = v393;
      v112 = v396.f32[v393];
      v113 = vcgtq_f32(v104, v105);
      v113.i32[3] = v113.i32[2];
      v114 = vmaxvq_u32(v113);
      v115 = vmulq_f32(vaddq_f32(v104, v105), v102);
      v116 = v115.i64[1];
      if (v114 >= 0)
      {
        v117 = v115.i64[0];
      }

      else
      {
        v117 = 0;
      }

      if (v114 < 0)
      {
        v116 = 0;
      }

      v394 = v117;
      v395 = v116;
      if (v112 >= *(&v394 + v393))
      {
        v119 = &v97[-3];
        while (1)
        {
          v118 = v119 - 48;
          if (v119 - 48 == v14)
          {
            break;
          }

          v120 = *(v119 - 48);
          v121 = *(v119 - 32);
          v122 = *v99;
          v123 = v99[1];
          v124 = vcgtq_f32(v120, v121);
          v124.i32[3] = v124.i32[2];
          v125 = vmaxvq_u32(v124);
          v126 = vmulq_f32(vaddq_f32(v120, v121), v102);
          v127 = v126.i64[1];
          if (v125 >= 0)
          {
            v128 = v126.i64[0];
          }

          else
          {
            v128 = 0;
          }

          if (v125 < 0)
          {
            v127 = 0;
          }

          v396.i64[0] = v128;
          v396.i64[1] = v127;
          v129 = v396.f32[v393];
          v130 = vcgtq_f32(v122, v123);
          v130.i32[3] = v130.i32[2];
          v131 = vmaxvq_u32(v130);
          v132 = vmulq_f32(vaddq_f32(v122, v123), v102);
          v133 = v132.i64[1];
          v134 = v131 < 0;
          if (v131 >= 0)
          {
            v135 = v132.i64[0];
          }

          else
          {
            v135 = 0;
          }

          if (v134)
          {
            v133 = 0;
          }

          v394 = v135;
          v395 = v133;
          v119 = v118;
          if (v129 < *(&v394 + v393))
          {
            v136 = *v14;
            v137 = *(v14 + 32);
            v397 = *(v14 + 16);
            v398 = v137;
            v396 = v136;
            v138 = *v118;
            v139 = *(v118 + 16);
            *(v14 + 32) = *(v118 + 32);
            *v14 = v138;
            *(v14 + 16) = v139;
            v140 = v396;
            v141 = v397;
            *(v118 + 32) = v398.i32[0];
            *v118 = v140;
            *(v118 + 16) = v141;
            if (v101)
            {
              v101 = 2;
            }

            else
            {
              v101 = 1;
            }

            goto LABEL_109;
          }
        }

        v219 = (v14 + 48);
        v220 = v97[-3];
        v221 = v97[-2];
        v222 = vcgtq_f32(*v14, v103);
        v222.i32[3] = v222.i32[2];
        v223 = vmaxvq_u32(v222);
        v224 = vmulq_f32(vaddq_f32(v103, *v14), v102);
        v225 = v224.i64[1];
        if (v223 >= 0)
        {
          v226 = v224.i64[0];
        }

        else
        {
          v226 = 0;
        }

        if (v223 < 0)
        {
          v225 = 0;
        }

        v396.i64[0] = v226;
        v396.i64[1] = v225;
        v227 = v396.f32[v393];
        v228 = vcgtq_f32(v220, v221);
        v228.i32[3] = v228.i32[2];
        v229 = vmaxvq_u32(v228);
        v230 = vmulq_f32(vaddq_f32(v220, v221), v102);
        v231 = v230.i64[1];
        if (v229 >= 0)
        {
          v232 = v230.i64[0];
        }

        else
        {
          v232 = 0;
        }

        if (v229 < 0)
        {
          v231 = 0;
        }

        v394 = v232;
        v395 = v231;
        if (v227 >= *(&v394 + v393))
        {
          while (v219 != v100)
          {
            v233 = *v219;
            v234 = v219[1];
            v235 = vcgtq_f32(*v14, v103);
            v235.i32[3] = v235.i32[2];
            v236 = vmaxvq_u32(v235);
            v237 = vmulq_f32(vaddq_f32(v103, *v14), v102);
            v238 = v237.i64[1];
            if (v236 >= 0)
            {
              v239 = v237.i64[0];
            }

            else
            {
              v239 = 0;
            }

            if (v236 < 0)
            {
              v238 = 0;
            }

            v396.i64[0] = v239;
            v396.i64[1] = v238;
            v240 = v396.f32[v393];
            v241 = vcgtq_f32(v233, v234);
            v241.i32[3] = v241.i32[2];
            v242 = vmaxvq_u32(v241);
            v243 = vmulq_f32(vaddq_f32(v233, v234), v102);
            v244 = v243.i64[1];
            if (v242 >= 0)
            {
              v245 = v243.i64[0];
            }

            else
            {
              v245 = 0;
            }

            if (v242 < 0)
            {
              v244 = 0;
            }

            v394 = v245;
            v395 = v244;
            if (v240 < *(&v394 + v393))
            {
              v262 = *v219;
              v263 = v219[2];
              v397 = v219[1];
              v398 = v263;
              v396 = v262;
              v264 = *v100;
              v265 = v97[-2];
              v219[2].i32[0] = v97[-1].i32[0];
              *v219 = v264;
              v219[1] = v265;
              v219 += 3;
              v266 = v396;
              v267 = v397;
              v97[-1].i32[0] = v398.i32[0];
              *v100 = v266;
              v97[-2] = v267;
              goto LABEL_211;
            }

            v219 += 3;
          }

          break;
        }

LABEL_211:
        if (v219 == v100)
        {
          break;
        }

        while (1)
        {
          v268 = *(v14 + 16);
          v203 = v219 - 3;
          do
          {
            v269 = v203[3];
            v270 = v203[4];
            v203 += 3;
            v271 = vcgtq_f32(*v14, v268);
            v271.i32[3] = v271.i32[2];
            v272 = vmaxvq_u32(v271);
            v273 = vmulq_f32(vaddq_f32(v268, *v14), v102);
            v274 = v273.i64[1];
            if (v272 >= 0)
            {
              v275 = v273.i64[0];
            }

            else
            {
              v275 = 0;
            }

            if (v272 < 0)
            {
              v274 = 0;
            }

            v396.i64[0] = v275;
            v396.i64[1] = v274;
            v276 = v396.f32[v111];
            v277 = vcgtq_f32(v269, v270);
            v277.i32[3] = v277.i32[2];
            v278 = vmaxvq_u32(v277);
            v279 = vmulq_f32(vaddq_f32(v269, v270), v102);
            v280 = v279.i64[1];
            if (v278 >= 0)
            {
              v281 = v279.i64[0];
            }

            else
            {
              v281 = 0;
            }

            if (v278 < 0)
            {
              v280 = 0;
            }

            v394 = v281;
            v395 = v280;
          }

          while (v276 >= *(&v394 + v111));
          v219 = v203 + 3;
          do
          {
            v282 = *(v100 - 48);
            v283 = *(v100 - 32);
            v100 -= 48;
            v284 = vcgtq_f32(*v14, v268);
            v284.i32[3] = v284.i32[2];
            v285 = vmaxvq_u32(v284);
            v286 = vmulq_f32(vaddq_f32(v268, *v14), v102);
            v287 = v286.i64[1];
            if (v285 >= 0)
            {
              v288 = v286.i64[0];
            }

            else
            {
              v288 = 0;
            }

            if (v285 < 0)
            {
              v287 = 0;
            }

            v396.i64[0] = v288;
            v396.i64[1] = v287;
            v289 = v396.f32[v111];
            v290 = vcgtq_f32(v282, v283);
            v290.i32[3] = v290.i32[2];
            v291 = vmaxvq_u32(v290);
            v292 = vmulq_f32(vaddq_f32(v282, v283), v102);
            v293 = v292.i64[1];
            if (v291 >= 0)
            {
              v294 = v292.i64[0];
            }

            else
            {
              v294 = 0;
            }

            if (v291 < 0)
            {
              v293 = 0;
            }

            v394 = v294;
            v395 = v293;
          }

          while (v289 < *(&v394 + v111));
          if (v203 >= v100)
          {
            break;
          }

          v295 = *v203;
          v296 = v203[2];
          v397 = v203[1];
          v398 = v296;
          v396 = v295;
          v297 = *v100;
          v298 = *(v100 + 16);
          v203[2].i32[0] = *(v100 + 32);
          *v203 = v297;
          v203[1] = v298;
          v299 = v396;
          v300 = v397;
          *(v100 + 32) = v398.i32[0];
          *v100 = v299;
          *(v100 + 16) = v300;
        }

        if (v203 > v96)
        {
          break;
        }
      }

      else
      {
        v118 = &v97[-3];
LABEL_109:
        v142 = (v14 + 48);
        if (v14 + 48 >= v118)
        {
          v145 = (v14 + 48);
        }

        else
        {
          f32 = (v14 + 48);
          while (1)
          {
            v144 = v99[1];
            v145 = (f32 - 3);
            do
            {
              v146 = v145[3];
              v147 = v145[4];
              v145 += 3;
              v148 = *v99;
              v149 = vcgtq_f32(v146, v147);
              v149.i32[3] = v149.i32[2];
              v150 = vmaxvq_u32(v149);
              v151 = vmulq_f32(vaddq_f32(v146, v147), v102);
              v152 = v151.i64[1];
              if (v150 >= 0)
              {
                v153 = v151.i64[0];
              }

              else
              {
                v153 = 0;
              }

              if (v150 < 0)
              {
                v152 = 0;
              }

              v396.i64[0] = v153;
              v396.i64[1] = v152;
              v154 = v396.f32[v111];
              v155 = vcgtq_f32(v148, v144);
              v155.i32[3] = v155.i32[2];
              v156 = vmaxvq_u32(v155);
              v157 = vmulq_f32(vaddq_f32(v144, v148), v102);
              v158 = v157.i64[1];
              v159 = v156 < 0;
              if (v156 >= 0)
              {
                v160 = v157.i64[0];
              }

              else
              {
                v160 = 0;
              }

              if (v159)
              {
                v158 = 0;
              }

              v394 = v160;
              v395 = v158;
            }

            while (v154 < *(&v394 + v111));
            f32 = v145[3].f32;
            do
            {
              v161 = *(v118 - 48);
              v162 = *(v118 - 32);
              v118 -= 48;
              v163 = *v99;
              v164 = vcgtq_f32(v161, v162);
              v164.i32[3] = v164.i32[2];
              v165 = vmaxvq_u32(v164);
              v166 = vmulq_f32(vaddq_f32(v161, v162), v102);
              v167 = v166.i64[1];
              if (v165 >= 0)
              {
                v168 = v166.i64[0];
              }

              else
              {
                v168 = 0;
              }

              if (v165 < 0)
              {
                v167 = 0;
              }

              v396.i64[0] = v168;
              v396.i64[1] = v167;
              v169 = v396.f32[v111];
              v170 = vcgtq_f32(v163, v144);
              v170.i32[3] = v170.i32[2];
              v171 = vmaxvq_u32(v170);
              v172 = vmulq_f32(vaddq_f32(v144, v163), v102);
              v173 = v172.i64[1];
              v174 = v171 < 0;
              if (v171 >= 0)
              {
                v175 = v172.i64[0];
              }

              else
              {
                v175 = 0;
              }

              if (v174)
              {
                v173 = 0;
              }

              v394 = v175;
              v395 = v173;
            }

            while (v169 >= *(&v394 + v111));
            if (v145 >= v118)
            {
              break;
            }

            v176 = *v145;
            v177 = v145[2];
            v397 = v145[1];
            v398 = v177;
            v396 = v176;
            v178 = *v118;
            v179 = *(v118 + 16);
            v145[2].i32[0] = *(v118 + 32);
            *v145 = v178;
            v145[1] = v179;
            v180 = v396;
            v181 = v397;
            *(v118 + 32) = v398.i32[0];
            *v118 = v180;
            *(v118 + 16) = v181;
            ++v101;
            if (v145 == v99)
            {
              v99 = v118;
            }
          }
        }

        if (v145 != v99)
        {
          v182 = v99[1];
          v183 = *v145;
          v184 = v145[1];
          v185 = vcgtq_f32(*v99, v182);
          v185.i32[3] = v185.i32[2];
          v186 = vmaxvq_u32(v185);
          v187 = vmulq_f32(vaddq_f32(*v99, v182), v102);
          v188 = v187.i64[1];
          if (v186 >= 0)
          {
            v189 = v187.i64[0];
          }

          else
          {
            v189 = 0;
          }

          if (v186 < 0)
          {
            v188 = 0;
          }

          v396.i64[0] = v189;
          v396.i64[1] = v188;
          v190 = v396.f32[v111];
          v191 = vcgtq_f32(v183, v184);
          v191.i32[3] = v191.i32[2];
          v192 = vmaxvq_u32(v191);
          v193 = vmulq_f32(vaddq_f32(v183, v184), v102);
          v194 = v193.i64[1];
          v195 = v192 < 0;
          if (v192 >= 0)
          {
            v196 = v193.i64[0];
          }

          else
          {
            v196 = 0;
          }

          if (v195)
          {
            v194 = 0;
          }

          v394 = v196;
          v395 = v194;
          if (v190 < *(&v394 + v111))
          {
            v197 = *v145;
            v198 = v145[2];
            v397 = v145[1];
            v398 = v198;
            v396 = v197;
            v199 = *v99;
            v200 = v99[1];
            v145[2].i32[0] = v99[2].i32[0];
            *v145 = v199;
            v145[1] = v200;
            v201 = v396;
            v202 = v397;
            v99[2].i32[0] = v398.i32[0];
            *v99 = v201;
            v99[1] = v202;
            ++v101;
          }
        }

        if (v145 == v96)
        {
          break;
        }

        if (!v101)
        {
          if (v145 <= v96)
          {
            v246 = v145 + 3;
            while (v246 != v97)
            {
              v247 = v246[1];
              v248 = v246[-3];
              v249 = v246[-2];
              v250 = vcgtq_f32(*v246, v247);
              v250.i32[3] = v250.i32[2];
              v251 = vmaxvq_u32(v250);
              v252 = vmulq_f32(vaddq_f32(*v246, v247), v102);
              v253 = v252.i64[1];
              if (v251 >= 0)
              {
                v254 = v252.i64[0];
              }

              else
              {
                v254 = 0;
              }

              if (v251 < 0)
              {
                v253 = 0;
              }

              v396.i64[0] = v254;
              v396.i64[1] = v253;
              v255 = v396.f32[v111];
              v256 = vcgtq_f32(v248, v249);
              v256.i32[3] = v256.i32[2];
              v257 = vmaxvq_u32(v256);
              v258 = vmulq_f32(vaddq_f32(v248, v249), v102);
              v259 = v258.i64[1];
              v260 = v257 < 0;
              if (v257 >= 0)
              {
                v261 = v258.i64[0];
              }

              else
              {
                v261 = 0;
              }

              if (v260)
              {
                v259 = 0;
              }

              v394 = v261;
              v395 = v259;
              v246 += 3;
              if (v255 < *(&v394 + v111))
              {
                goto LABEL_155;
              }
            }
          }

          else
          {
            while (v142 != v145)
            {
              v204 = v142[1];
              v205 = v142[-3];
              v206 = v142[-2];
              v207 = vcgtq_f32(*v142, v204);
              v207.i32[3] = v207.i32[2];
              v208 = vmaxvq_u32(v207);
              v209 = vmulq_f32(vaddq_f32(*v142, v204), v102);
              v210 = v209.i64[1];
              if (v208 >= 0)
              {
                v211 = v209.i64[0];
              }

              else
              {
                v211 = 0;
              }

              if (v208 < 0)
              {
                v210 = 0;
              }

              v396.i64[0] = v211;
              v396.i64[1] = v210;
              v212 = v396.f32[v111];
              v213 = vcgtq_f32(v205, v206);
              v213.i32[3] = v213.i32[2];
              v214 = vmaxvq_u32(v213);
              v215 = vmulq_f32(vaddq_f32(v205, v206), v102);
              v216 = v215.i64[1];
              v217 = v214 < 0;
              if (v214 >= 0)
              {
                v218 = v215.i64[0];
              }

              else
              {
                v218 = 0;
              }

              if (v217)
              {
                v216 = 0;
              }

              v394 = v218;
              v395 = v216;
              v142 += 3;
              if (v212 < *(&v394 + v111))
              {
                goto LABEL_155;
              }
            }
          }

          break;
        }

LABEL_155:
        if (v145 <= v96)
        {
          v203 = v145 + 3;
        }

        else
        {
          v97 = v145;
          v203 = v14;
        }
      }

      v14 = v203;
    }

    v350 = *a2;
    v351 = 0xAAAAAAAAAAAAAAABLL * (v96 - *a2);
    if (v10)
    {
      v352 = 0;
      v353.i64[0] = 0x7F0000007FLL;
      v353.i64[1] = 0x7F0000007FLL;
      v354 = vnegq_f32(v353);
      v355 = a2[1];
      v356 = 1;
      v357.i64[0] = 0x7F0000007FLL;
      v357.i64[1] = 0x7F0000007FLL;
      v358 = v354;
      do
      {
        if (v351 >= v352)
        {
          if (v355 <= v352)
          {
            goto LABEL_293;
          }

          v362 = (v350 + 48 * v352);
          v354.i32[3] = 0;
          v363 = *v362;
          v364 = v362[1];
          v363.i32[3] = 0;
          v354 = vminnmq_f32(v354, v363);
          v353.i32[3] = 0;
          v364.i32[3] = 0;
          v353 = vmaxnmq_f32(v353, v364);
        }

        else
        {
          if (v355 <= v352)
          {
            goto LABEL_292;
          }

          v359 = (v350 + 48 * v352);
          v358.i32[3] = 0;
          v360 = *v359;
          v361 = v359[1];
          v360.i32[3] = 0;
          v358 = vminnmq_f32(v358, v360);
          v357.i32[3] = 0;
          v361.i32[3] = 0;
          v357 = vmaxnmq_f32(v357, v361);
        }

        v352 = v356;
        v33 = v10 > v356++;
      }

      while (v33);
    }

    else
    {
      v357.i64[0] = 0x7F0000007FLL;
      v357.i64[1] = 0x7F0000007FLL;
      v358 = vnegq_f32(v357);
      v354 = v358;
      v353.i64[0] = 0x7F0000007FLL;
      v353.i64[1] = 0x7F0000007FLL;
    }

    v389 = v354;
    v390 = v353;
    v391 = v358;
    v392 = v357;
    v365 = re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(a2, 0, v351);
    v367 = v366;
    v368 = re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(a2, v351, v10);
    v42 = v391;
    v41 = v392;
    a1->i64[0] = v365;
    a1->i64[1] = v367;
    a1[1] = v389;
    a1[2] = v390;
    a1[3].i64[0] = v368;
  }

  else
  {
    v34 = 0;
    v35 = v10 - 1;
    if (v10 != 1)
    {
      v36 = a6;
      v37.i64[0] = 0x7F0000007FLL;
      v37.i64[1] = 0x7F0000007FLL;
      v38 = vnegq_f32(v37);
      v39 = a6 - 1;
      v40.i64[0] = 0x3F0000003F000000;
      v40.i64[1] = 0x3F0000003F000000;
      v41.i64[0] = 0x7F0000007FLL;
      v41.i64[1] = 0x7F0000007FLL;
      v42 = v38;
      while (1)
      {
        if (v13 <= v34)
        {
          goto LABEL_294;
        }

        v43 = (v14 + 48 * v34);
        v44 = *v43;
        v45 = v43[1];
        v46 = vcgtq_f32(*v43, v45);
        v46.i32[3] = v46.i32[2];
        v47 = vmaxvq_u32(v46);
        v48 = vmulq_f32(vaddq_f32(*v43, v45), v40);
        v49 = v48.i64[1];
        if (v47 >= 0)
        {
          v50 = v48.i64[0];
        }

        else
        {
          v50 = 0;
        }

        if (v47 < 0)
        {
          v49 = 0;
        }

        v396.i64[0] = v50;
        v396.i64[1] = v49;
        v51 = (((v396.f32[v7] - v19) / v20) * v36);
        if (v39 < v51)
        {
          v51 = a6 - 1;
        }

        v52 = v34 < v35;
        if (v34 < v35 && v51 <= v30)
        {
          break;
        }

LABEL_46:
        if (!v52)
        {
          goto LABEL_242;
        }

        if (v13 <= v35)
        {
          goto LABEL_295;
        }

        v64 = (v14 + 48 * v35);
        v65 = *v64;
        v66 = v64[1];
        v67 = vcgtq_f32(*v64, v66);
        v67.i32[3] = v67.i32[2];
        v68 = vmaxvq_u32(v67);
        v69 = vmulq_f32(vaddq_f32(*v64, v66), v40);
        v70 = v69.i64[1];
        if (v68 >= 0)
        {
          v71 = v69.i64[0];
        }

        else
        {
          v71 = 0;
        }

        if (v68 < 0)
        {
          v70 = 0;
        }

        v396.i64[0] = v71;
        v396.i64[1] = v70;
        v72 = (((v396.f32[v7] - v19) / v20) * v36);
        if (v39 < v72)
        {
          v72 = a6 - 1;
        }

        v73 = v34 < v35;
        if (v34 < v35 && v72 > v30)
        {
          v74 = v14 + 48 * v35 - 48;
          while (v13 > --v35)
          {
            v41.i32[3] = 0;
            v66.i32[3] = 0;
            v41 = vmaxnmq_f32(v41, v66);
            v42.i32[3] = 0;
            v65.i32[3] = 0;
            v42 = vminnmq_f32(v42, v65);
            v65 = *v74;
            v66 = *(v74 + 16);
            v75 = vcgtq_f32(*v74, v66);
            v75.i32[3] = v75.i32[2];
            v76 = vmaxvq_u32(v75);
            v77 = vmulq_f32(vaddq_f32(*v74, v66), v40);
            v78 = v77.i64[1];
            if (v76 >= 0)
            {
              v79 = v77.i64[0];
            }

            else
            {
              v79 = 0;
            }

            if (v76 < 0)
            {
              v78 = 0;
            }

            v396.i64[0] = v79;
            v396.i64[1] = v78;
            v80 = ((v396.f32[v7] - v19) / v20) * v36;
            if (v39 >= v80)
            {
              v81 = v80;
            }

            else
            {
              v81 = a6 - 1;
            }

            v73 = v34 < v35;
            if (v34 < v35)
            {
              v74 -= 48;
              if (v81 > v30)
              {
                continue;
              }
            }

            goto LABEL_69;
          }

          goto LABEL_290;
        }

LABEL_69:
        if (v73)
        {
          v82 = (v14 + 48 * v34);
          v83 = *v82;
          v84 = v82[2];
          v397 = v82[1];
          v398 = v84;
          v396 = v83;
          v85 = v14 + 48 * v35;
          v86 = *v85;
          v87 = *(v85 + 16);
          v82[2].i32[0] = *(v85 + 32);
          *v82 = v86;
          v82[1] = v87;
          v88 = a2[1];
          if (v88 <= v35)
          {
            goto LABEL_296;
          }

          v89 = &(*a2)[3 * v35];
          *v89 = v396;
          v89[1] = v397;
          v89[2].i32[0] = v398.i32[0];
          v13 = a2[1];
          if (v13 <= v34)
          {
            goto LABEL_297;
          }

          if (v13 <= v35)
          {
            goto LABEL_298;
          }

          v37.i32[3] = 0;
          v14 = *a2;
          v90 = &(*a2)[3 * v34];
          v92 = *v90;
          v91 = v90[1];
          v91.i32[3] = 0;
          v37 = vmaxnmq_f32(v37, v91);
          v38.i32[3] = 0;
          v92.i32[3] = 0;
          v38 = vminnmq_f32(v38, v92);
          v93 = &(*a2)[3 * v35];
          v42.i32[3] = 0;
          v94 = *v93;
          v95 = v93[1];
          v94.i32[3] = 0;
          v41.i32[3] = 0;
          v42 = vminnmq_f32(v42, v94);
          v95.i32[3] = 0;
          v41 = vmaxnmq_f32(v41, v95);
          ++v34;
          --v35;
        }

        if (v34 >= v35)
        {
          goto LABEL_242;
        }
      }

      v53 = (v34 + 1);
      v54 = (v14 + 48 * v34 + 64);
      while (v13 != v53)
      {
        v37.i32[3] = 0;
        v45.i32[3] = 0;
        v37 = vmaxnmq_f32(v37, v45);
        v38.i32[3] = 0;
        v44.i32[3] = 0;
        v38 = vminnmq_f32(v38, v44);
        v44 = v54[-1];
        v45 = *v54;
        v55 = vcgtq_f32(v44, *v54);
        v55.i32[3] = v55.i32[2];
        v56 = vmaxvq_u32(v55);
        v57 = vmulq_f32(vaddq_f32(v44, *v54), v40);
        v58 = v57.i64[1];
        v59 = v56 < 0;
        if (v56 >= 0)
        {
          v60 = v57.i64[0];
        }

        else
        {
          v60 = 0;
        }

        if (v59)
        {
          v58 = 0;
        }

        v396.i64[0] = v60;
        v396.i64[1] = v58;
        v61 = ((v396.f32[v7] - v19) / v20) * v36;
        if (v39 >= v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = a6 - 1;
        }

        v63 = v53 >= v35;
        v52 = v53 < v35;
        v53 = (v53 + 1);
        if (!v63)
        {
          v54 += 3;
          if (v62 <= v30)
          {
            continue;
          }
        }

        v34 = &v53[-1].u64[1] + 7;
        goto LABEL_46;
      }

      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v13);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v369, v379);
      __break(1u);
LABEL_290:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v13);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v370, v380);
      __break(1u);
      goto LABEL_291;
    }

    v41.i64[0] = 0x7F0000007FLL;
    v41.i64[1] = 0x7F0000007FLL;
    v42 = vnegq_f32(v41);
    v38 = v42;
    v37.i64[0] = 0x7F0000007FLL;
    v37.i64[1] = 0x7F0000007FLL;
LABEL_242:
    a1->i64[0] = v14;
    a1->i64[1] = v34;
    v301 = v10 - v34;
    a1[1] = v38;
    a1[2] = v37;
    a1[3].i64[0] = v14 + 48 * v34;
  }

  a1[3].i64[1] = v301;
  a1[4] = v42;
  a1[5] = v41;
}

unint64_t re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive < size()", "range", 661, a2, v3);
    _os_crash("assertion failure: (fromInclusive < size()) Index out of range. fromInclusive = %zu, size = %zu", v5, v7);
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 48 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 662, a2, v3);
  result = _os_crash("assertion failure: (toExclusive <= size()) Index out of range. toExclusive = %zu, size = %zu", v6, v8);
  __break(1u);
  return result;
}

void re::intersectAABBArrays(uint64_t a1)
{
  *&v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v72 = v8;
  v80 = v1;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v111 = *MEMORY[0x1E69E9840];
  re::StackScratchAllocator::StackScratchAllocator(v101);
  v109[0] = 0;
  v99 = 0;
  v100 = 0;
  v98 = 0;
  re::FixedArray<unsigned int>::init<int>(&v98, v101, v7, v109);
  v19 = 0x3FFFFFFFFFFFF200;
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v21 = vnegq_f32(v20);
  do
  {
    v22 = &v109[v19];
    *(v22 + 897) = 0uLL;
    *(v22 + 896) = 0uLL;
    *(v22 + 898) = v21;
    *(v22 + 899) = v20;
    *(v22 + 900) = v21;
    *(v22 + 901) = v20;
    v19 += 28;
  }

  while (v19 * 4);
  v110 = 0;
  v23.i64[0] = 0x7F0000007FLL;
  v23.i64[1] = 0x7F0000007FLL;
  v24 = vnegq_f32(v23);
  v25.i64[0] = 0x7F0000007FLL;
  v25.i64[1] = 0x7F0000007FLL;
  v26 = v24;
  if (v16)
  {
    v26 = vnegq_f32(v25);
    v27 = v18;
    do
    {
      v26.i32[3] = 0;
      v28 = *v27;
      v29 = v27[1];
      v27 += 3;
      v28.i32[3] = 0;
      v25.i32[3] = 0;
      v26 = vminnmq_f32(v26, v28);
      v29.i32[3] = 0;
      v25 = vmaxnmq_f32(v25, v29);
    }

    while (v27 != &v18[3 * v16]);
  }

  if (v12)
  {
    v23.i64[0] = 0x7F0000007FLL;
    v23.i64[1] = 0x7F0000007FLL;
    v24 = vnegq_f32(v23);
    v30 = v14;
    do
    {
      v24.i32[3] = 0;
      v31 = *v30;
      v32 = v30[1];
      v30 += 3;
      v31.i32[3] = 0;
      v23.i32[3] = 0;
      v24 = vminnmq_f32(v24, v31);
      v32.i32[3] = 0;
      v23 = vmaxnmq_f32(v23, v32);
    }

    while (v30 != &v14[3 * v12]);
  }

  *&v102 = v18;
  *(&v102 + 1) = v16;
  v103.i64[0] = v14;
  v103.i64[1] = v12;
  v104 = v26;
  v105 = v25;
  v106 = v24;
  v107 = v23;
  v108 = 0;
  re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
  if (v110)
  {
    v79 = v5;
    v81 = vdupq_lane_s32(v80, 0);
    while (1)
    {
      v34 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v33);
      v35 = *v34;
      v36 = v34[1];
      v38 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v37);
      v39 = *(v38 + 16);
      v40 = *(v38 + 24);
      v42 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v41);
      v43 = *(v42 + 48);
      v96 = *(v42 + 32);
      v97 = v43;
      v45 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v44);
      v46 = *(v45 + 80);
      v94 = *(v45 + 64);
      v95 = v46;
      v48 = re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(v109, v47);
      if (!v110)
      {
        re::internal::assertLog(4, v33, "assertion failure: '%s' (%s:line %i) InlineStack is empty.", "m_size > 0", "pop", 68);
        _os_crash("assertion failure: (m_size > 0) InlineStack is empty.");
        __break(1u);
LABEL_44:
        std::__throw_bad_function_call[abi:nn200100]();
      }

      v49 = *(v48 + 96);
      v50 = --v110;
      if (v40 * v36 >= v79)
      {
        break;
      }

      if (v36)
      {
        v51 = 0;
        v52 = v81;
        do
        {
          if (v40)
          {
            v53 = (v35 + 48 * v51);
            v54 = v39;
            v55 = v40;
            do
            {
              if (v53[2].i32[0] != v54[2].i32[0])
              {
                v56 = vcgtq_f32(*v53, vaddq_f32(v52, v54[1]));
                v56.i32[3] = v56.i32[2];
                if ((vmaxvq_u32(v56) & 0x80000000) == 0)
                {
                  v57 = vcgtq_f32(vsubq_f32(*v54, v52), v53[1]);
                  v57.i32[3] = v57.i32[2];
                  if ((vmaxvq_u32(v57) & 0x80000000) == 0)
                  {
                    v58 = *(v10 + 24);
                    if (!v58)
                    {
                      goto LABEL_44;
                    }

                    (*(*v58 + 48))(v58, v35 + 48 * v51, v54);
                    v52 = v81;
                  }
                }
              }

              v54 += 3;
              --v55;
            }

            while (v55);
          }

          ++v51;
        }

        while (v51 != v36);
        goto LABEL_37;
      }

LABEL_38:
      if (!v50)
      {
        goto LABEL_39;
      }
    }

    *&v102 = v35;
    *(&v102 + 1) = v36;
    v103 = v96;
    v104 = v97;
    re::splitClusters(&v88, &v102, v49, v72, v100, v99, v3);
    *&v102 = v39;
    *(&v102 + 1) = v40;
    v103 = v94;
    v104 = v95;
    re::splitClusters(&v82, &v102, v49, v72, v100, v99, v3);
    v59 = (v49 + 1) % 3;
    v60 = v89;
    v61 = v84;
    v62 = vcgtq_f32(v89, v84);
    v62.i32[3] = v62.i32[2];
    if ((vmaxvq_u32(v62) & 0x80000000) == 0)
    {
      v63 = vcgtq_f32(v83, v90);
      v63.i32[3] = v63.i32[2];
      if ((vmaxvq_u32(v63) & 0x80000000) == 0)
      {
        v102 = v88;
        v73 = v89;
        v76 = v84;
        v103 = v82;
        v104 = v89;
        v105 = v90;
        v106 = v83;
        v107 = v84;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v60 = v73;
        v61 = v76;
      }
    }

    v64 = v87;
    v65 = vcgtq_f32(v60, v87);
    v65.i32[3] = v65.i32[2];
    if ((vmaxvq_u32(v65) & 0x80000000) == 0)
    {
      v66 = vcgtq_f32(v86, v90);
      v66.i32[3] = v66.i32[2];
      if ((vmaxvq_u32(v66) & 0x80000000) == 0)
      {
        v102 = v88;
        v74 = v87;
        v77 = v61;
        v103 = v85;
        v104 = v89;
        v105 = v90;
        v106 = v86;
        v107 = v87;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v64 = v74;
        v61 = v77;
      }
    }

    v67 = v92;
    v68 = vcgtq_f32(v92, v61);
    v68.i32[3] = v68.i32[2];
    if ((vmaxvq_u32(v68) & 0x80000000) == 0)
    {
      v69 = vcgtq_f32(v83, v93);
      v69.i32[3] = v69.i32[2];
      if ((vmaxvq_u32(v69) & 0x80000000) == 0)
      {
        v102 = v91;
        v103 = v82;
        v104 = v92;
        v105 = v93;
        v106 = v83;
        v107 = v84;
        v108 = v59;
        v75 = v64;
        v78 = v92;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
        v64 = v75;
        v67 = v78;
      }
    }

    v70 = vcgtq_f32(v67, v64);
    v70.i32[3] = v70.i32[2];
    if ((vmaxvq_u32(v70) & 0x80000000) == 0)
    {
      v71 = vcgtq_f32(v86, v93);
      v71.i32[3] = v71.i32[2];
      if ((vmaxvq_u32(v71) & 0x80000000) == 0)
      {
        v102 = v91;
        v103 = v85;
        v104 = v92;
        v105 = v93;
        v106 = v86;
        v107 = v87;
        v108 = v59;
        re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(v109, &v102);
      }
    }

LABEL_37:
    v50 = v110;
    goto LABEL_38;
  }

LABEL_39:
  if (v98 && v99)
  {
    (*(*v98 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v101);
}

uint64_t re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::push(uint64_t result, __int128 *a2)
{
  v4 = *(result + 14336);
  if (v4 >= 0x80)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) InlineStack is full.", "m_size < N", "push", 60, v2, v3);
    result = _os_crash("assertion failure: (m_size < N) InlineStack is full.");
    __break(1u);
  }

  else
  {
    v5 = (result + 112 * v4);
    v6 = *a2;
    v7 = a2[2];
    v5[1] = a2[1];
    v5[2] = v7;
    *v5 = v6;
    v8 = a2[3];
    v9 = a2[4];
    v10 = a2[6];
    v5[5] = a2[5];
    v5[6] = v10;
    v5[3] = v8;
    v5[4] = v9;
    ++*(result + 14336);
  }

  return result;
}

unint64_t re::InlineStack<re::intersectAABBArrays(re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,re::MutableSlice<re::Pair<re::AABB,unsigned int,true>>,std::function<void ()(re::Pair<re::AABB,unsigned int,true> const&,re::Pair<re::AABB,unsigned int,true> const&)>,float,BOOL,int,int,float)::StackEntry,128ul>::top(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 14336);
  if (v2)
  {
    if (v2 < 0x81)
    {
      return a1 + 112 * v2 - 112;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) InlineStack is empty.", "m_size > 0", "top", 77);
    _os_crash("assertion failure: (m_size > 0) InlineStack is empty.");
    __break(1u);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_size <= N", "top", 78);
  result = _os_crash("assertion failure: (m_size <= N) ");
  __break(1u);
  return result;
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::splitClusters(re::ClustersAABB,int,BOOL,re::MutableSlice<unsigned int>,float)::$_1 &,re::Pair<re::AABB,unsigned int,true> *,0>(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, int *a4)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v5 = vcgtq_f32(*a2, v4);
  v5.i32[3] = v5.i32[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = vmaxvq_u32(v5);
  v9 = vaddq_f32(*a2, v4);
  v10.i64[0] = 0x3F0000003F000000;
  v10.i64[1] = 0x3F0000003F000000;
  v11 = vmulq_f32(v9, v10);
  v12 = v11.i64[1];
  if (v8 >= 0)
  {
    v13 = v11.i64[0];
  }

  else
  {
    v13 = 0;
  }

  if (v8 < 0)
  {
    v12 = 0;
  }

  v84 = v13;
  v85 = v12;
  v14 = *a4;
  v15 = *(&v84 + v14);
  v16 = vcgtq_f32(v6, v7);
  v16.i32[3] = v16.i32[2];
  v17 = vmaxvq_u32(v16);
  v18 = vmulq_f32(vaddq_f32(v6, v7), v10);
  v19 = v18.i64[1];
  v20 = v17 < 0;
  if (v17 >= 0)
  {
    v21 = v18.i64[0];
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v19 = 0;
  }

  v82 = v21;
  v83 = v19;
  v22 = a3[1];
  v23 = vcgtq_f32(*a3, v22);
  v23.i32[3] = v23.i32[2];
  v24 = vmulq_f32(vaddq_f32(*a3, v22), v10);
  v25 = v24.i64[1];
  if ((vmaxvq_u32(v23) & 0x80000000) == 0)
  {
    v26 = v24.i64[0];
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  if (v15 < *(&v82 + v14))
  {
    v84 = v26;
    v85 = v25;
    v27 = *(&v84 + v14);
    v82 = v13;
    v83 = v12;
    if (v27 >= *(&v82 + v14))
    {
      v58 = a1[1];
      v86 = a1[2];
      v59 = *a1;
      v60 = a2[2].i32[0];
      v61 = a2[1];
      *a1 = *a2;
      a1[1] = v61;
      a1[2].i32[0] = v60;
      *a2 = v59;
      a2[1] = v58;
      a2[2].i32[0] = v86.i32[0];
      v62 = a3[1];
      v63 = *a2;
      v64 = a2[1];
      v65 = vcgtq_f32(*a3, v62);
      v65.i32[3] = v65.i32[2];
      v66 = vmaxvq_u32(v65);
      v67 = vaddq_f32(*a3, v62);
      v68.i64[0] = 0x3F0000003F000000;
      v68.i64[1] = 0x3F0000003F000000;
      v69 = vmulq_f32(v67, v68);
      v70 = v69.i64[1];
      if (v66 >= 0)
      {
        v71 = v69.i64[0];
      }

      else
      {
        v71 = 0;
      }

      if (v66 < 0)
      {
        v70 = 0;
      }

      v84 = v71;
      v85 = v70;
      v72 = *a4;
      v73 = *(&v84 + v72);
      v74 = vcgtq_f32(v63, v64);
      v74.i32[3] = v74.i32[2];
      v75 = vmaxvq_u32(v74);
      v76 = vmulq_f32(vaddq_f32(v63, v64), v68);
      v77 = v76.i64[1];
      if (v75 >= 0)
      {
        v78 = v76.i64[0];
      }

      else
      {
        v78 = 0;
      }

      if (v75 < 0)
      {
        v77 = 0;
      }

      v82 = v78;
      v83 = v77;
      if (v73 >= *(&v82 + v72))
      {
        return 1;
      }

      v28 = a2[1];
      v86 = a2[2];
      v29 = *a2;
      v79 = a3[2].i32[0];
      v80 = a3[1];
      *a2 = *a3;
      a2[1] = v80;
      a2[2].i32[0] = v79;
    }

    else
    {
      v28 = a1[1];
      v86 = a1[2];
      v29 = *a1;
      v30 = a3[2].i32[0];
      v31 = a3[1];
      *a1 = *a3;
      a1[1] = v31;
      a1[2].i32[0] = v30;
    }

    *a3 = v29;
    a3[1] = v28;
    a3[2].i32[0] = v86.i32[0];
    return 1;
  }

  v84 = v26;
  v85 = v25;
  v32 = *(&v84 + v14);
  v82 = v13;
  v83 = v12;
  if (v32 < *(&v82 + v14))
  {
    v33 = a2[1];
    v86 = a2[2];
    v34 = *a2;
    v35 = a3[2].i32[0];
    v36 = a3[1];
    *a2 = *a3;
    a2[1] = v36;
    a2[2].i32[0] = v35;
    *a3 = v34;
    a3[1] = v33;
    a3[2].i32[0] = v86.i32[0];
    v37 = a2[1];
    v38 = *a1;
    v39 = a1[1];
    v40 = vcgtq_f32(*a2, v37);
    v40.i32[3] = v40.i32[2];
    v41 = vmaxvq_u32(v40);
    v42 = vaddq_f32(*a2, v37);
    v43.i64[0] = 0x3F0000003F000000;
    v43.i64[1] = 0x3F0000003F000000;
    v44 = vmulq_f32(v42, v43);
    v45 = v44.i64[1];
    if (v41 >= 0)
    {
      v46 = v44.i64[0];
    }

    else
    {
      v46 = 0;
    }

    if (v41 < 0)
    {
      v45 = 0;
    }

    v84 = v46;
    v85 = v45;
    v47 = *a4;
    v48 = *(&v84 + v47);
    v49 = vcgtq_f32(v38, v39);
    v49.i32[3] = v49.i32[2];
    v50 = vmaxvq_u32(v49);
    v51 = vmulq_f32(vaddq_f32(v38, v39), v43);
    v52 = v51.i64[1];
    if (v50 >= 0)
    {
      v53 = v51.i64[0];
    }

    else
    {
      v53 = 0;
    }

    if (v50 < 0)
    {
      v52 = 0;
    }

    v82 = v53;
    v83 = v52;
    if (v48 < *(&v82 + v47))
    {
      v54 = a1[1];
      v86 = a1[2];
      v55 = *a1;
      v56 = a2[2].i32[0];
      v57 = a2[1];
      *a1 = *a2;
      a1[1] = v57;
      a1[2].i32[0] = v56;
      *a2 = v55;
      a2[1] = v54;
      a2[2].i32[0] = v86.i32[0];
    }

    return 1;
  }

  return 0;
}

void *re::allocInfo_GeomBuildBoxOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B73A8, "GeomBuildBoxOptions");
    __cxa_guard_release(&qword_1EE1B6E18);
  }

  return &unk_1EE1B73A8;
}

void re::initInfo_GeomBuildBoxOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v48[0] = 0x8A7565098DA98CALL;
  v48[1] = "GeomBuildBoxOptions";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE1B6E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E20))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "widthSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7270 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7278 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthSegmentCount";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7280 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint16_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "cornerSegmentCount";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x600000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7288 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "radius";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7290 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "width";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xC00000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7298 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "height";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1000000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B72A0 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "depth";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1400000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B72A8 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_BOOL(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "addUVs";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1800000009;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1B72B0 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_BOOL(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "addNormals";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x190000000ALL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1B72B8 = v46;
    __cxa_guard_release(&qword_1EE1B6E20);
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1B7270;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildBoxOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildBoxOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildBoxOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildBoxOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v47 = v49;
}

double re::internal::defaultConstruct<re::GeomBuildBoxOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x1000100010001;
  result = 0.0078125;
  *(a3 + 8) = xmmword_1E305B4C0;
  *(a3 + 24) = 257;
  *(a3 + 26) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildBoxOptions>(uint64_t a1)
{
  *a1 = 0x1000100010001;
  result = 0.0078125;
  *(a1 + 8) = xmmword_1E305B4C0;
  *(a1 + 24) = 257;
  *(a1 + 26) = 0;
  return result;
}

void *re::allocInfo_GeomBuildBoxWithRoundedCornersOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7438, "GeomBuildBoxWithRoundedCornersOptions");
    __cxa_guard_release(&qword_1EE1B6E28);
  }

  return &unk_1EE1B7438;
}

void re::initInfo_GeomBuildBoxWithRoundedCornersOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v72[0] = 0x38926F5D37C171DCLL;
  v72[1] = "GeomBuildBoxWithRoundedCornersOptions";
  if (v72[0])
  {
    if (v72[0])
    {
    }
  }

  *(this + 2) = v73;
  if ((atomic_load_explicit(&qword_1EE1B6E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E30))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "widthSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7328 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7330 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "depthSegmentCount";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7338 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint16_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "majorSegmentCount";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x600000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7340 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint16_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "minorSegmentCount";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7348 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "majorRadius";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xC00000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7350 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_float(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "minorRadius";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1000000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B7358 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_float(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "width";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1400000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B7360 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_float(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "height";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1800000009;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1B7368 = v42;
    v43 = re::introspectionAllocator();
    v45 = re::introspect_float(1, v44);
    v46 = (*(*v43 + 32))(v43, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "depth";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x1C0000000ALL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1B7370 = v46;
    v47 = re::introspectionAllocator();
    v49 = re::introspect_BOOL(1, v48);
    v50 = (*(*v47 + 32))(v47, 72, 8);
    *v50 = 1;
    *(v50 + 8) = "addUVs";
    *(v50 + 16) = v49;
    *(v50 + 24) = 0;
    *(v50 + 32) = 0x200000000BLL;
    *(v50 + 40) = 0;
    *(v50 + 48) = 0;
    *(v50 + 56) = 0;
    *(v50 + 64) = 0;
    qword_1EE1B7378 = v50;
    v51 = re::introspectionAllocator();
    v53 = re::introspect_BOOL(1, v52);
    v54 = (*(*v51 + 32))(v51, 72, 8);
    *v54 = 1;
    *(v54 + 8) = "addNormals";
    *(v54 + 16) = v53;
    *(v54 + 24) = 0;
    *(v54 + 32) = 0x210000000CLL;
    *(v54 + 40) = 0;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 0;
    qword_1EE1B7380 = v54;
    v55 = re::introspectionAllocator();
    v57 = re::introspect_BOOL(1, v56);
    v58 = (*(*v55 + 32))(v55, 72, 8);
    *v58 = 1;
    *(v58 + 8) = "continuousCorners";
    *(v58 + 16) = v57;
    *(v58 + 24) = 0;
    *(v58 + 32) = 0x230000000DLL;
    *(v58 + 40) = 0;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    qword_1EE1B7388 = v58;
    v59 = re::introspectionAllocator();
    v61 = re::introspect_BOOL(1, v60);
    v62 = (*(*v59 + 32))(v59, 72, 8);
    *v62 = 1;
    *(v62 + 8) = "clampContinuousCorners";
    *(v62 + 16) = v61;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0x240000000ELL;
    *(v62 + 40) = 0;
    *(v62 + 48) = 0;
    *(v62 + 56) = 0;
    *(v62 + 64) = 0;
    qword_1EE1B7390 = v62;
    v63 = re::introspectionAllocator();
    v65 = re::introspect_BOOL(1, v64);
    v66 = (*(*v63 + 32))(v63, 72, 8);
    *v66 = 1;
    *(v66 + 8) = "normalizeUVs";
    *(v66 + 16) = v65;
    *(v66 + 24) = 0;
    *(v66 + 32) = 0x250000000FLL;
    *(v66 + 40) = 0;
    *(v66 + 48) = 0;
    *(v66 + 56) = 0;
    *(v66 + 64) = 0;
    qword_1EE1B7398 = v66;
    v67 = re::introspectionAllocator();
    v69 = re::introspect_BOOL(1, v68);
    v70 = (*(*v67 + 32))(v67, 72, 8);
    *v70 = 1;
    *(v70 + 8) = "reflectUVs";
    *(v70 + 16) = v69;
    *(v70 + 24) = 0;
    *(v70 + 32) = 0x2600000010;
    *(v70 + 40) = 0;
    *(v70 + 48) = 0;
    *(v70 + 56) = 0;
    *(v70 + 64) = 0;
    qword_1EE1B73A0 = v70;
    __cxa_guard_release(&qword_1EE1B6E30);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 16;
  *(this + 8) = &qword_1EE1B7328;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildBoxWithRoundedCornersOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v71 = v73;
}

double re::internal::defaultConstruct<re::GeomBuildBoxWithRoundedCornersOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0x3000100010001;
  *(a3 + 8) = 4;
  *(a3 + 12) = xmmword_1E305B4D0;
  *(a3 + 28) = 1065353216;
  *&result = 16777473;
  *(a3 + 32) = 16777473;
  *(a3 + 36) = 1;
  *(a3 + 38) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildBoxWithRoundedCornersOptions>(uint64_t a1)
{
  *a1 = 0x3000100010001;
  *(a1 + 8) = 4;
  *(a1 + 12) = xmmword_1E305B4D0;
  *(a1 + 28) = 1065353216;
  *&result = 16777473;
  *(a1 + 32) = 16777473;
  *(a1 + 36) = 1;
  *(a1 + 38) = 0;
  return result;
}

void *re::allocInfo_GeomBuildCapsuleOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B74C8, "GeomBuildCapsuleOptions");
    __cxa_guard_release(&qword_1EE1B6E38);
  }

  return &unk_1EE1B74C8;
}

void re::initInfo_GeomBuildCapsuleOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0x8C51E8B3ECDD9986;
  v36[1] = "GeomBuildCapsuleOptions";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1B6E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E40))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "radialSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7018 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7020 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "capSegmentCount";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7028 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "capRadius";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7030 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "height";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7038 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "addUVs";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7040 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "addNormals";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1100000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B7048 = v34;
    __cxa_guard_release(&qword_1EE1B6E40);
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7018;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildCapsuleOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildCapsuleOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildCapsuleOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildCapsuleOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v35 = v37;
}

double re::internal::defaultConstruct<re::GeomBuildCapsuleOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 4;
  result = 2.00000047;
  *(a3 + 8) = 0x400000003F000000;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildCapsuleOptions>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 4;
  result = 2.00000047;
  *(a1 + 8) = 0x400000003F000000;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *re::allocInfo_GeomBuildConeOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7558, "GeomBuildConeOptions");
    __cxa_guard_release(&qword_1EE1B6E48);
  }

  return &unk_1EE1B7558;
}

void re::initInfo_GeomBuildConeOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0xC49383041CB7C52;
  v36[1] = "GeomBuildConeOptions";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1B6E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E50))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "radialSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7050 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7058 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "height";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7060 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "radius";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7068 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "cap";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7070 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "addUVs";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0xD00000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7078 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "addNormals";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0xE00000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B7080 = v34;
    __cxa_guard_release(&qword_1EE1B6E50);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7050;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildConeOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildConeOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildConeOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildConeOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v35 = v37;
}

double re::internal::defaultConstruct<re::GeomBuildConeOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  *(a3 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a3 + 12) = 65793;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildConeOptions>(uint64_t a1)
{
  *a1 = 65544;
  *(a1 + 4) = 0x3F0000003F800000;
  *&result = 65793;
  *(a1 + 12) = 65793;
  return result;
}

void *re::allocInfo_GeomBuildCylinderOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B75E8, "GeomBuildCylinderOptions");
    __cxa_guard_release(&qword_1EE1B6E58);
  }

  return &unk_1EE1B75E8;
}

void re::initInfo_GeomBuildCylinderOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v44[0] = 0x289B3F5B491A3E2CLL;
  v44[1] = "GeomBuildCylinderOptions";
  if (v44[0])
  {
    if (v44[0])
    {
    }
  }

  *(this + 2) = v45;
  if ((atomic_load_explicit(&qword_1EE1B6E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E60))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "radialSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B70C0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B70C8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "height";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B70D0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "topRadius";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B70D8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "bottomRadius";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B70E0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "capTop";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B70E8 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "capBottom";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1100000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B70F0 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_BOOL(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "addUVs";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1200000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B70F8 = v38;
    v39 = re::introspectionAllocator();
    v41 = re::introspect_BOOL(1, v40);
    v42 = (*(*v39 + 32))(v39, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "addNormals";
    *(v42 + 16) = v41;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1300000009;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1B7100 = v42;
    __cxa_guard_release(&qword_1EE1B6E60);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B70C0;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildCylinderOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildCylinderOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildCylinderOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildCylinderOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v43 = v45;
}

double re::internal::defaultConstruct<re::GeomBuildCylinderOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65544;
  result = 0.0000305175853;
  *(a3 + 4) = 0x3F0000003F800000;
  *(a3 + 12) = 0x10101013F000000;
  *(a3 + 20) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildCylinderOptions>(uint64_t a1)
{
  *a1 = 65544;
  result = 0.0000305175853;
  *(a1 + 4) = 0x3F0000003F800000;
  *(a1 + 12) = 0x10101013F000000;
  *(a1 + 20) = 0;
  return result;
}

void re::introspect_GeomBuildPlaneOrientation(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B6E68, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B6E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E70))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B7108, "GeomBuildPlaneOrientation", 4, 4, 1, 1);
      qword_1EE1B7108 = &unk_1F5D0C658;
      qword_1EE1B7148 = &re::introspect_GeomBuildPlaneOrientation(BOOL)::enumTable;
      dword_1EE1B7118 = 9;
      __cxa_guard_release(&qword_1EE1B6E70);
    }

    if (_MergedGlobals_423)
    {
      break;
    }

    _MergedGlobals_423 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B7108, a2);
    v41 = 0xBA0BF2EDFBA4A4CCLL;
    v42 = "GeomBuildPlaneOrientation";
    v45 = 208862;
    v46 = "int";
    v4 = v44[0];
    v5 = v44[1];
    if (v45)
    {
      if (v45)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B7148;
      v45 = v4;
      v46 = v5;
      re::TypeBuilder::beginEnumType(v44, &v41, 1, 1, &v45);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v43.var0 = 2 * v11;
            v43.var1 = v10;
            re::TypeBuilder::addEnumConstant(v44, v15, &v43);
            if (*&v43.var0)
            {
              if (*&v43.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v43.var0 = 2 * v20;
              v43.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v44, v24, &v43);
              if (*&v43.var0)
              {
                if (*&v43.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v44, v26);
      xmmword_1EE1B7128 = v43;
      if (v41)
      {
        if (v41)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v42);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v40);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1B6E68))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 2;
      *(v29 + 16) = "PositiveY";
      qword_1EE1B6F88 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 3;
      *(v31 + 16) = "NegativeY";
      qword_1EE1B6F90 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 16) = "PositiveX";
      qword_1EE1B6F98 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 1;
      *(v35 + 16) = "NegativeX";
      qword_1EE1B6FA0 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "PositiveZ";
      qword_1EE1B6FA8 = v37;
      v38 = re::introspectionAllocator();
      v39 = (*(*v38 + 32))(v38, 24, 8);
      *v39 = 1;
      *(v39 + 8) = 5;
      *(v39 + 16) = "NegativeZ";
      qword_1EE1B6FB0 = v39;
      __cxa_guard_release(&qword_1EE1B6E68);
    }
  }
}

void *re::allocInfo_GeomBuildPlaneOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7678, "GeomBuildPlaneOptions");
    __cxa_guard_release(&qword_1EE1B6E78);
  }

  return &unk_1EE1B7678;
}

void re::initInfo_GeomBuildPlaneOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v43[0] = 0x85F4F1B50A8F3C68;
  v43[1] = "GeomBuildPlaneOptions";
  if (v43[0])
  {
    if (v43[0])
    {
    }
  }

  *(this + 2) = v44;
  if ((atomic_load_explicit(&qword_1EE1B6E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E80))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "widthSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7150 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "depthSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7158 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "cornerSegmentCount";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7160 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "width";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B7168 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "depth";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B7170 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_float(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "cornerRadius";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B7178 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "addUVs";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1400000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B7180 = v34;
    v35 = re::introspectionAllocator();
    v37 = re::introspect_BOOL(1, v36);
    v38 = (*(*v35 + 32))(v35, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "addNormals";
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x1500000008;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1B7188 = v38;
    v39 = re::introspectionAllocator();
    re::introspect_GeomBuildPlaneOrientation(v39, v40);
    v41 = (*(*v39 + 32))(v39, 72, 8);
    *v41 = 1;
    *(v41 + 8) = "orientation";
    *(v41 + 16) = &qword_1EE1B7108;
    *(v41 + 24) = 0;
    *(v41 + 32) = 0x1800000009;
    *(v41 + 40) = 0;
    *(v41 + 48) = 0;
    *(v41 + 56) = 0;
    *(v41 + 64) = 0;
    qword_1EE1B7190 = v41;
    __cxa_guard_release(&qword_1EE1B6E80);
  }

  *(this + 2) = 0x1C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B7150;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildPlaneOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildPlaneOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildPlaneOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildPlaneOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v42 = v44;
}

double re::internal::defaultConstruct<re::GeomBuildPlaneOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 65537;
  *(a3 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 20) = 257;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildPlaneOptions>(uint64_t a1)
{
  *a1 = 65537;
  *(a1 + 4) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 20) = 257;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_GeomBuildPyramidOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7708, "GeomBuildPyramidOptions");
    __cxa_guard_release(&qword_1EE1B6E88);
  }

  return &unk_1EE1B7708;
}

void re::initInfo_GeomBuildPyramidOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v32[0] = 0x4674A7F369EB880;
  v32[1] = "GeomBuildPyramidOptions";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1B6E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E90))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "segmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B6FB8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "width";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B6FC0 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "height";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B6FC8 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "depth";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B6FD0 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_BOOL(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "addUVs";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B6FD8 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "addNormals";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1100000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B6FE0 = v30;
    __cxa_guard_release(&qword_1EE1B6E90);
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B6FB8;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildPyramidOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildPyramidOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildPyramidOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildPyramidOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v31 = v33;
}

double re::internal::defaultConstruct<re::GeomBuildPyramidOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 4) = result;
  *(a3 + 12) = 1065353216;
  *(a3 + 16) = 257;
  *(a3 + 18) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::GeomBuildPyramidOptions>(uint64_t a1)
{
  *a1 = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 4) = result;
  *(a1 + 12) = 1065353216;
  *(a1 + 16) = 257;
  *(a1 + 18) = 0;
  return result;
}

void *re::allocInfo_GeomBuildSphereOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6E98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7798, "GeomBuildSphereOptions");
    __cxa_guard_release(&qword_1EE1B6E98);
  }

  return &unk_1EE1B7798;
}

void re::initInfo_GeomBuildSphereOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x7D389F564D24FD7ELL;
  v24[1] = "GeomBuildSphereOptions";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1B6EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EA0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "segmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B6F20 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "radius";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B6F28 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "addUVs";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B6F30 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "addNormals";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x900000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B6F38 = v22;
    __cxa_guard_release(&qword_1EE1B6EA0);
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B6F20;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildSphereOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildSphereOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildSphereOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildSphereOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::GeomBuildSphereOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 8;
  *(a3 + 4) = 1056964608;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<re::GeomBuildSphereOptions>(uint64_t result)
{
  *result = 8;
  *(result + 4) = 1056964608;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *re::allocInfo_GeomBuildTetrahedronOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EA8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B7828, "GeomBuildTetrahedronOptions");
    __cxa_guard_release(&qword_1EE1B6EA8);
  }

  return &unk_1EE1B7828;
}

void re::initInfo_GeomBuildTetrahedronOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xE0F66382351EDB28;
  v24[1] = "GeomBuildTetrahedronOptions";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1B6EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EB0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "segmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B6F40 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "length";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B6F48 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "addUVs";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B6F50 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "addNormals";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x900000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B6F58 = v22;
    __cxa_guard_release(&qword_1EE1B6EB0);
  }

  *(this + 2) = 0xC00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B6F40;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildTetrahedronOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildTetrahedronOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildTetrahedronOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildTetrahedronOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::GeomBuildTetrahedronOptions>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 4) = 1065353216;
  *(a3 + 8) = 257;
  *(a3 + 10) = 0;
}

uint64_t re::internal::defaultConstructV2<re::GeomBuildTetrahedronOptions>(uint64_t result)
{
  *result = 1;
  *(result + 4) = 1065353216;
  *(result + 8) = 257;
  *(result + 10) = 0;
  return result;
}

void *re::allocInfo_GeomBuildTubeOptions(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6EB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B78B8, "GeomBuildTubeOptions");
    __cxa_guard_release(&qword_1EE1B6EB8);
  }

  return &unk_1EE1B78B8;
}

void re::initInfo_GeomBuildTubeOptions(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v36[0] = 0xCAD475995321F50;
  v36[1] = "GeomBuildTubeOptions";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1B6EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6EC0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint16_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "radialSegmentCount";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B7088 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "heightSegmentCount";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x200000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B7090 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "height";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x400000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1B7098 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_float(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "innerRadius";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x800000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1B70A0 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_float(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "outerRadius";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xC00000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1B70A8 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::introspect_BOOL(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "addUVs";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x1000000006;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1B70B0 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_BOOL(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "addNormals";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x1100000007;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1B70B8 = v34;
    __cxa_guard_release(&qword_1EE1B6EC0);
  }

  *(this + 2) = 0x1400000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B7088;
  *(this + 9) = re::internal::defaultConstruct<re::GeomBuildTubeOptions>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::GeomBuildTubeOptions>;
  *(this + 13) = re::internal::defaultConstructV2<re::GeomBuildTubeOptions>;
  *(this + 14) = re::internal::defaultDestructV2<re::GeomBuildTubeOptions>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v35 = v37;
}