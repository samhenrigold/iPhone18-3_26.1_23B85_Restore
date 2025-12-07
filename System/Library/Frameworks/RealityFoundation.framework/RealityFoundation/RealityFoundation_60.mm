void *specialized classify<A>(subpaths:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v5 = (a1 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v6 = 0.000001;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v40 = *&v5[16 * v8];
      v41 = *&v5[16 * v8 + 8];
      if (v41 >= 2)
      {
        v42 = (v40 + 16);
        _Q0 = *v40;
        v44 = v41 - 1;
        v45 = 0.0;
        _Q2 = *v40;
        do
        {
          v47 = _Q2;
          v48 = *v42++;
          _Q2 = v48;
          v45 = v45 + -*(&v47 + 1) * *&v48 + *&v47 * *(&v48 + 1);
          --v44;
        }

        while (v44);
        __asm { FMLA            D3, D2, V0.D[1] }

        if (fabs(v45 + _D3) > v6)
        {
          v69 = *&v5[16 * v8];
          if (v45 + _D3 <= 0.0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              a4 = v10;
            }

            else
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
            }

            v39 = v69;
            v4 = *(a4 + 2);
            v53 = *(a4 + 3);
            v12 = v4 + 1;
            if (v4 >= v53 >> 1)
            {
              v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v4 + 1, 1, a4);
              v39 = v69;
              a4 = v54;
              v10 = v54;
            }

            else
            {
              v10 = a4;
            }
          }

          else
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              a4 = v9;
            }

            else
            {
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
            }

            v39 = v69;
            v4 = *(a4 + 2);
            v14 = *(a4 + 3);
            v12 = v4 + 1;
            if (v4 >= v14 >> 1)
            {
              goto LABEL_106;
            }

            v9 = a4;
          }

LABEL_107:
          *(a4 + 2) = v12;
          *&a4[16 * v4 + 32] = v39;
        }
      }

      v8 = (v8 + 1);
    }

    while (v8 != v7);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 2);
  if (v11)
  {
    v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v12 + 16) = v11;
    bzero((v12 + 32), v11);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v55 = *(v9 + 2);
  if (v55)
  {
    v7 = 0;
    v8 = *(v10 + 2);
    v56 = v9 + 32;
    v57 = v9;
    v13 = v12 + 32;
    v64 = v10 + 32;
    v61 = MEMORY[0x1E69E7CC0];
    v62 = v8;
    v63 = v10;
    v60 = v12;
    while (1)
    {
      v14 = *(v57 + 2);
      if (v7 >= v14)
      {
        goto LABEL_103;
      }

      v58 = v7;
      v15 = *&v56[16 * v7];
      v59 = v15;
      if (v8)
      {
        break;
      }

      v5 = MEMORY[0x1E69E7CC0];
LABEL_85:

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v30 = v58;
        v31 = v61;
      }

      else
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        v30 = v58;
      }

      v4 = v31[2];
      v32 = v31[3];
      v33 = v59;
      if (v4 >= v32 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v4 + 1, 1, v31);
        v33 = v59;
        v31 = v35;
      }

      v7 = v30 + 1;
      v31[2] = v4 + 1;
      v61 = v31;
      v34 = &v31[3 * v4];
      *(v34 + 2) = v33;
      v34[6] = v5;

      if (v7 == v55)
      {
LABEL_94:

        v36 = v61;
        goto LABEL_95;
      }
    }

    v7 = 0;
    v16 = *(&v15 + 1);
    v67 = v15;
    v66 = *(&v15 + 1) - 1;
    v5 = MEMORY[0x1E69E7CC0];
    v65 = *(&v15 + 1);
LABEL_15:
    v14 = *(v12 + 16);
    if (v7 >= v14)
    {
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if (*(v13 + v7))
    {
      goto LABEL_14;
    }

    v14 = *(v10 + 2);
    if (v7 >= v14)
    {
      goto LABEL_99;
    }

    if (v16 < 2)
    {
      goto LABEL_14;
    }

    v4 = 0;
    v17 = *&v64[16 * v7];
    v18 = *v17;
    v6 = v17->f64[1];
    v19 = v66;
    v10 = v67;
    v8 = v67;
    v68 = *&v64[16 * v7];
    v69 = *v17;
    while (1)
    {
      v20 = v8[1].f64[1];
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(v18, *v8))).i32[1])
      {
        if (v20 > v6)
        {
          goto LABEL_21;
        }

        if (_simd_orient_pd2(v8[1], *v8, v18) > 0.0)
        {
          _VF = __OFSUB__(v4--, 1);
          if (_VF)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        if (v6 >= v20)
        {
          goto LABEL_21;
        }

        if (_simd_orient_pd2(*v8, v8[1], v18) > 0.0)
        {
          _VF = __OFADD__(v4++, 1);
          if (_VF)
          {
            goto LABEL_97;
          }
        }
      }

      v18 = v69;
LABEL_21:
      ++v8;
      if (!--v19)
      {
        v22 = v67->f64[1];
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(v18, *v8))).i32[1])
        {
          if (v22 <= v6)
          {
            if (_simd_orient_pd2(*v67, *v8, v18) > 0.0)
            {
              _VF = __OFSUB__(v4--, 1);
              if (_VF)
              {
                goto LABEL_104;
              }

              goto LABEL_42;
            }

            v18 = v69;
          }

LABEL_45:
          if (v4)
          {
            goto LABEL_46;
          }

LABEL_12:
          v10 = v63;
          goto LABEL_13;
        }

        if (v6 >= v22)
        {
          goto LABEL_45;
        }

        if (_simd_orient_pd2(*v8, *v67, v18) > 0.0)
        {
          _VF = __OFADD__(v4++, 1);
          if (_VF)
          {
            goto LABEL_105;
          }
        }

LABEL_42:
        v18 = v69;
        if (!v4)
        {
          goto LABEL_12;
        }

LABEL_46:
        v23 = *(v5 + 2);
        if (!v23)
        {
LABEL_77:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 + 1, 1, v5);
          }

          v8 = v62;
          v10 = v63;
          v12 = v60;
          v16 = v65;
          v4 = *(v5 + 2);
          v29 = *(v5 + 3);
          if (v4 >= v29 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v4 + 1, 1, v5);
          }

          *(v5 + 2) = v4 + 1;
          *&v5[16 * v4 + 32] = v68;
          v14 = *(v60 + 16);
          if (v7 >= v14)
          {
            goto LABEL_102;
          }

          *(v13 + v7) = 1;
          goto LABEL_14;
        }

        v4 = 0;
        while (1)
        {
          v24 = &v5[16 * v4 + 32];
          v25 = v24[1];
          if (v25 >= 2)
          {
            break;
          }

LABEL_50:
          if (++v4 == v23)
          {
            goto LABEL_77;
          }
        }

        v8 = 0;
        v12 = *v24;
        v26 = v25 - 1;
        v10 = *v24;
        while (2)
        {
          v27 = *(v10 + 3);
          if (vmovn_s64(vmvnq_s8(vcgeq_f64(v18, *v10))).i32[1])
          {
            if (v27 <= v6)
            {
              if (_simd_orient_pd2(*(v10 + 1), *v10, v18) > 0.0)
              {
                _VF = __OFSUB__(v8, 1);
                v8 = (v8 - 1);
                if (_VF)
                {
                  goto LABEL_93;
                }
              }

              goto LABEL_53;
            }
          }

          else if (v6 < v27)
          {
            if (_simd_orient_pd2(*v10, *(v10 + 1), v18) > 0.0)
            {
              _VF = __OFADD__(v8, 1);
              v8 = (v8 + 1);
              if (_VF)
              {
                __break(1u);
LABEL_93:
                __break(1u);
                goto LABEL_94;
              }
            }

LABEL_53:
            v18 = v69;
          }

          v10 += 16;
          if (--v26)
          {
            continue;
          }

          break;
        }

        v28 = *(v12 + 8);
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(v18, *v10))).i32[1])
        {
          if (v28 <= v6)
          {
            if (_simd_orient_pd2(*v12, *v10, v18) <= 0.0)
            {
              goto LABEL_48;
            }

            _VF = __OFSUB__(v8, 1);
            v8 = (v8 - 1);
            if (!_VF)
            {
              goto LABEL_48;
            }

LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v12, 1, a4);
            v39 = v69;
            a4 = v38;
            v9 = v38;
            goto LABEL_107;
          }
        }

        else if (v6 < v28)
        {
          if (_simd_orient_pd2(*v10, *v12, v18) > 0.0)
          {
            _VF = __OFADD__(v8, 1);
            v8 = (v8 + 1);
            if (_VF)
            {
              goto LABEL_101;
            }
          }

LABEL_48:
          v18 = v69;
        }

        if (!v8)
        {
          goto LABEL_50;
        }

        v10 = v63;
        v12 = v60;
LABEL_13:
        v8 = v62;
        v16 = v65;
LABEL_14:
        if (++v7 == v8)
        {
          goto LABEL_85;
        }

        goto LABEL_15;
      }
    }
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_95:

  return v36;
}

void trace(path:points:tangents:uniformSegmentsPerSpan:)(uint64_t a1@<X0>, char **a2@<X1>, char **a3@<X2>, uint64_t a4@<X3>, float64x2_t *a5@<X8>, float64x2_t a6@<Q0>)
{
  if (a4 < 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v11 = a4;
  v7 = a1;
  v12 = *(a1 + 16);
  v13 = v12 * a4;
  a5 = ((v12 * a4) >> 64);
  if (a5 != ((v12 * a4) >> 63))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v8 = a2;
  v9 = *a2;
  v10 = *(*a2 + 2);
  v14 = &v10[v13];
  if (__OFADD__(v10, v13))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v6 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (a5 = *(v9 + 3), v14 > (a5 >> 1)))
  {
    if (v10 <= v14)
    {
      v16 = &v10[v13];
    }

    else
    {
      v16 = v10;
    }

    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 0, v9);
  }

  *v8 = v9;
  v10 = *v6;
  v17 = *(*v6 + 2);
  v18 = __OFADD__(v17, v13);
  v19 = v17 + v13;
  if (v18)
  {
    goto LABEL_70;
  }

  v20 = swift_isUniquelyReferenced_nonNull_native();
  if (v20 && v19 <= *(v10 + 3) >> 1)
  {
    *v6 = v10;
    if (!v12)
    {
      return;
    }
  }

  else
  {
    if (v17 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v17;
    }

    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v21, 0, v10);
    *v6 = v10;
    if (!v12)
    {
      return;
    }
  }

  v58 = v7 + 2;
  v22 = &v7[5 * v12 + 2];
  v23 = v7[5 * v12];
  v71 = *(v22 - 48);
  v72 = v23;
  v73 = *(v22 - 16);
  v24 = *(v22 - 64);
  v69 = *(v22 - 80);
  v70 = v24;
  v7 = &v69;
  v25.f64[0] = PathSpan.tangent(at:)(1.0);
  v60 = v25;
  v26 = 0;
  v57 = v12;
  while (2)
  {
    v27 = 0;
    a5 = &v58[5 * v26];
    a6 = a5[3];
    v63 = a5[2];
    v64 = *a5;
    v28 = LOBYTE(a5[4].f64[0]);
    v59 = v26 + 1;
    v65 = a5[1];
    v29 = vsubq_f64(v65, *a5);
    v61 = a6;
    v62 = v29;
    do
    {
      if (v27 >= v11)
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_66;
      }

      v31 = v27 / v11;
      v32 = 1.0 - v31;
      if (v28)
      {
        v33 = v32 * v32;
        if (v28 == 1)
        {
          v66 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v65, v31 * (v32 + v32)), v64, v33), v63, v31 * v31);
          geom_quadratic_bezier_tangent_at_2d();
        }

        else
        {
          v66 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v65, v31 * (v33 * 3.0)), v64, v32 * v33), v63, v31 * v31 * (v32 * 3.0)), v61, v31 * (v31 * v31));
          geom_cubic_bezier_tangent_at_2d();
        }

        v35 = v34;
        v29 = v62;
      }

      else
      {
        v66 = vaddq_f64(vmulq_n_f64(v65, v31), vmulq_n_f64(v64, v32));
        v35 = v29;
      }

      v36 = sqrt(vaddvq_f64(vmulq_f64(v35, v35)));
      if (fabs(v36) > 0.000001)
      {
        v35 = vdivq_f64(v35, vdupq_lane_s64(*&v36, 0));
      }

      v38 = *(v9 + 2);
      v37 = *(v9 + 3);
      if (v38 >= v37 >> 1)
      {
        v54 = v35;
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v9);
        v35 = v54;
        v29 = v62;
        v9 = v43;
      }

      *(v9 + 2) = v38 + 1;
      a6 = v66;
      *&v9[16 * v38 + 32] = v66;
      *v8 = v9;
      if (v27)
      {
        v40 = *(v10 + 2);
        v39 = *(v10 + 3);
        v7 = (v40 + 1);
        if (v40 < v39 >> 1)
        {
          goto LABEL_42;
        }

LABEL_45:
        v55 = v35;
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v7, 1, v10);
        v35 = v55;
        v29 = v62;
        v10 = v44;
        goto LABEL_42;
      }

      a6 = vmulq_f64(v35, v35);
      v41 = sqrt(vaddvq_f64(a6));
      a6.f64[0] = fabs(v41);
      v40 = *(v10 + 2);
      v39 = *(v10 + 3);
      v42 = v39 >> 1;
      v7 = (v40 + 1);
      if (a6.f64[0] <= 0.000001)
      {
        if (v42 > v40)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }

      if (v42 <= v40)
      {
        v56 = v35;
        v67 = v41;
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v10);
        v41 = v67;
        v35 = v56;
        v29 = v62;
        v10 = v45;
      }

      a6 = vaddq_f64(v60, v35);
      v35 = vdivq_f64(a6, vdupq_lane_s64(*&v41, 0));
LABEL_42:
      *(v10 + 2) = v7;
      a5 = &v10[16 * v40];
      a5[2] = v35;
      *v6 = v10;
      if (!v28)
      {
        goto LABEL_50;
      }

      ++v27;
    }

    while (v30 != v11);
    if (v28 == 2)
    {
      geom_cubic_bezier_tangent_at_2d();
    }

    else
    {
      geom_quadratic_bezier_tangent_at_2d();
    }

    v29 = v46;
LABEL_50:
    v26 = v59;
    v47 = sqrt(vaddvq_f64(vmulq_f64(v29, v29)));
    if (fabs(v47) > 0.000001)
    {
      v60 = vdivq_f64(v29, vdupq_lane_s64(*&v47, 0));
      if (v59 != v57)
      {
        continue;
      }
    }

    else
    {
      v60 = v29;
      if (v59 != v57)
      {
        continue;
      }
    }

    break;
  }

  v48 = &v70;
  v49 = &v72;
  if (v73 == 1)
  {
    v49 = &v71;
  }

  if (!v73)
  {
    v49 = &v70;
  }

  v50 = vsubq_f64(*v58, *v49);
  if (sqrt(vaddvq_f64(vmulq_f64(v50, v50))) > 0.000001)
  {
    if (v73)
    {
      v48 = &v71;
      if (v73 != 1)
      {
        v48 = &v72;
      }
    }

    a6 = *v48;
    v11 = *(v9 + 2);
    a5 = *(v9 + 3);
    v7 = (v11 + 1);
    if (v11 < a5 >> 1)
    {
LABEL_61:
      *(v9 + 2) = v7;
      *&v9[16 * v11 + 32] = a6;
      *v8 = v9;
      v52 = *(v10 + 2);
      v51 = *(v10 + 3);
      if (v52 >= v51 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v10);
      }

      *(v10 + 2) = v52 + 1;
      *&v10[16 * v52 + 32] = v60;
      *v6 = v10;
      return;
    }

LABEL_71:
    v68 = a6;
    v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a5 > 1), v7, 1, v9);
    a6 = v68;
    v9 = v53;
    goto LABEL_61;
  }
}

