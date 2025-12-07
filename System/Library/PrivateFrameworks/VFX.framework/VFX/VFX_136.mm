uint64_t sub_1AFB78590()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED73B840;
  v6 = 0;
  v7 = 2;
  v8 = 0;
  v9 = 2;
  v10 = 0;
  sub_1AFCC39D0(1, 2, v3);
  v1 = v3[1];
  *(v0 + 16) = v3[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v4;
  return v0;
}

uint64_t sub_1AFB78658(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  if (a2 && a3)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2++;
      *a4++ = *(result + 4 * v6) * a5;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1AFB78684(uint64_t result, unsigned int *a2, uint64_t a3, float *a4, float a5)
{
  if (a2 && a3)
  {
    v5 = 4 * a3;
    do
    {
      v6 = *a2++;
      *a4 = *a4 + (*(result + 4 * v6) * a5);
      ++a4;
      v5 -= 4;
    }

    while (v5);
  }

  return result;
}

unint64_t sub_1AFB786B8()
{
  result = qword_1ED725460;
  if (!qword_1ED725460)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for ParticleSortMode, v0, v1);
    atomic_store(result, &qword_1ED725460);
  }

  return result;
}

double sub_1AFB78748@<D0>(uint64_t a1@<X8>)
{
  *&result = 512;
  *a1 = xmmword_1AFE9E060;
  *(a1 + 16) = 1;
  return result;
}

char *sub_1AFB78760(uint64_t a1, float32x4_t *a2, uint64_t a3, void *a4, __n128 a5)
{
  v130 = a2[1];
  v131 = *a2;
  v128 = a2[3];
  v129 = a2[2];
  v126 = a2[5];
  v127 = a2[4];
  v7 = *(a1 + 24);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  result = sub_1AF9C5D44();
  if (v12)
  {
    result = sub_1AF9C5D58();
    if (v14)
    {
      result = sub_1AF9C5E74();
      if (v16)
      {
        v17 = v9 - v8;
        v19 = v130;
        v18 = v131;
        v21 = v128;
        v20 = v129;
        v23 = v126;
        v22 = v127;
        if (v9 != v8)
        {
          v24 = &v10[16 * v8];
          do
          {
            v25 = *v24;
            v25.i32[3] = a5.n128_i32[3];
            v132[0] = v18;
            v132[1] = v19;
            v132[2] = v20;
            v132[3] = v21;
            v132[4] = v22;
            v132[5] = v23;
            result = sub_1AFB78CC4(v132, v25);
            if (!result)
            {
              *(a3 + 4 * (*a4)++) = v7;
            }

            LODWORD(v7) = v7 + 1;
            ++v24;
            --v17;
            v19 = v130;
            v18 = v131;
            v21 = v128;
            v20 = v129;
            v23 = v126;
            v22 = v127;
          }

          while (v17);
        }
      }

      else
      {
        v85 = v9 - v8;
        if (v9 != v8)
        {
          v86 = vabsq_f32(v131);
          v87 = vabsq_f32(v130);
          v88 = vabsq_f32(v129);
          v89 = vabsq_f32(v128);
          v90 = vabsq_f32(v127);
          v91 = vabsq_f32(v126);
          v92 = &result[16 * v8];
          v93 = &v10[16 * v8];
          v94.i64[0] = 0x3F0000003F000000;
          v94.i64[1] = 0x3F0000003F000000;
          do
          {
            v95 = v15.i32[3];
            v15 = *v93;
            v15.i32[3] = v95;
            v96 = v15;
            v96.i32[3] = 1.0;
            v97.i64[0] = vmulq_f32(vmulq_n_f32(*v92, a5.n128_f32[0]), v94).u64[0];
            v97.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(a5.n128_f32[0], *v92, 2) * 0.5);
            v98 = vmulq_f32(v131, v96);
            v99 = vmulq_f32(v86, v97);
            v64 = vaddv_f32(vadd_f32(*v98.i8, *&vextq_s8(v98, v98, 8uLL))) <= -vaddv_f32(vadd_f32(*v99.i8, *&vextq_s8(v99, v99, 8uLL)));
            v100 = vmulq_f32(v130, v96);
            v101 = vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)));
            v102 = vmulq_f32(v87, v97);
            v103 = -vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL)));
            v104 = v64 || v101 <= v103;
            v105 = vmulq_f32(v129, v96);
            v106 = vaddv_f32(vadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)));
            v107 = vmulq_f32(v88, v97);
            v108 = -vaddv_f32(vadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)));
            v109 = v104 || v106 <= v108;
            v110 = vmulq_f32(v128, v96);
            v111 = vaddv_f32(vadd_f32(*v110.i8, *&vextq_s8(v110, v110, 8uLL)));
            v112 = vmulq_f32(v89, v97);
            v113 = -vaddv_f32(vadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL)));
            v114 = v109 || v111 <= v113;
            v115 = vmulq_f32(v127, v96);
            v116 = vaddv_f32(vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)));
            v117 = vmulq_f32(v90, v97);
            v118 = -vaddv_f32(vadd_f32(*v117.i8, *&vextq_s8(v117, v117, 8uLL)));
            v119 = v114 || v116 <= v118;
            v120 = vmulq_f32(v126, v96);
            v121 = vaddv_f32(vadd_f32(*v120.i8, *&vextq_s8(v120, v120, 8uLL)));
            v122 = vmulq_f32(v91, v97);
            v123 = -vaddv_f32(vadd_f32(*v122.i8, *&vextq_s8(v122, v122, 8uLL)));
            if (!v119 && v121 > v123)
            {
              *(a3 + 4 * (*a4)++) = v7;
            }

            LODWORD(v7) = v7 + 1;
            ++v92;
            ++v93;
            --v85;
          }

          while (v85);
        }
      }
    }

    else
    {
      v47 = v9 - v8;
      if (v9 != v8)
      {
        v48 = vabsq_f32(v131);
        v49 = vabsq_f32(v130);
        v50 = vabsq_f32(v129);
        v51 = vabsq_f32(v128);
        v52 = &result[8 * v8];
        v53 = vabsq_f32(v127);
        v54 = vabsq_f32(v126);
        v55 = &v10[16 * v8];
        do
        {
          v56.i64[1] = v13.i64[1];
          v13 = *v55;
          v13.i32[3] = v56.i32[3];
          *v56.f32 = vmul_f32(vmul_n_f32(*v52, a5.n128_f32[0]), 0x3F0000003F000000);
          v57 = v13;
          v57.i32[3] = 1.0;
          v58 = vmulq_f32(v131, v57);
          v59 = vmulq_f32(v48, v56);
          v64 = vaddv_f32(vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL))) <= -vaddv_f32(vadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)));
          v60 = vmulq_f32(v130, v57);
          v61 = vaddv_f32(vadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)));
          v62 = vmulq_f32(v49, v56);
          v63 = -vaddv_f32(vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)));
          v64 = v64 || v61 <= v63;
          v65 = vmulq_f32(v129, v57);
          v66 = vaddv_f32(vadd_f32(*v65.i8, *&vextq_s8(v65, v65, 8uLL)));
          v67 = vmulq_f32(v50, v56);
          v68 = -vaddv_f32(vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL)));
          v69 = v64 || v66 <= v68;
          v70 = vmulq_f32(v128, v57);
          v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
          v72 = vmulq_f32(v51, v56);
          v73 = -vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
          v74 = v69 || v71 <= v73;
          v75 = vmulq_f32(v127, v57);
          v76 = vaddv_f32(vadd_f32(*v75.i8, *&vextq_s8(v75, v75, 8uLL)));
          v77 = vmulq_f32(v53, v56);
          v78 = -vaddv_f32(vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL)));
          v79 = v74 || v76 <= v78;
          v80 = vmulq_f32(v126, v57);
          v81 = vaddv_f32(vadd_f32(*v80.i8, *&vextq_s8(v80, v80, 8uLL)));
          v82 = vmulq_f32(v54, v56);
          v83 = -vaddv_f32(vadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)));
          if (!v79 && v81 > v83)
          {
            *(a3 + 4 * (*a4)++) = v7;
          }

          LODWORD(v7) = v7 + 1;
          ++v52;
          ++v55;
          --v47;
        }

        while (v47);
      }
    }
  }

  else
  {
    v26 = v9 - v8;
    if (v9 != v8)
    {
      v27 = &result[4 * v8];
      v28 = &v10[16 * v8];
      do
      {
        v29 = *v28;
        v30 = -(*v27 * a5.n128_f32[0]);
        v31 = vmulq_f32(*v28, v131);
        v34 = (v131.f32[3] + (v31.f32[2] + vaddv_f32(*v31.f32))) < v30;
        v32 = vmulq_f32(*v28, v130);
        v33 = v130.f32[3] + (v32.f32[2] + vaddv_f32(*v32.f32));
        v34 = v34 || v33 < v30;
        v35 = vmulq_f32(v29, v129);
        v36 = v129.f32[3] + (v35.f32[2] + vaddv_f32(*v35.f32));
        v37 = v34 || v36 < v30;
        v38 = vmulq_f32(v29, v128);
        v39 = v128.f32[3] + (v38.f32[2] + vaddv_f32(*v38.f32));
        v40 = v37 || v39 < v30;
        v41 = vmulq_f32(v29, v127);
        v42 = v127.f32[3] + (v41.f32[2] + vaddv_f32(*v41.f32));
        v43 = v40 || v42 < v30;
        v44 = vmulq_f32(v29, v126);
        v45 = v126.f32[3] + (v44.f32[2] + vaddv_f32(*v44.f32));
        if (!v43 && v45 >= v30)
        {
          *(a3 + 4 * (*a4)++) = v7;
        }

        LODWORD(v7) = v7 + 1;
        ++v27;
        ++v28;
        --v26;
      }

      while (v26);
    }
  }

  return result;
}

