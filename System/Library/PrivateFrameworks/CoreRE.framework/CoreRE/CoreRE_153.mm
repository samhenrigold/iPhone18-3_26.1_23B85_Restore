uint64_t re::internal::mergeVertexPositions(re::internal *this, re::GeomMesh *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexUV");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexNormal");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexTangent");
  re::internal::GeomBaseMesh::replaceVertexAttributeWithFaceVaryingAttribute((this + 16), "vertexBitangent");
  v90 = 1;
  v91 = 0;
  v93 = xmmword_1E30A0560;
  v94 = 0;
  re::computeAABB(&v97, this);
  v6 = vsubq_f32(v98, v97);
  v6.i32[3] = 0;
  v7 = vmaxnmq_f32(v6, 0);
  v8 = vmulq_f32(v7, v7);
  v92 = (sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)) * 0.5) * 0.000001;
  v89 = 0;
  v86[1] = 0;
  v87 = 0;
  v86[0] = 0;
  v88 = 0;
  v9 = *(this + 4);
  v10 = re::mergeVertices(this, v86, &v90);
  v85 = 0;
  v82[1] = 0;
  v83 = 0;
  v82[0] = 0;
  v84 = 0;
  re::DynamicArray<re::Vector3<float>>::resize(v82, v9 - v10);
  v81 = 0;
  v78[1] = 0;
  v79 = 0;
  v78[0] = 0;
  v80 = 0;
  re::DynamicArray<unsigned int>::resize(v78, *(this + 4), &re::kInvalidMeshIndex);
  v11 = re::GeomMesh::accessVertexPositions(this);
  v13 = *(this + 4);
  if (v13)
  {
    v14 = v12;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v2 = v87;
      if (v87 <= v15)
      {
        break;
      }

      v4 = *(v89 + 4 * v15);
      v2 = v79;
      if (v79 <= v4)
      {
        goto LABEL_70;
      }

      if (*(v81 + 4 * v4) == -1)
      {
        if (v4 >= v12)
        {
          goto LABEL_90;
        }

        v2 = v16;
        v3 = v83;
        if (v83 <= v16)
        {
LABEL_94:
          *v107 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v97 = 0u;
          v68 = MEMORY[0x1E69E9C10];
          v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v114[0] = 136315906;
          *&v114[1] = "operator[]";
          LOWORD(v114[3]) = 1024;
          if (v69)
          {
            v70 = 3;
          }

          else
          {
            v70 = 2;
          }

          *(&v114[3] + 2) = 789;
          HIWORD(v114[4]) = 2048;
          *&v114[5] = v2;
          LOWORD(v114[7]) = 2048;
          *(&v114[7] + 2) = v3;
          _os_log_send_and_compose_impl(v70, v107, &v97, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v74, v75);
          _os_crash_msg();
          __break(1u);
LABEL_98:
          *v107 = 0;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v97 = 0u;
          v71 = MEMORY[0x1E69E9C10];
          v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v114[0] = 136315906;
          *&v114[1] = "operator[]";
          LOWORD(v114[3]) = 1024;
          if (v72)
          {
            v73 = 3;
          }

          else
          {
            v73 = 2;
          }

          *(&v114[3] + 2) = 789;
          HIWORD(v114[4]) = 2048;
          *&v114[5] = v4;
          LOWORD(v114[7]) = 2048;
          *(&v114[7] + 2) = v2;
          _os_log_send_and_compose_impl(v73, v107, &v97, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v74, v75);
          _os_crash_msg();
          __break(1u);
        }

        *(v85 + 16 * v16) = *(v11 + 16 * v4);
        v2 = v79;
        if (v79 <= v4)
        {
          goto LABEL_98;
        }

        *(v81 + 4 * v4) = v16++;
        v13 = *(this + 4);
      }

      if (++v15 >= v13)
      {
        goto LABEL_11;
      }
    }

LABEL_66:
    *v107 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v114[0] = 136315906;
    *&v114[1] = "operator[]";
    LOWORD(v114[3]) = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    *(&v114[3] + 2) = 789;
    HIWORD(v114[4]) = 2048;
    *&v114[5] = v15;
    LOWORD(v114[7]) = 2048;
    *(&v114[7] + 2) = v2;
    _os_log_send_and_compose_impl(v49, v107, &v97, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v74, v75);
    _os_crash_msg();
    __break(1u);
LABEL_70:
    *v107 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v114[0] = 136315906;
    *&v114[1] = "operator[]";
    LOWORD(v114[3]) = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    *(&v114[3] + 2) = 789;
    HIWORD(v114[4]) = 2048;
    *&v114[5] = v4;
    LOWORD(v114[7]) = 2048;
    *(&v114[7] + 2) = v2;
    _os_log_send_and_compose_impl(v52, v107, &v97, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v74, v75);
    _os_crash_msg();
    __break(1u);
    goto LABEL_74;
  }