uint64_t TesselatedShape.extractPreInset(frontFace:sweepCurve:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *&v3[1].f64[0];
  if (result)
  {
    if (*(result + 16))
    {
      v6 = v3;
      v127 = a3;
      v132 = result;
      swift_bridgeObjectRetain_n();
      _StringGuts.grow(_:)(20);

      *&v172[0] = 0xD000000000000011;
      *(&v172[0] + 1) = 0x80000001C18F08B0;
      v124 = a1;
      v8 = a1 & 1;
      if (v8)
      {
        v9 = 0x746E6F7246;
      }

      else
      {
        v9 = 1801675074;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      MEMORY[0x1C68F3410](v9, v10);

      MEMORY[0x1C68F3410](41, 0xE100000000000000);
      v125 = *(&v172[0] + 1);
      v126 = *&v172[0];
      v11 = MEMORY[0x1E69E7CC0];
      v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v155 = 0;
      specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v8, a2);
      v128 = v13;
      v129 = v14;
      v130 = v15;
      v131 = v16;
      v122 = v6;
      v17 = v6->f64[0];
      v18 = *(*&v17 + 16);
      v121 = *&v17;
      if (v18)
      {
        *&v172[0] = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v20 = v128;
        v19 = v129;
        v22 = v130;
        v21 = v131;
        v23 = (*&v17 + 32);
        v24 = *(v11 + 16);
        v25 = 0uLL;
        v26 = v18;
        do
        {
          v27 = *v23;
          *&v172[0] = v11;
          v28 = *(v11 + 24);
          if (v24 >= v28 >> 1)
          {
            v123 = v27;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v24 + 1, 1);
            v27 = v123;
            v25 = 0uLL;
            v20 = v128;
            v19 = v129;
            v22 = v130;
            v21 = v131;
            v11 = *&v172[0];
          }

          v29 = *&v27;
          v30 = *(&v27 + 1);
          v31 = vaddq_f32(v21, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v20, v29), v19, v30), v25, v22));
          v31.i32[3] = 0;
          *(v11 + 16) = v24 + 1;
          *(v11 + 16 * v24 + 32) = v31;
          ++v23;
          ++v24;
          --v26;
        }

        while (v26);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v11, v174);
      if (one-time initialization token for positions != -1)
      {
        swift_once();
      }

      v32 = static MeshBuffers.positions;
      v33 = word_1EBEAD0B8;
      v34 = HIBYTE(word_1EBEAD0B8);
      *&v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
      *(&v165 + 1) = v123;
      *&v166 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v164 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v174, v172, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      if (v34)
      {
        v35 = 256;
      }

      else
      {
        v35 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v164, &v156);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v142 = v12;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(&v156, *(&v157 + 1));
      v38 = MEMORY[0x1EEE9AC00](v37);
      v40 = (&v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v41 + 16))(v40, v38);
      v42 = v40[5];
      v172[4] = v40[4];
      v172[5] = v42;
      v173[0] = v40[6];
      *(v173 + 9) = *(v40 + 105);
      v43 = v40[1];
      v172[0] = *v40;
      v172[1] = v43;
      v44 = v40[3];
      v172[2] = v40[2];
      v172[3] = v44;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v172, v32, *(&v32 + 1), v35 | v33, isUniquelyReferenced_nonNull_native, &v142);

      outlined destroy of BodyTrackingComponent?(v174, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v156);

      v45 = v142;
      if (v124)
      {
        if (v18)
        {
          v131 = vmlaq_f32(vaddq_f32(v130, vmlaq_f32(vmulq_f32(v128, 0), 0, v129)), 0, v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v46 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v47 = v131;
          *(v46 + 16) = v18;
          v47.i32[3] = 0;
          v48 = 32;
          v49 = v18;
          do
          {
            *(v46 + v48) = v47;
            v48 += 16;
            --v49;
          }

          while (v49);
        }

        else
        {
          v46 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v46, v171);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v60 = static MeshBuffers.normals;
        v59 = *algn_1EBEAD0C8;
        v61 = word_1EBEAD0D0;
        v62 = HIBYTE(word_1EBEAD0D0);
        *(&v157 + 1) = v123;
        *&v158 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v156 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v171, &v164, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v62)
        {
          v63 = 256;
        }

        else
        {
          v63 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
        outlined init with take of BindableDataInternal(&v156, &v142);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        *&v134 = v45;
        v65 = __swift_mutable_project_boxed_opaque_existential_1(&v142, v144);
        v66 = MEMORY[0x1EEE9AC00](v65);
        v68 = (&v121 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v69 + 16))(v68, v66);
        v70 = v68[5];
        v168 = v68[4];
        v169 = v70;
        v170[0] = v68[6];
        *(v170 + 9) = *(v68 + 105);
        v71 = v68[1];
        v164 = *v68;
        v165 = v71;
        v72 = v68[3];
        v166 = v68[2];
        v167 = v72;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v164, v60, v59, v63 | v61, v64, &v134);

        outlined destroy of BodyTrackingComponent?(v171, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v73 = v134;
      }

      else
      {
        if (v18)
        {
          __asm { FMOV            V1.4S, #-1.0 }

          v131 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v128, 0), 0, v129), _Q1, v130), 0, v131);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v55 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v56 = v131;
          *(v55 + 16) = v18;
          v56.i32[3] = 0;
          v57 = 32;
          v58 = v18;
          do
          {
            *(v55 + v57) = v56;
            v57 += 16;
            --v58;
          }

          while (v58);
        }

        else
        {
          v55 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v55, v171);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v75 = static MeshBuffers.normals;
        v74 = *algn_1EBEAD0C8;
        v76 = word_1EBEAD0D0;
        v77 = HIBYTE(word_1EBEAD0D0);
        *(&v157 + 1) = v123;
        *&v158 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v156 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v171, &v164, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v77)
        {
          v78 = 256;
        }

        else
        {
          v78 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
        outlined init with take of BindableDataInternal(&v156, &v142);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *&v134 = v45;
        v80 = __swift_mutable_project_boxed_opaque_existential_1(&v142, v144);
        v81 = MEMORY[0x1EEE9AC00](v80);
        v83 = (&v121 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v84 + 16))(v83, v81);
        v85 = v83[5];
        v168 = v83[4];
        v169 = v85;
        v170[0] = v83[6];
        *(v170 + 9) = *(v83 + 105);
        v86 = v83[1];
        v164 = *v83;
        v165 = v86;
        v87 = v83[3];
        v166 = v83[2];
        v167 = v87;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v164, v75, v74, v78 | v76, v79, &v134);

        outlined destroy of BodyTrackingComponent?(v171, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(&v142);
        v73 = v134;
        v132 = specialized Sequence.reversed()(v132);
      }

      outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
      v88 = MEMORY[0x1E69E7CC0];
      if (v18)
      {
        *&v156 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
        v88 = v156;
        v89 = v122[5];
        v90 = vsubq_f64(v122[6], v89);
        v91 = v121 + 2;
        if ((*&v90.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v92 = v90.f64[0];
        }

        else
        {
          v92 = v90.f64[1];
        }

        v93 = *(v156 + 16);
        if ((~*&v90.f64[1] & 0x7FF0000000000000) != 0)
        {
          v92 = v90.f64[1];
        }

        if (v90.f64[1] >= v90.f64[0])
        {
          v90.f64[0] = v92;
        }

        v94 = vdupq_lane_s64(*&v90.f64[0], 0);
        do
        {
          v95 = *v91;
          *&v156 = v88;
          v96 = *(v88 + 24);
          if (v93 >= v96 >> 1)
          {
            v130 = v94;
            v131 = v89;
            v129 = v95;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v93 + 1, 1);
            v95 = v129;
            v94 = v130;
            v89 = v131;
            v88 = v156;
          }

          *(v88 + 16) = v93 + 1;
          *(v88 + 8 * v93 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v95, v89), v94));
          ++v91;
          ++v93;
          --v18;
        }

        while (v18);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v88, v163);
      if (one-time initialization token for textureCoordinates != -1)
      {
        swift_once();
      }

      v98 = static MeshBuffers.textureCoordinates;
      v97 = unk_1EBEAD110;
      v99 = word_1EBEAD118;
      v100 = HIBYTE(word_1EBEAD118);
      v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
      v145 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v142 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v163, &v156, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      if (v100)
      {
        v101 = 256;
      }

      else
      {
        v101 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v142, &v134);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v133[0] = v73;
      v103 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v136);
      v104 = MEMORY[0x1EEE9AC00](v103);
      v106 = (&v121 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v107 + 16))(v106, v104);
      v108 = v106[5];
      v160 = v106[4];
      v161 = v108;
      v162[0] = v106[6];
      *(v162 + 9) = *(v106 + 105);
      v109 = v106[1];
      v156 = *v106;
      v157 = v109;
      v110 = v106[3];
      v158 = v106[2];
      v159 = v110;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v156, v98, v97, v101 | v99, v102, v133);

      outlined destroy of BodyTrackingComponent?(v163, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v134);
      v112 = v132;
      v111 = v133[0];
      v113 = v125;
      *&v134 = v126;
      *(&v134 + 1) = v125;
      v135 = v133[0];
      v136 = 0;
      v114 = v155;
      LOBYTE(v137) = v155;
      *(&v137 + 1) = *v154;
      DWORD1(v137) = *&v154[3];
      *(&v137 + 1) = v132;
      *&v138 = 0;
      BYTE8(v138) = 0;
      HIDWORD(v138) = *&v153[3];
      *(&v138 + 9) = *v153;
      v141 = 0;
      *&v142 = v126;
      v139 = 0u;
      v140 = 0u;
      v115 = v133[0];
      v116 = v127;
      *v127 = v134;
      v116[1] = v115;
      v117 = v137;
      v118 = v138;
      v119 = v139;
      v120 = v140;
      *(v116 + 12) = v141;
      v116[4] = v119;
      v116[5] = v120;
      v116[2] = v117;
      v116[3] = v118;
      *(&v142 + 1) = v113;
      v143 = v111;
      v144 = 0;
      LOBYTE(v145) = v114;
      HIDWORD(v145) = *&v154[3];
      *(&v145 + 1) = *v154;
      v146 = v112;
      v147 = 0;
      v148 = 0;
      *&v149[3] = *&v153[3];
      *v149 = *v153;
      v152 = 0;
      v150 = 0u;
      v151 = 0u;
      outlined init with copy of MeshDescriptor(&v134, v133);
      return outlined destroy of MeshDescriptor(&v142);
    }

    else
    {
      *(a3 + 96) = 0;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TesselatedShape.extractPostInset(frontFace:sweepCurve:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *(v3 + 40);
  if (*(result + 16))
  {
    if (*(v3 + 72))
    {
      __break(1u);
    }

    else
    {
      v130 = a3;
      v7 = *(v3 + 64);
      v135 = result;
      swift_bridgeObjectRetain_n();
      v8 = v3;
      _StringGuts.grow(_:)(21);

      *&v175[0] = 0xD000000000000012;
      *(&v175[0] + 1) = 0x80000001C18F0890;
      v127 = a1;
      v9 = a1 & 1;
      if (v9)
      {
        v10 = 0x746E6F7246;
      }

      else
      {
        v10 = 1801675074;
      }

      if (v9)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      MEMORY[0x1C68F3410](v10, v11);

      MEMORY[0x1C68F3410](41, 0xE100000000000000);
      v128 = *(&v175[0] + 1);
      v129 = *&v175[0];
      v12 = MEMORY[0x1E69E7CC0];
      v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v158 = 0;
      specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v9, a2);
      v131 = v14;
      v132 = v15;
      v133 = v16;
      v134 = v17;
      v125 = v8;
      v18 = *(v8 + 32);
      v19 = *(v18 + 16);
      v124 = v18;
      if (v19)
      {
        *&v175[0] = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v21 = v131;
        v20 = v132;
        v23 = v133;
        v22 = v134;
        v24 = (v18 + 32);
        *v25.i32 = v7;
        v26 = vdupq_lane_s32(v25, 0);
        v27 = *(v12 + 16);
        v28 = v19;
        do
        {
          v29 = *v24;
          *&v175[0] = v12;
          v30 = *(v12 + 24);
          if (v27 >= v30 >> 1)
          {
            v126 = v26;
            v123 = v29;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v27 + 1, 1);
            v29 = v123;
            v26 = v126;
            v21 = v131;
            v20 = v132;
            v23 = v133;
            v22 = v134;
            v12 = *&v175[0];
          }

          *&v29 = *&v29;
          v31 = *(&v29 + 1);
          v32 = vaddq_f32(v22, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v21, *&v29), v20, v31), v26, v23));
          v32.i32[3] = 0;
          *(v12 + 16) = v27 + 1;
          *(v12 + 16 * v27 + 32) = v32;
          ++v24;
          ++v27;
          --v28;
        }

        while (v28);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v12, v177);
      if (one-time initialization token for positions != -1)
      {
        swift_once();
      }

      v33 = static MeshBuffers.positions;
      v34 = word_1EBEAD0B8;
      v35 = HIBYTE(word_1EBEAD0B8);
      v126.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
      *(&v168 + 1) = v126.i64[0];
      *&v169 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v167 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v177, v175, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      if (v35)
      {
        v36 = 256;
      }

      else
      {
        v36 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v167, &v159);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v145 = v13;
      v38 = __swift_mutable_project_boxed_opaque_existential_1(&v159, *(&v160 + 1));
      v39 = MEMORY[0x1EEE9AC00](v38);
      v41 = (&v123 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v42 + 16))(v41, v39);
      v43 = v41[5];
      v175[4] = v41[4];
      v175[5] = v43;
      v176[0] = v41[6];
      *(v176 + 9) = *(v41 + 105);
      v44 = v41[1];
      v175[0] = *v41;
      v175[1] = v44;
      v45 = v41[3];
      v175[2] = v41[2];
      v175[3] = v45;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v175, v33, *(&v33 + 1), v36 | v34, isUniquelyReferenced_nonNull_native, &v145);

      outlined destroy of BodyTrackingComponent?(v177, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v159);

      v46 = v145;
      if (v127)
      {
        if (v19)
        {
          v134 = vmlaq_f32(vaddq_f32(v133, vmlaq_f32(vmulq_f32(v131, 0), 0, v132)), 0, v134);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v47 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v48 = v134;
          *(v47 + 16) = v19;
          v48.i32[3] = 0;
          v49 = 32;
          v50 = v19;
          do
          {
            *(v47 + v49) = v48;
            v49 += 16;
            --v50;
          }

          while (v50);
        }

        else
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v47, v174);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v61 = static MeshBuffers.normals;
        v60 = *algn_1EBEAD0C8;
        v62 = word_1EBEAD0D0;
        v63 = HIBYTE(word_1EBEAD0D0);
        *(&v160 + 1) = v126.i64[0];
        *&v161 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v159 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v174, &v167, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v63)
        {
          v64 = 256;
        }

        else
        {
          v64 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
        outlined init with take of BindableDataInternal(&v159, &v145);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v137 = v46;
        v66 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v147);
        v67 = MEMORY[0x1EEE9AC00](v66);
        v69 = (&v123 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v70 + 16))(v69, v67);
        v71 = v69[5];
        v171 = v69[4];
        v172 = v71;
        v173[0] = v69[6];
        *(v173 + 9) = *(v69 + 105);
        v72 = v69[1];
        v167 = *v69;
        v168 = v72;
        v73 = v69[3];
        v169 = v69[2];
        v170 = v73;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v167, v61, v60, v64 | v62, v65, &v137);

        outlined destroy of BodyTrackingComponent?(v174, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(&v145);
        v74 = v137;
      }

      else
      {
        if (v19)
        {
          __asm { FMOV            V1.4S, #-1.0 }

          v134 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v131, 0), 0, v132), _Q1, v133), 0, v134);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v56 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v57 = v134;
          *(v56 + 16) = v19;
          v57.i32[3] = 0;
          v58 = 32;
          v59 = v19;
          do
          {
            *(v56 + v58) = v57;
            v58 += 16;
            --v59;
          }

          while (v59);
        }

        else
        {
          v56 = MEMORY[0x1E69E7CC0];
        }

        _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v56, v174);
        if (one-time initialization token for normals != -1)
        {
          swift_once();
        }

        v76 = static MeshBuffers.normals;
        v75 = *algn_1EBEAD0C8;
        v77 = word_1EBEAD0D0;
        v78 = HIBYTE(word_1EBEAD0D0);
        *(&v160 + 1) = v126.i64[0];
        *&v161 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
        *&v159 = swift_allocObject();
        swift_bridgeObjectRetain_n();
        outlined init with copy of [String : String](v174, &v167, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        if (v78)
        {
          v79 = 256;
        }

        else
        {
          v79 = 0;
        }

        _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
        outlined init with take of BindableDataInternal(&v159, &v145);
        v80 = swift_isUniquelyReferenced_nonNull_native();
        *&v137 = v46;
        v81 = __swift_mutable_project_boxed_opaque_existential_1(&v145, v147);
        v82 = MEMORY[0x1EEE9AC00](v81);
        v84 = (&v123 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v85 + 16))(v84, v82);
        v86 = v84[5];
        v171 = v84[4];
        v172 = v86;
        v173[0] = v84[6];
        *(v173 + 9) = *(v84 + 105);
        v87 = v84[1];
        v167 = *v84;
        v168 = v87;
        v88 = v84[3];
        v169 = v84[2];
        v170 = v88;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v167, v76, v75, v79 | v77, v80, &v137);

        outlined destroy of BodyTrackingComponent?(v174, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
        __swift_destroy_boxed_opaque_existential_1(&v145);
        v74 = v137;
        v135 = specialized Sequence.reversed()(v135);
      }

      outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
      v89 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        *&v159 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
        v89 = v159;
        v90 = v125[5];
        v91 = vsubq_f64(v125[6], v90);
        v92 = v124 + 2;
        if ((*&v91.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v93 = v91.f64[0];
        }

        else
        {
          v93 = v91.f64[1];
        }

        v94 = *(v159 + 16);
        if ((~*&v91.f64[1] & 0x7FF0000000000000) != 0)
        {
          v93 = v91.f64[1];
        }

        if (v91.f64[1] >= v91.f64[0])
        {
          v91.f64[0] = v93;
        }

        v95 = vdupq_lane_s64(*&v91.f64[0], 0);
        do
        {
          v96 = *v92;
          *&v159 = v89;
          v97 = *(v89 + 24);
          if (v94 >= v97 >> 1)
          {
            v133 = v95;
            v134 = v90;
            v132 = v96;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v94 + 1, 1);
            v96 = v132;
            v95 = v133;
            v90 = v134;
            v89 = v159;
          }

          *(v89 + 16) = v94 + 1;
          *(v89 + 8 * v94 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v96, v90), v95));
          ++v92;
          ++v94;
          --v19;
        }

        while (v19);
      }

      _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v89, v166);
      if (one-time initialization token for textureCoordinates != -1)
      {
        swift_once();
      }

      v99 = static MeshBuffers.textureCoordinates;
      v98 = unk_1EBEAD110;
      v100 = word_1EBEAD118;
      v101 = HIBYTE(word_1EBEAD118);
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
      v148 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
      *&v145 = swift_allocObject();
      swift_bridgeObjectRetain_n();
      outlined init with copy of [String : String](v166, &v159, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      if (v101)
      {
        v102 = 256;
      }

      else
      {
        v102 = 0;
      }

      _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
      outlined init with take of BindableDataInternal(&v145, &v137);
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v136[0] = v74;
      v104 = __swift_mutable_project_boxed_opaque_existential_1(&v137, v139);
      v105 = MEMORY[0x1EEE9AC00](v104);
      v107 = (&v123 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v108 + 16))(v107, v105);
      v109 = v107[5];
      v163 = v107[4];
      v164 = v109;
      v165[0] = v107[6];
      *(v165 + 9) = *(v107 + 105);
      v110 = v107[1];
      v159 = *v107;
      v160 = v110;
      v111 = v107[3];
      v161 = v107[2];
      v162 = v111;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v159, v99, v98, v102 | v100, v103, v136);

      outlined destroy of BodyTrackingComponent?(v166, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
      __swift_destroy_boxed_opaque_existential_1(&v137);
      v113 = v135;
      v112 = v136[0];
      v115 = v128;
      v114 = v129;
      *&v137 = v129;
      *(&v137 + 1) = v128;
      v138 = v136[0];
      v139 = 0;
      v116 = v158;
      LOBYTE(v140) = v158;
      *(&v140 + 1) = *v157;
      DWORD1(v140) = *&v157[3];
      *(&v140 + 1) = v135;
      *&v141 = 0;
      BYTE8(v141) = 0;
      HIDWORD(v141) = *&v156[3];
      *(&v141 + 9) = *v156;
      v144 = 0;
      v142 = 0u;
      v143 = 0u;
      v117 = v136[0];
      v118 = v130;
      *v130 = v137;
      v118[1] = v117;
      v119 = v140;
      v120 = v141;
      v121 = v142;
      v122 = v143;
      *(v118 + 12) = v144;
      v118[4] = v121;
      v118[5] = v122;
      v118[2] = v119;
      v118[3] = v120;
      *&v145 = v114;
      *(&v145 + 1) = v115;
      v146 = v112;
      v147 = 0;
      LOBYTE(v148) = v116;
      HIDWORD(v148) = *&v157[3];
      *(&v148 + 1) = *v157;
      v149 = v113;
      v150 = 0;
      v151 = 0;
      *&v152[3] = *&v156[3];
      *v152 = *v156;
      v155 = 0;
      v153 = 0u;
      v154 = 0u;
      outlined init with copy of MeshDescriptor(&v137, v136);
      return outlined destroy of MeshDescriptor(&v145);
    }
  }

  else
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 72))
  {
    __break(1u);
LABEL_40:
    swift_once();
    goto LABEL_17;
  }

  v7 = *(v3 + 48);
  v5 = *(v7 + 16);
  if (!v5 || (v8 = result, result = *(v3 + 56), !*(result + 16)))
  {
    *(a3 + 96) = 0;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v87 = *(v3 + 56);
  swift_bridgeObjectRetain_n();
  _StringGuts.grow(_:)(29);

  *&v120[0] = 0xD00000000000001ALL;
  *(&v120[0] + 1) = 0x80000001C18F0870;
  v80 = v8;
  if (v8)
  {
    v10 = 0x746E6F7246;
  }

  else
  {
    v10 = 1801675074;
  }

  if (v8)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1C68F3410](v10, v11);

  MEMORY[0x1C68F3410](41, 0xE100000000000000);
  v81 = *(&v120[0] + 1);
  v82 = *&v120[0];
  v12 = MEMORY[0x1E69E7CC0];
  v79 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v111 = 0;
  specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(v8 & 1, a2);
  v85 = v14;
  v86 = v13;
  v83 = v16;
  v84 = v15;
  *&v120[0] = v12;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v18 = v83;
  v17 = v84;
  v20 = v85;
  v19 = v86;
  v21 = 0;
  v22 = v12;
  v4 = (v7 + 32);
  v23 = *(v12 + 16);
  do
  {
    f64 = v4[2 * v21].f64;
    v25 = *f64;
    v26 = f64[2];
    *&v120[0] = v22;
    v27 = *(v22 + 24);
    if (v23 >= v27 >> 1)
    {
      v77 = v25;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v23 + 1, 1);
      v25 = v77;
      v18 = v83;
      v17 = v84;
      v20 = v85;
      v19 = v86;
      v22 = *&v120[0];
    }

    v28 = *&v25;
    v29 = *(&v25 + 1);
    v30 = v26;
    v31 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v28), v20, v29), v17, v30));
    v31.i32[3] = 0;
    ++v21;
    *(v22 + 16) = v23 + 1;
    *(v22 + 16 * v23++ + 32) = v31;
  }

  while (v5 != v21);
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v22, v122);
  if (one-time initialization token for positions != -1)
  {
    goto LABEL_40;
  }