BOOL sub_1AFB78CC4(float32x4_t *a1, float32x4_t a2)
{
  v2 = vmulq_f32(*a1, a2);
  if ((COERCE_FLOAT(HIDWORD(*a1)) + (v2.f32[2] + vaddv_f32(*v2.f32))) < 0.0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 1;
  do
  {
    v6 = v4;
    if (v4 == 5)
    {
      break;
    }

    v7 = vmulq_f32(v5[v4], a2);
    v8 = COERCE_FLOAT(HIDWORD(*&v5[v4++])) + (v7.f32[2] + vaddv_f32(*v7.f32));
  }

  while (v8 >= 0.0);
  return v6 < 5;
}

char *sub_1AFB78D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF64B110(&type metadata for ParticleParentID, &off_1F252D8C8, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = v8 - v9;
    if (v8 != v9)
    {
      v11 = *(a1 + 40);
      if (v10 < 8)
      {
        goto LABEL_12;
      }

      if (a2 + 4 * (v9 + a3) < &result[4 * v8] && &result[4 * v9] < a2 + 4 * (v8 + a3))
      {
        goto LABEL_12;
      }

      v13 = v9 + (v10 & 0xFFFFFFFFFFFFFFF8);
      v14 = 4 * v9;
      v15 = &result[4 * v9 + 16];
      v16 = (v14 + 4 * a3 + a2 + 16);
      v17 = v10 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v18 = vaddq_f32(*v16, vmulq_n_f32(vcvtq_f32_u32(*v15), v11));
        v16[-1] = vaddq_f32(v16[-1], vmulq_n_f32(vcvtq_f32_u32(v15[-1]), v11));
        *v16 = v18;
        v15 += 2;
        v16 += 2;
        v17 -= 8;
      }

      while (v17);
      v9 = v13;
      if (v10 != (v10 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_12:
        v19 = (a2 + 4 * v9 + 4 * a3);
        v20 = v8 - v9;
        v21 = &result[4 * v9];
        do
        {
          v22 = *v21++;
          *v19 = *v19 + (v11 * v22);
          ++v19;
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

unint64_t sub_1AFB78E98()
{
  result = qword_1EB642DA8;
  if (!qword_1EB642DA8)
  {
    sub_1AF82352C(255, &qword_1EB642DB0, &type metadata for ParticleSortMode, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB642DA8);
  }

  return result;
}

unint64_t sub_1AFB78F18()
{
  result = qword_1EB631D58;
  if (!qword_1EB631D58)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for ParticleSortMode, v0, v1);
    atomic_store(result, &qword_1EB631D58);
  }

  return result;
}

unint64_t sub_1AFB78F70()
{
  result = qword_1EB642DB8;
  if (!qword_1EB642DB8)
  {
    result = swift_getWitnessTable(byte_1AFE9E234, &type metadata for ParticleSortModeSet, v0, v1);
    atomic_store(result, &qword_1EB642DB8);
  }

  return result;
}

unint64_t sub_1AFB78FC8()
{
  result = qword_1EB642DC0;
  if (!qword_1EB642DC0)
  {
    result = swift_getWitnessTable(byte_1AFE9E204, &type metadata for ParticleSortModeSet, v0, v1);
    atomic_store(result, &qword_1EB642DC0);
  }

  return result;
}

unint64_t sub_1AFB79020()
{
  result = qword_1EB642DC8;
  if (!qword_1EB642DC8)
  {
    result = swift_getWitnessTable(byte_1AFE9E25C, &type metadata for ParticleSortModeSet, v0, v1);
    atomic_store(result, &qword_1EB642DC8);
  }

  return result;
}

unint64_t sub_1AFB79078()
{
  result = qword_1EB642DD0;
  if (!qword_1EB642DD0)
  {
    result = swift_getWitnessTable(byte_1AFE9E294, &type metadata for ParticleSortModeSet, v0, v1);
    atomic_store(result, &qword_1EB642DD0);
  }

  return result;
}

unint64_t sub_1AFB790D0()
{
  result = qword_1EB6333F8;
  if (!qword_1EB6333F8)
  {
    result = swift_getWitnessTable(byte_1AFE9E394, &type metadata for ParticleSortModeWithSpawnID, v0, v1);
    atomic_store(result, &qword_1EB6333F8);
  }

  return result;
}

uint64_t sub_1AFB79158@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB79288(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1AFB79194(unint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      v3 = __clz(__rbit64(v1));
      v4 = ((1 << v3) & v1) != 0 ? ~(1 << v3) : -1;
      v5 = sub_1AFB79288(v3);
      result = 0;
      if (v5 == 28)
      {
        break;
      }

      v1 &= v4;
      v2 = sub_1AFDFCF88();
      MEMORY[0x1B2718AE0](v2);

      if (!v1)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AFB79288(uint64_t result)
{
  if (result >= 0x1Cu)
  {
    return 28;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AFB7929C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a1 == 1936941421 && a2 == 0xE400000000000000;
  if (v8 || (v3 = a2, v4 = a1, (sub_1AFDFEE28() & 1) != 0))
  {
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = *(*(v9 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_68;
  }

  if (v4 == 0x726F6C6F63 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v10 = *(*(v20 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v4 == 1702521203 && v3 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
      __break(1u);
      goto LABEL_80;
    }

LABEL_23:
    v10 = *(*(v21 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6431657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v10 = *(*(v22 + 8) + 32);
      goto LABEL_8;
    }

    __break(1u);
LABEL_86:
    v5 = 0xE900000000000073;
    if ((v4 != 0x695F746E65726170 || v3 != 0xE900000000000064) && (sub_1AFDFEE28() & 1) == 0)
    {
      goto LABEL_94;
    }

    v32 = swift_conformsToProtocol2();
    if (!v32)
    {
      __break(1u);
      goto LABEL_153;
    }

    v33 = *(*(v32 + 8) + 32);
    goto LABEL_91;
  }

  if (v4 == 0x6432657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v23 = swift_conformsToProtocol2();
    if (!v23)
    {
      goto LABEL_93;
    }

    v10 = *(*(v23 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6433657A6973 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v21 = swift_conformsToProtocol2();
    if (!v21)
    {
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_23;
  }

  if (v4 == 0x746567726174 && v3 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v24 = swift_conformsToProtocol2();
    if (!v24)
    {
      __break(1u);
      goto LABEL_105;
    }

    v10 = *(*(v24 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x797469636F6C6576 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
      __break(1u);
      goto LABEL_111;
    }

    v10 = *(*(v25 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x6E6F697469736F70 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v26 = swift_conformsToProtocol2();
    if (!v26)
    {
      __break(1u);
      goto LABEL_117;
    }

    v10 = *(*(v26 + 8) + 32);
    goto LABEL_8;
  }

  v6 = 0xEA00000000003161;
  v5 = 0x7461645F72657375;
  if (v4 == 0x7461645F72657375 && v3 == 0xEA00000000003161 || (sub_1AFDFEE28() & 1) != 0)
  {
    v27 = swift_conformsToProtocol2();
    if (!v27)
    {
      __break(1u);
      goto LABEL_123;
    }

    v10 = *(*(v27 + 8) + 32);
    goto LABEL_8;
  }

  if (v4 == 0x7461645F72657375 && v3 == 0xEA00000000003261 || (sub_1AFDFEE28() & 1) != 0)
  {
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
      __break(1u);
      goto LABEL_129;
    }

    v10 = *(*(v28 + 8) + 32);
    goto LABEL_8;
  }

LABEL_68:
  if (v4 == v5 && v3 == v6 + 512 || (sub_1AFDFEE28() & 1) != 0)
  {
    v29 = swift_conformsToProtocol2();
    if (!v29)
    {
      __break(1u);
      goto LABEL_135;
    }

    v10 = *(*(v29 + 8) + 32);
    goto LABEL_8;
  }

LABEL_74:
  if (v4 == v5 && v3 == v6 + 768 || (sub_1AFDFEE28() & 1) != 0)
  {
    v30 = swift_conformsToProtocol2();
    if (!v30)
    {
      __break(1u);
      goto LABEL_141;
    }

    v10 = *(*(v30 + 8) + 32);
    goto LABEL_8;
  }

LABEL_80:
  if ((v4 != 25705 || v3 != 0xE200000000000000) && (sub_1AFDFEE28() & 1) == 0)
  {
    goto LABEL_86;
  }

  v31 = swift_conformsToProtocol2();
  if (!v31)
  {
    __break(1u);
    goto LABEL_147;
  }

  v10 = *(*(v31 + 8) + 32);
LABEL_8:
  v11 = v10();
  v3 = v11;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    while (1)
    {
LABEL_92:

      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      if (v4 == 6645601 && v3 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {
        v34 = swift_conformsToProtocol2();
        if (v34)
        {
          v33 = *(*(v34 + 8) + 32);
          goto LABEL_91;
        }

        __break(1u);
      }

      else
      {
        if (v4 == 0x7461746E6569726FLL && v3 == 0xEB000000006E6F69 || (sub_1AFDFEE28() & 1) != 0)
        {
          v35 = swift_conformsToProtocol2();
          if (v35)
          {
            v33 = *(*(v35 + 8) + 32);
            goto LABEL_91;
          }

          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

LABEL_105:
        if (v4 == 0x73656E6867756F72 && v3 == v5 || (sub_1AFDFEE28() & 1) != 0)
        {
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            v33 = *(*(v36 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_165;
        }

LABEL_111:
        if (v4 == 0x73656E6C6174656DLL && v3 == v5 || (sub_1AFDFEE28() & 1) != 0)
        {
          v37 = swift_conformsToProtocol2();
          if (v37)
          {
            v33 = *(*(v37 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_166;
        }

LABEL_117:
        if (v4 == 0x6E6F697373696D65 && v3 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v38 = swift_conformsToProtocol2();
          if (v38)
          {
            v33 = *(*(v38 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_167;
        }

LABEL_123:
        if (v4 == 0x665F7261656E696CLL && v3 == 0xED0000726F746361 || (sub_1AFDFEE28() & 1) != 0)
        {
          v39 = swift_conformsToProtocol2();
          if (v39)
          {
            v33 = *(*(v39 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_168;
        }

LABEL_129:
        if (v4 == 0x5F72616C75676E61 && v3 == 0xEE00726F74636166 || (sub_1AFDFEE28() & 1) != 0)
        {
          v40 = swift_conformsToProtocol2();
          if (v40)
          {
            v33 = *(*(v40 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_169;
        }

LABEL_135:
        if (v4 == 0x746F766970 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v41 = swift_conformsToProtocol2();
          if (v41)
          {
            v33 = *(*(v41 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_170;
        }

LABEL_141:
        if (v4 == 0x656C676E61 && v3 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
        {
          v42 = swift_conformsToProtocol2();
          if (v42)
          {
            v33 = *(*(v42 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_171;
        }

LABEL_147:
        if (v4 == 0xD000000000000010 && 0x80000001AFF49B20 == v3 || (sub_1AFDFEE28() & 1) != 0)
        {
          v43 = swift_conformsToProtocol2();
          if (v43)
          {
            v33 = *(*(v43 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_172;
        }

LABEL_153:
        if (v4 == 0x5F65727574786574 && v3 == 0xED0000656D617266 || (sub_1AFDFEE28() & 1) != 0)
        {
          v44 = swift_conformsToProtocol2();
          if (v44)
          {
            v33 = *(*(v44 + 8) + 32);
            goto LABEL_91;
          }

          goto LABEL_173;
        }
      }

      if (v4 == 0x65765F656C676E61 && v3 == 0xEE00797469636F6CLL || (sub_1AFDFEE28() & 1) != 0)
      {
        v45 = swift_conformsToProtocol2();
        if (v45)
        {
          v33 = *(*(v45 + 8) + 32);
          goto LABEL_91;
        }

        __break(1u);
        goto LABEL_180;
      }

LABEL_174:
      if (v4 == 0x726F66736E617274 && v3 == v5 - 6 || (sub_1AFDFEE28() & 1) != 0)
      {
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
LABEL_186:
          v14 = 0;
          v13 = 0;
          v15 = 0;
          v19 = 0;
          v46 = 0u;
          goto LABEL_13;
        }

        v33 = *(*(result + 8) + 32);
        goto LABEL_91;
      }

LABEL_180:
      if (v4 != 1684366707 || v3 != 0xE400000000000000)
      {
        result = sub_1AFDFEE28();
        if ((result & 1) == 0)
        {
          goto LABEL_186;
        }
      }

      result = swift_conformsToProtocol2();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v33 = *(*(result + 8) + 32);
LABEL_91:
      v3 = v33();
      if (sub_1AF449CFC())
      {
        goto LABEL_10;
      }
    }
  }

  if (!sub_1AFDFE108())
  {
    goto LABEL_92;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) == 0)
  {
    v12 = *(v3 + 32);

    goto LABEL_12;
  }

LABEL_39:
  v12 = MEMORY[0x1B2719C70](0, v3);
LABEL_12:

  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  v46 = *(v12 + 32);
  v15 = *(v12 + 48);
  v16 = *(v12 + 56);
  v17 = *(v12 + 58);

  v19 = v16 | (v17 << 16);
LABEL_13:
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v46;
  *(a3 + 32) = v15;
  *(a3 + 40) = v19;
  return result;
}

uint64_t sub_1AFB7A1B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 32;
  do
  {
    v6 = (v5 + v4++);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 <= -65 || v7 >= 65)
      {
        goto LABEL_6;
      }

      if ((v7 & 0x80000000) == 0)
      {
        break;
      }

      if (v7 != -64)
      {
        v9 = 1uLL >> -v7;
        goto LABEL_14;
      }

LABEL_6:
      if (v1 == v4)
      {
        return result;
      }

      ++v4;
    }

    if (v7 == 64)
    {
      goto LABEL_6;
    }

    v9 = 1 << v7;
LABEL_14:
    result |= v9;
  }

  while (v1 != v4);
  return result;
}

uint64_t sub_1AFB7A238(ValueMetadata *a1)
{
  if (a1 == &type metadata for Position)
  {
    return 0;
  }

  if (a1 == &type metadata for Scale1)
  {
    return 1;
  }

  if (a1 == &type metadata for Scale2)
  {
    return 2;
  }

  if (a1 == &type metadata for Scale3)
  {
    return 3;
  }

  if (a1 == &type metadata for Velocity)
  {
    return 4;
  }

  if (a1 == &type metadata for Color)
  {
    return 5;
  }

  if (a1 == &type metadata for Orientation)
  {
    return 6;
  }

  if (a1 == &type metadata for ParticleTextureFrame)
  {
    return 7;
  }

  if (a1 == &type metadata for ParticleAngle)
  {
    return 8;
  }

  if (a1 == &type metadata for ParticlePivot)
  {
    return 9;
  }

  if (a1 == &type metadata for ParticleTarget)
  {
    return 10;
  }

  if (a1 == &type metadata for ParticleRibbonLength)
  {
    return 11;
  }

  if (a1 == &type metadata for AngularVelocity)
  {
    return 12;
  }

  if (a1 == &type metadata for ParticleAngleVelocity)
  {
    return 13;
  }

  if (a1 == &type metadata for LinearFactor)
  {
    return 14;
  }

  if (a1 == &type metadata for AngularFactor)
  {
    return 15;
  }

  if (a1 == &type metadata for ParticleAge)
  {
    return 16;
  }

  if (a1 == &type metadata for ParticleLifetime)
  {
    return 17;
  }

  if (a1 == &type metadata for Mass)
  {
    return 18;
  }

  if (a1 == &type metadata for ParticleID)
  {
    return 26;
  }

  if (a1 == &type metadata for ParticleParentID)
  {
    return 27;
  }

  if (a1 == &type metadata for ParticleRoughness)
  {
    return 19;
  }

  if (a1 == &type metadata for ParticleMetalness)
  {
    return 20;
  }

  if (a1 == &type metadata for ParticleEmission)
  {
    return 21;
  }

  if (a1 == &type metadata for UserData1)
  {
    return 22;
  }

  if (a1 == &type metadata for UserData2)
  {
    return 23;
  }

  if (a1 == &type metadata for UserData3)
  {
    return 24;
  }

  if (a1 == &type metadata for UserData4)
  {
    return 25;
  }

  return 28;
}

uint64_t sub_1AFB7A4DC(uint64_t a1)
{
  v2 = sub_1AFB7A1B0(MEMORY[0x1E69E7CC0]);
  v3 = *(*(a1 + 16) + 32);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v7 = sub_1AFB7A238(*v5);
      if (v7 != 28 && (v7 - 65) >= 0x7Fu)
      {
        if ((v7 & 0x80) != 0)
        {
          if (v7 > 0xC0u)
          {
            v6 = 1uLL >> -v7;
            goto LABEL_4;
          }
        }

        else if (v7 < 0x40u)
        {
          v6 = 1 << v7;
LABEL_4:
          if ((v6 & ~v2) == 0)
          {
            v6 = 0;
          }

          v2 |= v6;
        }
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t sub_1AFB7A5C0(uint64_t a1)
{
  if (swift_dynamicCastMetatype())
  {
    return 0x7373616D5F746567;
  }

  if (swift_dynamicCastMetatype())
  {
    return 0x6F6C6F635F746567;
  }

  v2 = swift_dynamicCastMetatype();
  result = 0x657A69735F746567;
  if (!v2)
  {
    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x677261745F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657A69735F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C65765F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x69736F705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
      return 0x726573755F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x64695F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x657261705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6567615F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6569726F5F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x67756F725F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6174656D5F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x73696D655F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000011;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000012;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6F7669705F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6C676E615F746567;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000014;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000011;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0xD000000000000012;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x6E6172745F746567;
    }

    else if (swift_dynamicCastMetatype())
    {
      return 0x646565735F746567;
    }

    else
    {
      sub_1AFDFE218();

      v3 = sub_1AFDFF4B8();
      MEMORY[0x1B2718AE0](v3);

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1AFB7AD00()
{
  result = qword_1EB642DD8;
  if (!qword_1EB642DD8)
  {
    result = swift_getWitnessTable(byte_1AFE9E498, &type metadata for ParticleStoredDataSet, v0, v1);
    atomic_store(result, &qword_1EB642DD8);
  }

  return result;
}

unint64_t sub_1AFB7AD58()
{
  result = qword_1EB642DE0;
  if (!qword_1EB642DE0)
  {
    result = swift_getWitnessTable(byte_1AFE9E468, &type metadata for ParticleStoredDataSet, v0, v1);
    atomic_store(result, &qword_1EB642DE0);
  }

  return result;
}

unint64_t sub_1AFB7ADB0()
{
  result = qword_1EB642DE8;
  if (!qword_1EB642DE8)
  {
    result = swift_getWitnessTable(byte_1AFE9E4C0, &type metadata for ParticleStoredDataSet, v0, v1);
    atomic_store(result, &qword_1EB642DE8);
  }

  return result;
}

unint64_t sub_1AFB7AE08()
{
  result = qword_1EB642DF0;
  if (!qword_1EB642DF0)
  {
    result = swift_getWitnessTable(byte_1AFE9E4F8, &type metadata for ParticleStoredDataSet, v0, v1);
    atomic_store(result, &qword_1EB642DF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticleStoredData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleStoredData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AFB7AFB0()
{
  result = qword_1EB642DF8;
  if (!qword_1EB642DF8)
  {
    sub_1AFB7B008();
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EB642DF8);
  }

  return result;
}

void sub_1AFB7B008()
{
  if (!qword_1EB642E00)
  {
    v0 = sub_1AFDFD538();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642E00);
    }
  }
}

unint64_t sub_1AFB7B05C()
{
  result = qword_1EB642E08;
  if (!qword_1EB642E08)
  {
    result = swift_getWitnessTable(asc_1AFE9E724, &type metadata for ParticleStoredData, v0, v1);
    atomic_store(result, &qword_1EB642E08);
  }

  return result;
}

uint64_t sub_1AFB7B0BC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vminv_u16(vmovn_s32(vceqq_f32(v7, v8)));
    v11 = v5-- != 0;
  }

  while ((v9 & 1) != 0 && v11);
  return v9 & 1;
}

BOOL sub_1AFB7B128(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = v8;
    v11 = v5-- != 0;
    result = v7 == v9;
  }

  while (v7 == v9 && v11);
  return result;
}

uint64_t sub_1AFB7B184(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v5 = a1 + i;
      v6 = a2 + i;
      v7 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v7 || *(a1 + i + 48) != *(a2 + i + 48))
      {
        break;
      }

      if (*(v5 + 64))
      {
        if (!*(v6 + 64))
        {
          return 0;
        }
      }

      else
      {
        if (*(v5 + 56) == *(v6 + 56))
        {
          v4 = *(v6 + 64);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7B210(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 4;
    v4 = a1 + 4;
    do
    {
      v5 = v4[-2].i64[0];
      v6 = v4[-2].i64[1];
      v7 = v4[-1].u8[0];
      v8 = v4[3];
      v19[2] = v4[2];
      v19[3] = v8;
      v20 = v4[4].i8[0];
      v9 = v4[1];
      v19[0] = *v4;
      v19[1] = v9;
      v10 = v3[-2].i64[0];
      v11 = v3[-2].i64[1];
      v12 = v3[-1].i8[0];
      v13 = *v3;
      v14 = v3[1];
      v15 = v3[2];
      v16 = v3[3];
      v22 = v3[4].i8[0];
      v21[2] = v15;
      v21[3] = v16;
      v21[0] = v13;
      v21[1] = v14;
      if (v7 == 1)
      {
        if ((v12 & 1) == 0 || (v5 != v10 || v6 != v11) && (sub_1AFDFEE28() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v5 != v10)
        {
          v12 = 1;
        }

        if (v12)
        {
          return 0;
        }
      }

      v17 = sub_1AF87C134(v19, v21);
      sub_1AF4456D0(v5, v6, v7);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      v4 += 7;
      v3 += 7;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AFB7B338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = v3[1];
      v7 = v3[2];
      v8 = v3[3];
      v9 = *(v3 + 40);
      v11 = *v4;
      v10 = v4[1];
      v13 = v4[2];
      v12 = v4[3];
      v14 = *(v4 + 40);
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v11)
        {
          return 0;
        }
      }

      else
      {
        v20 = *(v4 + 40);
        v21 = *(v3 + 40);
        v19 = v4[1];
        v15 = v4[3];
        v16 = sub_1AFDFEE28();
        result = 0;
        if ((v16 & 1) == 0)
        {
          return result;
        }

        LODWORD(v12) = v15;
        v10 = v19;
        v14 = v20;
        v9 = v21;
        if (v5 != v11)
        {
          return result;
        }
      }

      if (v9)
      {
        result = 0;
        if (v6 == v10)
        {
          v18 = v14;
        }

        else
        {
          v18 = 0;
        }

        if (v18 & 1) == 0 || v7 != v13 || ((v12 ^ v8))
        {
          return result;
        }
      }

      else
      {
        result = 0;
        if ((v14 & 1) != 0 || v6 != v10 || v7 != v13)
        {
          return result;
        }
      }

      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AFB7B474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 72);
  v4 = a1 + 40;
  do
  {
    if (*(v4 - 8) != *(v3 - 5))
    {
      return 0;
    }

    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    v7 = *(v4 + 32);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    if (*(v4 + 8))
    {
      if (v6 == v9)
      {
        v11 = *(v3 - 24);
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1 || v5 != v8)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((*(v3 - 3) & 1) != 0 || *v4 != *(v3 - 4) || v6 != v9 || v5 != v8)
      {
        return result;
      }
    }

    v20 = v2;
    v14 = *(v7 + 16);
    v15 = *(v7 + 24);
    v16 = *(v10 + 16);
    v17 = *(v10 + 24);

    v18 = sub_1AFDFDFD8();
    if (v18 != sub_1AFDFDFD8())
    {
      goto LABEL_29;
    }

    if (v14 == v16 && v15 == v17)
    {
    }

    else
    {
      if ((sub_1AFDFEE28() & 1) == 0)
      {
LABEL_29:

        return 0;
      }

      v19 = sub_1AFDFEE28();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    v4 += 48;
    v3 += 6;
    v2 = v20 - 1;
  }

  while (v20 != 1);
  return 1;
}

uint64_t sub_1AFB7B688(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v6 = v5;
    v7 = *v3 ^ *v4;
    if (v7)
    {
      break;
    }

    --v5;
    ++v4;
    ++v3;
  }

  while (v6);
  return (v7 ^ 1) & 1;
}

BOOL sub_1AFB7B6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B750(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B7AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

BOOL sub_1AFB7B808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  v5 = v2 - 1;
  do
  {
    v7 = *v3++;
    v6 = v7;
    v9 = *v4++;
    v8 = v9;
    v11 = v5-- != 0;
    result = v6 == v8;
  }

  while (v6 == v8 && v11);
  return result;
}

uint64_t sub_1AFB7B864(float32x2_t *a1, float32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  v5 = *&v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_f32(v7, v8);
    v11 = v5-- != 0;
  }

  while ((v9.i8[0] & v9.i8[4] & 1) != 0 && v11);
  return v9.i8[0] & v9.i8[4] & 1;
}

uint64_t sub_1AFB7B8D0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1].i64[0];
  if (v2 != a2[1].i64[0])
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 2;
  v4 = a2 + 2;
  v5 = v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vmovn_s32(vceqq_f32(v7, v8));
    v11 = v5-- != 0;
  }

  while (((v9.i8[0] & v9.i8[2]) & v9.i8[4] & 1) != 0 && v11);
  return (v9.i8[0] & v9.i8[2]) & v9.i8[4] & 1;
}

uint64_t sub_1AFB7B948(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v5 && (sub_1AFDFEE28() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7B9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFC128();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = v26 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v18 = *(v8 + 16);
      v16 = v8 + 16;
      v17 = v18;
      v26[0] = *(v16 + 56);
      v26[1] = v16;
      v19 = (v16 - 8);
      v20 = v12 - 1;
      do
      {
        v17(v11, v14, v4, v9);
        (v17)(v6, v15, v4);
        sub_1AFB924D4();
        v21 = sub_1AFDFCE58();
        v22 = *v19;
        (*v19)(v6, v4);
        v22(v11, v4);
        v24 = v20-- != 0;
        if ((v21 & 1) == 0)
        {
          break;
        }

        v15 += v26[0];
        v14 += v26[0];
      }

      while (v24);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1AFB7BBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  do
  {
    v5 = 0;
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v6 + 16);
    v10 = *(v6 + 17);
    v11 = a2 + 32 + 24 * v3;
    v13 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 17);
    v16 = 1;
    while (!v16)
    {
      result = 0;
      v16 = 0;
      if (v5 == 1)
      {
        return result;
      }

LABEL_7:
      ++v5;
    }

    v29 = v8;
    v18 = *(&v29 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
    v30 = v13;
    v19 = *(&v30 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v5 & 1)));
    v16 = v18 == v19;
    if (v5 != 1)
    {
      goto LABEL_7;
    }

    if (v18 != v19)
    {
      return 0;
    }

    v20 = 0;
    v21 = 1;
    while (2)
    {
      if (!v21)
      {
        result = 0;
        v21 = 0;
        if (v20 == 1)
        {
          return result;
        }

LABEL_13:
        ++v20;
        continue;
      }

      break;
    }

    v27 = v7;
    v22 = *(&v27 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v20 & 1)));
    v28 = v12;
    v23 = *(&v28 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v20 & 1)));
    v21 = v22 == v23;
    if (v20 != 1)
    {
      goto LABEL_13;
    }

    v24 = v9 ^ v14;
    if (v22 != v23 || v24 != 0 || v10 != v15)
    {
      return 0;
    }

    ++v3;
    result = 1;
  }

  while (v3 != v2);
  return result;
}

uint64_t sub_1AFB7BCF0(int32x2_t *a1, int32x2_t *a2)
{
  v2 = a1[2];
  if (*&v2 != *&a2[2])
  {
    return 0;
  }

  if (!*&v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 4;
  v4 = a2 + 4;
  v5 = *&v2 - 1;
  do
  {
    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    v9 = vceq_s32(v7, v8);
    v11 = v5-- != 0;
  }

  while ((v9.i8[0] & v9.i8[4] & 1) != 0 && v11);
  return v9.i8[0] & v9.i8[4] & 1;
}

uint64_t sub_1AFB7BD5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 80);
    v4 = (a1 + 40);
    while (1)
    {
      v6 = v4[1];
      v7 = v4[4];
      v22 = v4[2];
      v23 = v4[3];
      v8 = v4[5];
      v10 = *(v3 - 4);
      v9 = *(v3 - 3);
      v11 = *(v3 - 1);
      v20 = v4;
      v21 = *(v3 - 2);
      v24 = *v3;
      if ((*(v4 - 1) != *(v3 - 6) || *v4 != *(v3 - 5)) && (sub_1AFDFEE28() & 1) == 0)
      {
        break;
      }

      v18 = v3;

      v19 = v6;
      sub_1AF687F90(v6, v22, v23, v7, v8);

      v12 = v10;
      sub_1AF687F90(v10, v9, v21, v11, v24);
      v13 = sub_1AF7FE65C();
      v15 = v14;
      if (v13 == sub_1AF7FE65C() && v15 == v16)
      {

        sub_1AF687FE4(v12, v9, v21, v11, v24);

        sub_1AF687FE4(v19, v22, v23, v7, v8);
      }

      else
      {
        v5 = sub_1AFDFEE28();

        sub_1AF687FE4(v12, v9, v21, v11, v24);

        sub_1AF687FE4(v19, v22, v23, v7, v8);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 = v18 + 7;
      v4 = v20 + 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AFB7BFB0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  ++*(a4 + 536);
  if (a6)
  {
    v9 = a2;
    sub_1AFB93CB8(a1, a2 | ((HIDWORD(a2) & 1) << 32), &v57);

    v11 = v58;
    *(a4 + 56) = v57;
    *(a4 + 72) = v11;
    *(a4 + 88) = v59;
    if ((a2 & 0x100000000) != 0)
    {
      v12 = 0x200000000;
    }

    else
    {
      v12 = v9;
    }

    sub_1AF6B06C0(a5, &v57, v12, &v60);
    if (v60)
    {
      v67 = v60;
      v70 = v63;
      v71 = v64;
      v72 = v65;
      v73 = v66;
      v68 = v61;
      v69 = v62;
      sub_1AF6B8EAC(0);
      sub_1AFB91B88(&v60, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    }

    v74 = v57;
    v75 = DWORD2(v57);
    v76 = BYTE12(v57);
    v77 = v58 | 0x10;
    v78 = BYTE8(v58);
    v79 = v59;

    sub_1AF6234A4(&v74);
    sub_1AF692DB0(&v57);
    if (*(*(a4 + 256) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v55[0] = *(a4 + 256);
      sub_1AFB92608(0);
      sub_1AFDFE4B8();
      *(a4 + 256) = v55[0];
    }

    *(a4 + 272) = 0;
    *(a4 + 280) = 0;
    swift_unknownObjectRelease();
    *(a4 + 464) = 0;
    *(a4 + 472) = 0;
    *(a4 + 480) = 0;
    swift_unknownObjectRelease();
    *(a4 + 528) = 0;
    *(a4 + 488) = 0u;
    *(a4 + 504) = 0u;
    swift_unknownObjectRelease();
    *(a4 + 344) = 0u;
    *(a4 + 360) = 0u;
    swift_unknownObjectRelease();
    *(a4 + 456) = 0;
    *(a4 + 424) = 0u;
    *(a4 + 440) = 0u;
  }

  v45 = a3;
  v46 = a4;
  v48 = *(*a3 + 16);
  if (v48)
  {
    v13 = 0;
    v14 = (a5 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v47 = *a3 + 32;
    while (1)
    {
      v15 = (v47 + 8 * v13);
      v16 = v15[1];
      v17 = *v15;
      v18 = v17 == -1 && v16 == 0;
      v19 = v18;
      if (v18 || (v17 & 0x80000000) != 0)
      {
        break;
      }

      v20 = MEMORY[0x1E69E7CC0];
      if (v14[1] <= v17)
      {
        goto LABEL_22;
      }

      v37 = (*v14 + 12 * v17);
      if (v16 != -1 && v37[2] != v16)
      {
        goto LABEL_22;
      }

      if (*(*(*(a5 + 144) + 8 * *v37 + 32) + 120))
      {

LABEL_22:
        v21 = *(v20 + 16);
        if (v21)
        {
          v49 = v13;
          v22 = 0;
          v51 = v20 + 32;
          do
          {
            if (!v19 && (v17 & 0x80000000) == 0 && v14[1] > v17)
            {
              v23 = (*v14 + 12 * v17);
              v24 = *(v23 + 2);
              if (v16 == -1 || v23[2] == v16)
              {
                v25 = *(*(a5 + 144) + 8 * *v23 + 32);
                v26 = *(v25 + 48);
                v28 = *(v26 + 16);
                v27 = v26 + 16;
                v29 = *(v51 + 16 * v22);
                v30 = v28 + 1;
                while (--v30)
                {
                  v31 = (v27 + 40);
                  v32 = *(v27 + 16);
                  v27 += 40;
                  if (v32 == *(v51 + 16 * v22))
                  {
                    v33 = *(v31 - 1);
                    if (v33 <= 1)
                    {
                      v33 = 1;
                    }

                    v34 = *(v25 + 128) + *v31 + v33 * v24;
                    v56 = *(v51 + 16 * v22);
                    v35 = sub_1AF585714(v55);
                    sub_1AF641154(v34, v29, v35);
                    sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
                    sub_1AF5C5358(0, qword_1ED7247F0, &protocol descriptor for ParticleComponentSpawner);
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      v54 = 0;
                      v52 = 0u;
                      v53 = 0u;
                      goto LABEL_26;
                    }

                    if (!*(&v53 + 1))
                    {
                      goto LABEL_26;
                    }

                    sub_1AF0FBA54(&v52, v55);
                    v36 = v56;
                    sub_1AF441150(v55, v56);
                    (*(*(&v36 + 1) + 16))(v17 | (v16 << 32), a5, v36);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
                    goto LABEL_27;
                  }
                }
              }
            }

            v52 = 0u;
            v53 = 0u;
            v54 = 0;
LABEL_26:
            sub_1AFB93108(&v52, &qword_1ED7224E8, qword_1ED7247F0, &protocol descriptor for ParticleComponentSpawner);
LABEL_27:
            ++v22;
          }

          while (v22 != v21);

          v13 = v49;
        }

        else
        {
        }
      }

      if (++v13 == v48)
      {
        goto LABEL_52;
      }
    }

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_22;
  }

LABEL_52:
  *(v46 + 96) = 0;
  *(v46 + 104) = 0;
  *(v46 + 161) = 1;
  *(v46 + 49) = *(v45 + 72) & 1 | (*(v45 + 48) != 0);
  *(v46 + 216) = 0;
  *(v46 + 224) = 0;
  *(v46 + 208) = 0;
  *(v46 + 232) = 1;
  *(v46 + 552) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v46 + 560);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_1AF64C528(0, *(v40 + 16));
  }

  else
  {
    v41 = sub_1AFC85E6C(0, *(v40 + 24) >> 1);

    *(v46 + 560) = v41;
  }

  v42 = sub_1AF3C9600(a1);
  if ((v42 & 0xFF00000000) == 0x200000000)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  *(v46 + 8) = v43 + 0x76E15D3EFEFDCBBFLL;
  *(v46 + 16) = 0xC5004E441C522FB3 * v43 - 0x3AFFB1BBE3ADD04DLL;
  *(v46 + 24) = 0x77710069854EE241 - v43;
  *(v46 + 32) = 0x39109BB02ACBE635 * v43;
  *(v46 + 40) = v43;
  *(v46 + 48) = 0;
  result = sub_1AF67E6C8(a1, a5, v46);
  *(v46 + 576) = result & 1;
  *(v46 + 336) = *(v45 + 61);
  *(v46 + 520) = v43;
  return result;
}

char *sub_1AFB7C604(char *result)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = *v1;
    do
    {
      v6 = *(v5 + 2);
      if (v6)
      {
        v7 = *(v5 + 2);
        v8 = 32;
        while (*&v5[v8] != *&v4[16 * v3])
        {
          v8 += 16;
          if (!--v7)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v12 = *&v4[16 * v3];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1AF422C28(0, v6 + 1, 1, v5);
          v5 = result;
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        v11 = v12;
        if (v10 >= v9 >> 1)
        {
          result = sub_1AF422C28(v9 > 1, v10 + 1, 1, v5);
          v11 = v12;
          v5 = result;
        }

        *(v5 + 2) = v10 + 1;
        *&v5[16 * v10 + 32] = v11;
        *v1 = v5;
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

void sub_1AFB7C708(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = sub_1AF67CACC(&type metadata for Position, &off_1F252EDF0, a2);
  if (v5 || (v5 = sub_1AF67CACC(&type metadata for Orientation, &off_1F252C828, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale1, &off_1F252F708, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale2, &off_1F252F7B8, a2)) || (v5 = sub_1AF67CACC(&type metadata for Scale3, &off_1F252F918, a2)))
  {
    MEMORY[0x1EEE9AC00](v5);
    v33[2] = a1;
    v34 = a2;
    v35 = v4;
    if (v4 || a2 != -1)
    {
      if ((a2 & 0x80000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v6 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
        if (v4 == 0xFFFFFFFF || v6[2] == v4)
        {
          v7 = *(v6 + 2);
          v8 = *(*(a1 + 144) + 8 * *v6 + 32);
          if (*(v8 + 232) <= v7 && *(v8 + 240) > v7)
          {
            v10 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v36 = 0;
            v11 = *(v8 + 344);

            os_unfair_lock_lock(v11);
            ecs_stack_allocator_push_snapshot(*(v10 + 32));

            v37 = v10;
            sub_1AFCC72E8(v10, v8, v7, a1, a2, sub_1AFB8C8D4, v33);

            ecs_stack_allocator_pop_snapshot(*(v37 + 32));
            os_unfair_lock_unlock(*(v8 + 344));
          }
        }
      }

      if ((a2 & 0x8000000000000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
      {
        v12 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
        if (v4 == 0xFFFFFFFF || v12[2] == v4)
        {
          v13 = *(v12 + 2);
          v14 = *(*(a1 + 144) + 8 * *v12 + 32);
          if (*(v14 + 232) <= v13 && *(v14 + 240) > v13)
          {
            v16 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
            v17 = *(v14 + 344);

            os_unfair_lock_lock(v17);
            ecs_stack_allocator_push_snapshot(*(v16 + 32));

            sub_1AF682880(v16, v14, v13, &type metadata for NotInHierarchy, &off_1F252A400, a1);

            ecs_stack_allocator_pop_snapshot(*(v16 + 32));
            os_unfair_lock_unlock(*(v14 + 344));
          }
        }
      }
    }
  }

  else if (v4 || a2 != -1)
  {
    v18 = OBJC_IVAR____TtC3VFX13EntityManager__entries;
    v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
    v20 = a2;
    if ((a2 & 0x80000000) == 0 && a2 < v19)
    {
      v21 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
      if (v4 == 0xFFFFFFFF || v21[2] == v4)
      {
        v22 = *(v21 + 2);
        v23 = *(*(a1 + 144) + 8 * *v21 + 32);
        if (*(v23 + 232) <= v22 && *(v23 + 240) > v22)
        {
          v25 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v26 = *(v23 + 344);

          os_unfair_lock_lock(v26);
          ecs_stack_allocator_push_snapshot(*(v25 + 32));

          sub_1AF68295C(v25, v23, v22, &type metadata for WorldTransform, &off_1F2529FC0, 0);

          ecs_stack_allocator_pop_snapshot(*(v25 + 32));
          os_unfair_lock_unlock(*(v23 + 344));

          v18 = OBJC_IVAR____TtC3VFX13EntityManager__entries;
          v19 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8);
        }
      }
    }

    if ((v20 & 0x8000000000000000) == 0 && v20 < v19)
    {
      v27 = (*(a1 + v18) + 12 * v20);
      if (v4 == 0xFFFFFFFF || v27[2] == v4)
      {
        v28 = *(v27 + 2);
        v29 = *(*(a1 + 144) + 8 * *v27 + 32);
        if (*(v29 + 232) <= v28 && *(v29 + 240) > v28)
        {
          v31 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v32 = *(v29 + 344);

          os_unfair_lock_lock(v32);
          ecs_stack_allocator_push_snapshot(*(v31 + 32));

          sub_1AF68295C(v31, v29, v28, &type metadata for NotInHierarchy, &off_1F252A400, 0);

          ecs_stack_allocator_pop_snapshot(*(v31 + 32));
          os_unfair_lock_unlock(*(v29 + 344));
        }
      }
    }
  }
}

uint64_t sub_1AFB7CC3C(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (result + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v6 = v2 + 32;
    v7 = 1.0;
    v73 = result;
    v74 = (result + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v71 = v2 + 32;
    v72 = *(v2 + 16);
    while (1)
    {
      v8 = (v6 + 8 * v4);
      v9 = v8[1];
      v10 = *v8;
      v11 = v10 == -1 && v9 == 0;
      if (!v11 && (v10 & 0x80000000) == 0 && v5[1] > v10)
      {
        v12 = (*v5 + 12 * v10);
        if (v9 == -1 || v12[2] == v9)
        {
          v14 = *(*(*(*(result + 88) + 8 * *(v12 + 3) + 32) + 16) + 32);
          if (*(v14 + 16))
          {
            break;
          }
        }
      }

LABEL_4:
      if (++v4 == v3)
      {
        return result;
      }
    }

    v15 = *(*(result + 144) + 8 * *v12 + 32);
    v75 = *(v12 + 2);

    v16 = 0;
LABEL_20:
    v17 = *(v14 + 32 + 16 * v16++);
    v18 = *(v15 + 48);
    v20 = *(v18 + 16);
    v19 = v18 + 16;
    v21 = v17;
    v22 = v20 + 1;
    while (--v22)
    {
      v23 = (v19 + 40);
      v24 = *(v19 + 16);
      v19 += 40;
      if (v24 == v17)
      {
        v25 = *(v23 - 1);
        if (v25 <= 1)
        {
          v25 = 1;
        }

        v26 = *(v15 + 128) + *v23 + v25 * v75;
        v81 = v17;
        v27 = sub_1AF585714(v80);
        sub_1AF641154(v26, v21, v27);
        sub_1AF441194(v80, v78);
        sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
        sub_1AF5C5358(0, &qword_1EB642E10, &protocol descriptor for ParticleRenderer);
        if (swift_dynamicCast())
        {
          sub_1AF0FBA54(v76, v79);
          v28 = 1.0;
          if (v74[1] > v10)
          {
            v29 = (*v74 + 12 * v10);
            v30 = *(v29 + 2);
            if (v9 == -1 || v29[2] == v9)
            {
              v31 = *(*(v73 + 144) + 8 * *v29 + 32);
              v32 = *(v31 + 48);
              v33 = (v32 + 32);
              v34 = *(v32 + 16) + 1;
              while (--v34)
              {
                v35 = v33 + 5;
                v36 = *v33;
                v33 += 5;
                if (v36 == &type metadata for Scale3)
                {
                  v37 = *(&(*(v35 - 2))[v30] + *(v31 + 128));
LABEL_41:
                  v28 = fmaxf(fmaxf(v37.f32[0], v37.f32[2]), v37.f32[1]);
                  goto LABEL_42;
                }
              }

              v38 = *(*(v73 + 144) + 8 * *v29 + 32);
              v39 = *(v38 + 48);
              v40 = (v39 + 32);
              v41 = *(v39 + 16) + 1;
              while (--v41)
              {
                v42 = v40 + 5;
                v43 = *v40;
                v40 += 5;
                if (v43 == &type metadata for Scale1)
                {
                  v44 = (*(v42 - 2) + 4 * v30 + *(v38 + 128));
                  v37 = vld1q_dup_f32(v44);
                  goto LABEL_41;
                }
              }

              v45 = *(*(v73 + 144) + 8 * *v29 + 32);
              v46 = *(v45 + 48);
              v47 = (v46 + 32);
              v48 = *(v46 + 16) + 1;
              while (--v48)
              {
                v49 = v47 + 5;
                v50 = *v47;
                v47 += 5;
                if (v50 == &type metadata for Scale2)
                {
                  v37.i64[0] = *(&(*(v49 - 2))->Kind + 8 * v30 + *(v45 + 128));
                  v37.i32[2] = 1065353216;
                  goto LABEL_41;
                }
              }
            }
          }

LABEL_42:
          sub_1AF441194(v79, v78);
          if (swift_dynamicCast())
          {
            if ((LODWORD(v76[0]) != -1 || DWORD1(v76[0]) != 0) && (v76[0] & 0x80000000) == 0 && v74[1] > SLODWORD(v76[0]))
            {
              v52 = (*v74 + 12 * SLODWORD(v76[0]));
              v53 = *(v52 + 2);
              if (DWORD1(v76[0]) == -1 || v52[2] == DWORD1(v76[0]))
              {
                v54 = *(*(v73 + 144) + 8 * *v52 + 32);
                v55 = *(v54 + 48);
                v56 = (v55 + 32);
                v57 = *(v55 + 16) + 1;
                while (--v57)
                {
                  v58 = v56 + 5;
                  v59 = *v56;
                  v56 += 5;
                  if (v59 == &type metadata for MeshModel)
                  {
                    v60 = *(&(*(v58 - 2))[v53].Kind + *(v54 + 128));
                    if (v60)
                    {
                      v61 = *(v60 + 40);
                      *v62.i64 = sub_1AF6DE28C();
                      v64 = v61[1].i64[0];
                      if (v64)
                      {
                        v65 = v61 + 12;
                        v66.i64[0] = 0x3F0000003F000000;
                        v66.i64[1] = 0x3F0000003F000000;
                        do
                        {
                          v67 = v65[-1];
                          v68 = vminnmq_f32(vsubq_f32(v62, v63), vsubq_f32(v67, *v65));
                          v69 = vmaxnmq_f32(vaddq_f32(v62, v63), vaddq_f32(v67, *v65));
                          v62 = vmulq_f32(vaddq_f32(v68, v69), v66);
                          v63 = vmulq_f32(vsubq_f32(v69, v68), v66);
                          v65 += 11;
                          --v64;
                        }

                        while (v64);
                      }

                      v70 = fmaxf(fmaxf(v63.f32[0], v63.f32[2]), v63.f32[1]);
                      v28 = v28 * (v70 + v70);
                    }

                    break;
                  }
                }
              }
            }
          }

          if (v7 <= v28)
          {
            v7 = v28;
          }

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v79);
        }

        else
        {
          v77 = 0;
          memset(v76, 0, sizeof(v76));
          sub_1AFB93108(v76, &qword_1EB642E18, &qword_1EB642E10, &protocol descriptor for ParticleRenderer);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v80);
        if (v16 == *(v14 + 16))
        {

          result = v73;
          v5 = v74;
          v6 = v71;
          v3 = v72;
          goto LABEL_4;
        }

        goto LABEL_20;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB7D1B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7A696D6F646E6172;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x7A696D6F646E6172;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFB7D260()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D2E4(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB7D354(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D3D4@<X0>(char *a2@<X8>)
{
  v3 = sub_1AFDFE638();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AFB7D434(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x7A696D6F646E6172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AFB7D474()
{
  if (*v0)
  {
    return 0x7A696D6F646E6172;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1AFB7D4B0@<X0>(char *a3@<X8>)
{
  v4 = sub_1AFDFE638();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AFB7D514(uint64_t a1)
{
  v2 = sub_1AFB9166C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7D550(uint64_t a1)
{
  v2 = sub_1AFB9166C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7D58C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AFB7D5C8(void *a1, unint64_t a2)
{
  sub_1AFB925A0(0, &qword_1EB642E20, sub_1AFB9166C, &type metadata for Seed.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB9166C();
  sub_1AFDFF3F8();
  v12 = 0;
  sub_1AFDFE988();
  if (!v2)
  {
    v11 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1AFB7D754@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB91480(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
  }

  return result;
}

uint64_t sub_1AFB7D788(void *a1)
{
  v2 = 0x100000000;
  if (!*(v1 + 4))
  {
    v2 = 0;
  }

  return sub_1AFB7D5C8(a1, v2 | *v1);
}

uint64_t sub_1AFB7D7B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x80000001AFF22D00;
  if (v2 == 1)
  {
    v5 = 0x80000001AFF22D00;
  }

  else
  {
    v3 = 0x6C6F73655278616DLL;
    v5 = 0xED00006E6F697475;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x637261655378616DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF73756964615268;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x6C6F73655278616DLL;
    v4 = 0xED00006E6F697475;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x637261655378616DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF73756964615268;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AFB7D8D4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7D994(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AFB7DA40(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFB7DAFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB8C9D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AFB7DB2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73756964615268;
  v4 = 0x80000001AFF22D00;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x6C6F73655278616DLL;
    v4 = 0xED00006E6F697475;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x637261655378616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1AFB7DBA8()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x6C6F73655278616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637261655378616DLL;
  }
}

unint64_t sub_1AFB7DC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFB8C9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB7DC48(uint64_t a1)
{
  v2 = sub_1AFB916C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7DC84(uint64_t a1)
{
  v2 = sub_1AFB916C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFB7DCEC@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1050253722;
  *(a1 + 8) = 25;
  *&result = 0x2000000020;
  *(a1 + 16) = xmmword_1AFE55100;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1AFB7DD14(void *a1, uint64_t a2, float a3, __n128 a4)
{
  v12 = a4;
  sub_1AFB925A0(0, &unk_1EB642E40, sub_1AFB916C0, &type metadata for NeighborGrid.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB916C0();
  sub_1AFDFF3F8();
  v14.n128_u8[0] = 0;
  sub_1AFDFE8E8();
  if (!v4)
  {
    v14.n128_u8[0] = 1;
    sub_1AFDFE908();
    v14 = v12;
    v13 = 2;
    sub_1AFB925A0(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    sub_1AFB91714(&qword_1EB63F038, MEMORY[0x1E69E7458]);
    sub_1AFDFE918();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AFB7DF58@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1AFB8F830(a2);
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = v7;
    *(a1 + 32) = v5 & 1;
  }

  return result;
}

uint64_t sub_1AFB7E098(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1AFC07194(0, v5, 0);
    v7 = v43;
    ObjectType = swift_getObjectType();
    v9 = 32;
    do
    {
      sub_1AF62BFF0(*(v4 + v9), 1, ObjectType, a2);
      v44 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        v13 = v10;
        sub_1AFC07194(v11 > 1, v12 + 1, 1);
        v10 = v13;
        v7 = v44;
      }

      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      v9 += 8;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  *v42 = v7;
  v14 = v42[1];
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_1AFC07194(0, v15, 0);
    v16 = v6;
    v17 = swift_getObjectType();
    v18 = 32;
    do
    {
      sub_1AF62BFF0(*(v14 + v18), 1, v17, a2);
      v45 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = v19;
        sub_1AFC07194(v20 > 1, v21 + 1, 1);
        v19 = v22;
        v16 = v45;
      }

      *(v16 + 16) = v21 + 1;
      *(v16 + 8 * v21 + 32) = v19;
      v18 += 8;
      --v15;
    }

    while (v15);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v42[1] = v16;
  v23 = v42[2];
  v24 = *(v23 + 16);
  if (v24)
  {
    sub_1AFC07194(0, v24, 0);
    v25 = v6;
    v26 = swift_getObjectType();
    v27 = 32;
    do
    {
      sub_1AF62BFF0(*(v23 + v27), 1, v26, a2);
      v46 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        v31 = v28;
        sub_1AFC07194(v29 > 1, v30 + 1, 1);
        v28 = v31;
        v25 = v46;
      }

      *(v25 + 16) = v30 + 1;
      *(v25 + 8 * v30 + 32) = v28;
      v27 += 8;
      --v24;
    }

    while (v24);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  v42[2] = v25;
  v32 = v42[3];
  v33 = *(v32 + 16);
  if (v33)
  {
    sub_1AFC07194(0, v33, 0);
    v34 = v6;
    v35 = swift_getObjectType();
    v36 = 32;
    do
    {
      sub_1AF62BFF0(*(v32 + v36), 1, v35, a2);
      v47 = v34;
      v39 = *(v34 + 16);
      v38 = *(v34 + 24);
      if (v39 >= v38 >> 1)
      {
        v40 = v37;
        sub_1AFC07194(v38 > 1, v39 + 1, 1);
        v37 = v40;
        v34 = v47;
      }

      *(v34 + 16) = v39 + 1;
      *(v34 + 8 * v39 + 32) = v37;
      v36 += 8;
      --v33;
    }

    while (v33);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v42[3] = v34;
  return result;
}

uint64_t sub_1AFB7E458(char a1)
{
  result = 0x746E456E77617073;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 0x657461647075;
      goto LABEL_11;
    case 3:
      v3 = 0x7265646E6572;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6E756F42776F6873;
      break;
    case 8:
      result = 0x6974616C756D6973;
      break;
    case 9:
      result = 0x6E4F657461647075;
      break;
    case 10:
      result = 0x754470756D726177;
      break;
    case 11:
      result = 0x6C61636F4C7369;
      break;
    case 12:
    case 21:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x6974616C756D6973;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0x6E77617073;
      break;
    case 16:
      result = 0x696C616974696E69;
      break;
    case 17:
      result = 0x657461647075;
      break;
    case 18:
      result = 0x7265646E6572;
      break;
    case 19:
      result = 6580597;
      break;
    case 20:
      result = 1684366707;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1AFB7E70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1AFB8C6CC(v11, v13);
}

BOOL sub_1AFB7E778(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return !sub_1AFB8C6CC(v11, v13);
}

double sub_1AFB7E7EC@<D0>(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x10000;
  *(a1 + 60) = 0;
  result = 0.0078125;
  *(a1 + 64) = 0x3F80000000000000;
  *(a1 + 72) = 0;
  *(a1 + 74) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 90) = 0x10000;
  *(a1 + 96) = 1036831949;
  return result;
}

uint64_t sub_1AFB7E854(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AFB7E458(*a1);
  v5 = v4;
  if (v3 == sub_1AFB7E458(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFB7E8DC()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AFB7E458(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFB7E940(uint64_t a1)
{
  sub_1AFB7E458(*v1);
  sub_1AFDFD038();
}

uint64_t sub_1AFB7E994(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  sub_1AFB7E458(v2);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AFB7E9F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AFB8CA20(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AFB7EA24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AFB7E458(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1AFB7EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFB8CA20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFB7EA8C(uint64_t a1)
{
  v2 = sub_1AFB91790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFB7EAC8(uint64_t a1)
{
  v2 = sub_1AFB91790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFB7EB04(void *a1)
{
  v3 = v1;
  sub_1AFB925A0(0, &qword_1EB642E78, sub_1AFB91790, &type metadata for EmitterDescription.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFB91790();
  sub_1AFDFF3F8();
  v11 = *v3;
  v13 = 0;
  sub_1AFB936C8(0, &unk_1ED723230, &type metadata for Entity, MEMORY[0x1E69E62F8]);
  sub_1AFB919BC(&qword_1EB642E80, sub_1AF480018, MEMORY[0x1E69E6300]);
  sub_1AFDFE918();
  if (!v2)
  {
    v11 = v3[1];
    v13 = 1;
    sub_1AFDFE918();
    v11 = v3[2];
    v13 = 2;
    sub_1AFDFE918();
    v11 = v3[3];
    v13 = 3;
    sub_1AFDFE918();
    v11 = v3[4];
    v12 = *(v3 + 40);
    v13 = 4;
    sub_1AFB936C8(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1AFB91A4C(&qword_1EB640200, MEMORY[0x1E69E6538], MEMORY[0x1E69E7C70]);
    sub_1AFDFE918();
    LOBYTE(v11) = 5;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 6;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 7;
    sub_1AFDFE8C8();
    LOBYTE(v11) = *(v3 + 92);
    v13 = 8;
    sub_1AFB91AD0();
    sub_1AFDFE918();
    LOBYTE(v11) = 9;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 10;
    sub_1AFDFE8E8();
    LOBYTE(v11) = 11;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 12;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 14;
    sub_1AFDFE8C8();
    LOBYTE(v11) = 13;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v9, v6);
}

__n128 sub_1AFB7EFA0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AFB8FAE0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

void sub_1AFB7F018(uint64_t a1@<X8>)
{
  swift_weakInit();
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v2 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v3 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v4 = v12;
  v12 = 0;
  MEMORY[0x1B271DEC0](&v12, 8);
  v5 = v12;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  *(a1 + 56) = qword_1ED73B840;
  *(a1 + 64) = 0;
  *(a1 + 68) = 2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  type metadata accessor for Bitset();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = swift_allocObject();
  v6[2] = 8;

  v7 = swift_slowAlloc();
  v6[3] = 0;
  v6[4] = v7;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 128) = v6;
  *(a1 + 136) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 161) = 1;
  *&v9 = sub_1AF6DE28C();
  *(a1 + 176) = v9;
  *(a1 + 192) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 1;
  v11 = MEMORY[0x1E69E7CC8];
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = v11;
  *(a1 + 264) = 0;
  *(a1 + 292) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 312) = 1;
  *(a1 + 320) = v8;
  *(a1 + 328) = v8;
  *(a1 + 336) = 0;
  *(a1 + 520) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = v8;
  type metadata accessor for EmitterRuntime.Storage();
  swift_allocObject();
  vfx_uniform_grid_create();
}

void sub_1AFB7F240()
{
  *(v0 + 112) = 0;
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 136);
    v2 = *(v1 + 2);
    if (v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1AFC0DB84(v1);
      }

      bzero(v1 + 32, 4 * v2);
      *(v0 + 136) = v1;
    }
  }
}

double sub_1AFB7F2AC()
{
  vfx_uniform_grid_destroy(*(v0 + 16));

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFB7F308(Swift::Int a1, void *a2, uint64_t *a3)
{
  v4 = v3;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = qword_1ED725EC0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B5C0;

  if (v9 == v11)
  {
    goto LABEL_24;
  }

  if (*(v4 + 160) == 1)
  {
    v12 = 4000000;
  }

  else
  {
    v12 = *(v4 + 152);
  }

  v13 = *a3;
  v14 = *(v4 + 336);

  if (v14)
  {
    v15 = v12 - *(v4 + 528);
    if (v15 < a1)
    {
      if (v15 > 0)
      {
        v16 = 1;
LABEL_15:
        a1 = v15;
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (a1 > 0)
    {
      v16 = 1;
      goto LABEL_20;
    }

LABEL_23:

LABEL_24:
  }

  v15 = v12 - sub_1AF621684(*(v9 + 204));
  if (v15 < a1)
  {
    if (v15 > 0)
    {
      v16 = 0;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (a1 <= 0)
  {
    goto LABEL_23;
  }

  v16 = 0;
LABEL_20:
  v53 = *(a3 + 3);
  v54 = a3;
  v52 = *(a3 + 2);
  v17 = sub_1AF3CD0F8(v52 | (v53 << 32));
  v19 = v17;
  v20 = v18;
  if ((v16 & 1) == 0)
  {
    if (v18)
    {

      v22 = v9;
    }

    else
    {
      v60[3] = &type metadata for ParticleClassSpawnID;
      v60[4] = &off_1F254ECF8;
      v60[0] = v17;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v23 = *(v9 + 204);

      v24 = sub_1AF65A4B4(v23, 0, 0, 0, 0, v60, &v55);

      sub_1AFB93108(&v55, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
      v22 = *(*(v13 + 88) + 8 * v24 + 32);

      sub_1AFB93108(v60, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
    }

    v25 = *(*(v13 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *thread_worker_index(v21) + 8);
    v26 = *(v54 + 40);
    LOBYTE(v60[0]) = *(v54 + 44);
    sub_1AF6370B8(v22, v26 | (LOBYTE(v60[0]) << 32), a1, v25);
  }

  a2[10] = a1;
  v27 = *(v4 + 112);
  a2[11] = v27;
  a2[12] = v27 + a1;
  *(v4 + 112) = v27 + a1;
  if ((v20 & 1) == 0)
  {
    v28 = *(v4 + 136);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (*(v4 + 120) == 1)
  {
    v28 = *(v4 + 136);
    v19 = 15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_34:
      *&v28[4 * v19 + 32] += a1;
      *(v4 + 136) = v28;
      goto LABEL_35;
    }

LABEL_32:
    v28 = sub_1AFC0DB84(v28);
    goto LABEL_34;
  }

LABEL_35:
  *(v4 + 104) += a1;
  a2[9] += a1;
  sub_1AF3CF5A0(v52 | (v53 << 32), &v61);
  if ((v62 & 0xFF00000000) != 0x200000000)
  {
    v29 = vdupq_n_s64(v62);
    *&v55 = v61;
    DWORD2(v55) = v62;
    *v29.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1AFE513B0), vshlq_u64(v29, xmmword_1AFE513C0))), 0x1000100010001);
    HIDWORD(v55) = vuzp1_s8(*v29.i8, *v29.i8).u32[0];
    LODWORD(v56) = v63;
    BYTE4(v56) = v64;
    if ((v52 != -1 || v53) && (v52 & 0x80000000) == 0 && *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v52)
    {
      v30 = (*(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v52);
      v31 = *(v30 + 2);
      if (v53 == -1 || v30[2] == v53)
      {
        v32 = *(*(v13 + 144) + 8 * *v30 + 32);
        v33 = *(v32 + 48);
        v34 = (v33 + 32);
        v35 = *(v33 + 16) + 1;
        while (--v35)
        {
          v36 = v34 + 5;
          v37 = *v34;
          v34 += 5;
          if (v37 == &type metadata for ParticleSubSpawn.State)
          {
            v38 = (&(*(v36 - 2))[4 * v31].Kind + *(v32 + 128));
            sub_1AF68A8E0(v54, v60);
            sub_1AFBBFBD8(a1, a2);
            if (v16)
            {
              sub_1AF688940(v54);
              break;
            }

            v39 = *v54;
            v40 = *(v54 + 32);
            v41 = *(v54 + 36);

            if ((v40 != -1 || v41) && (v40 & 0x80000000) == 0 && *(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v40)
            {
              v42 = (*(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40);
              v43 = *(v42 + 2);
              if (v41 == -1 || v42[2] == v41)
              {
                v44 = *(*(v39 + 144) + 8 * *v42 + 32);
                v45 = *(v44 + 48);
                v46 = (v45 + 32);
                v47 = *(v45 + 16) + 1;
                while (--v47)
                {
                  v48 = v46 + 5;
                  v49 = *v46;
                  v46 += 5;
                  if (v49 == &type metadata for EmitterRuntime)
                  {
                    v50 = &(*(v48 - 2))[53 * v43] + *(v44 + 128);
                    sub_1AF68A8E0(v54, v60);

                    sub_1AFBC470C(v50, v39, v54, &v55, v38, a2);
                    sub_1AF688940(v54);

                    sub_1AF688940(v54);
                    goto LABEL_42;
                  }
                }
              }
            }

            v58 = 0;
            v59 = 0xE000000000000000;
            sub_1AF68A8E0(v54, v60);

            sub_1AFDFE218();
            v60[0] = v58;
            v60[1] = v59;
            MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
            v51 = sub_1AF656F38();
            MEMORY[0x1B2718AE0](v51);

            MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
            MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
            MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

            sub_1AF688940(v54);
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }
        }
      }
    }
  }

LABEL_42:
}

uint64_t sub_1AFB7FA04(uint64_t a1, char a2, char a3, char a4)
{
  if (!swift_weakLoadStrong())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFB936C8(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  v9 = *(a1 + 49);
  *(v8 + 16) = xmmword_1AFE9E830;
  *(v8 + 32) = xmmword_1AFE9E840;
  *(v8 + 48) = 0;
  *(v8 + 64) = (v9 | a2 & a3) & 1;
  *(v8 + 128) = 13;
  *(v8 + 144) = xmmword_1AFE9E850;
  *(v8 + 160) = 0;
  *(v8 + 176) = v9;
  *(v8 + 240) = 13;
  v10 = sub_1AF657F68(&type metadata for Velocity);
  *(v8 + 256) = xmmword_1AFE9E860;
  *(v8 + 272) = 0;
  *(v8 + 288) = v10;
  *(v8 + 352) = 13;
  v11 = sub_1AF657F68(&type metadata for ParticleAge);
  *(v8 + 368) = xmmword_1AFE9E870;
  *(v8 + 384) = 0;
  *(v8 + 400) = v11;
  *(v8 + 464) = 13;
  v12 = sub_1AF657F68(&type metadata for ParticleLifetime);
  *(v8 + 480) = xmmword_1AFE9E880;
  *(v8 + 496) = 0;
  *(v8 + 512) = v12;
  *(v8 + 576) = 13;
  v13 = sub_1AF657F68(&type metadata for Color);
  *(v8 + 592) = xmmword_1AFE9E890;
  *(v8 + 608) = 0;
  *(v8 + 624) = v13;
  *(v8 + 688) = 13;
  v14 = sub_1AF657F68(&type metadata for Orientation);
  v15 = 0;
  *(v8 + 704) = xmmword_1AFE9E8A0;
  *(v8 + 720) = 0;
  *(v8 + 736) = v14;
  *(v8 + 800) = 13;
  if ((a2 & 1) == 0)
  {
    v15 = sub_1AF657F68(&type metadata for AngularVelocity);
  }

  *(v8 + 816) = xmmword_1AFE9E8B0;
  *(v8 + 832) = 0;
  *(v8 + 848) = v15;
  *(v8 + 912) = 13;
  v16 = sub_1AF657F68(&type metadata for ParticleAngle);
  v17 = 0;
  *(v8 + 928) = xmmword_1AFE9E8C0;
  *(v8 + 944) = 0;
  *(v8 + 960) = v16;
  *(v8 + 1024) = 13;
  if ((a2 & 1) == 0)
  {
    v17 = sub_1AF657F68(&type metadata for ParticleAngleVelocity);
  }

  *(v8 + 1040) = xmmword_1AFE9E8D0;
  *(v8 + 1056) = 0;
  *(v8 + 1072) = v17;
  *(v8 + 1136) = 13;
  v18 = sub_1AF657F68(&type metadata for ParticlePivot);
  *(v8 + 1152) = xmmword_1AFE9E8E0;
  *(v8 + 1168) = 0;
  *(v8 + 1184) = v18;
  *(v8 + 1248) = 13;
  v19 = sub_1AF657F68(&type metadata for ParticleTarget);
  v20 = 0;
  *(v8 + 1264) = xmmword_1AFE9E8F0;
  *(v8 + 1280) = 0;
  *(v8 + 1296) = v19;
  *(v8 + 1360) = 13;
  if ((a2 & 1) == 0)
  {
    v20 = sub_1AF657F68(&type metadata for Mass);
  }

  *(v8 + 1376) = xmmword_1AFE9E900;
  *(v8 + 1392) = 0;
  *(v8 + 1408) = v20;
  *(v8 + 1472) = 13;
  v21 = sub_1AF657F68(&type metadata for ParticleRibbonLength);
  *(v8 + 1488) = xmmword_1AFE9E910;
  *(v8 + 1504) = 0;
  *(v8 + 1520) = v21;
  *(v8 + 1584) = 13;
  v22 = sub_1AF657F68(&type metadata for ParticleTextureFrame);
  v23 = 0;
  *(v8 + 1600) = xmmword_1AFE9E920;
  *(v8 + 1616) = 0;
  *(v8 + 1632) = v22;
  *(v8 + 1696) = 13;
  if ((a2 & 1) == 0)
  {
    v23 = sub_1AF657F68(&type metadata for LinearFactor);
  }

  v24 = 0;
  *(v8 + 1712) = xmmword_1AFE9E930;
  *(v8 + 1728) = 0;
  *(v8 + 1744) = v23;
  *(v8 + 1808) = 13;
  if ((a2 & 1) == 0)
  {
    v24 = sub_1AF657F68(&type metadata for AngularFactor);
  }

  *(v8 + 1824) = xmmword_1AFE9E940;
  *(v8 + 1840) = 0;
  *(v8 + 1856) = v24;
  *(v8 + 1920) = 13;
  v25 = sub_1AF657F68(&type metadata for ParticleID);
  *(v8 + 1936) = xmmword_1AFE9E950;
  *(v8 + 1952) = 0;
  *(v8 + 1968) = v25;
  *(v8 + 2032) = 13;
  v26 = sub_1AF657F68(&type metadata for ParticleParentID);
  *(v8 + 2048) = xmmword_1AFE9E960;
  *(v8 + 2064) = 0;
  *(v8 + 2080) = v26;
  *(v8 + 2144) = 13;
  v27 = sub_1AF657F68(&type metadata for UserData1);
  *(v8 + 2160) = xmmword_1AFE9E970;
  *(v8 + 2176) = 0;
  *(v8 + 2192) = v27;
  *(v8 + 2256) = 13;
  v28 = sub_1AF657F68(&type metadata for UserData2);
  *(v8 + 2272) = xmmword_1AFE9E980;
  *(v8 + 2288) = 0;
  *(v8 + 2304) = v28;
  *(v8 + 2368) = 13;
  v29 = sub_1AF657F68(&type metadata for UserData3);
  *(v8 + 2384) = xmmword_1AFE9E990;
  *(v8 + 2400) = 0;
  *(v8 + 2416) = v29;
  *(v8 + 2480) = 13;
  v30 = sub_1AF657F68(&type metadata for UserData4);
  *(v8 + 2496) = xmmword_1AFE9E9A0;
  *(v8 + 2512) = 0;
  *(v8 + 2528) = v30;
  *(v8 + 2592) = 13;
  v31 = sub_1AF657F68(&type metadata for Scale1);
  *(v8 + 2608) = xmmword_1AFE9E9B0;
  *(v8 + 2624) = 0;
  *(v8 + 2640) = v31;
  *(v8 + 2704) = 13;
  v32 = sub_1AF657F68(&type metadata for Scale2);
  *(v8 + 2720) = xmmword_1AFE9E9C0;
  *(v8 + 2736) = 0;
  *(v8 + 2752) = v32;
  *(v8 + 2816) = 13;
  v33 = sub_1AF657F68(&type metadata for Scale3);
  *(v8 + 2832) = xmmword_1AFE9E9D0;
  *(v8 + 2848) = 0;
  *(v8 + 2849) = *v35;
  *(v8 + 2856) = *&v35[7];
  *(v8 + 2864) = v33;
  *(v8 + 2928) = 13;
  *(v8 + 2944) = xmmword_1AFE9E9E0;
  *(v8 + 2960) = 0;
  *(v8 + 2961) = *v36;
  *(v8 + 2968) = *&v36[7];
  *(v8 + 2976) = a4 & 1;
  *(v8 + 3040) = 13;

  return v8;
}

uint64_t sub_1AFB80070()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED73B840;
  v41 = 0;
  v42 = 2;
  v43 = 0;
  v44 = 2;
  v45 = 0;
  sub_1AF7049B8(1, v17);
  v1 = v17[1];
  *(v0 + 16) = v17[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v18;
  sub_1AF702F8C(1, v19);
  sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for EmitterRuntime;
  *(inited + 40) = &off_1F25635C8;
  sub_1AF5D1EC0(inited);
  sub_1AFB91B88(v19, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, sub_1AF5DD590);
  swift_setDeallocating();
  v3 = v21;
  *(v0 + 56) = v20;
  *(v0 + 72) = v3;
  *(v0 + 88) = v22;
  sub_1AF702F8C(1, &v23);
  v4 = v24;
  v5 = v25;
  v6 = v27;
  v7 = v26 | 4;
  *(v0 + 96) = v23;
  *(v0 + 104) = v4;
  *(v0 + 108) = v5;
  *(v0 + 112) = v7;
  *(v0 + 120) = 2;
  *(v0 + 128) = v6;
  sub_1AFCC39D0(1, 2, v28);
  v8 = v28[1];
  *(v0 + 136) = v28[0];
  *(v0 + 152) = v8;
  *(v0 + 168) = v29;
  sub_1AF7049CC(2, &v30);
  v9 = v31;
  v10 = v32;
  v11 = v34;
  v12 = v35;
  v13 = v33 | 1;
  *(v0 + 176) = v30;
  *(v0 + 184) = v9;
  *(v0 + 188) = v10;
  *(v0 + 192) = v13;
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  sub_1AF8290C8(v36);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = &type metadata for EmitterDescription;
  *(v14 + 40) = &off_1F2563548;
  sub_1AF5D1EC0(v14);
  sub_1AFB91B88(v36, &unk_1ED723DB0, &type metadata for EmitterRuntime, &off_1F2563418, sub_1AF5DD590);
  swift_setDeallocating();
  v15 = v38;
  *(v0 + 216) = v37;
  *(v0 + 232) = v15;
  *(v0 + 248) = v39;
  return v0;
}

uint64_t sub_1AFB8033C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ++*(a3 + 544);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[4];

  v10 = sub_1AF6496EC(v9);

  v297 = v9;
  v11 = sub_1AF6496EC(v9);
  v299 = v7;

  v287 = swift_allocObject();
  *(v287 + 16) = MEMORY[0x1E69E7CC0];
  v324 = (v287 + 16);
  sub_1AF65C88C(16);

  v304 = sub_1AF65CCB0(v11);

  v323 = v8;
  v12 = sub_1AF3CF688(v11);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v303 = v14;
  v15 = *(a2 + 73);
  sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  if (v15 == 1)
  {
    *(v16 + 16) = xmmword_1AFE4C6B0;
    *(v16 + 56) = &type metadata for EmitterReference;
    *(v16 + 64) = &off_1F2563D20;
    *(v16 + 32) = v10;
    *(v16 + 96) = &type metadata for AnonymousEntity;
    *(v16 + 104) = &off_1F2532728;
    *(v16 + 136) = &type metadata for UnstableOrdering;
    *(v16 + 144) = &off_1F2532708;
    *(v16 + 176) = &type metadata for MonoChunk;
    *(v16 + 184) = &off_1F25326E8;
  }

  else
  {
    *(v16 + 16) = xmmword_1AFE4C680;
    *(v16 + 56) = &type metadata for EmitterReference;
    *(v16 + 64) = &off_1F2563D20;
    *(v16 + 32) = v10;
    *(v16 + 96) = &type metadata for AnonymousEntity;
    *(v16 + 104) = &off_1F2532728;
    *(v16 + 136) = &type metadata for UnstableOrdering;
    *(v16 + 144) = &off_1F2532708;
  }

  v301 = v16;
  sub_1AF65D974(&type metadata for Particle, &off_1F252D788);
  sub_1AF65D974(&type metadata for Position, &off_1F252EE70);
  v17 = *(a2 + 61);
  if (v17 == 1)
  {
    sub_1AF65D974(&type metadata for ParticleGPU, &off_1F252D648);
  }

  v18 = *(a2 + 92);
  if (v18 == 1)
  {
    sub_1AF65D974(&type metadata for Velocity, &off_1F2530AF8);
  }

  v295 = v17;
  v284 = v18;
  v320 = v5;
  if (sub_1AF3CAA18(v11))
  {
    v21 = v19;
    v22 = v20;

    v23 = HIDWORD(v21);
    v24 = HIDWORD(v22);
  }

  else
  {
    sub_1AF42C520(MEMORY[0x1E69E7CC0]);

    v23 = 0;
    v24 = 0;
    LODWORD(v21) = -1;
    LODWORD(v22) = -1;
  }

  v26 = *(a2 + 8);
  v25 = *(a2 + 16);
  v285 = v23;
  v286 = v21;
  v28 = v21 == -1 && v23 == 0;

  v292 = v25;

  v288 = v26;
  v283 = v28;
  if (!v28)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1AF4217DC(0, *(v26 + 2) + 1, 1, v26);
    }

    v30 = *(v26 + 2);
    v29 = *(v26 + 3);
    if (v30 >= v29 >> 1)
    {
      v26 = sub_1AF4217DC(v29 > 1, v30 + 1, 1, v26);
    }

    *(v26 + 2) = v30 + 1;
    v31 = &v26[8 * v30];
    *(v31 + 8) = v286;
    *(v31 + 9) = v285;
  }

  v32 = v22 == -1 && v24 == 0;
  v33 = v32;
  v282 = v33;
  v34 = v25;
  if (!v32)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1AF4217DC(0, *(v25 + 16) + 1, 1, v25);
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1AF4217DC(v36 > 1, v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    v38 = &v34[8 * v37];
    *(v38 + 8) = v22;
    *(v38 + 9) = v24;
  }

  v279 = v24;
  v280 = v22;
  v326 = HIDWORD(v11);
  v39 = *a2;
  v40 = v34;
  sub_1AFB82FB0(*a2, 1, v323, a4, v11, v287);
  sub_1AFB82FB0(v26, 2, v323, a4, v11, v287);
  sub_1AFB82FB0(v40, 3, v323, a4, v11, v287);
  v289 = *(a2 + 24);
  sub_1AFB82FB0(v289, 4, v323, a4, v11, v287);
  v291 = v39;
  v41 = sub_1AFB83C48(v39, v323);
  *(a3 + 50) = v41 & 1;
  if (v41)
  {
    v42 = *v324;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v324 = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1AF422C28(0, *(v42 + 2) + 1, 1, v42);
      *v324 = v42;
    }

    v44 = *(v42 + 2);
    sub_1AFCEF610(v44);
    v45 = *v324;
    *(v45 + 16) = v44 + 1;
    v46 = v45 + 16 * v44;
    *(v46 + 32) = &type metadata for ParticleParentID;
    *(v46 + 40) = &off_1F252D8C8;
    *v324 = v45;
  }

  sub_1AFB83D64(v39, a3, v323, a4);
  v47 = *(v320 + 32);
  v423[0] = *(v320 + 16);
  v423[1] = v47;
  v424 = *(v320 + 48);
  sub_1AF6B06C0(v323, v423, 0x200000000, &v329);
  v322 = v11;
  v290 = a2;
  if (v329)
  {
    if (v336 >= 1)
    {
      v309 = v333;
      if (v333)
      {
        v48 = 0;
        v307 = v332;
        v49 = v335;
        v317 = *(v335 + 32);
        v321 = 0;
        v50 = *(v334 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v381 = v329;
        v382 = v330;
        v383 = v331;
        v305 = v50;
        while (1)
        {
          v51 = (v307 + 48 * v48);
          v52 = *v51;
          v314 = v51[1];
          v54 = *(v51 + 2);
          v53 = *(v51 + 3);
          v56 = *(v51 + 4);
          v55 = *(v51 + 5);
          if (v50)
          {
            v57 = *(v55 + 376);

            os_unfair_lock_lock(v57);
            os_unfair_lock_lock(*(v55 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v317);
          v58 = *(v49 + 64);
          v421[0] = *(v49 + 48);
          v421[1] = v58;
          v422 = *(v49 + 80);
          v59 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
          *(v49 + 48) = ecs_stack_allocator_allocate(*(v49 + 32), 48 * v59, 8);
          *(v49 + 56) = v59;
          *(v49 + 72) = 0;
          *(v49 + 80) = 0;
          *(v49 + 64) = 0;
          v60 = sub_1AF64B110(&type metadata for ParticleSubSpawn, &off_1F2566840, v54, v53, v56, v49);
          if (v54)
          {
            if (v56)
            {
              v61 = v60 + 4;
              v11 = v322;
              do
              {
                if (*(v61 - 1) == v322 && *v61 == v326)
                {
                  sub_1AF65D974(&type metadata for ParticleID, &off_1F252DFA8);
                }

                v61 += 6;
                --v56;
              }

              while (v56);
              goto LABEL_62;
            }
          }

          else if (v52 != v314)
          {
            v63 = v314 - v52;
            v64 = &v60[24 * v52 + 4];
            v11 = v322;
            do
            {
              if (*(v64 - 1) == v322 && *v64 == v326)
              {
                sub_1AF65D974(&type metadata for ParticleID, &off_1F252DFA8);
              }

              v64 += 24;
              --v63;
            }

            while (v63);
            goto LABEL_62;
          }

          v11 = v322;
LABEL_62:
          sub_1AF630994(v49, &v381, v421);
          sub_1AF62D29C(v55);
          ecs_stack_allocator_pop_snapshot(v317);
          v50 = v305;
          if (v305)
          {
            os_unfair_lock_unlock(*(v55 + 344));
            os_unfair_lock_unlock(*(v55 + 376));
          }

          if (++v48 == v309)
          {
            goto LABEL_73;
          }
        }
      }
    }

    v321 = 0;
LABEL_73:
    sub_1AFB91B88(&v329, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    a2 = v290;
  }

  else
  {
    v321 = 0;
  }

  v66 = sub_1AF65AF08(*v324, v301);

  v68 = sub_1AFB92698(v67, v11, a2, a3, v66);

  if (v68 != 2)
  {

    v69 = sub_1AF6496EC(v297);

    v70 = *(v299 + 28);
    v71 = *(v299 + 32);

    LOBYTE(v413) = v71;
    sub_1AFB7BFB0(v69, v70 | (v71 << 32), a2, a3, v323, 1);

    if (v68)
    {
      v72 = *(v289 + 16);
      if (v72)
      {
        v73 = (v323 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
        v74 = (v289 + 36);
        v75 = thread_worker_index;
        do
        {
          v76 = *(v74 - 1);
          v77 = *v74;
          if ((v76 != -1 || v77 != 0) && (v76 & 0x80000000) == 0 && v73[1] > v76)
          {
            v79 = (*v73 + 12 * v76);
            if (v77 == -1 || v79[2] == v77)
            {
              v80 = *(*(v323 + 144) + 8 * *v79 + 32);
              (v75)(&thread_worker_index);
              v82 = *(v80 + 192);
              if (v82)
              {
                v83 = *(v80 + 208);
                *(v82 + 8 * (v81 >> 6)) |= 1 << v81;
                *(v83 + 8 * (v81 >> 6)) &= ~(1 << v81);
              }

              sub_1AF705804(v81);
            }
          }

          v74 += 2;
          --v72;
        }

        while (v72);
      }
    }
  }

  v84 = swift_weakAssign();
  v85 = *(v290 + 40);
  *(a3 + 152) = *(v290 + 32);
  *(a3 + 160) = v85;
  v86 = *(v290 + 74);
  v87 = sub_1AFB7FA04(v84, 0, 0, v86);

  *(a3 + 320) = v87;
  v88 = sub_1AFB7FA04(a3, 1, 0, v86);

  *(a3 + 328) = v88;
  *(a3 + 264) = 0;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  v89 = *(v289 + 16);
  if (v89)
  {
    v90 = v323;
    v91 = (v323 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v92 = (v289 + 36);
    v318 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
    v325 = (v323 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    while (1)
    {
      v93 = *(v92 - 1);
      v94 = *v92;
      v95 = *(v92 - 1);
      v96 = v93 == -1 && v94 == 0;
      v97 = v96;
      if (!v96)
      {
        v103 = v91[1];
        if ((v93 & 0x80000000) == 0 && v103 > v93)
        {
          v104 = (*v91 + 12 * v93);
          v105 = v104[2];
          if (v94 == -1 || v105 == v94)
          {
            v107 = *v104;
            v87 = *(*&v90[6].Flags + 8 * v107 + 32);
            if ((v87[7].Description & 1) == 0)
            {
              goto LABEL_96;
            }

            v108 = v107 | (*(v104 + 3) << 48) | (*(v104 + 2) << 32);
            swift_retain_n();
            sub_1AF684210(v87, v323, v108, v105, v323, v93 | (v94 << 32), a3);
            v90 = v323;

            v91 = v325;
            v103 = v325[1];
          }
        }

        if ((v93 & 0x80000000) == 0 && v103 > v93)
        {
          v109 = *v91 + 12 * v93;
          if (v94 == -1 || *(v109 + 8) == v94)
          {
            v111 = *(*(*&v90[3].NumRequirements + 8 * *(v109 + 6) + 32) + 16);
            v112 = *(v111 + 128);
            if (*(v112 + 16) && (v87 = &type metadata for Position, v113 = sub_1AF449CB8(&type metadata for Position), (v114 & 1) != 0))
            {
              v115 = *(*(v111 + 24) + 16 * *(*(v112 + 56) + 8 * v113) + 32);
              v90 = v323;
              if (v115 == &type metadata for Position)
              {
                v91 = v325;
                v98 = v325[1];
                if ((v93 & 0x80000000) == 0)
                {
                  goto LABEL_111;
                }

                goto LABEL_148;
              }
            }

            else
            {
              v90 = v323;
            }
          }
        }
      }

      v87 = (v93 | (v94 << 32));
      if (sub_1AF67CACC(&type metadata for Orientation, &off_1F252C828, v87) || sub_1AF67CACC(&type metadata for Scale1, &off_1F252F708, v93 | (v94 << 32)) || sub_1AF67CACC(&type metadata for Scale2, &off_1F252F7B8, v93 | (v94 << 32)) || sub_1AF67CACC(&type metadata for Scale3, &off_1F252F918, v93 | (v94 << 32)))
      {
        v91 = v325;
        if (v97)
        {
          goto LABEL_96;
        }

        v93 = v93;
        v98 = v325[1];
        if ((v93 & 0x80000000) == 0)
        {
LABEL_111:
          if (v98 > v93)
          {
            v99 = (*v91 + 12 * v93);
            if (v94 == -1 || v99[2] == v94)
            {
              v100 = v90;
              v101 = *(v99 + 2);
              v87 = *(*&v100[6].Flags + 8 * *v99 + 32);
              if (v87[14].Description > v101 || v87[15].Kind <= v101)
              {
                v90 = v100;
              }

              else
              {
                v310 = *(&v100->Flags + v318);
                v116 = *v310;
                Description = v87[21].Description;

                os_unfair_lock_lock(Description);
                ecs_stack_allocator_push_snapshot(*(v116 + 32));
                if (sub_1AF657F68(&type metadata for WorldTransform))
                {
                }

                else
                {
                  v118 = *(v116 + 32);

                  v119 = ecs_stack_allocator_allocate(v118, 8, 8);
                  *v119 = v101;
                  sub_1AF648EC4(&type metadata for WorldTransform, &off_1F2529FC0, v119, 1, 1, *v310);
                }

                sub_1AF6877B0(v93 | (v94 << 32), v323, v323, v93 | (v94 << 32));

                ecs_stack_allocator_pop_snapshot(*(v116 + 32));
                os_unfair_lock_unlock(v87[21].Description);

                v91 = v325;
                v98 = v325[1];
                v90 = v323;
              }
            }
          }
        }

LABEL_148:
        if ((v95 & 0x80000000) == 0 && v98 > v93)
        {
          v120 = (*v91 + 12 * v93);
          if (v94 == -1 || v120[2] == v94)
          {
            v121 = v90;
            v122 = *(v120 + 2);
            v87 = *(*&v121[6].Flags + 8 * *v120 + 32);
            if (v87[14].Description > v122 || v87[15].Kind <= v122)
            {
              v90 = v121;
            }

            else
            {
              v311 = *(&v121->Flags + v318);
              v124 = *v311;
              v125 = v87[21].Description;

              os_unfair_lock_lock(v125);
              v315 = v124;
              ecs_stack_allocator_push_snapshot(*(v124 + 32));
              v126 = *(v87[2].Description + 2);
              v127 = *(v126 + 128);
              if (!*(v127 + 16) || (v128 = sub_1AF449CB8(&type metadata for NotInHierarchy), (v129 & 1) == 0) || *(*(v126 + 24) + 16 * *(*(v127 + 56) + 8 * v128) + 32) != &type metadata for NotInHierarchy)
              {
                v130 = *(v315 + 32);

                v131 = ecs_stack_allocator_allocate(v130, 8, 8);
                *v131 = v122;
                v308 = v131;
                v312 = *v311;
                v132 = v87[1].Description;

                *&v415[0] = 0;
                v413 = 0u;
                v414 = 0u;
                memset(v410, 0, 40);
                v306 = sub_1AF65A4B4(v132, &type metadata for NotInHierarchy, &off_1F252A400, 0, 0, &v413, v410);

                sub_1AFB93108(v410, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
                sub_1AFB93108(&v413, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
                sub_1AF64A824(v308, 1, 1, v306, v312);
              }

              ecs_stack_allocator_pop_snapshot(*(v315 + 32));
              os_unfair_lock_unlock(v87[21].Description);

LABEL_163:
              v90 = v323;
              v91 = v325;
            }
          }
        }

        if (v95 < 0)
        {
          goto LABEL_96;
        }

        if (v91[1] <= v93)
        {
          goto LABEL_96;
        }

        v133 = (*v91 + 12 * v93);
        if (v94 != -1 && v133[2] != v94)
        {
          goto LABEL_96;
        }

        v134 = *(v133 + 2);
        v87 = *(*&v90[6].Flags + 8 * *v133 + 32);
        if (v87[14].Description > v134 || v87[15].Kind <= v134)
        {
          goto LABEL_96;
        }

        v136 = **(&v90->Flags + v318);
        v137 = v87[21].Description;

        os_unfair_lock_lock(v137);
        ecs_stack_allocator_push_snapshot(*(v136 + 32));
        v138 = *(v136 + 112);
        *(v136 + 112) = 1;
        v139 = *(v87[2].Description + 2);
        v140 = *(v139 + 128);
        if (*(v140 + 16) && (v141 = sub_1AF449CB8(&type metadata for Parent), (v142 & 1) != 0) && *(*(v139 + 24) + 16 * *(*(v140 + 56) + 8 * v141) + 32) == &type metadata for Parent)
        {
          *&v413 = &type metadata for Parent;
          *(&v413 + 1) = &off_1F2529C98;
          BYTE8(v415[0]) = 1;
          MEMORY[0x1EEE9AC00](v141);

          sub_1AF63023C(0, v87, sub_1AF6897B4);
          sub_1AF635250(&v413);
        }

        else
        {
        }

        sub_1AF62D29C(v87);

        *(v136 + 112) = v138;
        ecs_stack_allocator_pop_snapshot(*(v136 + 32));
        os_unfair_lock_unlock(v87[21].Description);

        goto LABEL_95;
      }

      sub_1AF65CD48(v93 | (v94 << 32), v90, &type metadata for WorldTransform, &off_1F2529FC0, 0);
      sub_1AF65CD48(v93 | (v94 << 32), v90, &type metadata for NotInHierarchy, &off_1F252A400, 0);
      if ((v97 & 1) == 0)
      {
        goto LABEL_163;
      }

LABEL_95:
      v90 = v323;
      v91 = v325;
LABEL_96:
      v92 += 2;
      if (!--v89)
      {
        goto LABEL_177;
      }
    }
  }

  v90 = v323;
LABEL_177:
  v313 = v304 & 0x100000000;
  v143 = *(&v90->Flags + OBJC_IVAR____TtC3VFX13EntityManager_scheduler);

  v144 = v322;
  sub_1AF6D763C(v322);
  v145 = v303;
  v302 = v143;
  if ((v295 & 1) == 0)
  {
    if (sub_1AF657F68(&type metadata for ParticleLifetime) || sub_1AF657F68(&type metadata for ParticleAge))
    {
      v146 = swift_conformsToProtocol2();
      if (!v146)
      {
        goto LABEL_285;
      }

      v147 = v146;
      v390[0] = v313 != 0;
      LOBYTE(v413) = v313 != 0;
      sub_1AFB93CB8(v322, v304 | ((v313 != 0) << 32), &v337);
      *(v410 + 2) = v337;
      *(&v410[1] + 2) = v338;
      *(&v410[2] + 2) = v339;
      v148 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
      if (v149)
      {
        v150 = v338;
        v151 = v339;
        v152 = BYTE8(v338);
        v153 = DWORD2(v337);
        v154 = BYTE12(v337);
      }

      else
      {
        v156 = v148;
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v157 = swift_allocObject();
        *(v157 + 16) = xmmword_1AFE431C0;
        *(v157 + 56) = &type metadata for ParticleClassSpawnID;
        *(v157 + 64) = &off_1F254ECF8;
        *(v157 + 32) = v156;
        v158 = (v157 + 32);
        sub_1AF5FC13C(v157, &v340, xmmword_1AFE431C0);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v158);
        swift_deallocClassInstance();
        v150 = v343;
        v155 = v340;
        v153 = v341;
        v154 = v342;
        v152 = v344;
        v151 = v345;
      }

      *(&v413 + 1) = 0xFFFFFFFFLL;
      *(v415 + 14) = v410[0];
      *&v413 = v323;
      *&v414 = &type metadata for ParticleLifeAndDeath;
      *(&v414 + 1) = v147;
      *&v415[0] = __PAIR64__(v326, v322);
      DWORD2(v415[0]) = v304;
      BYTE12(v415[0]) = v390[0];
      BYTE13(v415[0]) = 1;
      *(&v415[1] + 14) = v410[1];
      *(&v415[2] + 8) = *(&v410[1] + 10);
      *(&v415[3] + 1) = v155;
      LODWORD(v416) = v153;
      BYTE4(v416) = v154;
      *(&v416 + 1) = v150 | 8;
      LOBYTE(v417) = v152;
      v90 = v323;
      *(&v417 + 1) = v151;
      type metadata accessor for ParticleLifeAndDeath.System();
      v87 = swift_allocObject();
      v418 = v415[1];
      v419 = v415[2];
      v420 = *&v415[3];
      sub_1AF68A8E0(&v413, v410);
      sub_1AF5C9348(v384);
      sub_1AF688940(&v413);
      v159 = v384[1];
      v87[1] = v384[0];
      v87[2] = v159;
      v87[3].Kind = v385;
      v160 = swift_allocObject();
      v161 = v415[3];
      *(v160 + 88) = v415[2];
      *(v160 + 104) = v161;
      v162 = v417;
      *(v160 + 120) = v416;
      *(v160 + 136) = v162;
      v163 = v414;
      *(v160 + 24) = v413;
      *(v160 + 40) = v163;
      v164 = v415[1];
      *(v160 + 56) = v415[0];
      *(v160 + 16) = v87;
      *(v160 + 72) = v164;
      sub_1AF68A8E0(&v413, v410);
      v165 = swift_retain_n();
      v143 = v302;
      sub_1AFB8C384(v165, sub_1AFB92F34, v160, 200, v303, 1, v322, v302);

      sub_1AF688940(&v413);
    }

    if (sub_1AF657F68(&type metadata for ParticleRibbonLength))
    {
      v166 = swift_conformsToProtocol2();
      if (!v166)
      {
        goto LABEL_286;
      }

      v167 = v166;
      LOBYTE(v387[0]) = v313 != 0;
      LOBYTE(v410[0]) = v313 != 0;
      sub_1AFB93CB8(v322, v304 | ((v313 != 0) << 32), &v346);
      *&v390[2] = v346;
      *&v390[18] = v347;
      *&v390[34] = v348;
      v168 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
      if (v169)
      {
        v170 = v347;
        v171 = v348;
        v172 = BYTE8(v347);
        v173 = DWORD2(v346);
        v174 = BYTE12(v346);
      }

      else
      {
        v176 = v168;
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v177 = swift_allocObject();
        *(v177 + 16) = xmmword_1AFE431C0;
        *(v177 + 56) = &type metadata for ParticleClassSpawnID;
        *(v177 + 64) = &off_1F254ECF8;
        *(v177 + 32) = v176;
        v178 = (v177 + 32);
        sub_1AF5FC13C(v177, &v349, xmmword_1AFE431C0);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v178);
        swift_deallocClassInstance();
        v170 = v352;
        v175 = v349;
        v173 = v350;
        v174 = v351;
        v172 = v353;
        v171 = v354;
      }

      *(&v410[0] + 1) = 0xFFFFFFFFLL;
      *(&v410[2] + 14) = *v390;
      *&v410[0] = v323;
      *&v410[1] = &type metadata for ParticleRibbonLengthUpdate;
      *(&v410[1] + 1) = v167;
      *&v410[2] = __PAIR64__(v326, v322);
      DWORD2(v410[2]) = v304;
      BYTE12(v410[2]) = v387[0];
      BYTE13(v410[2]) = 3;
      *(&v410[3] + 14) = *&v390[16];
      *(&v410[4] + 8) = *&v390[26];
      *(&v410[5] + 1) = v175;
      LODWORD(v411) = v173;
      BYTE4(v411) = v174;
      *(&v411 + 1) = v170 & 0xFFFFFFFFFFFFFFF7;
      LOBYTE(v412) = v172;
      v90 = v323;
      *(&v412 + 1) = v171;
      type metadata accessor for ParticleRibbonLengthUpdate.System();
      v179 = swift_allocObject();
      v180 = swift_allocObject();
      v181 = v410[5];
      *(v180 + 88) = v410[4];
      *(v180 + 104) = v181;
      v182 = v412;
      *(v180 + 120) = v411;
      *(v180 + 136) = v182;
      v183 = v410[1];
      *(v180 + 24) = v410[0];
      *(v180 + 40) = v183;
      v184 = v410[3];
      *(v180 + 56) = v410[2];
      *(v180 + 16) = v179;
      *(v180 + 72) = v184;

      sub_1AF68A8E0(v410, v390);

      v143 = v302;
      sub_1AFB92BC0(v185, sub_1AFB92EC8, v180, v303, 1, v322, v302);

      sub_1AF688940(v410);
    }
  }

  *v390 = v291;

  sub_1AFB8F78C(v390, v90);
  v186 = v323;

  v187 = *(*v390 + 16);
  if (!v187)
  {

    if ((v295 & 1) == 0)
    {
      goto LABEL_243;
    }

LABEL_227:
    LOBYTE(v328[0]) = v313 != 0;

    LOBYTE(v387[0]) = v313 != 0;
    sub_1AFB93CB8(v144, v304 | ((v313 != 0) << 32), &v366);
    *(v375 + 2) = v366;
    *(&v375[1] + 2) = v367;
    *(&v375[2] + 2) = v368;
    v225 = sub_1AF3CD0F8(0xFFFFFFFFuLL);
    v226 = v186;
    if (v227)
    {
      v228 = v367;
      v229 = v368;
      v230 = BYTE8(v367);
      v231 = DWORD2(v366);
      v232 = BYTE12(v366);
      v233 = v366;
    }

    else
    {
      v234 = v225;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      v235 = swift_allocObject();
      *(v235 + 16) = xmmword_1AFE431C0;
      *(v235 + 56) = &type metadata for ParticleClassSpawnID;
      *(v235 + 64) = &off_1F254ECF8;
      *(v235 + 32) = v234;
      v236 = (v235 + 32);
      sub_1AF5FC13C(v235, &v369, xmmword_1AFE431C0);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v236);
      swift_deallocClassInstance();

      v228 = v372;
      v233 = v369;
      v231 = v370;
      v232 = v371;
      v230 = v373;
      v229 = v374;
    }

    *(&v387[0] + 1) = 0xFFFFFFFFLL;
    *(&v387[2] + 14) = v375[0];
    *&v387[0] = v226;
    *&v387[1] = &type metadata for EmitterRuntime;
    *(&v387[1] + 1) = &off_1F2563418;
    *&v387[2] = __PAIR64__(v326, v322);
    DWORD2(v387[2]) = v304;
    BYTE12(v387[2]) = v328[0];
    BYTE13(v387[2]) = 2;
    *(&v387[3] + 14) = v375[1];
    *(&v387[4] + 8) = *(&v375[1] + 10);
    *(&v387[5] + 1) = v233;
    LODWORD(v388) = v231;
    BYTE4(v388) = v232;
    *(&v388 + 1) = v228 | 8;
    LOBYTE(v389) = v230;
    *(&v389 + 1) = v229;
    type metadata accessor for ParticlePrepareGPUSystem();
    v237 = swift_allocObject();
    v238 = v387[5];
    v237[5] = v387[4];
    v237[6] = v238;
    v239 = v389;
    v237[7] = v388;
    v237[8] = v239;
    v240 = v387[1];
    v237[1] = v387[0];
    v237[2] = v240;
    v241 = v387[3];
    v237[3] = v387[2];
    v237[4] = v241;
    v242 = swift_allocObject();

    sub_1AF68A8E0(v387, v375);

    v243 = swift_allocObject();
    v243[2] = sub_1AFB93B40;
    v243[3] = v237;
    v243[4] = v242;
    v243[5] = &off_1F2566348;
    v244 = *(v302 + 24);

    if (v326 || v322 != -1)
    {

      v245 = sub_1AF3C9078(v322);
      v247 = v246;
      swift_retain_n();

      if (v247)
      {
        v248 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
        if (!v248)
        {

          LODWORD(v247) = 0;
          goto LABEL_240;
        }

        *&v375[0] = v245;
        *(&v375[0] + 1) = v247;
        MEMORY[0x1B2718AE0](47, 0xE100000000000000);
        v249 = sub_1AFDFE238();
        MEMORY[0x1B2718AE0](v249);

        LODWORD(v247) = vfx_counters.addCounter(name:scope:kind:)(*&v375[0], *(&v375[0] + 1), 0, 0, v248);

        goto LABEL_238;
      }
    }

    else
    {
      swift_retain_n();
    }

    v247 = *(v244 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
    if (v247)
    {
      v250 = sub_1AFDFE238();
      LODWORD(v247) = vfx_counters.addCounter(name:scope:kind:)(v250, v251, 0, 0, v247);

LABEL_240:
      *&v375[0] = v242;
      *(&v375[0] + 1) = __PAIR64__(v326, v322);
      *&v375[1] = "ParticlePrepareGPUSystem";
      *(&v375[1] + 1) = 24;
      LOBYTE(v375[2]) = 2;
      *(&v375[2] + 1) = *v327;
      DWORD1(v375[2]) = *&v327[3];
      *(&v375[2] + 1) = v242;
      *&v376 = &off_1F2566348;
      v145 = v303;
      *(&v376 + 1) = 298;
      *&v377 = v303;
      WORD4(v377) = 257;
      BYTE10(v377) = 1;
      HIDWORD(v377) = v247;
      *&v378 = sub_1AFB92EBC;
      *(&v378 + 1) = v243;
      os_unfair_lock_lock(*(v302 + 56));
      v386[2] = v375[2];
      v386[3] = v376;
      v386[4] = v377;
      v386[5] = v378;
      v143 = v302;
      v386[0] = v375[0];
      v386[1] = v375[1];
      sub_1AF6D8FC4(v375, v328);
      sub_1AF64D800(0, 0, v386);
      sub_1AF64D800(0, 0, v386);
      sub_1AF6D8FFC(v375);
      *(v302 + 160) = 257;
      os_unfair_lock_unlock(*(v302 + 56));
      sub_1AF6D8FFC(v375);

      sub_1AF688940(v387);
      v186 = v323;
      v252 = sub_1AFB8505C(&type metadata for PointCacheSpawner, &off_1F2568D70, v291, v323);
      if ((v253 & 1) == 0)
      {
        LOBYTE(v328[0]) = v313 != 0;
        sub_1AFB844E8(&type metadata for PointCacheSpawner, &off_1F2568180, v252, 2u, 0, v323, v322, v304 | ((v313 != 0) << 32), v302, v303);
      }

      v144 = v322;
      goto LABEL_243;
    }

LABEL_238:

    goto LABEL_240;
  }

  v188 = 0;
  v189 = (v323 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v190 = *v390 + 32;
  if (v313)
  {
    v191 = 0;
  }

  else
  {
    v191 = v304;
  }

  v296 = v191;
  v277 = (v323 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v278 = *(*v390 + 16);
  v276 = *v390 + 32;
  do
  {
    v192 = *(v190 + 8 * v188);
    v193 = HIDWORD(*(v190 + 8 * v188));
    v194 = v192 == -1 && v193 == 0;
    if (!v194 && (v192 & 0x80000000) == 0 && v189[1] > v192)
    {
      v195 = (*v189 + 12 * v192);
      if (v193 == -1 || v195[2] == v193) && (*(*(*(v323 + 144) + 8 * *v195 + 32) + 120))
      {
        v197 = *(*(*(*(v323 + 88) + 8 * *(v195 + 3) + 32) + 16) + 32);
        v87 = *(v197 + 16);
        if (v87)
        {
          v300 = *(v190 + 8 * v188);
          v281 = v188;
          v90 = &protocol descriptor for ParticleComponentSystemProcessable;

          v198 = 32;
          v298 = v197;
          while (1)
          {
            v207 = *(v197 + v198);
            v208 = swift_conformsToProtocol2();
            if (v208)
            {
              v209 = v207 == 0;
            }

            else
            {
              v209 = 1;
            }

            if (!v209)
            {
              v210 = v208;
              v211 = swift_conformsToProtocol2();
              if (!v211)
              {
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);

                __break(1u);

                os_unfair_lock_unlock(v87[21].Description);
                __break(1u);

                __break(1u);

                __break(1u);
                return result;
              }

              v316 = v211;
              v319 = v210;
              v321 = v87;
              LOBYTE(v375[0]) = v313 != 0;
              if (qword_1ED72D720 != -1)
              {
                swift_once();
              }

              v404 = qword_1ED73B840;
              v405 = 0;
              v406 = 2;
              v407 = 0;
              v408 = 2;
              v409 = 0;
              sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
              v212 = swift_allocObject();
              *(v212 + 16) = xmmword_1AFE431C0;
              *(v212 + 32) = &type metadata for Particle;
              *(v212 + 40) = &off_1F252D7A8;
              sub_1AF5F58E4(v212, 1, v355);
              swift_setDeallocating();
              swift_deallocClassInstance();
              sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
              v213 = swift_allocObject();
              *(v213 + 16) = xmmword_1AFE431C0;
              *(v213 + 56) = &type metadata for EmitterReference;
              *(v213 + 64) = &off_1F2563D20;
              *(v213 + 32) = v322;
              v214 = (v213 + 32);
              *(v213 + 36) = v326;
              sub_1AF5FC13C(v213, &v356, xmmword_1AFE431C0);
              sub_1AF692DB0(v355);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v214);
              swift_deallocClassInstance();
              v215 = v356;
              v216 = v357;
              v217 = v358;
              *&v401 = v356;
              DWORD2(v401) = v191;
              BYTE12(v401) = v313 >> 31;
              *&v402 = v357;
              BYTE8(v402) = v358;
              *(v387 + 2) = v401;
              v218 = v191;
              v219 = v359;
              v403 = v359;
              *(&v387[2] + 2) = v359;
              *(&v387[1] + 2) = v402;
              v220 = sub_1AF3CD0F8(v300);
              if (v221)
              {

                v199 = v313 >> 31;
              }

              else
              {
                v222 = v220;
                v223 = swift_allocObject();
                *(v223 + 16) = xmmword_1AFE431C0;
                *(v223 + 56) = &type metadata for ParticleClassSpawnID;
                *(v223 + 64) = &off_1F254ECF8;
                *(v223 + 32) = v222;
                v224 = (v223 + 32);
                sub_1AF5FC13C(v223, &v360, xmmword_1AFE431C0);
                swift_setDeallocating();
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v224);
                swift_deallocClassInstance();
                v216 = v363;
                v215 = v360;
                v218 = v361;
                v199 = v362;
                v217 = v364;
                v219 = v365;
              }

              *v390 = v323;
              *&v390[8] = v300;
              *&v390[16] = v207;
              *&v390[24] = v316;
              *&v390[32] = v322;
              *&v390[36] = v326;
              *&v390[40] = v304;
              v391 = v375[0];
              v392 = 1;
              v393 = v387[0];
              *v394 = v387[1];
              *&v394[10] = *(&v387[1] + 10);
              v395 = v215;
              v396 = v218;
              v397 = v199;
              v398 = v216 | 8;
              v399 = v217;
              v400 = v219;
              v200 = (*(v319 + 8))(v207);
              v202 = v201;
              v203 = *(v201 + 16);
              sub_1AF68A8E0(v390, v387);
              v204 = v203(v390, v200, v202);
              v205 = sub_1AFB95274(v390, v200, v202);
              v143 = v302;
              sub_1AF6DA834(v204, v205, v206, 200, v303, 1, v322, v302, v200, *(v202 + 8));
              swift_unknownObjectRelease();

              sub_1AF688940(v390);
              v191 = v296;
              v90 = &protocol descriptor for ParticleComponentSystemProcessable;
              v197 = v298;
              v87 = v321;
            }

            v198 += 16;
            v87 = (v87 - 1);
            if (!v87)
            {

              v144 = v322;
              v145 = v303;
              v189 = v277;
              v187 = v278;
              v188 = v281;
              v190 = v276;
              break;
            }
          }
        }
      }
    }

    ++v188;
  }

  while (v188 != v187);

  v186 = v323;
  if (v295)
  {
    goto LABEL_227;
  }

LABEL_243:
  if (sub_1AF657F68(&type metadata for ParticleID))
  {
    if (sub_1AFB8C918(v288, v186))
    {
      v186 = v323;
    }

    else
    {
      LOBYTE(v375[0]) = v313 != 0;
      v186 = v323;
      if (v295)
      {
        sub_1AFB844E8(&type metadata for ParticleSetID, &off_1F254E750, 0xFFFFFFFFuLL, 2u, 0, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      }

      else
      {
        sub_1AFB84154(&type metadata for ParticleSetID, &off_1F254E950, 0xFFFFFFFFuLL, 2u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      }
    }
  }

  *&v375[0] = v288;

  sub_1AFB8F78C(v375, v186);

  v254 = *&v375[0];
  LOBYTE(v375[0]) = v313 != 0;
  sub_1AFB8516C(v254, 2u, v295, v186, a4, v144, v304 | ((v313 != 0) << 32), v143, v145);

  if (sub_1AF67CACC(&type metadata for NeighborGrid, &off_1F2563D40, v144))
  {
    if (v295)
    {
      LOBYTE(v375[0]) = v313 != 0;
      v255 = v323;
      sub_1AFB844E8(&type metadata for ParticleGenerateGrid, &off_1F2555E50, 0xFFFFFFFFuLL, 2u, 1, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      if (v283)
      {
        goto LABEL_260;
      }

      goto LABEL_259;
    }

    LOBYTE(v375[0]) = v313 != 0;
    v255 = v323;
    sub_1AFB84154(&type metadata for ParticleGenerateGrid, &off_1F2556018, 0xFFFFFFFFuLL, 2u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
    if (v283)
    {
      goto LABEL_262;
    }

LABEL_261:
    inited = type metadata accessor for ParticleInitScript(0);
    LOBYTE(v375[0]) = v313 != 0;
    sub_1AFB84154(inited, &off_1F255B998, v286 | (v285 << 32), 2u, v255, v144, v304 | ((v313 != 0) << 32), v143, v145);
    goto LABEL_262;
  }

  if (!v283)
  {
    v255 = v323;
    if (v295)
    {
LABEL_259:
      v256 = type metadata accessor for ParticleInitScript(0);
      LOBYTE(v375[0]) = v313 != 0;
      sub_1AFB844E8(v256, &off_1F255BC00, v286 | (v285 << 32), 2u, 0, v255, v144, v304 | ((v313 != 0) << 32), v143, v145);
      goto LABEL_260;
    }

    goto LABEL_261;
  }

  v255 = v323;
  if (v295)
  {
LABEL_260:

    LOBYTE(v375[0]) = v313 != 0;
    sub_1AFB97C5C(v257, 0xFFFFFFFFuLL, &type metadata for EmitterRuntime, &off_1F2563418, v144, v304 | ((v313 != 0) << 32), 2u, v375);

    v258 = type metadata accessor for ParticlePostInitGPUSystem();
    v259 = swift_allocObject();
    v260 = v378;
    v259[5] = v377;
    v259[6] = v260;
    v261 = v380;
    v259[7] = v379;
    v259[8] = v261;
    v262 = v375[1];
    v259[1] = v375[0];
    v259[2] = v262;
    v263 = v376;
    v259[3] = v375[2];
    v259[4] = v263;
    sub_1AF68A8E0(v375, v328);
    sub_1AF6D7C1C(v258, &off_1F25662F0, 300, v145, 1, v144, sub_1AFB92E74, v259);

    sub_1AF688940(v375);
  }

LABEL_262:
  v328[0] = v292;

  sub_1AFB8F78C(v328, v255);

  v265 = v328[0];
  LOBYTE(v328[0]) = v313 != 0;
  sub_1AFB8516C(v265, 3u, v295, v255, a4, v144, v304 | ((v313 != 0) << 32), v143, v145);

  if (v282)
  {
    v266 = a3;
    if (v284)
    {
      if (!v295)
      {
        goto LABEL_270;
      }

      goto LABEL_268;
    }

LABEL_274:
    if (!(v295 & 1 | ((*(v290 + 58) & 1) == 0)))
    {
      LOBYTE(v328[0]) = v313 != 0;
      sub_1AFB84154(&type metadata for ParticleUpdateAABB, &off_1F2558690, 0xFFFFFFFFuLL, 3u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
    }

    goto LABEL_276;
  }

  updated = type metadata accessor for ParticleUpdateScript(0);
  v268 = v280 | (v279 << 32);
  v266 = a3;
  if ((v295 & 1) == 0)
  {
    LOBYTE(v328[0]) = v313 != 0;
    sub_1AFB84154(updated, &off_1F255BAA8, v268, 3u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
    if (v284)
    {
LABEL_270:
      LOBYTE(v328[0]) = v313 != 0;
      sub_1AFB84154(&type metadata for ParticleIntegrate, &off_1F2556208, 0xFFFFFFFFuLL, 3u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      if (sub_1AF657F68(&type metadata for AngularVelocity))
      {
        LOBYTE(v328[0]) = v313 != 0;
        sub_1AFB84154(&type metadata for ParticleIntegrateOrientation, &off_1F25564A8, 0xFFFFFFFFuLL, 3u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      }

      if (sub_1AF657F68(&type metadata for ParticleAngleVelocity))
      {
        LOBYTE(v328[0]) = v313 != 0;
        sub_1AFB84154(&type metadata for ParticleIntegrateAngle, &off_1F2556358, 0xFFFFFFFFuLL, 3u, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
      }

      goto LABEL_274;
    }

    goto LABEL_274;
  }

  LOBYTE(v328[0]) = v313 != 0;
  sub_1AFB844E8(updated, &off_1F255BAF0, v268, 3u, 0, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
  if (v284)
  {
LABEL_268:
    LOBYTE(v328[0]) = v313 != 0;
    sub_1AFB844E8(&type metadata for ParticleIntegrate, &off_1F2556028, 0xFFFFFFFFuLL, 3u, 0, v323, v144, v304 | ((v313 != 0) << 32), v143, v145);
  }

LABEL_276:
  v328[0] = v289;

  sub_1AFB8F78C(v328, v323);

  v269 = v328[0];
  LOBYTE(v328[0]) = v313 != 0;
  sub_1AFB8516C(v269, 4u, 0, v323, a4, v144, v304 | ((v313 != 0) << 32), v143, v145);

  v270 = v295;
  if (!a4)
  {
    v270 = 0;
  }

  if (v270)
  {

    v271 = *(v323 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v272 = *(v323 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v273 = v272;
    sub_1AFBB8180(v274, a4, v271, v272);

    if (*(*(v266 + 624) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v328[0] = *(v266 + 624);
      sub_1AFB92AF4(0);
      sub_1AFDFE4B8();

      *(v266 + 624) = v328[0];
      return result;
    }
  }

  else
  {
  }
}

void sub_1AFB82FB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v121 = a6;
  v106 = a5;
  v124 = a2;
  sub_1AF0D4E74(0);
  v113 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return;
  }

  v14 = 0;
  v104 = 0;
  v105 = HIDWORD(v106);
  v15 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v16 = a1 + 32;
  v109 = 0x80000001AFF49E90;
  v108 = (v11 + 32);
  v107 = xmmword_1AFE431C0;
  v123 = a4;
  v122 = a3;
  v120 = v13;
  v118 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v119 = a1 + 32;
  while (1)
  {
    v17 = (v16 + 8 * v14);
    v18 = v17[1];
    v19 = *v17;
    if (v19 == -1 && v18 == 0)
    {
      goto LABEL_5;
    }

    v21 = v19;
    if ((v19 & 0x80000000) == 0 && v15[1] > v19)
    {
      v22 = (*v15 + 12 * v19);
      if (v18 == -1 || v22[2] == v18)
      {
        v24 = v18;
        v25 = *(v22 + 2);
        v26 = *(*(a3 + 144) + 8 * *v22 + 32);
        v27 = *(v26[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);

        if (v27 == 4)
        {
          v29 = *(v28 + 233);
          v30 = *(v28 + 224);

          v31 = v30 > 1;
          if ((v29 & 1) == 0)
          {
            v31 = v30 > 0;
          }
        }

        else
        {

          v31 = 1;
        }

        v32 = v26[24];
        v18 = v24;
        v21 = v19;
        v13 = v120;
        v16 = v119;
        if (v32 && (*(v32 + 8 * (v25 >> 6)) & (1 << v25)) != 0 && v31)
        {
          *(v26[26] + 8 * (v25 >> 6)) |= 1 << v25;
        }
      }
    }

    if ((v21 & 0x80000000) == 0)
    {
      v33 = v15[1];
      if (v33 > v19)
      {
        break;
      }
    }

LABEL_61:
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_5;
    }

    if (v15[1] <= v19)
    {
      goto LABEL_88;
    }

LABEL_63:
    v58 = (*v15 + 12 * v19);
    if (v18 == -1 || v58[2] == v18)
    {
      v60 = *(*(*(a3 + 144) + 8 * *v58 + 32) + 120);
    }

    else
    {
      v60 = 1;
    }

    v61 = (*v15 + 12 * v19);
    if (v18 == -1 || v61[2] == v18)
    {
      v63 = *(v61 + 2);
      v64 = *(*(a3 + 144) + 8 * *v61 + 32);
      v65 = *(v64 + 48);
      v66 = (v65 + 32);
      v67 = *(v65 + 16) + 1;
      while (--v67)
      {
        v68 = v66 + 5;
        v69 = *v66;
        v66 += 5;
        if (v69 == &type metadata for SetActive)
        {
          v70 = *(&(*(v68 - 2))->Kind + *(v64 + 128) + v63);
          if (v60 != v70)
          {
            v115 = v70;
            LODWORD(v116) = v60;
            *&v125 = v18;
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v133 = 0;
            v134 = 0xE000000000000000;
            sub_1AFDFE218();

            v133 = 0xD000000000000021;
            v134 = v109;
            v71 = sub_1AF65B3FC(v21 | (v125 << 32));
            MEMORY[0x1B2718AE0](v71);

            v73 = v133;
            v72 = v134;
            v74 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v117 = v21;
            if (qword_1ED730E98 != -1)
            {
              swift_once();
            }

            v75 = qword_1ED73B890;
            sub_1AFB9246C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v76 = swift_allocObject();
            *(v76 + 16) = v107;
            *(v76 + 56) = MEMORY[0x1E69E6158];
            *(v76 + 64) = sub_1AF0D544C();
            *(v76 + 32) = v73;
            *(v76 + 40) = v72;

            v114 = v73;
            v77 = v74;
            sub_1AFDFC4C8(v74, &dword_1AF0CE000, v75, "%{public}s", 10, 2, v76);

            v78 = v110;
            sub_1AFDFC288();
            v79 = v113[12];
            v80 = v113[16];
            v81 = v112;
            v82 = &v112[v113[20]];
            (*v108)(v112, v78, v111);
            *(v81 + v79) = v77;
            *(v81 + v80) = 0;
            *v82 = v114;
            *(v82 + 1) = v72;

            sub_1AFDFC608();

            sub_1AFB930A8(v81, sub_1AF0D4E74);

            a3 = v122;
            v13 = v120;
            v15 = v118;
            v16 = v119;
            v18 = v125;
            v21 = v117;
            v60 = v116;
            v70 = v115;
          }

          goto LABEL_87;
        }
      }
    }

    v70 = v60;
LABEL_87:
    if ((v60 | v70))
    {
LABEL_88:
      if ((v21 & 0x80000000) == 0 && v15[1] > v19)
      {
        v83 = (*v15 + 12 * v19);
        v84 = *(v83 + 2);
        if (v18 == -1 || v83[2] == v18)
        {
          v85 = *(*(*(*(a3 + 88) + 8 * *(v83 + 3) + 32) + 16) + 32);
          if (*(v85 + 16))
          {
            v86 = *(*(a3 + 144) + 8 * *v83 + 32);
            v52 = v85 + 32;
            v87 = v21 | (v18 << 32);
            v116 = *(*(a3 + 88) + 8 * *(v83 + 3) + 32);

            v88 = 0;
            do
            {
              v89 = *(v52 + 16 * v88++);
              v90 = *(v86 + 48);
              v92 = *(v90 + 16);
              v91 = v90 + 16;
              v93 = v89;
              v94 = v92 + 1;
              do
              {
                if (!--v94)
                {
                  sub_1AFDFE518();
                  __break(1u);
                  goto LABEL_106;
                }

                v95 = (v91 + 40);
                v96 = *(v91 + 16);
                v91 += 40;
              }

              while (v96 != v89);
              v97 = *(v95 - 1);
              if (v97 <= 1)
              {
                v97 = 1;
              }

              v98 = *(v86 + 128) + *v95 + v97 * v84;
              v135 = v89;
              v125 = v89;
              v99 = sub_1AF585714(&v133);
              sub_1AF641154(v98, v93, v99);
              sub_1AF441194(&v133, v129);
              sub_1AF5C5358(0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent);
              sub_1AF5C5358(0, &unk_1ED724110, &protocol descriptor for ParticleComponentRequirement);
              if (swift_dynamicCast())
              {
                sub_1AF0FBA54(v126, &v130);
                v100 = v131;
                v101 = v132;
                sub_1AF441150(&v130, v131);
                v102 = (*(v101 + 8))(v87, v122, v100, v101);
                sub_1AFB7C604(v102);

                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v130);
              }

              else
              {
                v127 = 0;
                memset(v126, 0, sizeof(v126));
                sub_1AFB93108(v126, &qword_1ED724108, &unk_1ED724110, &protocol descriptor for ParticleComponentRequirement);
              }

              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v133);
            }

            while (v88 != *(v85 + 16));
LABEL_3:

LABEL_4:
            a3 = v122;
            v13 = v120;
            v15 = v118;
            v16 = v119;
          }

          else
          {
            v13 = v120;
            v15 = v118;
            v16 = v119;
          }
        }
      }
    }

LABEL_5:
    if (++v14 == v13)
    {
      return;
    }
  }

  v34 = *v15 + 12 * v19;
  if (v18 != -1 && *(v34 + 8) != v18)
  {
LABEL_51:
    if (v33 <= v19)
    {
      goto LABEL_88;
    }

    goto LABEL_63;
  }

  v36 = *(*(a3 + 88) + 8 * *(v34 + 6) + 32);
  v37 = *(*(v36 + 16) + 32);
  v38 = *(v37 + 16);
  if (!v38)
  {
    v13 = v120;
    v15 = v118;
    v16 = v119;
    goto LABEL_51;
  }

  v117 = v21;
  *&v125 = v18;
  v116 = v36;

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v37 + 40;
  v114 = v37 + 40;
  while (2)
  {
    v115 = v40;
    v43 = v42 + 16 * v39++;
LABEL_36:
    v44 = *(v43 - 8);
    v45 = *(*v43 + 8);
    v46 = (*(v45 + 48))(v44, v45);
    if ((v41 & 1) == 0)
    {
      if (v124 == 4)
      {
        goto LABEL_40;
      }

      goto LABEL_34;
    }

    if (v124 == 4)
    {
      v46 = 1;
LABEL_40:
      if (v123)
      {
        v41 = v46;

        v48 = sub_1AF70B788(v47, v44, v45);

        if (!v48)
        {
          v40 = 1;
          v42 = v114;
          if (v38 != v39)
          {
            continue;
          }

          goto LABEL_3;
        }

        v46 = v41;
      }

LABEL_34:
      if (v38 == v39)
      {
        v49 = v46;

        if (v115)
        {
          goto LABEL_4;
        }

        a3 = v122;
        v13 = v120;
        v15 = v118;
        v16 = v119;
        if ((v49 & 1) == 0)
        {
          v18 = v125;
          v21 = v117;
          goto LABEL_61;
        }

        goto LABEL_54;
      }

LABEL_35:
      ++v39;
      v43 += 16;
      v41 = v46;
      goto LABEL_36;
    }

    break;
  }

  if (v38 != v39)
  {
    v46 = 1;
    goto LABEL_35;
  }

  a3 = v122;
  v13 = v120;
  v15 = v118;
  v16 = v119;
  if (v115)
  {
    goto LABEL_5;
  }

LABEL_54:
  v21 = v117;
  v18 = v125;
  if (v117 == v106 && v125 == v105)
  {
    goto LABEL_61;
  }

  if (v15[1] <= v19)
  {
    goto LABEL_61;
  }

  v50 = (*v15 + 12 * v19);
  if (v125 != -1 && v50[2] != v125)
  {
    goto LABEL_61;
  }

  v51 = v16;
  v52 = *(*(a3 + 144) + 8 * *v50 + 32);
  v53 = *(v52 + 344);
  LODWORD(v116) = *(v50 + 2);
  v54 = v125;
  os_unfair_lock_lock(v53);
  v55 = v21 | (v54 << 32);
  v56 = v104;
  sub_1AFC18B5C(v52, v116, v106, a3, v55);
  v57 = &v128;
  v104 = v56;
  if (!v56)
  {
    os_unfair_lock_unlock(*(v52 + 344));
    v18 = v125;
    v16 = v51;
    goto LABEL_61;
  }

LABEL_106:

  os_unfair_lock_unlock(*(v52 + 344));
  __break(1u);
}

uint64_t sub_1AFB83C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  for (i = (a1 + 36); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    if ((v6 != -1 || v7 != 0) && (v6 & 0x80000000) == 0 && v4[1] > v6)
    {
      v9 = (*v4 + 12 * v6);
      if ((v7 == -1 || v9[2] == v7) && *(*(*(a2 + 144) + 8 * *v9 + 32) + 120) == 1)
      {
        v10 = *(*(*(a2 + 88) + 8 * *(v9 + 3) + 32) + 16);
        v11 = *(v10 + 128);
        if (*(v11 + 16))
        {
          v12 = sub_1AF449CB8(&type metadata for ParticleSubSpawn);
          if ((v13 & 1) != 0 && *(*(v10 + 24) + 16 * *(*(v11 + 56) + 8 * v12) + 32) == &type metadata for ParticleSubSpawn)
          {
            break;
          }
        }
      }
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

double sub_1AFB83D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 120) = 0;
  *(*(a2 + 128) + 24) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (a3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v8 = a1 + 32;
    while (1)
    {
      v9 = (v8 + 8 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = v11 == -1 && v10 == 0;
      if (v12 || v11 < 0 || v7[1] <= v11)
      {
        goto LABEL_20;
      }

      v13 = (*v7 + 12 * v11);
      if (v10 != -1 && v13[2] != v10)
      {
        goto LABEL_20;
      }

      v15 = *(*(a3 + 144) + 8 * *v13 + 32);
      if (*(v15 + 120) == 1)
      {
        break;
      }

LABEL_30:
      if (++v6 == v5)
      {
        goto LABEL_41;
      }
    }

    v16 = *(v13 + 2);
    v17 = *(v15 + 48);
    v18 = (v17 + 32);
    v19 = *(v17 + 16) + 1;
    while (--v19)
    {
      v20 = v18 + 5;
      v21 = *v18;
      v18 += 5;
      if (v21 == &type metadata for ParticleSpawnID)
      {
        v22 = *(v20 - 2) + *(v15 + 128);
        v23 = *&v22[8 * v16];
        v24 = *(a2 + 128);
        v25 = v23 >> 6;
        v26 = v24[3];
        if (v23 >> 6 >= v26)
        {
          v47 = *&v22[8 * v16];
          v23 = v25 + 1;
          v46 = v24[2];

          if (v46 <= v25)
          {
            v34 = swift_slowAlloc();
            v35 = v34;
            v36 = v24[3];
            if (v36)
            {
              for (i = 0; i != v36; ++i)
              {
                *(v34 + 8 * i) = *(v24[4] + 8 * i);
              }
            }

            MEMORY[0x1B271DEA0](v24[4], -1, -1);
            v24[4] = v35;
            v24[2] = 2 * v23;
            v26 = v24[3];
          }

          for (; v23 != v26; ++v26)
          {
            *(v24[4] + 8 * v26) = 0;
          }

          v24[3] = v23;
          LOBYTE(v23) = v47;
        }

        else
        {
        }

        *(v24[4] + 8 * v25) |= 1 << v23;

        *(a2 + 120) = 1;
        goto LABEL_30;
      }
    }

LABEL_20:
    v27 = *(a2 + 128);
    v28 = v27[3];
    if (v28 < 1)
    {
      v29 = v27[2];

      if (v29 > 0)
      {
        goto LABEL_49;
      }

      v30 = swift_slowAlloc();
      v31 = v30;
      v32 = v27[3];
      if (v32)
      {
        for (j = 0; j != v32; ++j)
        {
          *(v30 + 8 * j) = *(v27[4] + 8 * j);
        }
      }

      MEMORY[0x1B271DEA0](v27[4], -1, -1);
      v27[4] = v31;
      v27[2] = 2;
      v28 = v27[3];
      if (v28 != 1)
      {
LABEL_49:
        do
        {
          *(v27[4] + 8 * v28++) = 0;
        }

        while (v28 != 1);
      }

      v27[3] = 1;
    }

    else
    {
    }

    *v27[4] |= 0x8000uLL;

    goto LABEL_30;
  }

LABEL_41:
  v38 = sub_1AFDFD488();
  *(v38 + 16) = 16;
  *(v38 + 32) = 0u;
  *(v38 + 48) = 0u;
  *(v38 + 64) = 0u;
  *(v38 + 80) = 0u;
  *(a2 + 136) = v38;

  if (a4 && (BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(a4 + 16), 0x40uLL, 0)) != 0)
  {
    v40 = BufferWithLength;
    v41 = sub_1AFDFCEC8();
    [v40 setLabel_];

    *(a2 + 144) = v40;
  }

  else
  {
    *(a2 + 144) = 0;
  }

  swift_unknownObjectRelease();
  v43 = *(a2 + 144);
  if (v43)
  {
    v44 = [swift_unknownObjectRetain() contents];
    v45 = v43;
    *v44 = xmmword_1AFE202E0;
    v44[1] = xmmword_1AFE202D0;
    *&result = 0x900000008;
    v44[2] = xmmword_1AFE48470;
    v44[3] = xmmword_1AFE9E9F0;
  }

  return result;
}

uint64_t sub_1AFB84154(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_conformsToProtocol2();
  if (v17)
  {
    v44 = a8;
    v18 = a4;
    v41 = HIDWORD(a6);
    v42 = v17;
    v50 = BYTE4(a7) & 1;
    LOBYTE(v60) = BYTE4(a7) & 1;
    v45 = a6;
    sub_1AFB93CB8(a6, a7 | ((BYTE4(a7) & 1) << 32), &v51);
    *&v46[2] = v51;
    *&v46[18] = v52;
    *&v46[34] = v53;
    v43 = a5;
    v19 = sub_1AF3CD0F8(a3);
    if (v20)
    {
      v21 = v52 & 0xFFFFFFFFFFFFFFF7 | (8 * (a4 - 1 < 2));
      v22 = v53;
      v23 = BYTE8(v52);
      v24 = DWORD2(v51);
      v25 = BYTE12(v51);
    }

    else
    {
      v27 = v19;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 56) = &type metadata for ParticleClassSpawnID;
      *(inited + 64) = &off_1F254ECF8;
      *(inited + 32) = v27;
      v29 = (inited + 32);
      sub_1AF5FC13C(inited, &v54, xmmword_1AFE431C0);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
      v21 = v57 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v18 - 1) < 2));
      v26 = v54;
      v24 = v55;
      v25 = v56;
      v23 = v58;
      v22 = v59;
    }

    v68 = *v46;
    *&v60 = v43;
    *(&v60 + 1) = a3;
    v61 = a1;
    v62 = v42;
    v63 = v45;
    v64 = v41;
    v65 = a7;
    v66 = v50;
    v67 = v18;
    *v69 = *&v46[16];
    *&v69[10] = *&v46[26];
    v70 = v26;
    v71 = v24;
    v72 = v25;
    v73 = v48;
    v74 = v49;
    v75 = v21;
    v76 = v23;
    *v77 = *v47;
    *&v77[3] = *&v47[3];
    v78 = v22;
    v30 = (*(a2 + 8))(a1);
    v32 = v31;
    v33 = *(v31 + 16);
    sub_1AF68A8E0(&v60, v46);
    v34 = v33(&v60, v30, v32);
    v36 = sub_1AFB95274(&v60, v30, v32);
    if (v18 > 2)
    {
      v37 = v44;
      if (v18 == 3)
      {
        v38 = 400;
      }

      else
      {
        v38 = 800;
      }

      goto LABEL_13;
    }

    v37 = v44;
    if (v18 == 1)
    {
      v38 = 200;
LABEL_13:
      v39 = v45;
      goto LABEL_14;
    }

    v39 = v45;
    if (v18 == 2)
    {
      v38 = 300;
LABEL_14:
      sub_1AF6DA834(v34, v36, v35, v38, a9, v18 != 4, v39, v37, v30, *(v32 + 8));
      swift_unknownObjectRelease();

      return sub_1AF688940(&v60);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB844E8(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v18;
    v69 = a2;
    v68 = a5;
    v20 = a4;
    v73 = a7;
    v74 = HIDWORD(a7);
    LOBYTE(v83[0]) = BYTE4(a8) & 1;
    LOBYTE(v97) = BYTE4(a8) & 1;
    sub_1AFB93CB8(a7, a8 | ((BYTE4(a8) & 1) << 32), &v88);
    *&v84[2] = v88;
    *&v84[18] = v89;
    *&v84[34] = v90;
    v71 = a6;
    v21 = sub_1AF3CD0F8(a3);
    if (v22)
    {
      v23 = v89 & 0xFFFFFFFFFFFFFFF7 | (8 * (a4 - 1 < 2));
      v24 = v90;
      v25 = BYTE8(v89);
      v26 = DWORD2(v88);
      v27 = BYTE12(v88);
    }

    else
    {
      v29 = v21;
      sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 56) = &type metadata for ParticleClassSpawnID;
      *(inited + 64) = &off_1F254ECF8;
      *(inited + 32) = v29;
      v31 = (inited + 32);
      sub_1AF5FC13C(inited, &v91, xmmword_1AFE431C0);
      swift_setDeallocating();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
      v23 = v94 & 0xFFFFFFFFFFFFFFF7 | (8 * ((v20 - 1) < 2));
      v28 = v91;
      v26 = v92;
      v27 = v93;
      v25 = v95;
      v24 = v96;
    }

    *&v99[14] = *v84;
    *&v97 = v71;
    *(&v97 + 1) = a3;
    *&v98 = a1;
    *(&v98 + 1) = v19;
    *v99 = v73;
    *&v99[4] = v74;
    *&v99[8] = a8;
    v99[12] = v83[0];
    v99[13] = v20;
    *&v99[30] = *&v84[16];
    *&v99[40] = *&v84[26];
    *&v99[56] = v28;
    LODWORD(v100) = v26;
    BYTE4(v100) = v27;
    *(&v100 + 5) = v75;
    BYTE7(v100) = v76;
    *(&v100 + 1) = v23;
    LOBYTE(v101) = v25;
    *(&v101 + 1) = v77;
    DWORD1(v101) = *(&v77 + 3);
    *(&v101 + 1) = v24;
    v33 = (*(v69 + 8))(a1);
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v34 = 400;
      }

      else
      {
        v34 = 800;
      }

      goto LABEL_13;
    }

    if (v20 == 1)
    {
      v34 = 200;
LABEL_13:
      v70 = v34;
      v35 = v73;
LABEL_14:
      v36 = *(v32 + 8);
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = swift_allocObject();
      v39 = *&v99[48];
      *(v38 + 104) = *&v99[32];
      *(v38 + 120) = v39;
      v40 = v101;
      *(v38 + 136) = v100;
      *(v38 + 152) = v40;
      v41 = v98;
      *(v38 + 40) = v97;
      *(v38 + 56) = v41;
      v42 = *&v99[16];
      *(v38 + 72) = *v99;
      *(v38 + 16) = v37;
      *(v38 + 24) = v35;
      *(v38 + 28) = v74;
      *(v38 + 32) = v68 & 1;
      v72 = v20;
      *(v38 + 33) = v20;
      *(v38 + 88) = v42;
      v43 = *(v36 + 8);

      sub_1AF68A8E0(&v97, v84);
      v44 = v43(v33, v36);
      v45 = *(v36 + 32);

      v45(v46, v33, v36);

      v47 = *(v36 + 24);
      if (v47(v33, v36) != -1)
      {
        v70 = v47(v33, v36);
      }

      v48 = (*(v36 + 16))(v33, v36);
      v67 = v49;
      v51 = v50;
      v52 = swift_allocObject();
      v52[2] = sub_1AFB92F78;
      v52[3] = v38;
      v52[4] = v44;
      v52[5] = v36;
      v53 = *(a9 + 24);

      if (v74 || v35 != -1)
      {

        v54 = sub_1AF3C9078(v35);
        v56 = v55;
        swift_unknownObjectRetain_n();

        if (v56)
        {
          v57 = v51;
          v58 = *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
          if (v58)
          {
            *v84 = v54;
            *&v84[8] = v56;
            MEMORY[0x1B2718AE0](47, 0xE100000000000000);
            v59 = sub_1AFDFE238();
            MEMORY[0x1B2718AE0](v59);

            LODWORD(v56) = vfx_counters.addCounter(name:scope:kind:)(*v84, *&v84[8], 0, 0, v58);
            v60 = v67;

LABEL_24:
            v63 = v73;
            v64 = v70;
            v65 = a10;
LABEL_28:
            *&v77 = v44;
            *(&v77 + 1) = __PAIR64__(v74, v63);
            *&v78 = v48;
            *(&v78 + 1) = v60;
            LOBYTE(v79) = v57;
            *(&v79 + 1) = v83[0];
            DWORD1(v79) = *(v83 + 3);
            *(&v79 + 1) = v44;
            *&v80 = v36;
            *(&v80 + 1) = v64;
            *&v81 = v65;
            WORD4(v81) = 257;
            BYTE10(v81) = v72 != 4;
            HIDWORD(v81) = v56;
            *&v82 = sub_1AFB93B34;
            *(&v82 + 1) = v52;
            os_unfair_lock_lock(*(a9 + 56));
            *&v84[32] = v79;
            v85 = v80;
            v86 = v81;
            v87 = v82;
            *v84 = v77;
            *&v84[16] = v78;
            sub_1AF6D8FC4(&v77, &v75);
            sub_1AF64D800(0, 0, v84);
            sub_1AF64D800(0, 0, v84);
            sub_1AF6D8FFC(&v77);
            *(a9 + 160) = 257;
            os_unfair_lock_unlock(*(a9 + 56));
            sub_1AF6D8FFC(&v77);

            swift_unknownObjectRelease();
            return sub_1AF688940(&v97);
          }

          LODWORD(v56) = 0;
          v63 = v73;
LABEL_27:
          v64 = v70;
          v60 = v67;
          v65 = a10;
          goto LABEL_28;
        }
      }

      else
      {
        swift_unknownObjectRetain_n();
      }

      v56 = *(v53 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
      if (v56)
      {
        v60 = v67;
        v61 = sub_1AFDFE238();
        v57 = v51;
        LODWORD(v56) = vfx_counters.addCounter(name:scope:kind:)(v61, v62, 0, 0, v56);

        goto LABEL_24;
      }

      v63 = v73;
      v57 = v51;
      goto LABEL_27;
    }

    v35 = v73;
    if (v20 == 2)
    {
      v70 = 300;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFB84C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  v10 = a10[5];
  v49 = a10[4];
  v50 = v10;
  v11 = a10[7];
  v51 = a10[6];
  v52 = v11;
  v12 = a10[1];
  v45 = *a10;
  v46 = v12;
  v13 = a10[3];
  v47 = a10[2];
  v48 = v13;
  if (a4)
  {
    v14 = a8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      if (!a5)
      {
        ObjectType = swift_getObjectType();
        v29 = swift_conformsToProtocol2();
        if (v29)
        {
          v30 = v29;
          *&v35[72] = v49;
          *&v35[88] = v50;
          *&v35[104] = v51;
          *&v35[120] = v52;
          *&v35[8] = v45;
          *&v35[24] = v46;
          *&v35[40] = v47;
          *&v35[56] = v48;
          *v35 = 0;
          *&v35[136] = a3;
          *&v35[144] = a4;
          v35[152] = 0;
          v42 = *&v35[96];
          v43 = *&v35[112];
          v44[0] = *&v35[128];
          v38 = *&v35[32];
          v39 = *&v35[48];
          v40 = *&v35[64];
          v41 = *&v35[80];
          v36 = *v35;
          v37 = *&v35[16];
          *(v44 + 9) = *&v35[137];
          v31 = *(v29 + 16);
          swift_retain_n();

          sub_1AF68A8E0(a10, &v34);
          v31(&v36, ObjectType, v30);

          sub_1AFB92F7C(v35);
          return;
        }

        __break(1u);
        goto LABEL_16;
      }

      if (a5 == 3)
      {
        swift_retain_n();
        if (sub_1AF67E270(a7, v20, v14 & 1, a9))
        {
          swift_getObjectType();
          v21 = swift_conformsToProtocol2();
          if (v21)
          {
            v22 = v21;

            v32 = swift_getObjectType();
            v33 = v22;
            (*(*(v22 + 8) + 16))();
            sub_1AFDFE238();
            swift_retain_n();
            v23 = sub_1AF6F4158();
            swift_unknownObjectRetain();
            v24 = sub_1AFDFCEC8();

            [v23 pushDebugGroup_];

            sub_1AF6F3BD8(v25, v26);
            swift_unknownObjectRelease();
            *&v35[120] = v52;
            *&v35[72] = v49;
            *&v35[88] = v50;
            *&v35[104] = v51;
            *&v35[8] = v45;
            *&v35[24] = v46;
            *&v35[40] = v47;
            *&v35[56] = v48;
            *v35 = v23;
            *&v35[136] = a3;
            *&v35[144] = a4;
            v35[152] = 3;
            v36 = *v35;
            v37 = *&v35[16];
            v40 = *&v35[64];
            v41 = *&v35[80];
            v38 = *&v35[32];
            v39 = *&v35[48];
            *(v44 + 9) = *&v35[137];
            v43 = *&v35[112];
            v44[0] = *&v35[128];
            v42 = *&v35[96];
            v27 = *(v33 + 16);
            sub_1AF68A8E0(a10, &v34);
            swift_unknownObjectRetain();

            v27(&v36, v32, v33);
            sub_1AFB92F7C(v35);
            [v23 popDebugGroup];

            swift_unknownObjectRelease();
            return;
          }

LABEL_16:
          __break(1u);
          swift_unexpectedError();
          __break(1u);
          return;
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_1AFB8505C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v7 = a3 + 32;
  while (1)
  {
    v8 = (v7 + 8 * v5);
    v9 = *v8;
    v10 = v8[1];
    v11 = v9 == -1 && v10 == 0;
    if (!v11 && (v9 & 0x80000000) == 0 && v6[1] > v9)
    {
      v12 = (*v6 + 12 * v9);
      if ((v10 == -1 || v12[2] == v10) && *(*(*(a4 + 144) + 8 * *v12 + 32) + 120) == 1)
      {
        v14 = *(*(*(*(a4 + 88) + 8 * *(v12 + 3) + 32) + 16) + 32);
        v15 = *(v14 + 16);
        if (v15)
        {
          break;
        }
      }
    }

LABEL_4:
    if (++v5 == v4)
    {
      return 0;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = -v15;
  v19 = v14 + 32;
  while (2)
  {
    v20 = (v19 + 16 * v16++);
    while (*v20 != a1)
    {
      ++v16;
      v20 += 2;
      if (v18 + v16 == 1)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }

        return v9 | (v10 << 32);
      }
    }

    v17 = 1;
    if (v18 + v16)
    {
      continue;
    }

    return v9 | (v10 << 32);
  }
}

uint64_t sub_1AFB8516C(uint64_t result, unsigned __int8 a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v172 = a7;
  v9 = *(result + 16);
  if (!v9)
  {
    return result;
  }

  v10 = a3;
  v11 = a2;
  v12 = 0;
  v13 = a7 & 0x100000000;
  v14 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v15 = result + 32;
  if (a5)
  {
    v16 = a2 != 4;
  }

  else
  {
    v16 = 1;
  }

  if (v13)
  {
    v17 = 0;
  }

  else
  {
    v17 = a7;
  }

  v176 = v17;
  v164 = a7 & 0x100000000;
  v175 = v13 >> 31;
  v161 = a2 == 1;
  v153 = a6;
  v178 = HIDWORD(a6);
  v19 = a6 != -1 || HIDWORD(a6) != 0;
  v154 = v19;
  v155 = a2 != 4;
  v163 = v16;
  v151 = result + 32;
  v152 = *(result + 16);
  v171 = (a4 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  while (1)
  {
    v20 = *(v15 + 8 * v12);
    v21 = v20 == -1 && HIDWORD(v20) == 0;
    if (!v21 && (v20 & 0x80000000) == 0 && v14[1] > v20)
    {
      v22 = (*v14 + 12 * v20);
      if (HIDWORD(v20) == -1 || v22[2] == HIDWORD(v20)) && (*(*(*(a4 + 144) + 8 * *v22 + 32) + 120))
      {
        result = *(*(a4 + 88) + 8 * *(v22 + 3) + 32);
        v24 = *(*(result + 16) + 32);
        if (*(v24 + 16))
        {
          break;
        }
      }
    }

LABEL_16:
    if (++v12 == v9)
    {
      return result;
    }
  }

  v168 = v20;
  v169 = HIDWORD(*(v15 + 8 * v12));
  v162 = v20;
  v170 = *(v15 + 8 * v12);
  v25 = v24 + 32;

  v26 = 0;
  v166 = v24 + 32;
  v167 = v24;
  while (1)
  {
    v29 = (v25 + 16 * v26);
    v30 = *v29;
    if (!v16)
    {
      v31 = *(v29[1] + 8);

      LOBYTE(v31) = sub_1AF70B788(v32, v30, v31);

      if ((v31 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    if (v10)
    {
      type metadata accessor for GraphScript(0);
      if (!swift_dynamicCastMetatype())
      {
        v48 = swift_conformsToProtocol2();
        if (v48)
        {
          v49 = v30 == 0;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          goto LABEL_36;
        }

        v50 = v48;
        v51 = swift_conformsToProtocol2();
        if (!v51)
        {
          goto LABEL_138;
        }

        v52 = v51;
        v180[0] = v164 != 0;
        if (qword_1ED72D720 != -1)
        {
          swift_once();
        }

        v53 = v11;
        v242 = qword_1ED73B840;
        v243 = 0;
        v244 = 2;
        v245 = 0;
        v246 = 2;
        v247 = 0;
        sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_1AFE431C0;
        *(v54 + 32) = &type metadata for Particle;
        *(v54 + 40) = &off_1F252D7A8;
        sub_1AF5F58E4(v54, 1, v197);
        swift_setDeallocating();
        swift_deallocClassInstance();
        sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1AFE431C0;
        *(v55 + 56) = &type metadata for EmitterReference;
        *(v55 + 64) = &off_1F2563D20;
        *(v55 + 32) = a6;
        v56 = (v55 + 32);
        *(v55 + 36) = v178;
        sub_1AF5FC13C(v55, &v198, xmmword_1AFE431C0);
        sub_1AF692DB0(v197);
        swift_setDeallocating();
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v56);
        swift_deallocClassInstance();
        v57 = v200;
        *&v239 = v198;
        DWORD2(v239) = v176;
        BYTE12(v239) = v175;
        *&v240 = v199;
        BYTE8(v240) = v200;
        *&v182[2] = v239;
        v58 = v201;
        v241 = v201;
        *&v182[34] = v201;
        *&v182[18] = v240;
        if (v53 == 2)
        {
          v59 = v171;
          v60 = v169;
          v61 = v168;
          if (v162 == -1)
          {
            v62 = a2;
            if (!v169 || v171[1] <= v168)
            {
              goto LABEL_93;
            }
          }

          else
          {
            v62 = a2;
            if (v171[1] <= v168)
            {
              goto LABEL_93;
            }
          }

          v86 = 1;
        }

        else
        {
          v59 = v171;
          v86 = v161;
          v61 = v168;
          v62 = a2;
          v60 = v169;
          if (v171[1] <= v168)
          {
            goto LABEL_92;
          }
        }

        v87 = (*v59 + 12 * v61);
        v88 = *(v87 + 2);
        if (v60 == -1 || v87[2] == v60)
        {
          v129 = *(*(a4 + 144) + 8 * *v87 + 32);
          v130 = *(v129 + 48);
          v131 = (v130 + 32);
          v132 = *(v130 + 16) + 1;
          while (--v132)
          {
            v133 = v131 + 5;
            v134 = *v131;
            v131 += 5;
            if (v134 == &type metadata for ParticleSpawnID)
            {
              v135 = *(&(*(v133 - 2))->Kind + 8 * v88 + *(v129 + 128));
              v136 = swift_allocObject();
              *(v136 + 16) = xmmword_1AFE431C0;
              *(v136 + 56) = &type metadata for ParticleClassSpawnID;
              *(v136 + 64) = &off_1F254ECF8;
              *(v136 + 32) = v135;
              v137 = (v136 + 32);
              sub_1AF5FC13C(v136, &v202, xmmword_1AFE431C0);
              swift_setDeallocating();
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v137);
              swift_deallocClassInstance();
              v138 = 8;
              if (!v86)
              {
                v138 = 0;
              }

              v89 = v205 & 0xFFFFFFFFFFFFFFF7 | v138;
              v90 = v202;
              v91 = v203;
              v92 = v204;
              v57 = v206;
              v58 = v207;
              goto LABEL_96;
            }
          }
        }

LABEL_92:
        if ((v86 & 1) == 0)
        {
          v89 = v199 & 0xFFFFFFFFFFFFFFF7;
LABEL_95:

          v91 = v176;
          v92 = v175;
LABEL_96:
          *&v236[14] = *v182;
          *&v234 = a4;
          *(&v234 + 1) = v170;
          *&v235 = v30;
          *(&v235 + 1) = v52;
          *v236 = a6;
          *&v236[4] = v178;
          *&v236[8] = v172;
          v236[12] = v180[0];
          v236[13] = v62;
          *&v236[30] = *&v182[16];
          *&v236[40] = *&v182[26];
          *&v236[56] = v90;
          LODWORD(v237) = v91;
          BYTE4(v237) = v92;
          *(&v237 + 1) = v89;
          LOBYTE(v238) = v57;
          *(&v238 + 1) = v58;
          v94 = (*(v50 + 8))(v30, v50);
          if (v62 > 2u)
          {
            if (v62 == 3)
            {
              v95 = 400;
            }

            else
            {
              v95 = 800;
            }
          }

          else if (v62 == 1)
          {
            v95 = 200;
          }

          else
          {
            if (v62 != 2)
            {
              goto LABEL_139;
            }

            v95 = 300;
          }

          v160 = v95;
          v96 = *(v93 + 8);
          v97 = swift_allocObject();
          swift_weakInit();
          v98 = swift_allocObject();
          v99 = *&v236[48];
          *(v98 + 104) = *&v236[32];
          *(v98 + 120) = v99;
          v100 = v238;
          *(v98 + 136) = v237;
          *(v98 + 152) = v100;
          v101 = v235;
          *(v98 + 40) = v234;
          *(v98 + 56) = v101;
          v102 = *&v236[16];
          *(v98 + 72) = *v236;
          *(v98 + 16) = v97;
          *(v98 + 24) = a6;
          *(v98 + 28) = v178;
          *(v98 + 32) = 0;
          *(v98 + 33) = v62;
          *(v98 + 88) = v102;
          v103 = *(v96 + 8);

          sub_1AF68A8E0(&v234, v182);
          v104 = v103(v94, v96);
          v105 = *(v96 + 32);

          v105(v106, v94, v96);

          v107 = *(v96 + 24);
          if (v107(v94, v96) != -1)
          {
            v160 = v107(v94, v96);
          }

          v108 = (*(v96 + 16))(v94, v96);
          v110 = v109;
          v157 = v111;
          v112 = swift_allocObject();
          v112[2] = sub_1AFB93B3C;
          v112[3] = v98;
          v112[4] = v104;
          v112[5] = v96;
          v113 = a8;
          v114 = *(a8 + 24);

          v158 = v112;
          v159 = v104;
          v156 = v96;
          if (v154)
          {

            if ((a6 & 0x8000000000000000) == 0 && a6 < *(v114 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
            {
              v115 = (*(v114 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v153);
              v116 = *(v115 + 2);
              if (v178 == 0xFFFFFFFF || v115[2] == v178)
              {
                v139 = *(*(v114 + 144) + 8 * *v115 + 32);
                v140 = *(v139 + 48);
                v141 = (v140 + 32);
                v142 = *(v140 + 16) + 1;
                while (--v142)
                {
                  v143 = v141 + 5;
                  v144 = *v141;
                  v141 += 5;
                  if (v144 == &type metadata for Name)
                  {
                    v122 = v110;
                    v145 = (&(*(v143 - 2))[v116].Kind + *(v139 + 128));
                    v147 = *v145;
                    v146 = v145[1];
                    swift_unknownObjectRetain_n();

                    v148 = *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
                    if (v148)
                    {
                      *v182 = v147;
                      *&v182[8] = v146;
                      v149 = v148;
                      MEMORY[0x1B2718AE0](47, 0xE100000000000000);
                      v118 = v157;
                      v150 = sub_1AFDFE238();
                      v120 = v108;
                      MEMORY[0x1B2718AE0](v150);

                      LODWORD(v117) = vfx_counters.addCounter(name:scope:kind:)(*v182, *&v182[8], 0, 0, v149);

                      v113 = a8;
                      goto LABEL_116;
                    }

                    LODWORD(v117) = 0;
                    v113 = a8;
                    v120 = v108;
                    v11 = a2;
                    v118 = v157;
                    goto LABEL_117;
                  }
                }
              }
            }

            swift_unknownObjectRetain_n();
          }

          else
          {
            swift_unknownObjectRetain_n();
          }

          v117 = *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_counters);
          v118 = v157;
          if (v117)
          {
            v119 = sub_1AFDFE238();
            v120 = v108;
            LODWORD(v117) = vfx_counters.addCounter(name:scope:kind:)(v119, v121, 0, 0, v117);
            v122 = v110;
          }

          else
          {

            v122 = v110;
            v120 = v108;
          }

LABEL_116:
          v11 = a2;
LABEL_117:
          *v182 = v159;
          *&v182[8] = a6;
          *&v182[12] = v178;
          *&v182[16] = v120;
          *&v182[24] = v122;
          v182[32] = v118;
          *&v182[33] = *v181;
          *&v182[36] = *&v181[3];
          *&v182[40] = v159;
          *&v183 = v156;
          *(&v183 + 1) = v160;
          *&v184 = a9;
          WORD4(v184) = 257;
          BYTE10(v184) = v155;
          HIDWORD(v184) = v117;
          *&v185 = sub_1AFB93B34;
          *(&v185 + 1) = v158;
          os_unfair_lock_lock(*(v113 + 56));
          v123 = *(v113 + 96);
          v124 = *(v123 + 2);
          sub_1AF6D8FC4(v182, v180);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v113 + 96) = v123;
          if (!isUniquelyReferenced_nonNull_native || v124 >= *(v123 + 3) >> 1)
          {
            v123 = sub_1AF4237C8(isUniquelyReferenced_nonNull_native, v124 + 1, 1, v123);
            *(v113 + 96) = v123;
          }

          v233[2] = *&v182[32];
          v233[3] = v183;
          v233[4] = v184;
          v233[5] = v185;
          v233[0] = *v182;
          v233[1] = *&v182[16];
          sub_1AF64D6A4(0, 0, 1, v233);
          *(v113 + 96) = v123;
          v126 = *(v113 + 128);
          v127 = *(v126 + 2);
          v128 = swift_isUniquelyReferenced_nonNull_native();
          *(v113 + 128) = v126;
          if (!v128 || v127 >= *(v126 + 3) >> 1)
          {
            v126 = sub_1AF4237C8(v128, v127 + 1, 1, v126);
            *(v113 + 128) = v126;
          }

          sub_1AF64D6A4(0, 0, 1, v233);
          sub_1AF6D8FFC(v182);
          *(v113 + 128) = v126;
          *(v113 + 160) = 257;
          os_unfair_lock_unlock(*(v113 + 56));
          sub_1AF6D8FFC(v182);

          swift_unknownObjectRelease();
          v28 = &v234;
          goto LABEL_35;
        }

LABEL_93:
        v89 = v199 | 8;
        goto LABEL_95;
      }
    }

    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v30 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34)
    {
      goto LABEL_36;
    }

    v35 = v33;
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {
      break;
    }

    v37 = v36;
    v180[0] = v164 != 0;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v38 = v11;
    v227 = qword_1ED73B840;
    v228 = 0;
    v229 = 2;
    v230 = 0;
    v231 = 2;
    v232 = 0;
    sub_1AFB91B24(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AFE431C0;
    *(v39 + 32) = &type metadata for Particle;
    *(v39 + 40) = &off_1F252D7A8;
    sub_1AF5F58E4(v39, 1, v186);
    swift_setDeallocating();
    swift_deallocClassInstance();
    sub_1AFB9246C(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1AFE431C0;
    *(v40 + 56) = &type metadata for EmitterReference;
    *(v40 + 64) = &off_1F2563D20;
    *(v40 + 32) = a6;
    v41 = (v40 + 32);
    *(v40 + 36) = v178;
    sub_1AF5FC13C(v40, &v187, xmmword_1AFE431C0);
    sub_1AF692DB0(v186);
    swift_setDeallocating();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
    swift_deallocClassInstance();
    v42 = v189;
    *&v224 = v187;
    DWORD2(v224) = v176;
    BYTE12(v224) = v175;
    *&v225 = v188;
    BYTE8(v225) = v189;
    *&v182[2] = v224;
    v43 = v190;
    v226 = v190;
    *&v182[34] = v190;
    *&v182[18] = v225;
    if (v38 == 2)
    {
      v44 = v171;
      v45 = v169;
      v46 = v168;
      if (v162 == -1)
      {
        v11 = a2;
        if (!v169 || v171[1] <= v168)
        {
LABEL_71:
          v65 = v188 | 8;
          goto LABEL_73;
        }
      }

      else
      {
        v11 = a2;
        if (v171[1] <= v168)
        {
          goto LABEL_71;
        }
      }

      v47 = 1;
    }

    else
    {
      v44 = v171;
      v47 = v161;
      v46 = v168;
      v11 = a2;
      v45 = v169;
      if (v171[1] <= v168)
      {
        goto LABEL_70;
      }
    }

    v63 = (*v44 + 12 * v46);
    v64 = *(v63 + 2);
    if (v45 == -1 || v63[2] == v45)
    {
      v76 = *(*(a4 + 144) + 8 * *v63 + 32);
      v77 = *(v76 + 48);
      v78 = (v77 + 32);
      v79 = *(v77 + 16) + 1;
      while (--v79)
      {
        v80 = v78 + 5;
        v81 = *v78;
        v78 += 5;
        if (v81 == &type metadata for ParticleSpawnID)
        {
          v82 = *(&(*(v80 - 2))->Kind + 8 * v64 + *(v76 + 128));
          v83 = swift_allocObject();
          *(v83 + 16) = xmmword_1AFE431C0;
          *(v83 + 56) = &type metadata for ParticleClassSpawnID;
          *(v83 + 64) = &off_1F254ECF8;
          *(v83 + 32) = v82;
          v84 = (v83 + 32);
          sub_1AF5FC13C(v83, &v191, xmmword_1AFE431C0);
          swift_setDeallocating();
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v84);
          swift_deallocClassInstance();
          v85 = 8;
          if (!v47)
          {
            v85 = 0;
          }

          v65 = v194 & 0xFFFFFFFFFFFFFFF7 | v85;
          v66 = v191;
          v67 = v192;
          v68 = v193;
          v42 = v195;
          v43 = v196;
          goto LABEL_74;
        }
      }
    }

LABEL_70:
    if (v47)
    {
      goto LABEL_71;
    }

    v65 = v188 & 0xFFFFFFFFFFFFFFF7;
LABEL_73:

    v67 = v176;
    v68 = v175;
LABEL_74:
    v216 = *v182;
    *&v208 = a4;
    *(&v208 + 1) = v170;
    v209 = v30;
    v210 = v37;
    v211 = a6;
    v212 = v178;
    v213 = v172;
    v214 = v180[0];
    v215 = v11;
    *v217 = *&v182[16];
    *&v217[10] = *&v182[26];
    v218 = v66;
    v219 = v67;
    v220 = v68;
    v221 = v65;
    v222 = v42;
    v223 = v43;
    v69 = (*(v35 + 8))(v30, v35);
    v71 = v70;
    v72 = *(v70 + 16);
    sub_1AF68A8E0(&v208, v182);
    v73 = v72(&v208, v69, v71);
    v75 = sub_1AFB95274(&v208, v69, v71);
    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v27 = 400;
      }

      else
      {
        v27 = 800;
      }
    }

    else if (v11 == 1)
    {
      v27 = 200;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_139;
      }

      v27 = 300;
    }

    sub_1AF6DA834(v73, v75, v74, v27, a9, v11 != 4, a6, a8, v69, *(v71 + 8));
    swift_unknownObjectRelease();

    v28 = &v208;
LABEL_35:
    sub_1AF688940(v28);
    v10 = a3;
    v16 = v163;
    v25 = v166;
    v24 = v167;
LABEL_36:
    if (++v26 == *(v24 + 16))
    {

      v15 = v151;
      v9 = v152;
      v14 = v171;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

BOOL sub_1AFB86390(unint64_t *a1, unsigned int *a2, double a3)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1AFB91B24(0, qword_1ED725258, type metadata accessor for ParticleInitScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  sub_1AFB91B24(0, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript, v5);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = *a2;
  v18 = a2[1];
  v19 = *a1;
  sub_1AF3CB570(v19, &v37);
  if (v38)
  {
    v20 = v37;
    v21 = v37;
    sub_1AF487074(v37, v38, v39);
    if (v21 > 6)
    {
      v22 = 1;
    }

    else
    {
      v22 = qword_1AFE9F580[v20 & 7];
    }
  }

  else
  {
    sub_1AF3CFB68(v19, v16);
    updated = type metadata accessor for ParticleUpdateScript(0);
    v22 = 1;
    v24 = (*(*(updated - 8) + 48))(v16, 1, updated);
    sub_1AFB92FD0(v16, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
    if (v24 == 1)
    {
      sub_1AF3CFD30(v19, v10);
      inited = type metadata accessor for ParticleInitScript(0);
      v22 = (*(*(inited - 8) + 48))(v10, 1, inited) != 1;
      sub_1AFB92FD0(v10, qword_1ED725258, type metadata accessor for ParticleInitScript);
    }
  }

  v26 = v17 | (v18 << 32);
  sub_1AF3CB570(v26, &v37);
  if (v38)
  {
    v27 = v37;
    v28 = v37;
    sub_1AF487074(v37, v38, v39);
    if (v28 > 6)
    {
      v29 = 1;
    }

    else
    {
      v29 = qword_1AFE9F580[v27 & 7];
    }
  }

  else
  {
    sub_1AF3CFB68(v17 | (v18 << 32), v13);
    v30 = type metadata accessor for ParticleUpdateScript(0);
    v29 = 1;
    v31 = (*(*(v30 - 8) + 48))(v13, 1, v30);
    sub_1AFB92FD0(v13, &unk_1ED724F80, type metadata accessor for ParticleUpdateScript);
    if (v31 == 1)
    {
      v32 = v36;
      sub_1AF3CFD30(v26, v36);
      v33 = type metadata accessor for ParticleInitScript(0);
      v29 = (*(*(v33 - 8) + 48))(v32, 1, v33) != 1;
      sub_1AFB92FD0(v32, qword_1ED725258, type metadata accessor for ParticleInitScript);
    }
  }

  return v22 < v29;
}

uint64_t sub_1AFB867B0(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6[5] = qword_1ED73B840;
  v7 = 0;
  v8 = 2;
  v9 = 0;
  v10 = 2;
  v11 = 0;
  sub_1AF702F8C(1, v6);
  v2 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v3 = sub_1AF6D6B58();
  v4 = v6[0];
  os_unfair_lock_lock(*(v2 + 40));
  sub_1AF6B1714(a1, v4);

  sub_1AF6B1B20(a1, v3, v4);
  os_unfair_lock_unlock(*(v2 + 40));
  sub_1AFB91B88(v6, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648, sub_1AF5DD590);
  swift_getObjectType();
  return sub_1AF6D6B58();
}

void sub_1AFB86924(uint64_t a1, uint64_t a2, int a3)
{
  v190 = a3;
  v189 = a2;
  v4 = a1;
  v5 = 0;
  v282 = *MEMORY[0x1E69E9840];
  v6 = *(v3 + 72);
  v229[0] = *(v3 + 56);
  v229[1] = v6;
  v230 = *(v3 + 88);
  v193 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v229, 0x200000000, &v243);
  if (v243)
  {
    v225 = v246;
    v226 = v247;
    v227 = v248;
    v223 = v244;
    v224 = v245;
    v228 = v249;
    v222 = v243;
    sub_1AFD06F68(&v222);
    sub_1AFB91B88(&v243, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  }

  v7 = *(v3 + 112);
  v220[0] = *(v3 + 96);
  v220[1] = v7;
  v192 = v3;
  v221 = *(v3 + 128);
  sub_1AF6B06C0(v4, v220, 0x200000000, &v250);
  v191 = v4;
  if (v250)
  {
    if (v257 < 1 || (v200 = v254) == 0)
    {
LABEL_170:
      sub_1AFB91B88(&v250, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      v4 = v191;
      goto LABEL_171;
    }

    v8 = 0;
    v199 = v253;
    v208 = v256;
    v203 = v256[4];
    LODWORD(v202) = *(v255 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v209 = v250;
    v210 = v251;
    v211 = v252;
    while (1)
    {
      v9 = &v199[6 * v8];
      v11 = *v9;
      v10 = *(v9 + 1);
      v204 = v5;
      v205 = v10;
      v12 = v9[3];
      v206 = v9[2];
      v14 = v9[4];
      v13 = v9[5];
      if (v202)
      {
        v15 = v13[47];

        os_unfair_lock_lock(v15);
        os_unfair_lock_lock(v13[43]);
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v203);
      v16 = v208;
      v17 = *(v208 + 4);
      v280[0] = *(v208 + 3);
      v280[1] = v17;
      v281 = v208[10];
      v18 = *(*(*(v13[5] + 16) + 32) + 16) + 1;
      v208[6] = ecs_stack_allocator_allocate(v208[4], 48 * v18, 8);
      v16[7] = v18;
      v16[9] = 0;
      v16[10] = 0;
      v16[8] = 0;
      v207 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v206, v12, v14, v16);
      v201 = v8;
      if (v206)
      {
        if (v14)
        {
          v19 = 0;
          v205 = v14;
          while (1)
          {
            v20 = v13;
            v21 = v206[v19];
            v22 = &v207[104 * v19];
            if ((v22[72] & 1) != 0 || *(v22 + 6))
            {
              v24 = v20[5];
LABEL_26:
              v34 = *(v24 + 16);
              v35 = *(v34 + 128);
              if (*(v35 + 16))
              {
                v36 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
                if ((v37 & 1) != 0 && *(*(v34 + 24) + 16 * *(*(v35 + 56) + 8 * v36) + 32) == &type metadata for InverseWorldTransform)
                {
                  v14 = v205;
LABEL_15:
                  v13 = v20;
                  goto LABEL_16;
                }
              }

              *&v258[0] = &type metadata for InverseWorldTransform;
              *(&v258[0] + 1) = &off_1F2529E00;
              LOBYTE(v259) = 0;
              v38 = v208[13];
              v39 = *(v38 + 16);
              if (!v39)
              {

LABEL_59:
                v53 = v20[30] - v20[29];
                v54 = v208;
                v55 = ecs_stack_allocator_allocate(v208[4], 8 * v53, 8);
                *v55 = v21;
LABEL_60:
                sub_1AF63515C(v258, &v270);
                *v273 = v55;
                *&v273[8] = v53;
                *&v273[16] = 1;
                v56 = v54[13];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v54[13] = v56;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v56 = sub_1AF420EA0(0, v56[2] + 1, 1, v56);
                  v208[13] = v56;
                }

                v59 = v56[2];
                v58 = v56[3];
                v13 = v20;
                if (v59 >= v58 >> 1)
                {
                  v208[13] = sub_1AF420EA0(v58 > 1, v59 + 1, 1, v56);
                }

                sub_1AF635250(v258);
                v60 = v208;
                v61 = v208[13];
                *(v61 + 16) = v59 + 1;
                v62 = v61 + 72 * v59;
                *(v62 + 32) = v270;
                v63 = *v273;
                v64 = v272;
                v65 = v271;
                *(v62 + 96) = *&v273[16];
                *(v62 + 64) = v64;
                *(v62 + 80) = v63;
                *(v62 + 48) = v65;
                v60[13] = v61;
                v14 = v205;
                goto LABEL_16;
              }

              v40 = v38 + 32;

              v41 = 0;
              while (2)
              {
                sub_1AFB93040(v40, v263, sub_1AF43A540);
                sub_1AF63515C(v263, &v270);
                sub_1AF63515C(v258, v273);
                if (BYTE8(v272) > 2u)
                {
                  if (BYTE8(v272) != 3)
                  {
                    if (BYTE8(v272) != 4)
                    {
                      sub_1AFB930A8(v263, sub_1AF43A540);
                      if (v275 == 5)
                      {
                        v48 = vorrq_s8(*&v273[8], v274);
                        if (!(*&vorr_s8(*v48.i8, *&vextq_s8(v48, v48, 8uLL)) | *v273))
                        {
                          sub_1AF635250(&v270);
LABEL_55:
                          v50 = sub_1AFBFCA08(&v270);
                          v51 = *(v49 + 48);
                          if (v51)
                          {
                            v52 = *(v49 + 64);
                            *(v51 + 8 * v52) = v21;
                            *(v49 + 64) = v52 + 1;
                          }

                          (v50)(&v270, 0);
                          v13 = v20;

                          sub_1AF635250(v258);
                          v14 = v205;
                          goto LABEL_16;
                        }
                      }

                      goto LABEL_32;
                    }

                    sub_1AFB930A8(v263, sub_1AF43A540);
                    sub_1AF63515C(&v270, &v237);
                    if (v275 != 4)
                    {
                      goto LABEL_32;
                    }

                    v42 = v237;
                    v43 = v273[0];
                    sub_1AF635250(&v270);
                    if (v42 == v43)
                    {
                      goto LABEL_55;
                    }

LABEL_33:
                    ++v41;
                    v40 += 72;
                    if (v39 == v41)
                    {
                      goto LABEL_59;
                    }

                    continue;
                  }

                  sub_1AF63515C(&v270, &v237);
                  if (v275 == 3)
                  {
LABEL_50:
                    sub_1AF0FBA54(&v237, &v231);
                    sub_1AF0FBA54(v273, v278);
                    v46 = *(&v232 + 1);
                    v47 = v233;
                    sub_1AF441150(&v231, *(&v232 + 1));
                    LOBYTE(v46) = sub_1AF640C98(v278, v46, v47);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
                    sub_1AFB930A8(v263, sub_1AF43A540);
                    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v231);
                    sub_1AF635250(&v270);
                    if (v46)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  if (!BYTE8(v272))
                  {
                    sub_1AFB930A8(v263, sub_1AF43A540);
                    sub_1AF63515C(&v270, &v237);
                    if (v275)
                    {
                      goto LABEL_32;
                    }

LABEL_45:
                    v44 = v237;
                    v45 = *v273;
                    sub_1AF635250(&v270);
                    if (v44 == v45)
                    {
                      goto LABEL_55;
                    }

                    goto LABEL_33;
                  }

                  if (BYTE8(v272) == 1)
                  {
                    sub_1AFB930A8(v263, sub_1AF43A540);
                    sub_1AF63515C(&v270, &v237);
                    if (v275 == 1)
                    {
                      goto LABEL_45;
                    }

LABEL_32:
                    sub_1AFB930A8(&v270, sub_1AF635194);
                    goto LABEL_33;
                  }

                  sub_1AF63515C(&v270, &v237);
                  if (v275 == 2)
                  {
                    goto LABEL_50;
                  }
                }

                break;
              }

              sub_1AFB930A8(v263, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v237);
              goto LABEL_32;
            }

            v23 = v22[58];
            v24 = v20[5];
            if (v23 == 1)
            {
              goto LABEL_26;
            }

            v25 = *(v24 + 16);
            v26 = *(v25 + 128);
            if (!*(v26 + 16))
            {
              goto LABEL_15;
            }

            v27 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
            if ((v28 & 1) == 0 || *(*(v25 + 24) + 16 * *(*(v26 + 56) + 8 * v27) + 32) != &type metadata for InverseWorldTransform)
            {
              goto LABEL_15;
            }

            v198 = v21;
            *&v258[0] = &type metadata for InverseWorldTransform;
            *(&v258[0] + 1) = &off_1F2529E00;
            LOBYTE(v259) = 1;
            v29 = v208[13];
            v30 = *(v29 + 16);
            if (!v30)
            {

LABEL_94:
              v53 = v20[30] - v20[29];
              v54 = v208;
              v55 = ecs_stack_allocator_allocate(v208[4], 8 * v53, 8);
              *v55 = v198;
              goto LABEL_60;
            }

            v31 = v29 + 32;

            v32 = 0;
            v33 = v30;
            while (1)
            {
              sub_1AFB93040(v31, v263, sub_1AF43A540);
              sub_1AF63515C(v263, &v270);
              sub_1AF63515C(v258, v273);
              if (BYTE8(v272) > 2u)
              {
                break;
              }

              if (!BYTE8(v272))
              {
                sub_1AFB930A8(v263, sub_1AF43A540);
                sub_1AF63515C(&v270, &v237);
                if (v275)
                {
                  goto LABEL_66;
                }

                goto LABEL_78;
              }

              if (BYTE8(v272) == 1)
              {
                sub_1AFB930A8(v263, sub_1AF43A540);
                sub_1AF63515C(&v270, &v237);
                if (v275 != 1)
                {
                  goto LABEL_66;
                }

LABEL_78:
                v69 = v237;
                v70 = *v273;
                sub_1AF635250(&v270);
                v68 = v69 == v70;
LABEL_79:
                v30 = v33;
                if (v68)
                {
                  goto LABEL_90;
                }

                goto LABEL_67;
              }

              sub_1AF63515C(&v270, &v237);
              if (v275 != 2)
              {
LABEL_65:
                sub_1AFB930A8(v263, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v237);
LABEL_66:
                sub_1AFB930A8(&v270, sub_1AF635194);
                goto LABEL_67;
              }

LABEL_85:
              sub_1AF0FBA54(&v237, &v231);
              sub_1AF0FBA54(v273, v278);
              v71 = *(&v232 + 1);
              v72 = v233;
              sub_1AF441150(&v231, *(&v232 + 1));
              v73 = v72;
              v30 = v33;
              LOBYTE(v71) = sub_1AF640C98(v278, v71, v73);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
              sub_1AFB930A8(v263, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v231);
              sub_1AF635250(&v270);
              if (v71)
              {
                goto LABEL_90;
              }

LABEL_67:
              ++v32;
              v31 += 72;
              if (v30 == v32)
              {
                goto LABEL_94;
              }
            }

            if (BYTE8(v272) == 3)
            {
              break;
            }

            if (BYTE8(v272) == 4)
            {
              sub_1AFB930A8(v263, sub_1AF43A540);
              sub_1AF63515C(&v270, &v237);
              if (v275 != 4)
              {
                goto LABEL_66;
              }

              v66 = v237;
              v67 = v273[0];
              sub_1AF635250(&v270);
              v68 = v66 == v67;
              goto LABEL_79;
            }

            sub_1AFB930A8(v263, sub_1AF43A540);
            if (v275 != 5)
            {
              goto LABEL_66;
            }

            v74 = vorrq_s8(*&v273[8], v274);
            if (*&vorr_s8(*v74.i8, *&vextq_s8(v74, v74, 8uLL)) | *v273)
            {
              goto LABEL_66;
            }

            sub_1AF635250(&v270);
LABEL_90:
            v76 = sub_1AFBFCA08(&v270);
            v77 = *(v75 + 48);
            if (v77)
            {
              v78 = *(v75 + 64);
              *(v77 + 8 * v78) = v198;
              *(v75 + 64) = v78 + 1;
            }

            (v76)(&v270, 0);
            v13 = v20;

            sub_1AF635250(v258);
LABEL_16:
            if (++v19 == v14)
            {
              goto LABEL_96;
            }
          }

          sub_1AF63515C(&v270, &v237);
          if (v275 != 3)
          {
            goto LABEL_65;
          }

          goto LABEL_85;
        }

        goto LABEL_96;
      }

      if (v11 != v205)
      {
        break;
      }

LABEL_96:
      v5 = v204;
      sub_1AF630994(v208, &v209, v280);
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v203);
      if (v202)
      {
        os_unfair_lock_unlock(v13[43]);
        os_unfair_lock_unlock(v13[47]);
      }

      v8 = v201 + 1;
      if (v201 + 1 == v200)
      {
        goto LABEL_170;
      }
    }

LABEL_100:
    v79 = &v207[104 * v11];
    if ((v79[72] & 1) != 0 || *(v79 + 6))
    {
      v81 = v13[5];
    }

    else
    {
      v80 = v79[58];
      v81 = v13[5];
      if (v80 != 1)
      {
        v82 = *(v81 + 16);
        v83 = *(v82 + 128);
        if (!*(v83 + 16))
        {
          goto LABEL_99;
        }

        v84 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
        if ((v85 & 1) == 0 || *(*(v82 + 24) + 16 * *(*(v83 + 56) + 8 * v84) + 32) != &type metadata for InverseWorldTransform)
        {
          goto LABEL_99;
        }

        *&v258[0] = &type metadata for InverseWorldTransform;
        *(&v258[0] + 1) = &off_1F2529E00;
        LOBYTE(v259) = 1;
        v86 = v208[13];
        v87 = *(v86 + 16);
        if (!v87)
        {
LABEL_140:

LABEL_141:
          v109 = v13[30] - v13[29];
          v110 = v208;
          v111 = ecs_stack_allocator_allocate(v208[4], 8 * v109, 8);
          *v111 = v11;
          sub_1AF63515C(v258, &v270);
          *v273 = v111;
          *&v273[8] = v109;
          *&v273[16] = 1;
          v112 = v110[13];
          v113 = swift_isUniquelyReferenced_nonNull_native();
          v110[13] = v112;
          if ((v113 & 1) == 0)
          {
            v112 = sub_1AF420EA0(0, v112[2] + 1, 1, v112);
            v208[13] = v112;
          }

          v115 = v112[2];
          v114 = v112[3];
          if (v115 >= v114 >> 1)
          {
            v208[13] = sub_1AF420EA0(v114 > 1, v115 + 1, 1, v112);
          }

          sub_1AF635250(v258);
          v116 = v208;
          v117 = v208[13];
          *(v117 + 16) = v115 + 1;
          v118 = v117 + 72 * v115;
          *(v118 + 32) = v270;
          v119 = *v273;
          v120 = v272;
          v121 = v271;
          *(v118 + 96) = *&v273[16];
          *(v118 + 64) = v120;
          *(v118 + 80) = v119;
          *(v118 + 48) = v121;
          v116[13] = v117;
          goto LABEL_99;
        }

        v88 = v86 + 32;

        v89 = 0;
        while (2)
        {
          sub_1AFB93040(v88, v263, sub_1AF43A540);
          sub_1AF63515C(v263, &v270);
          sub_1AF63515C(v258, v273);
          if (BYTE8(v272) > 2u)
          {
            if (BYTE8(v272) != 3)
            {
              if (BYTE8(v272) != 4)
              {
                sub_1AFB930A8(v263, sub_1AF43A540);
                if (v275 == 5)
                {
                  v128 = vorrq_s8(*&v273[8], v274);
                  if (!(*&vorr_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL)) | *v273))
                  {
                    goto LABEL_137;
                  }
                }

                goto LABEL_147;
              }

              sub_1AFB930A8(v263, sub_1AF43A540);
              sub_1AF63515C(&v270, &v237);
              if (v275 != 4)
              {
                goto LABEL_147;
              }

              v122 = v237;
              v123 = v273[0];
              sub_1AF635250(&v270);
              if (v122 == v123)
              {
                goto LABEL_138;
              }

LABEL_148:
              ++v89;
              v88 += 72;
              if (v87 == v89)
              {
                goto LABEL_141;
              }

              continue;
            }

            sub_1AF63515C(&v270, &v237);
            if (v275 == 3)
            {
LABEL_165:
              sub_1AF0FBA54(&v237, &v231);
              sub_1AF0FBA54(v273, v278);
              v126 = *(&v232 + 1);
              v127 = v233;
              sub_1AF441150(&v231, *(&v232 + 1));
              LOBYTE(v126) = sub_1AF640C98(v278, v126, v127);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
              sub_1AFB930A8(v263, sub_1AF43A540);
              _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v231);
              sub_1AF635250(&v270);
              if (v126)
              {
                goto LABEL_138;
              }

              goto LABEL_148;
            }
          }

          else
          {
            if (!BYTE8(v272))
            {
              sub_1AFB930A8(v263, sub_1AF43A540);
              sub_1AF63515C(&v270, &v237);
              if (v275)
              {
                goto LABEL_147;
              }

LABEL_160:
              v124 = v237;
              v125 = *v273;
              sub_1AF635250(&v270);
              if (v124 == v125)
              {
                goto LABEL_138;
              }

              goto LABEL_148;
            }

            if (BYTE8(v272) == 1)
            {
              sub_1AFB930A8(v263, sub_1AF43A540);
              sub_1AF63515C(&v270, &v237);
              if (v275 == 1)
              {
                goto LABEL_160;
              }

LABEL_147:
              sub_1AFB930A8(&v270, sub_1AF635194);
              goto LABEL_148;
            }

            sub_1AF63515C(&v270, &v237);
            if (v275 == 2)
            {
              goto LABEL_165;
            }
          }

          break;
        }

        sub_1AFB930A8(v263, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v237);
        goto LABEL_147;
      }
    }

    v90 = *(v81 + 16);
    v91 = *(v90 + 128);
    if (*(v91 + 16))
    {
      v92 = sub_1AF449CB8(&type metadata for InverseWorldTransform);
      if ((v93 & 1) != 0 && *(*(v90 + 24) + 16 * *(*(v91 + 56) + 8 * v92) + 32) == &type metadata for InverseWorldTransform)
      {
        goto LABEL_99;
      }
    }

    *&v258[0] = &type metadata for InverseWorldTransform;
    *(&v258[0] + 1) = &off_1F2529E00;
    LOBYTE(v259) = 0;
    v94 = v208[13];
    v95 = *(v94 + 16);
    if (!v95)
    {
      goto LABEL_140;
    }

    v96 = v94 + 32;

    v97 = 0;
    while (1)
    {
      sub_1AFB93040(v96, v263, sub_1AF43A540);
      sub_1AF63515C(v263, &v270);
      sub_1AF63515C(v258, v273);
      if (BYTE8(v272) <= 2u)
      {
        break;
      }

      if (BYTE8(v272) == 3)
      {
        sub_1AF63515C(&v270, &v237);
        if (v275 != 3)
        {
          goto LABEL_114;
        }

LABEL_133:
        sub_1AF0FBA54(&v237, &v231);
        sub_1AF0FBA54(v273, v278);
        v102 = *(&v232 + 1);
        v103 = v233;
        sub_1AF441150(&v231, *(&v232 + 1));
        LOBYTE(v102) = sub_1AF640C98(v278, v102, v103);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v278);
        sub_1AFB930A8(v263, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v231);
        sub_1AF635250(&v270);
        if (v102)
        {
          goto LABEL_138;
        }

        goto LABEL_116;
      }

      if (BYTE8(v272) != 4)
      {
        sub_1AFB930A8(v263, sub_1AF43A540);
        if (v275 == 5)
        {
          v104 = vorrq_s8(*&v273[8], v274);
          if (!(*&vorr_s8(*v104.i8, *&vextq_s8(v104, v104, 8uLL)) | *v273))
          {
LABEL_137:
            sub_1AF635250(&v270);
LABEL_138:
            v106 = sub_1AFBFCA08(&v270);
            v107 = *(v105 + 48);
            if (v107)
            {
              v108 = *(v105 + 64);
              *(v107 + 8 * v108) = v11;
              *(v105 + 64) = v108 + 1;
            }

            (v106)(&v270, 0);

            sub_1AF635250(v258);
LABEL_99:
            if (++v11 == v205)
            {
              goto LABEL_96;
            }

            goto LABEL_100;
          }
        }

        goto LABEL_115;
      }

      sub_1AFB930A8(v263, sub_1AF43A540);
      sub_1AF63515C(&v270, &v237);
      if (v275 != 4)
      {
        goto LABEL_115;
      }

      v98 = v237;
      v99 = v273[0];
      sub_1AF635250(&v270);
      if (v98 == v99)
      {
        goto LABEL_138;
      }

LABEL_116:
      ++v97;
      v96 += 72;
      if (v95 == v97)
      {
        goto LABEL_141;
      }
    }

    if (!BYTE8(v272))
    {
      sub_1AFB930A8(v263, sub_1AF43A540);
      sub_1AF63515C(&v270, &v237);
      if (v275)
      {
        goto LABEL_115;
      }

      goto LABEL_128;
    }

    if (BYTE8(v272) == 1)
    {
      sub_1AFB930A8(v263, sub_1AF43A540);
      sub_1AF63515C(&v270, &v237);
      if (v275 != 1)
      {
        goto LABEL_115;
      }

LABEL_128:
      v100 = v237;
      v101 = *v273;
      sub_1AF635250(&v270);
      if (v100 == v101)
      {
        goto LABEL_138;
      }

      goto LABEL_116;
    }

    sub_1AF63515C(&v270, &v237);
    if (v275 != 2)
    {
LABEL_114:
      sub_1AFB930A8(v263, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v237);
LABEL_115:
      sub_1AFB930A8(&v270, sub_1AF635194);
      goto LABEL_116;
    }

    goto LABEL_133;
  }

LABEL_171:
  v129 = v192;
  v130 = *(v192 + 232);
  v278[0] = *(v192 + 216);
  v278[1] = v130;
  v279 = *(v192 + 248);
  sub_1AF6B06C0(v4, v278, 0x200000000, v258);
  if (*&v258[0])
  {
    if (v262 >= 1 && v260)
    {
      v131 = v259;
      v132 = v261;
      v133 = v259 + 48 * v260;
      v194 = v133;
      v195 = v261;
      do
      {
        v134 = *(v131 + 40);
        v135 = *(v134 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v135);
        os_unfair_lock_lock(*(v134 + 344));
        v136 = *(v134 + 24);

        *&v272 = 0;
        v271 = 0u;
        v270 = 0u;
        memset(v263, 0, 40);
        v137 = sub_1AF65A4B4(v136, 0, 0, &type metadata for EmitterRuntime, &off_1F2563418, &v270, v263);

        sub_1AFB93108(v263, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
        sub_1AFB93108(&v270, &qword_1ED72C1C0, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
        if (sub_1AF649CEC(v137))
        {
          sub_1AF649D40(v137, v132);
        }

        else
        {
          v200 = v131;
          v138 = *(v134 + 232);
          v139 = *(v134 + 240);
          v140 = *(v134 + 120);
          v208 = *(v134 + 28);
          LODWORD(v207) = *(v134 + 32);
          v141 = *(v134 + 16);
          v142 = *(v134 + 40);
          v143 = v142[200];
          v206 = *(*(v141 + 88) + 8 * v137 + 32);

          if ((v143 & 1) != 0 || *(v206 + 200) == 1)
          {
            *(v141 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v142 = *(v134 + 40);
          }

          v144 = v142[212];
          LODWORD(v199) = v140;
          if (v144)
          {
            LODWORD(v198) = 0;
          }

          else
          {
            LODWORD(v198) = *(v206 + 212);
          }

          v197 = v142[208];
          v201 = *(v134 + 128);
          v145 = *(v134 + 256);
          sub_1AF5B4FCC(v142, v138, v139, 0, v134);
          v202 = *(v134 + 256);
          v203 = v145;
          v146 = v202 - v145;
          if (v202 == v145)
          {
            v147 = 0;
          }

          else
          {
            v147 = v145;
          }

          v205 = v147;
          *&v263[0] = v147;
          v148 = *(*(v134 + 40) + 24);
          v149 = *(v148 + 16);
          if (v149)
          {
            v204 = v5;
            v150 = v148 + 32;
            v196 = v148;

            for (i = 0; i != v149; ++i)
            {
              v152 = (v150 + 40 * i);
              if ((v152[4] & 1) == 0)
              {
                v153 = *v152;
                v155 = v152[2];
                v154 = v152[3];
                v156 = v206[3];
                v157 = *(v156 + 16);
                if (v157)
                {
                  v158 = (v156 + 32);
                  while (*v158 != v153)
                  {
                    v158 += 5;
                    if (!--v157)
                    {
                      goto LABEL_189;
                    }
                  }
                }

                else
                {
LABEL_189:
                  sub_1AF640BC8(v201 + v155 * v205 + v154, v146);
                }
              }
            }

            v5 = v204;
          }

          v132 = v195;
          if (*(v141 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v141 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v134 + 72) * v146);
          }

          if (*(v134 + 184))
          {
            v159 = 0;
          }

          else
          {
            v159 = *(v134 + 168);
          }

          *&v237 = 0;

          MEMORY[0x1EEE9AC00](v160);
          v161 = v208;
          v162 = v207;
          v182 = 0u;
          v183 = v263;
          v184 = v201;
          v185 = &v237;
          LOBYTE(v186) = v197;
          HIDWORD(v186) = v137;
          LOBYTE(v187) = v198;
          v188 = v195;
          *&v271 = v159;
          DWORD2(v271) = -1;
          *&v272 = v203;
          *(&v272 + 1) = v202;
          *v273 = v203;
          *&v273[8] = v202;
          *&v270 = v203;
          *(&v270 + 1) = v202;
          if (v146 < 1)
          {

            v131 = v200;
          }

          else
          {
            v131 = v200;
            do
            {
              LOBYTE(v231) = v162;
              sub_1AF6248A8(v137, v161 | (v162 << 32), v199, v141, &v270, sub_1AF5C5ACC);
              v162 = v207;
              v161 = v208;
            }

            while ((*(&v270 + 1) - v270) > 0);
          }

          v163 = *(v134 + 192);
          if (v163)
          {
            v164 = *(v134 + 208);
            sub_1AF75D364(v203, v202, v163);
            sub_1AF75D364(v203, v202, v164);
          }

          v133 = v194;
        }

        v131 += 48;
        os_unfair_lock_unlock(*(v134 + 344));
        os_unfair_lock_unlock(*(v134 + 376));
      }

      while (v131 != v133);
    }

    sub_1AFB91B88(v258, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    v4 = v191;
    v129 = v192;
  }

  v165 = *(v129 + 152);
  v218[0] = *(v129 + 136);
  v218[1] = v165;
  v219 = *(v129 + 168);
  sub_1AF6B06C0(v4, v218, 0x200000000, v263);
  v239 = v263[2];
  v240 = v264;
  v241 = v265;
  v242 = v266;
  v237 = v263[0];
  v238 = v263[1];
  v203 = *&v263[0];
  if (*&v263[0])
  {
    v167 = *(&v263[2] + 1);
    v168 = *(&v264 + 1);
    v208 = *(&v265 + 1);
    v202 = v265;
    v268 = *(v263 + 8);
    v269 = *(&v263[1] + 8);
    MEMORY[0x1EEE9AC00](v166);
    v200 = &v182 + 8;
    v201 = v169;
    v184 = v4;
    v185 = v129;
    v186 = v4;
    v187 = v189;
    LOBYTE(v188) = v190;
    if (v169 > 0 && v168)
    {
      v199 = &v189;
      v170 = v208[4];
      LODWORD(v207) = *(v202 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v233 = v239;
      v234 = v240;
      v235 = v241;
      v236 = v242;
      v231 = v237;
      v232 = v238;
      sub_1AF5DD298(&v231, &v270);
      for (j = v167 + 24; ; j += 48)
      {
        v173 = *(j - 24);
        v172 = *(j - 20);
        v174 = *(j - 16);
        v175 = *(j - 8);
        v206 = *j;
        v176 = *(j + 8);
        v177 = *(j + 16);
        v204 = v5;
        v205 = v176;
        if (v207)
        {
          v178 = *(v177 + 376);

          os_unfair_lock_lock(v178);
          os_unfair_lock_lock(*(v177 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v170);

        v180 = v208;
        sub_1AF630914(v179, v208, v267);

        LOBYTE(v212) = 1;
        *&v270 = v202;
        *(&v270 + 1) = v177;
        *&v271 = v180;
        *(&v271 + 1) = v174;
        *&v272 = (v172 - v173 + v174);
        *(&v272 + 1) = v201;
        *v273 = v173;
        *&v273[8] = v172;
        *&v273[16] = 0;
        v274.i64[0] = 0;
        v274.i8[8] = 1;
        v275 = v175;
        v276 = v206;
        v277 = v205;
        v5 = v204;
        sub_1AF889684(&v270, sub_1AFB92674, v200);
        if (v5)
        {
          break;
        }

        v215 = v203;
        v216 = v268;
        v217 = v269;
        sub_1AF630994(v208, &v215, v267);
        sub_1AF62D29C(v177);
        ecs_stack_allocator_pop_snapshot(v170);
        if (v207)
        {
          os_unfair_lock_unlock(*(v177 + 344));
          os_unfair_lock_unlock(*(v177 + 376));
        }

        if (!--v168)
        {
          v181 = MEMORY[0x1E69E6720];
          sub_1AFB91B88(v263, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
          sub_1AFB91B88(v263, &qword_1ED725EA0, &type metadata for QueryResult, v181, sub_1AFB936C8);
          return;
        }
      }

      v212 = v203;
      v213 = v268;
      v214 = v269;
      sub_1AF630994(v208, &v212, v267);
      sub_1AF62D29C(v177);
      ecs_stack_allocator_pop_snapshot(v170);
      os_unfair_lock_unlock(*(v177 + 344));
      os_unfair_lock_unlock(*(v177 + 376));
      __break(1u);
    }

    else
    {
      sub_1AFB91B88(v263, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
    }
  }
}

uint64_t sub_1AFB88544(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 8) == 1 && *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 16) == 0)
  {
    *(a3 + 536) = 0u;
  }

  if (*(*(a3 + 256) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *(a3 + 256);
    sub_1AFB92608(0);
    sub_1AFDFE4B8();
    *(a3 + 256) = v14;
  }

  *(a3 + 272) = 0;
  *(a3 + 280) = 0;
  if ((*(a3 + 336) & 1) == 0)
  {
    swift_unknownObjectRelease();
    *(a3 + 344) = 0u;
    *(a3 + 360) = 0u;
    swift_unknownObjectRelease();
    *(a3 + 456) = 0;
    *(a3 + 424) = 0u;
    *(a3 + 440) = 0u;
  }

  sub_1AFB7F240();
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;

  v12 = sub_1AF64F35C();

  if (v12)
  {
    return sub_1AFB8033C(a1, a2, a3, a7);
  }

  return result;
}

void sub_1AFB88698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0;
  v7 = *(v2 + 144);
  v8 = *(v2 + 148);
  v9 = *(v2 + 160);
  v10 = *(v2 + 168);
  v11 = *(v2 + 152) | 1;
  v199 = *(v2 + 136);
  v200 = v7;
  v201 = v8;
  v202 = v11;
  v203 = v9;
  v204 = v10;

  sub_1AF6B06C0(a1, &v199, a2 & 0xFFFFFFFFFFLL, v181);

  if (*v181)
  {
    if (v184 <= 0 || (v168 = *(&v182 + 1)) == 0)
    {
      sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
      goto LABEL_22;
    }

    v161 = v2;
    v162 = a2;
    v163 = a1;
    v167 = *&v181[40];
    v12 = *(&v183 + 1);
    v176 = v183;
    v13 = *(v183 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v14 = *(*(&v183 + 1) + 32);
    v189 = *v181;
    v190 = *&v181[8];
    v191 = *&v181[24];
    *&v185[32] = *&v181[32];
    v186 = v182;
    v187 = v183;
    v188 = v184;
    *v185 = *v181;
    *&v185[16] = *&v181[16];
    sub_1AF5DD298(v185, v180);
    v15 = 0;
    v166 = v12;
    v165 = v13;
    v164 = v14;
    while (1)
    {
      v16 = (v167 + 48 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(v16 + 2);
      v170 = *(v16 + 3);
      v20 = *(v16 + 4);
      v21 = *(v16 + 5);
      if (v13)
      {
        v22 = *(v21 + 376);

        os_unfair_lock_lock(v22);
        os_unfair_lock_lock(*(v21 + 344));
      }

      else
      {
      }

      v174 = v6;
      ecs_stack_allocator_push_snapshot(v14);
      v23 = *(v12 + 4);
      v197[0] = *(v12 + 3);
      v197[1] = v23;
      v198 = v12[10];
      v24 = v12[4];
      v25 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;

      v12[6] = ecs_stack_allocator_allocate(v24, 48 * v25, 8);
      v12[7] = v25;
      v12[9] = 0;
      v12[10] = 0;
      v12[8] = 0;

      v26 = sub_1AF64B110(&type metadata for EmitterDescription, &off_1F2563648, v19, v170, v20, v12);
      v27 = sub_1AF64B110(&type metadata for EmitterRuntime, &off_1F2563418, v19, v170, v20, v12);
      v28 = v27;
      v172 = v15;
      if (v19)
      {
        if (v20)
        {
          do
          {
            v30 = *v19++;
            v29 = v30;
            v31 = *(v21 + 16);

            if (*(v21 + 184))
            {
              goto LABEL_173;
            }

            v32 = *(*(v21 + 168) + 4 * v29);
            v33 = *(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32 + 8);

            v34 = *(v21 + 28);
            v35 = *(v21 + 32);

            LOBYTE(v180[0]) = v35;
            sub_1AFB7BFB0(v32 | (v33 << 32), v34 | (v35 << 32), v26, v28, v176, 1);

            v28 += 848;
            v26 += 104;
          }

          while (--v20);
        }
      }

      else if (v17 != v18)
      {
        v36 = &v27[848 * v17];
        v37 = &v26[104 * v17];
        while (1)
        {
          v38 = *(v21 + 16);

          if (*(v21 + 184))
          {
            break;
          }

          v39 = *(*(v21 + 168) + 4 * v17);
          v40 = v17 + 1;
          v41 = *(*(v38 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v39 + 8);

          v42 = *(v21 + 28);
          v43 = *(v21 + 32);

          LOBYTE(v180[0]) = v43;
          sub_1AFB7BFB0(v39 | (v41 << 32), v42 | (v43 << 32), v37, v36, v176, 1);

          v36 += 848;
          v37 += 104;
          v17 = v40;
          if (v18 == v40)
          {
            goto LABEL_18;
          }
        }

LABEL_173:
        sub_1AFDFE518();
        __break(1u);
        return;
      }

LABEL_18:
      v12 = v166;
      v6 = v174;
      sub_1AF630994(v166, &v189, v197);
      sub_1AF62D29C(v21);
      v14 = v164;
      ecs_stack_allocator_pop_snapshot(v164);
      v13 = v165;
      if (v165)
      {
        os_unfair_lock_unlock(*(v21 + 344));
        os_unfair_lock_unlock(*(v21 + 376));
      }

      v15 = v172 + 1;
      if (v172 + 1 == v168)
      {
        v44 = MEMORY[0x1E69E6720];
        sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
        sub_1AFB91B88(v181, &qword_1ED725EA0, &type metadata for QueryResult, v44, sub_1AFB936C8);
        a2 = v162;
        a1 = v163;
        v3 = v161;
        break;
      }
    }
  }

LABEL_22:
  v45 = *(v3 + 192);
  v195[0] = *(v3 + 176);
  v195[1] = v45;
  v196 = *(v3 + 208);
  sub_1AF6B06C0(a1, v195, a2 & 0xFFFFFFFFFFLL, v185);
  if (!*v185)
  {
    return;
  }

  if (v188 <= 0 || (v173 = *(&v186 + 1)) == 0)
  {
    v159 = MEMORY[0x1E69E6720];
    goto LABEL_171;
  }

  v171 = *&v185[40];
  v46 = *(&v187 + 1);
  v47 = *(v187 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v177 = *(*(&v187 + 1) + 32);
  v192 = *v185;
  v193 = *&v185[8];
  v194 = *&v185[24];
  v180[2] = *&v185[32];
  v180[3] = v186;
  v180[4] = v187;
  v180[5] = v188;
  v180[0] = *v185;
  v180[1] = *&v185[16];
  sub_1AF5DD298(v180, v178);
  v48 = 0;
  v49 = MEMORY[0x1E69E7CC0];
  v169 = v47;
  do
  {
    v175 = v6;
    v50 = (v171 + 48 * v48);
    v51 = *v50;
    v52 = v50[1];
    v54 = *(v50 + 2);
    v53 = *(v50 + 3);
    v56 = *(v50 + 4);
    v55 = *(v50 + 5);
    if (v47)
    {
      v57 = *(v55 + 376);

      os_unfair_lock_lock(v57);
      os_unfair_lock_lock(*(v55 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v177);
    v58 = *(v46 + 64);
    v178[0] = *(v46 + 48);
    v178[1] = v58;
    v179 = *(v46 + 80);
    v59 = *(*(*(*(v55 + 40) + 16) + 32) + 16) + 1;
    *(v46 + 48) = ecs_stack_allocator_allocate(*(v46 + 32), 48 * v59, 8);
    *(v46 + 56) = v59;
    *(v46 + 72) = 0;
    *(v46 + 80) = 0;
    *(v46 + 64) = 0;
    v60 = sub_1AF64B110(&type metadata for ParticleSubSpawn.State, &off_1F25668F8, v54, v53, v56, v46);
    if (!v54)
    {
      if (v51 == v52)
      {
        goto LABEL_101;
      }

      v109 = v52 - v51;
      v110 = &v60[64 * v51];
      while (1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *v110;
        if (isUniquelyReferenced_nonNull_native)
        {
          v113 = *(v112 + 2);
          v114 = swift_isUniquelyReferenced_nonNull_native();
          *v110 = v112;
          if ((v114 & 1) == 0)
          {
            v112 = sub_1AF42250C(0, v113, 1, v112);
            *v110 = v112;
          }

          if (v113)
          {
            v115 = *(v112 + 2) - v113;
            memmove(v112 + 32, &v112[16 * v113 + 32], 16 * v115);
            *(v112 + 2) = v115;
          }

          *v110 = v112;
          if (!*(v110 + 1))
          {
            goto LABEL_124;
          }
        }

        else
        {
          v116 = v49;
          if (*(v112 + 3) >= 2uLL)
          {
            sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            v116 = swift_allocObject();
            v117 = j__malloc_size_0(v116);
            v118 = v117 - 32;
            if (v117 < 32)
            {
              v118 = v117 - 17;
            }

            v116[2] = 0;
            v116[3] = 2 * (v118 >> 4);
          }

          *v110 = v116;

          if (!*(v110 + 1))
          {
            goto LABEL_124;
          }
        }

        v119 = swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v110 + 1);
        if (!v119)
        {
          v124 = v49;
          if (*(v120 + 3) >= 2uLL)
          {
            sub_1AFB91B24(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
            v124 = swift_allocObject();
            v125 = j__malloc_size_0(v124);
            v126 = v125 - 32;
            if (v125 < 32)
            {
              v126 = v125 - 17;
            }

            v124[2] = 0;
            v124[3] = 2 * (v126 >> 4);
          }

          *(v110 + 1) = v124;

          if (!*(v110 + 2))
          {
            goto LABEL_142;
          }

LABEL_131:
          v127 = swift_isUniquelyReferenced_nonNull_native();
          v128 = *(v110 + 2);
          if (v127)
          {
            v129 = *(v128 + 2);
            v130 = swift_isUniquelyReferenced_nonNull_native();
            *(v110 + 2) = v128;
            if ((v130 & 1) == 0)
            {
              v128 = sub_1AF42250C(0, v129, 1, v128);
              *(v110 + 2) = v128;
            }

            if (v129)
            {
              v131 = *(v128 + 2) - v129;
              memmove(v128 + 32, &v128[16 * v129 + 32], 16 * v131);
              *(v128 + 2) = v131;
            }

            *(v110 + 2) = v128;
          }

          else
          {
            v132 = v49;
            if (*(v128 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
              v132 = swift_allocObject();
              v133 = j__malloc_size_0(v132);
              v134 = v133 - 32;
              if (v133 < 32)
              {
                v134 = v133 - 17;
              }

              v132[2] = 0;
              v132[3] = 2 * (v134 >> 4);
            }

            *(v110 + 2) = v132;
          }

          goto LABEL_142;
        }

        v121 = *(v120 + 2);
        v122 = swift_isUniquelyReferenced_nonNull_native();
        *(v110 + 1) = v120;
        if ((v122 & 1) == 0)
        {
          v120 = sub_1AF42458C(0, v121, 1, v120);
          *(v110 + 1) = v120;
        }

        if (v121)
        {
          v123 = *(v120 + 2) - v121;
          memmove(v120 + 32, &v120[16 * v121 + 32], 16 * v123);
          *(v120 + 2) = v123;
        }

        *(v110 + 1) = v120;
LABEL_124:
        if (*(v110 + 2))
        {
          goto LABEL_131;
        }

LABEL_142:
        v135 = (v110 + 24);
        if (*(v110 + 3))
        {
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v137 = *v135;
          if (v136)
          {
            v138 = *(v137 + 2);
            v139 = swift_isUniquelyReferenced_nonNull_native();
            *v135 = v137;
            if ((v139 & 1) == 0)
            {
              v137 = sub_1AF42053C(0, v138, 1, v137);
              *v135 = v137;
            }

            sub_1AF64F028();
            *v135 = v137;
          }

          else
          {
            v140 = v49;
            if (*(v137 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
              v140 = swift_allocObject();
              v141 = j__malloc_size_0(v140);
              v142 = v141 - 32;
              if (v141 < 32)
              {
                v142 = v141 - 17;
              }

              v140[2] = 0;
              v140[3] = 2 * (v142 >> 4);
            }

            *v135 = v140;
          }
        }

        v143 = (v110 + 48);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v145 = *(v110 + 6);
        if (v144)
        {
          v146 = *(v145 + 2);
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *v143 = v145;
          if ((v147 & 1) == 0)
          {
            v145 = sub_1AF41FDF8(0, v146, 1, v145);
            *v143 = v145;
          }

          sub_1AF64C540(0, v146, 0);
          *v143 = v145;
        }

        else
        {
          v148 = v49;
          if (*(v145 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
            v148 = swift_allocObject();
            v149 = j__malloc_size_0(v148);
            v150 = v149 - 32;
            if (v149 < 32)
            {
              v150 = v149 - 29;
            }

            v148[2] = 0;
            v148[3] = 2 * (v150 >> 2);
          }

          *v143 = v148;
        }

        v151 = (v110 + 56);
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v153 = *(v110 + 7);
        if (v152)
        {
          v154 = *(v153 + 2);
          v155 = swift_isUniquelyReferenced_nonNull_native();
          *v151 = v153;
          if ((v155 & 1) == 0)
          {
            v153 = sub_1AF420E8C(0, v154, 1, v153);
            *v151 = v153;
          }

          sub_1AF64F01C();
          *v151 = v153;
        }

        else
        {
          v156 = v49;
          if (*(v153 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &unk_1ED726940, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
            v156 = swift_allocObject();
            v157 = j__malloc_size_0(v156);
            v158 = v157 - 32;
            if (v157 < 32)
            {
              v158 = v157 - 29;
            }

            v156[2] = 0;
            v156[3] = 2 * (v158 >> 2);
          }

          *v151 = v156;
        }

        v110 += 64;
        if (!--v109)
        {
          goto LABEL_101;
        }
      }
    }

    if (v56)
    {
      v61 = (v60 + 56);
      do
      {
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v61 - 7);
        if (v62)
        {
          v64 = *(v63 + 2);
          v65 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 - 7) = v63;
          if ((v65 & 1) == 0)
          {
            v63 = sub_1AF42250C(0, v64, 1, v63);
            *(v61 - 7) = v63;
          }

          if (v64)
          {
            v66 = *(v63 + 2) - v64;
            memmove(v63 + 32, &v63[16 * v64 + 32], 16 * v66);
            *(v63 + 2) = v66;
          }

          *(v61 - 7) = v63;
          if (!*(v61 - 6))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v67 = v49;
          if (*(v63 + 3) >= 2uLL)
          {
            sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
            v67 = swift_allocObject();
            v68 = j__malloc_size_0(v67);
            v69 = v68 - 32;
            if (v68 < 32)
            {
              v69 = v68 - 17;
            }

            v67[2] = 0;
            v67[3] = 2 * (v69 >> 4);
          }

          *(v61 - 7) = v67;

          if (!*(v61 - 6))
          {
            goto LABEL_53;
          }
        }

        v70 = swift_isUniquelyReferenced_nonNull_native();
        v71 = *(v61 - 6);
        if (!v70)
        {
          v75 = v49;
          if (*(v71 + 3) >= 2uLL)
          {
            sub_1AFB91B24(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
            v75 = swift_allocObject();
            v76 = j__malloc_size_0(v75);
            v77 = v76 - 32;
            if (v76 < 32)
            {
              v77 = v76 - 17;
            }

            v75[2] = 0;
            v75[3] = 2 * (v77 >> 4);
          }

          *(v61 - 6) = v75;

          if (!*(v61 - 5))
          {
            goto LABEL_71;
          }

LABEL_60:
          v78 = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v61 - 5);
          if (v78)
          {
            v80 = *(v79 + 2);
            v81 = swift_isUniquelyReferenced_nonNull_native();
            *(v61 - 5) = v79;
            if ((v81 & 1) == 0)
            {
              v79 = sub_1AF42250C(0, v80, 1, v79);
              *(v61 - 5) = v79;
            }

            if (v80)
            {
              v82 = *(v79 + 2) - v80;
              memmove(v79 + 32, &v79[16 * v80 + 32], 16 * v82);
              *(v79 + 2) = v82;
            }

            *(v61 - 5) = v79;
          }

          else
          {
            v83 = v49;
            if (*(v79 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1EB630930, &qword_1ED72F740, MEMORY[0x1E69E7450]);
              v83 = swift_allocObject();
              v84 = j__malloc_size_0(v83);
              v85 = v84 - 32;
              if (v84 < 32)
              {
                v85 = v84 - 17;
              }

              v83[2] = 0;
              v83[3] = 2 * (v85 >> 4);
            }

            *(v61 - 5) = v83;
          }

          goto LABEL_71;
        }

        v72 = *(v71 + 2);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 - 6) = v71;
        if ((v73 & 1) == 0)
        {
          v71 = sub_1AF42458C(0, v72, 1, v71);
          *(v61 - 6) = v71;
        }

        if (v72)
        {
          v74 = *(v71 + 2) - v72;
          memmove(v71 + 32, &v71[16 * v72 + 32], 16 * v74);
          *(v71 + 2) = v74;
        }

        *(v61 - 6) = v71;
LABEL_53:
        if (*(v61 - 5))
        {
          goto LABEL_60;
        }

LABEL_71:
        v86 = v61 - 4;
        if (*(v61 - 4))
        {
          v87 = swift_isUniquelyReferenced_nonNull_native();
          v88 = *v86;
          if (v87)
          {
            v89 = *(v88 + 2);
            v90 = swift_isUniquelyReferenced_nonNull_native();
            *v86 = v88;
            if ((v90 & 1) == 0)
            {
              v88 = sub_1AF42053C(0, v89, 1, v88);
              *v86 = v88;
            }

            sub_1AF64F028();
            *v86 = v88;
          }

          else
          {
            v91 = v49;
            if (*(v88 + 3) >= 2uLL)
            {
              sub_1AFB9252C(0, &qword_1ED726930, &qword_1ED72F6E0, MEMORY[0x1E69E74A8]);
              v91 = swift_allocObject();
              v92 = j__malloc_size_0(v91);
              v93 = v92 - 32;
              if (v92 < 32)
              {
                v93 = v92 - 17;
              }

              v91[2] = 0;
              v91[3] = 2 * (v93 >> 4);
            }

            *v86 = v91;
          }
        }

        v94 = swift_isUniquelyReferenced_nonNull_native();
        v95 = *(v61 - 1);
        if (v94)
        {
          v96 = *(v95 + 2);
          v97 = swift_isUniquelyReferenced_nonNull_native();
          *(v61 - 1) = v95;
          if ((v97 & 1) == 0)
          {
            v95 = sub_1AF41FDF8(0, v96, 1, v95);
            *(v61 - 1) = v95;
          }

          if (v96)
          {
            v98 = *(v95 + 2) - v96;
            memmove(v95 + 32, &v95[4 * v96 + 32], 4 * v98);
            *(v95 + 2) = v98;
          }

          *(v61 - 1) = v95;
        }

        else
        {
          v99 = v49;
          if (*(v95 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &qword_1ED726990, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
            v99 = swift_allocObject();
            v100 = j__malloc_size_0(v99);
            v101 = v100 - 32;
            if (v100 < 32)
            {
              v101 = v100 - 29;
            }

            v99[2] = 0;
            v99[3] = 2 * (v101 >> 2);
          }

          *(v61 - 1) = v99;
        }

        v102 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *v61;
        if (v102)
        {
          v104 = *(v103 + 2);
          v105 = swift_isUniquelyReferenced_nonNull_native();
          *v61 = v103;
          if ((v105 & 1) == 0)
          {
            v103 = sub_1AF420E8C(0, v104, 1, v103);
            *v61 = v103;
          }

          sub_1AF64F01C();
          *v61 = v103;
        }

        else
        {
          v106 = v49;
          if (*(v103 + 3) >= 2uLL)
          {
            sub_1AFB936C8(0, &unk_1ED726940, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6F90]);
            v106 = swift_allocObject();
            v107 = j__malloc_size_0(v106);
            v108 = v107 - 32;
            if (v107 < 32)
            {
              v108 = v107 - 29;
            }

            v106[2] = 0;
            v106[3] = 2 * (v108 >> 2);
          }

          *v61 = v106;
        }

        v61 += 8;
        --v56;
      }

      while (v56);
    }

LABEL_101:
    v6 = v175;
    sub_1AF630994(v46, &v192, v178);
    sub_1AF62D29C(v55);
    ecs_stack_allocator_pop_snapshot(v177);
    v47 = v169;
    if (v169)
    {
      os_unfair_lock_unlock(*(v55 + 344));
      os_unfair_lock_unlock(*(v55 + 376));
    }

    ++v48;
  }

  while (v48 != v173);
  v160 = MEMORY[0x1E69E6720];
  sub_1AFB91B88(v185, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB936C8);
  v159 = v160;
LABEL_171:
  sub_1AFB91B88(v185, &qword_1ED725EA0, &type metadata for QueryResult, v159, sub_1AFB936C8);
}