LABEL_11:
  v76 = __PAIR64__(v9, v10);
  v77 = v9 - v10;
  v17 = *(this + 10);
  v4 = &v97;
  re::GeomMeshBuilder::GeomMeshBuilder(&v97, this);
  if (!v17)
  {
    goto LABEL_37;
  }

  v10 = 0;
  v14 = v99;
  do
  {
    if (v14 <= v10)
    {
      goto LABEL_82;
    }

    v18 = 0;
    v19 = (v100 + 16 * v10);
    v96 = *v19;
    v2 = HIDWORD(v96);
    if (HIDWORD(v96) == -1)
    {
      v20 = 3;
    }

    else
    {
      v20 = 4;
    }

    v3 = v87;
    v21 = v89;
    v15 = v79;
    v22 = v81;
    do
    {
      v23 = *(&v96 + v18);
      if (v3 <= v23)
      {
        v95 = 0;
        v115 = 0u;
        v116 = 0u;
        memset(v114, 0, sizeof(v114));
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        v108 = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = v23;
        v112 = 2048;
        v113 = v3;
        _os_log_send_and_compose_impl(v43, &v95, v114, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
        _os_crash_msg();
        __break(1u);
LABEL_62:
        v95 = 0;
        v2 = v107;
        v115 = 0u;
        v116 = 0u;
        memset(v114, 0, sizeof(v114));
        v44 = MEMORY[0x1E69E9C10];
        v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v107 = 136315906;
        *&v107[4] = "operator[]";
        v108 = 1024;
        if (v45)
        {
          v46 = 3;
        }

        else
        {
          v46 = 2;
        }

        v109 = 789;
        v110 = 2048;
        v111 = v23;
        v112 = 2048;
        v113 = v15;
        _os_log_send_and_compose_impl(v46, &v95, v114, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
        _os_crash_msg();
        __break(1u);
        goto LABEL_66;
      }

      v23 = *(v21 + 4 * v23);
      if (v15 <= v23)
      {
        goto LABEL_62;
      }

      *(&v96 + v18++) = *(v22 + 4 * v23);
    }

    while (v20 != v18);
    if (*v19 != -1)
    {
      v24 = *(v19 + 3);
      v25 = v2 == -1 || HIDWORD(v96) == -1;
      v26 = v25;
      if ((((v24 != -1) ^ v26) & 1) == 0)
      {
        v27 = v106;
        if (v106)
        {
          v28 = 0;
          do
          {
            v29 = re::internal::GeomAttributeContainer::attributeByIndex(&v105, v28);
            re::internal::accessFaceVaryingAttributeSubmesh(v29, v30);
            ++v28;
          }

          while (v27 != v28);
          v14 = v99;
        }
      }
    }

    if (v14 <= v10)
    {
      goto LABEL_86;
    }

    v32 = DWORD2(v96);
    v31 = HIDWORD(v96);
    if (v2 == -1)
    {
      v31 = -1;
    }

    v33 = v100 + 16 * v10;
    *v33 = v96;
    *(v33 + 8) = v32;
    *(v33 + 12) = v31;
    ++v10;
  }

  while (v10 != v17);
LABEL_37:
  v3 = v77;
  v97.i32[2] = v77;
  v102 = v77;
  if (v103)
  {
    v34 = v104;
    v35 = 8 * v103;
    do
    {
      v36 = *v34++;
      (*(*v36 + 80))(v36, v102);
      v35 -= 8;
    }

    while (v35);
  }

  v37 = re::GeomMesh::operator=(this, &v97.i64[1]);
  re::GeomMesh::setName(v37, v97.i64[0]);
  re::GeomMesh::freeName(&v97);
  v38 = re::GeomMesh::modifyVertexPositions(this);
  if (v9 != v76)
  {
    v2 = 0;
    v14 = v39;
    while (1)
    {
      v15 = v83;
      if (v83 <= v2)
      {
        break;
      }

      if (v2 == v39)
      {
        goto LABEL_78;
      }

      *(v38 + 16 * v2) = *(v85 + 16 * v2);
      if (++v2 == v77)
      {
        goto LABEL_45;
      }
    }

LABEL_74:
    v95 = 0;
    v115 = 0u;
    v116 = 0u;
    memset(v114, 0, sizeof(v114));
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v107 = 136315906;
    *&v107[4] = "operator[]";
    v108 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v109 = 789;
    v110 = 2048;
    v111 = v2;
    v112 = 2048;
    v113 = v15;
    _os_log_send_and_compose_impl(v55, &v95, v114, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v95 = 0;
    v115 = 0u;
    v116 = 0u;
    memset(v114, 0, sizeof(v114));
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v107 = 136315906;
    *&v107[4] = "operator[]";
    v108 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v109 = 621;
    v110 = 2048;
    v111 = v14;
    v112 = 2048;
    v113 = v14;
    _os_log_send_and_compose_impl(v58, &v95, v114, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v95 = 0;
    v115 = 0u;
    v116 = 0u;
    memset(v114, 0, sizeof(v114));
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v107 = 136315906;
    *&v107[4] = "operator[]";
    v108 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v109 = 797;
    v110 = 2048;
    v111 = v10;
    v112 = 2048;
    v113 = v14;
    _os_log_send_and_compose_impl(v61, &v95, v114, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
    _os_crash_msg();
    __break(1u);
LABEL_86:
    v95 = 0;
    v115 = 0u;
    v116 = 0u;
    memset(v114, 0, sizeof(v114));
    v62 = MEMORY[0x1E69E9C10];
    v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v107 = 136315906;
    *&v107[4] = "operator[]";
    v108 = 1024;
    if (v63)
    {
      v64 = 3;
    }

    else
    {
      v64 = 2;
    }

    v109 = 789;
    v110 = 2048;
    v111 = v10;
    v112 = 2048;
    v113 = v14;
    _os_log_send_and_compose_impl(v64, &v95, v114, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v107, 38, v74, v76);
    _os_crash_msg();
    __break(1u);
LABEL_90:
    *v107 = 0;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v65 = MEMORY[0x1E69E9C10];
    v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v114[0] = 136315906;
    *&v114[1] = "operator[]";
    LOWORD(v114[3]) = 1024;
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 2;
    }

    *(&v114[3] + 2) = 613;
    HIWORD(v114[4]) = 2048;
    *&v114[5] = v4;
    LOWORD(v114[7]) = 2048;
    *(&v114[7] + 2) = v14;
    _os_log_send_and_compose_impl(v67, v107, &v97, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v114, 38, v74, v75);
    _os_crash_msg();
    __break(1u);
    goto LABEL_94;
  }

LABEL_45:
  re::GeomMesh::freeName(&v97);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v100 + 8));
  if (v98.i64[0] && v100)
  {
    (*(*v98.i64[0] + 40))();
  }

  if (v78[0] && v81)
  {
    (*(*v78[0] + 40))();
  }

  if (v82[0] && v85)
  {
    (*(*v82[0] + 40))();
  }

  result = v86[0];
  if (v86[0])
  {
    if (v89)
    {
      return (*(*v86[0] + 40))();
    }
  }

  return result;
}

uint64_t re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(uint64_t result, uint64_t a2, float a3)
{
  v3 = 0;
  v33[3] = *MEMORY[0x1E69E9840];
  *result = a2;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 0u;
  __asm { FMOV            V1.2S, #1.0 }

  v9 = vdup_n_s32(0x3FC3AB4Bu);
  do
  {
    v10 = &_MergedGlobals_421[v3 / 4];
    v11 = re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(float,re::Vector2<float>)::kSmoothCornerPoints[v3 / 8];
    *v10 = vrev64_s32(vsub_f32(_D1, re::internal::UIKitStyleBezierArc::UIKitStyleBezierArc(float,re::Vector2<float>)::kCircularPoints[v3 / 8]));
    v10[10] = vrev64_s32(vsub_f32(v9, v11));
    v3 += 8;
  }

  while (v3 != 80);
  v12 = 0;
  v13 = fminf(fmaxf(*&a2, 0.0), 1.0);
  v14 = fminf(fmaxf(*(&a2 + 1), 0.0), 1.0);
  v15 = &unk_1EE1B6C0C;
  do
  {
    v16 = v15[20];
    v17 = *v15;
    *&v32[v12 * 4 + 4] = (v13 * v15[19]) + ((1.0 - v13) * *(v15 - 1));
    v31[v12++] = (v14 * v16) + ((1.0 - v14) * v17);
    v15 += 2;
  }

  while (v12 != 10);
  v18 = 1.5287;
  v19 = 1.5287;
  if (*&a2 < 1.0)
  {
    v19 = 1.0;
    if (*&a2 > 0.0)
    {
      v19 = (*&a2 * 0.52866) + 1.0;
    }
  }

  if (*(&a2 + 1) < 1.0)
  {
    v18 = 1.0;
    if (*(&a2 + 1) > 0.0)
    {
      v18 = (*(&a2 + 1) * 0.52866) + 1.0;
    }
  }

  v20 = 0;
  v21 = v19 * a3;
  v22 = v18 * a3;
  v23 = -a3;
  v24 = v32;
  do
  {
    *&v25 = v21 + (v23 * v31[v20]);
    v26 = *v24--;
    *(&v25 + 1) = v22 + (v23 * v26);
    *(result + 8 + 8 * v20++) = v25;
  }

  while (v20 != 5);
  v27 = 0;
  v28 = v33;
  do
  {
    v29 = *v28--;
    *&v30 = v21 + (v23 * v29);
    *(&v30 + 1) = v22 + (v23 * *(v33 + v27 + 1));
    *(result + 48 + 8 * v27++) = v30;
  }

  while (v27 != 5);
  return result;
}

float32x2_t re::internal::UIKitStyleBezierArc::eval(re::internal::UIKitStyleBezierArc *this, float a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (a2 >= 0.333333333)
  {
    if (v2 >= 0.666666667)
    {
      v4 = (v2 + -0.666666667) * 3.0;
      v3 = 6;
    }

    else
    {
      v4 = (v2 + -0.333333333) * 3.0;
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
    v4 = a2 * 3.0;
  }

  v5 = 0;
  v6 = 1.0 - v4;
  v7.f32[0] = v6 * v6;
  v16 = v6 * (v6 * v6);
  v7.f32[1] = 1.0 - v4;
  __asm { FMOV            V1.2S, #3.0 }

  v13 = vmul_f32(v7, _D1);
  v7.f32[0] = v4;
  v7.f32[1] = v4 * v4;
  v17 = vmul_f32(v7, v13);
  v18 = v4 * (v4 * v4);
  v14 = this + 8 * v3 + 8;
  result = 0;
  do
  {
    result = vadd_f32(result, vmul_n_f32(*&v14[8 * v5], *(&v16 + v5)));
    ++v5;
  }

  while (v5 != 4);
  return result;
}

float32x2_t re::internal::UIKitStyleBezierArc::evalFirstDerivative(re::internal::UIKitStyleBezierArc *this, float a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (a2 >= 0.333333333)
  {
    if (v2 >= 0.666666667)
    {
      v4 = (v2 + -0.666666667) * 3.0;
      v3 = 6;
    }

    else
    {
      v4 = (v2 + -0.333333333) * 3.0;
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
    v4 = a2 * 3.0;
  }

  v5 = 0;
  v6 = 1.0 - v4;
  v9[0] = (v6 * v6) * -3.0;
  v9[1] = ((v6 * v6) * 3.0) + (((1.0 - v4) * -6.0) * v4);
  v9[2] = (v4 * ((1.0 - v4) * 6.0)) + ((v4 * v4) * -3.0);
  v9[3] = (v4 * v4) * 3.0;
  v7 = this + 8 * v3 + 8;
  result = 0;
  do
  {
    result = vadd_f32(result, vmul_n_f32(*&v7[8 * v5], v9[v5]));
    ++v5;
  }

  while (v5 != 4);
  return result;
}

uint64_t *re::internal::mergePlanarRegions@<X0>(re::GeomMesh *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v412;
  v10 = v380;
  v11 = &v351;
  v420 = *MEMORY[0x1E69E9840];
  v12 = cosf((*a2 * 3.1416) / 180.0);
  v328 = a2;
  v13 = a2[1];
  v351 = a1;
  v352 = v12;
  v353 = v13;
  v355 = 0;
  v356 = 0;
  v354 = 0;
  v357 = 0;
  v367 = 0;
  *__src = 0u;
  v359 = 0u;
  v361 = 0u;
  v362 = 0u;
  v360 = 0;
  v363 = 0;
  v364 = 0u;
  v365 = 0u;
  v366 = 0;
  memset(v385, 0, 28);
  *(&v387 + 1) = 0;
  v385[2] = 0u;
  v386 = 0u;
  LODWORD(v387) = 0;
  v331 = a1;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v385, a1);
  v349 = 0;
  v346 = 0;
  v347 = 0;
  v345 = 0;
  LODWORD(v348) = 0;
  v14 = *&v385[1];
  if (LODWORD(v385[1]))
  {
    v15 = 0;
    v332 = 0;
    FirstBitSet = &v376[24];
    while (1)
    {
      if (v15)
      {
        v16 = v15 - 1;
        if (v14 <= v15 - 1)
        {
          goto LABEL_508;
        }

        v17 = *(*&v385[2] + 4 * v16);
      }

      else
      {
        v17 = 0;
      }

      if (v14 <= v15)
      {
        goto LABEL_500;
      }

      v342 = v15;
      v18 = *(*&v385[2] + 4 * v15);
      re::DynamicArray<float>::resize(&v345, v18 - v17);
      v19 = v18 - v17;
      if (v18 > v17)
      {
        break;
      }

LABEL_16:
      *v382 = 0;
      v22 = v349;
      v23 = v347;
      __dst.i64[0] = 0;
      v371.i64[0] = 0;
      v370 = 0uLL;
      v371.i32[2] = 0;
      *&v376[8] = 0;
      *v376 = 0;
      *&v376[16] = 1;
      *&v376[24] = 0;
      *&v376[32] = 0;
      v24 = *(v351 + 4);
      if ((v24 & 0x3F) != 0)
      {
        v25 = (v24 >> 6) + 1;
      }

      else
      {
        v25 = v24 >> 6;
      }

      v378 = *(v351 + 4);
      v415.i64[0] = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(v376, v25, &v415);
      v26 = *&v376[8];
      if (*&v376[8])
      {
        v27 = *&v376[32];
        if (v376[16])
        {
          v27 = &v376[24];
        }

        do
        {
          *v27++ = 0;
          v28 = *&v376[32];
          if (v376[16])
          {
            v28 = &v376[24];
          }
        }

        while (v27 != &v28[8 * v26]);
      }

      v11 = re::GeomMesh::accessVertexPositions(v351);
      v3 = v29;
      v5 = 4 * v23;
      if (v23)
      {
        v333 = v23;
        v335 = 4 * v23;
        v9 = 0;
        v16 = 0;
        v14 = v5;
        v337 = v22;
        do
        {
          FirstBitSet = *v22;
          v5 = *(v351 + 5);
          if (v5 <= FirstBitSet)
          {
            goto LABEL_369;
          }

          v30 = (*(v351 + 7) + 16 * FirstBitSet);
          FirstBitSet = *v30;
          v6 = v30[1];
          v5 = v30[2];
          v10 = v30[3];
          re::DynamicBitset<unsigned long long,64ul>::setBit(v376, FirstBitSet);
          re::DynamicBitset<unsigned long long,64ul>::setBit(v376, v6);
          re::DynamicBitset<unsigned long long,64ul>::setBit(v376, v5);
          if (FirstBitSet >= v3)
          {
            goto LABEL_373;
          }

          if (v6 >= v3)
          {
            goto LABEL_377;
          }

          if (v5 >= v3)
          {
            goto LABEL_381;
          }

          if (v10 == -1)
          {
            v33 = *(v11 + 16 * FirstBitSet);
            v31 = vsubq_f32(*(v11 + 16 * v6), v33);
            v32 = vsubq_f32(*(v11 + 16 * v5), v33);
          }

          else
          {
            re::DynamicBitset<unsigned long long,64ul>::setBit(v376, v10);
            if (v10 >= v3)
            {
              goto LABEL_409;
            }

            v31 = vsubq_f32(*(v11 + 16 * v6), *(v11 + 16 * v10));
            v32 = vsubq_f32(*(v11 + 16 * v5), *(v11 + 16 * FirstBitSet));
          }

          v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v31)), v32, vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL));
          v35 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
          v36 = vmulq_f32(v34, v34);
          if ((v36.f32[1] + (v36.f32[2] + v36.f32[0])) > 0.0)
          {
            v16 = v35.u64[1];
            v9 = v35.i64[0];
          }

          ++v22;
          v14 -= 4;
        }

        while (v14);
        v37.i64[0] = v9;
        v37.i64[1] = v16;
        v339 = v37;
        v10 = v380;
        v9 = v412;
        v5 = v335;
        v22 = v337;
        v23 = v333;
      }

      else
      {
        v339 = 0u;
      }

      v371.i64[0] = 0;
      v371.i32[2] = 1;
      v38 = *&v376[32];
      if (v376[16])
      {
        v38 = &v376[24];
      }

      v39 = *&v376[8];
      if ((*&v376[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
      {
        v40 = 0;
        while (1)
        {
          v42 = *v38++;
          v41 = v42;
          if (v42)
          {
            break;
          }

          v40 -= 64;
          if (!--v39)
          {
            goto LABEL_51;
          }
        }

        v43 = __clz(__rbit64(v41));
        if (v43 + 1 != v40)
        {
          FirstBitSet = v43 - v40;
          while (v3 > FirstBitSet)
          {
            re::DynamicArray<re::Vector3<float>>::add(&v370, (v11 + 16 * FirstBitSet));
            FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v376, FirstBitSet + 1);
            if (FirstBitSet == -1)
            {
              goto LABEL_51;
            }
          }

          *v412 = 0;
          v418 = 0u;
          v419 = 0u;
          v416 = 0u;
          v417 = 0u;
          v415 = 0u;
          v251 = MEMORY[0x1E69E9C10];
          v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *&v380[4] = "operator[]";
          *&v380[12] = 1024;
          if (v252)
          {
            v253 = 3;
          }

          else
          {
            v253 = 2;
          }

          *&v380[14] = 613;
          *&v380[18] = 2048;
          *&v380[20] = FirstBitSet;
          *&v380[28] = 2048;
          *&v380[30] = v3;
          _os_log_send_and_compose_impl(v253, v412, &v415, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_436:
          v369 = 0;
          v418 = 0u;
          v419 = 0u;
          v416 = 0u;
          v417 = 0u;
          v415 = 0u;
          v254 = MEMORY[0x1E69E9C10];
          v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *&v412[4] = "operator[]";
          *&v412[12] = 1024;
          if (v255)
          {
            v256 = 3;
          }

          else
          {
            v256 = 2;
          }

          *&v412[14] = 613;
          *&v412[18] = 2048;
          *&v412[20] = v10;
          v413 = 2048;
          *v414 = FirstBitSet;
          _os_log_send_and_compose_impl(v256, &v369, &v415, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_440:
          v369 = 0;
          v418 = 0u;
          v419 = 0u;
          v416 = 0u;
          v417 = 0u;
          v415 = 0u;
          v73 = MEMORY[0x1E69E9C10];
          v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *&v412[4] = "operator[]";
          *&v412[12] = 1024;
          if (v257)
          {
            v258 = 3;
          }

          else
          {
            v258 = 2;
          }

          *&v412[14] = 613;
          *&v412[18] = 2048;
          *&v412[20] = v10;
          v413 = 2048;
          *v414 = FirstBitSet;
          _os_log_send_and_compose_impl(v258, &v369, &v415, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_444:
          *v380 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v16 = MEMORY[0x1E69E9C10];
          v259 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v370.i32[0] = 136315906;
          *(v11 + 196) = "operator[]";
          v370.i16[6] = 1024;
          if (v259)
          {
            v260 = 3;
          }

          else
          {
            v260 = 2;
          }

          *(v11 + 206) = 789;
          v371.i16[1] = 2048;
          *(v11 + 212) = v73;
          v371.i16[6] = 2048;
          *(v11 + 222) = v73;
          _os_log_send_and_compose_impl(v260, v380, &v415, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v370, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_448:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v261 = MEMORY[0x1E69E9C10];
          v262 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v262)
          {
            v263 = 3;
          }

          else
          {
            v263 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = v16;
          *&v380[28] = 2048;
          *(v10 + 30) = v16;
          _os_log_send_and_compose_impl(v263, v412, &v415, 80, &dword_1E1C61000, v261, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_452:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v264 = MEMORY[0x1E69E9C10];
          v265 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v265)
          {
            v266 = 3;
          }

          else
          {
            v266 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = FirstBitSet;
          *&v380[28] = 2048;
          *(v10 + 30) = v14;
          _os_log_send_and_compose_impl(v266, v412, &v415, 80, &dword_1E1C61000, v264, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_456:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v267 = MEMORY[0x1E69E9C10];
          v268 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v268)
          {
            v269 = 3;
          }

          else
          {
            v269 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = v11;
          *&v380[28] = 2048;
          *(v10 + 30) = v11;
          _os_log_send_and_compose_impl(v269, v412, &v415, 80, &dword_1E1C61000, v267, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_460:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v270 = MEMORY[0x1E69E9C10];
          v271 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v271)
          {
            v272 = 3;
          }

          else
          {
            v272 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = v16;
          *&v380[28] = 2048;
          *(v10 + 30) = v14;
          _os_log_send_and_compose_impl(v272, v412, &v415, 80, &dword_1E1C61000, v270, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_464:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v273 = MEMORY[0x1E69E9C10];
          v274 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v274)
          {
            v275 = 3;
          }

          else
          {
            v275 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = v14;
          *&v380[28] = 2048;
          *(v10 + 30) = v11;
          _os_log_send_and_compose_impl(v275, v412, &v415, 80, &dword_1E1C61000, v273, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_468:
          *v412 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v276 = MEMORY[0x1E69E9C10];
          v277 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v380 = 136315906;
          *(v10 + 4) = "operator[]";
          *&v380[12] = 1024;
          if (v277)
          {
            v278 = 3;
          }

          else
          {
            v278 = 2;
          }

          *(v10 + 14) = 789;
          *&v380[18] = 2048;
          *(v10 + 20) = v16;
          *&v380[28] = 2048;
          *(v10 + 30) = FirstBitSet;
          _os_log_send_and_compose_impl(v278, v412, &v415, 80, &dword_1E1C61000, v276, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_472:
          v369 = 0;
          v3 = v380;
          v386 = 0u;
          v387 = 0u;
          memset(v385, 0, sizeof(v385));
          v279 = MEMORY[0x1E69E9C10];
          v280 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v382 = 136315906;
          *&v382[4] = "operator[]";
          *&v382[12] = 1024;
          if (v280)
          {
            v281 = 3;
          }

          else
          {
            v281 = 2;
          }

          *&v382[14] = 789;
          *&v382[18] = 2048;
          *&v382[20] = v16;
          v383 = 2048;
          *v384 = v14;
          _os_log_send_and_compose_impl(v281, &v369, v385, 80, &dword_1E1C61000, v279, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_476:
          v369 = 0;
          v16 = v380;
          v386 = 0u;
          v387 = 0u;
          memset(v385, 0, sizeof(v385));
          v282 = MEMORY[0x1E69E9C10];
          v283 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v382 = 136315906;
          *&v382[4] = "operator[]";
          *&v382[12] = 1024;
          if (v283)
          {
            v284 = 3;
          }

          else
          {
            v284 = 2;
          }

          *&v382[14] = 613;
          *&v382[18] = 2048;
          *&v382[20] = v14;
          v383 = 2048;
          *v384 = FirstBitSet;
          _os_log_send_and_compose_impl(v284, &v369, v385, 80, &dword_1E1C61000, v282, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_480:
          v369 = 0;
          v386 = 0u;
          v387 = 0u;
          memset(v385, 0, sizeof(v385));
          v285 = MEMORY[0x1E69E9C10];
          v286 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v382 = 136315906;
          *&v382[4] = "operator[]";
          *&v382[12] = 1024;
          if (v286)
          {
            v287 = 3;
          }

          else
          {
            v287 = 2;
          }

          *&v382[14] = 789;
          *&v382[18] = 2048;
          *&v382[20] = v16;
          v383 = 2048;
          *v384 = v6;
          _os_log_send_and_compose_impl(v287, &v369, v385, 80, &dword_1E1C61000, v285, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_484:
          v369 = 0;
          v14 = v380;
          v386 = 0u;
          v387 = 0u;
          memset(v385, 0, sizeof(v385));
          v288 = MEMORY[0x1E69E9C10];
          v289 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v382 = 136315906;
          *&v382[4] = "operator[]";
          *&v382[12] = 1024;
          if (v289)
          {
            v290 = 3;
          }

          else
          {
            v290 = 2;
          }

          *&v382[14] = 789;
          *&v382[18] = 2048;
          *&v382[20] = v16;
          v383 = 2048;
          *v384 = v16;
          _os_log_send_and_compose_impl(v290, &v369, v385, 80, &dword_1E1C61000, v288, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_488:
          *v382 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v291 = MEMORY[0x1E69E9C10];
          v292 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v412[12] = 1024;
          if (v292)
          {
            v293 = 3;
          }

          else
          {
            v293 = 2;
          }

          *(v9 + 14) = 789;
          *&v412[18] = 2048;
          *(v9 + 20) = v14;
          v413 = 2048;
          *(v9 + 30) = v14;
          _os_log_send_and_compose_impl(v293, v382, &v415, 80, &dword_1E1C61000, v291, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_492:
          *v382 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v294 = MEMORY[0x1E69E9C10];
          v295 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v412[12] = 1024;
          if (v295)
          {
            v296 = 3;
          }

          else
          {
            v296 = 2;
          }

          *(v9 + 14) = 789;
          *&v412[18] = 2048;
          *(v9 + 20) = v5;
          v413 = 2048;
          *(v9 + 30) = v16;
          _os_log_send_and_compose_impl(v296, v382, &v415, 80, &dword_1E1C61000, v294, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_496:
          *v382 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v297 = MEMORY[0x1E69E9C10];
          v298 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v412[12] = 1024;
          if (v298)
          {
            v299 = 3;
          }

          else
          {
            v299 = 2;
          }

          *(v9 + 14) = 789;
          *&v412[18] = 2048;
          *(v9 + 20) = FirstBitSet;
          v413 = 2048;
          *(v9 + 30) = FirstBitSet;
          _os_log_send_and_compose_impl(v299, v382, &v415, 80, &dword_1E1C61000, v297, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_500:
          v370.i64[0] = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v300 = MEMORY[0x1E69E9C10];
          v16 = v15;
          v301 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v376 = 136315906;
          *&v376[4] = "operator[]";
          *&v376[12] = 1024;
          if (v301)
          {
            v302 = 3;
          }

          else
          {
            v302 = 2;
          }

          *&v376[14] = 797;
          *&v376[18] = 2048;
          *&v376[20] = v16;
          *&v376[28] = 2048;
          *&v376[30] = v14;
          _os_log_send_and_compose_impl(v302, &v370, &v415, 80, &dword_1E1C61000, v300, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_504:
          *v382 = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v303 = MEMORY[0x1E69E9C10];
          v304 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *(v9 + 4) = "operator[]";
          *&v412[12] = 1024;
          if (v304)
          {
            v305 = 3;
          }

          else
          {
            v305 = 2;
          }

          *(v9 + 14) = 789;
          *&v412[18] = 2048;
          *(v9 + 20) = v6;
          v413 = 2048;
          *(v9 + 30) = v16;
          _os_log_send_and_compose_impl(v305, v382, &v415, 80, &dword_1E1C61000, v303, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_508:
          v370.i64[0] = 0;
          *(v9 + 6) = 0u;
          *(v9 + 7) = 0u;
          *(v9 + 4) = 0u;
          *(v9 + 5) = 0u;
          *(v9 + 3) = 0u;
          v306 = MEMORY[0x1E69E9C10];
          v307 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v376 = 136315906;
          *&v376[4] = "operator[]";
          *&v376[12] = 1024;
          if (v307)
          {
            v308 = 3;
          }

          else
          {
            v308 = 2;
          }

          *&v376[14] = 797;
          *&v376[18] = 2048;
          *&v376[20] = v16;
          *&v376[28] = 2048;
          *&v376[30] = v14;
          _os_log_send_and_compose_impl(v308, &v370, &v415, 80, &dword_1E1C61000, v306, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
          _os_crash_msg();
          __break(1u);
LABEL_512:
          v370.i64[0] = 0;
          v418 = 0u;
          v419 = 0u;
          v416 = 0u;
          v417 = 0u;
          v415 = 0u;
          v309 = MEMORY[0x1E69E9C10];
          v310 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v385[0]) = 136315906;
          *(v385 + 4) = "operator[]";
          WORD6(v385[0]) = 1024;
          if (v310)
          {
            v311 = 3;
          }

          else
          {
            v311 = 2;
          }

          *(v385 + 14) = 797;
          WORD1(v385[1]) = 2048;
          *(&v385[1] + 4) = v3;
          WORD6(v385[1]) = 2048;
          *(&v385[1] + 14) = v16;
          _os_log_send_and_compose_impl(v311, &v370, &v415, 80, &dword_1E1C61000, v309, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v385, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_516:
          v369 = 0;
          v3 = v412;
          v418 = 0u;
          v419 = 0u;
          v416 = 0u;
          v417 = 0u;
          v415 = 0u;
          v312 = MEMORY[0x1E69E9C10];
          v313 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v412 = 136315906;
          *&v412[4] = "operator[]";
          *&v412[12] = 1024;
          if (v313)
          {
            v314 = 3;
          }

          else
          {
            v314 = 2;
          }

          *&v412[14] = 797;
          *&v412[18] = 2048;
          *&v412[20] = v16;
          v413 = 2048;
          *v414 = v14;
          _os_log_send_and_compose_impl(v314, &v369, &v415, 80, &dword_1E1C61000, v312, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
LABEL_520:
          v369 = 0;
          v386 = 0u;
          v387 = 0u;
          memset(v385, 0, sizeof(v385));
          v315 = MEMORY[0x1E69E9C10];
          v316 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v382 = 136315906;
          *&v382[4] = "operator[]";
          *&v382[12] = 1024;
          if (v316)
          {
            v317 = 3;
          }

          else
          {
            v317 = 2;
          }

          *&v382[14] = 797;
          *&v382[18] = 2048;
          *&v382[20] = v3;
          v383 = 2048;
          *v384 = v11;
          _os_log_send_and_compose_impl(v317, &v369, v385, 80, &dword_1E1C61000, v315, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
          _os_crash_msg();
          __break(1u);
          goto LABEL_524;
        }
      }

LABEL_51:
      if (*v376 && (v376[16] & 1) == 0)
      {
        (*(**v376 + 40))();
      }

      *v380 = 0u;
      v415 = 0u;
      re::computeBestFitPlane(__dst.i64[0], v371.u64[0], v415.i64, v380);
      v44 = *v380;
      v45 = vmulq_f32(v339, *v380);
      v11 = &v351;
      if ((v45.f32[2] + vaddv_f32(*v45.f32)) < 0.0)
      {
        v44 = vnegq_f32(*v380);
        *v380 = v44;
      }

      v46 = vmulq_f32(v44, v415);
      v44.f32[3] = -(v46.f32[2] + vaddv_f32(*v46.f32));
      FirstBitSet = &v376[24];
      v340 = v44;
      if (v371.i64[0])
      {
        v47 = __dst.i64[0];
        while (1)
        {
          v48.i64[0] = *v47;
          v48.i32[2] = *(v47 + 8);
          v48.i32[3] = 1.0;
          v49 = vmulq_f32(v44, v48);
          if (vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL))) > v353)
          {
            break;
          }

          v47 += 16;
          if (v47 == __dst.i64[0] + 16 * v371.i64[0])
          {
            goto LABEL_60;
          }
        }

        v65 = 0;
      }

      else
      {
LABEL_60:
        v11 = v351;
        v50 = re::GeomMesh::accessVertexPositions(v351);
        *v382 = 0;
        if (v23)
        {
          v3 = v51;
          FirstBitSet = *(v11 + 40);
          v52 = 0.0;
          v53.i64[0] = 0x3F0000003F000000;
          v53.i64[1] = 0x3F0000003F000000;
          do
          {
            v16 = *v22;
            if (FirstBitSet <= v16)
            {
              goto LABEL_393;
            }

            v54 = (*(v11 + 56) + 16 * v16);
            v16 = *v54;
            if (v16 >= v51)
            {
              goto LABEL_397;
            }

            v14 = v54[1];
            if (v14 >= v51)
            {
              goto LABEL_401;
            }

            v55 = v5;
            v5 = v54[2];
            if (v5 >= v51)
            {
              goto LABEL_405;
            }

            v6 = v54[3];
            if (v6 == -1)
            {
              v56 = *(v50 + 16 * v16);
              v57 = *(v50 + 16 * v5);
              v58 = vsubq_f32(*(v50 + 16 * v14), v56);
            }

            else
            {
              if (v6 >= v51)
              {
                goto LABEL_413;
              }

              v56 = *(v50 + 16 * v16);
              v57 = *(v50 + 16 * v5);
              v58 = vsubq_f32(*(v50 + 16 * v14), *(v50 + 16 * v6));
            }

            v59 = vsubq_f32(v57, v56);
            v60 = vmulq_f32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), vnegq_f32(v58)), v59, vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL)), v53);
            v61 = vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL);
            v62 = vmulq_f32(v60, v60);
            v63 = sqrtf(v62.f32[1] + (v62.f32[2] + v62.f32[0]));
            if (v63 > 0.0)
            {
              v61 = vmulq_n_f32(v61, 1.0 / v63);
            }

            v64 = vmulq_f32(v61, *v380);
            if ((v64.f32[2] + vaddv_f32(*v64.f32)) > 0.0)
            {
              v52 = v63 + v52;
              *v382 = v52;
            }

            ++v22;
            v5 = v55 - 4;
          }

          while (v55 != 4);
          v65 = 1;
          v11 = &v351;
          FirstBitSet = &v376[24];
        }

        else
        {
          v65 = 1;
          v11 = &v351;
        }
      }

      if (v370.i64[0] && __dst.i64[0])
      {
        (*(*v370.i64[0] + 40))();
      }

      if (v65)
      {
        v332 += v347;
        v415.i32[0] = v332;
        re::DynamicArray<int>::add((&v361 + 8), &v415);
        if (v347)
        {
          v66 = v349;
          v67 = 4 * v347;
          do
          {
            v68 = *v66++;
            v415.i32[0] = v68;
            re::DynamicArray<int>::add((&v364 + 8), &v415);
            v67 -= 4;
          }

          while (v67);
        }

        re::DynamicArray<float>::add(&__src[1], v382);
        v3 = v356 + 1;
        if (v356 >= v355 && v355 < v3)
        {
          if (v354)
          {
            v71 = 8;
            if (v355)
            {
              v71 = 2 * v355;
            }

            if (v71 <= v3)
            {
              v72 = v356 + 1;
            }

            else
            {
              v72 = v71;
            }

            re::DynamicArray<re::Vector4<float>>::setCapacity(&v354, v72);
          }

          else
          {
            re::DynamicArray<re::Vector4<float>>::setCapacity(&v354, v3);
            ++v357;
          }
        }

        *(__src[0] + v356) = v340;
        v356 = (v356 + 1);
        ++v357;
      }

      v15 = v342 + 1;
      v14 = *&v385[1];
      if (v342 + 1 >= LODWORD(v385[1]))
      {
        goto LABEL_101;
      }
    }

    v16 = 0;
    v14 = *(&v386 + 1);
    v3 = v347;
    v20 = v349;
    if (*(&v386 + 1) <= v17)
    {
      v11 = v17;
    }

    else
    {
      v11 = *(&v386 + 1);
    }

    v21 = *(&v387 + 1) + 4 * v17;
    while (v11 - v17 != v16)
    {
      if (v3 <= v16)
      {
        goto LABEL_389;
      }

      v20[v16] = *(v21 + 4 * v16);
      if (v19 == ++v16)
      {
        goto LABEL_16;
      }
    }

LABEL_385:
    v370.i64[0] = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v219 = MEMORY[0x1E69E9C10];
    v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v220)
    {
      v221 = 3;
    }

    else
    {
      v221 = 2;
    }

    *&v376[14] = 797;
    *&v376[18] = 2048;
    *&v376[20] = v11;
    *&v376[28] = 2048;
    *&v376[30] = v14;
    _os_log_send_and_compose_impl(v221, &v370, &v415, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_389:
    v370.i64[0] = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v222 = MEMORY[0x1E69E9C10];
    v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v223)
    {
      v224 = 3;
    }

    else
    {
      v224 = 2;
    }

    *&v376[14] = 789;
    *&v376[18] = 2048;
    *&v376[20] = v16;
    *&v376[28] = 2048;
    *&v376[30] = v3;
    _os_log_send_and_compose_impl(v224, &v370, &v415, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_393:
    *v412 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v225 = MEMORY[0x1E69E9C10];
    v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v226)
    {
      v227 = 3;
    }

    else
    {
      v227 = 2;
    }

    *&v376[14] = 797;
    *&v376[18] = 2048;
    *&v376[20] = v16;
    *&v376[28] = 2048;
    *&v376[30] = FirstBitSet;
    _os_log_send_and_compose_impl(v227, v412, &v415, 80, &dword_1E1C61000, v225, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_397:
    *v412 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v228 = MEMORY[0x1E69E9C10];
    v229 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v229)
    {
      v230 = 3;
    }

    else
    {
      v230 = 2;
    }

    *&v376[14] = 613;
    *&v376[18] = 2048;
    *&v376[20] = v16;
    *&v376[28] = 2048;
    *&v376[30] = v3;
    _os_log_send_and_compose_impl(v230, v412, &v415, 80, &dword_1E1C61000, v228, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_401:
    *v412 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v231 = MEMORY[0x1E69E9C10];
    v232 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v232)
    {
      v233 = 3;
    }

    else
    {
      v233 = 2;
    }

    *&v376[14] = 613;
    *&v376[18] = 2048;
    *&v376[20] = v14;
    *&v376[28] = 2048;
    *&v376[30] = v3;
    _os_log_send_and_compose_impl(v233, v412, &v415, 80, &dword_1E1C61000, v231, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_405:
    *v412 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v234 = MEMORY[0x1E69E9C10];
    v235 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v235)
    {
      v236 = 3;
    }

    else
    {
      v236 = 2;
    }

    *&v376[14] = 613;
    *&v376[18] = 2048;
    *&v376[20] = v5;
    *&v376[28] = 2048;
    *&v376[30] = v3;
    _os_log_send_and_compose_impl(v236, v412, &v415, 80, &dword_1E1C61000, v234, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_409:
    *v412 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v237 = MEMORY[0x1E69E9C10];
    v238 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v380 = 136315906;
    *&v380[4] = "operator[]";
    *&v380[12] = 1024;
    if (v238)
    {
      v239 = 3;
    }

    else
    {
      v239 = 2;
    }

    *&v380[14] = 613;
    *&v380[18] = 2048;
    *&v380[20] = v10;
    *&v380[28] = 2048;
    *&v380[30] = v3;
    _os_log_send_and_compose_impl(v239, v412, &v415, 80, &dword_1E1C61000, v237, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_413:
    *v412 = 0;
    *(v9 + 6) = 0u;
    *(v9 + 7) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 5) = 0u;
    *(v9 + 3) = 0u;
    v240 = MEMORY[0x1E69E9C10];
    v241 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v376 = 136315906;
    *&v376[4] = "operator[]";
    *&v376[12] = 1024;
    if (v241)
    {
      v242 = 3;
    }

    else
    {
      v242 = 2;
    }

    *&v376[14] = 613;
    *&v376[18] = 2048;
    *&v376[20] = v6;
    *&v376[28] = 2048;
    *&v376[30] = v3;
    _os_log_send_and_compose_impl(v242, v412, &v415, 80, &dword_1E1C61000, v240, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
    goto LABEL_417;
  }

LABEL_101:
  v3 = v356;
  *&v376[32] = 0;
  memset(v376, 0, 28);
  re::DynamicArray<float>::resize(v376, v356);
  v73 = *&v376[16];
  if (v3)
  {
    v74 = 0;
    v75 = *&v376[32];
    while (v73 != v74)
    {
      *(v75 + 4 * v74) = v74;
      if (v3 == ++v74)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_444;
  }

LABEL_105:
  v415.i64[0] = &v351;
  v76 = 126 - 2 * __clz(v73);
  if (v73)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  re::DynamicArray<float>::DynamicArray(&v370, &__src[1]);
  if (v3)
  {
    v78 = 0;
    v16 = *&v376[16];
    v79 = *&v376[32];
    v14 = v371.i64[0];
    v80 = __dst.i64[0];
    v11 = *(&v359 + 1);
    v81 = v361;
    while (v16 != v78)
    {
      FirstBitSet = *(v79 + 4 * v78);
      if (v14 <= FirstBitSet)
      {
        goto LABEL_452;
      }

      if (v11 == v78)
      {
        goto LABEL_456;
      }

      *(v81 + 4 * v78++) = *(v80 + 4 * FirstBitSet);
      if (v3 == v78)
      {
        goto LABEL_114;
      }
    }

    goto LABEL_448;
  }

LABEL_114:
  if (v370.i64[0] && __dst.i64[0])
  {
    (*(*v370.i64[0] + 40))();
  }

  __dst.i64[0] = 0;
  v371.i64[0] = 0;
  v370 = 0uLL;
  v371.i32[2] = 0;
  if (v354)
  {
    v370.i64[0] = v354;
    re::DynamicArray<re::Vector4<float>>::setCapacity(&v370, v356);
    ++v371.i32[2];
    v11 = v356;
    if (v356 >= v371.i64[0])
    {
      re::DynamicArray<re::Vector4<float>>::setCapacity(&v370, v356);
      v82 = v371.i64[0];
      FirstBitSet = __dst.i64[0];
      if (v371.i64[0])
      {
        v5 = 16 * v371.i64[0];
        memmove(__dst.i64[0], __src[0], 16 * v371.i64[0]);
      }

      else
      {
        v5 = 0;
      }

      memcpy((FirstBitSet + 16 * v82), __src[0] + v5, 16 * (v11 - v82));
      if (!v3)
      {
        goto LABEL_134;
      }

      goto LABEL_129;
    }

    if (v356)
    {
      memmove(__dst.i64[0], __src[0], 16 * v356);
      if (!v3)
      {
        goto LABEL_134;
      }

LABEL_129:
      v16 = 0;
      v83 = __dst.i64[0];
      while (1)
      {
        v14 = *&v376[16];
        if (*&v376[16] <= v16)
        {
          goto LABEL_460;
        }

        v14 = *(*&v376[32] + 4 * v16);
        if (v11 <= v14)
        {
          goto LABEL_464;
        }

        FirstBitSet = v356;
        if (v356 <= v16)
        {
          goto LABEL_468;
        }

        *(__src[0] + v16++) = *(v83 + 16 * v14);
        if (v16 == v3)
        {
          goto LABEL_134;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (v3)
  {
    goto LABEL_129;
  }

LABEL_134:
  if (v370.i64[0] && __dst.i64[0])
  {
    (*(*v370.i64[0] + 40))();
  }

  re::DynamicArray<float>::DynamicArray(&v370, &v361 + 1);
  re::DynamicArray<float>::DynamicArray(v380, &v364 + 1);
  if (v3)
  {
    v84 = 0;
    v85 = 0;
    v14 = *&v376[16];
    v86 = *&v376[32];
    v16 = v371.i64[0];
    v87 = __dst.i64[0];
    v11 = *&v380[16];
    FirstBitSet = *(&v362 + 1);
    v88 = v364;
    while (1)
    {
      if (v84 == v14)
      {
        goto LABEL_488;
      }

      v5 = *(v86 + 4 * v84);
      if (v5)
      {
        v6 = (v5 - 1);
        if (v16 <= v6)
        {
          goto LABEL_504;
        }

        v89 = *(v87 + 4 * v6);
      }

      else
      {
        v89 = 0;
      }

      if (v16 <= v5)
      {
        goto LABEL_492;
      }

      v90 = *(v87 + 4 * v5) - v89;
      if (v90)
      {
        break;
      }

LABEL_150:
      if (v84 == FirstBitSet)
      {
        goto LABEL_496;
      }

      v85 += v90;
      *(v88 + 4 * v84) = v85;
      v84 = (v84 + 1);
      if (v84 == v3)
      {
        goto LABEL_152;
      }
    }

    v91 = *&v380[32];
    v92 = v85;
    v93 = *(v87 + 4 * v5) - v89;
    v5 = *(&v365 + 1);
    v94 = v367;
    while (1)
    {
      v6 = v89;
      if (v11 <= v89)
      {
        break;
      }

      v10 = v92;
      if (v5 <= v92)
      {
        goto LABEL_365;
      }

      *(v94 + 4 * v92++) = *(v91 + 4 * v89++);
      if (!--v93)
      {
        goto LABEL_150;
      }
    }

    *v382 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v201 = MEMORY[0x1E69E9C10];
    v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v412 = 136315906;
    *&v412[4] = "operator[]";
    *&v412[12] = 1024;
    if (v202)
    {
      v203 = 3;
    }

    else
    {
      v203 = 2;
    }

    *&v412[14] = 789;
    *&v412[18] = 2048;
    *&v412[20] = v6;
    v413 = 2048;
    *v414 = v11;
    _os_log_send_and_compose_impl(v203, v382, &v415, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_365:
    *v382 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v204 = MEMORY[0x1E69E9C10];
    v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v412 = 136315906;
    *&v412[4] = "operator[]";
    *&v412[12] = 1024;
    if (v205)
    {
      v206 = 3;
    }

    else
    {
      v206 = 2;
    }

    *&v412[14] = 789;
    *&v412[18] = 2048;
    *&v412[20] = v10;
    v413 = 2048;
    *v414 = v5;
    _os_log_send_and_compose_impl(v206, v382, &v415, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_369:
    *v412 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v207 = MEMORY[0x1E69E9C10];
    v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v380 = 136315906;
    *&v380[4] = "operator[]";
    *&v380[12] = 1024;
    if (v208)
    {
      v209 = 3;
    }

    else
    {
      v209 = 2;
    }

    *&v380[14] = 797;
    *&v380[18] = 2048;
    *&v380[20] = FirstBitSet;
    *&v380[28] = 2048;
    *&v380[30] = v5;
    _os_log_send_and_compose_impl(v209, v412, &v415, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_373:
    *v412 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v210 = MEMORY[0x1E69E9C10];
    v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v380 = 136315906;
    *&v380[4] = "operator[]";
    *&v380[12] = 1024;
    if (v211)
    {
      v212 = 3;
    }

    else
    {
      v212 = 2;
    }

    *&v380[14] = 613;
    *&v380[18] = 2048;
    *&v380[20] = FirstBitSet;
    *&v380[28] = 2048;
    *&v380[30] = v3;
    _os_log_send_and_compose_impl(v212, v412, &v415, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_377:
    *v412 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v213 = MEMORY[0x1E69E9C10];
    v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v380 = 136315906;
    *&v380[4] = "operator[]";
    *&v380[12] = 1024;
    if (v214)
    {
      v215 = 3;
    }

    else
    {
      v215 = 2;
    }

    *&v380[14] = 613;
    *&v380[18] = 2048;
    *&v380[20] = v6;
    *&v380[28] = 2048;
    *&v380[30] = v3;
    _os_log_send_and_compose_impl(v215, v412, &v415, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
LABEL_381:
    *v412 = 0;
    v418 = 0u;
    v419 = 0u;
    v416 = 0u;
    v417 = 0u;
    v415 = 0u;
    v216 = MEMORY[0x1E69E9C10];
    v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v380 = 136315906;
    *&v380[4] = "operator[]";
    *&v380[12] = 1024;
    if (v217)
    {
      v218 = 3;
    }

    else
    {
      v218 = 2;
    }

    *&v380[14] = 613;
    *&v380[18] = 2048;
    *&v380[20] = v5;
    *&v380[28] = 2048;
    *&v380[30] = v3;
    _os_log_send_and_compose_impl(v218, v412, &v415, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v380, 38, v324, v325);
    _os_crash_msg();
    __break(1u);
    goto LABEL_385;
  }

LABEL_152:
  if (*v380 && *&v380[32])
  {
    (*(**v380 + 40))();
  }

  v11 = v331;
  if (v370.i64[0] && __dst.i64[0])
  {
    (*(*v370.i64[0] + 40))();
  }

  if (*v376 && *&v376[32])
  {
    (*(**v376 + 40))();
  }

  v14 = &v351;
  if (v345 && v349)
  {
    (*(*v345 + 40))();
  }

  if (*(&v385[2] + 1))
  {
    if (*(&v387 + 1))
    {
      (*(**(&v385[2] + 1) + 40))();
    }

    *(&v387 + 1) = 0;
    v386 = 0uLL;
    *(&v385[2] + 1) = 0;
    LODWORD(v387) = v387 + 1;
  }

  if (*&v385[0] && *&v385[2])
  {
    (*(**&v385[0] + 40))();
  }

  if (!v356)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v331, a3);
    goto LABEL_345;
  }

  v334 = v356;
  v345 = 0;
  v346 = 0;
  LODWORD(v347) = 1;
  v348 = 0;
  v349 = 0;
  if ((v356 & 0x3F) != 0)
  {
    v95 = (v356 >> 6) + 1;
  }

  else
  {
    v95 = v356 >> 6;
  }

  v327 = v356;
  v350 = v356;
  v415.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v345, v95, &v415);
  v96 = v346;
  if (v346)
  {
    v97 = v349;
    if (v347)
    {
      v97 = &v348;
    }

    do
    {
      *v97 = 0;
      v97 += 2;
      v98 = v349;
      if (v347)
      {
        v98 = &v348;
      }
    }

    while (v97 != &v98[2 * v96]);
  }

  *&v380[8] = 0;
  *v380 = 0;
  *&v380[16] = 1;
  *&v380[32] = 0;
  *&v380[24] = 0;
  v99 = *(v331 + 5);
  if ((v99 & 0x3F) != 0)
  {
    v100 = (v99 >> 6) + 1;
  }

  else
  {
    v100 = v99 >> 6;
  }

  v381 = v99;
  v415.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v380, v100, &v415);
  if (*(v331 + 10))
  {
    v101 = 0;
    do
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v380, v101++);
    }

    while (v101 < *(v331 + 10));
  }

  v102 = v328[1];
  v16 = v376;
  bzero(v376, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v376[16], 1uLL);
  ++v377;
  re::internal::GeomAttributeManager::GeomAttributeManager(v379);
  re::internal::GeomAttributeManager::addAttribute(v379, "vertexPosition", 1, 7);
  if (v334 == 1)
  {
    goto LABEL_334;
  }

  v3 = 0;
  HIDWORD(v324) = 0;
  v326 = &v380[24];
  v104 = v102 * v102;
  v11 = v385;
  v9 = v382;
  v336 = 1;
  do
  {
    v16 = *(&v359 + 1);
    if (*(&v359 + 1) <= v3)
    {
      goto LABEL_512;
    }

    if (*(v361 + 4 * v3) <= v104)
    {
      break;
    }

    if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v345, v3))
    {
      v6 = v3 + 1;
      goto LABEL_325;
    }

    re::DynamicBitset<unsigned long long,64ul>::setBit(&v345, v3);
    v375 = 0;
    v370 = 0u;
    v371 = 0u;
    __dst = 0u;
    v373 = 0u;
    memset(v374, 0, 28);
    re::GeomMesh::GeomMesh(&v415, 0);
    *&v414[2] = 0;
    memset(v412, 0, sizeof(v412));
    re::internal::extractMeshFromFaceSubset(v351, *&v414[2], *&v412[16], 0, v385);
    re::GeomMesh::operator=(&v415, v385);
    re::GeomMesh::~GeomMesh(v385);
    if (*v412 && *&v414[2])
    {
      (*(**v412 + 40))();
    }

    *&v414[2] = 0;
    memset(v412, 0, sizeof(v412));
    re::GeomConnectivityManifold::GeomConnectivityManifold(v385);
    re::GeomConnectivityManifold::buildIfManifold(&v415, v385, v105);
    *&v384[2] = 0;
    memset(v382, 0, sizeof(v382));
    re::findBoundaryLoops(v385, v382, v412);
    v107 = *&v382[16];
    v14 = v334;
    if (*v382 && *&v384[2])
    {
      (*(**v382 + 40))();
    }

    if (v409)
    {
      v108 = v411;
      if ((v411 & 1) == 0)
      {
        (*(*v409 + 40))();
        v108 = v411;
      }

      v409 = 0;
      v410 = 0;
      v411 = (v108 | 1) + 2;
    }

    if (v404)
    {
      if (v408)
      {
        (*(*v404 + 40))();
      }

      v408 = 0;
      v405 = 0;
      v406 = 0;
      v404 = 0;
      ++v407;
    }

    if (v399)
    {
      if (v403)
      {
        (*(*v399 + 40))();
      }

      v403 = 0;
      v400 = 0;
      v401 = 0;
      v399 = 0;
      ++v402;
    }

    if (v394)
    {
      if (v398)
      {
        (*(*v394 + 40))();
      }

      v398 = 0;
      v395 = 0;
      v396 = 0;
      v394 = 0;
      ++v397;
    }

    if (v389)
    {
      if (v393)
      {
        (*(*v389 + 40))();
      }

      v393 = 0;
      v390 = 0;
      v391 = 0;
      v389 = 0;
      ++v392;
    }

    if (v386)
    {
      if (v388)
      {
        (*(*v386 + 40))();
      }

      v388 = 0;
      *&v387 = 0;
      v386 = 0uLL;
      ++DWORD2(v387);
    }

    if (*(&v385[0] + 1) && *(&v385[2] + 1))
    {
      (*(**(&v385[0] + 1) + 40))();
    }

    if (v107 == 1)
    {
      v11 = v356;
      if (v356 <= v3)
      {
        goto LABEL_520;
      }

      v109 = (__src[0] + 16 * v3);
      v106.i64[0] = *v109;
      v110 = v109[2];
      if (fabsf(v110) >= 0.00001)
      {
        v111.i32[0] = 0;
        v111.f32[1] = -v110;
        v111.i64[1] = v106.u32[1];
      }

      else
      {
        v111 = vtrn1q_s32(COERCE_UNSIGNED_INT(-*&v106.i32[1]), v106);
      }

      v106.i32[2] = v109[2];
      v113 = vmulq_f32(v111, v111);
      *&v114 = v113.f32[2] + vaddv_f32(*v113.f32);
      *v113.f32 = vrsqrte_f32(v114);
      *v113.f32 = vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32)));
      v115 = vmulq_n_f32(v111, vmul_f32(*v113.f32, vrsqrts_f32(v114, vmul_f32(*v113.f32, *v113.f32))).f32[0]);
      v116 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v115, v115), v115, 0xCuLL), vnegq_f32(v106)), v115, vextq_s8(vuzp1q_s32(v106, v106), v106, 0xCuLL));
      v371 = v115;
      __dst = vextq_s8(vuzp1q_s32(v116, v116), v116, 0xCuLL);
      v118.i32[2] = v119;
      v370 = vmulq_n_f32(v118, COERCE_FLOAT(v117 ^ 0x80000000));
      v5 = re::GeomMesh::accessVertexPositions(&v415);
      FirstBitSet = v120;
      v121 = *&v412[16];
      v11 = *&v412[16];
      re::DynamicArray<unsigned long>::resize(v374, *&v412[16]);
      if (v121)
      {
        v16 = 0;
        do
        {
          v14 = *&v412[16];
          if (*&v412[16] <= v16)
          {
            goto LABEL_472;
          }

          v14 = *(*&v414[2] + 4 * v16);
          if (v14 >= FirstBitSet)
          {
            goto LABEL_476;
          }

          v6 = v374[2];
          if (v374[2] <= v16)
          {
            goto LABEL_480;
          }

          v122 = vsubq_f32(*(v5 + 16 * v14), v370);
          v123 = vmulq_f32(v371, v122);
          v124 = vmulq_f32(v122, __dst);
          v375[v16++] = vadd_f32(vzip1_s32(*&vextq_s8(v123, v123, 8uLL), *&vextq_s8(v124, v124, 8uLL)), vadd_f32(vzip1_s32(*v123.i8, *v124.i8), vzip2_s32(*v123.i8, *v124.i8)));
        }

        while (v11 != v16);
        v16 = v374[2];
        if (v374[2])
        {
          v125 = v375 + 1;
          v373.i64[0] = *v375;
          v373.i64[1] = v373.i64[0];
          v127 = v373.f32[1];
          v126 = v373.f32[0];
          v128 = v374[2];
          v129 = v373.f32[1];
          v130 = v373.f32[0];
          LODWORD(v14) = v334;
          while (v128)
          {
            if (v126 >= *(v125 - 1))
            {
              v126 = *(v125 - 1);
            }

            v373.f32[0] = v126;
            if (v129 >= *v125)
            {
              v129 = *v125;
            }

            v373.f32[1] = v129;
            if (*(v125 - 1) >= v130)
            {
              v130 = *(v125 - 1);
            }

            v373.f32[2] = v130;
            v131 = *v125;
            v125 += 2;
            v132 = v131;
            if (v131 >= v127)
            {
              v127 = v132;
            }

            v373.f32[3] = v127;
            --v128;
            if (!--v11)
            {
              goto LABEL_250;
            }
          }

          goto LABEL_484;
        }

LABEL_524:
        v369 = 0;
        v191 = v380;
        v386 = 0u;
        v387 = 0u;
        memset(v385, 0, sizeof(v385));
        v318 = MEMORY[0x1E69E9C10];
        v319 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v382 = 136315906;
        *&v382[4] = "operator[]";
        *&v382[12] = 1024;
        if (v319)
        {
          v320 = 3;
        }

        else
        {
          v320 = 2;
        }

        *&v382[14] = 789;
        *&v382[18] = 2048;
        *&v382[20] = 0;
        v383 = 2048;
        *v384 = 0;
        _os_log_send_and_compose_impl(v320, &v369, v385, 80, &dword_1E1C61000, v318, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v382, 38, v324, v326);
        _os_crash_msg();
        __break(1u);
        goto LABEL_528;
      }

LABEL_250:
      v112 = v121 != 0;
    }

    else
    {
      v112 = 0;
    }

    if (*v412 && *&v414[2])
    {
      (*(**v412 + 40))();
    }

    re::GeomMesh::~GeomMesh(&v415);
    v6 = v3 + 1;
    if (v3 + 1 >= v327 || !v112)
    {
      goto LABEL_321;
    }

    v11 = v336;
    do
    {
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(&v345, v11))
      {
        goto LABEL_320;
      }

      v135 = v134;
      v137 = v136;
      v138 = HIDWORD(v134);
      v141.i64[0] = __PAIR64__(v138, v135);
      v141.i32[2] = v137;
      v143.i64[0] = v139;
      v143.i32[2] = v142;
      v144 = vmulq_f32(v141, v143);
      v145 = (v144.f32[2] + vaddv_f32(*v144.f32)) >= 0.0 ? 1.0 : -1.0;
      v146 = vmulq_f32(vmulq_n_f32(v143, v145), v141);
      if ((v146.f32[2] + vaddv_f32(*v146.f32)) < v352 || fabsf(*(&v137 + 1) - (v145 * v140)) > v353)
      {
        goto LABEL_320;
      }

      *&v385[2] = 0;
      memset(v385, 0, 28);
      v147 = *&v385[2];
      v148 = *&v385[1];
      v149 = re::GeomMesh::accessVertexPositions(v331);
      if (!v148)
      {
        goto LABEL_317;
      }

      v5 = v149;
      FirstBitSet = v150;
      LOBYTE(v149) = 0;
      v330 = &v147[v148];
LABEL_267:
      v16 = *v147;
      v14 = *(v331 + 5);
      if (v14 <= v16)
      {
        goto LABEL_516;
      }

      v14 = 0;
      *v382 = *(*(v331 + 7) + 16 * v16);
      if (*&v382[12] == -1)
      {
        v151 = 3;
      }

      else
      {
        v151 = 4;
      }

      while (1)
      {
        v10 = *&v382[4 * v14];
        if (v10 >= FirstBitSet)
        {
          goto LABEL_436;
        }

        v152 = v370;
        v153 = v371;
        v154 = vsubq_f32(*(v5 + 16 * v10), v370);
        v155 = vmulq_f32(v371, v154);
        v156 = __dst;
        v157 = vmulq_f32(v154, __dst);
        *v157.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v155, v155, 8uLL), *&vextq_s8(v157, v157, 8uLL)), vadd_f32(vzip1_s32(*v155.i8, *v157.i8), vzip2_s32(*v155.i8, *v157.i8)));
        v368 = *v157.i8;
        v158 = ++v14;
        if (v14 == v151)
        {
          v158 = 0;
        }

        v10 = *&v382[4 * v158];
        if (v10 >= FirstBitSet)
        {
          goto LABEL_440;
        }

        v157.i64[1] = v157.i64[0];
        v159 = vmovn_s32(vcgtq_f32(v157, v373));
        v160.i32[0] = vmovn_s32(vcgtq_f32(v373, v157)).u32[0];
        v160.i32[1] = v159.i32[1];
        if (vmaxv_u16(v160))
        {
          goto LABEL_316;
        }

        v161 = *(v5 + 16 * v10);
        v162 = v374[2];
        if ((v149 & 1) == 0)
        {
          break;
        }

        LODWORD(v149) = 1;
        if (v374[2])
        {
          goto LABEL_280;
        }

LABEL_306:
        if (v14 == v151)
        {
          if (++v147 == v330)
          {
            LODWORD(v14) = v334;
            if (!v149)
            {
              goto LABEL_317;
            }

            if (!*&v385[1])
            {
LABEL_315:
              re::DynamicBitset<unsigned long long,64ul>::setBit(&v345, v11);
              HIDWORD(v324) = 1;
              goto LABEL_316;
            }

            v190 = *&v385[2];
            v191 = *&v380[8];
            v192 = 4 * *&v385[1];
            while (1)
            {
              v193 = *v190;
              v14 = v193 >> 6;
              if (v191 <= v193 >> 6)
              {
                break;
              }

              v194 = &v380[24];
              if ((v380[16] & 1) == 0)
              {
                v194 = *&v380[32];
              }

              *&v194[8 * v14] &= ~(1 << v193);
              ++v190;
              v192 -= 4;
              if (!v192)
              {
                goto LABEL_315;
              }
            }

LABEL_528:
            *v382 = 0;
            v418 = 0u;
            v419 = 0u;
            v416 = 0u;
            v417 = 0u;
            v415 = 0u;
            v321 = MEMORY[0x1E69E9C10];
            v322 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v412 = 136315906;
            *&v412[4] = "operator[]";
            *&v412[12] = 1024;
            if (v322)
            {
              v323 = 3;
            }

            else
            {
              v323 = 2;
            }

            *&v412[14] = 858;
            *&v412[18] = 2048;
            *&v412[20] = v14;
            v413 = 2048;
            *v414 = v191;
            _os_log_send_and_compose_impl(v323, v382, &v415, 80, &dword_1E1C61000, v321, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v412, 38, v324, v326);
            _os_crash_msg();
            __break(1u);
          }

          goto LABEL_267;
        }
      }

      v415.i64[0] = v375;
      v415.i64[1] = v374[2];
      v343 = v371;
      v344 = v370;
      v338 = v161;
      v341 = __dst;
      LODWORD(v149) = re::internal::isPointInsidePolygon(&v368, &v415);
      v161 = v338;
      v156 = v341;
      v153 = v343;
      v152 = v344;
      v162 = v374[2];
      if (!v374[2])
      {
        goto LABEL_306;
      }

LABEL_280:
      v163 = 0;
      v164 = vsubq_f32(v161, v152);
      v165 = vmulq_f32(v153, v164);
      v166 = vmulq_f32(v156, v164);
      _D1 = vsub_f32(vadd_f32(vzip1_s32(*&vextq_s8(v165, v165, 8uLL), *&vextq_s8(v166, v166, 8uLL)), vadd_f32(vzip1_s32(*v165.i8, *v166.i8), vzip2_s32(*v165.i8, *v166.i8))), v368);
      v168 = vmul_f32(_D1, _D1);
      v169 = vaddv_f32(v168) * 0.000001;
      v170 = vdup_lane_s32(vadd_f32(v168, vdup_lane_s32(v168, 1)), 0);
      v171 = 1;
      while (1)
      {
        v172 = v162 - 1 == v163 ? 0 : v163 + 1;
        v173 = v375[v163];
        _D7 = vsub_f32(v375[v172], v173);
        v175 = vsub_f32(v173, v368);
        __asm { FMLA            S16, S1, V7.S[1] }

        if ((_S16 * _S16) <= (v169 * vaddv_f32(vmul_f32(_D7, _D7))))
        {
          break;
        }

        v180 = ((v175.f32[0] * _D7.f32[1]) - (v175.f32[1] * _D7.f32[0])) / _S16;
        if (v180 >= 0.0 && v180 <= 1.0)
        {
          v182 = ((_D1.f32[0] * -v175.f32[1]) + (v175.f32[0] * _D1.f32[1])) / _S16;
          if (v182 >= 0.0 && v182 <= 1.0)
          {
            goto LABEL_305;
          }
        }

LABEL_304:
        v171 = v162 > ++v163;
        if (v162 == v163)
        {
          goto LABEL_305;
        }
      }

      if ((((v175.f32[0] * _D1.f32[1]) - (v175.f32[1] * _D1.f32[0])) * ((v175.f32[0] * _D1.f32[1]) - (v175.f32[1] * _D1.f32[0]))) > (v169 * vaddv_f32(vmul_f32(v175, v175))))
      {
        goto LABEL_304;
      }

      v184 = vmul_f32(_D1, v175);
      v185 = vmul_f32(_D1, _D7);
      v186 = vdiv_f32(vadd_f32(vzip1_s32(v184, v185), vzip2_s32(v184, v185)), v170);
      v187 = vadd_f32(v186, vdup_lane_s32(v186, 1));
      v188 = vaddv_f32(v186);
      if (vcgt_f32(v186, v187).u8[0])
      {
        v189 = v188;
      }

      else
      {
        v189 = *v186.i32;
      }

      if (vcgt_f32(v187, v186).u32[0])
      {
        *v186.i32 = v188;
      }

      if (v189 > 1.0 || *v186.i32 < 0.0)
      {
        goto LABEL_304;
      }

LABEL_305:
      if (!v171)
      {
        goto LABEL_306;
      }

LABEL_316:
      LODWORD(v14) = v334;
LABEL_317:
      if (*&v385[0] && *&v385[2])
      {
        (*(**&v385[0] + 40))();
      }

LABEL_320:
      ++v11;
    }

    while (v11 != v14);
LABEL_321:
    if (v374[0] && v375)
    {
      (*(*v374[0] + 40))();
    }

    v14 = &v351;
    v11 = v385;
LABEL_325:
    ++v336;
    v3 = v6;
  }

  while (v6 != v334 - 1);
  v11 = v331;
  v16 = v376;
  if ((v324 & 0x100000000) == 0)
  {
LABEL_334:
    *a3 = 0;
    *(a3 + 8) = 0;
    bzero((a3 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((a3 + 16));
    *(a3 + 728) = 0;
    re::GeomMesh::copy(v11, a3);
    goto LABEL_335;
  }

  *&v417 = 0;
  *&v416 = 0;
  v415 = 0uLL;
  DWORD2(v416) = 0;
  v195 = *&v380[32];
  if (v380[16])
  {
    v195 = &v380[24];
  }

  v196 = *&v380[8];
  if ((*&v380[8] & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_422;
  }

  v197 = 0;
  while (1)
  {
    v199 = *v195++;
    v198 = v199;
    if (v199)
    {
      break;
    }

    v197 -= 64;
    if (!--v196)
    {
      goto LABEL_422;
    }
  }

LABEL_417:
  v243 = __clz(__rbit64(v198));
  v244 = v243 - v197;
  if (v243 + 1 == v197 || v244 >= *(v11 + 40))
  {
LABEL_422:
    v246 = 0;
    v247 = 0;
  }

  else
  {
    do
    {
      LODWORD(v385[0]) = v244;
      re::DynamicArray<int>::add(&v415, v385);
      v249 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v380, v244 + 1);
      v244 = v249;
    }

    while (v249 != -1 && v249 < *(v11 + 40));
    v247 = v417;
    v246 = v416;
  }

  MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v11, v247, v246, *(v328 + 1), a3);
  if (v415.i64[0] && v417)
  {
    (*(*v415.i64[0] + 40))(MeshFromFaceSubset);
  }

LABEL_335:
  re::GeomMesh::freeName(v376);
  re::internal::GeomAttributeManager::~GeomAttributeManager((v16 + 56));
  if (*&v376[16] && v378)
  {
    (*(**&v376[16] + 40))();
  }

  if (*v380 && (v380[16] & 1) == 0)
  {
    (*(**v380 + 40))();
  }

  if (v345 && (v347 & 1) == 0)
  {
    (*(*v345 + 40))();
  }

LABEL_345:
  if (*(&v364 + 1))
  {
    if (v367)
    {
      (*(**(&v364 + 1) + 40))();
    }

    v367 = 0;
    *(v14 + 144) = 0;
    *(v14 + 152) = 0;
    *(v14 + 136) = 0;
    ++v366;
  }

  if (*(&v361 + 1))
  {
    if (v364)
    {
      (*(**(&v361 + 1) + 40))();
    }

    *&v364 = 0;
    *(v14 + 104) = 0;
    *(v14 + 112) = 0;
    *(v14 + 96) = 0;
    ++v363;
  }

  if (__src[1])
  {
    if (v361)
    {
      (*(*__src[1] + 40))();
    }

    *&v361 = 0;
    *(v14 + 64) = 0;
    *(v14 + 72) = 0;
    *(v14 + 56) = 0;
    ++v360;
  }

  result = v354;
  if (v354)
  {
    if (__src[0])
    {
      return (*(*v354 + 40))();
    }
  }

  return result;
}

void re::anonymous namespace::PlanarRegions::faces(void *a1, unsigned int a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = a2 - 1;
    v6 = a1[14];
    if (v6 <= v5)
    {
      goto LABEL_24;
    }

    v7 = *(a1[16] + 4 * v5);
  }

  else
  {
    v7 = 0;
    v6 = a1[14];
  }

  v5 = a2;
  if (v6 <= a2)
  {
LABEL_20:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v17 = MEMORY[0x1E69E9C10];
    v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v20 = MEMORY[0x1E69E9C10];
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v21)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v5;
    v31 = 2048;
    v32 = v6;
    _os_log_send_and_compose_impl(v22, &v24, &v33, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
  }

  v8 = *(a1[16] + 4 * a2);
  v6 = v8 - v7;
  re::DynamicArray<float>::resize(a3, v6);
  if (v8 != v7)
  {
    v5 = a1[19];
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    v11 = v9;
    while (v5 > v7)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      *v10++ = *(a1[21] + 4 * v7);
      --v11;
      ++v7;
      if (!--v6)
      {
        return;
      }
    }

    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v28 = 797;
    v29 = 2048;
    v30 = v7;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(v13, &v24, &v33, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
LABEL_16:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v28 = 789;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v9;
    _os_log_send_and_compose_impl(v16, &v24, &v33, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }
}

double re::internal::extractMeshFromFaceSubset@<D0>(_anonymous_namespace_ *a1@<X0>, _anonymous_namespace_ *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, re::GeomMesh *a5@<X8>)
{
  v96 = a4;
  v8 = a1;
  v128 = *MEMORY[0x1E69E9840];
  v103 = 0u;
  v104 = 0u;
  v9 = 3 * a3;
  v101 = 0u;
  v102 = 0u;
  v100 = 0;
  v11 = (a2 + 4 * a3);
  if (a3)
  {
    v12 = a2;
    while (1)
    {
      v13 = *v12;
      v14 = *(v8 + 40);
      if (v14 <= v13)
      {
        break;
      }

      v15 = 0;
      *v109 = *(*(v8 + 56) + 16 * v13);
      if (HIDWORD(v109[1]) == -1)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      do
      {
        v125[0] = *(v109 + v15);
        if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v101, v125) == -1)
        {
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(&v101, v125, &v100);
          ++v100;
        }

        ++v15;
      }

      while (v5 != v15);
      v12 += 4;
      if (v12 == v11)
      {
        goto LABEL_11;
      }
    }

    *v122 = 0;
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    *v109 = 0u;
    v110 = 0u;
    v67 = MEMORY[0x1E69E9C10];
    v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v125[0] = 136315906;
    *&v125[1] = "operator[]";
    LOWORD(v125[3]) = 1024;
    if (v68)
    {
      v69 = 3;
    }

    else
    {
      v69 = 2;
    }

    *(&v125[3] + 2) = 797;
    HIWORD(v125[4]) = 2048;
    *&v125[5] = v13;
    LOWORD(v125[7]) = 2048;
    *(&v125[7] + 2) = v14;
    _os_log_send_and_compose_impl(v69, v122, v109, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v94, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_78;
  }

LABEL_11:
  re::GeomMesh::GeomMesh(a5, 0);
  bzero(v109, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v110, 1uLL);
  ++DWORD2(v111);
  re::internal::GeomAttributeManager::GeomAttributeManager((&v112 + 8));
  re::internal::GeomAttributeManager::addAttribute((&v112 + 8), "vertexPosition", 1, 7);
  if (v111 > a3)
  {
    v17 = v121;
    if (v121)
    {
      LODWORD(v10) = 0;
      do
      {
        v18 = re::internal::GeomAttributeContainer::attributeByIndex(v120, v10);
        re::internal::accessFaceVaryingAttributeSubmesh(v18, v19);
        v10 = (v10 + 1);
      }

      while (v17 != v10);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v110, a3);
  v117 = a3;
  if (v118)
  {
    v20 = v119;
    v21 = 8 * v118;
    do
    {
      v22 = *v20++;
      (*(*v22 + 80))(v22, v117);
      v21 -= 8;
    }

    while (v21);
  }

  v97 = a2;
  LODWORD(v109[1]) = v100;
  v114 = v100;
  if (v115)
  {
    v23 = v116;
    v24 = 8 * v115;
    do
    {
      v25 = *v23++;
      (*(*v25 + 80))(v25, v114);
      v24 -= 8;
    }

    while (v24);
  }

  v95 = a3;
  if (a3)
  {
    v26 = 0;
    v5 = &v106;
    v27 = v97;
    v99 = v8;
    while (1)
    {
      v12 = *v27;
      v14 = *(v8 + 40);
      if (v14 <= v12)
      {
        break;
      }

      v28 = 0;
      v29 = *(v8 + 56) + 16 * v12;
      do
      {
        *(&v106 + v28) = *(v29 + v28);
        v28 += 4;
      }

      while (v28 != 16);
      v14 = v108;
      if (v108 == -1)
      {
        v30 = 3;
      }

      else
      {
        v30 = 4;
      }

      v31 = &v106;
      do
      {
        v32 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v101, v31);
        *v31++ = *(*(&v101 + 1) + 8 * v32 + 4);
        --v30;
      }

      while (v30);
      v12 = v26;
      v10 = v111;
      if (v111 <= v26)
      {
        goto LABEL_82;
      }

      v8 = v11;
      v33 = (v112 + 16 * v26);
      if (*v33 != -1)
      {
        v34 = v33[3];
        v35 = v14 == -1 || v108 == -1;
        v36 = v35;
        if ((((v34 != -1) ^ v36) & 1) == 0)
        {
          LODWORD(v11) = v121;
          if (v121)
          {
            v37 = 0;
            do
            {
              v38 = re::internal::GeomAttributeContainer::attributeByIndex(v120, v37);
              re::internal::accessFaceVaryingAttributeSubmesh(v38, v39);
              ++v37;
            }

            while (v11 != v37);
            v10 = v111;
          }
        }
      }

      if (v10 <= v26)
      {
        goto LABEL_86;
      }

      v41 = v107;
      v40 = v108;
      if (v14 == -1)
      {
        v40 = -1;
      }

      v42 = v112 + 16 * v26;
      *v42 = v106;
      *(v42 + 8) = v41;
      *(v42 + 12) = v40;
      ++v26;
      v27 = (v27 + 4);
      v11 = v8;
      v35 = v27 == v8;
      v8 = v99;
      if (v35)
      {
        goto LABEL_49;
      }
    }

LABEL_78:
    v106 = 0;
    v126 = 0u;
    v127 = 0u;
    memset(v125, 0, sizeof(v125));
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    *&v122[12] = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    *&v122[14] = 797;
    *&v122[18] = 2048;
    *&v122[20] = v12;
    v123 = 2048;
    v124 = v14;
    _os_log_send_and_compose_impl(v72, &v106, v125, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v105 = 0;
    v126 = 0u;
    v127 = 0u;
    memset(v125, 0, sizeof(v125));
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    *&v122[12] = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    *&v122[14] = 797;
    *&v122[18] = 2048;
    *&v122[20] = v12;
    v123 = 2048;
    v124 = v10;
    _os_log_send_and_compose_impl(v75, &v105, v125, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
LABEL_86:
    v105 = 0;
    v62 = v122;
    v126 = 0u;
    v127 = 0u;
    memset(v125, 0, sizeof(v125));
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v122 = 136315906;
    *&v122[4] = "operator[]";
    *&v122[12] = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *&v122[14] = 789;
    *&v122[18] = 2048;
    *&v122[20] = v12;
    v123 = 2048;
    v124 = v10;
    _os_log_send_and_compose_impl(v78, &v105, v125, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v122, 38, v95, v96);
    _os_crash_msg();
    __break(1u);
    goto LABEL_90;
  }

LABEL_49:
  v43 = re::GeomMesh::operator=(a5, &v109[1]);
  re::GeomMesh::setName(v43, v109[0]);
  re::GeomMesh::freeName(v109);
  re::GeomMesh::freeName(v109);
  re::internal::GeomAttributeManager::~GeomAttributeManager((&v112 + 8));
  if (v110 && v112)
  {
    (*(*v110 + 40))();
  }

  v44 = re::GeomMesh::accessVertexPositions(v8);
  LODWORD(v10) = v45;
  v46 = re::GeomMesh::modifyVertexPositions(a5);
  *v122 = &v101;
  v14 = v122;
  if (v102 >= 0x10)
  {
    v48 = v46;
    LODWORD(v11) = v47;
    v49 = 0;
    v50 = v101;
    v51 = v102 >> 4;
    while (1)
    {
      v52 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v50), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *&v122[8] = v52 ^ 0xFFFFLL;
      if (v52 != 0xFFFFLL)
      {
        break;
      }

      v49 -= 16;
      ++v50;
      if (!--v51)
      {
        goto LABEL_61;
      }
    }

    v53 = __clz(__rbit64(v52 ^ 0xFFFFLL));
    v54 = v53 - v49;
    *&v122[16] = v53 - v49;
    if (v53 + 1 != v49)
    {
      do
      {
        v55 = (*(*v122 + 8) + 8 * v54);
        v56 = *v55;
        if (v56 >= v10)
        {
          goto LABEL_98;
        }

        v5 = v55[1];
        if (v5 >= v11)
        {
          goto LABEL_102;
        }

        *(v48 + 16 * v5) = *(v44 + 16 * v56);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v122);
        v54 = *&v122[16];
      }

      while (*&v122[16] != -1);
    }
  }

LABEL_61:
  LODWORD(v11) = v97;
  if (v96)
  {
    v57 = re::internal::GeomAttributeManager::attributeByName((v8 + 64), v96);
    if (v57)
    {
      v58 = v57;
      v59 = re::GeomMesh::addAttribute(a5, v96, *(v57 + 16), *(v57 + 17));
      if (v59)
      {
        v60 = v59;
        v14 = re::GeomAttribute::accessValues<int>(v58);
        LODWORD(v62) = v61;
        if ((*(*v60 + 16))(v60))
        {
          LODWORD(v10) = v95;
          if (!*(v60 + 5))
          {
            goto LABEL_106;
          }

          v63 = *(v60 + 7);
          v56 = (*(*v60 + 16))(v60);
          if (!v95)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v101);
          }
        }

        else
        {
          v56 = 0;
          v63 = 0;
          LODWORD(v10) = v95;
          if (!v95)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v101);
          }
        }

        v64 = 0;
        v65 = 4 * v95;
        while (1)
        {
          v8 = *(v97 + v64);
          if (v8 >= v62)
          {
            break;
          }

          if (v56 == v64)
          {
            goto LABEL_94;
          }

          *(v63 + 4 * v64++) = *(v14 + 4 * v8);
          v65 -= 4;
          if (!v65)
          {
            return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v101);
          }
        }

LABEL_90:
        v56 = v122;
        *v122 = 0;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        *v109 = 0u;
        v110 = 0u;
        v79 = MEMORY[0x1E69E9C10];
        v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v125[0] = 136315906;
        *&v125[1] = "operator[]";
        LOWORD(v125[3]) = 1024;
        if (v80)
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        *(&v125[3] + 2) = 613;
        HIWORD(v125[4]) = 2048;
        *&v125[5] = v8;
        LOWORD(v125[7]) = 2048;
        *(&v125[7] + 2) = v62;
        _os_log_send_and_compose_impl(v81, v122, v109, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_94:
        v5 = v122;
        *v122 = 0;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        *v109 = 0u;
        v110 = 0u;
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v125[0] = 136315906;
        *&v125[1] = "operator[]";
        LOWORD(v125[3]) = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        *(&v125[3] + 2) = 621;
        HIWORD(v125[4]) = 2048;
        *&v125[5] = v56;
        LOWORD(v125[7]) = 2048;
        *(&v125[7] + 2) = v56;
        _os_log_send_and_compose_impl(v84, v122, v109, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_98:
        v106 = 0;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        *v109 = 0u;
        v110 = 0u;
        v85 = MEMORY[0x1E69E9C10];
        v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v125[0] = 136315906;
        *(v14 + 52) = "operator[]";
        LOWORD(v125[3]) = 1024;
        if (v86)
        {
          v87 = 3;
        }

        else
        {
          v87 = 2;
        }

        *(v14 + 62) = 613;
        HIWORD(v125[4]) = 2048;
        *(v14 + 68) = v56;
        LOWORD(v125[7]) = 2048;
        *(v14 + 78) = v10;
        _os_log_send_and_compose_impl(v87, &v106, v109, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_102:
        v106 = 0;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        *v109 = 0u;
        v110 = 0u;
        v88 = MEMORY[0x1E69E9C10];
        v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v125[0] = 136315906;
        *(v14 + 52) = "operator[]";
        LOWORD(v125[3]) = 1024;
        if (v89)
        {
          v90 = 3;
        }

        else
        {
          v90 = 2;
        }

        *(v14 + 62) = 621;
        HIWORD(v125[4]) = 2048;
        *(v14 + 68) = v5;
        LOWORD(v125[7]) = 2048;
        *(v14 + 78) = v11;
        _os_log_send_and_compose_impl(v90, &v106, v109, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
LABEL_106:
        *v122 = 0;
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        *v109 = 0u;
        v110 = 0u;
        v91 = MEMORY[0x1E69E9C10];
        v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v125[0] = 136315906;
        *&v125[1] = "operator[]";
        LOWORD(v125[3]) = 1024;
        if (v92)
        {
          v93 = 3;
        }

        else
        {
          v93 = 2;
        }

        *(&v125[3] + 2) = 789;
        HIWORD(v125[4]) = 2048;
        *&v125[5] = 0;
        LOWORD(v125[7]) = 2048;
        *(&v125[7] + 2) = 0;
        _os_log_send_and_compose_impl(v93, v122, v109, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v95, v96);
        _os_crash_msg();
        __break(1u);
      }
    }
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v101);
}

uint64_t re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(uint64_t this, const re::GeomMesh *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  *(this + 16) = 0;
  ++*(this + 24);
  *(this + 56) = 0;
  ++*(this + 64);
  v3 = *(a2 + 5);
  if (v3)
  {
    v5 = this;
    v46 = 0;
    v6 = v3;
    v43[1] = 0;
    v44 = 0;
    v43[0] = 0;
    v45 = 0;
    re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(v43, v3);
    *&v50[2] = 0;
    memset(v48, 0, sizeof(v48));
    v42 = 0;
    v39[1] = 0;
    v40 = 0;
    v39[0] = 0;
    v41 = 0;
    ConnectedComponents = re::findConnectedComponents(a2, v48, v39);
    v8 = 0;
    v9 = v44;
    v10 = v46;
    v11 = v40;
    v12 = v42;
    v13 = (v46 + 4);
    while (1)
    {
      if (v9 == v8)
      {
        goto LABEL_35;
      }

      *(v13 - 1) = v8;
      if (v11 == v8)
      {
        break;
      }

      *v13 = *(v12 + 4 * v8);
      v13 += 2;
      if (v6 == ++v8)
      {
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(v10, (v10 + 8 * v9), &v59, 126 - 2 * __clz(v9), 1);
        if (v39[0] && v42)
        {
          (*(*v39[0] + 40))();
        }

        if (*v48 && *&v50[2])
        {
          (*(**v48 + 40))();
        }

        LODWORD(v59) = 0;
        re::DynamicArray<unsigned int>::resize(v5, ConnectedComponents, &v59);
        re::DynamicArray<unsigned int>::resize(v5 + 5, v6, &re::kInvalidMeshIndex);
        v9 = 0;
        v14 = 0;
        ConnectedComponents = v44;
        v15 = v46;
        while (1)
        {
          if (ConnectedComponents <= v9)
          {
            goto LABEL_43;
          }

          if (v9 >= v6)
          {
            goto LABEL_22;
          }

          v16 = v15 + 8 * v9;
          v19 = *(v16 + 4);
          v17 = (v16 + 4);
          v18 = v19;
          while (1)
          {
            if (ConnectedComponents == v9)
            {
              v39[0] = 0;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v59 = 0u;
              v20 = MEMORY[0x1E69E9C10];
              v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v48 = 136315906;
              *&v48[4] = "operator[]";
              *&v48[12] = 1024;
              if (v21)
              {
                v22 = 3;
              }

              else
              {
                v22 = 2;
              }

              *&v48[14] = 789;
              *&v48[18] = 2048;
              *&v48[20] = ConnectedComponents;
              v49 = 2048;
              *v50 = ConnectedComponents;
              _os_log_send_and_compose_impl(v22, v39, &v59, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v38);
              _os_crash_msg();
              __break(1u);
LABEL_31:
              v39[0] = 0;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v59 = 0u;
              v23 = MEMORY[0x1E69E9C10];
              v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v48 = 136315906;
              *&v48[4] = "operator[]";
              *&v48[12] = 1024;
              if (v24)
              {
                v25 = 3;
              }

              else
              {
                v25 = 2;
              }

              *&v48[14] = 789;
              *&v48[18] = 2048;
              *&v48[20] = v9;
              v49 = 2048;
              *v50 = v11;
              _os_log_send_and_compose_impl(v25, v39, &v59, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v38);
              _os_crash_msg();
              __break(1u);
LABEL_35:
              v47 = 0;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v59 = 0u;
              v26 = MEMORY[0x1E69E9C10];
              v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v51 = 136315906;
              v52 = "operator[]";
              v53 = 1024;
              if (v27)
              {
                v28 = 3;
              }

              else
              {
                v28 = 2;
              }

              v54 = 789;
              v55 = 2048;
              v56 = v9;
              v57 = 2048;
              v58 = v9;
              _os_log_send_and_compose_impl(v28, &v47, &v59, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v38, v39[0]);
              _os_crash_msg();
              __break(1u);
              goto LABEL_39;
            }

            if (*v17 != v18)
            {
              break;
            }

            v11 = v5[7];
            if (v11 <= v9)
            {
              goto LABEL_31;
            }

            *(v5[9] + 4 * v9++) = *(v17 - 1);
            v17 += 2;
            if (v6 == v9)
            {
              v9 = v6;
              goto LABEL_22;
            }
          }

          v9 = v9;
LABEL_22:
          v11 = v14;
          v2 = v5[2];
          if (v2 <= v14)
          {
            goto LABEL_47;
          }

          *(v5[4] + 4 * v14++) = v9;
          if (v9 >= v6)
          {
            this = v43[0];
            if (v43[0])
            {
              return (*(*v43[0] + 40))(v43[0]);
            }

            return this;
          }
        }
      }
    }

LABEL_39:
    v47 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v51 = 136315906;
    v52 = "operator[]";
    v53 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v54 = 789;
    v55 = 2048;
    v56 = v11;
    v57 = 2048;
    v58 = v11;
    _os_log_send_and_compose_impl(v31, &v47, &v59, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v51, 38, v38, v39[0]);
    _os_crash_msg();
    __break(1u);
LABEL_43:
    v39[0] = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v32 = MEMORY[0x1E69E9C10];
    v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v48 = 136315906;
    *&v48[4] = "operator[]";
    *&v48[12] = 1024;
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 2;
    }

    *&v48[14] = 789;
    *&v48[18] = 2048;
    *&v48[20] = v9;
    v49 = 2048;
    *v50 = ConnectedComponents;
    _os_log_send_and_compose_impl(v34, v39, &v59, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v38);
    _os_crash_msg();
    __break(1u);
LABEL_47:
    v39[0] = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v48 = 136315906;
    *&v48[4] = "operator[]";
    *&v48[12] = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *&v48[14] = 789;
    *&v48[18] = 2048;
    *&v48[20] = v11;
    v49 = 2048;
    *v50 = v2;
    _os_log_send_and_compose_impl(v37, v39, &v59, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v48, 38, v38);
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

void re::DynamicArray<re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 3;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        if (a2[-1].i32[3] >= v9->i32[1])
        {
          return result;
        }

        v46 = v9->i64[0];
LABEL_81:
        v9->i64[0] = a2[-1].i64[1];
        goto LABEL_82;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v47 = v9->u32[3];
      v48 = v9->u32[1];
      LODWORD(v49) = v9[1].i32[1];
      if (v47 >= v48)
      {
        if (v49 < v47)
        {
          v53 = v9->u64[1];
          v54 = v9[1].i64[0];
          v9->i64[1] = v54;
          v9[1].i64[0] = v53;
          v49 = HIDWORD(v53);
          if (v48 > HIDWORD(v54))
          {
            v55 = v9->i64[0];
            v9->i64[0] = v54;
            v9->i64[1] = v55;
          }
        }
      }

      else
      {
        v50 = v9->i64[0];
        v51 = HIDWORD(v9->i64[0]);
        if (v49 < v47)
        {
          v9->i64[0] = v9[1].i64[0];
          goto LABEL_110;
        }

        v9->i64[0] = v9->i64[1];
        v9->i64[1] = v50;
        if (v49 < v51)
        {
          v9->i64[1] = v9[1].i64[0];
LABEL_110:
          v9[1].i64[0] = v50;
          LODWORD(v49) = v51;
        }
      }

      if (a2[-1].i32[3] < v49)
      {
        v64 = v9[1].i64[0];
        v9[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v64;
        if (v9[1].i32[1] < v9->i32[3])
        {
          v66 = v9->i64[1];
          v65 = v9[1].i64[0];
          v9->i64[1] = v65;
          v9[1].i64[0] = v66;
          if (v9->i32[1] > HIDWORD(v65))
          {
            v67 = v9->i64[0];
            v9->i64[0] = v65;
            v9->i64[1] = v67;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(v9, &v9->u64[1], &v9[1], &v9[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, a2);
      }

      else if (v9 != a2)
      {
        while ((v8 + 8) != a2)
        {
          v56 = *(v8 + 12);
          v57 = *(v8 + 4);
          v63 = (v8 + 8);
          v8 += 8;
          if (v56 < v57)
          {
            v58 = *v63;
            v59 = HIDWORD(*v8);
            v60 = v8;
            do
            {
              v61 = v60;
              v62 = *--v60;
              *v61 = v62;
            }

            while (*(v61 - 3) > v59);
            *v60 = v58;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, a2, a2->i64, a3);
      }

      return result;
    }

    v13 = &v9->i8[8 * (v12 >> 1)];
    v14 = a2[-1].u32[3];
    if (v12 >= 0x81)
    {
      v15 = *(v13 + 1);
      if (v15 >= v9->i32[1])
      {
        if (v14 < v15)
        {
          v19 = *v13;
          *v13 = a2[-1].i64[1];
          a2[-1].i64[1] = v19;
          if (*(v13 + 1) < v9->i32[1])
          {
            v20 = v9->i64[0];
            v9->i64[0] = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        v16 = v9->i64[0];
        if (v14 < v15)
        {
          v9->i64[0] = a2[-1].i64[1];
          goto LABEL_29;
        }

        v9->i64[0] = *v13;
        *v13 = v16;
        if (a2[-1].i32[3] < HIDWORD(v16))
        {
          *v13 = a2[-1].i64[1];
LABEL_29:
          a2[-1].i64[1] = v16;
        }
      }

      v23 = (v13 - 8);
      v24 = *(v13 - 1);
      v25 = a2[-1].u32[1];
      if (v24 >= v9->i32[3])
      {
        if (v25 < v24)
        {
          v27 = *v23;
          *v23 = a2[-1].i64[0];
          a2[-1].i64[0] = v27;
          if (*(v13 - 1) < v9->i32[3])
          {
            v28 = v9->i64[1];
            v9->i64[1] = *v23;
            *v23 = v28;
          }
        }
      }

      else
      {
        v26 = v9->i64[1];
        if (v25 < v24)
        {
          v9->i64[1] = a2[-1].i64[0];
          goto LABEL_43;
        }

        v9->i64[1] = *v23;
        *v23 = v26;
        if (a2[-1].i32[1] < HIDWORD(v26))
        {
          *v23 = a2[-1].i64[0];
LABEL_43:
          a2[-1].i64[0] = v26;
        }
      }

      v29 = *(v13 + 3);
      v30 = a2[-2].u32[3];
      if (v29 >= v9[1].i32[1])
      {
        if (v30 < v29)
        {
          v32 = *(v13 + 1);
          *(v13 + 1) = a2[-2].i64[1];
          a2[-2].i64[1] = v32;
          if (*(v13 + 3) < v9[1].i32[1])
          {
            v33 = v9[1].i64[0];
            v9[1].i64[0] = *(v13 + 1);
            *(v13 + 1) = v33;
          }
        }
      }

      else
      {
        v31 = v9[1].i64[0];
        if (v30 < v29)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          goto LABEL_52;
        }

        v9[1].i64[0] = *(v13 + 1);
        *(v13 + 1) = v31;
        if (a2[-2].i32[3] < HIDWORD(v31))
        {
          *(v13 + 1) = a2[-2].i64[1];
LABEL_52:
          a2[-2].i64[1] = v31;
        }
      }

      v34 = *(v13 + 1);
      v35 = *(v13 - 1);
      v36 = *(v13 + 3);
      if (v34 >= v35)
      {
        v37 = *v13;
        if (v36 < v34)
        {
          v38 = *(v13 + 1);
          *v13 = v38;
          *(v13 + 1) = v37;
          if (v35 <= HIDWORD(v38))
          {
            v37 = v38;
          }

          else
          {
            v37 = *v23;
            *v23 = v38;
            *v13 = v37;
          }
        }
      }

      else
      {
        v37 = *v23;
        if (v36 >= v34)
        {
          *v23 = *v13;
          *v13 = v37;
          if (v36 < HIDWORD(v37))
          {
            v39 = *(v13 + 1);
            *v13 = v39;
            *(v13 + 1) = v37;
            v37 = v39;
          }
        }

        else
        {
          *v23 = *(v13 + 1);
          *(v13 + 1) = v37;
          v37 = *v13;
        }
      }

      v40 = v9->i64[0];
      v9->i64[0] = v37;
      *v13 = v40;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v17 = v9->u32[1];
    if (v17 < *(v13 + 1))
    {
      v18 = *v13;
      if (v14 < v17)
      {
        *v13 = a2[-1].i64[1];
        goto LABEL_38;
      }

      *v13 = v9->i64[0];
      v9->i64[0] = v18;
      if (a2[-1].i32[3] < HIDWORD(v18))
      {
        v9->i64[0] = a2[-1].i64[1];
LABEL_38:
        a2[-1].i64[1] = v18;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    if (v14 >= v17)
    {
      goto LABEL_39;
    }

    v21 = v9->i64[0];
    v9->i64[0] = a2[-1].i64[1];
    a2[-1].i64[1] = v21;
    if (v9->i32[1] >= *(v13 + 1))
    {
      goto LABEL_39;
    }

    v22 = *v13;
    *v13 = v9->i64[0];
    v9->i64[0] = v22;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (v9[-1].i32[3] >= v9->i32[1])
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(v9->i64, a2->i64);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(v9, v41);
    v9 = (v41 + 1);
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>((v41 + 1), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = (v41 + 1);
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = v9->u32[3];
  v45 = a2[-1].u32[3];
  if (v44 < v9->i32[1])
  {
    v46 = v9->i64[0];
    if (v45 < v44)
    {
      goto LABEL_81;
    }

    v9->i64[0] = v9->i64[1];
    v9->i64[1] = v46;
    if (a2[-1].i32[3] >= HIDWORD(v46))
    {
      return result;
    }

    v9->i64[1] = a2[-1].i64[1];
LABEL_82:
    a2[-1].i64[1] = v46;
    return result;
  }

  if (v45 < v44)
  {
    v52 = v9->i64[1];
    v9->i64[1] = a2[-1].i64[1];
    a2[-1].i64[1] = v52;
    if (v9->i32[3] < v9->i32[1])
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

unint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(a2 + 1);
  LODWORD(v6) = *(a3 + 1);
  if (v5 >= *(result + 1))
  {
    if (v6 < v5)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if (*(a2 + 1) >= *(result + 1))
      {
        v6 = HIDWORD(v8);
      }

      else
      {
        v6 = *result;
        *result = *a2;
        *a2 = v6;
        LODWORD(v6) = *(a3 + 1);
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      LODWORD(v6) = *(a3 + 1);
      if (v6 < HIDWORD(v7))
      {
        *a2 = *a3;
        *a3 = v7;
        v6 = HIDWORD(v7);
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      v6 = HIDWORD(v7);
    }
  }

  if (*(a4 + 1) < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*(a3 + 1) < *(a2 + 1))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*(a2 + 1) < *(result + 1))
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*(a5 + 1) < *(a4 + 1))
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*(a4 + 1) < *(a3 + 1))
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*(a3 + 1) < *(a2 + 1))
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*(a2 + 1) < *(result + 1))
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = HIDWORD(*v4);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 8) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 4);
            v9 -= 8;
            if (v10 <= v8)
            {
              v11 = (result + v9 + 8);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(void *a1, void *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  if (*(a2 - 1) <= v3)
  {
    v7 = a1 + 1;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = *(v7++ + 1);
    }

    while (v8 <= v3);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 1);
      v6 = *(v4++ + 3);
    }

    while (v6 <= v3);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 1;
      v10 = *(a2-- - 1);
    }

    while (v10 > v3);
  }

  while (v5 < v9)
  {
    v11 = *v5;
    *v5 = *v9;
    *v9 = v11;
    do
    {
      v12 = *(v5 + 12);
      v5 += 8;
    }

    while (v12 <= v3);
    do
    {
      v13 = *(v9-- - 1);
    }

    while (v13 > v3);
  }

  if ((v5 - 8) != a1)
  {
    *a1 = *(v5 - 8);
  }

  *(v5 - 8) = v2;
  return v5;
}

uint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,std::__less<void,void> &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = HIDWORD(*a1);
  do
  {
    v5 = HIDWORD(a1[++v2]);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 1;
      v10 = *(a2-- - 1);
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 1);
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11++ + 3);
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12-- - 1);
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = v11 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u32[3];
      v5 = a2[-1].u32[3];
      if (v4 >= a1->i32[1])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[3] < a1->i32[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[3] >= HIDWORD(v3))
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v10 = a1->u32[3];
    v11 = a1->u32[1];
    LODWORD(v12) = a1[1].i32[1];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v19 = a1->u64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v19;
        v12 = HIDWORD(v19);
        if (v11 > HIDWORD(v20))
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = a1->i64[0];
    v14 = HIDWORD(a1->i64[0]);
    if (v12 >= v10)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (a2[-1].i32[3] < v12)
        {
          v31 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v31;
          if (a1[1].i32[1] < a1->i32[3])
          {
            v33 = a1->i64[1];
            v32 = a1[1].i64[0];
            a1->i64[1] = v32;
            a1[1].i64[0] = v33;
            if (a1->i32[1] > HIDWORD(v32))
            {
              v34 = a1->i64[0];
              a1->i64[0] = v32;
              a1->i64[1] = v34;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v13;
    LODWORD(v12) = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[3] < a1->i32[1])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1->u32[3];
  v7 = a1->u32[1];
  v8 = a1[1].u32[1];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v7 > HIDWORD(v16))
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v9 = a1->i64[0];
    if (v8 >= v6)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v9;
      if (v8 >= HIDWORD(v9))
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v9;
  }

LABEL_34:
  v22 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 1;
  while (1)
  {
    if (v22->i32[1] < v25->i32[1])
    {
      v26 = v22->i64[0];
      v27 = HIDWORD(v22->i64[0]);
      v28 = v23;
      while (1)
      {
        *(&a1[1].i64[1] + v28) = *(a1[1].i64 + v28);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(&a1->u32[3] + v28);
        v28 -= 8;
        if (v29 <= v27)
        {
          v30 = (a1 + v28 + 24);
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      v30->i64[0] = v26;
      if (++v24 == 8)
      {
        return &v22->u64[1] == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 = (v22 + 8);
    if (v22 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*(v12 + 1) < *(a1 + 1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v19;
          }

          else
          {
            v20 = *(v17 + 3);
            v21 = *(v17 + 5);
            v22 = v17 + 2;
            if (v20 >= v21)
            {
              v14 = v19;
            }

            else
            {
              v18 = v22;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = result + 8 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 4);
        v11 = *(v8 + 12);
        v8 += 8 * (v10 < v11);
        if (v10 < v11)
        {
          v7 = v9;
        }
      }

      if (*(v8 + 4) >= *(a4 + 1))
      {
        v12 = *a4;
        v13 = HIDWORD(*a4);
        do
        {
          v14 = a4;
          a4 = v8;
          *v14 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v15 = (2 * v7) | 1;
          v8 = result + 8 * v15;
          v16 = 2 * v7 + 2;
          if (v16 < a3)
          {
            v17 = *(v8 + 4);
            v18 = *(v8 + 12);
            v8 += 8 * (v17 < v18);
            if (v17 < v18)
            {
              v15 = v16;
            }
          }

          v7 = v15;
        }

        while (*(v8 + 4) >= v13);
        *a4 = v12;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 8 * v4;
    if (*(v5 + 4) < *(a2 - 4))
    {
      v8 = *(a2 - 8);
      v6 = (a2 - 8);
      v7 = v8;
      v9 = HIDWORD(v8);
      do
      {
        v10 = v6;
        v6 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 8 * v4;
      }

      while (*(v5 + 4) < v9);
      *v6 = v7;
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v126 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v80 = v10->i32[0];
        v10->i32[0] = a2[-1].i32[1];
LABEL_106:
        a2[-1].i32[1] = v80;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v83 = (v10 + 4);
      v85 = v10 == a2 || v83 == a2;
      if (a5)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v10;
          do
          {
            v89 = v87->i32[0];
            v88 = v87->u32[1];
            v87 = v83;
            if (result)
            {
              v90 = v87->i32[0];
              v91 = v86;
              while (1)
              {
                *(&v10->i32[1] + v91) = *(v10->i32 + v91);
                if (!v91)
                {
                  break;
                }

                v91 -= 4;
                if ((result & 1) == 0)
                {
                  v92 = (v10 + v91 + 4);
                  goto LABEL_128;
                }
              }

              v92 = v10;
LABEL_128:
              v92->i32[0] = v90;
            }

            v83 = (v87 + 4);
            v86 += 4;
          }

          while (&v87->u8[4] != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v121 = *v9;
          v120 = *(v9 + 4);
          v9 = v83;
          if (result)
          {
            v122 = *v9;
            v123 = v9;
            do
            {
              v124 = v123;
              v125 = *--v123;
              *v124 = v125;
            }

            while ((result & 1) != 0);
            *v123 = v122;
          }

          v83 = (v9 + 4);
        }

        while ((v9 + 4) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v93 = (v11 - 2) >> 1;
        v127 = v93;
        do
        {
          v94 = v93;
          if (v127 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = (v9 + 4 * v95);
            {
              ++v96;
              v95 = 2 * v94 + 2;
            }

            v97 = (v9 + 4 * v94);
            if ((result & 1) == 0)
            {
              v98 = *v97;
              do
              {
                v99 = v96;
                *v97 = *v96;
                if (v127 < v95)
                {
                  break;
                }

                v100 = (2 * v95) | 1;
                v96 = (v9 + 4 * v100);
                v101 = 2 * v95 + 2;
                {
                  ++v96;
                  v100 = v101;
                }

                v97 = v99;
                v95 = v100;
              }

              while (!result);
              *v99 = v98;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        v102 = v126;
        do
        {
          v103 = v102;
          v104 = 0;
          v128 = *v9;
          v105 = v9;
          do
          {
            v106 = &v105[v104];
            v107 = v106 + 1;
            v108 = (2 * v104) | 1;
            v109 = 2 * v104 + 2;
            if (v109 >= v11)
            {
              v104 = (2 * v104) | 1;
            }

            else
            {
              v111 = v106[2];
              v110 = v106 + 2;
              if (result)
              {
                v107 = v110;
                v104 = v109;
              }

              else
              {
                v104 = v108;
              }
            }

            *v105 = *v107;
            v105 = v107;
          }

          while (v104 <= ((v11 - 2) >> 1));
          v102 = (v103 - 4);
          if (v107 == &v103[-1].u8[4])
          {
            *v107 = v128;
          }

          else
          {
            *v107 = v102->i32[0];
            v102->i32[0] = v128;
            v112 = (v107 - v9 + 4) >> 2;
            v113 = v112 < 2;
            v114 = v112 - 2;
            if (!v113)
            {
              v115 = v114 >> 1;
              v116 = (v9 + 4 * (v114 >> 1));
              if (result)
              {
                v117 = *v107;
                do
                {
                  v118 = v116;
                  *v107 = *v116;
                  if (!v115)
                  {
                    break;
                  }

                  v115 = (v115 - 1) >> 1;
                  v116 = (v9 + 4 * v115);
                  v107 = v118;
                }

                while ((result & 1) != 0);
                *v118 = v117;
              }
            }
          }

          v113 = v11-- <= 2;
        }

        while (!v113);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = *(v9 + 4 * v12);
        if (v18)
        {
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          *(v9 + 4 * v12) = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        {
          v23 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v16;
        {
          v24 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      {
        v21 = *v9;
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = *(v9 + 4);
      if (v27)
      {
        *(v9 + 4) = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v28;
        {
          v32 = *(v9 + 4 * v25);
          *(v9 + 4 * v25) = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      {
        v30 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = *(v9 + 8);
      if (v35)
      {
        *(v9 + 8) = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v36;
        {
          v39 = *(v9 + 4 * v33);
          *(v9 + 4 * v33) = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      {
        v38 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v38;
      }
    }

    if (!v40)
    {
      v43 = *(v9 + 4 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v9 + 4 * v33);
      *(v9 + 4 * v12) = v44;
      *(v9 + 4 * v33) = v43;
      v43 = *(v9 + 4 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = v43;
      *(v9 + 4 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v9 + 4 * v25);
    if (v41)
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = v42;
      v43 = *(v9 + 4 * v12);
    }

    else
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = v42;
      v43 = *(v9 + 4 * v12);
      if (v47)
      {
        v46 = *(v9 + 4 * v33);
        *(v9 + 4 * v12) = v46;
        *(v9 + 4 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    *(v9 + 4 * v12) = v48;
LABEL_55:
    --a4;
    if (a5)
    {
      v49 = *v9;
LABEL_58:
      v51 = 0;
      do
      {
        v51 += 4;
      }

      while (v52);
      v53 = v9 + v51;
      v54 = a2;
      if (v51 == 4)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 4);
      }

      else
      {
        v57 = (v9 + v51);
        v58 = v54;
        do
        {
          v59 = v57->i32[0];
          v57->i32[0] = v58->i32[0];
          v58->i32[0] = v59;
          do
          {
            v60 = v57->u32[1];
            v57 = (v57 + 4);
          }

          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v126;
      }

      if (v62 != v9)
      {
        *v9 = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_79;
      }

      v10 = (v62 + 4);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_79:
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      v49 = *v9;
      if (v50)
      {
        goto LABEL_58;
      }

      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v9 + 4;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 4;
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      v79 = *a3;
      goto LABEL_167;
    }

    goto LABEL_10;
  }

  if (!v81)
  {
    if (!result)
    {
      return result;
    }

    v119 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v119;
    v79 = *a3;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_167:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v82 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v82;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v82;
    if (result)
    {
      v80 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_106;
    }
  }

  return result;
}

BOOL re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(a1 + 72);
  if (v5 <= a3)
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = v3;
    v20 = 2048;
    v21 = v5;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v3 = a2;
  if (v5 <= a2)
  {
    goto LABEL_8;
  }

  return *(*(a1 + 88) + 4 * a3) < *(*(a1 + 88) + 4 * a2);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::PlanarRegions::PlanarRegions(re::GeomMesh const&,char const*,float,float)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v16)
        {
          v18 = *a1;
          if (v17)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v18;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v18;
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v17)
        {
          return 1;
        }

        v23 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v23;
        v15 = *a3;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        v15 = *a3;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v20 = (a1 + 8);
  if (v19)
  {
    v22 = *a1;
    if (v21)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v22;
    }

    else
    {
      v27 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v22;
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v21)
  {
    v25 = *(a1 + 4);
    v24 = *(a1 + 8);
    v26 = *a1;
    *(a1 + 4) = v24;
    *(a1 + 8) = v25;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v28 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    {
      v31 = *v28;
      v32 = v29;
      while (1)
      {
        v33 = a1 + v32;
        *(a1 + v32 + 12) = *(a1 + v32 + 8);
        if (v32 == -8)
        {
          break;
        }

        v32 -= 4;
        {
          v34 = (a1 + v32 + 12);
          goto LABEL_40;
        }
      }

      v34 = a1;
LABEL_40:
      *v34 = v31;
      if (++v30 == 8)
      {
        return v28 + 1 == a2;
      }
    }

    v20 = v28;
    v29 += 4;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::anonymous namespace::PlanarRegions::plane(re::_anonymous_namespace_::PlanarRegions *this, uint64_t a2, unsigned int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (a3 >= this)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = this;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16 * a3);
}

re::GeomConnectivityManifold *re::GeomConnectivityManifold::GeomConnectivityManifold(re::GeomConnectivityManifold *this)
{
  *this = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  re::DynamicArray<re::BlendNode>::setCapacity(v2, 1uLL);
  v3 = *(this + 8);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 30) = 0;
  *(this + 66) = 1;
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 37) = 0;
  *this = 0;
  *(this + 3) = 0;
  *(this + 8) = v3 + 2;
  *(this + 8) = 0;
  *(this + 18) = 1;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 38) = 1;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 1;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 1;
  return this;
}

double re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addNew(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

{
  if (re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

uint64_t re::internal::PlaneDetector::build@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, re::GeomMesh *a4@<X8>)
{
  v191 = a3;
  v233 = *MEMORY[0x1E69E9840];
  v214 = 0;
  v211[0] = 0;
  v211[1] = 0;
  v210 = 0;
  v207[0] = 0;
  v207[1] = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  v205 = 0;
  v220 = 0u;
  memset(v219, 0, sizeof(v219));
  v10 = tan(0.174532925);
  *v216 = a1;
  *&v216[8] = re::GeomMesh::accessVertexPositions(a1);
  *&v216[16] = v11;
  v208 = 0;
  v209 = 1;
  re::DynamicArray<unsigned int>::resize(v207, *(a1 + 40), &re::kInvalidMeshIndex);
  v212 = 0;
  v213 = 1;
  v12 = *(a1 + 40);
  LODWORD(v228) = 0;
  re::DynamicArray<float>::resize(v211, v12, &v228, v13);
  v194 = a1;
  v14 = *(a1 + 40);
  if (!*(a1 + 40))
  {
    goto LABEL_31;
  }

  v15 = 0;
  v5 = 0;
  v16 = 1.0 / v10;
  v195 = 1.0 / *&a2;
  do
  {
    re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(v216, v15);
    v19.i64[0] = v17;
    v19.i64[1] = v18;
    v20 = vmulq_f32(v19, v19);
    v21 = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    a1 = v212;
    if (v21 > 0.0)
    {
      if (v212 <= v15)
      {
        goto LABEL_166;
      }

      v200 = vmulq_n_f32(v19, 1.0 / v21);
      *(v214 + 4 * v15) = v21;
      re::internal::FaceEvaluator::computeFaceCentroid(v216, v15);
      v23.i64[0] = v22;
      v23.i64[1] = v24;
      v25 = vmulq_f32(v200, v23);
      v26 = v25.f32[2] + vaddv_f32(*v25.f32);
      v4 = ((((roundf(vmuls_lane_f32(v16, *v200.f32, 1)) * 93310000.0) + (roundf(v16 * v200.f32[0]) * 269430000.0)) + (roundf(vmuls_lane_f32(v16, v200, 2)) * 775160.0)) + (roundf(-(v26 * v195)) * 74831.0));
      *&v224 = v4;
      v28.f64[0] = v200.f32[2];
      v29.f64[0] = v21;
      v30 = vmulq_n_f64(vcvtq_f64_f32(*v200.f32), v21);
      v31 = vmulq_f64(v29, v28);
      v32 = -(v26 * v21);
      if (v27 == -1)
      {
        v192 = v31;
        v193 = v30;
        v198 = v29.f64[0];
        v36 = vnegq_f32(v200);
        if (v37 == -1)
        {
          LODWORD(v228) = v5;
          *(&v228 + 1) = v198;
          *&v229 = v32;
          v230 = v193;
          v231 = v192;
          if (v41 == -1)
          {
          }

          else
          {
            v42 = (*(&v219[0] + 1) + 80 * v41);
            v42[1] = v228;
            v42[2] = v229;
            v42[3] = v230;
            v42[4] = v231;
          }

          a1 = v208;
          if (v208 <= v15)
          {
            goto LABEL_242;
          }

          v40 = v5;
          v5 = (v5 + 1);
          goto LABEL_13;
        }

        v33 = *(&v219[0] + 1) + 80 * v37;
        v38 = vsubq_f64(*(v33 + 64), v192);
        *(v33 + 48) = vsubq_f64(*(v33 + 48), v193);
        *(v33 + 64) = v38;
        v39 = *(v33 + 32) - v32;
        *(v33 + 24) = *(v33 + 24) + v198;
        *(v33 + 32) = v39;
        a1 = v208;
        if (v208 <= v15)
        {
          goto LABEL_234;
        }
      }

      else
      {
        v33 = *(&v219[0] + 1) + 80 * v27;
        v34 = vaddq_f64(v31, *(v33 + 64));
        *(v33 + 48) = vaddq_f64(v30, *(v33 + 48));
        *(v33 + 64) = v34;
        v35 = *(v33 + 32) + v32;
        *(v33 + 24) = *(v33 + 24) + v29.f64[0];
        *(v33 + 32) = v35;
        a1 = v208;
        if (v208 <= v15)
        {
          goto LABEL_182;
        }
      }

      v40 = *(v33 + 16);
LABEL_13:
      *(v210 + 4 * v15) = v40;
      goto LABEL_14;
    }

    if (v212 <= v15)
    {
      goto LABEL_166;
    }

    *(v214 + 4 * v15) = v21;
LABEL_14:
    ++v15;
  }

  while (v14 != v15);
  v43 = *(&v219[1] + 1);
  v14 = v204;
  if (v204 >= *(&v219[1] + 1))
  {
    if (v204 > *(&v219[1] + 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v203 < *(&v219[1] + 1))
    {
      re::DynamicArray<re::RigSplineIKJoint>::setCapacity(&v202, *(&v219[1] + 1));
      v14 = v204;
    }

    if (v43 > v14)
    {
      v44 = 80 * (v43 - v14);
      if (v44 >= 1)
      {
        v45 = v206 + 80 * v14;
        v46 = v44 / 0x50uLL + 1;
        do
        {
          *(v45 + 64) = 0;
          *(v45 + 32) = 0uLL;
          *(v45 + 48) = 0uLL;
          *v45 = 0uLL;
          *(v45 + 16) = 0uLL;
          v45 += 80;
          --v46;
        }

        while (v46 > 1);
      }
    }

LABEL_30:
    v204 = v43;
    ++v205;
    v14 = v43;
  }

LABEL_31:
  *v225 = v219;
  if (*&v219[1] >= 0x10uLL)
  {
    v47 = 0;
    v48 = *&v219[0];
    v49 = *&v219[1] >> 4;
    while (1)
    {
      v50 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v48), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v50 != 0xFFFFLL)
      {
        break;
      }

      v47 -= 16;
      ++v48;
      if (!--v49)
      {
        goto LABEL_40;
      }
    }

    v51 = __clz(__rbit64(v50 ^ 0xFFFFLL));
    v52 = v51 - v47;
    *&v225[8] = v50 ^ 0xFFFFLL;
    *&v225[16] = v51 - v47;
    if (v51 + 1 != v47)
    {
      while (1)
      {
        v53 = *(*v225 + 8) + 80 * v52;
        v55 = *(v53 + 16);
        v54 = (v53 + 16);
        v15 = v55;
        if (v14 <= v55)
        {
          break;
        }

        v57 = v54[2];
        v56 = v54[3];
        v58 = vmulq_f64(v56, v56);
        v58.f64[0] = 1.0 / sqrt(v58.f64[0] + vaddvq_f64(vmulq_f64(v57, v57)));
        v59 = v54->f64[1];
        *&v56.f64[0] = *&vmulq_f64(v56, v58);
        v56.f64[1] = v54[1].f64[0] / v59;
        *(v206 + 80 * v15) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v57, v58.f64[0])), v56);
        v14 = v204;
        if (v204 <= v15)
        {
          goto LABEL_230;
        }

        *(v206 + 80 * v15 + 64) = v59;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v225);
        v52 = *&v225[16];
        if (*&v225[16] == -1)
        {
          goto LABEL_40;
        }
      }

LABEL_226:
      *&v224 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v175 = MEMORY[0x1E69E9C10];
      v176 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v221 = 136315906;
      *&v221[4] = "operator[]";
      *&v221[12] = 1024;
      if (v176)
      {
        v177 = 3;
      }

      else
      {
        v177 = 2;
      }

      *&v221[14] = 789;
      *&v221[18] = 2048;
      *&v221[20] = v15;
      v222 = 2048;
      *v223 = v14;
      _os_log_send_and_compose_impl(v177, &v224, &v228, 80, &dword_1E1C61000, v175, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_230:
      *&v224 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v178 = MEMORY[0x1E69E9C10];
      v179 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v221 = 136315906;
      *&v221[4] = "operator[]";
      *&v221[12] = 1024;
      if (v179)
      {
        v180 = 3;
      }

      else
      {
        v180 = 2;
      }

      *&v221[14] = 789;
      *&v221[18] = 2048;
      *&v221[20] = v15;
      v222 = 2048;
      *v223 = v14;
      _os_log_send_and_compose_impl(v180, &v224, &v228, 80, &dword_1E1C61000, v178, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_234:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v181 = MEMORY[0x1E69E9C10];
      v182 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v221 = 136315906;
      *&v221[4] = "operator[]";
      *&v221[12] = 1024;
      if (v182)
      {
        v183 = 3;
      }

      else
      {
        v183 = 2;
      }

      *&v221[14] = 789;
      *&v221[18] = 2048;
      *&v221[20] = v15;
      v222 = 2048;
      *v223 = a1;
      _os_log_send_and_compose_impl(v183, v225, &v228, 80, &dword_1E1C61000, v181, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_238:
      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v184 = MEMORY[0x1E69E9C10];
      v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v185)
      {
        v186 = 3;
      }

      else
      {
        v186 = 2;
      }

      *(v219 + 14) = 789;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = v6;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = a1;
      _os_log_send_and_compose_impl(v186, v221, &v228, 80, &dword_1E1C61000, v184, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_242:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v187 = MEMORY[0x1E69E9C10];
      v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v221 = 136315906;
      *&v221[4] = "operator[]";
      *&v221[12] = 1024;
      if (v188)
      {
        v189 = 3;
      }

      else
      {
        v189 = 2;
      }

      *&v221[14] = 789;
      *&v221[18] = 2048;
      *&v221[20] = v15;
      v222 = 2048;
      *v223 = a1;
      _os_log_send_and_compose_impl(v189, v225, &v228, 80, &dword_1E1C61000, v187, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_40:
  *&v218[2] = 0;
  memset(v216, 0, sizeof(v216));
  re::DynamicArray<float>::resize(v216, *(v194 + 10));
  v60 = *&v218[2];
  v61 = *&v216[16];
  v62 = (*&v218[2] + 4 * *&v216[16]);
  if (*&v216[16])
  {
    v63 = 0;
    v64 = (*&v216[16] + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v65 = v64 - ((*&v216[16] + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v66 = vdupq_n_s64(v64);
    v67 = (*&v218[2] + 8);
    do
    {
      v68 = vdupq_n_s64(v63);
      v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_1E3049620)));
      if (vuzp1_s16(v69, *v66.i8).u8[0])
      {
        *(v67 - 2) = v63;
      }

      if (vuzp1_s16(v69, *&v66).i8[2])
      {
        *(v67 - 1) = v63 + 1;
      }

      if (vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_1E3049640)))).i32[1])
      {
        *v67 = v63 + 2;
        v67[1] = v63 + 3;
      }

      v63 += 4;
      v67 += 4;
    }

    while (v65 != v63);
  }

  v201 = a4;
  v70 = *(&a2 + 1);
  *&v228 = v207;
  v71 = 126 - 2 * __clz(v61);
  if (v61)
  {
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  v73 = re::GeomMesh::accessVertexPositions(v194);
  v76 = *(v194 + 10);
  if (!v76)
  {
    goto LABEL_88;
  }

  v15 = v73;
  a2 = v74;
  v77 = 0;
  v78 = &v224;
  do
  {
    a4 = v77;
    v4 = *&v216[16];
    if (*&v216[16] <= v77)
    {
      goto LABEL_214;
    }

    v5 = *&v218[2] + 4 * v77;
    a1 = *v5;
    v14 = v208;
    if (v208 <= a1)
    {
LABEL_218:
      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v169 = MEMORY[0x1E69E9C10];
      v170 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v170)
      {
        v171 = 3;
      }

      else
      {
        v171 = 2;
      }

      *(v219 + 14) = 797;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = a1;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = v14;
      _os_log_send_and_compose_impl(v171, v221, &v228, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_222:
      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v172 = MEMORY[0x1E69E9C10];
      v173 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v173)
      {
        v174 = 3;
      }

      else
      {
        v174 = 2;
      }

      *(v219 + 14) = 789;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = v6;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = a1;
      _os_log_send_and_compose_impl(v174, v221, &v228, 80, &dword_1E1C61000, v172, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
      goto LABEL_226;
    }

    v6 = *(v210 + 4 * a1);
    a1 = v204;
    if (v204 < v6)
    {
      break;
    }

    if (v77 < v76)
    {
      v79 = v77;
      while (*&v216[16] != v79)
      {
        v80 = *(*&v218[2] + 4 * v79);
        if (v208 <= v80)
        {
          goto LABEL_158;
        }

        if (*(v210 + 4 * v80) != v6)
        {
          v77 = v79;
          goto LABEL_65;
        }

        if (v76 == ++v79)
        {
          v77 = v76;
          goto LABEL_65;
        }
      }

      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      *(v219 + 14) = 789;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = v4;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = v4;
      _os_log_send_and_compose_impl(v124, v221, &v228, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_158:
      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      a1 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      *(v219 + 14) = 797;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = v80;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = v14;
      _os_log_send_and_compose_impl(v126, v221, &v228, 80, &dword_1E1C61000, a1, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_162:
      *&v224 = 0;
      v231 = v86;
      v232 = v86;
      v229 = v86;
      v230 = v86;
      v228 = v86;
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v225 = 136315906;
      *&v225[4] = "operator[]";
      *&v225[12] = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      *&v225[14] = 797;
      *&v225[18] = 2048;
      *&v225[20] = v14;
      v226 = 2048;
      v227 = v4;
      _os_log_send_and_compose_impl(v129, &v224, &v228, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_166:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v221 = 136315906;
      *&v221[4] = "operator[]";
      *&v221[12] = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      *&v221[14] = 789;
      *&v221[18] = 2048;
      *&v221[20] = v15;
      v222 = 2048;
      *v223 = a1;
      _os_log_send_and_compose_impl(v132, v225, &v228, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
      goto LABEL_170;
    }

LABEL_65:
    if (v204 <= v6)
    {
      goto LABEL_222;
    }

    v81 = v206 + 80 * v6;
    v83 = *(v81 + 64);
    v82 = (v81 + 64);
    v75.n128_f64[0] = v83;
    *(v82 - 2) = 0u;
    *(v82 - 1) = 0u;
    *(v82 - 3) = 0u;
    if (v83 <= v70)
    {
      *v82 = 0;
      a4 = v194;
      goto LABEL_87;
    }

    *&v223[2] = 0;
    memset(v221, 0, sizeof(v221));
    v85 = v77 - a4;
    v84 = v77 == a4;
    a4 = v194;
    if (v84)
    {
      goto LABEL_79;
    }

    re::DynamicArray<re::Quaternion<float>>::setCapacity(v221, 2 * v85);
    a1 = v5 + 4 * v85;
    do
    {
      v14 = *v5;
      v86 = 0uLL;
      v220 = 0u;
      memset(v219, 0, sizeof(v219));
      v4 = *(v194 + 5);
      if (v4 <= v14)
      {
        goto LABEL_162;
      }

      v87 = 0;
      v224 = *(*(v194 + 7) + 16 * v14);
      if (HIDWORD(v224) == -1)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      v88 = v219;
      do
      {
        v89 = *&v225[4 * v87 - 16];
        if (v89 >= a2)
        {
          v215 = 0;
          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          v228 = 0u;
          v113 = MEMORY[0x1E69E9C10];
          v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v225 = 136315906;
          *&v225[4] = "operator[]";
          *&v225[12] = 1024;
          if (v114)
          {
            v115 = 3;
          }

          else
          {
            v115 = 2;
          }

          *&v225[14] = 613;
          *&v225[18] = 2048;
          *&v225[20] = v89;
          v226 = 2048;
          v227 = a2;
          _os_log_send_and_compose_impl(v115, &v215, &v228, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v225, 38, v190, v191);
          _os_crash_msg();
          __break(1u);
LABEL_117:
          v4 = v109;
          goto LABEL_119;
        }

        *v88++ = *(v15 + 16 * v89);
        ++v87;
      }

      while (v14 != v87);
      v90 = v219;
      do
      {
        v75 = re::DynamicArray<re::Vector3<float>>::add(v221, v90++);
        --v14;
      }

      while (v14);
      v5 += 4;
    }

    while (v5 != a1);
LABEL_79:
    MEMORY[0x1E69070C0](*&v221[16], *&v223[2], v75);
    if (*v221 && *&v223[2])
    {
      v197 = v91;
      v199 = v75;
      v196 = v92;
      (*(**v221 + 40))();
      v92 = v196;
      v91 = v197;
      v75 = v199;
    }

    a1 = v204;
    if (v204 <= v6)
    {
      goto LABEL_238;
    }

    v93 = vmulq_f32(v75, v75);
    v94 = vmulq_f32(v91, v91);
    v95 = v206 + 80 * v6;
    if (*(v95 + 64) >= ((sqrtf(v94.f32[2] + vaddv_f32(*v94.f32)) * (sqrtf(v93.f32[2] + vaddv_f32(*v93.f32)) * 4.0)) * 0.25))
    {
      *(v95 + 16) = v75;
      *(v95 + 32) = v91;
      *(v95 + 48) = v92;
    }

    else
    {
      *(v95 + 64) = 0;
    }

LABEL_87:
    v76 = *(a4 + 10);
  }

  while (v77 < v76);
LABEL_88:
  if (*v216 && *&v218[2])
  {
    (*(**v216 + 40))();
  }

  a2 = v204;
  *&v219[2] = 0;
  memset(v219, 0, 28);
  re::DynamicArray<float>::resize(v219, v204);
  v96 = *&v219[2];
  v97 = *&v219[1];
  v98 = (*&v219[2] + 4 * *&v219[1]);
  v78 = v201;
  if (*&v219[1])
  {
    v99 = 0;
    v100 = (*&v219[1] + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v101 = v100 - ((*&v219[1] + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v102 = vdupq_n_s64(v100);
    v103 = (*&v219[2] + 8);
    do
    {
      v104 = vdupq_n_s64(v99);
      v105 = vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1E3049620)));
      if (vuzp1_s16(v105, *v102.i8).u8[0])
      {
        *(v103 - 2) = v99;
      }

      if (vuzp1_s16(v105, *&v102).i8[2])
      {
        *(v103 - 1) = v99 + 1;
      }

      if (vuzp1_s16(*&v102, vmovn_s64(vcgeq_u64(v102, vorrq_s8(v104, xmmword_1E3049640)))).i32[1])
      {
        *v103 = v99 + 2;
        v103[1] = v99 + 3;
      }

      v99 += 4;
      v103 += 4;
    }

    while (v101 != v99);
  }

  *&v228 = &v202;
  v106 = 126 - 2 * __clz(v97);
  if (v97)
  {
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,re::internal::PlaneDetector::build(re::GeomMesh const&,re::internal::PlaneDetector::Options)::$_0 &,unsigned int *,false>(v96, v98, &v228, v107, 1);
  *&v223[2] = 0;
  memset(v221, 0, sizeof(v221));
  re::DynamicArray<unsigned int>::resize(v221, a2, &re::kInvalidMeshIndex);
  v4 = 0;
  v108 = *&v219[1];
  if (*&v219[1])
  {
    a4 = v194;
    if (v191)
    {
      v109 = 0;
      v110 = *&v219[2];
      v14 = v204;
      v111 = v206;
      if (*&v219[1] >= v191)
      {
        v108 = v191;
      }

      v15 = *&v221[16];
      v112 = *&v223[2];
      while (1)
      {
        a1 = *(v110 + 4 * v109);
        if (v14 <= a1)
        {
          break;
        }

        if (*(v111 + 80 * a1 + 64) <= v70)
        {
          goto LABEL_117;
        }

        if (v15 <= a1)
        {
          goto LABEL_206;
        }

        v4 = v109 + 1;
        *(v112 + 4 * a1) = v109;
        v109 = v4;
        if (v4 >= v108)
        {
          goto LABEL_119;
        }
      }

LABEL_202:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v157 = MEMORY[0x1E69E9C10];
      v158 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v216 = 136315906;
      *&v216[4] = "operator[]";
      *&v216[12] = 1024;
      if (v158)
      {
        v159 = 3;
      }

      else
      {
        v159 = 2;
      }

      *&v216[14] = 789;
      *&v216[18] = 2048;
      *&v216[20] = a1;
      v217 = 2048;
      *v218 = v14;
      _os_log_send_and_compose_impl(v159, v225, &v228, 80, &dword_1E1C61000, v157, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_206:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v160 = MEMORY[0x1E69E9C10];
      v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v216 = 136315906;
      *&v216[4] = "operator[]";
      *&v216[12] = 1024;
      if (v161)
      {
        v162 = 3;
      }

      else
      {
        v162 = 2;
      }

      *&v216[14] = 789;
      *&v216[18] = 2048;
      *&v216[20] = a1;
      v217 = 2048;
      *v218 = v15;
      _os_log_send_and_compose_impl(v162, v225, &v228, 80, &dword_1E1C61000, v160, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_210:
      *v225 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v163 = MEMORY[0x1E69E9C10];
      v164 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v216 = 136315906;
      *&v216[4] = "operator[]";
      *&v216[12] = 1024;
      if (v164)
      {
        v165 = 3;
      }

      else
      {
        v165 = 2;
      }

      *&v216[14] = 789;
      *&v216[18] = 2048;
      *&v216[20] = v14;
      v217 = 2048;
      *v218 = a1;
      _os_log_send_and_compose_impl(v165, v225, &v228, 80, &dword_1E1C61000, v163, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v221 = 0;
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v228 = 0u;
      v166 = MEMORY[0x1E69E9C10];
      v167 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v219[0]) = 136315906;
      *(v219 + 4) = "operator[]";
      WORD6(v219[0]) = 1024;
      if (v167)
      {
        v168 = 3;
      }

      else
      {
        v168 = 2;
      }

      *(v219 + 14) = 789;
      WORD1(v219[1]) = 2048;
      *(&v219[1] + 4) = a4;
      WORD6(v219[1]) = 2048;
      *(&v219[1] + 14) = v4;
      _os_log_send_and_compose_impl(v168, v221, &v228, 80, &dword_1E1C61000, v166, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v219, 38, v190, v191);
      _os_crash_msg();
      __break(1u);
      goto LABEL_218;
    }
  }

  else
  {
    a4 = v194;
  }

LABEL_119:
  *(v78 + 2) = 0u;
  v15 = v78 + 32;
  *v78 = 0;
  *(v78 + 1) = 0;
  *(v78 + 6) = 0;
  *(v78 + 2) = 0;
  *(v78 + 7) = 0u;
  *(v78 + 19) = 0;
  *(v78 + 3) = 0u;
  *(v78 + 16) = 0;
  *(v78 + 72) = 0u;
  *(v78 + 88) = 0u;
  *(v78 + 26) = 0;
  *(v78 + 8) = 0u;
  *(v78 + 36) = 0;
  re::DynamicArray<re::Vector4<float>>::resize(v78 + 80, v4);
  re::DynamicArray<re::Matrix3x3<float>>::resize(v78 + 120, v4);
  if (a2)
  {
    v14 = 0;
    v116 = 16;
    while (1)
    {
      a1 = *&v221[16];
      if (*&v221[16] <= v14)
      {
        break;
      }

      v5 = *(*&v223[2] + 4 * v14);
      if (v5 < v4)
      {
        a1 = v204;
        if (v204 <= v14)
        {
          goto LABEL_186;
        }

        a1 = *(v78 + 12);
        if (a1 <= v5)
        {
          goto LABEL_190;
        }

        *(*(v78 + 14) + 16 * v5) = *(v206 + v116 - 16);
        a1 = v204;
        if (v204 <= v14)
        {
          goto LABEL_194;
        }

        a1 = *(v78 + 17);
        if (a1 <= v5)
        {
          goto LABEL_198;
        }

        v117 = (*(v78 + 19) + 48 * v5);
        v118 = *(v206 + v116);
        v119 = *(v206 + v116 + 32);
        v117[1] = *(v206 + v116 + 16);
        v117[2] = v119;
        *v117 = v118;
      }

      ++v14;
      v116 += 80;
      if (a2 == v14)
      {
        goto LABEL_129;
      }
    }

LABEL_170:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v133 = MEMORY[0x1E69E9C10];
    v134 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v134)
    {
      v135 = 3;
    }

    else
    {
      v135 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v14;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v135, v225, &v228, 80, &dword_1E1C61000, v133, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_174:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v136 = MEMORY[0x1E69E9C10];
    v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v137)
    {
      v138 = 3;
    }

    else
    {
      v138 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v14;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v138, v225, &v228, 80, &dword_1E1C61000, v136, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_178:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v139 = MEMORY[0x1E69E9C10];
    v140 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v140)
    {
      v141 = 3;
    }

    else
    {
      v141 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = a1;
    v217 = 2048;
    *v218 = a2;
    _os_log_send_and_compose_impl(v141, v225, &v228, 80, &dword_1E1C61000, v139, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_182:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v142 = MEMORY[0x1E69E9C10];
    v143 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v221 = 136315906;
    *&v221[4] = "operator[]";
    *&v221[12] = 1024;
    if (v143)
    {
      v144 = 3;
    }

    else
    {
      v144 = 2;
    }

    *&v221[14] = 789;
    *&v221[18] = 2048;
    *&v221[20] = v15;
    v222 = 2048;
    *v223 = a1;
    _os_log_send_and_compose_impl(v144, v225, &v228, 80, &dword_1E1C61000, v142, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v221, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_186:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v145 = MEMORY[0x1E69E9C10];
    v146 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v146)
    {
      v147 = 3;
    }

    else
    {
      v147 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v14;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v147, v225, &v228, 80, &dword_1E1C61000, v145, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_190:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v148 = MEMORY[0x1E69E9C10];
    v149 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v149)
    {
      v150 = 3;
    }

    else
    {
      v150 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v5;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v150, v225, &v228, 80, &dword_1E1C61000, v148, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_194:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v151 = MEMORY[0x1E69E9C10];
    v152 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v152)
    {
      v153 = 3;
    }

    else
    {
      v153 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v14;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v153, v225, &v228, 80, &dword_1E1C61000, v151, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
LABEL_198:
    *v225 = 0;
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v228 = 0u;
    v154 = MEMORY[0x1E69E9C10];
    v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v216 = 136315906;
    *&v216[4] = "operator[]";
    *&v216[12] = 1024;
    if (v155)
    {
      v156 = 3;
    }

    else
    {
      v156 = 2;
    }

    *&v216[14] = 789;
    *&v216[18] = 2048;
    *&v216[20] = v5;
    v217 = 2048;
    *v218 = a1;
    _os_log_send_and_compose_impl(v156, v225, &v228, 80, &dword_1E1C61000, v154, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v216, 38, v190, v191);
    _os_crash_msg();
    __break(1u);
    goto LABEL_202;
  }

LABEL_129:
  re::DynamicArray<unsigned char>::resize(v78, *(a4 + 10), re::internal::PlaneDetector::kNoPlane);
  v120 = *(a4 + 10);
  if (v120)
  {
    v14 = 0;
    do
    {
      a1 = v208;
      if (v208 <= v14)
      {
        goto LABEL_174;
      }

      a1 = *(v210 + 4 * v14);
      if (a1 != -1)
      {
        a2 = *&v221[16];
        if (*&v221[16] <= a1)
        {
          goto LABEL_178;
        }

        v121 = *(*&v223[2] + 4 * a1);
        if (v121 != -1)
        {
          a1 = *(v78 + 2);
          if (a1 <= v14)
          {
            goto LABEL_210;
          }

          *(*v15 + v14) = v121;
          v120 = *(a4 + 10);
        }
      }
    }

    while (++v14 < v120);
  }

  re::DynamicArray<re::RigComponentConstraint>::operator=(v78 + 40, v211);
  if (*v221 && *&v223[2])
  {
    (*(**v221 + 40))();
  }

  if (*&v219[0] && *&v219[2])
  {
    (*(**&v219[0] + 40))();
  }

  if (v202 && v206)
  {
    (*(*v202 + 40))();
  }

  if (v207[0] && v210)
  {
    (*(*v207[0] + 40))();
  }

  result = v211[0];
  if (v211[0] && v214)
  {
    return (*(*v211[0] + 40))();
  }

  return result;
}

void *re::DynamicArray<unsigned char>::resize(void *result, unint64_t a2, char *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<BOOL>::setCapacity(result, a2);
      v5 = v4[2];
    }

    if (v5 < a2)
    {
      v7 = *a3;
      do
      {
        *(v4[4] + v5++) = v7;
      }

      while (a2 != v5);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

uint64_t re::internal::PlaneDetector::removePlaneSubset(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v56[1] = 0;
  v57 = 0;
  v56[0] = 0;
  v58 = 0;
  v8 = *(a1 + 96);
  LOBYTE(v72) = 1;
  re::DynamicArray<unsigned char>::resize(v56, v8, &v72);
  v10 = *(a1 + 96);
  if (v10)
  {
    v3 = 0;
    while (v3 != 256)
    {
      v4 = v57;
      if (v57 <= v3)
      {
        goto LABEL_45;
      }

      *(v59 + v3) = v3;
      ++v3;
      v10 = *(a1 + 96);
      if (v3 >= v10)
      {
        goto LABEL_6;
      }
    }

    re::internal::assertLog(5, v9, "assertion failure: '%s' (%s:line %i) index (%zu) too large for unsigned 8-bit integer", "!overflow", "removePlaneSubset", 271, 256);
    _os_crash("assertion failure: (!overflow) index (%zu) too large for unsigned 8-bit integer", v48);
    __break(1u);
LABEL_45:
    v51 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    *&v61[14] = 789;
    *&v61[18] = 2048;
    *&v61[20] = v3;
    v62 = 2048;
    *v63 = v4;
    _os_log_send_and_compose_impl(v29, &v51, &v72, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v51 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *&v61[14] = 789;
    *&v61[18] = 2048;
    *&v61[20] = v3;
    v62 = 2048;
    *v63 = v4;
    _os_log_send_and_compose_impl(v32, &v51, &v72, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v51 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    *&v61[14] = 789;
    *&v61[18] = 2048;
    *&v61[20] = a3;
    v62 = 2048;
    *v63 = a2;
    _os_log_send_and_compose_impl(v35, &v51, &v72, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v60 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "operator[]";
    v66 = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    v67 = 789;
    v68 = 2048;
    v69 = a3;
    v70 = 2048;
    v71 = v4;
    _os_log_send_and_compose_impl(v38, &v60, &v72, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v51 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *&v61[14] = 789;
    *&v61[18] = 2048;
    *&v61[20] = v3;
    v62 = 2048;
    *v63 = v4;
    _os_log_send_and_compose_impl(v41, &v51, &v72, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_65:
    v60 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v64 = 136315906;
    v65 = "operator[]";
    v66 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v67 = 789;
    v68 = 2048;
    v69 = a3;
    v70 = 2048;
    v71 = v4;
    _os_log_send_and_compose_impl(v44, &v60, &v72, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v64, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
LABEL_69:
    v51 = 0;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v72 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v61 = 136315906;
    *&v61[4] = "operator[]";
    *&v61[12] = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    *&v61[14] = 789;
    *&v61[18] = 2048;
    *&v61[20] = a2;
    v62 = 2048;
    *v63 = v3;
    _os_log_send_and_compose_impl(v47, &v51, &v72, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v49, v50);
    _os_crash_msg();
    __break(1u);
  }

LABEL_6:
  if (a3)
  {
    do
    {
      v3 = *a2;
      v4 = v57;
      if (v57 <= v3)
      {
        goto LABEL_49;
      }

      *(v59 + v3) = -1;
      ++a2;
      --a3;
    }

    while (a3);
    v10 = *(a1 + 96);
  }

  a3 = 0;
  if (v10)
  {
    v11 = 0;
    do
    {
      a2 = v57;
      if (v57 <= a3)
      {
        goto LABEL_53;
      }

      if (*(v59 + a3) != 255)
      {
        *(v59 + a3) = v11++;
        v10 = *(a1 + 96);
      }

      ++a3;
    }

    while (a3 < v10);
    a3 = v11;
  }

  if (*(a1 + 16))
  {
    a2 = 0;
    do
    {
      v12 = *(a1 + 32);
      v3 = *(v12 + a2);
      if (v3 == 255)
      {
        goto LABEL_22;
      }

      v4 = v57;
      if (v57 <= v3)
      {
        goto LABEL_61;
      }

      v13 = *(v59 + v3);
      *(v12 + a2) = v13;
      if (v13 == 255)
      {
LABEL_22:
        v3 = *(a1 + 56);
        if (v3 <= a2)
        {
          goto LABEL_69;
        }

        *(*(a1 + 72) + 4 * a2) = 0;
      }

      ++a2;
    }

    while (a2 < *(a1 + 16));
  }

  *&v63[2] = 0;
  memset(v61, 0, sizeof(v61));
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  v54 = 0;
  if (a3)
  {
    re::DynamicArray<re::Vector4<float>>::setCapacity(v61, a3);
    re::DynamicArray<re::Matrix3x3<float>>::setCapacity(&v51, a3);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    a2 = 0;
    v3 = 0;
    a3 = 0;
    do
    {
      v4 = v57;
      if (v57 <= a3)
      {
        goto LABEL_57;
      }

      if (*(v59 + a3) != 255)
      {
        re::DynamicArray<re::Vector4<float>>::add(v61, (*(a1 + 112) + a2));
        v4 = *(a1 + 136);
        if (v4 <= a3)
        {
          goto LABEL_65;
        }

        re::DynamicArray<re::Matrix3x3<float>>::add(&v51, *(a1 + 152) + v3);
        v14 = *(a1 + 96);
      }

      ++a3;
      v3 += 48;
      a2 += 16;
    }

    while (a3 < v14);
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 80) = *v61;
  v17 = *&v61[8];
  *v61 = v15;
  *&v61[8] = v16;
  *(a1 + 88) = v17;
  *&v61[16] = v14;
  v18 = *&v63[2];
  v19 = *(a1 + 120);
  *&v63[2] = *(a1 + 112);
  ++*&v61[24];
  ++*(a1 + 104);
  v20 = v51;
  v21 = v52;
  *(a1 + 112) = v18;
  *(a1 + 120) = v20;
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v51 = v19;
  v52 = v22;
  v24 = v53;
  *(a1 + 128) = v21;
  *(a1 + 136) = v24;
  v53 = v23;
  v25 = *(a1 + 152);
  *(a1 + 152) = v55;
  v55 = v25;
  ++v54;
  ++*(a1 + 144);
  if (v19 && v25)
  {
    (*(*v19 + 40))(v19);
    v15 = *v61;
  }

  if (v15 && *&v63[2])
  {
    (*(*v15 + 40))(v15);
  }

  result = v56[0];
  if (v56[0])
  {
    if (v59)
    {
      return (*(*v56[0] + 40))();
    }
  }

  return result;
}

void *re::DynamicArray<float>::resize(void *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = result;
  v6 = result[2];
  if (v6 >= a2)
  {
    if (v6 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<int>::setCapacity(result, a2);
      v6 = v5[2];
    }

    v8 = a2 - v6;
    if (a2 > v6)
    {
      v9 = 0;
      a4.i32[0] = *a3;
      v10 = vdupq_n_s64(v8 - 1);
      v11 = (v5[4] + 4 * v6 + 8);
      do
      {
        v12 = vdupq_n_s64(v9);
        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049620)));
        if (vuzp1_s16(v13, a4).u8[0])
        {
          *(v11 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v13, a4).i8[2])
        {
          *(v11 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_1E3049640)))).i32[1])
        {
          *v11 = a4.i32[0];
          v11[1] = a4.i32[0];
        }

        v9 += 4;
        v11 += 4;
      }

      while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v9);
    }
  }

  v5[2] = a2;
  ++*(v5 + 6);
  return result;
}

double re::internal::FaceEvaluator::computeFaceCentroid(re::internal::FaceEvaluator *this, unsigned int a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*this + 40);
  if (v6 <= a2)
  {
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v19 = MEMORY[0x1E69E9C10];
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v38 = 797;
    v39 = 2048;
    v40 = v5;
    v41 = 2048;
    v42 = v6;
    _os_log_send_and_compose_impl(v20, &v34, &v43, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = (*(*this + 56) + 16 * a2);
  v6 = *v7;
  v5 = *(this + 4);
  if (v5 <= v6)
  {
LABEL_14:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v38 = 613;
    v39 = 2048;
    v40 = v6;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v23, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v3 = v7[1];
  if (v5 <= v3)
  {
LABEL_18:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v38 = 613;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v26, &v34, &v43, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v4 = v7[2];
  if (v5 <= v4)
  {
LABEL_22:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v38 = 613;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v29, &v34, &v43, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v2 = v7[3];
  v8 = *(this + 1);
  v9 = (v8 + 16 * v3);
  v10 = (v8 + 16 * v4);
  if (v2 == -1)
  {
    v12 = *(v8 + 16 * v6);
    _Q1 = vdupq_n_s32(0x3EAAAAABu);
    goto LABEL_9;
  }

  if (v5 <= v2)
  {
LABEL_26:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v38 = 613;
    v39 = 2048;
    v40 = v2;
    v41 = 2048;
    v42 = v5;
    _os_log_send_and_compose_impl(v32, &v34, &v43, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v33);
    _os_crash_msg();
    __break(1u);
  }

  v11 = *v9;
  v9 = (v8 + 16 * v4);
  v10 = (v8 + 16 * v2);
  v12 = vaddq_f32(*(v8 + 16 * v6), v11);
  __asm { FMOV            V1.4S, #0.25 }

LABEL_9:
  *&result = vmulq_f32(_Q1, vaddq_f32(vaddq_f32(v12, *v9), *v10)).u64[0];
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::~HashBrown(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v3 = *(a1 + 16);
      if (v3 >= 0x10)
      {
        v4 = 0;
        v5 = *a1;
        v6 = v3 >> 4;
        while (1)
        {
          v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          if (v7 != 0xFFFFLL)
          {
            break;
          }

          v4 -= 16;
          ++v5;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
        v10[1] = v7 ^ 0xFFFFLL;
        v11 = v8 - v4;
        if (v8 + 1 != v4)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(*v2 + 40))(v2);
      *a1 = 0;
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return a1;
}

double re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(re::internal::FaceEvaluator *this, unsigned int a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*this + 40);
  if (v6 <= a2)
  {
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    v35 = 797;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v6;
    _os_log_send_and_compose_impl(v17, &v31, &v40, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  v7 = (*(*this + 56) + 16 * a2);
  v6 = *v7;
  v5 = *(this + 4);
  if (v5 <= v6)
  {
LABEL_14:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v18 = MEMORY[0x1E69E9C10];
    v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v19)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    v35 = 613;
    v36 = 2048;
    v37 = v6;
    v38 = 2048;
    v39 = v5;
    _os_log_send_and_compose_impl(v20, &v31, &v40, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v2 = v7[1];
  if (v5 <= v2)
  {
LABEL_18:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v21 = MEMORY[0x1E69E9C10];
    v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v22)
    {
      v23 = 3;
    }

    else
    {
      v23 = 2;
    }

    v35 = 613;
    v36 = 2048;
    v37 = v2;
    v38 = 2048;
    v39 = v5;
    _os_log_send_and_compose_impl(v23, &v31, &v40, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_22;
  }

  v3 = v7[2];
  if (v5 <= v3)
  {
LABEL_22:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v35 = 613;
    v36 = 2048;
    v37 = v3;
    v38 = 2048;
    v39 = v5;
    _os_log_send_and_compose_impl(v26, &v31, &v40, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
    goto LABEL_26;
  }

  v4 = v7[3];
  v8 = *(this + 1);
  if (v4 == -1)
  {
    v11 = *(v8 + 16 * v6);
    v9 = vsubq_f32(*(v8 + 16 * v2), v11);
    v10 = vsubq_f32(*(v8 + 16 * v3), v11);
    goto LABEL_9;
  }

  if (v5 <= v4)
  {
LABEL_26:
    v31 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v27 = MEMORY[0x1E69E9C10];
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v32 = 136315906;
    v33 = "operator[]";
    v34 = 1024;
    if (v28)
    {
      v29 = 3;
    }

    else
    {
      v29 = 2;
    }

    v35 = 613;
    v36 = 2048;
    v37 = v4;
    v38 = 2048;
    v39 = v5;
    _os_log_send_and_compose_impl(v29, &v31, &v40, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v32, 38, v30);
    _os_crash_msg();
    __break(1u);
  }

  v9 = vsubq_f32(*(v8 + 16 * v2), *(v8 + 16 * v4));
  v10 = vsubq_f32(*(v8 + 16 * v3), *(v8 + 16 * v6));
LABEL_9:
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13.i64[0] = 0x3F0000003F000000;
  v13.i64[1] = 0x3F0000003F000000;
  v14 = vmulq_f32(v12, v13);
  *&result = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL).u64[0];
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(void *a1, unint64_t a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = v5 % v3;
  v7 = vdupq_n_s8(v5 & 0x7F);
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  v9 = v5 % v3;
  while (1)
  {
    v10 = *(*a1 + 16 * v9);
    v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800);
    v12 = __clz(__rbit64(v11));
    if (v12 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v10, v8), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v9 + 1 == v3)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    v14 = -1;
    if (v9 == v6)
    {
      return v14;
    }
  }

  v13 = 16 * v9;
  while (1)
  {
    v14 = v12 + v13;
    if (*(a1[1] + 80 * (v12 + v13)) == a2)
    {
      return v14;
    }

    if (v12 <= 0x3E)
    {
      v12 = __clz(__rbit64((-2 << v12) & v11));
      if (v12 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

int64x2_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, __int128 *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 80 * (v13 + 16 * v11);
  v17 = a1[1] + v16;
  *v17 = *a2;
  v18 = *a3;
  v19 = a3[1];
  v20 = a3[3];
  *(v17 + 48) = a3[2];
  *(v17 + 64) = v20;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  if (v15 == 255)
  {
    v21 = -1;
  }

  else
  {
    v21 = 0;
  }

  v22.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v22.i64[1] = v21;
  result = vaddq_s64(*(a1 + 3), v22);
  *(a1 + 3) = result;
  v24 = *(a1[1] + v16) ^ (*(a1[1] + v16) >> 30);
  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v24) ^ ((0xBF58476D1CE4E5B9 * v24) >> 27));
  a1[5] ^= (v25 >> 31) ^ v25;
  return result;
}

uint64_t re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(__int128 *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  v5 = ((3 * v3) >> 1) & 0x1FFFFFFFFFFFFFFLL;
  if (v4 > (192 * v3) >> 7)
  {
    v5 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  }

  v6 = (v5 << 7) / 0x97;
  v7 = *(a1 + 7);
  v25 = 0u;
  *v26 = 0u;
  if (v4 <= v3)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  memset(&v26[16], 0, 32);
  v23[0] = a1;
  v9 = *(a1 + 2);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_14;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v23[1] = v13 ^ 0xFFFFLL;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 2);
    }
  }

LABEL_14:
  v16 = *&v26[40];
  *&v26[40] = *(a1 + 7);
  v17 = v25;
  v18 = *v26;
  v25 = *a1;
  *v26 = v9;
  v19 = *&v26[16];
  v20 = *(a1 + 40);
  *(a1 + 6) = *&v26[32];
  *(a1 + 7) = v16;
  *&v26[24] = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  a1[1] = v18;
  a1[2] = v19;
  *&v26[8] = v21;
}

void *re::HashBrown<unsigned long,re::anonymous namespace::AccumulatedPlaneEquation,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 81 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::computePlaneOrientedBoxes(re::GeomMesh const&,float,float,re::DynamicArray<unsigned int> const&,re::DynamicArray<float> const&,re::DynamicArray<re::anonymous namespace::Plane> &)::$_0 &,unsigned int *,false>(uint64_t result, int32x2_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = a2[-1].i32[1];
LABEL_105:
        a2[-1].i32[1] = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = (v10 + 4);
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->i32[0];
            v87 = v86->u32[1];
            v86 = v82;
            if (result)
            {
              v89 = v86->i32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = (v86 + 4);
            v85 += 4;
          }

          while (&v86->u8[4] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = *(v9 + 4);
          v9 = v82;
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = (v9 + 4);
        }

        while ((v9 + 4) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = (v9 + 4 * v94);
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = (v9 + 4 * v93);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = (v9 + 4 * v99);
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = (v102 - 4);
          if (v106 == &v102[-1].u8[4])
          {
            *v106 = v127;
          }

          else
          {
            *v106 = v101->i32[0];
            v101->i32[0] = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = (v9 + 4 * (v113 >> 1));
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = (v9 + 4 * v114);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = *(v9 + 4 * v12);
        if (v18)
        {
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v19;
        }

        else
        {
          *(v9 + 4 * v12) = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = a2[-1].i32[1];
            a2[-1].i32[1] = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v22;
        {
          v23 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = a2[-1].i32[1];
        a2[-1].i32[1] = v16;
      }

      else
      {
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v16;
        {
          v24 = *(v9 + 4 * v12);
          *(v9 + 4 * v12) = a2[-1].i32[1];
          a2[-1].i32[1] = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = a2[-1].i32[1];
      a2[-1].i32[1] = v20;
      {
        v21 = *v9;
        *v9 = *(v9 + 4 * v12);
        *(v9 + 4 * v12) = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = *(v9 + 4);
      if (v27)
      {
        *(v9 + 4) = a2[-1].i32[0];
        a2[-1].i32[0] = v28;
      }

      else
      {
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v28;
        {
          v32 = *(v9 + 4 * v25);
          *(v9 + 4 * v25) = a2[-1].i32[0];
          a2[-1].i32[0] = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = a2[-1].i32[0];
      a2[-1].i32[0] = v29;
      {
        v30 = *(v9 + 4);
        *(v9 + 4) = *(v9 + 4 * v25);
        *(v9 + 4 * v25) = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = *(v9 + 8);
      if (v35)
      {
        *(v9 + 8) = a2[-2].i32[1];
        a2[-2].i32[1] = v36;
      }

      else
      {
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v36;
        {
          v39 = *(v9 + 4 * v33);
          *(v9 + 4 * v33) = a2[-2].i32[1];
          a2[-2].i32[1] = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = a2[-2].i32[1];
      a2[-2].i32[1] = v37;
      {
        v38 = *(v9 + 8);
        *(v9 + 8) = *(v9 + 4 * v33);
        *(v9 + 4 * v33) = v38;
      }
    }

    if (!v40)
    {
      v43 = *(v9 + 4 * v12);
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = *(v9 + 4 * v33);
      *(v9 + 4 * v12) = v44;
      *(v9 + 4 * v33) = v43;
      v43 = *(v9 + 4 * v12);
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = *(v9 + 4 * v25);
      *(v9 + 4 * v25) = v43;
      *(v9 + 4 * v12) = v46;
      goto LABEL_53;
    }

    v42 = *(v9 + 4 * v25);
    if (v41)
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v33);
      *(v9 + 4 * v33) = v42;
      v43 = *(v9 + 4 * v12);
    }

    else
    {
      *(v9 + 4 * v25) = *(v9 + 4 * v12);
      *(v9 + 4 * v12) = v42;
      v43 = *(v9 + 4 * v12);
      if (v47)
      {
        v46 = *(v9 + 4 * v33);
        *(v9 + 4 * v12) = v46;
        *(v9 + 4 * v33) = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    *(v9 + 4 * v12) = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    {
      v51 = 0;
      do
      {
        v51 += 4;
      }

      while (v52);
      v53 = v9 + v51;
      v54 = a2;
      if (v51 == 4)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      else
      {
        do
        {
          v55 = v54[-1].u32[1];
          v54 = (v54 - 4);
        }
      }

      if (v53 >= v54)
      {
        v62 = (v53 - 4);
      }

      else
      {
        v57 = (v9 + v51);
        v58 = v54;
        do
        {
          v59 = v57->i32[0];
          v57->i32[0] = v58->i32[0];
          v58->i32[0] = v59;
          do
          {
            v60 = v57->u32[1];
            v57 = (v57 + 4);
          }

          do
          {
            v61 = v58[-1].u32[1];
            v58 = (v58 - 4);
          }
        }

        while (v57 < v58);
        v62 = (v57 - 4);
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = v62->i32[0];
      }

      v62->i32[0] = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 4);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 4);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = v9 + 4;
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 += 4;
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].i32[1];
      v10[1].i32[1] = a2[-1].i32[1];
      a2[-1].i32[1] = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->i32[1];
    v10->i32[1] = a2[-1].i32[1];
    a2[-1].i32[1] = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = a2[-1].i32[1];
    a2[-1].i32[1] = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = a2[-1].i32[1];
      goto LABEL_105;
    }
  }

  return result;
}