LABEL_17:
  v32 = static MeshBuffers.positions;
  LODWORD(v85.f64[0]) = word_1EBEAD0B8;
  v33 = HIBYTE(word_1EBEAD0B8);
  *(&v113 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  *&v114 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v112 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v122, v120, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v33)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  outlined init with take of BindableDataInternal(&v112, &v97);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v89 = v79;
  v36 = __swift_mutable_project_boxed_opaque_existential_1(&v97, v99);
  *&v86.f64[0] = &v77;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = (&v77 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = v39[5];
  v120[4] = v39[4];
  v120[5] = v41;
  v121[0] = v39[6];
  *(v121 + 9) = *(v39 + 105);
  v42 = v39[1];
  v120[0] = *v39;
  v120[1] = v42;
  v43 = v39[3];
  v120[2] = v39[2];
  v120[3] = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v120, v32, *(&v32 + 1), v34 | LODWORD(v85.f64[0]), isUniquelyReferenced_nonNull_native, &v89);

  outlined destroy of BodyTrackingComponent?(v122, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(&v97);
  v44 = v87;

  v45 = v89;
  if ((v80 & 1) == 0)
  {
    v87 = specialized Sequence.reversed()(v44);
  }

  outlined consume of MeshDescriptor.Primitives?(0, 0, 0xFFu);
  v108 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v46 = v108;
  v47 = v78[5];
  v48 = vsubq_f64(v78[6], v47);
  if ((*&v48.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v49 = v48.f64[0];
  }

  else
  {
    v49 = v48.f64[1];
  }

  v50 = *(v108 + 16);
  if ((~*&v48.f64[1] & 0x7FF0000000000000) != 0)
  {
    v49 = v48.f64[1];
  }

  if (v48.f64[1] >= v48.f64[0])
  {
    v48.f64[0] = v49;
  }

  v51 = vdupq_lane_s64(*&v48.f64[0], 0);
  do
  {
    v52 = *v4;
    v108 = v46;
    v53 = *(v46 + 24);
    if (v50 >= v53 >> 1)
    {
      v85 = v51;
      v86 = v47;
      v84 = v52;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v50 + 1, 1);
      v52 = v84;
      v51 = v85;
      v47 = v86;
      v46 = v108;
    }

    *(v46 + 16) = v50 + 1;
    *(v46 + 8 * v50 + 32) = vcvt_f32_f64(vdivq_f64(vsubq_f64(v52, v47), v51));
    v4 += 2;
    ++v50;
    --v5;
  }

  while (v5);
  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v46, v119);
  if (one-time initialization token for textureCoordinates != -1)
  {
    swift_once();
  }

  v55 = static MeshBuffers.textureCoordinates;
  v54 = unk_1EBEAD110;
  v56 = word_1EBEAD118;
  v57 = HIBYTE(word_1EBEAD118);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
  v100 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v97 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v119, &v112, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  if (v57)
  {
    v58 = 256;
  }

  else
  {
    v58 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  outlined init with take of BindableDataInternal(&v97, &v89);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v88[0] = v45;
  v60 = __swift_mutable_project_boxed_opaque_existential_1(&v89, v91);
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = (&v77 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63, v61);
  v65 = v63[5];
  v116 = v63[4];
  v117 = v65;
  v118[0] = v63[6];
  *(v118 + 9) = *(v63 + 105);
  v66 = v63[1];
  v112 = *v63;
  v113 = v66;
  v67 = v63[3];
  v114 = v63[2];
  v115 = v67;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v112, v55, v54, v58 | v56, v59, v88);

  outlined destroy of BodyTrackingComponent?(v119, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  __swift_destroy_boxed_opaque_existential_1(&v89);
  v69 = v87;
  v68 = v88[0];
  v70 = v81;
  *&v89 = v82;
  *(&v89 + 1) = v81;
  v90 = v88[0];
  v91 = 0;
  v71 = v111;
  LOBYTE(v92) = v111;
  *(&v92 + 1) = *v110;
  DWORD1(v92) = *&v110[3];
  *(&v92 + 1) = v87;
  *&v93 = 0;
  BYTE8(v93) = 0;
  HIDWORD(v93) = *&v109[3];
  *(&v93 + 9) = *v109;
  v96 = 0;
  *&v97 = v82;
  v94 = 0u;
  v95 = 0u;
  v72 = v88[0];
  *a3 = v89;
  *(a3 + 16) = v72;
  v73 = v92;
  v74 = v93;
  v75 = v94;
  v76 = v95;
  *(a3 + 96) = v96;
  *(a3 + 64) = v75;
  *(a3 + 80) = v76;
  *(a3 + 32) = v73;
  *(a3 + 48) = v74;
  *(&v97 + 1) = v70;
  v98 = v68;
  v99 = 0;
  LOBYTE(v100) = v71;
  HIDWORD(v100) = *&v110[3];
  *(&v100 + 1) = *v110;
  v101 = v69;
  v102 = 0;
  v103 = 0;
  *&v104[3] = *&v109[3];
  *v104 = *v109;
  v107 = 0;
  v106 = 0u;
  v105 = 0u;
  outlined init with copy of MeshDescriptor(&v89, v88);
  return outlined destroy of MeshDescriptor(&v97);
}

uint64_t TesselatedShape.extractExtrusion(sweepCurve:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = *v4;
  v7 = v4[1];
  v8 = *(*v4 + 16);
  if (v8 != *(v7 + 16))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v8)
  {
    *(a2 + 96) = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v9 = result;
  v91 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  LOBYTE(v92) = 0;
  *(&v92 + 1) = 0;
  *&v93 = 0;
  BYTE8(v93) = -1;
  v94 = 0u;
  v95 = 0u;
  v96 = 0;
  *&v90 = 0x7845206570616853;
  *(&v90 + 1) = 0xEF6E6F6973757274;
  outlined init with copy of TesselatedShape(v4, v105);
  v10 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5SIMD2VySdGGAKG_17RealityFoundation13CurveExtruderV10ShapePointVs5NeverOTg504_s17g90Foundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepi51AA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFAA0N8j4V0D5l3Vs5F16VySdG_ASt_tXEfU_AM0pK004_958rstuV2CFLLVTf1cn_nTf4ng_n(v6, v7, v4);
  outlined destroy of TesselatedShape(v4);
  v11 = v4[3];

  v12 = specialized CurveExtruder.init(shape:accumulatedOutlineIndexCount:)(v10, v11);
  v15 = *(v9 + 16);
  v16 = *(v12 + 2);
  v3 = v16 * v15;
  if ((v16 * v15) >> 64 != (v16 * v15) >> 63)
  {
    goto LABEL_25;
  }

  v17 = v14;
  v18 = *(v14 + 16);
  v70 = (v15 - 1) * v18;
  if (((v15 - 1) * v18) >> 64 != v70 >> 63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v19 = v12;
    v20 = v13;
    v66 = v15;

    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
      v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v21 + 16) = v3;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v69 = v21;
    v67 = a2;
    *&v76 = v21 + 32;
    *(&v76 + 1) = v3;

    v22 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD3VySfG_Tt1g50158_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5F32VySfGGz_SiztXEfU0_yAPz_SiztXEfU_Si0H10Foundation0S8ExtruderVSryAGGSaySo13simd_float4x4aGAI0uV0VTf1nc_nTf4nngngn_n(v3, v3, v19, v20, v17, &v76, v9, &v90);

    _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v22, v107);
    v73 = v19;
    v74 = v9;
    v71 = v17;
    v72 = v20;
    if (one-time initialization token for tangents == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_11:
  v23 = static MeshBuffers.tangents;
  v24 = unk_1EBEAD0E0;
  v25 = word_1EBEAD0E8;
  v26 = HIBYTE(word_1EBEAD0E8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  *(&v98 + 1) = v68;
  *&v99 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v97 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v107, v105, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v26)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  outlined init with take of BindableDataInternal(&v97, &v83);
  v28 = v91;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v28;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  v35 = v33[5];
  v105[4] = v33[4];
  v105[5] = v35;
  v106[0] = v33[6];
  *(v106 + 9) = *(v33 + 105);
  v36 = v33[1];
  v105[0] = *v33;
  v105[1] = v36;
  v37 = v33[3];
  v105[2] = v33[2];
  v105[3] = v37;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v23, v24, v27 | v25, isUniquelyReferenced_nonNull_native, v75);
  __swift_destroy_boxed_opaque_existential_1(&v83);

  outlined destroy of BodyTrackingComponent?(v107, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  *&v91 = v75[0];
  v38 = v69;
  *(v69 + 16) = v3;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v38, v104);
  if (one-time initialization token for positions != -1)
  {
    swift_once();
  }

  v39 = static MeshBuffers.positions;
  v40 = word_1EBEAD0B8;
  v41 = HIBYTE(word_1EBEAD0B8);
  *(&v84 + 1) = v68;
  *&v85 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  *&v83 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v104, &v97, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v41)
  {
    v42 = 256;
  }

  else
  {
    v42 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  outlined init with take of BindableDataInternal(&v83, &v76);
  v43 = v91;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v43;
  v45 = __swift_mutable_project_boxed_opaque_existential_1(&v76, *(&v77 + 1));
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = (&v66 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = v48[5];
  v101 = v48[4];
  v102 = v50;
  v103[0] = v48[6];
  *(v103 + 9) = *(v48 + 105);
  v51 = v48[1];
  v97 = *v48;
  v98 = v51;
  v52 = v48[3];
  v99 = v48[2];
  v100 = v52;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v97, v39, *(&v39 + 1), v42 | v40, v44, v75);

  outlined destroy of BodyTrackingComponent?(v104, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  result = __swift_destroy_boxed_opaque_existential_1(&v76);
  *&v91 = v75[0];
  v53 = v70;
  if (v70 < 0)
  {
    __break(1u);
  }

  else
  {
    v54 = v73;

    v55 = v71;

    v56 = MEMORY[0x1E69E7CC0];
    if (v53)
    {
      v57 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v57 + 16) = v53;
    }

    else
    {
      v57 = MEMORY[0x1E69E7CC0];
    }

    v58 = v67;
    specialized CurveExtruder.populate(indexBuffer:curveLength:)(v57 + 32, v53, v66, v54, v55);
    *(v57 + 16) = v53;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    outlined consume of MeshDescriptor.Primitives?(*(&v92 + 1), v93, BYTE8(v93));
    *(&v92 + 1) = v56;
    *&v93 = v57;
    BYTE8(v93) = 2;
    v59 = v94;
    v60 = v95;
    v80 = v94;
    v81 = v95;
    v61 = v96;
    v82 = v96;
    v62 = v90;
    v63 = v91;
    v76 = v90;
    v77 = v91;
    v64 = v93;
    v65 = v92;
    v78 = v92;
    v79 = v93;
    *v58 = v90;
    *(v58 + 16) = v63;
    *(v58 + 96) = v61;
    *(v58 + 64) = v59;
    *(v58 + 80) = v60;
    *(v58 + 32) = v65;
    *(v58 + 48) = v64;
    v87 = v59;
    v88 = v60;
    v89 = v61;
    v83 = v62;
    v84 = v63;
    v85 = v65;
    v86 = v64;
    outlined init with copy of MeshDescriptor(&v76, v75);
    return outlined destroy of MeshDescriptor(&v83);
  }

  return result;
}

uint64_t TesselatedShape.extractAll(extrusionMethod:chamferMode:materialAssignment:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v60 = *a3;
  v9 = a3[2];
  v57 = a3[1];
  v11 = a3[3];
  v10 = a3[4];
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  *&v183 = v6;
  BYTE8(v183) = v7;
  MeshResource.ShapeExtrusionOptions.ExtrusionMethod.extractSweepCurve()();
  v109 = v12;
  v58 = v10;
  v56 = v11;
  if (v7)
  {
    if (*(v6 + 16) > 1uLL)
    {
LABEL_3:
      TesselatedShape.extractExtrusion(sweepCurve:)(v12, &v180);
      v13 = *(&v180 + 1);
      v92 = v180;
      v110 = *(&v181 + 1);
      v105 = v181;
      v14 = v182[0];
      v78 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v104 = *(&v182[0] + 1);
      v103 = *&v182[1];
      v101 = *&v182[2];
      v102 = *(&v182[1] + 1);
      v99 = *&v182[3];
      v100 = *(&v182[2] + 1);
      v97 = *&v182[4];
      v98 = *(&v182[3] + 1);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v188 = v14;
      goto LABEL_6;
    }
  }

  else if (COERCE_FLOAT(v6 & 0x7FFFFFFF) > 0.00001)
  {
    goto LABEL_3;
  }

  v92 = 0;
  v13 = 0;
  v105 = 0;
  v110 = 0;
  v78 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
LABEL_6:
  v79 = v13;
  if (*(v4 + 72))
  {
    TesselatedShape.extractPreInset(frontFace:sweepCurve:)(1, v109, &v183);
    v111 = v183;
    v114 = v184;
    v15 = v185[0];
    v77 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
    v95 = *&v185[8];
    v96 = *&v185[24];
    v93 = *&v185[40];
    v94 = *&v185[56];
    v180 = 0u;
    v181 = 0u;
    memset(v182, 0, 72);
    outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
    v190 = v15;
    TesselatedShape.extractPreInset(frontFace:sweepCurve:)(0, v109, &v170);
    v106 = v170;
    v107 = v171;
    v16 = v172;
    v72 = v173 | ((v174 | (v175 << 16)) << 32);
    v83 = v176;
    v84 = v177;
    v81 = v178;
    v82 = v179;
    v183 = 0u;
    v184 = 0u;
    memset(v185, 0, sizeof(v185));
    outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
    v18 = v111;
    v17 = v114;
    v19 = 0;
    v90 = 0;
    v91 = 0;
    v108 = 0;
    v59 = 0;
    v70 = 0;
    v71 = 0;
    v20 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v68 = 0;
    v69 = 0;
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v189 = v16;
    v21 = v13;
  }

  else
  {
    if ((v8 | 2) == 2)
    {
      TesselatedShape.extractPostInset(frontFace:sweepCurve:)(1, v109, &v183);
      v112 = v183;
      v115 = v184;
      v22 = v185[0];
      v77 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
      v95 = *&v185[8];
      v96 = *&v185[24];
      v93 = *&v185[40];
      v94 = *&v185[56];
      v180 = 0u;
      v181 = 0u;
      memset(v182, 0, 72);
      outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v190 = v22;
      TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)(1, v109, &v170);
      v108 = *(&v170 + 1);
      v90 = v170;
      v80 = *(&v171 + 1);
      v91 = v171;
      v23 = v172;
      v75 = v176;
      v76 = v173 | ((v174 | (v175 << 16)) << 32);
      v73 = v177;
      v74 = *(&v176 + 1);
      v88 = v178;
      v89 = *(&v177 + 1);
      v86 = v179;
      v87 = *(&v178 + 1);
      v85 = *(&v179 + 1);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v187 = v23;
    }

    else
    {
      TesselatedShape.extractPreInset(frontFace:sweepCurve:)(1, v109, &v180);
      v112 = v180;
      v115 = v181;
      v24 = v182[0];
      v77 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v95 = *(v182 + 8);
      v96 = *(&v182[1] + 8);
      v93 = *(&v182[2] + 8);
      v94 = *(&v182[3] + 8);
      v183 = 0u;
      v184 = 0u;
      memset(v185, 0, sizeof(v185));
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v80 = 0;
      v90 = 0;
      v91 = 0;
      v108 = 0;
      v75 = 0;
      v76 = 0;
      v73 = 0;
      v74 = 0;
      v88 = 0;
      v89 = 0;
      v86 = 0;
      v87 = 0;
      v85 = 0;
      v190 = v24;
    }

    if ((v8 - 1) > 1)
    {
      TesselatedShape.extractPreInset(frontFace:sweepCurve:)(0, v109, &v180);
      v106 = v180;
      v107 = v181;
      v16 = v182[0];
      v72 = *(v182 + 1) | ((*(v182 + 5) | (BYTE7(v182[0]) << 16)) << 32);
      v83 = *(v182 + 8);
      v84 = *(&v182[1] + 8);
      v81 = *(&v182[2] + 8);
      v82 = *(&v182[3] + 8);
      v183 = 0u;
      v184 = 0u;
      v185[0] = v189;
      memset(&v185[1], 0, 71);
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v59 = 0;
      v70 = 0;
      v71 = 0;
      v20 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v64 = 0;
      v65 = 0;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      v189 = v16;
    }

    else
    {
      TesselatedShape.extractPostInset(frontFace:sweepCurve:)(0, v109, &v183);
      v106 = v183;
      v107 = v184;
      v16 = v185[0];
      v72 = *&v185[1] | ((*&v185[5] | (v185[7] << 16)) << 32);
      v83 = *&v185[8];
      v84 = *&v185[24];
      v81 = *&v185[40];
      v82 = *&v185[56];
      v180 = 0u;
      v181 = 0u;
      LOBYTE(v182[0]) = v189;
      memset(v182 + 1, 0, 64);
      *&v182[4] = 0;
      outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v189 = v16;
      TesselatedShape.extractJoinerPatch(frontFace:sweepCurve:)(0, v109, &v170);
      v70 = v170;
      v59 = *(&v171 + 1);
      v71 = v171;
      v25 = v172;
      v68 = v176;
      v69 = v173 | ((v174 | (v175 << 16)) << 32);
      v66 = v177;
      v67 = *(&v176 + 1);
      v64 = v178;
      v65 = *(&v177 + 1);
      v62 = v179;
      v63 = *(&v178 + 1);
      v61 = *(&v179 + 1);
      v183 = 0u;
      v184 = 0u;
      v185[0] = v186;
      memset(&v185[1], 0, 71);
      v20 = *(&v170 + 1);
      outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
      v186 = v25;
    }

    v21 = v13;
    v19 = v80;
    v18 = v112;
    v17 = v115;
  }

  v113 = v18;
  v116 = v17;
  v26 = *(&v18 + 1);
  v27 = *(&v17 + 1);
  if (*(&v18 + 1))
  {
    outlined consume of MeshDescriptor.Materials(*(&v17 + 1), v190);
    v190 = 0;
    v27 = v60;
  }

  v28 = *(&v107 + 1);
  if (*(&v106 + 1))
  {
    outlined consume of MeshDescriptor.Materials(*(&v107 + 1), v16 & 1);
    v189 = 0;
    v28 = v57;
  }

  v29 = v110;
  if (v21)
  {
    outlined consume of MeshDescriptor.Materials(v110, v188);
    v188 = 0;
    v29 = v9;
  }

  if (v108)
  {
    outlined consume of MeshDescriptor.Materials(v19, v187);
    v187 = 0;
    v19 = v56;
  }

  if (v20)
  {
    outlined consume of MeshDescriptor.Materials(v59, v186);
    v186 = 0;
    v30 = v58;
  }

  else
  {
    v30 = v59;
  }

  *&v117 = v113;
  *(&v117 + 1) = v26;
  *&v118 = v116;
  *(&v118 + 1) = v27;
  v119[0] = v190;
  v119[7] = BYTE6(v77);
  *&v119[5] = WORD2(v77);
  *&v119[1] = v77;
  *&v119[24] = v96;
  *&v119[8] = v95;
  *&v119[56] = v94;
  *&v119[40] = v93;
  v120 = v106;
  *&v121 = v107;
  *(&v121 + 1) = v28;
  v122[0] = v189;
  v122[7] = BYTE6(v72);
  *&v122[5] = WORD2(v72);
  *&v122[1] = v72;
  *&v122[24] = v84;
  *&v122[8] = v83;
  *&v122[56] = v82;
  *&v122[40] = v81;
  *&v123 = v92;
  *(&v123 + 1) = v21;
  *&v124 = v105;
  *(&v124 + 1) = v29;
  v55 = v188;
  LOBYTE(v125) = v188;
  BYTE7(v125) = BYTE6(v78);
  *(&v125 + 5) = WORD2(v78);
  *(&v125 + 1) = v78;
  *(&v125 + 1) = v104;
  *&v126 = v103;
  *(&v126 + 1) = v102;
  *&v127 = v101;
  *(&v127 + 1) = v100;
  *&v128 = v99;
  *(&v128 + 1) = v98;
  v129 = v97;
  *&v130 = v90;
  *(&v130 + 1) = v108;
  *&v131 = v91;
  *(&v131 + 1) = v19;
  v54 = v187;
  LOBYTE(v132) = v187;
  BYTE7(v132) = BYTE6(v76);
  *(&v132 + 5) = WORD2(v76);
  *(&v132 + 1) = v76;
  *(&v132 + 1) = v75;
  *&v133 = v74;
  *(&v133 + 1) = v73;
  *&v134 = v89;
  *(&v134 + 1) = v88;
  *&v135 = v87;
  *(&v135 + 1) = v86;
  v136 = v85;
  *&v137 = v70;
  *(&v137 + 1) = v20;
  *&v138 = v71;
  *(&v138 + 1) = v30;
  LOBYTE(v139) = v186;
  v31 = v186;
  *(a4 + 96) = *(&v94 + 1);
  v32 = v131;
  *(a4 + 312) = v130;
  *(a4 + 328) = v32;
  v33 = v132;
  v34 = v133;
  v35 = v135;
  *(a4 + 376) = v134;
  *(a4 + 392) = v35;
  *(a4 + 344) = v33;
  *(a4 + 360) = v34;
  *(&v139 + 5) = WORD2(v69);
  *(&v139 + 1) = v69;
  *(&v142 + 1) = v62;
  v143 = v61;
  v36 = v118;
  *a4 = v117;
  *(a4 + 16) = v36;
  v37 = *v119;
  v38 = *&v119[16];
  v39 = *&v119[48];
  *(a4 + 64) = *&v119[32];
  *(a4 + 80) = v39;
  *(a4 + 32) = v37;
  *(a4 + 48) = v38;
  v40 = v120;
  v41 = v121;
  v42 = *&v122[16];
  *(a4 + 136) = *v122;
  *(a4 + 120) = v41;
  v43 = *&v122[32];
  v44 = *&v122[48];
  *(a4 + 200) = *&v122[64];
  *(a4 + 304) = v129;
  *(a4 + 408) = v136;
  *(a4 + 512) = v143;
  BYTE7(v139) = BYTE6(v69);
  *(&v139 + 1) = v68;
  *&v140 = v67;
  *(&v140 + 1) = v66;
  *&v141 = v65;
  *(&v141 + 1) = v64;
  *&v142 = v63;
  *(a4 + 104) = v40;
  *(a4 + 184) = v44;
  *(a4 + 168) = v43;
  *(a4 + 152) = v42;
  v45 = v124;
  *(a4 + 208) = v123;
  *(a4 + 224) = v45;
  v46 = v125;
  v47 = v126;
  v48 = v128;
  *(a4 + 272) = v127;
  *(a4 + 288) = v48;
  *(a4 + 240) = v46;
  *(a4 + 256) = v47;
  v49 = v138;
  *(a4 + 416) = v137;
  *(a4 + 432) = v49;
  v50 = v139;
  v51 = v140;
  v52 = v142;
  *(a4 + 480) = v141;
  *(a4 + 496) = v52;
  *(a4 + 448) = v50;
  *(a4 + 464) = v51;
  v144[0] = v70;
  v144[1] = v20;
  v144[2] = v71;
  v144[3] = v30;
  v145 = v31;
  v148 = BYTE6(v69);
  v147 = WORD2(v69);
  v146 = v69;
  v149 = v68;
  v150 = v67;
  v151 = v66;
  v152 = v65;
  v153 = v64;
  v154 = v63;
  v155 = v62;
  v156 = v61;
  outlined init with copy of [String : String](&v117, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v120, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v123, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v130, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined init with copy of [String : String](&v137, &v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  outlined destroy of BodyTrackingComponent?(v144, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  v157[0] = v90;
  v157[1] = v108;
  v157[2] = v91;
  v157[3] = v19;
  v158 = v54;
  v161 = BYTE6(v76);
  v160 = WORD2(v76);
  v159 = v76;
  v162 = v75;
  v163 = v74;
  v164 = v73;
  v165 = v89;
  v166 = v88;
  v167 = v87;
  v168 = v86;
  v169 = v85;
  outlined destroy of BodyTrackingComponent?(v157, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  *&v170 = v92;
  *(&v170 + 1) = v79;
  *&v171 = v105;
  *(&v171 + 1) = v29;
  v172 = v55;
  v175 = BYTE6(v78);
  v174 = WORD2(v78);
  v173 = v78;
  *&v176 = v104;
  *(&v176 + 1) = v103;
  *&v177 = v102;
  *(&v177 + 1) = v101;
  *&v178 = v100;
  *(&v178 + 1) = v99;
  *&v179 = v98;
  *(&v179 + 1) = v97;
  outlined destroy of BodyTrackingComponent?(&v170, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  v180 = v106;
  *&v181 = v107;
  *(&v181 + 1) = v28;
  LOBYTE(v182[0]) = v189;
  BYTE7(v182[0]) = BYTE6(v72);
  *(v182 + 5) = WORD2(v72);
  *(v182 + 1) = v72;
  *(v182 + 8) = v83;
  *(&v182[1] + 8) = v84;
  *(&v182[2] + 8) = v81;
  *(&v182[3] + 8) = v82;
  outlined destroy of BodyTrackingComponent?(&v180, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
  *&v183 = v113;
  *(&v183 + 1) = v26;
  *&v184 = v116;
  *(&v184 + 1) = v27;
  v185[0] = v190;
  v185[7] = BYTE6(v77);
  *&v185[5] = WORD2(v77);
  *&v185[1] = v77;
  *&v185[8] = v95;
  *&v185[24] = v96;
  *&v185[40] = v93;
  *&v185[56] = v94;
  return outlined destroy of BodyTrackingComponent?(&v183, &_s17RealityFoundation14MeshDescriptorVSgMd, &_s17RealityFoundation14MeshDescriptorVSgMR);
}

void one-time initialization function for defaultChamferProfile()
{
  v0 = CGPathCreateMutable();
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();

  defaultChamferProfile = v0;
}

void $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(void *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);

  if (v4)
  {
    v5 = 0;
    while (v5 < *(v3 + 16))
    {
      v6 = v5 + 1;
      RERelease();
      v5 = v6;
      if (v4 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_5:

  v7 = *a2;
  if (v7)
  {
    v8 = *(v7 + 16);

    if (v8)
    {
      v9 = 0;
      while (v9 < *(v7 + 16))
      {
        v10 = v9 + 1;
        RERelease();
        v9 = v10;
        if (v8 == v10)
        {
          goto LABEL_10;
        }
      }

LABEL_15:
      __break(1u);
      return;
    }

LABEL_10:
  }
}

void closure #2 in extrude(path:options:)(unint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *a2;
  v14 = *(a3 + 56);
  *&v17 = *(a3 + 64);

  specialized TesselatedShape.init(shape:chamferProfile:chamferRadius:resolution:triangulatePreInset:)(v11, v12, v13, &v17, a4, v22, v14);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v15 = *(a3 + 8);
    v20 = *a3;
    v21 = v15;
    v19 = *(a3 + 80);
    v16 = *(a3 + 100);
    v17 = *(a3 + 84);
    v18 = v16;
    outlined copy of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(v20, v15);
    TesselatedShape.extractAll(extrusionMethod:chamferMode:materialAssignment:)(&v20, &v19, &v17, a6);
    outlined destroy of TesselatedShape(v22);
    outlined consume of MeshResource.ShapeExtrusionOptions.ExtrusionMethod(v20, v21);
  }
}

unint64_t lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError()
{
  result = lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError;
  if (!lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShapeExtrusionError, &type metadata for ShapeExtrusionError, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeExtrusionError and conformance ShapeExtrusionError);
  }

  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828, MEMORY[0x1E69A2808]);
  result = dispatch thunk of Collection.startIndex.getter();
  v8 = v15[0];
  v16 = v15[0];
  v17 = v3;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = v3;
    a1[1] = v8;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = a3;
    v14 = a1;
    v9 = 0;
    v10 = a3 - 1;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      v8 = v16;
      if (v16 == v15[0])
      {
        a3 = v9;
        a1 = v14;
        goto LABEL_13;
      }

      v11 = dispatch thunk of Collection.subscript.read();
      a1 = *v12;
      v11(v15, 0);
      v15[0] = v3;
      dispatch thunk of Collection.index(after:)();
      *(a2 + 4 * v9) = a1;
      if (v10 == v9)
      {
        break;
      }

      if (__OFADD__(++v9, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v8 = v16;
    a3 = v13;
    a1 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt32V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
  lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_2d and conformance OS_geom_collection_2d, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818, MEMORY[0x1E69A2810]);
  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v7 > a1 || v6 < a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  dispatch thunk of Collection.startIndex.getter();
  result = dispatch thunk of Collection.endIndex.getter();
  if (v7 > a2 || v6 < a2)
  {
    goto LABEL_10;
  }

  result = (a2 - a1);
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySays5SIMD2VySdGGAKG_17RealityFoundation13CurveExtruderV10ShapePointVs5NeverOTg504_s17g90Foundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepi51AA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFAA0N8j4V0D5l3Vs5F16VySdG_ASt_tXEfU_AM0pK004_958rstuV2CFLLVTf1cn_nTf4ng_n(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7 >= v6)
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = *(a2 + 16);
  }

  v51 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  result = v51;
  v50 = a3;
  v48 = a2;
  v46 = a1;
  if (v8)
  {
    v10 = (a1 + 32);
    v11 = (a2 + 32);
    v12 = a3[5];
    v13 = vsubq_f64(a3[6], v12);
    if ((*&v13.f64[1] & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13.f64[0];
    }

    else
    {
      v14 = v13.f64[1];
    }

    if ((~*&v13.f64[1] & 0x7FF0000000000000) != 0)
    {
      v14 = v13.f64[1];
    }

    if (v13.f64[1] >= v13.f64[0])
    {
      v13.f64[0] = v14;
    }

    v15 = vdupq_lane_s64(*&v13.f64[0], 0);
    v16 = v8;
    v17 = v6;
    v18 = v7;
    v19 = v6;
    v20 = v7;
    while (v17)
    {
      if (!v18)
      {
        goto LABEL_36;
      }

      v21 = *v10;
      v22 = *v11;
      v52 = result;
      v24 = *(result + 16);
      v23 = *(result + 24);
      if (v24 >= v23 >> 1)
      {
        v42 = v20;
        v44 = v19;
        v38 = v15;
        v40 = v12;
        v36 = *v11;
        v37 = *v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v22 = v36;
        v21 = v37;
        v15 = v38;
        v12 = v40;
        v20 = v42;
        v19 = v44;
        result = v52;
      }

      *(result + 16) = v24 + 1;
      v25 = result + 48 * v24;
      --v18;
      *(v25 + 32) = v21;
      *(v25 + 48) = v22;
      *(v25 + 64) = vdivq_f64(vsubq_f64(v21, v12), v15);
      --v17;
      ++v11;
      ++v10;
      if (!--v16)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = v6;
  v20 = v7;
LABEL_20:
  if (v19 > v20)
  {
    v26 = v46 + 32;
    v27 = v48 + 32;
    while (v8 < v19)
    {
      v28 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }

      if (v20 != v8)
      {
        if (v8 >= v20)
        {
          goto LABEL_39;
        }

        v29 = v50[5];
        v30 = vsubq_f64(v50[6], v29);
        if (v30.f64[1] >= v30.f64[0])
        {
          if ((*&v30.f64[1] & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v30.f64[0] = v30.f64[1];
          }

          if ((~*&v30.f64[1] & 0x7FF0000000000000) != 0)
          {
            v30.f64[0] = v30.f64[1];
          }
        }

        v31 = *(v26 + 16 * v8);
        v32 = *(v27 + 16 * v8);
        v53 = result;
        v34 = *(result + 16);
        v33 = *(result + 24);
        if (v34 >= v33 >> 1)
        {
          v43 = v20;
          v45 = v19;
          v47 = v30.f64[0];
          v49 = v50[5];
          v39 = *(v27 + 16 * v8);
          v41 = *(v26 + 16 * v8);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
          v32 = v39;
          v31 = v41;
          v30.f64[0] = v47;
          v29 = v49;
          v20 = v43;
          v19 = v45;
          result = v53;
        }

        *(result + 16) = v34 + 1;
        v35 = result + 48 * v34;
        *(v35 + 32) = v31;
        *(v35 + 48) = v32;
        *(v35 + 64) = vdivq_f64(vsubq_f64(v31, v29), vdupq_lane_s64(*&v30.f64[0], 0));
        ++v8;
        if (v28 != v19)
        {
          continue;
        }
      }

      return result;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  return result;
}

void specialized static ExtrudedShapeDescriptor.compile(shapes:instances:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = MEMORY[0x1E69E7CC0];
  v79 = 0;
  v80[0] = MEMORY[0x1E69E7CC0];
  v61 = *(a1 + 16);
  if (v61)
  {
    v4 = 0;
    v62 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v60 = v5;
      v63 = v4;
      memcpy(__dst, (v62 + 520 * v4), sizeof(__dst));
      v6 = ExtrudedShapeDescriptor.allDescriptors.getter();
      v7 = *(v6 + 2);
      if (v7)
      {
        v77 = v3;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        if (*(v6 + 2))
        {
          v8 = 0;
          v9 = v77;
          v10 = 32;
          while (1)
          {
            v11 = *&v6[v10];
            v12 = *&v6[v10 + 32];
            v75[1] = *&v6[v10 + 16];
            v75[2] = v12;
            v75[0] = v11;
            v13 = *&v6[v10 + 48];
            v14 = *&v6[v10 + 64];
            v15 = *&v6[v10 + 80];
            v76 = *&v6[v10 + 96];
            v75[4] = v14;
            v75[5] = v15;
            v75[3] = v13;
            v68 = *&v6[v10 + 48];
            v69 = *&v6[v10 + 64];
            v70 = *&v6[v10 + 80];
            v71 = *&v6[v10 + 96];
            v65 = *&v6[v10];
            v66 = *&v6[v10 + 16];
            v67 = *&v6[v10 + 32];
            outlined init with copy of MeshDescriptor(v75, v64);
            MeshDescriptor.makeGeomMesh()(v72);
            v16 = v72[0];
            if (v74)
            {
              break;
            }

            outlined destroy of MeshDescriptor(v75);
            v77 = v9;
            v18 = v9[2];
            v17 = v9[3];
            if (v18 >= v17 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
              v9 = v77;
            }

            v9[2] = v18 + 1;
            v9[v18 + 4] = v16;
            if (v7 - 1 == v8)
            {

              goto LABEL_16;
            }

            v10 += 104;
            if (++v8 >= *(v6 + 2))
            {
              goto LABEL_66;
            }
          }

          v35 = v72[1];
          v36 = v73;

          *&v65 = v16;
          *(&v65 + 1) = v35;
          LOWORD(v66) = v36;
          lazy protocol witness table accessor for type GeomMeshError and conformance GeomMeshError();
          swift_willThrowTypedImpl();
          v37 = v65;
          v38 = v66;
          swift_allocError();
          *v39 = v37;
          *(v39 + 16) = v38;
          outlined destroy of MeshDescriptor(v75);

          $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v80, &v79);
LABEL_36:

          return;
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }

      v9 = v3;
LABEL_16:
      v5 = v60;
      v19 = *(v60 + 2);
      v20 = v9[2];
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        goto LABEL_69;
      }

      if (v21 < v19)
      {
        goto LABEL_70;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
      }

      v23 = *(v81 + 2);
      v22 = *(v81 + 3);
      if (v23 >= v22 >> 1)
      {
        v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v81);
      }

      v24 = v81;
      *(v81 + 2) = v23 + 1;
      v25 = &v24[16 * v23];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      v26 = v9[2];
      v27 = *(v60 + 2);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_71;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= *(v60 + 3) >> 1)
      {
        if (!v9[2])
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v30 = v27 + v26;
        }

        else
        {
          v30 = v27;
        }

        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v60);
        if (!v9[2])
        {
LABEL_3:

          if (v26)
          {
            goto LABEL_72;
          }

          goto LABEL_4;
        }
      }

      v31 = *(v5 + 2);
      if ((*(v5 + 3) >> 1) - v31 < v26)
      {
        goto LABEL_73;
      }

      memcpy(&v5[8 * v31 + 32], v9 + 4, 8 * v26);

      if (v26)
      {
        v32 = *(v5 + 2);
        v33 = __OFADD__(v32, v26);
        v34 = v32 + v26;
        if (v33)
        {
          goto LABEL_74;
        }

        *(v5 + 2) = v34;
      }

LABEL_4:
      v4 = v63 + 1;
      v80[0] = v5;
      if (v63 + 1 == v61)
      {
        goto LABEL_38;
      }
    }
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_38:
  if (a2)
  {
    v79 = v3;
    v59 = *(a2 + 16);
    if (v59)
    {
      v40 = 0;
      v58 = a2 + 32;
      v56 = v81 + 32;
      v41 = MEMORY[0x1E69E7CC0];
      do
      {
        v42 = *(v58 + 80 * v40);
        if (*(v81 + 2) <= v42)
        {
          goto LABEL_67;
        }

        v43 = &v56[16 * v42];
        v45 = *v43;
        v44 = v43[1];
        if (*v43 != v44)
        {
          if (v44 < v45)
          {
            goto LABEL_68;
          }

          if (v45 <= 0x100000000)
          {
            v46 = 0x100000000;
          }

          else
          {
            v46 = *v43;
          }

          v47 = *v43;
          while (v44 != v47)
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_64;
            }

            if (v46 == v47)
            {
              goto LABEL_65;
            }

            v48 = REGeomInstanceCreate();
            if (!v48)
            {
              goto LABEL_76;
            }

            if (!v41)
            {
              goto LABEL_75;
            }

            v49 = v48;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
            }

            v51 = *(v41 + 2);
            v50 = *(v41 + 3);
            if (v51 >= v50 >> 1)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v41);
            }

            ++v47;
            *(v41 + 2) = v51 + 1;
            *&v41[8 * v51 + 32] = v49;
            v79 = v41;
            if (v44 == v47)
            {
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

LABEL_41:
        ;
      }

      while (++v40 != v59);
    }
  }

  REMeshCompileOptionsCreate();
  v52 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v52 + 120, __dst);
  v53 = __dst[3];
  v54 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(v54 + 32))(v53, v54);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  if (!REAssetManagerMeshAssetCreateFromModelsAndSkeletonsWithOptionsNullable())
  {
    lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
    swift_allocError();
    *v55 = 0xD00000000000003FLL;
    *(v55 + 8) = 0x80000001C18F09C0;
    *(v55 + 16) = 2;
    swift_willThrow();
    RERelease();

    $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v80, &v79);

    goto LABEL_36;
  }

  RERelease();

  $defer #1 () in static ExtrudedShapeDescriptor.compile(shapes:instances:)(v80, &v79);
}

uint64_t specialized static TesselatedShape.endcapTransform(frontFace:sweepCurve:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((result & 1) == 0)
  {
    if (v2)
    {
      __asm { FMOV            V7.4S, #-1.0 }

      return result;
    }

    goto LABEL_7;
  }

  if (!v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD2VySfG_Tt1g50229_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5SIMD3VySfGGz_SiztXEfU0_yAPz_SiztXEfU_yAPz_SiztXEfU_yAPz_SiztXEfU_ySrys5F17VySfGGz_SiztXEfU_0H10Foundation0S8ExtruderVSrys5SIMD3VySfGGA3OSaySo13simd_float4x4aGSiTf1nc_nTf4ngXnnnngn_n(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if (result < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = result;
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD2VySfGMd, &_ss5SIMD2VySfGMR);
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v16;
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
  }

  v17 = a3[1];
  if (v17 != a4[1] || v17 != a5[1] || v17 != a6[1])
  {
    goto LABEL_40;
  }

  v20 = *(a7 + 16);
  v21 = *(a2 + 16);
  if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v17 < v20 * v21)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v20)
  {
    v22 = 0;
    v23 = *a3;
    v24 = *a4;
    v25 = a7 + 32;
    v26 = *a5;
    v27 = *a6;
    while (v22 != v20 + 1)
    {
      v28 = v22 + 1;
      if (v20 - 1 >= v22 + 1)
      {
        v29 = v22 + 1;
      }

      else
      {
        v29 = v20 - 1;
      }

      if (v22 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v22;
      }

      if (v21)
      {
        v31 = v22 * v21;
        if ((v22 * v21) >> 64 != (v22 * v21) >> 63)
        {
          goto LABEL_38;
        }

        v32 = 0;
        v33 = (v25 + (v22 << 6));
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];
        v37 = v33[3];
        v38 = v25 + (v30 << 6);
        v39 = *(v38 - 64);
        v40 = *(v38 - 48);
        v41 = *(v38 - 32);
        v42 = *(v38 - 16);
        v43 = (v25 + (v29 << 6));
        v44 = *v43;
        v45 = v43[1];
        v46 = v43[2];
        v47 = v43[3];
        v48 = vmlaq_f32(vaddq_f32(v36, vmlaq_f32(vmulq_f32(v34, 0), 0, v35)), 0, v37);
        v48.i32[3] = 0;
        v49 = (a2 + 64);
        while (1)
        {
          v53 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            break;
          }

          v54 = v49[-2].f64[0];
          v55 = v49[-2].f64[1];
          v56 = vsubq_f32(vaddq_f32(v47, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v44, v54), v45, v55), 0, v46)), vaddq_f32(v42, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v39, v54), v40, v55), 0, v41)));
          v8.f32[0] = sqrtf(vmuls_lane_f32(v56.f32[2], v56, 2) + vaddv_f32(vmul_f32(*v56.f32, *v56.f32)));
          v57 = v48;
          if (fabsf(v8.f32[0]) > 0.00001)
          {
            *v57.i8 = vdiv_f32(*v56.f32, vdup_lane_s32(*v8.f32, 0));
            *&v57.i32[2] = v56.f32[2] / v8.f32[0];
            v57.i32[3] = 0;
          }

          v58 = v49[-1].f64[0];
          v59 = v49[-1].f64[1];
          v60 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v34, v58), v35, v59), 0, v36), 0, v37);
          v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL), vnegq_f32(v60)), v57, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
          v61 = sqrtf(vmuls_lane_f32(v8.f32[1], *v8.f32, 1) + (vmuls_lane_f32(v8.f32[2], v8, 2) + vmulq_f32(v8, v8).f32[0]));
          v62 = 0uLL;
          if (fabsf(v61) > 0.00001)
          {
            *&v62 = v8.f32[2] / v61;
            *(&v62 + 1) = v8.f32[0] / v61;
            *(&v62 + 2) = v8.f32[1] / v61;
          }

          v50 = vaddq_f32(v37, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v34, v54), v35, v55), 0, v36));
          v50.i32[3] = 0;
          ++v32;
          v60.i32[3] = 0;
          v51 = 16 * v53;
          *(v23 + v51) = v50;
          *(v24 + v51) = v60;
          *(v26 + v51) = v57;
          *(v27 + v51) = v62;
          v52 = *v49;
          v49 += 3;
          *(result + 32 + 8 * v53) = vcvt_f32_f64(v52);
          if (v21 == v32)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

LABEL_17:
      v22 = v28;
      if (v28 == v20)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_34:
  if (v16 >= a8)
  {
    *(result + 16) = a8;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD3VySfG_Tt1g50158_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5F32VySfGGz_SiztXEfU0_yAPz_SiztXEfU_Si0H10Foundation0S8ExtruderVSryAGGSaySo13simd_float4x4aGAI0uV0VTf1nc_nTf4nngngn_n(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_10;
  }

  v8 = a2;
  v9 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v15 + 16) = a1;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v43[0] = v15 + 32;
  v43[1] = a1;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v35 = v15;
  v47 = a8;
  v36 = a1;

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v16 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v16 + 16) = v8;
    v37 = v16;
    v39 = v16 + 32;
    v40 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = v8;
  }

  else
  {
    v39 = v9 + 32;
    v40 = 0;

    v37 = v9;
  }

  v38[0] = v9 + 32;
  v38[1] = v8;

  v17 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCs5SIMD2VySfG_Tt1g50229_s17RealityFoundation15TesselatedShape33_958D9063BE5145611DD1DCE0DF8621CFLLV16extractExtrusion10sweepCurveAA14MeshDescriptorVSgSaySo13simd_float4x4aG_tFySrys5SIMD3VySfGGz_SiztXEfU0_yAPz_SiztXEfU_yAPz_SiztXEfU_yAPz_SiztXEfU_ySrys5F17VySfGGz_SiztXEfU_0H10Foundation0S8ExtruderVSrys5SIMD3VySfGGA3OSaySo13simd_float4x4aGSiTf1nc_nTf4ngXnnnngn_n(v8, a3, a6, v43, &v39, v38, a7, v8);

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD2VySfG_AA05ArrayD0VyAJGTt1g5(v17, v46);
  if (one-time initialization token for textureCoordinates != -1)
  {
    goto LABEL_27;
  }

LABEL_10:
  v18 = static MeshBuffers.textureCoordinates;
  v19 = unk_1EBEAD110;
  v20 = word_1EBEAD118;
  v21 = HIBYTE(word_1EBEAD118);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD2VySfGGMR);
  v44[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v44[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v46, v45, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  if (v21)
  {
    v22 = 256;
  }

  else
  {
    v22 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  specialized Dictionary.subscript.setter(v44, v18, v19, v22 | v20);
  outlined destroy of BodyTrackingComponent?(v46, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD2VySfGGMR);
  *(v9 + 16) = v8;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v9, v45);
  if (one-time initialization token for normals != -1)
  {
    swift_once();
  }

  v23 = static MeshBuffers.normals;
  v24 = *algn_1EBEAD0C8;
  v25 = word_1EBEAD0D0;
  v26 = HIBYTE(word_1EBEAD0D0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMd, &_s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLVy_s5SIMD3VySfGGMR);
  v38[3] = v27;
  v38[4] = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v38[0] = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v45, v44, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v26)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  specialized Dictionary.subscript.setter(v38, v23, v24, v28 | v25);
  outlined destroy of BodyTrackingComponent?(v45, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  *(v37 + 16) = v8;

  _s17RealityFoundation10MeshBufferVyACyxGqd__c7ElementQyd__RszAA09AttributeD0Rd__lufCs5SIMD3VySfG_AA05ArrayD0VyAJGTt1g5(v37, v44);
  if (one-time initialization token for bitangents != -1)
  {
    swift_once();
  }

  v29 = static MeshBuffers.bitangents;
  v30 = *algn_1EBEAD0F8;
  v31 = word_1EBEAD100;
  v32 = HIBYTE(word_1EBEAD100);
  v41 = v27;
  v42 = &protocol witness table for MeshBufferDictionary.BufferEntry<A>;
  v39 = swift_allocObject();
  swift_bridgeObjectRetain_n();
  outlined init with copy of [String : String](v44, v38, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v32)
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  _s17RealityFoundation20MeshBufferDictionaryV0D5Entry33_196D5CD635511420A027BE1B29F636C4LLV_6bufferAFy_xGqd___AA0cD0VyxGtc7ElementQyd__RszAA0cD8SemanticRd__lufCs5SIMD4VySfG_AA0C7BuffersO0P0Vy_AQGTt2B5();
  specialized Dictionary.subscript.setter(&v39, v29, v30, v33 | v31);
  result = outlined destroy of BodyTrackingComponent?(v44, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMd, &_s17RealityFoundation10MeshBufferVys5SIMD3VySfGGMR);
  if (v36 < v8)
  {
    __break(1u);
  }

  else
  {
    result = v35;
    *(v35 + 16) = v8;
  }

  return result;
}

void specialized TesselatedShape.init(shape:chamferProfile:chamferRadius:resolution:triangulatePreInset:)(unint64_t a1@<X0>, float64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>, double a7@<D0>)
{
  v14 = *a4;
  *&v172.f64[0] = MEMORY[0x1E69E7CC0];
  *&v172.f64[1] = MEMORY[0x1E69E7CC0];
  v173.f64[0] = 0.0;
  *&v174.f64[0] = MEMORY[0x1E69E7CC0];
  *&v174.f64[1] = MEMORY[0x1E69E7CC0];
  *&v175.f64[0] = MEMORY[0x1E69E7CC0];
  *&v175.f64[1] = MEMORY[0x1E69E7CC0];
  v176.f64[0] = 0.0;
  LOBYTE(v176.f64[1]) = 1;

  trace(path:points:tangents:uniformSegmentsPerSpan:)(v15, &v172, &v172.f64[1], v14, v16, v17);

  v18 = *&v172.f64[0];
  v19 = *(*&v172.f64[0] + 16);
  v20 = HIDWORD(v19);
  if (HIDWORD(v19))
  {
    goto LABEL_184;
  }

  LOBYTE(v148) = a5;
  v141 = a6;
  a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(a6 + 16);
  v20 = *(a6 + 24);
  a5 = v7 + 1;
  if (v7 >= v20 >> 1)
  {
    goto LABEL_185;
  }

  while (1)
  {
    *(a6 + 16) = a5;
    *(a6 + 4 * v7 + 32) = v19;
    *&v173.f64[1] = a6;
    v21 = *(a1 + 16);
    v22 = vdupq_n_s64(0x7FF0000000000000uLL);
    v23 = vdupq_n_s64(0xFFF0000000000000);
    if (v21)
    {
      v24 = a1 + 48;
      do
      {
        if (*(v24 + 48))
        {
          v26 = *(v24 - 16);
          v27 = *v24;
          v28 = *(v24 + 16);
          if (*(v24 + 48) == 1)
          {
            v29 = vminnmq_f64(v22, vminnmq_f64(v26, v27));
            v30 = vmaxnmq_f64(v23, vmaxnmq_f64(v26, v27));
            v22 = vminnmq_f64(v29, vminnmq_f64(v27, v28));
            v31 = vmaxnmq_f64(v27, v28);
          }

          else
          {
            v32 = *(v24 + 32);
            v33 = vminnmq_f64(v22, vminnmq_f64(v26, v27));
            v30 = vmaxnmq_f64(vmaxnmq_f64(v23, vmaxnmq_f64(v26, v27)), vmaxnmq_f64(v27, v28));
            v22 = vminnmq_f64(vminnmq_f64(v33, vminnmq_f64(v27, v28)), vminnmq_f64(v28, v32));
            v31 = vmaxnmq_f64(v28, v32);
          }

          v23 = vmaxnmq_f64(v30, v31);
        }

        else
        {
          v25 = *(v24 - 16);
          v22 = vminnmq_f64(v22, vminnmq_f64(v25, *v24));
          v23 = vmaxnmq_f64(v23, vmaxnmq_f64(v25, *v24));
        }

        v24 += 80;
        --v21;
      }

      while (v21);
    }

    v149 = v22;
    v152 = v23;

    v177 = v149;
    v178 = v152;
    a5 = *(*&a2 + 16);
    v146 = a3;
    if (a5)
    {
      LODWORD(v19) = 32;
      do
      {

        trace(path:points:tangents:uniformSegmentsPerSpan:)(v34, &v172, &v172.f64[1], v14, &v172, v35);

        v18 = *&v172.f64[0];
        a3 = *(*&v172.f64[0] + 16);
        v20 = HIDWORD(a3);
        if (HIDWORD(a3))
        {
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v7 = *(a6 + 16);
        v36 = *(a6 + 24);
        a1 = v7 + 1;
        if (v7 >= v36 >> 1)
        {
          a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v7 + 1, 1, a6);
        }

        *(a6 + 16) = a1;
        *(a6 + 4 * v7 + 32) = a3;
        LODWORD(v19) = v19 + 8;
        --a5;
      }

      while (a5);

      *&v173.f64[1] = a6;
      a3 = v146;
      if ((v148 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_19:
      *&v165.f64[0] = MEMORY[0x1E69E7CC0];
      triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(v18, a6, &v165);
      v173.f64[0] = v165.f64[0];
      goto LABEL_20;
    }

    if (v148)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (!a3)
    {
      goto LABEL_106;
    }

    if (fabs(a7) <= 0.000001)
    {

LABEL_106:
      v162 = v176;
      v163 = v177;
      v158 = v172;
      v159 = v173;
      v160 = v174;
      v161 = v175;
      v166 = v173;
      v167 = v174;
      v164 = v178;
      v165 = v172;
      v170 = v177;
      v171 = v178;
      v168 = v175;
      v169 = v176;
      outlined init with copy of TesselatedShape(&v158, v157);
      outlined destroy of TesselatedShape(&v165);
      v77 = v163;
      v141[4] = v162;
      v141[5] = v77;
      v141[6] = v164;
      v78 = v159;
      *v141 = v158;
      v141[1] = v78;
      v79 = v161;
      v141[2] = v160;
      v141[3] = v79;
      return;
    }

    if (a7 <= 0.0)
    {

      lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
      swift_allocError();
      *v80 = 0xD000000000000022;
      *(v80 + 8) = 0x80000001C18F08D0;
      *(v80 + 16) = 1;
      swift_willThrow();
LABEL_109:
      v169 = v176;
      v170 = v177;
      v171 = v178;
      v165 = v172;
      v166 = v173;
      v167 = v174;
      v168 = v175;
      outlined destroy of TesselatedShape(&v165);
      return;
    }

    a1 = *(a3 + 16);
    if (!a1)
    {
      break;
    }

    v132 = a3 + 32;
    __asm { FMOV            V1.2D, #-1.0 }

    v41 = vaddq_f64(*(a3 + 32 + 16 * a1 - 16), _Q1);
    if (sqrt(vaddvq_f64(vmulq_f64(v41, v41))) > 0.000001)
    {
      goto LABEL_198;
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_inset_evaluator_2d, 0x1E69A2830);

    *&v18 = COERCE_DOUBLE(OS_geom_inset_evaluator_2d.init(points:accumulatedOutlineIndexCount:)());
    a6 = 0;
    while (1)
    {
      v20 = *(a3 + 16);
      if (a6 >= v20)
      {
        break;
      }

      v42 = *(a3 + 16 * a6 + 32) * a7;
      geom_inset_evaluator_get_computed_inset_distance_2d();
      if (v43 > v42)
      {

        lazy protocol witness table accessor for type ShapeExtrusionError and conformance ShapeExtrusionError();
        swift_allocError();
        *v81 = 0xD000000000000083;
        *(v81 + 8) = 0x80000001C18F0900;
        *(v81 + 16) = 0;
        swift_willThrow();

        goto LABEL_109;
      }

      ++a6;
      geom_inset_evaluator_advance_inset_to_2d();
      if (a1 == a6)
      {
        collection_2d = geom_create_collection_2d();
        collection_u = geom_create_collection_u();
        v133 = v18;
        v139 = collection_2d;
        geom_inset_evaluator_extract_offset_curve_2d();
        *&v158.f64[0] = collection_u;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828);
        v46 = lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828, MEMORY[0x1E69A2808]);
        v47 = collection_u;
        dispatch thunk of Collection.startIndex.getter();
        v140 = v47;
        *&v158.f64[0] = v47;
        v157[0] = *&v165.f64[0];
        a1 = &v165;
        v142 = v46;
        dispatch thunk of Collection.endIndex.getter();
        a6 = v157[0];
        if (v157[0] != *&v165.f64[0])
        {
          a5 = 0;
          v145 = MEMORY[0x1E69E7CC0];
          v14 = v46;
          while (1)
          {
            v82 = dispatch thunk of Collection.subscript.read();
            v7 = *v83;
            v82(&v165, 0);
            *&v165.f64[0] = v140;
            *&v18 = COERCE_DOUBLE(&v165);
            dispatch thunk of Collection.index(after:)();
            v84 = geom_collection_data_2d();
            *&a2 = (v7 - a5);
            if (v7 < a5)
            {
              goto LABEL_183;
            }

            v85 = v84;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v145 + 2) + 1, 1, v145);
            }

            v87 = *(v145 + 2);
            v86 = *(v145 + 3);
            if (v87 >= v86 >> 1)
            {
              v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v145);
            }

            *(v145 + 2) = v87 + 1;
            v88 = &v145[16 * v87];
            *(v88 + 4) = v85 + 16 * a5;
            *(v88 + 5) = a2;
            v14 = v142;
            dispatch thunk of Collection.endIndex.getter();
            a6 = v157[0];
            a5 = v7;
            a3 = v146;
            if (v157[0] == *&v165.f64[0])
            {
              goto LABEL_31;
            }
          }
        }

        v145 = MEMORY[0x1E69E7CC0];
LABEL_31:

        v51 = specialized classify<A>(subpaths:)(v145, v48, v49, v50);
        a5 = v51;
        v143 = v51[2];
        if (v143)
        {
          v7 = 0;
          v137 = v51 + 4;
          v134 = v51;
          while (v7 < *(a5 + 16))
          {
            v52 = &v137[3 * v7];
            v53 = v52[1];
            v54 = v52[2];
            if (v53)
            {
              v55 = *v52;
              a1 = 16 * v53;
              if (v53 <= 0)
              {
                v14 = MEMORY[0x1E69E7CC0];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMd, &_ss23_ContiguousArrayStorageCys5SIMD2VySdGGMR);
                v14 = swift_allocObject();
                v56 = _swift_stdlib_malloc_size(v14);
                v57 = v56 - 32;
                if (v56 < 32)
                {
                  v57 = v56 - 17;
                }

                *(v14 + 16) = v53;
                *(v14 + 24) = 2 * (v57 >> 4);
              }

              memcpy((v14 + 32), v55, 16 * v53);
              a2 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              a2 = MEMORY[0x1E69E7CC0];
              v14 = MEMORY[0x1E69E7CC0];
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1C1887600;
            v59 = *(v14 + 16);
            if (HIDWORD(v59))
            {
              goto LABEL_188;
            }

            v19 = v58;
            v148 = v7;
            *(v58 + 32) = v59;
            v153 = v54[2];
            if (v153)
            {
              v150 = v54 + 4;

              a3 = 0;
              while (1)
              {
                v20 = &v150[2 * a3];
                v18 = *(v20 + 8);
                a6 = *(v14 + 16);
                a5 = a6 + v18;
                if (__OFADD__(a6, v18))
                {
                  goto LABEL_174;
                }

                v60 = *v20;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && (v62 = *(v14 + 24) >> 1, v62 >= a5))
                {
                  v7 = v19;
                }

                else
                {
                  v7 = v19;
                  if (a6 <= a5)
                  {
                    v63 = a6 + v18;
                  }

                  else
                  {
                    v63 = a6;
                  }

                  v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v63, 1, v14);
                  v62 = *(v14 + 24) >> 1;
                }

                v64 = *(v14 + 16);
                v19 = v62 - v64;
                if (*&v18 == 0.0 || v62 == v64)
                {
                  if (v60)
                  {
                    v20 = v60;
                  }

                  else
                  {
                    v20 = 0;
                  }

                  if (v60)
                  {
                    a1 = v60 + 16 * v18;
                  }

                  else
                  {
                    a1 = 0;
                  }

                  a2 = 0.0;
                }

                else
                {
                  if (v18 >= v19)
                  {
                    *&a2 = v62 - v64;
                  }

                  else
                  {
                    a2 = *&v18;
                  }

                  a5 = 16 * *&a2;
                  memcpy((v14 + 16 * v64 + 32), v60, 16 * *&a2);
                  v20 = v60 + 16 * *&a2;
                  a1 = v60 + 16 * v18;
                }

                if (*&a2 < v18)
                {
                  goto LABEL_175;
                }

                if (*&a2 > 0)
                {
                  v66 = *(v14 + 16);
                  _VF = __OFADD__(v66, *&a2);
                  v67 = v66 + *&a2;
                  if (_VF)
                  {
                    goto LABEL_178;
                  }

                  *(v14 + 16) = v67;
                }

                a5 = *(v14 + 16);
                if (*&a2 != v19)
                {
                  v19 = v7;
                  goto LABEL_78;
                }

                v19 = v7;
                if (v20 && a1 != v20)
                {
                  a6 = v20 + 16;
                  v18 = *v20;
                  v7 = *(v20 + 8);
                  while (1)
                  {
                    v70 = *(v14 + 24);
                    v71 = v70 >> 1;
                    if ((v70 >> 1) < a5 + 1)
                    {
                      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), a5 + 1, 1, v14);
                      v71 = *(v14 + 24) >> 1;
                      if (a5 < v71)
                      {
LABEL_89:
                        v72 = a6;
                        a6 = a6 + 16 * v71 - 16 * a5;
                        v73 = a5 + 2;
                        while (1)
                        {
                          v74 = (v14 + 16 * v73);
                          *v74 = v18;
                          v74[1] = v7;
                          if (v72 == a1)
                          {
                            break;
                          }

                          v18 = *v72;
                          v7 = v72[1];
                          v72 += 2;
                          if (++v73 - v71 == 2)
                          {
                            a5 = v71;
                            goto LABEL_86;
                          }
                        }

                        a5 = v73 - 1;
                        *(v14 + 16) = v73 - 1;
                        break;
                      }
                    }

                    else if (a5 < v71)
                    {
                      goto LABEL_89;
                    }

LABEL_86:
                    *(v14 + 16) = a5;
                  }
                }

LABEL_78:
                v20 = HIDWORD(a5);
                if (HIDWORD(a5))
                {
                  goto LABEL_176;
                }

                v69 = *(v19 + 16);
                v68 = *(v19 + 24);
                a1 = v69 + 1;
                if (v69 >= v68 >> 1)
                {
                  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v19);
                }

                ++a3;
                *(v19 + 16) = a1;
                *(v19 + 4 * v69 + 32) = a5;
                if (a3 == v153)
                {

                  a2 = MEMORY[0x1E69E7CC0];
                  break;
                }
              }
            }

            v165.f64[0] = a2;
            triangulateByEarClippingFix(points:accumuluatedOutlineIndexCount:triangleVertexIndices:)(v14, v19, &v165);
            a3 = *(*&v174.f64[0] + 16);

            specialized Array.append<A>(contentsOf:)(v75);
            v7 = *(*&v165.f64[0] + 16);
            if (v7)
            {
              v154 = *&v165.f64[0];
              v158.f64[0] = a2;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
              if (HIDWORD(a3))
              {
                goto LABEL_195;
              }

              a2 = v158.f64[0];
              v19 = 32;
              v18 = v154;
              do
              {
                v20 = *(v18 + v19);
                a6 = (v20 + a3);
                if (__CFADD__(v20, a3))
                {
                  goto LABEL_173;
                }

                v158.f64[0] = a2;
                a1 = *(*&a2 + 16);
                v76 = *(*&a2 + 24);
                a5 = a1 + 1;
                if (a1 >= v76 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), a1 + 1, 1);
                  v18 = v154;
                  a2 = v158.f64[0];
                }

                *(*&a2 + 16) = a5;
                *(*&a2 + 4 * a1 + 32) = a6;
                v19 += 4;
              }

              while (--v7);
            }

            v7 = v148 + 1;
            specialized Array.append<A>(contentsOf:)(*&a2);
            a3 = v146;
            a5 = v134;
            if (v148 + 1 == v143)
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
LABEL_118:

          a5 = geom_create_collection_2d();
          v89 = geom_create_collection_u();
          v90 = geom_create_collection_u();
          v91 = geom_create_collection_u();
          collection_d = geom_create_collection_d();
          v144 = v89;
          v138 = v90;
          v130 = v91;
          geom_inset_evaluator_extract_joiner_mesh_2d();
          geom_inset_evaluator_get_computed_inset_distance_2d();
          v176.f64[0] = v93;
          LOBYTE(v176.f64[1]) = 0;
          v131 = collection_d;
          *&v94 = COERCE_DOUBLE(geom_collection_size_d());
          if (v94 < 0)
          {
            goto LABEL_199;
          }

          a2 = *&v94;
          v129 = a5;
          if (*&v94 != 0.0)
          {
            v14 = *(a3 + 16);
            type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_d, 0x1E69A2820);
            *&v128 = a2;
            lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_d and conformance OS_geom_collection_d, &lazy cache variable for type metadata for OS_geom_collection_d, 0x1E69A2820, MEMORY[0x1E69A27F8]);
            v151 = 0;
            a1 = 0;
            a6 = 0;
            v19 = a3 + 48;
            v126 = a3 + 48;
            v127 = v14;
LABEL_122:
            v148 = v151;
            v7 = a6 + 1;
            *&v165.f64[0] = v131;
            *&v18 = COERCE_DOUBLE(&v165);
            GeometryCollection.subscript.getter();
            v20 = a1 + 1;
            v95 = a1 + 2;
            if (v14 > (a1 + 2))
            {
              v95 = v14;
            }

            v96 = v95 - 2;
            while (!__OFADD__(a1, 2))
            {
              if ((a1 + 2) >= v14)
              {
                goto LABEL_131;
              }

              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_180;
              }

              v97 = a1 + 1;
              if (a1 + 1 >= *(a3 + 16))
              {
                goto LABEL_181;
              }

              v98 = *(v19 + 16 * a1++) * a7;
              if (v98 >= v158.f64[0])
              {
                v96 = v97 - 1;
LABEL_131:
                if ((v96 & 0x8000000000000000) != 0)
                {
                  goto LABEL_189;
                }

                v99 = *(a3 + 16);
                if (v96 >= v99)
                {
                  goto LABEL_190;
                }

                if (v96 + 1 >= v99)
                {
                  goto LABEL_191;
                }

                v100 = *(v132 + 16 * v96);
                v101 = a7 * v100.f64[0];
                v147 = vmuld_lane_f64(a7, v100, 1);
                v102 = *(v132 + 16 * (v96 + 1));
                v103 = a7 * v102.f64[0];
                v136 = v96;
                if (v101 != a7 * v102.f64[0])
                {
                  if ((v104 = fabs(v101), v105 = fabs(v103), v104 == INFINITY) && v105 == INFINITY || vabdd_f64(v101, v103) >= (v104 + v105 + 1.0) * 0.000001)
                  {
                    v147 = vmuld_lane_f64(a7, v102, 1) * ((v158.f64[0] - v101) / (v103 - v101)) + v147 * (1.0 - (v158.f64[0] - v101) / (v103 - v101));
                  }
                }

                *&v165.f64[0] = v130;
                lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828, MEMORY[0x1E69A2800]);
                GeometryCollection.subscript.getter();
                v106 = LODWORD(v158.f64[0]);
                if (v151 > LODWORD(v158.f64[0]))
                {
                  goto LABEL_192;
                }

                v135 = a6 + 1;
                *&v165.f64[0] = a5;
                v7 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818);
                a6 = lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_2d and conformance OS_geom_collection_2d, &lazy cache variable for type metadata for OS_geom_collection_2d, 0x1E69A2818, MEMORY[0x1E69A2810]);
                dispatch thunk of Collection.startIndex.getter();
                dispatch thunk of Collection.endIndex.getter();
                if (v157[0] < *&v158.f64[0])
                {
                  goto LABEL_193;
                }

                if (v151 < *&v158.f64[0] || v157[0] < v106)
                {
                  goto LABEL_194;
                }

                v19 = a5;
                v151 = v106;
                *&v107 = COERCE_DOUBLE(specialized RandomAccessCollection<>.distance(from:to:)(v148, v106));
                if (*&v107 != 0.0)
                {
                  a2 = *&v107;
                  *&v158.f64[0] = MEMORY[0x1E69E7CC0];
                  *&v18 = COERCE_DOUBLE(&v158);
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107 & ~(v107 >> 63), 0);
                  a3 = *&v158.f64[0];
                  v157[0] = v148;
                  if ((*&a2 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_196;
                  }

                  while (1)
                  {
                    a1 = v157[0];
                    v20 = v151;
                    if (v157[0] < v148 || v157[0] >= v151)
                    {
                      goto LABEL_177;
                    }

                    v109 = dispatch thunk of Collection.subscript.read();
                    v155 = *v110;
                    v109(&v165, 0);
                    *&v158.f64[0] = a3;
                    v14 = *(a3 + 16);
                    v111 = *(a3 + 24);
                    a5 = v14 + 1;
                    if (v14 >= v111 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v14 + 1, 1);
                      a3 = *&v158.f64[0];
                    }

                    *(a3 + 16) = a5;
                    v112 = a3 + 32 * v14;
                    *(v112 + 32) = v155;
                    *(v112 + 48) = *&v147;
                    *&v165.f64[0] = v19;
                    *&v18 = COERCE_DOUBLE(&v165);
                    dispatch thunk of Collection.index(after:)();
                    --*&a2;
                    if (a2 == 0.0)
                    {

                      goto LABEL_121;
                    }
                  }
                }

                a3 = MEMORY[0x1E69E7CC0];
LABEL_121:
                specialized Array.append<A>(contentsOf:)(a3);
                v14 = v127;
                a2 = *&v128;
                a6 = v135;
                a1 = v136;
                a3 = v146;
                a5 = v129;
                v19 = v126;
                if (v135 == v128)
                {
                  goto LABEL_155;
                }

                goto LABEL_122;
              }
            }

            goto LABEL_179;
          }

LABEL_155:

          *&v165.f64[0] = v138;
          dispatch thunk of Collection.startIndex.getter();
          v113 = 0;
          *&v158.f64[0] = v138;
          v114 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v115 = v113;
            dispatch thunk of Collection.endIndex.getter();
            if (v157[0] == *&v165.f64[0])
            {

              goto LABEL_106;
            }

            v116 = dispatch thunk of Collection.subscript.read();
            v113 = *v117;
            v116(&v165, 0);
            *&v165.f64[0] = v138;
            v156 = v157[0];
            dispatch thunk of Collection.index(after:)();
            v118 = v115 + 1;
            if (v115 + 1 >= v113)
            {
              break;
            }

            if (v118 != v113 - 1)
            {
              if (v118 >= v113 - 1)
              {
                goto LABEL_200;
              }

              lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(&lazy protocol witness table cache variable for type OS_geom_collection_u and conformance OS_geom_collection_u, &lazy cache variable for type metadata for OS_geom_collection_u, 0x1E69A2828, MEMORY[0x1E69A2800]);
              v119 = v115 + 2;
              do
              {
                *&v165.f64[0] = v144;
                GeometryCollection.subscript.getter();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 2) + 1, 1, v114);
                }

                v121 = *(v114 + 2);
                v120 = *(v114 + 3);
                if (v121 >= v120 >> 1)
                {
                  v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v114);
                }

                *(v114 + 2) = v121 + 1;
                *&v114[4 * v121 + 32] = v156;
                *&v165.f64[0] = v144;
                GeometryCollection.subscript.getter();
                v123 = *(v114 + 2);
                v122 = *(v114 + 3);
                if (v123 >= v122 >> 1)
                {
                  v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v114);
                }

                *(v114 + 2) = v123 + 1;
                *&v114[4 * v123 + 32] = v156;
                *&v165.f64[0] = v144;
                GeometryCollection.subscript.getter();
                v125 = *(v114 + 2);
                v124 = *(v114 + 3);
                if (v125 >= v124 >> 1)
                {
                  v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1, v114);
                }

                *(v114 + 2) = v125 + 1;
                *&v114[4 * v125 + 32] = v156;
                ++v119;
              }

              while (v113 != v119);
              *&v175.f64[1] = v114;
            }
          }

          __break(1u);
        }

        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }
    }

LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), a5, 1, a6);
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type OS_geom_collection_u and conformance OS_geom_collection_u(unint64_t *a1, unint64_t *a2, void *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = type metadata accessor for OS_os_log(255, a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

double block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata completion function for PiecewiseLinearPolygon(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PiecewiseLinearPolygon(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PiecewiseLinearPolygon(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
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
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata completion function for Shape(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Array();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Shape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for Shape(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

__n128 __swift_memcpy112_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for TesselatedShape(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TesselatedShape(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtrudedShapeDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 520))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ExtrudedShapeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 504) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 520) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PathSpan(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for PathSpan(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SpatialPhotoStereoAggressor.AggressorType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SpatialPhotoStereoAggressor.AggressorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SpatialPhotoStereoAggressor.AggressorType(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x80000001C18DD290;
    v9 = 0xD000000000000019;
    if (v2 != 6)
    {
      v9 = 0x6567616D49776F4CLL;
      v8 = 0xEF7974696C617551;
    }

    v10 = 0xEF65736F6C436F6FLL;
    v11 = 0xD000000000000017;
    if (v2 == 4)
    {
      v11 = 0x54737463656A624FLL;
    }

    else
    {
      v10 = 0x80000001C18DD270;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEB00000000646569;
    v4 = 0x6669636570736E55;
    v5 = 0x80000001C18DD220;
    if (v2 == 2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0xD000000000000015;
    }

    if (v2 != 2)
    {
      v5 = 0x80000001C18DD240;
    }

    if (*v1)
    {
      v4 = 0x6C63634F736E654CLL;
      v3 = 0xED00006E6F697375;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

void SpatialPhotoStereoAggressor.hash(into:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  String.hash(into:)();

  if (!a4)
  {
    Hasher._combine(_:)(0);
    if ((a5 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if ((a5 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((a5 & 0x7FFFFF) == 0 && (a5 & 0x7F800000) == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = a5;
  }

  Hasher._combine(_:)(v8);
}

Swift::Int SpatialPhotoStereoAggressor.hashValue.getter(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  if (!a3)
  {
    Hasher._combine(_:)(0);
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((a4 & 0x7FFFFF) == 0 && (a4 & 0x7F800000) == 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = a4;
  }

  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SpatialPhotoStereoAggressor()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  Hasher.init(_seed:)();
  String.hash(into:)();

  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v3)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return Hasher._finalize()();
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  if ((v2 & 0x7FFFFFFF) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t specialized static SpatialPhotoStereoAggressor.== infix(_:_:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((specialized == infix<A>(_:_:)(a1, a5) & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if ((a4 & 0x100000000) != 0)
  {
    if ((a8 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a8 & 0x100000000) == 0 && *&a4 == *&a8)
  {
    return 1;
  }

  return 0;
}

unint64_t specialized SpatialPhotoStereoAggressor.AggressorType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SpatialPhotoStereoAggressor.AggressorType.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

char *specialized static SpatialPhotoStereoAggressor.aggressors(fromStereoPairGroupDictionary:)(uint64_t a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v41._countAndFlagsBits + 16);
  countAndFlagsBits = v41._countAndFlagsBits;
  if (v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
    v9 = (v41._countAndFlagsBits + 32);
    while (1)
    {
      v10 = *v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (!*(v10 + 16))
      {
        break;
      }

      v14 = v11;

      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v15, v42);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SpatialPhotoStereoAggressor.AggressorType.init(rawValue:), v41);

      if (v18 >= 8)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

LABEL_14:
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v10 + 16))
      {

LABEL_20:
        v25 = 0;
        goto LABEL_21;
      }

      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_20;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v22, v42);
      type metadata accessor for NSNumber();
      if (swift_dynamicCast())
      {
        v25 = v41._countAndFlagsBits;
      }

      else
      {
        v25 = 0;
      }

LABEL_21:
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v10 + 16))
      {

LABEL_32:

        v32 = 0;
        object = 0;
        if (v25)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        goto LABEL_32;
      }

      outlined init with copy of Any(*(v10 + 56) + 32 * v28, v42);

      v31 = swift_dynamicCast();
      if (v31)
      {
        v32 = v41._countAndFlagsBits;
      }

      else
      {
        v32 = 0;
      }

      if (v31)
      {
        object = v41._object;
      }

      else
      {
        object = 0;
      }

      if (v25)
      {
LABEL_33:
        [v25 floatValue];
        v34 = v35;
        goto LABEL_34;
      }

LABEL_30:
      v34 = 0;
LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v37 = *(v8 + 2);
      v36 = *(v8 + 3);
      if (v37 >= v36 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v8);
      }

      *(v8 + 2) = v37 + 1;
      v38 = &v8[32 * v37];
      v38[32] = v19;
      *(v38 + 5) = v32;
      *(v38 + 6) = object;
      *(v38 + 14) = v34;
      v38[60] = v25 == 0;
      ++v9;
      if (!--v7)
      {
        goto LABEL_44;
      }
    }

LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_44:

  return v8;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialPhotoStereoAggressor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SpatialPhotoStereoAggressor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor;
  if (!lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialPhotoStereoAggressor, &type metadata for SpatialPhotoStereoAggressor, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor and conformance SpatialPhotoStereoAggressor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType()
{
  result = lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType;
  if (!lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialPhotoStereoAggressor.AggressorType, &type metadata for SpatialPhotoStereoAggressor.AggressorType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialPhotoStereoAggressor.AggressorType and conformance SpatialPhotoStereoAggressor.AggressorType);
  }

  return result;
}

uint64_t Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:handoffType:)(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, unsigned __int8 *a6, double a7)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = *a6;
  REAnimationHandoffDefaultDescEx();
  v12 = v28;
  v13 = v11 >> 6;
  if (v11 >> 6 <= 1)
  {
    v14 = v13 != 0;
    v15 = v11 ^ 1;
    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_11:
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v12 = a2;
      goto LABEL_15;
    }

    __break(1u);
  }

  if (v13 == 3)
  {
    if (!a2)
    {
      v15 = 0;
      v14 = 0;
      goto LABEL_15;
    }

LABEL_9:
    v15 = 0;
    v14 = 2;
    goto LABEL_11;
  }

  if (v11 == 128)
  {
    if (!a2)
    {
      v15 = 0;
      v14 = 2;
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v15 = 0;
  v14 = 3;
  if (a2)
  {
    goto LABEL_11;
  }

LABEL_15:
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  LODWORD(timebaseOut) = v14;
  v16 = a7;
  *(&timebaseOut + 1) = v16;
  v28 = v12;
  v29 = v15 & 1;
  v17 = REAnimationComponentPlay();
  if (!a5)
  {
LABEL_23:
    if ((a4 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    REAnimationComponentPauseAnimation();
    goto LABEL_25;
  }

  v18 = swift_unknownObjectRetain();
  v19 = CFGetTypeID(v18);
  if (v19 != CMClockGetTypeID())
  {
    v23 = CFGetTypeID(a5);
    if (v23 != CMTimebaseGetTypeID())
    {
      swift_unknownObjectRelease();
      if ((a4 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    type metadata accessor for CMTimebaseRef(0);
    v24 = swift_dynamicCastUnknownClassUnconditional();
    REAnimationComponentSetAnimationParentTimebase();

    goto LABEL_23;
  }

  timebaseOut = 0;
  v20 = *MEMORY[0x1E695E480];
  type metadata accessor for CMClockRef(0);
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastUnknownClassUnconditional();
  CMTimebaseCreateWithSourceClock(v20, v21, &timebaseOut);

  if (timebaseOut)
  {
    v22 = timebaseOut;
    REAnimationComponentSetAnimationParentTimebase();
  }

  swift_unknownObjectRelease();

  if (a4)
  {
    goto LABEL_24;
  }

LABEL_25:
  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  return AnimationPlaybackController.init(entity:identifier:withObservation:)(v25, v17, 1);
}

uint64_t Entity.playAnimation(named:transitionDuration:startsPaused:recursive:)(uint64_t a1, uint64_t a2, char a3, char a4, __n128 a5)
{
  v6 = v5;
  v7 = a5.n128_f64[0];
  if (a4)
  {

    if (REEntityGetChildCount() >= 1)
    {
      v10 = 0;
      do
      {
        if (v10 >= REEntityGetChildCount())
        {
          goto LABEL_37;
        }

        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_70;
        }

        v12 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v13 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_39;
          }

          specialized static Entity.entityInfoType(_:)(v12);
          if (v14)
          {
            v5 = (*(v14 + 232))();
            v15 = *(v5 + 16);

            MEMORY[0x1C68F9740](v15, 0);
            *(v5 + 16) = v12;
            MEMORY[0x1C68F9740](v12, v5);

            goto LABEL_12;
          }

          v13 = makeEntity(for:)(v12);
        }

        v5 = v13;
LABEL_12:
        if (v10 >= REEntityGetChildCount())
        {
          goto LABEL_38;
        }

        ++v10;
        v16.n128_f64[0] = v7;
        Entity.playAnimation(named:transitionDuration:startsPaused:recursive:)(a1, a2, a3 & 1, 1, v16);
      }

      while (v10 < REEntityGetChildCount());
    }
  }

  v17 = Entity.availableAnimations.getter(a5);
  v5 = v17;
  v58 = MEMORY[0x1E69E7CC0];
  if (v17 >> 62)
  {
    goto LABEL_40;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v55 = v6;
  if (v18)
  {
LABEL_19:
    v19 = 0;
    v20 = v5 & 0xC000000000000001;
    v21 = v5 & 0xFFFFFFFFFFFFFF8;
    v56 = v5;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x1C68F41F0](v19, v5);
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_34:
          __break(1u);
LABEL_35:
          v26 = v58;
          v6 = v55;
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 >= *(v21 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v18 = __CocoaSet.count.getter();
          v55 = v6;
          if (!v18)
          {
            break;
          }

          goto LABEL_19;
        }

        v22 = *(v5 + 8 * v19 + 32);

        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_34;
        }
      }

      v24 = *(v22 + 32);
      if (v24 && (*(v22 + 24) == a1 ? (v25 = v24 == a2) : (v25 = 0), v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v6 = v20;
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v5 = v56;
      }

      else
      {
      }

      ++v19;
      if (v23 == v18)
      {
        goto LABEL_35;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_42:

  if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
  {
    v27 = *(v26 + 16);
    if (v27)
    {
      goto LABEL_45;
    }

LABEL_64:

    type metadata accessor for AnimationPlaybackController();
    v31 = swift_allocObject();
    *(v31 + 40) = 0;
    swift_weakInit();
    *(v31 + 16) = 0;
    swift_weakAssign();

    *(v31 + 32) = REEntityGetLocalId();
    Hasher.init(_seed:)();
    MEMORY[0x1C68F4C10](*(v6 + 16));
    v53 = Hasher._finalize()();

    *(v31 + 24) = v53;
    return v31;
  }

  v27 = __CocoaSet.count.getter();
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_45:
  if (v27 == 1)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C68F41F0](0, v26);
      goto LABEL_49;
    }

    if (*(v26 + 16))
    {

LABEL_49:

      REAnimationHandoffDefaultDescEx();
      REAnimationComponentGetComponentType();
      REEntityGetOrAddComponentByClass();
      v28 = v7;
      *(&v58 + 1) = v28;
      v29 = REAnimationComponentPlay();
      if (a3)
      {
        REAnimationComponentPauseAnimation();
      }

      type metadata accessor for AnimationPlaybackController();
      swift_allocObject();

      v31 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v30, v29, 1);

      return v31;
    }

    goto LABEL_68;
  }

  v32 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v32 + 120, &v58);
  v33 = v61;
  v34 = v62;
  __swift_project_boxed_opaque_existential_1(&v58, v61);
  (*(v34 + 32))(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(&v58);
  if ((v27 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v35 = swift_slowAlloc();
  if (v27 < 0)
  {
    goto LABEL_69;
  }

  v36 = v35;
  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1C68F41F0](i, v26);
    }

    else
    {
    }

    v39 = *(v38 + 16);

    *(v36 + 8 * i) = v39;
  }

  TimelineGroup = REAssetManagerTimelineAssetCreateTimelineGroup();
  if (TimelineGroup)
  {
    v41 = TimelineGroup;

    REEntityGetName();
    v42 = String.init(cString:)();
    v44 = v43;
    type metadata accessor for AnimationResource();
    v45 = swift_allocObject();
    v45[2] = v41;
    v45[3] = v42;
    v45[4] = v44;
    RERetain();
    REAssetSetSwiftObject();
    REAnimationHandoffDefaultDescEx();
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    LODWORD(v58) = v46;
    v50 = v7;
    *(&v58 + 1) = v50;
    v59 = v47;
    v60 = v48;
    LOBYTE(v61) = v49;
    v51 = REAnimationComponentPlay();
    if (a3)
    {
      REAnimationComponentPauseAnimation();
    }

    type metadata accessor for AnimationPlaybackController();
    swift_allocObject();

    v31 = AnimationPlaybackController.init(entity:identifier:withObservation:)(v52, v51, 1);

    MEMORY[0x1C6902A30](v36, -1, -1);
    return v31;
  }

LABEL_71:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Entity.playAnimation(_:transitionDuration:blendLayerOffset:separateAnimatedValue:startsPaused:clock:)(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, double a6)
{
  v24 = *MEMORY[0x1E69E9840];
  REAnimationHandoffDefaultDescEx();
  if (a2)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v10 = 2;
      goto LABEL_6;
    }

    __break(1u);
  }

  v10 = timebaseOut;
  LODWORD(a2) = v23;
LABEL_6:
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  LODWORD(timebaseOut) = v10;
  v11 = a6;
  *(&timebaseOut + 1) = v11;
  v23 = a2;
  v12 = REAnimationComponentPlay();
  if (!a5)
  {
LABEL_14:
    if ((a4 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    REAnimationComponentPauseAnimation();
    goto LABEL_16;
  }

  v13 = swift_unknownObjectRetain();
  v14 = CFGetTypeID(v13);
  if (v14 != CMClockGetTypeID())
  {
    v18 = CFGetTypeID(a5);
    if (v18 != CMTimebaseGetTypeID())
    {
      swift_unknownObjectRelease();
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    type metadata accessor for CMTimebaseRef(0);
    v19 = swift_dynamicCastUnknownClassUnconditional();
    REAnimationComponentSetAnimationParentTimebase();

    goto LABEL_14;
  }

  timebaseOut = 0;
  v15 = *MEMORY[0x1E695E480];
  type metadata accessor for CMClockRef(0);
  swift_unknownObjectRetain();
  v16 = swift_dynamicCastUnknownClassUnconditional();
  CMTimebaseCreateWithSourceClock(v15, v16, &timebaseOut);

  if (timebaseOut)
  {
    v17 = timebaseOut;
    REAnimationComponentSetAnimationParentTimebase();
  }

  swift_unknownObjectRelease();

  if (a4)
  {
    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  return AnimationPlaybackController.init(entity:identifier:withObservation:)(v20, v12, 1);
}

uint64_t Entity.playAnimation(_:transitionDuration:startsPaused:)(uint64_t a1, char a2, double a3)
{
  REAnimationHandoffDefaultDescEx();
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v4 = REAnimationComponentPlay();
  if (a2)
  {
    REAnimationComponentPauseAnimation();
  }

  type metadata accessor for AnimationPlaybackController();
  swift_allocObject();

  return AnimationPlaybackController.init(entity:identifier:withObservation:)(v5, v4, 1);
}

Swift::Void __swiftcall Entity.stopAllAnimations(recursive:)(Swift::Bool recursive)
{
  REAnimationComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    REAnimationComponentStopAllAnimations();
    RENetworkMarkComponentDirty();
  }

  if (recursive)
  {

    if (REEntityGetChildCount() < 1)
    {
LABEL_18:
    }

    else
    {
      v2 = 0;
      while (v2 < REEntityGetChildCount())
      {
        Child = REEntityGetChild();
        if (!Child)
        {
          goto LABEL_24;
        }

        v4 = Child;
        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          swift_dynamicCastClassUnconditional();
        }

        else
        {
          if (REEntityIsBeingDestroyed())
          {
            goto LABEL_23;
          }

          specialized static Entity.entityInfoType(_:)(v4);
          if (v5)
          {
            v6 = (*(v5 + 232))();
            v7 = *(v6 + 16);

            MEMORY[0x1C68F9740](v7, 0);
            *(v6 + 16) = v4;
            MEMORY[0x1C68F9740](v4, v6);
          }

          else
          {
            makeEntity(for:)(v4);
          }
        }

        if (v2 >= REEntityGetChildCount())
        {
          goto LABEL_22;
        }

        ++v2;
        Entity.stopAllAnimations(recursive:)(1);

        if (v2 >= REEntityGetChildCount())
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

id Entity.defaultAnimationClock.getter(uint64_t a1)
{
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  result = REAnimationComponentCopyDefaultTimebaseRef();
  if (!result)
  {
    specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    swift_unownedRetainStrong();

    ServiceLocator = REEngineGetServiceLocator();
    result = MEMORY[0x1C68FE1E0](ServiceLocator);
    if (result)
    {
      RootTimebase = REAnimationServiceGetRootTimebase();

      return RootTimebase;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t key path setter for Entity.defaultAnimationClock : Entity(uint64_t *a1, uint64_t *a2)
{
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETimebaseComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    type metadata accessor for CMTimebaseRef(0);
    swift_dynamicCastUnknownClassUnconditional();
    RETimebaseComponentAddTimebase();

    return REAnimationComponentSetDefaultTimebaseID();
  }

  return result;
}

uint64_t Entity.defaultAnimationClock.setter(uint64_t a1)
{
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETimebaseComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    type metadata accessor for CMTimebaseRef(0);
    swift_unknownObjectRetain();
    v1 = swift_dynamicCastUnknownClassUnconditional();
    RETimebaseComponentAddTimebase();

    REAnimationComponentSetDefaultTimebaseID();
  }

  return swift_unknownObjectRelease();
}

void (*Entity.defaultAnimationClock.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  REAnimationComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  v5 = REAnimationComponentCopyDefaultTimebaseRef();
  if (v5)
  {
    goto LABEL_7;
  }

  specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  swift_unownedRetainStrong();

  ServiceLocator = REEngineGetServiceLocator();
  result = MEMORY[0x1C68FE1E0](ServiceLocator);
  if (result)
  {
    v5 = REAnimationServiceGetRootTimebase();
LABEL_7:
    *(v4 + 24) = v5;
    return Entity.defaultAnimationClock.modify;
  }

  __break(1u);
  return result;
}

void Entity.defaultAnimationClock.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RETimebaseComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for CMTimebaseRef(0);
      swift_unknownObjectRetain();
      v3 = swift_dynamicCastUnknownClassUnconditional();
      RETimebaseComponentAddTimebase();

      REAnimationComponentSetDefaultTimebaseID();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    REAnimationComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RETimebaseComponentGetComponentType();
    if (REEntityGetComponentByClass())
    {
      type metadata accessor for CMTimebaseRef(0);
      swift_unknownObjectRetain();
      v4 = swift_dynamicCastUnknownClassUnconditional();
      RETimebaseComponentAddTimebase();

      REAnimationComponentSetDefaultTimebaseID();
    }
  }

  swift_unknownObjectRelease();

  free(v2);
}

void AnimationHandoffType.HandoffType.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 6;
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v4 = 4;
    }

    else if (a2 == 128)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }

    MEMORY[0x1C68F4C10](v4);
  }

  else
  {
    MEMORY[0x1C68F4C10](v3 != 0);
    Hasher._combine(_:)(a2 & 1);
  }
}

Swift::Int AnimationHandoffType.HandoffType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  v2 = a1 >> 6;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v3 = 4;
    }

    else if (a1 == 128)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    MEMORY[0x1C68F4C10](v3);
  }

  else
  {
    MEMORY[0x1C68F4C10](v2 != 0);
    Hasher._combine(_:)(a1 & 1);
  }

  return Hasher._finalize()();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AnimationHandoffType.HandoffType.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6563616C706572;
  v3 = 0x65736F706D6F63;
  v4 = 1886352499;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.HandoffType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AnimationHandoffType.HandoffType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.ComposeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.ComposeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.HandoffType.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.HandoffType.StopCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnimationHandoffType.HandoffType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AnimationHandoffType.HandoffType.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AnimationHandoffType.HandoffType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      return v3 == 192;
    }

    else
    {
      v9 = v3 == 128;
      v10 = v3 == 129;
      if (v2 == 128)
      {
        return v9;
      }

      return v10;
    }
  }

  else
  {
    v5 = v3 ^ v2 ^ 1;
    if (v3 >= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if ((v3 & 0xC0) == 0x40)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (!v4)
    {
      v7 = v6;
    }

    return v7 & 1;
  }
}

uint64_t static AnimationHandoffType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 == 192)
      {
        return 1;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v3 == 129)
    {
      return 1;
    }
  }

  else if (v4)
  {
    if ((v3 & 0xC0) == 0x40 && ((v3 ^ v2) & 1) == 0)
    {
      return 1;
    }
  }

  else if (v3 <= 0x3F && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance AnimationHandoffType.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5466666F646E6168 && a2 == 0xEB00000000657079)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnimationHandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnimationHandoffType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AnimationHandoffType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 != 192)
      {
        return 0;
      }
    }

    else
    {
      if (v2 != 128)
      {
        return v3 == 129;
      }

      if (v3 != 128)
      {
        return 0;
      }
    }

    return 1;
  }

  if (v4)
  {
    if ((v3 & 0xC0) != 0x40)
    {
      return 0;
    }
  }

  else if (v3 > 0x3F)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t AnimationHandoffType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AnimationHandoffType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AnimationHandoffType.HandoffType.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();
  v18 = v40;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v18 >> 6) > 1u)
  {
    if (v18 >> 6 == 3)
    {
      v46 = 4;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();
      v21 = v37;
      v22 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v38 + 8))(v21, v39);
      return (*(v15 + 8))(v17, v22);
    }

    else
    {
      v24 = (v15 + 8);
      if (v18 == 128)
      {
        v44 = 2;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();
        v25 = v29;
        v26 = v41;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v30;
        v27 = v31;
      }

      else
      {
        v45 = 3;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();
        v25 = v32;
        v26 = v41;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v33;
        v27 = v34;
      }

      (*(v28 + 8))(v25, v27);
      return (*v24)(v17, v26);
    }
  }

  else if (v18 >> 6)
  {
    v43 = 1;
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();
    v23 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v36 + 8))(v11, v9);
    return (*(v15 + 8))(v17, v23);
  }

  else
  {
    v42 = 0;
    lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();
    v19 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v35 + 8))(v14, v12);
    return (*(v15 + 8))(v17, v19);
  }
}

uint64_t protocol witness for Decodable.init(from:) in conformance AnimationHandoffType.HandoffType@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized AnimationHandoffType.HandoffType.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.CodingKeys, &unk_1F41252E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.CodingKeys, &unk_1F41252E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.CodingKeys, &unk_1F41252E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.CodingKeys, &unk_1F41252E0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.CodingKeys and conformance AnimationHandoffType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType, &type metadata for AnimationHandoffType.HandoffType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable("]1\\-", &type metadata for AnimationHandoffType.HandoffType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType, &type metadata for AnimationHandoffType.HandoffType, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType and conformance AnimationHandoffType.HandoffType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnimationHandoffType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AnimationHandoffType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for AnimationHandoffType.HandoffType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 | 0xFFFFFFFE) + 2 * (v1 >> 6);
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *destructiveInjectEnumTag for AnimationHandoffType.HandoffType(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = (a2 & 1 | ((a2 >> 1) << 6)) + 64;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.CodingKeys, &unk_1F4125370, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.CodingKeys, &unk_1F4125370, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.CodingKeys, &unk_1F4125370, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.CodingKeys, &unk_1F4125370, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys, &unk_1F41254F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys, &unk_1F41254F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys, &unk_1F41254F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.StopCodingKeys, &unk_1F41254D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.StopCodingKeys, &unk_1F41254D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.StopCodingKeys, &unk_1F41254D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ComposeCodingKeys, &unk_1F41254B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ComposeCodingKeys, &unk_1F41254B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ComposeCodingKeys, &unk_1F41254B0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ReplaceCodingKeys, &unk_1F4125490, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ReplaceCodingKeys, &unk_1F4125490, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ReplaceCodingKeys, &unk_1F4125490, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.ReplaceCodingKeys, &unk_1F4125490, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys, &unk_1F4125400, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys, &unk_1F4125400, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys, &unk_1F4125400, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys;
  if (!lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys, &unk_1F4125400, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys);
  }

  return result;
}

uint64_t specialized AnimationHandoffType.HandoffType.init(from:)(void *a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O07DefaultgH10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v46 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v39 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O14StopCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ComposeCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O17ReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O28SnapshotAndReplaceCodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation20AnimationHandoffTypeV0gH0O10CodingKeys33_5168051BD48AB111B9C7274EFA59DC28LLOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.CodingKeys and conformance AnimationHandoffType.HandoffType.CodingKeys();
  v19 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v13;
    v40 = v11;
    v22 = v51;
    v21 = v52;
    v54 = v15;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v55 = v23;
    v56 = v23 + 32;
    v57 = 0;
    v58 = v24;
    v25 = specialized Collection<>.popFirst()();
    if (v25 == 5 || v57 != v58 >> 1)
    {
      v18 = type metadata accessor for DecodingError();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v28 = &type metadata for AnimationHandoffType.HandoffType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v18 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      (*(v54 + 8))(v17, v14);
      swift_unknownObjectRelease();
    }

    else if (v25 <= 1u)
    {
      if (v25)
      {
        v59 = 1;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.ReplaceCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v54;
        v35 = v45;
        v38 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v44 + 8))(v10, v35);
        (*(v34 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v18 = v38 & 1 | 0x40u;
      }

      else
      {
        v59 = 0;
        lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys and conformance AnimationHandoffType.HandoffType.SnapshotAndReplaceCodingKeys();
        v30 = v20;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v31 = v54;
        v36 = v40;
        v37 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v41 + 8))(v30, v36);
        (*(v31 + 8))(v17, v14);
        swift_unknownObjectRelease();
        v18 = v37 & 1;
      }
    }

    else if (v25 == 2)
    {
      v59 = 2;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.ComposeCodingKeys and conformance AnimationHandoffType.HandoffType.ComposeCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v42 + 8))(v22, v43);
      (*(v54 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v18 = 128;
    }

    else if (v25 == 3)
    {
      v59 = 3;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.StopCodingKeys and conformance AnimationHandoffType.HandoffType.StopCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v54;
      (*(v48 + 8))(v21, v47);
      (*(v26 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v18 = 129;
    }

    else
    {
      v59 = 4;
      lazy protocol witness table accessor for type AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys and conformance AnimationHandoffType.HandoffType.DefaultHandoffTypeCodingKeys();
      v32 = v50;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v33 = v54;
      (*(v46 + 8))(v32, v49);
      (*(v33 + 8))(v17, v14);
      swift_unknownObjectRelease();
      v18 = 192;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
  return v18;
}

uint64_t specialized AnimationHandoffType.HandoffType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001C18F0A60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736F706D6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1886352499 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C18F0A80 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t StateMachineController.currentState.getter()
{
  REStateMachineComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    _StringGuts.grow(_:)(37);

    v6 = 0xD000000000000023;
    v7 = 0x80000001C18F0AD0;
    REEntityGetName();
    v4 = String.init(cString:)();
    MEMORY[0x1C68F3410](v4);

LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (!REStateMachineComponentGetCurrentStateName())
  {

    _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012StateMachineD0V_Tt0B5(&v6);

    v1 = v7;
    if (v7)
    {
      v2 = v6;
      if (v6)
      {

        REStateMachineAssetGetInitialStateName();
        v3 = String.init(cString:)();

        outlined consume of StateMachineComponent?(v2, v1);
        return v3;
      }
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v6 = 0xD000000000000023;
      v7 = 0x80000001C18F0AD0;
      REEntityGetName();
      v5 = String.init(cString:)();
      MEMORY[0x1C68F3410](v5);
    }

    goto LABEL_11;
  }

  return String.init(cString:)();
}

uint64_t outlined consume of StateMachineComponent?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t StateMachineController.previousState.getter(uint64_t (*a1)(uint64_t, const char *), uint64_t a2)
{
  REStateMachineComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    result = a1(ComponentByClass, "");
    if (result)
    {
      return String.init(cString:)();
    }
  }

  else
  {
    _StringGuts.grow(_:)(37);

    REEntityGetName();
    v5 = String.init(cString:)();
    MEMORY[0x1C68F3410](v5);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t StateMachineController.ParametersReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  REStateMachineComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    static StateMachineUtils.convert<A>(_:)(a3);
    String.utf8CString.getter();
    HasBoundParameterAtName = REStateMachineComponentHasBoundParameterAtName();

    if (HasBoundParameterAtName)
    {
      String.utf8CString.getter();
      REStateMachineComponentGetBoundParameterIndexAtName();

      REStateMachineComponentGetBoundParameterBindTargetAtIndex();
      v14 = String.init(cString:)();
      static InternalBindPath.targetFromPath(_:)(v14, v15, &v20);

      v16 = v20;
      v17 = v21;
    }

    else
    {
      v16 = 0uLL;
      v17 = -1;
    }

    v20 = v16;
    v21 = v17;

    return StateMachineParameter.init(name:bindTarget:)(a1, a2, &v20, a5, a6, a7);
  }

  else
  {
    _StringGuts.grow(_:)(37);

    REEntityGetName();
    v19 = String.init(cString:)();
    MEMORY[0x1C68F3410](v19);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t StateMachineController.ParameterValuesReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for StateMachineParameter(0, a4, a5, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  v17 = *v6;
  StateMachineController.ParametersReference.subscript.getter(a1, a2, a3, a4, a5, &v20 - v15);
  StateMachineParameter.value(entity:)(v17, v13, v18, a6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t StateMachineController.ParameterValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized StateMachineController.ParameterValuesReference.subscript.setter(a1, a2, a3, a4, a5, a6);
  v8 = *(*(a5 - 8) + 8);

  return v8(a1, a5);
}

void (*StateMachineController.ParameterValuesReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  v13 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(0x48uLL);
  }

  v15 = v14;
  *a1 = v14;
  v14[4] = a6;
  v14[5] = v6;
  v14[2] = a4;
  v14[3] = a5;
  *v14 = a2;
  v14[1] = a3;
  v16 = *(a5 - 8);
  v14[6] = v16;
  v17 = *(v16 + 64);
  if (v13)
  {
    v14[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v14[7] = malloc(*(v16 + 64));
    v18 = malloc(v17);
  }

  v15[8] = v18;
  StateMachineController.ParameterValuesReference.subscript.getter(a2, a3, a4, a5, a6, v18);
  return StateMachineController.ParameterValuesReference.subscript.modify;
}

void StateMachineController.ParameterValuesReference.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[6];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v8 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v5 + 16))((*a1)[7], v4, v6);

    specialized StateMachineController.ParameterValuesReference.subscript.setter(v3, v10, v9, v8, v6, v7);
    v11 = *(v5 + 8);
    v11(v3, v6);
    v11(v4, v6);
  }

  else
  {

    specialized StateMachineController.ParameterValuesReference.subscript.setter(v4, v10, v9, v8, v6, v7);
    (*(v5 + 8))(v4, v6);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t StateMachineController.ParameterBindTargetsReference.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v12 = type metadata accessor for StateMachineParameter(0, a4, a5, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  StateMachineController.ParametersReference.subscript.getter(a1, a2, a3, v7, a5, &v19 - v14);
  v16 = *(v15 + 2);
  v17 = *(v15 + 3);
  LOBYTE(v7) = v15[32];
  outlined copy of BindTarget?(v16, v17, v7);
  result = (*(v13 + 8))(v15, v12);
  *a6 = v16;
  *(a6 + 8) = v17;
  *(a6 + 16) = v7;
  return result;
}

uint64_t StateMachineController.ParameterBindTargetsReference.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = type metadata accessor for StateMachineParameter(0, a5, a6, a4);
  v12 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v14 = &v17 - v13;
  v15 = a1[1];
  v17 = *a1;
  LOBYTE(a1) = *(a1 + 16);
  StateMachineController.ParametersReference.subscript.getter(a2, a3, a4, a5, a6, &v17 - v13);
  outlined consume of BindTarget?(*(v14 + 2), *(v14 + 3), v14[32]);
  *(v14 + 2) = v17;
  *(v14 + 3) = v15;
  v14[32] = a1;
  specialized StateMachineController.ParametersReference.subscript.setter(v14, a2, a3, a4, a5);
  return (*(v12 + 8))(v14, v18);
}

void (*StateMachineController.ParameterBindTargetsReference.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(0x48uLL);
  }

  *a1 = v13;
  v13[7] = a6;
  v13[8] = v6;
  v13[5] = a4;
  v13[6] = a5;
  v13[3] = a2;
  v13[4] = a3;
  StateMachineController.ParameterBindTargetsReference.subscript.getter(a2, a3, a4, a5, a6, v13);
  return StateMachineController.ParameterBindTargetsReference.subscript.modify;
}

void StateMachineController.ParameterBindTargetsReference.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 16);
  v6 = (*a1)[7];
  v8 = (*a1)[5];
  v7 = (*a1)[6];
  v10 = (*a1)[3];
  v9 = (*a1)[4];
  v11[0] = v4;
  v11[1] = v3;
  v12 = v5;
  if (a2)
  {

    outlined copy of BindTarget?(v4, v3, v5);
    StateMachineController.ParameterBindTargetsReference.subscript.setter(v11, v10, v9, v8, v7, v6);
    outlined consume of BindTarget?(*v2, v2[1], *(v2 + 16));
  }

  else
  {

    StateMachineController.ParameterBindTargetsReference.subscript.setter(v11, v10, v9, v8, v7, v6);
  }

  free(v2);
}

uint64_t (*StateMachineController.values.modify(void *a1))()
{
  v3 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v3;

  return StateMachineController.values.modify;
}

double StateMachineController.bindTargets.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t StateMachineController.values.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  if (v2 != v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*StateMachineController.bindTargets.modify(void *a1))()
{
  v3 = *(v1 + 16);
  *a1 = v3;
  a1[1] = v3;

  return Entity.parameters.modify;
}

uint64_t StateMachineController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t specialized StateMachineController.ParametersReference.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1 == a2 && a1[1] == a3;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (a4 != a5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  REStateMachineComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
LABEL_18:
    _StringGuts.grow(_:)(37);

    REEntityGetName();
    v12 = String.init(cString:)();
    MEMORY[0x1C68F3410](v12);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  static StateMachineUtils.convert<A>(_:)(a4);
  v9 = *(a1 + 32);
  if (v9 == 255)
  {
    String.utf8CString.getter();

    REStateMachineComponentRemoveBoundParameterAtName();
  }

  else
  {
    v13 = *(a1 + 1);
    v14 = v9;
    specialized static InternalBindPath.pathFromTarget(_:_:)(&v13, 1);
    String.utf8CString.getter();
    HasBoundParameterAtName = REStateMachineComponentHasBoundParameterAtName();

    if (HasBoundParameterAtName)
    {
      String.utf8CString.getter();

      REStateMachineComponentGetBoundParameterIndexAtName();

      String.utf8CString.getter();

      REStateMachineComponentSetBoundParameterBindTargetAtIndex();
    }

    else
    {

      String.utf8CString.getter();
      String.utf8CString.getter();

      REStateMachineComponentAddBoundParameter();
    }
  }
}

uint64_t specialized StateMachineController.ParameterValuesReference.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for StateMachineParameter(0, a5, a6, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;
  v17 = *v6;
  StateMachineController.ParametersReference.subscript.getter(a2, a3, a4, a5, a6, &v19 - v15);

  StateMachineParameter.setValue(entity:newValue:)(v17, a1, v13);
  return (*(v14 + 8))(v16, v13);
}

void *keypath_setTm_0(void *result, uint64_t a2)
{
  if (*result != *(*a2 + 16))
  {
    __break(1u);
  }

  return result;
}

RealityKit::REAngleF __swiftcall REAngleF.init(degrees:)(Swift::Float degrees)
{
  result.radians = (degrees * 3.1416) / 180.0;
  *v1 = result.radians;
  return result;
}

float REAngleF.degrees.setter(float a1)
{
  result = (a1 * 3.1416) / 180.0;
  *v1 = result;
  return result;
}

float (*REAngleF.degrees.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = (*v1 * 180.0) / 3.1416;
  return REAngleF.degrees.modify;
}

float REAngleF.degrees.modify(uint64_t a1)
{
  result = (*(a1 + 8) * 3.1416) / 180.0;
  **a1 = result;
  return result;
}

RealityKit::RotationOrder_optional __swiftcall RotationOrder.init(rawValue:)(RealityKit::RotationOrder_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value >= RealityKit_RotationOrder_unknownDefault)
  {
    value = RealityKit_RotationOrder_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

double simd_quatf.init(eulerAngles:order:)(unsigned __int8 *a1, __n128 a2)
{
  REConvertIntrinsicEulersToMatrices3x3();
  v3.columns[1] = 0u;
  v3.columns[2] = 0u;
  v3.columns[0] = 0u;
  return simd_quaternion(v3);
}

double simd_quaternion(simd_float3x3 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    v8 = sqrtf(v1 + 1.0);
    v9 = vrecpe_f32(COERCE_UNSIGNED_INT(v8 + v8));
    v10 = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v9));
    v20 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v10, vrecps_f32(COERCE_UNSIGNED_INT(v8 + v8), v10)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      v21 = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      *&v22 = v21 + v21;
      v23 = vrecpe_f32(v22);
      v24 = vmul_f32(v23, vrecps_f32(v22, v23));
      v25.i32[0] = vmul_f32(v24, vrecps_f32(v22, v24)).u32[0];
      v24.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v24.i32[1] = v22;
      v25.i32[1] = 0.25;
      v20 = vmul_f32(v24, v25);
    }

    else
    {
      v4 = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v5 = vrecpe_f32(COERCE_UNSIGNED_INT(v4 + v4));
      v6 = vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v5));
      v20 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(v4 + v4), v6)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    v11 = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    v12.f32[0] = v11 + v11;
    v13 = vrecpe_f32(v12.u32[0]);
    v14 = vmul_f32(v13, vrecps_f32(v12.u32[0], v13));
    v15 = vmul_f32(v14, vrecps_f32(v12.u32[0], v14)).u32[0];
    v12.f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v15;
    v20 = vmul_f32(v12, _D5);
  }

  return *&v20;
}

unint64_t lazy protocol witness table accessor for type RotationOrder and conformance RotationOrder()
{
  result = lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder;
  if (!lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RotationOrder, &type metadata for RotationOrder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RotationOrder and conformance RotationOrder);
  }

  return result;
}

uint64_t specialized static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v59 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 128, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 83, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 127, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideScaleUpAnimation.createVisibilityHideScaleUpAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a4 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a6 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a7);
  v34 = vtrn2q_s32(a7, vtrn1q_s32(a7, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a7);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a7, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, uint64_t a2, _BYTE *a3, char a4, float a5, float a6, float32x4_t a7)
{
  v59 = a1[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 120, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #1 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 96, 0, MEMORY[0x1E69E7CC0]);
      v9 = &outlined read-only object #2 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 53, 0, MEMORY[0x1E69E7CC0]);
    v9 = &outlined read-only object #0 of static __RKVisibilityHideScaleAnimation.createVisibilityHideScaleAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v9, &v61);
  rawValue = v61._rawValue;
  if (!*(v61._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v11 = rawValue[1].u64[0];
  if (v11)
  {
    v12 = &rawValue[3 * v11];
    v57 = *v12;
    v58 = *(v12 - 1);
    v56 = v12[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1, rawValue);
LABEL_9:
  a4 &= 1u;
  v11 = rawValue[1].u64[0];
  v14 = rawValue[1].u64[1];
  v15 = v11 + 1;
  if (v11 >= v14 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v11 + 1, 1, rawValue);
    v15 = v11 + 1;
    rawValue = v55;
  }

  rawValue[1].i64[0] = v15;
  f32 = rawValue[3 * v11 + 2].f32;
  *f32 = v58;
  f32[1] = v57;
  f32[2] = v56;
  v61._rawValue = rawValue;
  v17 = 0.0;
  v18 = 4;
  v19 = v15;
  do
  {
    v20 = rawValue[v18];
    v21 = fabsf(v20.f32[0]);
    if ((LODWORD(v21) & 0x7FFFFF) != 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = v21;
    }

    if ((~LODWORD(v21) & 0x7F800000) != 0)
    {
      v22 = v21;
    }

    if (v21 >= v17)
    {
      v17 = v22;
    }

    v23 = fabsf(v20.f32[1]);
    if (v23 >= v17)
    {
      if ((LODWORD(v23) & 0x7FFFFF) == 0)
      {
        v17 = v23;
      }

      if ((~LODWORD(v23) & 0x7F800000) != 0)
      {
        v17 = v23;
      }
    }

    v24 = fabsf(v20.f32[2]);
    if (v24 >= v17)
    {
      if ((~LODWORD(v24) & 0x7F800000) != 0)
      {
        v17 = v24;
      }

      else if ((LODWORD(v24) & 0x7FFFFF) == 0)
      {
        v17 = v24;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  v25 = 0;
  v26 = a6 / v17;
  v27 = v17 <= 0.0;
  v28 = 1.0;
  if (!v27)
  {
    v28 = v26;
  }

  v29 = vmulq_f32(v59, v59);
  *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
  v29.i32[0] = vadd_f32(*v29.i8, vdup_lane_s32(*v29.i8, 1)).u32[0];
  v30 = vrecpe_f32(v29.u32[0]);
  v31 = vmul_f32(v30, vrecps_f32(v29.u32[0], v30));
  v32 = vmulq_n_f32(vmulq_f32(v59, xmmword_1C1899C90), vmul_f32(v31, vrecps_f32(v29.u32[0], v31)).f32[0]);
  v33 = vnegq_f32(a7);
  v34 = vtrn2q_s32(a7, vtrn1q_s32(a7, v33));
  v35 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a7, v33, 8uLL), *v32.f32, 1), vextq_s8(v34, v34, 8uLL), v32.f32[0]);
  v36 = vrev64q_s32(a7);
  v36.i32[0] = v33.i32[1];
  v36.i32[3] = v33.i32[2];
  v37 = vaddq_f32(v35, vmlaq_laneq_f32(vmulq_laneq_f32(a7, v32, 3), v36, v32, 2));
  v38 = vmulq_f32(v37, xmmword_1C1899C90);
  v39 = vnegq_f32(v38);
  v40 = vtrn2q_s32(v38, vtrn1q_s32(v38, v39));
  v41 = vextq_s8(v40, v40, 8uLL);
  v42 = vextq_s8(v38, v39, 8uLL);
  v43 = vrev64q_s32(v38);
  v43.i32[0] = v39.i32[1];
  v43.i32[3] = v39.i32[2];
  v44 = vdupq_lane_s32(*v37.f32, 0);
  v45 = vdupq_laneq_s32(v37, 2);
  v46 = 4;
  do
  {
    if (v25 > v11)
    {
      __break(1u);
      goto LABEL_40;
    }

    v47 = vsubq_f32(rawValue[v46], rawValue[4]);
    v48 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v28, *v47.f32, 1)), v41, v28 * v47.f32[0]), v43, vmuls_lane_f32(v28, v47, 2));
    v49 = vnegq_f32(v48);
    v50 = vtrn2q_s32(v48, vtrn1q_s32(v48, v49));
    v51 = vrev64q_s32(v48);
    v51.i32[0] = v49.i32[1];
    v51.i32[3] = v49.i32[2];
    v52 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v48, v37, 3), v51, v45), vmlaq_f32(vmulq_lane_f32(vextq_s8(v48, v49, 8uLL), *v37.f32, 1), vextq_s8(v50, v50, 8uLL), v44));
    v52.i32[3] = v13;
    ++v25;
    rawValue[v46] = v52;
    v46 += 3;
  }

  while (v11 + 1 != v25);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v54 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for static Component.__fromCore(_:) in conformance TrueToneComponent@<X0>(_BYTE *a2@<X8>)
{
  result = RETrueToneComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t static TrueToneComponent.__fromCore(_:)@<X0>(_BYTE *a2@<X8>)
{
  result = RETrueToneComponentGetEnabled();
  *a2 = result;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance TrueToneComponent(void *a1)
{
  RETrueToneComponentSetEnabled();

  return RENetworkMarkComponentDirty();
}

uint64_t TrueToneComponent.__toCore(_:)(void *a1)
{
  RETrueToneComponentSetEnabled();

  return RENetworkMarkComponentDirty();
}

double Entity.pins.getter@<D0>(void *a1@<X8>)
{
  *a1 = v1;

  return result;
}

double EntityGeometricPins.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass() && (String.utf8CString.getter(), PinByName = REPinComponentGetPinByName(), , PinByName))
  {
    REPinGetOffsetPose();
    v14 = v8;
    v15 = v9;
    if (REPinIsSkeletalJointPin())
    {
      REPinGetSkeletalJointName();
      v10 = String.init(cString:)();
      v12 = v11;
      RERelease();
      swift_weakInit();
      *(a3 + 48) = v14;
      *(a3 + 64) = v15;
      swift_weakAssign();
      *(a3 + 8) = a1;
      *(a3 + 16) = a2;
      *(a3 + 24) = v10;
      *(a3 + 32) = v12;
    }

    else
    {
      RERelease();
      swift_weakInit();
      *(a3 + 48) = v14;
      *(a3 + 64) = v15;
      swift_weakAssign();
      *(a3 + 8) = a1;
      *(a3 + 16) = a2;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
    }
  }

  else
  {
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

double EntityGeometricPins.set(named:position:orientation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>, float32x4_t a5@<Q1>)
{
  v8 = vmulq_f32(a5, a5);
  v9 = vextq_s8(v8, v8, 8uLL);
  *v8.i8 = vadd_f32(*v8.i8, *v9.f32);
  *v8.i32 = fabsf(sqrtf(vaddv_f32(*v8.i8)) + -1.0);
  v9.i32[0] = 981668463;
  v11 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v8, v9), 0), *&zmmword_1C1887630[48], a5);
  REPoseIdentity();
  String.utf8CString.getter();
  REPinCreateExt();

  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a3 + 48) = a4;
  *(a3 + 64) = v11;
  swift_weakAssign();
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;

  return result;
}

double EntityGeometricPins.set(named:position:orientation:relativeTo:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>, float32x4_t a6@<Q1>)
{
  v7 = a6;
  a6.i32[0] = a5.n128_i32[2];
  v11 = transformPose(_:from:to:)(a3, *v6, a5.n128_f64[0], *a6.i64, v7);
  v11.n128_u32[2] = v12;
  v18 = v11;
  v14 = vmulq_f32(v13, v13);
  v15 = vextq_s8(v14, v14, 8uLL);
  *v14.i8 = vadd_f32(*v14.i8, *v15.f32);
  *v14.i32 = fabsf(sqrtf(vaddv_f32(*v14.i8)) + -1.0);
  v15.i32[0] = 981668463;
  v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v14, v15), 0), *&zmmword_1C1887630[48], v13);
  REPoseIdentity();
  String.utf8CString.getter();
  REPinCreateExt();

  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a4 + 48) = v18;
  *(a4 + 64) = v17;
  swift_weakAssign();
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;

  return result;
}

double EntityGeometricPins.set(named:skeletalJointName:position:orientation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q0>, float32x4_t a7@<Q1>)
{
  v12 = vmulq_f32(a7, a7);
  v13 = vextq_s8(v12, v12, 8uLL);
  *v12.i8 = vadd_f32(*v12.i8, *v13.f32);
  *v12.i32 = fabsf(sqrtf(vaddv_f32(*v12.i8)) + -1.0);
  v13.i32[0] = 981668463;
  v15 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v12, v13), 0), *&zmmword_1C1887630[48], a7);
  REPoseIdentity();
  String.utf8CString.getter();
  String.utf8CString.getter();
  REPinCreateExt();

  REPinComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  REPinComponentAddPin();
  RERelease();
  swift_weakInit();
  *(a5 + 48) = a6;
  *(a5 + 64) = v15;
  swift_weakAssign();
  *(a5 + 8) = a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;

  return result;
}

Swift::Void __swiftcall EntityGeometricPins.remove(named:)(Swift::String named)
{
  REPinComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    String.utf8CString.getter();
    REPinComponentRemovePin();
  }
}

uint64_t EntityGeometricPins.count.getter()
{
  REPinComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {

    return REPinComponentGetPinCount();
  }

  return result;
}

void EntityGeometricPins.Iterator.next()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  *(v1 + 16) = v4;
  if (v4 >= *(v1 + 8))
  {
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  REPinComponentGetComponentType();
  if (!REEntityGetComponentByClass())
  {
    goto LABEL_9;
  }

  REPinComponentGetPinNameAtIndex();
  v5 = String.init(cString:)();
  v7 = v6;
  REPinComponentGetPinOffsetPoseAtIndex();
  v13 = v8;
  v14 = v9;
  if (REPinComponentIsSkeletalJointPinAtIndex())
  {
    REPinComponentGetSkeletalJointNameAtIndex();
    v10 = String.init(cString:)();
    v12 = v11;
    swift_weakInit();
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    swift_weakAssign();
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12;
  }

  else
  {
    swift_weakInit();
    *(a1 + 48) = v13;
    *(a1 + 64) = v14;
    swift_weakAssign();
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }
}

uint64_t EntityGeometricPins.makeIterator()@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  REPinComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    result = REPinComponentGetPinCount();
  }

  *a1 = v3;
  a1[1] = result;
  a1[2] = -1;
  return result;
}

unint64_t lazy protocol witness table accessor for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator()
{
  result = lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator;
  if (!lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EntityGeometricPins.Iterator, &type metadata for EntityGeometricPins.Iterator, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EntityGeometricPins.Iterator and conformance EntityGeometricPins.Iterator);
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance EntityGeometricPins@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  REPinComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    ComponentByClass = REPinComponentGetPinCount();
  }

  *a1 = v3;
  a1[1] = ComponentByClass;
  a1[2] = -1;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance EntityGeometricPins()
{
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(*v0);

  return v1;
}

RealityFoundation::PhysicsSimulationComponent::SolverIterations __swiftcall PhysicsSimulationComponent.SolverIterations.init(positionIterations:velocityIterations:)(Swift::Int positionIterations, Swift::Int velocityIterations)
{
  *v2 = positionIterations;
  v2[1] = velocityIterations;
  result.velocityIterations = velocityIterations;
  result.positionIterations = positionIterations;
  return result;
}

__n128 PhysicsSimulationComponent.solverIterations.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 PhysicsSimulationComponent.solverIterations.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double PhysicsSimulationComponent.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 6;
  *a1 = xmmword_1C18D6870;
  *(a1 + 16) = xmmword_1C18D6880;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}