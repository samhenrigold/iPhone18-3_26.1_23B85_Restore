void sub_100207D3C(uint64_t a1, double *a2)
{
  if ((*(a1 + 828) & 0x80000000) != 0 && *(a1 + 832) <= 0.0 && *(a1 + 56) >= 2uLL)
  {
    do
    {
      if (sub_10002F2EC(*(*(a1 + 24) + 8 * (*(a1 + 48) / 0x1AuLL)) + 152 * (*(a1 + 48) % 0x1AuLL) + 16, a2) <= 900.0)
      {
        break;
      }

      sub_100208200((a1 + 16));
    }

    while (*(a1 + 56) >= 2uLL);
  }
}

void *sub_100207E00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) - 0x79435E50D79435E5 * ((a5 - *a4) >> 3) + 0x79435E50D79435E5 * ((a3 - *a2) >> 3);
  }

  return sub_100207E64(a1, a2, a3, v5);
}

void *sub_100207E64(unint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a1[5];
  if (v8 >= a4)
  {
    v15 = a1[4];
    v16 = a1[1];
    v17 = (v16 + 8 * (v15 / 0x1A));
    if (a1[2] == v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17 + 152 * (v15 % 0x1A);
    }

    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, a4);
    v20 = v22;
    v21 = v23;
    v22 = v17;
    v23 = v18;
    sub_100207FC0(a2, a3, v20, v21, &v22);
    return sub_10020828C(a1, v22, v23);
  }

  else
  {
    v22 = a2;
    v23 = a3;
    sub_1000B9760(&v22, v8);
    v9 = v22;
    v10 = v23;
    v11 = a1[4];
    v12 = a1[1];
    v13 = (v12 + 8 * (v11 / 0x1A));
    if (a1[2] == v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = *v13 + 152 * (v11 % 0x1A);
    }

    v22 = v13;
    v23 = v14;
    sub_100207FC0(a2, a3, v9, v10, &v22);
    return sub_100244294(a1, v9, v10, a4 - a1[5]);
  }
}

double sub_100207FC0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = (*a1 + 3952); ; i = v12 + 494)
    {
      sub_10020C55C(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_10020C55C(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t sub_100208064(uint64_t a1, int a2)
{
  if (a2 - 1) < 0xB && ((0x7EFu >> (a2 - 1)))
  {
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#fusion,unsupported location,type,%{public}d", buf, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    v7[0] = 67240192;
    v7[1] = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,unsupported location,type,%{public}d", v7, 8);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::isLocationTypeSupported(CLLocationType) const", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }

    return 0;
  }

  return result;
}

void sub_1002081F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100208200(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0x1A)) + 152 * (v2 % 0x1A) + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1001FD668(a1, 1);
}

uint64_t sub_10020828C(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 / 0x1A));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 152 * (v5 % 0x1A);
  }

  if (v9 != a3)
  {
    v10 = (a3 - *a2) >> 3;
    v11 = 26 * (v8 - a2) - 0x79435E50D79435E5 * ((v9 - *v8) >> 3) + 0x79435E50D79435E5 * v10;
    if (v11 >= 1)
    {
      v12 = (v6 + 8 * (v4 / 0x1A));
      if (v7 == v6)
      {
        v13 = 0;
      }

      else
      {
        v13 = *v12 + 152 * (v4 % 0x1A);
      }

      if (a3 == v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 26 * (a2 - v12) - 0x79435E50D79435E5 * v10 + 0x79435E50D79435E5 * ((v13 - *v12) >> 3);
      }

      v19 = v12;
      v20 = v13;
      sub_1000B9760(&v19, v14);
      v15 = v20;
      if (v20 != v9)
      {
        v16 = v19;
        do
        {
          v17 = *(v15 + 8);
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          v15 += 152;
          if (v15 - *v16 == 3952)
          {
            v18 = v16[1];
            ++v16;
            v15 = v18;
          }
        }

        while (v15 != v9);
      }

      v3[5] -= v11;
      do
      {
        result = sub_1001E0254(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100208438(uint64_t a1, double *a2, uint64_t *a3, _DWORD *a4)
{
  sub_10020AA14(a1);
  *(a1 + 360) = *a4;
  v8 = a3[1];
  v11[0] = *a3;
  v11[1] = v8;
  if (!v8)
  {
    return sub_1001FD708(a1, a2, v11);
  }

  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9 = sub_1001FD708(a1, a2, v11);
  std::__shared_weak_count::__release_weak(v8);
  return v9;
}

uint64_t sub_1002084D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a1)
  {
    *a3 = *(a1 + 368);

    return sub_10002D178(a1, a2);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      *buf = 67240192;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v7 = *(a1 + 596);
      v10[0] = 67240192;
      v10[1] = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter is not initialized", v10, 8);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::getFilterLatestEstimate(LCFusionProviderLocation &, CFTimeInterval &)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return 0;
  }
}

void sub_100208698(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002086A4(uint64_t a1, uint64_t a2)
{
  memcpy(a1, a2, 0x161uLL);
  *(a1 + 360) = *(a2 + 360);
  v4 = *(a2 + 508);
  v5 = *(a2 + 524);
  v6 = *(a2 + 540);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 524) = v5;
  *(a1 + 540) = v6;
  *(a1 + 508) = v4;
  v7 = *(a2 + 444);
  v8 = *(a2 + 460);
  v9 = *(a2 + 492);
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 492) = v9;
  *(a1 + 444) = v7;
  *(a1 + 460) = v8;
  v10 = *(a2 + 380);
  v11 = *(a2 + 396);
  v12 = *(a2 + 428);
  *(a1 + 412) = *(a2 + 412);
  *(a1 + 428) = v12;
  *(a1 + 380) = v10;
  *(a1 + 396) = v11;
  *(a1 + 364) = *(a2 + 364);
  v13 = *(a2 + 568);
  v14 = *(a2 + 576);
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 568) = v13;
  v15 = *(a1 + 576);
  *(a1 + 576) = v14;
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v16;
  return a1;
}

uint64_t sub_100208760(float64x2_t *a1, double *a2, double *a3, double a4, double a5)
{
  v10 = -450.0;
  if (a5 >= -450.0)
  {
    v10 = 1000000.0;
    if (a5 <= 1000000.0)
    {
      v10 = a5;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC3A8();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 134218240;
        v24 = 1000000.0;
        v25 = 2048;
        v26 = a5;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning refAlt > %.1lf,refAlt,%.1lf,using the max", &v23, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AFC5B4();
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101AFC3A8();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 134218240;
      v24 = -450.0;
      v25 = 2048;
      v26 = a5;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning refAlt < %.1lf,refAlt,%.1lf,using the min", &v23, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AFC6B0();
    }
  }

  v13 = a1[1].f64[1];
  if (v13 == 0.0 || vabdd_f64(a4, v13) > 0.005)
  {
    if (fabs(a4) > 90.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101AFC7AC();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v23 = 134545665;
        v24 = a4;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "latitude,%{sensitive}.7lf,is out of bounds", &v23, 0xCu);
      }

      v15 = sub_10000A100(121, 0);
      result = 0;
      if (v15)
      {
        sub_101AFC7D4();
        return 0;
      }

      return result;
    }

    a1[1].f64[0] = a4 * 0.0174532925;
    a1[1].f64[1] = a4;
    v17 = __sincos_stret(a4 * 0.0174532925);
    v18 = v17.__sinval * -0.00669437999 * v17.__sinval + 1.0;
    v19 = sqrt(v18);
    v20.f64[0] = v18 * v19;
    v20.f64[1] = v19;
    v21 = vdivq_f64(xmmword_101D16770, v20);
    *a1 = v21;
    a1[2].f64[0] = v17.__cosval;
  }

  else
  {
    v21.f64[0] = a1->f64[0];
  }

  *a2 = v10 + v21.f64[0];
  v22 = (v10 + a1->f64[1]) * a1[2].f64[0];
  if (v22 < 10.0)
  {
    v22 = 10.0;
  }

  *a3 = v22;
  return 1;
}

uint64_t sub_100208A64(uint64_t a1, double *a2, _DWORD *a3, uint64_t *a4, uint64_t a5)
{
  sub_100029004(a1, a2);
  (*(*a5 + 128))(a5);
  v10 = a4[1];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = *a4;
      if (*a4)
      {
        if (*(v12 + 40) > 0.0)
        {
          v13 = (v12 + 16);
          v14 = *a2 - *(v12 + 16);
          if (v14 < 0.0)
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v15 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 596);
              v17 = *a2;
              *buf = 67240704;
              v122 = v16;
              v123 = 2050;
              v124 = v17;
              v125 = 2050;
              v126 = v14;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location skipped,dT <= 0,dt,%{public}.7f", buf, 0x1Cu);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_27;
            }

            sub_101912E28(buf);
            v18 = *(a1 + 596);
            v19 = *a2;
            __dst[0] = 67240704;
            __dst[1] = v18;
            LOWORD(__dst[2]) = 2050;
            *(&__dst[2] + 2) = v19;
            HIWORD(__dst[4]) = 2050;
            *&__dst[5] = v14;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location skipped,dT <= 0,dt,%{public}.7f", __dst, 28);
            v21 = v20;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v20);
LABEL_80:
            if (v21 != buf)
            {
              free(v21);
            }

LABEL_27:
            v30 = *(v12 + 8);
            v31 = *(v12 + 24);
            v32 = *(v12 + 40);
            *(a5 + 56) = *(v12 + 56);
            *(a5 + 40) = v32;
            *(a5 + 24) = v31;
            *(a5 + 8) = v30;
            v33 = *(v12 + 72);
            v34 = *(v12 + 88);
            v35 = *(v12 + 104);
            *(a5 + 120) = *(v12 + 120);
            *(a5 + 104) = v35;
            *(a5 + 88) = v34;
            *(a5 + 72) = v33;
            v25 = 1;
LABEL_19:
            sub_100008080(v11);
            return v25;
          }

          if (v14 < 0.001)
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v27 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v28 = *(a1 + 596);
              v29 = *a2;
              *buf = 67240704;
              v122 = v28;
              v123 = 2050;
              v124 = v29;
              v125 = 2050;
              v126 = v14;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate state skipped,small dt,%{public}.7f", buf, 0x1Cu);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_27;
            }

            sub_101912E28(buf);
            v82 = *(a1 + 596);
            v83 = *a2;
            __dst[0] = 67240704;
            __dst[1] = v82;
            LOWORD(__dst[2]) = 2050;
            *(&__dst[2] + 2) = v83;
            HIWORD(__dst[4]) = 2050;
            *&__dst[5] = v14;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate state skipped,small dt,%{public}.7f", __dst, 28);
            v21 = v84;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v84);
            goto LABEL_80;
          }

          v36 = *a2 - *(a1 + 368);
          v37 = v36 <= 5.0 && v36 >= 0.0;
          v38 = *(a1 + 24);
          v39 = *(a1 + 32);
          v40 = *(a1 + 248);
          v41 = *(a1 + 288);
          memcpy(__dst, a1, 0x161uLL);
          __dst[90] = *(a1 + 360);
          v42 = *(a1 + 540);
          v115 = *(a1 + 524);
          *v116 = v42;
          *&v116[12] = *(a1 + 552);
          v43 = *(a1 + 476);
          v111 = *(a1 + 460);
          v112 = v43;
          v44 = *(a1 + 508);
          v113 = *(a1 + 492);
          v114 = v44;
          v45 = *(a1 + 412);
          v107 = *(a1 + 396);
          v108 = v45;
          v46 = *(a1 + 444);
          v109 = *(a1 + 428);
          v110 = v46;
          v47 = *(a1 + 380);
          v105 = *(a1 + 364);
          v106 = v47;
          v117 = *(a1 + 568);
          v48 = *(a1 + 576);
          v118 = v48;
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v49 = *(a1 + 600);
          v119 = *(a1 + 584);
          v120 = v49;
          if ((*(a1 + 596) - 2101) <= 0xFFFFFF9A)
          {
            *(a1 + 596) = 2001;
          }

          v93[0] = v12;
          v93[1] = v11;
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *buf = *a3;
          v50 = sub_100208438(a1, (v12 + 16), v93, buf);
          std::__shared_weak_count::__release_weak(v11);
          if (v50)
          {
            *(a1 + 360) = *a3;
            if (*(v12 + 72) < 0.0 || (v67 = *(v12 + 80), v67 < 0.0) || v67 > 5.0 || *(v12 + 88) < 0.0 || (v68 = *(v12 + 96), v68 <= 0.0) || v68 > 90.0)
            {
              v51 = hypot(v38, v39);
              if (v51 > 0.0 && v37)
              {
                v53 = v40 + v41;
                if (v53 > 0.0)
                {
                  v54 = v51;
                  if (v53 < 25.0)
                  {
                    *(a1 + 24) = v38;
                    *(a1 + 32) = v39;
                    v55 = fmax(v36, 1.0);
                    v56 = v55 * v55 * v53 * 0.5;
                    *(a1 + 248) = v56;
                    *(a1 + 288) = v56;
                    *(a1 + 416) = v54;
                    if (qword_1025D4770 != -1)
                    {
                      sub_1001D30A0();
                    }

                    v57 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v58 = *(a1 + 596);
                      v59 = *v13;
                      *buf = 67241216;
                      v122 = v58;
                      v123 = 2050;
                      v124 = v59;
                      v125 = 2050;
                      v126 = v36;
                      v127 = 2050;
                      v128 = v54;
                      v129 = 2050;
                      v130 = v53;
                      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,loc_mct,%{public}.3f,location velocity override,dt,%{public}.3f,speed_mps,%{public}.3f,speedVar,%{public}.3f", buf, 0x30u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101912E28(buf);
                      v85 = *(a1 + 596);
                      v86 = *v13;
                      v94 = 67241216;
                      v95 = v85;
                      v96 = 2050;
                      v97 = v86;
                      v98 = 2050;
                      v99 = v36;
                      v100 = 2050;
                      v101 = v54;
                      v102 = 2050;
                      v103 = v53;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,loc_mct,%{public}.3f,location velocity override,dt,%{public}.3f,speed_mps,%{public}.3f,speedVar,%{public}.3f", &v94, 48);
                      v88 = v87;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v87);
                      if (v88 != buf)
                      {
                        free(v88);
                      }
                    }
                  }
                }
              }
            }

            if (sub_10002980C(a1, a2))
            {
              if (sub_1002084D0(a1, a5, (a5 + 16)))
              {
                v25 = 1;
                goto LABEL_75;
              }

              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v75 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v76 = *(a1 + 596);
                v77 = *a2;
                *buf = 67240448;
                v122 = v76;
                v123 = 2050;
                v124 = v77;
                _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,get predicted location", buf, 0x12u);
              }

              if (!sub_10000A100(121, 2))
              {
LABEL_74:
                v25 = 0;
LABEL_75:
                sub_1002086A4(a1, __dst);
                if (v118)
                {
                  sub_100008080(v118);
                }

                goto LABEL_19;
              }

              sub_101912E28(buf);
              v89 = *(a1 + 596);
              v90 = *a2;
              v94 = 67240448;
              v95 = v89;
              v96 = 2050;
              v97 = v90;
              LODWORD(v92) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,get predicted location", &v94, v92);
              v66 = v91;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v91);
            }

            else
            {
              if (qword_1025D4770 != -1)
              {
                sub_101912E6C();
              }

              v69 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v70 = *(a1 + 596);
                v71 = *a2;
                *buf = 67240448;
                v122 = v70;
                v123 = 2050;
                v124 = v71;
                _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,predict", buf, 0x12u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_74;
              }

              sub_101912E28(buf);
              v72 = *(a1 + 596);
              v73 = *a2;
              v94 = 67240448;
              v95 = v72;
              v96 = 2050;
              v97 = v73;
              LODWORD(v92) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,predict", &v94, v92);
              v66 = v74;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v74);
            }
          }

          else
          {
            if (qword_1025D4770 != -1)
            {
              sub_1001D30A0();
            }

            v60 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v61 = *(a1 + 596);
              v62 = *a2;
              *buf = 67240448;
              v122 = v61;
              v123 = 2050;
              v124 = v62;
              _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,init", buf, 0x12u);
            }

            if (!sub_10000A100(121, 2))
            {
              goto LABEL_74;
            }

            sub_101912E28(buf);
            v63 = *(a1 + 596);
            v64 = *a2;
            v94 = 67240448;
            v95 = v63;
            v96 = 2050;
            v97 = v64;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,propagate location failed,init", &v94, 18);
            v66 = v65;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v65);
          }

          if (v66 != buf)
          {
            free(v66);
          }

          goto LABEL_74;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v22 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 596);
    v24 = *a2;
    *buf = 67240448;
    v122 = v23;
    v123 = 2050;
    v124 = v24;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,propagate location failed,null or hunc <= 0", buf, 0x12u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v78 = *(a1 + 596);
    v79 = *a2;
    __dst[0] = 67240448;
    __dst[1] = v78;
    LOWORD(__dst[2]) = 2050;
    *(&__dst[2] + 2) = v79;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,mct,%{public}.3f,#Error,propagate location failed,null or hunc <= 0", __dst, 18);
    v81 = v80;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::propagateLocation(const CFTimeInterval &, const LCFusionDynamicsMode, const std::weak_ptr<const LCFusionProviderLocation>, LCFusionProviderLocation &)", "%s\n", v80);
    if (v81 != buf)
    {
      free(v81);
    }
  }

  v25 = 0;
  if (v11)
  {
    goto LABEL_19;
  }

  return v25;
}

void sub_100209694(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1002096A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8(a1, a2);
  *buf = 1;
  v5 = sub_10001A6B0(v4, buf);
  if ((*(a1 + 2776) & 1) != 0 || *(a1 + 2777) == 1)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 2776);
      v8 = *(a1 + 2777);
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      *buf = 67240960;
      *v128 = v7;
      *&v128[4] = 1026;
      *&v128[6] = v8;
      *v129 = 2050;
      *&v129[2] = v9;
      *v130 = 2050;
      *&v130[2] = v10;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,hasAirborneClient,%{public}d,hasFitnessClient,%{public}d,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x22u);
    }

    v11 = sub_10000A100(121, 2);
    if (!v11)
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v81 = *(a1 + 2776);
    v82 = *(a1 + 2777);
    v83 = *(a2 + 8);
    v84 = *(a2 + 16);
    v120 = 67240960;
    *v121 = v81;
    *&v121[4] = 1026;
    *&v121[6] = v82;
    *v122 = 2050;
    *&v122[2] = v83;
    *v123 = 2050;
    *&v123[2] = v84;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,hasAirborneClient,%{public}d,hasFitnessClient,%{public}d,cfat,%{public}.3f,mct,%{public}.3f", &v120, 34);
    v86 = v85;
    v11 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v85);
    if (v86 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  if (*(a2 + 124) == 3)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a2 + 8);
      v18 = *(a2 + 16);
      *buf = 134349312;
      *v128 = v17;
      *&v128[8] = 2050;
      *v129 = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,accessory,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    v11 = sub_10000A100(121, 2);
    if (!v11)
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v87 = *(a2 + 8);
    v88 = *(a2 + 16);
    v120 = 134349312;
    *v121 = v87;
    *&v121[8] = 2050;
    *v122 = v88;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,accessory,cfat,%{public}.3f,mct,%{public}.3f", &v120, 22);
    v86 = v89;
    v11 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v89);
    if (v86 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  v19 = v5;
  v20 = sub_1001252CC(a1 + 2424, v5, 6.0);
  if (v20)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v22 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      *buf = 134349312;
      *v128 = v23;
      *&v128[8] = 2050;
      *v129 = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,vehicleConnected,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    v11 = sub_10000A100(121, 2);
    if (!v11)
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v90 = *(a2 + 8);
    v91 = *(a2 + 16);
    v120 = 134349312;
    *v121 = v90;
    *&v121[8] = 2050;
    *v122 = v91;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,vehicleConnected,cfat,%{public}.3f,mct,%{public}.3f", &v120, 22);
    v86 = v92;
    v11 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v92);
    if (v86 == buf)
    {
      goto LABEL_8;
    }

    goto LABEL_101;
  }

  v25 = sub_10000B1F8(v20, v21);
  *buf = 1;
  v26.n128_f64[0] = sub_10001A6B0(v25, buf);
  if (sub_10020C654((a1 + 2632), v26))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v27 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a2 + 8);
      v29 = *(a2 + 16);
      *buf = 134349312;
      *v128 = v28;
      *&v128[8] = 2050;
      *v129 = v29;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,MapsRoutingActive,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    v11 = sub_10000A100(121, 2);
    if (!v11)
    {
      goto LABEL_8;
    }

    sub_101A7B5F4(buf);
    v93 = *(a2 + 8);
    v94 = *(a2 + 16);
    v120 = 134349312;
    *v121 = v93;
    *&v121[8] = 2050;
    *v122 = v94;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,MapsRoutingActive,cfat,%{public}.3f,mct,%{public}.3f", &v120, 22);
    v86 = v95;
    v11 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v95);
    if (v86 == buf)
    {
      goto LABEL_8;
    }

LABEL_101:
    free(v86);
LABEL_8:
    v13 = sub_10000B1F8(v11, v12);
    *buf = 1;
    v14 = sub_10001A6B0(v13, buf);
LABEL_9:
    *(a1 + 184) = v14;
    return 1;
  }

  if (sub_100125258(a1 + 2424, v19, 6.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v30 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a2 + 8);
      v32 = *(a2 + 16);
      *buf = 134349312;
      *v128 = v31;
      *&v128[8] = 2050;
      *v129 = v32;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,CM driving,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    v33 = sub_10000A100(121, 2);
    if (!v33)
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    v97 = *(a2 + 8);
    v98 = *(a2 + 16);
    v120 = 134349312;
    *v121 = v97;
    *&v121[8] = 2050;
    *v122 = v98;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,CM driving,cfat,%{public}.3f,mct,%{public}.3f", &v120, 22);
    v100 = v99;
    v33 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v99);
    if (v100 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_120;
  }

  if (sub_10020C700(a1 + 2424) || sub_1001254F8(a1 + 2424))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v35 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a2 + 8);
      v37 = *(a2 + 16);
      *buf = 134349312;
      *v128 = v36;
      *&v128[8] = 2050;
      *v129 = v37;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,Apple fitness,cfat,%{public}.3f,mct,%{public}.3f", buf, 0x16u);
    }

    v33 = sub_10000A100(121, 2);
    if (!v33)
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    v101 = *(a2 + 8);
    v102 = *(a2 + 16);
    v120 = 134349312;
    *v121 = v101;
    *&v121[8] = 2050;
    *v122 = v102;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,Apple fitness,cfat,%{public}.3f,mct,%{public}.3f", &v120, 22);
    v100 = v103;
    v33 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v103);
    if (v100 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_120;
  }

  if ((sub_100125608(a1 + 2424, v19, 6.0) || sub_1001255A0(a1 + 2424, v19, 6.0)) && sub_100D6B860(a1 + 2680, v38, 6.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v39 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v41 = *(a2 + 8);
      v42 = *(a2 + 16);
      v43 = sub_100D6B860(a1 + 2680, v40, 6.0);
      *buf = 134349568;
      *v128 = v41;
      *&v128[8] = 2050;
      *v129 = v42;
      *&v129[8] = 1026;
      *v130 = v43;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,highConfidenceOutdoorWalkingOrRunningOrCycling,cfat,%{public}.3f,mct,%{public}.3f,CLOutdoor,%{public}d", buf, 0x1Cu);
    }

    v33 = sub_10000A100(121, 2);
    if (!v33)
    {
      goto LABEL_105;
    }

    sub_101A7B5F4(buf);
    v104 = qword_1025D4778;
    v106 = *(a2 + 8);
    v105 = *(a2 + 16);
    v120 = 134349568;
    *v121 = v106;
    *&v121[8] = 2050;
    *v122 = v105;
    *&v122[8] = 1026;
    *v123 = sub_100D6B860(a1 + 2680, v107, 6.0);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v104, 2, "shouldBypassFusion,highConfidenceOutdoorWalkingOrRunningOrCycling,cfat,%{public}.3f,mct,%{public}.3f,CLOutdoor,%{public}d", &v120, 28);
    v100 = v108;
    v33 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v108);
    if (v100 == buf)
    {
      goto LABEL_105;
    }

    goto LABEL_120;
  }

  v44 = *(a1 + 2168);
  v45 = *(v44 + 560);
  if (v45 <= 0.0 || (v46 = *(v44 + 568), v47 = *(a2 + 16), v47 >= v45) && v47 - v45 > 6.0)
  {
    v46 = 0;
  }

  v48 = sub_1001253BC(a1 + 2424, v19, 6.0);
  v50 = v48 || (v46 - 1) < 2;
  if (((*(a2 + 122) & 1) != 0 || !v50 && (*(a1 + 2800) & 1) == 0) && *(a1 + 2360) > 20.0)
  {
    v51 = *(a1 + 2376);
    if (v51 >= 21 && *(a1 + 2372) <= 19 && *(a1 + 2380) / v51 > 0.5)
    {
      v52 = *(a1 + 2352);
      if (v52 <= 0.0 || *(a2 + 16) - v52 <= 5.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v53 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v55 = *(a2 + 8);
          v54 = *(a2 + 16);
          v56 = *(a1 + 2360);
          v57 = *(a1 + 2376);
          if (v57)
          {
            v58 = *(a1 + 2380) / v57;
          }

          else
          {
            v58 = 0.0;
          }

          v96 = *(a1 + 2372);
          *buf = 134350080;
          *v128 = v55;
          *&v128[8] = 2050;
          *v129 = v54;
          *&v129[8] = 2050;
          *v130 = v56;
          *&v130[8] = 2050;
          v131 = v58;
          v132 = 1026;
          v133 = v96;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,GNSS conditions detected,cfat,%{public}.3f,mct,%{public}.3f,GNSSSessionDuration_s,%{public}.1f,ratioOfEpochsWithGoodTrakcing,%{public}.2f,consecNumEpochsPoorTracking,%{public}d", buf, 0x30u);
        }

        v33 = sub_10000A100(121, 2);
        if (!v33)
        {
          goto LABEL_105;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v114 = *(a2 + 8);
        v113 = *(a2 + 16);
        v115 = *(a1 + 2360);
        v116 = *(a1 + 2376);
        v117 = v116 ? *(a1 + 2380) / v116 : 0.0;
        v118 = *(a1 + 2372);
        v120 = 134350080;
        *v121 = v114;
        *&v121[8] = 2050;
        *v122 = v113;
        *&v122[8] = 2050;
        *v123 = v115;
        *&v123[8] = 2050;
        v124 = v117;
        v125 = 1026;
        v126 = v118;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,GNSS conditions detected,cfat,%{public}.3f,mct,%{public}.3f,GNSSSessionDuration_s,%{public}.1f,ratioOfEpochsWithGoodTrakcing,%{public}.2f,consecNumEpochsPoorTracking,%{public}d", &v120, 48);
        v100 = v119;
        v33 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v119);
        if (v100 == buf)
        {
          goto LABEL_105;
        }

LABEL_120:
        free(v100);
LABEL_105:
        v14 = sub_10002F470(v33, v34);
        goto LABEL_9;
      }
    }
  }

  if (*(a1 + 175) != 1)
  {
    return 0;
  }

  v59 = sub_10002F470(v48, v49);
  v60 = *(a1 + 192);
  v61 = v59 - *(a1 + 184);
  if (v60 <= 0.0)
  {
    v60 = 5.0;
    if (!v50)
    {
      v60 = 40.0;
    }

    *(a1 + 192) = v60;
  }

  if (v61 <= v60)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v62 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(a2 + 8);
      v64 = *(a2 + 16);
      v65 = *(a1 + 184);
      v66 = *(a1 + 192);
      *buf = 134349824;
      *v128 = v63;
      *&v128[8] = 2050;
      *v129 = v64;
      *&v129[8] = 2050;
      *v130 = v65;
      *&v130[8] = 2050;
      v131 = v66;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,passthroughHysteresis,cfat,%{public}.3f,mct,%{public}.3f,last_passthrough_mct,%{public}.3f,stickinessTime_s,%{public}.1f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v67 = *(a2 + 8);
      v68 = *(a2 + 16);
      v69 = *(a1 + 184);
      v70 = *(a1 + 192);
      v120 = 134349824;
      *v121 = v67;
      *&v121[8] = 2050;
      *v122 = v68;
      *&v122[8] = 2050;
      *v123 = v69;
      *&v123[8] = 2050;
      v124 = v70;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,passthroughHysteresis,cfat,%{public}.3f,mct,%{public}.3f,last_passthrough_mct,%{public}.3f,stickinessTime_s,%{public}.1f", &v120, 42);
      v72 = v71;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v71);
      if (v72 != buf)
      {
        free(v72);
      }
    }

    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v73 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v74 = *(a1 + 184);
    v75 = *(a1 + 192);
    *buf = 134349568;
    *v128 = v74;
    *&v128[8] = 2050;
    *v129 = v61;
    *&v129[8] = 2050;
    *v130 = v75;
    _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "shouldBypassFusion,passthroughHysteresis expired,switching off passthrough mode,last_passthrough_mct,%{public}.3f,elapsed,%{public}.1f,stickinessTime_s,%{public}.1f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v109 = *(a1 + 184);
    v110 = *(a1 + 192);
    v120 = 134349568;
    *v121 = v109;
    *&v121[8] = 2050;
    *v122 = v61;
    *&v122[8] = 2050;
    *v123 = v110;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "shouldBypassFusion,passthroughHysteresis expired,switching off passthrough mode,last_passthrough_mct,%{public}.3f,elapsed,%{public}.1f,stickinessTime_s,%{public}.1f", &v120, 32);
    v112 = v111;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::shouldBypassLCFusion(const LCFusionProviderLocation &)", "%s\n", v111);
    if (v112 != buf)
    {
      free(v112);
    }
  }

  result = 0;
  *(a1 + 175) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 184) = _Q0;
  return result;
}

void sub_10020A6AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10020A6B8(uint64_t a1, uint64_t *a2)
{
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_10020D068(a1 + 3000, *(a1 + 2448));
  sub_100217474(a1 + 3000, *(*(a1 + 2168) + 568));
  sub_10020D1C4(a1, &v23, &v20, &v17);
  sub_10020D6E0(a1 + 3000, v23);
  sub_10020D5B0(a1 + 3000, &v17);
  sub_10021BF2C(a1 + 3000, &v20);
  v4 = *(a1 + 2168);
  v5 = v4[148];
  v6 = v4[149];
  v7 = v4[150];
  v8 = v4[151];
  *(v4 + 74) = 0;
  *(v4 + 75) = 0;
  sub_100217538(a1 + 3000, v7, v8, v5, v6);
  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 124);
    if (v10 == 4)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      __p = 0;
      v12 = 0;
      v13 = 0;
      sub_100218AE4(a1, v9, &v14, &__p);
      sub_100219110(a1 + 3000, &v14);
      sub_1002191D8(a1 + 3000, &__p);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v14)
      {
        v15 = v14;
        operator delete(v14);
      }
    }

    else if (v10 == 1)
    {
      sub_1002B4850(a1, v9, &v20, &v17);
      sub_1002B4B74(a1 + 3000, &v20, *(*a2 + 40));
      sub_1002B4C54(a1 + 3000, &v17, *(*a2 + 40));
      if (*(a1 + 1284) != 1)
      {
        sub_1008F4670(a1 + 3000);
      }
    }
  }

  sub_10020D75C(a1 + 3000);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_10020A85C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5)
{
  v5 = a4.n128_u64[0];
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v9 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a2 + 96);
    v11 = *(a2 + 28) > -500.0;
    if (*(a2 + 36) <= 0.0)
    {
      v11 = 0;
    }

    v12 = (*(a3 + 312) - 1) < 2;
    v16[0] = 67240704;
    v16[1] = v10;
    v17 = 1026;
    v18 = v11;
    v19 = 1026;
    v20 = v12;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WifiZMetrics, process new location fix, type,%{public}d, isGoodZAxis,%{public}d, isUndulationValid,%{public}d", v16, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10174777C();
  }

  v15 = *(a2 + 96);
  if (v15 == 11 || v15 == 4)
  {
    v13.n128_u64[0] = *(a2 + 28);
    if (v13.n128_f64[0] > -500.0 && *(a2 + 36) > 0.0 && (*(a3 + 312) - 1) <= 1)
    {
      v14.n128_f64[0] = *(a3 + 316);
      *(a1 + 168) = v13.n128_f64[0] + v14.n128_f64[0];
      *(a1 + 176) = 1;
      *(a1 + 184) = v5;
      *(a1 + 192) = 1;
      v13.n128_u64[0] = *(a2 + 36);
      *(a1 + 200) = v13.n128_u64[0];
      *(a1 + 208) = 1;
      sub_1000AFF84(a1, v13, v14);
    }
  }
}

void sub_10020AA14(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 360) = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 368) = _Q0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 432) = _Q0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  memset_pattern16((a1 + 168), &unk_101C89510, 0x80uLL);
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_101C75BF0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  if (*(a1 + 456) == 1)
  {
    *(a1 + 456) = 0;
  }

  if (*(a1 + 472) == 1)
  {
    *(a1 + 472) = 0;
  }

  *(a1 + 552) = 0xBFF0000000000000;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0;
  v7 = *(a1 + 576);
  *(a1 + 576) = 0;
  if (v7)
  {
    sub_100008080(v7);
  }

  *(a1 + 584) = 0xBFF0000000000000;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
}

void sub_10020AB0C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      sub_1008572E0((v2 + 1));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

uint64_t sub_10020AB5C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[349];
  if (v4 && v4[1] == 1 && *v4 == 1)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#selection,CarPlay mode returning max likelihood hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v163 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,CarPlay mode returning max likelihood hypothesis", v163, 2);
      v132 = v131;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v131);
      if (v132 != buf)
      {
        free(v132);
      }
    }

    return sub_100D704FC(a1, a2);
  }

  v7 = a1[31];
  if (!v7)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#Error,#selection,No valid hypothesis available for selection,passthrough the location", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *v163 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,#selection,No valid hypothesis available for selection,passthrough the location", v163, 2);
      v130 = v129;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v129);
      if (v130 != buf)
      {
        free(v130);
      }
    }

    v12 = *(a2 + 8);
    v13 = *(a2 + 24);
    v14 = *(a2 + 40);
    *(a1 + 76) = *(a2 + 56);
    *(a1 + 75) = v14;
    *(a1 + 74) = v13;
    *(a1 + 73) = v12;
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    v17 = *(a2 + 104);
    a1[160] = *(a2 + 120);
    *(a1 + 79) = v17;
    *(a1 + 78) = v16;
    *(a1 + 77) = v15;
    return 1;
  }

  v8 = 1;
  v9 = a1[31];
  do
  {
    v9 = *v9;
    --v8;
  }

  while (v9);
  if (!v8)
  {
    v18 = *(v7 + 214);
    if (v18 && (v19 = v7[8]) != 0 && (*(*(v7[4] + 8 * ((v19 + v7[7] - 1) / 0x1AuLL)) + 152 * ((v19 + v7[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
    {
      if (v18 == 4)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v20 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#selection,only available hypothesis is a gross outlier, rejecting", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          *v163 = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,only available hypothesis is a gross outlier, rejecting", v163, 2);
          v150 = v149;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v149);
          if (v150 != buf)
          {
            free(v150);
          }
        }

        result = 0;
        v21 = 5;
        goto LABEL_192;
      }

      *v163 = off_1024DE5F8;
      __asm { FMOV            V0.2D, #-1.0 }

      *&v163[8] = _Q0;
      *&v164[16] = xmmword_101C75BF0;
      *&v164[32] = xmmword_101C75BF0;
      *v165 = _Q0;
      *&v165[16] = _Q0;
      *v166 = 0xBFF0000000000000;
      *&v166[12] = 0;
      *&v166[20] = 0;
      if (sub_10002980C((v7 + 25), (a2 + 16)) && (sub_10002A8E4((v7 + 25), v118, v163) & 1) != 0)
      {
        *&v166[20] = sub_1000291EC((v7 + 1), (a2 + 16));
        *(v7 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
        v80 = v7[8] + v7[7] - 1;
        v81 = v7[4];
        v82 = (v80 * 0x4EC4EC4EC4EC4EC5uLL) >> 64;
        goto LABEL_183;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v121 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v121, OS_LOG_TYPE_ERROR, "#Error,#selection,Failed to retrieve estimate from the only available hypothesis", buf, 2u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_191;
      }

      sub_101A7B5F4(buf);
      v162[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,#selection,Failed to retrieve estimate from the only available hypothesis", v162, 2);
      v24 = v151;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v151);
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_191;
      }

      sub_101A7B5F4(buf);
      *v163 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,only available hypothesis is invalid fused hypothesis, rejecting", v163, 2);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v23);
    }

    if (v24 != buf)
    {
      free(v24);
    }

    goto LABEL_191;
  }

  v158 = *(a1 + 2800);
  if ((v158 & 1) == 0)
  {
    v10 = *(*a1 + 24);
    v158 = v10 > 0.0 && v10 + 6.0 > *(a2 + 16);
  }

  v156 = *a1;
  v25 = 0;
  v26 = 0;
  v160 = 0;
  do
  {
    v27 = v7[7] + v7[8];
    v28 = v7[4];
    v29 = v7[5];
    v30 = (v28 + 8 * (v27 / 0x1A));
    if (v29 == v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = *v30 + 152 * (v27 % 0x1A);
    }

    while (1)
    {
      if (v29 == v28)
      {
        v32 = 0;
      }

      else
      {
        v32 = *(v28 + 8 * (v7[7] / 0x1AuLL)) + 152 * (v7[7] % 0x1AuLL);
      }

      if (v32 == v31)
      {
        goto LABEL_67;
      }

      if (v31 == *v30)
      {
        v34 = *(v30 - 1);
        if ((*(v34 + 3948) & 1) == 0)
        {
          goto LABEL_67;
        }

        v33 = v34 + 3952;
      }

      else
      {
        v33 = v31;
        if ((*(v31 - 4) & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (sub_10002F2EC(v33 - 136, (a2 + 16)) > 31.0)
      {
LABEL_67:
        v38 = (v7[107] & 0xFFFFFFFB) != 0;
        goto LABEL_68;
      }

      if (v31 == *v30)
      {
        break;
      }

      v35 = v31;
      if (*(v31 - 16))
      {
        goto LABEL_62;
      }

LABEL_66:
      v31 -= 152;
      v28 = v7[4];
      v29 = v7[5];
    }

    v36 = *(v30 - 1);
    if ((*(v36 + 3936) & 1) == 0)
    {
      goto LABEL_65;
    }

    v35 = v36 + 3952;
LABEL_62:
    if (*(v35 - 12) != 4 || (v7[107] & 0xFFFFFFFB) == 0)
    {
      if (v31 != *v30)
      {
        goto LABEL_66;
      }

LABEL_65:
      v37 = *--v30;
      v31 = v37 + 3952;
      goto LABEL_66;
    }

    ++v25;
    v38 = 1;
    v160 = v7;
LABEL_68:
    v26 += v38;
    v7 = *v7;
  }

  while (v7);
  if (v25 < 1)
  {
    v157 = 0;
    v50 = 0;
    v40 = 0;
    v47 = -1.0;
    v46 = 0.0;
    v48 = 0.0;
    v54 = v158;
    goto LABEL_101;
  }

  v39 = sub_1001253BC((a1 + 303), *(a2 + 16), 6.0);
  v40 = v39;
  v41 = a1[271];
  v42 = *(v41 + 560);
  if (v42 > 0.0)
  {
    v43 = *(a2 + 16);
    if (v43 < v42 || v43 - v42 <= 6.0)
    {
      v40 = (*(v41 + 568) - 1) < 2 || v39;
    }
  }

  v45 = a1[274];
  if (v45)
  {
    sub_100251B28(v45, buf);
    v47 = *buf;
    v46 = *&buf[8];
    v48 = v168;
    v49 = *buf > 0.0;
    if (v168 <= 0.0)
    {
      v49 = 0;
    }

    v50 = *&buf[8] <= 25.0 && v49;
    v157 = *v169;
    v51 = *(a2 + 16);
    if ((*buf < 0.0 || *buf <= v51 && v51 - *buf > 6.0) && !sub_100125258((a1 + 303), v51, 6.0) && !sub_1001254F8((a1 + 303)) && !sub_1001253BC((a1 + 303), *(a2 + 16), 6.0))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v52 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v53 = *(a2 + 16);
        *buf = 134350080;
        *&buf[4] = v53;
        *&buf[12] = 2050;
        *&buf[14] = v47;
        *&buf[22] = 2050;
        v168 = v46;
        *v169 = 2050;
        *&v169[2] = v48;
        *&v169[10] = 2050;
        *&v169[12] = v157;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "#selection,IO data usage timed out,location_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v152 = *(a2 + 16);
        *v163 = 134350080;
        *&v163[4] = v152;
        *&v163[12] = 2050;
        *&v163[14] = v47;
        *&v163[22] = 2050;
        *v164 = v46;
        *&v164[8] = 2050;
        *&v164[10] = v48;
        *&v164[18] = 2050;
        *&v164[20] = v157;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,IO data usage timed out,location_mct,%{public}.3f,IO_mct,%{public}.3f,IO_DistanceMoved_m,%{public}.1f,DistanceMovedInterval_s,%{public}.2f,IO_num_samples,%{public}zu", v163, 52);
        v154 = v153;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v153);
        if (v154 != buf)
        {
          free(v154);
        }
      }

      v50 = 0;
    }
  }

  else
  {
    v157 = 0;
    v50 = 0;
    v47 = -1.0;
    v46 = 0.0;
    v48 = 0.0;
  }

  if (v158)
  {
    v54 = 1;
    LOBYTE(v158) = 1;
LABEL_101:
    v159 = v54;
  }

  else
  {
    v159 = (v42 > 0.0) & (v40 | v50);
    LOBYTE(v158) = 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v55 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(a2 + 16);
    v57 = *(a1 + 2778);
    v58 = *(a1 + 2779);
    v59 = *(a1 + 2800);
    v60 = *(*a1 + 24);
    *buf = 134351360;
    *&buf[4] = v56;
    *&buf[12] = 1026;
    *&buf[14] = v57;
    *&buf[18] = 1026;
    *&buf[20] = v58;
    LOWORD(v168) = 1026;
    *(&v168 + 2) = v59;
    HIWORD(v168) = 1026;
    *v169 = v159;
    *&v169[4] = 1026;
    *&v169[6] = v25;
    *&v169[10] = 1026;
    *&v169[12] = v26;
    *&v169[16] = 2050;
    *&v169[18] = v60;
    *&v169[26] = 1026;
    *&v169[28] = v40 & 1;
    LOWORD(v170) = 1026;
    *(&v170 + 2) = v50;
    _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "#selection,newLocation_mct,%{public}.3f,isInsideVisit,%{public}d,isLikelyOutOfAVisit,%{public}d,isWiFiAssociated,%{public}d,%{public}d,numHypoWithAPWiFi,%{public}d,NumNonOutlierHypo,%{public}d,LastWifiAssociatedTime,%{public}.3f,static,%{public}d,radialDistanceMovedWithinThreshold,%{public}d", buf, 0x46u);
  }

  v61 = v40;
  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v122 = *(a2 + 16);
    v123 = *(a1 + 2778);
    v124 = *(a1 + 2779);
    v125 = *(a1 + 2800);
    v126 = *(*a1 + 24);
    *v163 = 134351360;
    *&v163[4] = v122;
    *&v163[12] = 1026;
    *&v163[14] = v123;
    *&v163[18] = 1026;
    *&v163[20] = v124;
    *v164 = 1026;
    *&v164[2] = v125;
    *&v164[6] = 1026;
    *&v164[8] = v159;
    *&v164[12] = 1026;
    *&v164[14] = v25;
    *&v164[18] = 1026;
    *&v164[20] = v26;
    *&v164[24] = 2050;
    *&v164[26] = v126;
    *&v164[34] = 1026;
    *&v164[36] = v40 & 1;
    *&v164[40] = 1026;
    *&v164[42] = v50;
    LODWORD(v155) = 70;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#selection,newLocation_mct,%{public}.3f,isInsideVisit,%{public}d,isLikelyOutOfAVisit,%{public}d,isWiFiAssociated,%{public}d,%{public}d,numHypoWithAPWiFi,%{public}d,NumNonOutlierHypo,%{public}d,LastWifiAssociatedTime,%{public}.3f,static,%{public}d,radialDistanceMovedWithinThreshold,%{public}d", v163, v155);
    v128 = v127;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v127);
    if (v128 != buf)
    {
      free(v128);
    }
  }

  if (((v25 == 1) & v159) != 1 || !v160 || (v160[107] & 0xFFFFFFFB) == 0)
  {
    if (((v26 > 1) & v158) != 1)
    {
      goto LABEL_144;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v83 = qword_1025D4778;
    v84 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
    if (v84)
    {
      v86 = sub_10000B1F8(v84, v85);
      *buf = 1;
      v87 = sub_10001A6B0(v86, buf);
      *buf = 134349568;
      *&buf[4] = v87;
      *&buf[12] = 1026;
      *&buf[14] = v159;
      *&buf[18] = 1026;
      *&buf[20] = v25;
      _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "#selection,now_mct,%{public}.3f,APWiFiFix override skipped in favor of hypotheses mixture,Associated,%{public}d,NumHypoWithAPWiFi,%{public}d", buf, 0x18u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_144;
    }

    sub_101A7B5F4(buf);
    v88 = qword_1025D4778;
    v91 = sub_10002F470(v89, v90);
    *v163 = 134349568;
    *&v163[4] = v91;
    *&v163[12] = 1026;
    *&v163[14] = v159;
    *&v163[18] = 1026;
    *&v163[20] = v25;
    LODWORD(v155) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v88, 2, "#selection,now_mct,%{public}.3f,APWiFiFix override skipped in favor of hypotheses mixture,Associated,%{public}d,NumHypoWithAPWiFi,%{public}d", v163, v155);
    v93 = v92;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v92);
LABEL_206:
    if (v93 != buf)
    {
      free(v93);
    }

    goto LABEL_144;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v63 = qword_1025D4778;
  v64 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG);
  if (v64)
  {
    v66 = *(v160 + 212);
    v67 = sub_10002F470(v64, v65);
    v70 = sub_10002F470(v68, v69);
    v71 = *(v156 + 24);
    v72 = v70 - v71;
    v73 = v47 > 0.0;
    *buf = 67242752;
    if (v48 <= 0.0)
    {
      v73 = 0;
    }

    *&buf[4] = v66;
    *&buf[8] = 2050;
    *&buf[10] = v67;
    *&buf[18] = 1026;
    *&buf[20] = v61 & 1;
    LOWORD(v168) = 1026;
    *(&v168 + 2) = v50;
    HIWORD(v168) = 1026;
    *v169 = 1;
    *&v169[4] = 2050;
    *&v169[6] = v72;
    *&v169[14] = 1026;
    *&v169[16] = v73;
    *&v169[20] = 2050;
    *&v169[22] = v47 - v71;
    *&v169[30] = 2050;
    v170 = v46;
    v171 = 2050;
    v172 = v48;
    v173 = 2050;
    v174 = v157;
    _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "#selection,APWiFi,hID,%{public}d,now_mct,%{public}.3f,Static,%{public}d,IODistanceBelowThreshold,%{public}d,isWiFiAssociated,%{public}d,how_long,%{public}.3f,isIODataValid,%{public}d,IOAgeWrtTimeAPWiFiAssociated_s,%{public}.2f,IODistanceMoved_m,%{public}.1f,IODistanceMovedInterval_s,%{public}.1f,IO_num_samples,%{public}zu", buf, 0x5Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v135 = qword_1025D4778;
    v136 = *(v160 + 212);
    v139 = sub_10002F470(v137, v138);
    v142 = sub_10002F470(v140, v141);
    v143 = *(v156 + 24);
    v144 = v142 - v143;
    v145 = v47 > 0.0;
    *v163 = 67242752;
    if (v48 <= 0.0)
    {
      v145 = 0;
    }

    *&v163[4] = v136;
    *&v163[8] = 2050;
    *&v163[10] = v139;
    *&v163[18] = 1026;
    *&v163[20] = v61 & 1;
    *v164 = 1026;
    *&v164[2] = v50;
    *&v164[6] = 1026;
    *&v164[8] = 1;
    *&v164[12] = 2050;
    *&v164[14] = v144;
    *&v164[22] = 1026;
    *&v164[24] = v145;
    *&v164[28] = 2050;
    *&v164[30] = v47 - v143;
    *&v164[38] = 2050;
    *&v164[40] = v46;
    *v165 = 2050;
    *&v165[2] = v48;
    *&v165[10] = 2050;
    *&v165[12] = v157;
    LODWORD(v155) = 92;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v135, 2, "#selection,APWiFi,hID,%{public}d,now_mct,%{public}.3f,Static,%{public}d,IODistanceBelowThreshold,%{public}d,isWiFiAssociated,%{public}d,how_long,%{public}.3f,isIODataValid,%{public}d,IOAgeWrtTimeAPWiFiAssociated_s,%{public}.2f,IODistanceMoved_m,%{public}.1f,IODistanceMovedInterval_s,%{public}.1f,IO_num_samples,%{public}zu", v163, v155);
    v147 = v146;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v146);
    if (v147 != buf)
    {
      free(v147);
    }
  }

  v7 = v160;
  if (((v61 | v50) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v94 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v95 = *(a2 + 16);
      v96 = v47 > 0.0;
      *buf = 134350080;
      if (v48 <= 0.0)
      {
        v96 = 0;
      }

      *&buf[4] = v95;
      *&buf[12] = 1026;
      *&buf[14] = 0;
      *&buf[18] = 1026;
      *&buf[20] = 0;
      LOWORD(v168) = 1026;
      *(&v168 + 2) = v96;
      HIWORD(v168) = 2050;
      *v169 = v46;
      _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEBUG, "#selection,mct,%{public}.3f,Selection based on APWiFiFix hypothesis is skipped,Static,%{public}d,LargeDisplacement,%{public}d,IO_valid,%{public}d,IO_Displacement_m,%{public}.3f", buf, 0x28u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_144;
    }

    sub_101A7B5F4(buf);
    v97 = *(a2 + 16);
    v98 = v47 > 0.0;
    if (v48 <= 0.0)
    {
      v98 = 0;
    }

    *v163 = 134350080;
    *&v163[4] = v97;
    *&v163[12] = 1026;
    *&v163[14] = 0;
    *&v163[18] = 1026;
    *&v163[20] = 0;
    *v164 = 1026;
    *&v164[2] = v98;
    *&v164[6] = 2050;
    *&v164[8] = v46;
    LODWORD(v155) = 40;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,mct,%{public}.3f,Selection based on APWiFiFix hypothesis is skipped,Static,%{public}d,LargeDisplacement,%{public}d,IO_valid,%{public}d,IO_Displacement_m,%{public}.3f", v163, v155);
    v93 = v99;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v99);
    goto LABEL_206;
  }

  *v163 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v163[8] = _Q0;
  *&v164[16] = xmmword_101C75BF0;
  *&v164[32] = xmmword_101C75BF0;
  *v165 = _Q0;
  *&v165[16] = _Q0;
  *v166 = 0xBFF0000000000000;
  *&v166[12] = 0;
  *&v166[20] = 0;
  *&v166[20] = sub_1000291EC((v160 + 1), (a2 + 16));
  if (sub_10002980C((v160 + 25), (a2 + 16)) && sub_10002A8E4((v160 + 25), v79, v163))
  {
    *(v160 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
    v80 = v160[8] + v160[7] - 1;
    v81 = v160[4];
    v82 = (v80 * 0x4EC4EC4EC4EC4EC5uLL) >> 64;
LABEL_183:
    sub_1012E8F84(v163, *(v81 + 8 * (v82 >> 3)) + 152 * (v80 - 26 * (v82 >> 3)) + 16);
    sub_1002182BC((a1 + 32), (v7 + 1));
    *(a1 + 77) = *v165;
    *(a1 + 78) = *&v165[16];
    *(a1 + 79) = *v166;
    a1[160] = *&v166[16];
    *(a1 + 73) = *&v163[8];
    *(a1 + 74) = *v164;
    *(a1 + 75) = *&v164[16];
    v119 = *&v164[32];
    goto LABEL_185;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v100 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "#selection,Failed to retrieve estimate from APWiFiFix hypothesis", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v162[0] = 0;
    LODWORD(v155) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Failed to retrieve estimate from APWiFiFix hypothesis", v162, v155);
    v93 = v148;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v148);
    goto LABEL_206;
  }

LABEL_144:
  if (!v26)
  {
    v114 = -1.0;
    if (*(a1 + 276) && a1[39])
    {
      v62.n128_u64[0] = *(a2 + 16);
      v114 = sub_100215A40((a1 + 32), v62);
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v115 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *&buf[4] = v114;
      _os_log_impl(dword_100000000, v115, OS_LOG_TYPE_DEFAULT, "#selection,all hypotheses are marked as outliers,age of previously selected hypothesis,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      *v163 = 134349056;
      *&v163[4] = v114;
      LODWORD(v155) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#selection,all hypotheses are marked as outliers,age of previously selected hypothesis,%{public}.3f", v163, v155);
      v134 = v133;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v133);
      if (v134 != buf)
      {
        free(v134);
      }
    }

    if (v114 > 900.0)
    {
      for (i = a1[31]; i; i = *i)
      {
        *(i + 214) = 1;
      }

LABEL_178:
      if (sub_10024A318(a1, a2))
      {
        return 1;
      }
    }

LABEL_191:
    result = 0;
    v21 = 9;
LABEL_192:
    *(a1 + 386) = v21;
    return result;
  }

  if (v26 != 1)
  {
    goto LABEL_178;
  }

  v101 = a1[31];
  if (!v101)
  {
    goto LABEL_178;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v161 = _Q0;
  while ((v101[107] & 0xFFFFFFFB) == 0)
  {
LABEL_161:
    v101 = *v101;
    if (!v101)
    {
      goto LABEL_178;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v103 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v104 = *(v101 + 212);
    v105 = *(a2 + 16);
    *buf = 67240704;
    *&buf[4] = v104;
    *&buf[8] = 2050;
    *&buf[10] = v105;
    *&buf[18] = 1026;
    *&buf[20] = v159;
    _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "#selection,yield the only non-outlier hypothesis,hID,%{public}d,location_mct,%{public}.3f,isWiFiAssociated,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7B5F4(buf);
    v108 = *(v101 + 212);
    v109 = *(a2 + 16);
    *v163 = 67240704;
    *&v163[4] = v108;
    *&v163[8] = 2050;
    *&v163[10] = v109;
    *&v163[18] = 1026;
    *&v163[20] = v159;
    LODWORD(v155) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,yield the only non-outlier hypothesis,hID,%{public}d,location_mct,%{public}.3f,isWiFiAssociated,%{public}d", v163, v155);
    v111 = v110;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v110);
    if (v111 != buf)
    {
      free(v111);
    }
  }

  *v163 = off_1024DE5F8;
  *&v163[8] = v161;
  *&v164[16] = xmmword_101C75BF0;
  *&v164[32] = xmmword_101C75BF0;
  *v165 = v161;
  *&v165[16] = v161;
  *v166 = 0xBFF0000000000000;
  *&v166[12] = 0;
  *&v166[20] = 0;
  if (!sub_10002980C((v101 + 25), (a2 + 16)) || !sub_10002A8E4((v101 + 25), v106, v163))
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v107 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEBUG, "#selection,Failed to retrieve estimate from the single non-outlier hypothesis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v162[0] = 0;
      LODWORD(v155) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Failed to retrieve estimate from the single non-outlier hypothesis", v162, v155);
      v113 = v112;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesisSelection(const LCFusionProviderLocation &)", "%s\n", v112);
      if (v113 != buf)
      {
        free(v113);
      }
    }

    goto LABEL_161;
  }

  *&v166[20] = sub_1000291EC((v101 + 1), (a2 + 16));
  *(v101 + 1) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v120 = v101[8] + v101[7] - 1;
  sub_1012E8F84(v163, *(v101[4] + 8 * (v120 / 0x1A)) + 152 * (v120 % 0x1A) + 16);
  sub_1002182BC((a1 + 32), (v101 + 1));
  *(a1 + 77) = *v165;
  *(a1 + 78) = *&v165[16];
  *(a1 + 79) = *v166;
  a1[160] = *&v166[16];
  *(a1 + 73) = *&v163[8];
  *(a1 + 74) = *v164;
  *(a1 + 75) = *&v164[16];
  v119 = *&v164[32];
LABEL_185:
  result = 1;
  *(a1 + 76) = v119;
  return result;
}

void sub_10020C54C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10020C55C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = a3;
  v7 = a1;
  if (a1 == a2)
  {
    v12 = a1;
    goto LABEL_14;
  }

  v10 = *a3;
  while (1)
  {
    v11 = 0x86BCA1AF286BCA1BLL * ((v10 - a4 + 3952) >> 3);
    if ((0x86BCA1AF286BCA1BLL * (a2 - v7)) < v11)
    {
      v11 = 0x86BCA1AF286BCA1BLL * (a2 - v7);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v15 = v6[1];
    ++v6;
    v10 = v15;
    a4 = v15;
  }

  v12 = &v7[19 * v11];
  v13 = 152 * v11;
  do
  {
    result = sub_100216E10(a4, v7);
    v7 += 19;
    a4 += 152;
    v13 -= 152;
  }

  while (v13);
  if (v12 != a2)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (a4 == *v6 + 3952)
  {
    v16 = v6[1];
    ++v6;
    a4 = v16;
  }

LABEL_14:
  *a5 = v12;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

BOOL sub_10020C654(_DWORD *a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  if (!sub_10020C6E4(a1, a2.n128_f64[0], 6.0) && *a1 == 1 || !sub_10020C6E4(a1, v2, 6.0) && !*a1)
  {
    return 1;
  }

  if (sub_10020C6E4(a1, v2, 6.0))
  {
    return 0;
  }

  return *a1 == 3;
}

void sub_10020C740(uint64_t a1, uint64_t a2)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  if (*(a1 + 112) > 0.0)
  {
    v8 = sub_10000B1F8(a1, a2);
    v9 = 1;
    *(a1 + 112) = sub_10001A6B0(v8, &v9);
  }
}

void sub_10020C7B8(BOOL *a1, uint64_t **a2, uint64_t a3)
{
  *a1 = 0;
  if (*(a3 + 848) & 0xFFFFFFFB) != 0 && (v4 = *(a3 + 56)) != 0 && (*(*(*(a3 + 24) + 8 * ((v4 + *(a3 + 48) - 1) / 0x1AuLL)) + 152 * ((v4 + *(a3 + 48) - 1) % 0x1AuLL) + 148))
  {
    v45[0] = 0;
    v45[1] = 0;
    v44 = v45;
    v5 = *a2;
    if (*a2)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      do
      {
        if (v5[107] & 0xFFFFFFFB) != 0 && (v7 = v5[8]) != 0 && (*(*(v5[4] + 8 * ((v7 + v5[7] - 1) / 0x1AuLL)) + 152 * ((v7 + v5[7] - 1) % 0x1AuLL) + 148))
        {
          sub_1002170C4(v5 + 1, buf);
          v8 = p_info;
          v43 = *(v5 + 212);
          *v46 = &v43;
          v9 = sub_100212E9C(&v44, &v43, &unk_101C66300, v46);
          v10 = v9 + 6;
          v11 = v9 + 5;
          sub_1003C93BC((v9 + 5), v9[6]);
          v12 = *&buf[8];
          *(v10 - 1) = *buf;
          *v10 = v12;
          v13 = *&buf[16];
          v10[1] = *&buf[16];
          if (v13)
          {
            v12[2] = v10;
            *buf = &buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            v12 = 0;
          }

          else
          {
            *v11 = v10;
          }

          p_info = v8;
          sub_1003C93BC(buf, v12);
        }

        else
        {
          if (p_info[238] != -1)
          {
            sub_1018B5ED8();
          }

          v14 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,hypothesis,not valid", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018B5F00(buf);
            *v46 = 0;
            LODWORD(v41) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#TZ,crossCheckMultipleLocTech,hypothesis,not valid", v46, v41);
            v16 = v15;
            sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v15);
            if (v16 != buf)
            {
              free(v16);
            }
          }
        }

        v5 = *v5;
      }

      while (v5);
      v18 = v44;
      v19 = a1;
      if (v44 != v45)
      {
        v20 = v44;
        do
        {
          if (*(v20 + 8) != *(a3 + 840))
          {
            v21 = (v20 + 6);
            v22 = v20[6];
            if (!v22)
            {
              goto LABEL_39;
            }

            v23 = (v20 + 6);
            v24 = v20[6];
            do
            {
              if (v24[7] >= 2)
              {
                v23 = v24;
              }

              v24 = *&v24[2 * (v24[7] < 2)];
            }

            while (v24);
            if (v23 == v21 || v23[7] >= 3)
            {
LABEL_39:
              v23 = (v20 + 6);
            }

            if (!v22)
            {
              goto LABEL_47;
            }

            v25 = (v20 + 6);
            do
            {
              if (v22[7] >= 1)
              {
                v25 = v22;
              }

              v22 = *&v22[2 * (v22[7] < 1)];
            }

            while (v22);
            if (v25 == v21 || v25[7] >= 2)
            {
LABEL_47:
              v25 = (v20 + 6);
            }

            if (v23 != v21 || v25 != v21)
            {
              if (p_info[238] != -1)
              {
                sub_1018B5ED8();
                v19 = a1;
              }

              v38 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,not selected has non cell provider,trust,false", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018B5F00(buf);
                *v46 = 0;
                LODWORD(v41) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#TZ,crossCheckMultipleLocTech,not selected has non cell provider,trust,false", v46, v41);
                v40 = v39;
                sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v39);
                if (v40 != buf)
                {
                  free(v40);
                }

                v19 = a1;
              }

              *v19 = 0;
              goto LABEL_77;
            }
          }

          v26 = v20[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v20[2];
              v28 = *v27 == v20;
              v20 = v27;
            }

            while (!v28);
          }

          v20 = v27;
        }

        while (v27 != v45);
        while (*(v18 + 8) != *(a3 + 840))
        {
          v29 = v18[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v18[2];
              v28 = *v30 == v18;
              v18 = v30;
            }

            while (!v28);
          }

          v18 = v30;
          if (v30 == v45)
          {
            goto LABEL_77;
          }
        }

        *a1 = v18[7] > 1;
        if (p_info[238] != -1)
        {
          sub_1018B5ED8();
          v19 = a1;
        }

        v31 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v32 = v18[7];
          v33 = *v19;
          *buf = 134218240;
          *&buf[4] = v32;
          *&buf[12] = 1024;
          *&buf[14] = v33;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,numTechs,%zu,trust,%d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B5F00(buf);
          v34 = v18[7];
          v35 = *a1;
          *v46 = 134218240;
          *&v46[4] = v34;
          v47 = 1024;
          v48 = v35;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#TZ,crossCheckMultipleLocTech,numTechs,%zu,trust,%d", v46, 18);
          v37 = v36;
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionTZTrustFromTechCrossCheck::crossCheckMultipleLocTech(const std::forward_list<LCFusionLocationHypothesis> &, const LCFusionLocationHypothesis &)", "%s\n", v36);
          if (v37 != buf)
          {
            free(v37);
          }
        }
      }
    }

LABEL_77:
    sub_10018F070(&v44, v45[0]);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018B5F44();
    }

    v17 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#TZ,crossCheckMultipleLocTech,selectedHypothesis,not valid", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B5F58();
    }
  }
}

double sub_10020CECC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101BA7B40();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#Error,ProviderLoc,getAge called while MCT not set", buf, 2u);
    }

    v4 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BA7B54(buf);
      v9[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,ProviderLoc,getAge called while MCT not set", v9, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 0, "virtual CFTimeInterval cllcf::LCFusionProviderLocation::getAge() const", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  else
  {
    v3 = sub_10000B1F8(a1, a2);
    *buf = 1;
    return sub_10001A6B0(v3, buf) - *(a1 + 16);
  }

  return v4;
}

void sub_10020D05C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10020D068(uint64_t result, int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = 1;
      if (a2 > 5)
      {
        if (a2 <= 7)
        {
          if (a2 == 6)
          {
            ++*(v4 + 172);
          }

          else
          {
            ++*(v4 + 176);
          }

          return result;
        }

        switch(a2)
        {
          case 8:
            ++*(v4 + 180);
            return result;
          case 9:
            ++*(v4 + 184);
            return result;
          case 10:
            ++*(v4 + 188);
            return result;
        }
      }

      else
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            ++*(v4 + 160);
          }

          else if (a2 == 4)
          {
            ++*(v4 + 164);
          }

          else
          {
            ++*(v4 + 168);
          }

          return result;
        }

        if (!a2)
        {
          ++*(v4 + 152);
          return result;
        }

        if (a2 == 1)
        {
          ++*(v4 + 156);
          return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

void sub_10020D1C4(uint64_t a1, _DWORD *a2, const void **a3, double **a4)
{
  *a2 = 0;
  a3[1] = *a3;
  a4[1] = *a4;
  v4 = *(a1 + 248);
  if (v4)
  {
    v6 = a3;
    v7 = a1;
    __asm { FMOV            V0.2D, #-1.0 }

    v40 = _Q0;
    do
    {
      v52 = v40;
      v53 = xmmword_101C75BF0;
      v54 = xmmword_101C75BF0;
      v55 = v40;
      v56 = v40;
      v51 = off_1024DE5F8;
      v57 = 0xBFF0000000000000;
      v58 = 0;
      v59 = 0;
      if (*(v4 + 214))
      {
        v13 = v4[8];
        if (v13)
        {
          if (*(*(v4[4] + 8 * ((v13 + v4[7] - 1) / 0x1AuLL)) + 152 * ((v13 + v4[7] - 1) % 0x1AuLL) + 148) == 1)
          {
            if (sub_10002A8E4((v4 + 25), *&v40, &v51))
            {
              if (*&v53 > 0.0)
              {
                ++*a2;
                v14 = *v4;
                if (*v4)
                {
                  do
                  {
                    while (1)
                    {
                      v42 = off_1024DE5F8;
                      v43 = v40;
                      v44 = xmmword_101C75BF0;
                      v45 = xmmword_101C75BF0;
                      v46 = v40;
                      v47 = v40;
                      v48 = 0xBFF0000000000000;
                      v49 = 0;
                      v50 = 0;
                      if (*(v14 + 214))
                      {
                        v15 = v14[8];
                        if (v15)
                        {
                          if (*(*(v14[4] + 8 * ((v15 + v14[7] - 1) / 0x1AuLL)) + 152 * ((v15 + v14[7] - 1) % 0x1AuLL) + 148) == 1 && sub_10002A8E4((v14 + 25), *&v40, &v42) && *&v44 > 0.0)
                          {
                            break;
                          }
                        }
                      }

                      v14 = *v14;
                      if (!v14)
                      {
                        goto LABEL_43;
                      }
                    }

                    sub_1002190E4(v7, &v51, &v42);
                    v41 = v16;
                    v18 = a4[1];
                    v17 = a4[2];
                    if (v18 >= v17)
                    {
                      v20 = *a4;
                      v21 = v18 - *a4;
                      v22 = v21 >> 3;
                      v23 = (v21 >> 3) + 1;
                      if (v23 >> 61)
                      {
                        goto LABEL_45;
                      }

                      v24 = v17 - v20;
                      if (v24 >> 2 > v23)
                      {
                        v23 = v24 >> 2;
                      }

                      _CF = v24 >= 0x7FFFFFFFFFFFFFF8;
                      v25 = 0x1FFFFFFFFFFFFFFFLL;
                      if (!_CF)
                      {
                        v25 = v23;
                      }

                      if (v25)
                      {
                        sub_1000B9708(a4, v25);
                      }

                      *(8 * v22) = v16;
                      v19 = (8 * v22 + 8);
                      memcpy(0, v20, v21);
                      v26 = *a4;
                      *a4 = 0;
                      a4[1] = v19;
                      a4[2] = 0;
                      if (v26)
                      {
                        operator delete(v26);
                      }

                      v6 = a3;
                      v7 = a1;
                    }

                    else
                    {
                      *v18 = v16;
                      v19 = v18 + 1;
                    }

                    a4[1] = v19;
                    if (sub_100218DFC(v7, &v51, &v42, &v41))
                    {
                      v28 = v6[1];
                      v27 = v6[2];
                      if (v28 >= v27)
                      {
                        v30 = *v6;
                        v31 = v28 - *v6;
                        v32 = v31 >> 3;
                        v33 = (v31 >> 3) + 1;
                        if (v33 >> 61)
                        {
LABEL_45:
                          sub_10028C64C();
                        }

                        v34 = v27 - v30;
                        if (v34 >> 2 > v33)
                        {
                          v33 = v34 >> 2;
                        }

                        _CF = v34 >= 0x7FFFFFFFFFFFFFF8;
                        v35 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!_CF)
                        {
                          v35 = v33;
                        }

                        if (v35)
                        {
                          sub_1000B9708(v6, v35);
                        }

                        *(8 * v32) = v41;
                        v29 = 8 * v32 + 8;
                        memcpy(0, v30, v31);
                        v36 = *v6;
                        *v6 = 0;
                        v6[1] = v29;
                        v6[2] = 0;
                        if (v36)
                        {
                          operator delete(v36);
                        }

                        v7 = a1;
                      }

                      else
                      {
                        *v28 = v41;
                        v29 = (v28 + 8);
                      }

                      v6[1] = v29;
                    }

                    v14 = *v14;
                  }

                  while (v14);
                }
              }
            }
          }
        }
      }

LABEL_43:
      v4 = *v4;
    }

    while (v4);
  }
}

uint64_t sub_10020D5B0(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = a2[1];
      v6 = *a2;
      if (*a2 != v5)
      {
        *(v4 + 32) = 1;
        v7 = *(v4 + 200);
        v8 = *(v4 + 204);
        v9 = v6;
        v10 = *(v4 + 208);
        v11 = *(v4 + 212);
        do
        {
          v12 = *v9;
          if (*v9 <= 0.0 || v12 > 50.0)
          {
            if (v12 <= 50.0 || v12 > 100.0)
            {
              if (v12 <= 100.0 || v12 > 200.0)
              {
                *(v4 + 212) = ++v11;
              }

              else
              {
                *(v4 + 208) = ++v10;
              }
            }

            else
            {
              *(v4 + 204) = ++v8;
            }
          }

          else
          {
            *(v4 + 200) = ++v7;
          }

          ++v9;
        }

        while (v9 != v5);
        v16 = v6 + 1;
        if (v6 + 1 != v5)
        {
          v17 = *v6;
          v18 = v6 + 1;
          do
          {
            v19 = *v18++;
            v20 = v19;
            if (v17 < v19)
            {
              v17 = v20;
              v6 = v16;
            }

            v16 = v18;
          }

          while (v18 != v5);
        }

        v21 = *v6;
        if (*(v4 + 60) < v21)
        {
          *(v4 + 60) = v21;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10020D6E0(uint64_t result, unsigned int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      *(v4 + 32) = 1;
      if (a2 - 1 >= 4)
      {
        if (a2 <= 4)
        {
          return result;
        }

        v5 = 52;
      }

      else
      {
        v5 = 4 * (a2 - 1) + 36;
      }

      ++*(v4 + v5);
    }
  }

  return result;
}

void sub_10020D75C(uint64_t a1)
{
  v2 = sub_1000081AC();
  v3 = v2;
  if (*(a1 + 24) == 4 && v2 - *(a1 + 32) > 900.0)
  {
    *(a1 + 24) = *(a1 + 28);
    if (qword_1025D4770 != -1)
    {
      sub_10196BBD8();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 28);
      *buf = 67240192;
      v21 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#LCFusionStats,reverting visit exit likely context to,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196BB94(buf);
      v15 = *(a1 + 28);
      v19[0] = 67240192;
      v19[1] = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#LCFusionStats,reverting visit exit likely context to,%{public}d", v19, 8);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionStats::submitMetrics()", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  v6 = *(a1 + 80);
  if (v3 - *(a1 + 72) >= v6)
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 48);
    if (v11 != (a1 + 56))
    {
      do
      {
        sub_1008F2D50(a1, (v11 + 4), v6 < v10, *(v11 + 7));
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != (a1 + 56));
    }

    if (v6 >= v10)
    {
      sub_1008F2CB4(a1);
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_10196BB6C();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#LCFusionStats,submitMetrics,less than threshold time to submit metrics", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196BB94(buf);
      LOWORD(v19[0]) = 0;
      LODWORD(v18) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#LCFusionStats,submitMetrics,less than threshold time to submit metrics", v19, v18);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusionStats::submitMetrics()", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

void sub_10020DA90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10020DA9C(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 3724);
  *a2 = *(a1 + 3708);
  a2[1] = v2;
  v3 = *(a1 + 3740);
  v4 = *(a1 + 3756);
  v5 = *(a1 + 3788);
  a2[4] = *(a1 + 3772);
  a2[5] = v5;
  a2[2] = v3;
  a2[3] = v4;
  v6 = *(a1 + 3804);
  v7 = *(a1 + 3820);
  v8 = *(a1 + 3836);
  *(a2 + 140) = *(a1 + 3848);
  a2[7] = v7;
  a2[8] = v8;
  a2[6] = v6;
  return *(a1 + 3728) > 0.0;
}

uint64_t sub_10020DAE8(uint64_t a1)
{
  v1 = *(a1 + 4276) - 1;
  if (v1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_101CB1724[v1];
  }
}

void sub_10020DB10(uint64_t a1, __int128 *a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 4344);
  if (v4)
  {
    sub_1002134D0(v4, a2, a3, a4);
  }
}

uint64_t sub_10020DB20(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (*(a1 + 128) == 1 && *(a1 + 130) == 1 && ((*(a1 + 152) & 1) != 0 || ((v4 = *(a1 + 11704), a4.n128_f64[0] = vabdd_f64(*(a3 + 32), v4), v4 > 0.0) ? (v5 = a4.n128_f64[0] <= 24.0) : (v5 = 0), v5)))
  {
    return sub_10101107C((a1 + 152), a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020DB70(uint64_t a1, __int128 *a2, uint64_t a3, __n128 a4, __n128 a5)
{
  if (*(a1 + 4296) == 1 && (v5 = *(a1 + 4288)) != 0)
  {
    return sub_10020DB94(v5, a2, a3, a4, a5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020DB94(void *a1, __int128 *a2, uint64_t a3, __n128 a4, __n128 a5)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (!a1[65])
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v40 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,odometer is not available", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_10174709C();
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "BaroAlt,update requested", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101746D0C();
  }

  v11 = a1 + 161;
  v215 = sub_1000081AC();
  v12 = sub_10020F350(a1, v215);
  *(a1 + 504) = v12;
  v14 = *(a2 + 20);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v14 > 0.0 && v14 < 200.0)
  {
    v15 = *a2;
    *(a1 + 152) = a2[1];
    *(a1 + 151) = v15;
    v16 = a2[2];
    v17 = a2[3];
    v18 = a2[4];
    *(a1 + 156) = a2[5];
    *(a1 + 155) = v18;
    *(a1 + 154) = v17;
    *(a1 + 153) = v16;
    v19 = a2[6];
    v20 = a2[7];
    v21 = a2[8];
    *(a1 + 2556) = *(a2 + 140);
    *(a1 + 159) = v21;
    *(a1 + 158) = v20;
    *(a1 + 157) = v19;
    *(a1 + 365) = v215;
    if ((a2[6] & 0xFFFFFFF7) == 1)
    {
      v22 = (a3 + 24);
      if (*(sub_10023F4FC(v12, v13) + 3) != *(a3 + 24))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v23 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v24 = *(a1 + 2492);
          v25 = *v22;
          *buf = 134349312;
          *&buf[4] = v24;
          *&buf[12] = 2050;
          *&buf[14] = v25;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "BaroAlt,fCachedLocation,time override,original cft,%{public}lf,gps cft,%{public}lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101746DE8();
        }

        *(a1 + 2492) = *v22;
      }
    }

    sub_100213A34(a1, a2);
  }

  if (*a1)
  {
    sub_10024596C(*a1, a2, a3, v215);
  }

  sub_1001DF6F0(a1, a2, v215);
  if ((a1[66] & 1) == 0)
  {
    [*(a1[65] + 16) register:*(a1[65] + 8) forNotification:7 registrationInfo:0];
    *(a1 + 528) = 1;
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "BaroAlt, subscribed to kNotificationOdometerUpdateElevationSpectator", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101746EE4();
    }
  }

  if ((a1[447] & 1) == 0)
  {
    sub_101739E10(a1);
  }

  v214 = 0;
  v213 = sub_1001FD090(a1, a2, a3, &v214 + 1, &v214, v215);
  if (*(a1 + 2172))
  {
    goto LABEL_35;
  }

  v27 = *a1;
  if (!*a1)
  {
    goto LABEL_37;
  }

  if (sub_100214550(v27, a3, &v213))
  {
LABEL_35:
    sub_101739F40(a1);
  }

  v27 = *a1;
LABEL_37:
  if (a1[22])
  {
    if (!v27)
    {
      goto LABEL_47;
    }

    v28.n128_f64[0] = sub_100020640(v27, &v215);
    *buf = v28.n128_u64[0];
    v29.n128_u64[0] = *(a3 + 592);
    if (v29.n128_f64[0] >= 0.0 && v29.n128_f64[0] <= 1.0)
    {
      v30 = a1[22];
      *(v30 + 216) = v29.n128_u64[0];
      *(v30 + 224) = 1;
      v31 = a1[22];
      *(v31 + 232) = v28.n128_u64[0];
      *(v31 + 240) = 1;
    }

    sub_10020A85C(a1[22], a2, a3, v28, v29);
    sub_1002175A8(a1[22], buf, a3, v213, v32, v33);
    v27 = *a1;
  }

  if (v27)
  {
    v34 = 368;
    if (*(a1 + 245))
    {
      v34 = 244;
    }

    buf[0] = *(a1 + v34);
    sub_100217810(v27, &v215, (a1 + 199), a2, a3, a1 + 188, a1 + 197, a1 + 189, a1 + 190, &v213, a1 + 155, buf, a1 + 55, a1 + 56, a1 + 157, a1 + 57);
  }

LABEL_47:
  v211 = 0xBFF0000000000000;
  v212 = 0.0;
  v210 = 0xBFF0000000000000;
  if (sub_100217978(a1, &v215, a2, a3, v213, &v211, &v210))
  {
    v35 = *(a1 + 55);
    v36 = v35;
    *(a1 + 340) = v36;
    *(a1 + 341) = 1075838976;
    v37 = 388;
    if (*(a1 + 289))
    {
      v37 = 288;
    }

    if (*(a1 + v37) == 1)
    {
      memset(buf, 0, sizeof(buf));
      if (sub_1016B6D4C(*a1, buf))
      {
        v38 = *&buf[16] * 12.00129;
        v39 = *(a1 + 55) - *&buf[8];
      }

      else
      {
        v39 = 0.0;
        v38 = -1.0;
      }

      *(a1 + 343) = v38;
      *(a1 + 342) = v39;
    }

    else
    {
      v42 = *(a1 + 131);
      v43 = vdupq_n_s64(0x402800A915379FA9uLL);
      v44.f64[1] = v43.f64[1];
      v44.f64[0] = v35;
      v45 = vmulq_f64(v42, v43);
      *&v42.f64[0] = *&vsubq_f64(v44, v42);
      v42.f64[1] = v45.f64[1];
      a1[171] = vcvt_f32_f64(v42);
    }

    v46 = *(a1 + 3);
    v47 = *(a1 + 1);
    v48 = *(a1 + 2) + *(a1 + 4);
    *(a1 + 351) = v48;
    v49 = v46;
    *(a1 + 352) = v49;
    v51 = sub_100021618(v215, v47, 0.0);
    if (v51 > 5.0)
    {
      if (v51 > 864000.0)
      {
        v51 = 864000.0;
      }

      v52 = v51 + *(a1 + 352);
      *(a1 + 352) = v52;
    }

    v53 = *(a2 + 44);
    *(a1 + 173) = *(a2 + 4);
    v54.f64[0] = *(a3 + 376) + *(a3 + 316);
    v54.f64[1] = *(a3 + 384);
    *(a1 + 1412) = vcvt_hight_f32_f64(vcvt_f32_f64(v53), v54);
    *v53.f64 = *(a2 + 20);
    *(a1 + 350) = LODWORD(v53.f64[0]);
    *(a1 + 357) = *(a1 + 333);
    *(a1 + 358) = *(a1 + 334);
    *(a1 + 1448) = v213;
    *(a1 + 1449) = HIBYTE(v214);
    *(a1 + 1450) = v214;
    v55 = sub_10173A170(v50, &v210);
    *(a1 + 360) = v55;
    *(a1 + 361) = sub_10173A284(v55, &v211);
    sub_10173A3D4(a1, (a1 + 170), 0, 0);
    a1[170] = 0;
    a1[171] = 0;
    *(a1 + 173) = 0u;
    *(a1 + 175) = 0u;
    *(a1 + 1412) = 0u;
    *(a1 + 1436) = 0xFFFFFFFF00000000;
    *(a1 + 361) = -1;
    *(a1 + 724) = 0;
    *(a1 + 1450) = 0;
  }

  if (!*a1)
  {
    v56 = 0;
    goto LABEL_118;
  }

  v56 = sub_100217B20(*a1, (a1 + 199), (a1 + 255), a1 + 424, (a1 + 272), a1 + 60, a1 + 61, a2, a3, &v212, a1 + 62, a1 + 155, *(a1 + 874));
  if (!*a1)
  {
    goto LABEL_118;
  }

  v57 = *(a1 + 423);
  v58 = sub_100020640(*a1, &v215);
  v59 = sub_100021618(v57, v58, 315360000.0);
  v60 = a1[435];
  v61 = a1[429];
  if (v60 == v61)
  {
    v62 = a1[431];
    v63 = a1[434];
    v64 = v63 / 0x66;
    if (a1[432] == v62)
    {
      v65 = 0;
      v66 = 0;
    }

    else
    {
      v65 = (*(v62 + 8 * (v63 / 0x66)) + 40 * (v63 % 0x66));
      v66 = *(v62 + 8 * ((v63 + v60) / 0x66)) + 40 * ((v63 + v60) % 0x66);
    }

    v67 = a1[425];
    v68 = a1[428];
    v69 = (v67 + 8 * (v68 / 0x66));
    if (a1[426] == v67)
    {
      v70 = 0;
    }

    else
    {
      v70 = (*v69 + 40 * (v68 % 0x66));
    }

    if (v65 == v66)
    {
      goto LABEL_94;
    }

    v71 = (v62 + 8 * v64);
    while (vabdd_f64(*v65, *v70) < 2.22044605e-16)
    {
      v65 += 5;
      if ((v65 - *v71) == 4080)
      {
        v72 = v71[1];
        ++v71;
        v65 = v72;
      }

      v70 += 5;
      if ((v70 - *v69) == 4080)
      {
        v73 = v69[1];
        ++v69;
        v70 = v73;
      }

      if (v65 == v66)
      {
        goto LABEL_94;
      }
    }
  }

  if (v61 && v59 > *(a1 + 436))
  {
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v74 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v75 = v215;
      v76 = a1[429];
      v77 = sub_100020640(*a1, &v215);
      v78 = *(a1 + 3228);
      v79 = *(a1 + 3236);
      v80 = *(a2 + 4);
      v81 = *(a2 + 12);
      *buf = 134350849;
      *&buf[4] = v75;
      *&buf[12] = 1026;
      *&buf[14] = v76;
      v6 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      *&buf[18] = 2050;
      *&buf[20] = v77;
      *&buf[28] = 2053;
      *&buf[30] = v78;
      *&buf[38] = 2053;
      v236 = v79;
      v237 = 2053;
      v238 = v80;
      v239 = 2053;
      v240 = v81;
      v241 = 2050;
      *v242 = v59;
      _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEBUG, "BaroAlt,disk,save,time,%{public}lf,fBaroBiasHistory,size,%{public}d,locationCfAbsTime,%{public}lf,lastLocLat,%{sensitive}.8lf,lastLocLon,%{sensitive}.8lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v191 = qword_1025D4608;
      v192 = v215;
      v193 = a1[429];
      v194 = sub_100020640(*a1, &v215);
      v195 = *(a1 + 3228);
      v196 = *(a1 + 3236);
      v197 = *(a2 + 4);
      v198 = *(a2 + 12);
      v216 = 134350849;
      *v217 = v192;
      *&v217[8] = 1026;
      *v218 = v193;
      *&v218[4] = 2050;
      *&v218[6] = v194;
      *&v218[14] = 2053;
      *&v218[16] = v195;
      v219 = 2053;
      v220 = v196;
      v221 = 2053;
      v222 = v197;
      v223 = 2053;
      v224 = v198;
      v225 = 2050;
      *v226 = v59;
      LODWORD(v209) = 78;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v191, 2, "BaroAlt,disk,save,time,%{public}lf,fBaroBiasHistory,size,%{public}d,locationCfAbsTime,%{public}lf,lastLocLat,%{sensitive}.8lf,lastLocLon,%{sensitive}.8lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", &v216, v209);
      v200 = v199;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v199);
      if (v200 != buf)
      {
        free(v200);
      }

      v6 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v82 = sub_10173AE8C(a1, 0, v215);
    sub_10173B0B8(v215, v82, a1 + 424);
    sub_10173B914(a1);
    v83 = *(a1 + 158);
    *(a1 + 415) = *(a1 + 157);
    *(a1 + 417) = v83;
    *(a1 + 419) = *(a1 + 159);
    *(a1 + 3364) = *(a1 + 2556);
    v84 = *(a1 + 154);
    *(a1 + 407) = *(a1 + 153);
    *(a1 + 409) = v84;
    v85 = *(a1 + 156);
    *(a1 + 411) = *(a1 + 155);
    *(a1 + 413) = v85;
    v86 = *(a1 + 152);
    *(a1 + 403) = *(a1 + 151);
    *(a1 + 405) = v86;
    *(a1 + 423) = sub_100020640(*a1, &v215);
    sub_10173BA84(a1 + 430, a1 + 424);
  }

LABEL_94:
  v87 = *(a1 + 444);
  v88 = sub_100020640(*a1, &v215);
  v89 = sub_100021618(v87, v88, 315360000.0);
  v90 = *a1;
  v91 = a1[443];
  v92 = *(*a1 + 40);
  if (v91 == v92)
  {
    v93 = a1[439];
    v94 = a1[442];
    v95 = v94 / 0x66;
    if (a1[440] == v93)
    {
      v96 = 0;
      v97 = 0;
    }

    else
    {
      v96 = (*(v93 + 8 * (v94 / 0x66)) + 40 * (v94 % 0x66));
      v97 = *(v93 + 8 * ((v94 + v91) / 0x66)) + 40 * ((v94 + v91) % 0x66);
    }

    v98 = v90[4];
    v99 = v90[1];
    v100 = v90[2];
    v101 = (v99 + 8 * (v98 / 0x66));
    if (v100 == v99)
    {
      v102 = 0;
    }

    else
    {
      v102 = (*v101 + 40 * (v98 % 0x66));
    }

    if (v96 == v97)
    {
      goto LABEL_118;
    }

    v103 = (v93 + 8 * v95);
    while (vabdd_f64(*v96, *v102) < 2.22044605e-16)
    {
      v96 += 5;
      if ((v96 - *v103) == 4080)
      {
        v104 = v103[1];
        ++v103;
        v96 = v104;
      }

      v102 += 5;
      if ((v102 - *v101) == 4080)
      {
        v105 = v101[1];
        ++v101;
        v102 = v105;
      }

      if (v96 == v97)
      {
        goto LABEL_118;
      }
    }
  }

  if (v92 && v89 > *(a1 + 436))
  {
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v106 = v6[193];
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
    {
      v107 = p_info;
      v108 = v6;
      v109 = v215;
      v110 = *(*a1 + 40);
      v111 = sub_100020640(*a1, &v215);
      v112 = *(a2 + 4);
      v113 = *(a2 + 12);
      *buf = 134350337;
      *&buf[4] = v109;
      v6 = v108;
      p_info = v107;
      *&buf[12] = 1026;
      *&buf[14] = v110;
      *&buf[18] = 2050;
      *&buf[20] = v111;
      *&buf[28] = 2053;
      *&buf[30] = v112;
      *&buf[38] = 2053;
      v236 = v113;
      v237 = 2050;
      v238 = v89;
      _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_DEBUG, "BaroAlt,disk,save,time,%{public}.3lf,fLastSingleEpochBiasLongMemoryStoredToDisk,size,%{public}d,locationCfAbsTime,%{public}lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[192] != -1)
      {
        sub_100312410();
      }

      v201 = qword_1025D4608;
      v202 = v215;
      v203 = *(*a1 + 40);
      v204 = sub_100020640(*a1, &v215);
      v205 = *(a2 + 4);
      v206 = *(a2 + 12);
      v216 = 134350337;
      *v217 = v202;
      *&v217[8] = 1026;
      *v218 = v203;
      *&v218[4] = 2050;
      *&v218[6] = v204;
      *&v218[14] = 2053;
      *&v218[16] = v205;
      v219 = 2053;
      v220 = v206;
      v221 = 2050;
      v222 = v89;
      LODWORD(v209) = 58;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v201, 2, "BaroAlt,disk,save,time,%{public}.3lf,fLastSingleEpochBiasLongMemoryStoredToDisk,size,%{public}d,locationCfAbsTime,%{public}lf,currLocLat,%{sensitive}.8lf,currLocLon,%{sensitive}.8lf,timeSinceLast,%{public}lf", &v216, v209);
      v208 = v207;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v207);
      if (v208 != buf)
      {
        free(v208);
      }

      v6 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    sub_10173BB3C(a1, 0, v215);
    sub_10173BDAC(v215, v114, *a1);
    sub_10173C3DC(a1);
  }

LABEL_118:
  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v115 = v6[193];
  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
  {
    v116 = *(a1 + 2172);
    v117 = a1[59];
    *buf = 67240704;
    *&buf[4] = v213;
    *&buf[8] = 1026;
    *&buf[10] = v116;
    *&buf[14] = 2050;
    *&buf[16] = v117;
    _os_log_impl(dword_100000000, v115, OS_LOG_TYPE_DEBUG, "BaroAlt,isApproToCal,%{public}d,fInEmergencyState,%{public}d,fLastBaroAltimeterSubscribeTime,%{public}.3f", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v155 = v6[193];
    v156 = *(a1 + 2172);
    v157 = a1[59];
    v216 = 67240704;
    *v217 = v213;
    *&v217[4] = 1026;
    *&v217[6] = v156;
    *v218 = 2050;
    *&v218[2] = v157;
    LODWORD(v209) = 24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v155, 2, "BaroAlt,isApproToCal,%{public}d,fInEmergencyState,%{public}d,fLastBaroAltimeterSubscribeTime,%{public}.3f", &v216, v209);
    v159 = v158;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v158);
    if (v159 != buf)
    {
      free(v159);
    }
  }

  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v118 = v6[193];
  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
  {
    v119 = 368;
    if (*(a1 + 245))
    {
      v119 = 244;
    }

    v120 = *(a1 + v119);
    v121 = a1[189];
    v122 = a1[56];
    v123 = a1[57];
    v124 = *(a3 + 384);
    v125 = (a2[6] & 0xFFFFFFF7) == 1;
    v126 = *(a2 + 28);
    v127 = *(a2 + 36);
    v128 = *(a2 + 52);
    v129 = *(a2 + 44);
    v130 = *(a3 + 592);
    v131 = *(a3 + 24);
    v132 = a1[55];
    *buf = 134352897;
    *&buf[4] = v215;
    *&buf[12] = 2049;
    *&buf[14] = v121;
    *&buf[22] = 2049;
    *&buf[24] = v132;
    *&buf[32] = 1025;
    *&buf[34] = v120;
    *&buf[38] = 2049;
    v236 = v123;
    v237 = 2049;
    v238 = v212;
    v239 = 2049;
    v240 = v124;
    v241 = 1025;
    *v242 = v125;
    *&v242[4] = 2049;
    *&v242[6] = v126;
    *&v242[14] = 2049;
    *&v242[16] = v127;
    *&v242[24] = 1025;
    *&v242[26] = v213;
    *v243 = 2049;
    *&v243[2] = v128;
    *v244 = 2049;
    *&v244[2] = v129;
    v245 = 2050;
    v246 = v130;
    v247 = 2049;
    v248 = v131;
    v249 = 2049;
    v250 = v122;
    _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_INFO, "BaroAlt,baroKFinput,time,%{public}lf,refPressure,%{private}.3lf,measPressure,%{private}.3lf,isRefPresAvail,%{private}d,fTimeOfLastDevicePressure_s,%{private}.3lf,calibrationSourceAlt,%{private}.3lf,calibrationSourceAltUnc,%{private}.3lf,isLocationTypeGPS,%{private}d,alt,%{private}.3lf,altUnc,%{private}.3lf,isApproToCalib,%{private}d,speedAccuracy,%{private}.3lf,speed,%{private}.3lf,pOutdoor,%{public}.3lf,cfAbsTime,%{private}.3lf,temperature,%{private}.2lf", buf, 0x96u);
  }

  if (!sub_10000A100(121, 2))
  {
    if (!v56)
    {
      goto LABEL_132;
    }

    goto LABEL_131;
  }

  bzero(buf, 0x65CuLL);
  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v160 = v6[193];
  v161 = 368;
  if (*(a1 + 245))
  {
    v161 = 244;
  }

  v162 = *(a1 + v161);
  v163 = a1[189];
  v164 = a1[56];
  v165 = a1[57];
  v166 = *(a3 + 384);
  v167 = (a2[6] & 0xFFFFFFF7) == 1;
  v168 = *(a2 + 28);
  v169 = *(a2 + 36);
  v170 = *(a2 + 52);
  v171 = *(a2 + 44);
  v172 = *(a3 + 592);
  v173 = *(a3 + 24);
  v174 = a1[55];
  v216 = 134352897;
  *v217 = v215;
  *&v217[8] = 2049;
  *v218 = v163;
  *&v218[8] = 2049;
  *&v218[10] = v174;
  *&v218[18] = 1025;
  *&v218[20] = v162;
  v219 = 2049;
  v220 = v165;
  v221 = 2049;
  v222 = v212;
  v223 = 2049;
  v224 = v166;
  v225 = 1025;
  *v226 = v167;
  *&v226[4] = 2049;
  *&v226[6] = v168;
  *&v226[14] = 2049;
  *&v226[16] = v169;
  *&v226[24] = 1025;
  *&v226[26] = v213;
  *v227 = 2049;
  *&v227[2] = v170;
  *v228 = 2049;
  *&v228[2] = v171;
  v229 = 2050;
  v230 = v172;
  v231 = 2049;
  v232 = v173;
  v233 = 2049;
  v234 = v164;
  LODWORD(v209) = 150;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v160, 1, "BaroAlt,baroKFinput,time,%{public}lf,refPressure,%{private}.3lf,measPressure,%{private}.3lf,isRefPresAvail,%{private}d,fTimeOfLastDevicePressure_s,%{private}.3lf,calibrationSourceAlt,%{private}.3lf,calibrationSourceAltUnc,%{private}.3lf,isLocationTypeGPS,%{private}d,alt,%{private}.3lf,altUnc,%{private}.3lf,isApproToCalib,%{private}d,speedAccuracy,%{private}.3lf,speed,%{private}.3lf,pOutdoor,%{public}.3lf,cfAbsTime,%{private}.3lf,temperature,%{private}.2lf", &v216, v209);
  v176 = v175;
  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v175);
  if (v176 != buf)
  {
    free(v176);
  }

  v6 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  if (v56)
  {
LABEL_131:
    v133 = *(a2 + 44);
    *v11 = *(a2 + 4);
    v134.f64[0] = v212;
    v134.f64[1] = *(a3 + 384);
    *(a1 + 1316) = vcvt_hight_f32_f64(vcvt_f32_f64(v133), v134);
    *v133.f64 = *(a2 + 20);
    *(a1 + 326) = LODWORD(v133.f64[0]);
    a1[168] = 0;
    sub_10173A3D4(a1, (a1 + 158), 1, 1);
    *(a1 + 79) = 0u;
    *v11 = 0u;
    *(a1 + 163) = 0u;
    *(a1 + 1316) = 0u;
    *(a1 + 1340) = 0xFFFFFFFF00000000;
    *(a1 + 337) = -1;
    *(a1 + 676) = 0;
    *(a1 + 1354) = 0;
  }

LABEL_132:
  v135 = 368;
  if (*(a1 + 245))
  {
    v135 = 244;
  }

  if (*(a1 + v135) == 1 && *(a1 + 61) > 0.0 && vabdd_f64(*(a1 + 62), v215) <= 2.22044605e-16 && *a1 && fabs(sub_100021618(v215, *(a1 + 196), 315360000.0)) >= 120.0)
  {
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v136 = v6[193];
    if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v136, OS_LOG_TYPE_INFO, "BaroAlt,query ref pressure for cal", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101746FC0();
    }

    sub_10173C5AC(a1, a2);
  }

  if (*(a1 + 61) > 0.0 && vabdd_f64(*(a1 + 62), v215) <= 2.22044605e-16)
  {
    sub_10173CB84(a1, a2, v215, v212);
    sub_10173CCC4(a1);
  }

  if (*a1)
  {
    v137 = 380;
    if (*(a1 + 277))
    {
      v137 = 276;
    }

    if (sub_1001F7220(*a1, (a1 + 199), a1 + 255, (a1 + 1), (a1 + 158), (a1 + 451), (a1 + 455), (a1 + 459), a1 + 60, a1 + 61, a1 + 62, (a1 + 155), (a1 + 302), *(a1 + v137), 1u))
    {
      if (v56)
      {
        if (*(a1 + 3) > 0.0 && vabdd_f64(*(a1 + 62), v215) <= 2.22044605e-16)
        {
          v138 = *(a3 + 376);
          v139 = *(a1 + 2);
          v140 = sub_100020640(*a1, &v215);
          if (fabs(*(a1 + 280)) > 2.22044605e-16)
          {
            v141 = v140 - *(a1 + 261);
            *(a1 + 276) = v138 - v139;
            *(a1 + 277) = v141;
          }
        }

        v142 = *(a1 + 257);
        *(a1 + 261) = *(a1 + 255);
        *(a1 + 263) = v142;
        *(a1 + 265) = *(a1 + 259);
      }

      return 1;
    }
  }

  if (p_info[192] != -1)
  {
    sub_100312410();
  }

  v143 = v6[193];
  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEBUG))
  {
    v144 = *(a1 + 528);
    v145 = *(a3 + 376);
    v146 = *(a3 + 384);
    v147 = *(a2 + 28);
    v148 = *(a2 + 36);
    v149 = *(a2 + 20);
    v150 = a1[60];
    v151 = a1[61];
    v152 = a1[62];
    v153 = a1[157];
    v154 = a1[155];
    *buf = 134351873;
    *&buf[4] = v215;
    *&buf[12] = 1026;
    *&buf[14] = v144;
    *&buf[18] = 2049;
    *&buf[20] = v145;
    *&buf[28] = 2050;
    *&buf[30] = v146;
    *&buf[38] = 2049;
    v236 = v147;
    v237 = 2050;
    v238 = v148;
    v239 = 2050;
    v240 = v149;
    v241 = 2049;
    *v242 = v150;
    *&v242[8] = 2050;
    *&v242[10] = v151;
    *&v242[18] = 2050;
    *&v242[20] = v152;
    *&v242[28] = 2049;
    *v243 = v153;
    *&v243[8] = 2050;
    *v244 = v154;
    _os_log_impl(dword_100000000, v143, OS_LOG_TYPE_DEBUG, "BaroAlt,no action,time,%{public}lf,subscribedToOdom,%{public}d,demAlt,%{private}lf,unc,%{public}lf,alt,%{private}lf,altUnc,%{public}lf,horUnc,%{public}lf,baseAlt,%{private}lf,unc,%{public}lf,fTimeOfLastBaseAltitudeCalibration,%{public}lf,relAlt,%{private}lf,fTimeOfLastOdometerData,%{public}.4lf", buf, 0x76u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (p_info[192] != -1)
    {
      sub_100312410();
    }

    v177 = v6[193];
    v178 = *(a1 + 528);
    v179 = *(a3 + 376);
    v180 = *(a3 + 384);
    v181 = *(a2 + 28);
    v182 = *(a2 + 36);
    v183 = *(a2 + 20);
    v184 = a1[60];
    v185 = a1[61];
    v186 = a1[62];
    v187 = a1[157];
    v188 = a1[155];
    v216 = 134351873;
    *v217 = v215;
    *&v217[8] = 1026;
    *v218 = v178;
    *&v218[4] = 2049;
    *&v218[6] = v179;
    *&v218[14] = 2050;
    *&v218[16] = v180;
    v219 = 2049;
    v220 = v181;
    v221 = 2050;
    v222 = v182;
    v223 = 2050;
    v224 = v183;
    v225 = 2049;
    *v226 = v184;
    *&v226[8] = 2050;
    *&v226[10] = v185;
    *&v226[18] = 2050;
    *&v226[20] = v186;
    *&v226[28] = 2049;
    *v227 = v187;
    *&v227[8] = 2050;
    *v228 = v188;
    LODWORD(v209) = 118;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v177, 2, "BaroAlt,no action,time,%{public}lf,subscribedToOdom,%{public}d,demAlt,%{private}lf,unc,%{public}lf,alt,%{private}lf,altUnc,%{public}lf,horUnc,%{public}lf,baseAlt,%{private}lf,unc,%{public}lf,fTimeOfLastBaseAltitudeCalibration,%{public}lf,relAlt,%{private}lf,fTimeOfLastOdometerData,%{public}.4lf", &v216, v209);
    v190 = v189;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::updateAltitude(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v189);
    if (v190 != buf)
    {
      free(v190);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10020F350(uint64_t a1, double a2)
{
  v14 = a2;
  if (*(a1 + 3384) < 2.22044605e-16)
  {
    goto LABEL_8;
  }

  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  v4 = sub_100020640(*a1, &v14);
  v5 = sub_100021618(v4, *(a1 + 3384), 315360000.0);
  if (*(a1 + 284) == 1)
  {
    LODWORD(v6) = *(a1 + 280);
    v7 = v6;
  }

  else
  {
    v7 = 259200.0;
  }

  if (v5 >= v7)
  {
LABEL_8:
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

LABEL_9:
  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v8 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 3384);
    *buf = 134349568;
    v22 = v9;
    v23 = 2050;
    v24 = v14;
    v25 = 1026;
    v26 = v3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "BaroAlt,BiasStalenessCheck,Time,%{public}.3lf,machContNow,%{public}.3lf,isStale,%{public}d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v11 = *(a1 + 3384);
    v15 = 134349568;
    v16 = v11;
    v17 = 2050;
    v18 = v14;
    v19 = 1026;
    v20 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "BaroAlt,BiasStalenessCheck,Time,%{public}.3lf,machContNow,%{public}.3lf,isStale,%{public}d", &v15, 28);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::isBaroBiasHistoryStale(const CFTimeInterval) const", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return v3;
}

void sub_10020F594(uint64_t a1, double a2)
{
  if (*(a1 + 48))
  {
    v4 = *(a1 + 24);
    v5 = *a1 == 1 && *(a1 + 8) < v4;
    if (qword_1025D4600 != -1)
    {
      sub_101B0C0DC();
    }

    v7 = a2 - v4;
    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 8);
      v10 = *(a1 + 24);
      *buf = 67240961;
      *v27 = v7 > 10.0;
      *&v27[4] = 1026;
      *&v27[6] = v5;
      *v28 = 2049;
      *&v28[2] = v9;
      v29 = 2049;
      v30 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,update,fixAfterOutage,%{public}d,staticBeforePreviousFix,%{public}d,staticTime,%{private}0.1f,posUncTime,%{private}0.1f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v15 = *(a1 + 8);
      v16 = *(a1 + 24);
      v19[0] = 67240961;
      v19[1] = v7 > 10.0;
      v20 = 1026;
      v21 = v5;
      v22 = 2049;
      v23 = v15;
      v24 = 2049;
      v25 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#LCStats,ThrPosUnc,update,fixAfterOutage,%{public}d,staticBeforePreviousFix,%{public}d,staticTime,%{private}0.1f,posUncTime,%{private}0.1f", v19, 34);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::ThresholdPosUncMetric::updateMetrics(const CFTimeInterval)", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    if (v7 <= 10.0 || v5)
    {
      v12 = *(a1 + 40);
      v11 = (a1 + 40);
      *v11 = v12 + a2 - *(v11 - 2);
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v11;
        *buf = 134349312;
        *v27 = v14;
        *&v27[8] = 2050;
        *v28 = a2;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,update,metric,accDurPosUncThr,%{public}0.1f,time,%{public}0.1f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0CEF0(v11, a2);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101B0C0DC();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,posunc,metric collection is not active", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0CE0C();
    }
  }
}

void sub_10020F8F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 384) == 1 && (*(a1 + 385) & 1) != 0)
  {
    v4 = sub_1000081AC();
    v5 = *(a1 + 400);
    sub_10001CAF4(buf);
    *v48 = 0;
    v6 = v4 - v5;
    if (sub_1000B9370(*&buf[0], "homeVisitAtRestThrSec", v48))
    {
      v7 = *v48;
    }

    else
    {
      v7 = 300.0;
    }

    if (*(&buf[0] + 1))
    {
      sub_100008080(*(&buf[0] + 1));
    }

    if (v6 < v7)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = v6;
        LODWORD(buf[0]) = 134349056;
        *(buf + 4) = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#LCStats,homeVisit,stats not computed, duration being at rest for %{public}0.1f sec", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0C1F0(v6);
      }

      return;
    }

    sub_1001097CC((a1 + 176), a1 + 408, a2);
    v15 = v14;
    v16 = *(a1 + 576);
    if (!v16)
    {
      goto LABEL_29;
    }

    v17 = *(a2 + 96);
    v18 = a1 + 576;
    do
    {
      if (*(v16 + 32) >= v17)
      {
        v18 = v16;
      }

      v16 = *(v16 + 8 * (*(v16 + 32) < v17));
    }

    while (v16);
    if (v18 == a1 + 576 || v17 < *(v18 + 32))
    {
LABEL_29:
      memset(&buf[1] + 8, 0, 40);
      v19 = *(a2 + 20);
      *buf = v14;
      *(buf + 1) = v19;
      LODWORD(buf[1]) = *(a2 + 140);
      DWORD1(buf[1]) = 1;
      v20 = v14;
      if (v20 >= 100.0)
      {
        if (v20 >= 200.0)
        {
          LODWORD(buf[2]) = 1;
        }

        else
        {
          HIDWORD(buf[1]) = 1;
        }
      }

      else
      {
        DWORD2(buf[1]) = 1;
      }

      if (v19 <= 0.0)
      {
        v47 = 0.0;
      }

      else
      {
        v21 = v15 / v19;
        v47 = v21;
        if (v21 >= 1.0)
        {
          if (v21 >= 3.0)
          {
            HIDWORD(buf[2]) = 1;
          }

          else
          {
            DWORD2(buf[2]) = 1;
          }

          goto LABEL_40;
        }
      }

      DWORD1(buf[2]) = 1;
LABEL_40:
      *v48 = v15;
      sub_101058A1C(v13, buf, v48, &v47);
      *v48 = a2 + 96;
      v22 = sub_10105B720(a1 + 568, (a2 + 96), &unk_101C66300, v48);
      v23 = buf[1];
      *(v22 + 5) = buf[0];
      *(v22 + 7) = v23;
      *(v22 + 9) = buf[2];
      *(v22 + 84) = *(&buf[2] + 12);
LABEL_41:
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v24 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a2 + 96);
        v26 = *(a2 + 20);
        v27 = *(a2 + 140);
        LODWORD(buf[0]) = 67109888;
        DWORD1(buf[0]) = v25;
        WORD4(buf[0]) = 2048;
        *(buf + 10) = v15;
        WORD1(buf[1]) = 2048;
        *(&buf[1] + 4) = v26;
        WORD6(buf[1]) = 1024;
        *(&buf[1] + 14) = v27;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#LCStats,homeVisit,posType,%d,distFromCentroid,%0.2f m,estAcc,%0.2f m,sigEnv,%d", buf, 0x22u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100232CD4();
        }

        v28 = *(a2 + 96);
        v29 = *(a2 + 20);
        v30 = *(a2 + 140);
        *v48 = 67109888;
        *&v48[4] = v28;
        *&v48[8] = 2048;
        *&v48[10] = v15;
        *&v48[18] = 2048;
        *&v48[20] = v29;
        v49 = 1024;
        v50 = v30;
        LODWORD(v45) = 34;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "#LCStats,homeVisit,posType,%d,distFromCentroid,%0.2f m,estAcc,%0.2f m,sigEnv,%d", v48, v45, v46, LODWORD(v47));
        v32 = v31;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::calcHomeVisitStats(const CLDaemonLocation &)", "%s\n", v31);
        if (v32 != buf)
        {
          free(v32);
        }
      }

      return;
    }

    ++*(v18 + 60);
    v33 = v14;
    if (v33 >= 100.0)
    {
      if (v33 >= 200.0)
      {
        ++*(v18 + 72);
      }

      else
      {
        ++*(v18 + 68);
      }
    }

    else
    {
      ++*(v18 + 64);
    }

    v34 = *(a2 + 20);
    if (v34 <= 0.0)
    {
      v47 = 0.0;
    }

    else
    {
      v35 = v15 / v34;
      v47 = v35;
      if (v35 >= 1.0)
      {
        if (v35 >= 3.0)
        {
          ++*(v18 + 84);
        }

        else
        {
          ++*(v18 + 80);
        }

LABEL_62:
        *buf = v15;
        sub_101058A1C(v13, (v18 + 40), buf, &v47);
        if (v15 > *(v18 + 40))
        {
          *(v18 + 40) = v15;
          *(v18 + 48) = *(a2 + 20);
          if (qword_1025D4600 != -1)
          {
            sub_100232CD4();
          }

          v36 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
          {
            v37 = *(a2 + 20);
            v38 = *(a2 + 96);
            v39 = *(a2 + 140);
            LODWORD(buf[0]) = 134218752;
            *(buf + 4) = v15;
            WORD6(buf[0]) = 2048;
            *(buf + 14) = v37;
            WORD3(buf[1]) = 1024;
            DWORD2(buf[1]) = v38;
            WORD6(buf[1]) = 1024;
            *(&buf[1] + 14) = v39;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "#LCStats,homeVisit,maxError,%0.2f m,estAcc,%0.2f m,posType,%d,sigEnv,%d", buf, 0x22u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_100232CD4();
            }

            v40 = *(a2 + 20);
            v41 = *(a2 + 96);
            v42 = *(a2 + 140);
            *v48 = 134218752;
            *&v48[4] = v15;
            *&v48[12] = 2048;
            *&v48[14] = v40;
            *&v48[22] = 1024;
            *&v48[24] = v41;
            v49 = 1024;
            v50 = v42;
            LODWORD(v45) = 34;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 0, "#LCStats,homeVisit,maxError,%0.2f m,estAcc,%0.2f m,posType,%d,sigEnv,%d", COERCE_DOUBLE(v48), v45, LODWORD(v46), LODWORD(v47));
            v44 = v43;
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::calcHomeVisitStats(const CLDaemonLocation &)", "%s\n", v43);
            if (v44 != buf)
            {
              free(v44);
            }
          }
        }

        goto LABEL_41;
      }
    }

    ++*(v18 + 76);
    goto LABEL_62;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 384);
    v12 = *(a1 + 385);
    LODWORD(buf[0]) = 67240448;
    DWORD1(buf[0]) = v11;
    WORD4(buf[0]) = 1026;
    *(buf + 10) = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#LCStats,homeVisit,stats not calculated,isHomeVisit,%{public}d,isStatic,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0C0F0();
  }
}

void sub_10021001C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021003C(uint64_t a1)
{
  for (i = *(a1 + 248); i; i = *i)
  {
    if (*(i + 214))
    {
      v3 = i[8];
      if (v3 >= 2)
      {
        v4 = *(i + 208);
        if ((v4 & 0x80000000) == 0 && v4 < v3 - 1 && (sub_100205234((i + 1), a1 + 2424) & 1) == 0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v5 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_INFO))
          {
            v6 = *(i + 212);
            *buf = 67240192;
            v14 = v6;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#fusion,hID,%{public}d,hypothesis data fusion failed.", buf, 8u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v7 = *(i + 212);
            v12[0] = 67240192;
            v12[1] = v7;
            LODWORD(v11) = 8;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 1, "#fusion,hID,%{public}d,hypothesis data fusion failed.", v12, v11);
            v9 = v8;
            sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesDataFusion()::(anonymous class)::operator()(LCFusionLocationHypothesis &) const", "%s\n", v8);
            if (v9 != buf)
            {
              free(v9);
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_10021022C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100210238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 248);
  if (v2)
  {
    v5 = 1;
    v6 = *(a1 + 248);
    do
    {
      v6 = *v6;
      --v5;
    }

    while (v6);
    if (!v5)
    {
      *(v2 + 816) = xmmword_101C76100;
      return 1;
    }

    v8 = *(a2 + 24);
    v7 = (a2 + 16);
    v223 = *(a2 + 16);
    v221 = 0.0;
    v222 = 0.0;
    if (sub_100208760((a1 + 2384), &v222, &v221, v8, *(a1 + 2248)))
    {
      v13 = v221;
      v12 = v222;
      v10.i64[0] = *(a2 + 24);
      v9.i64[0] = 0x400921FB54442D18;
      v217 = v9;
      if (fabs(*v10.i64) > 3.14159265)
      {
        v14.f64[0] = NAN;
        v14.f64[1] = NAN;
        v214 = *vbslq_s8(vnegq_f64(v14), v9, v10).i64;
        *v10.i64 = fmod(*v10.i64 + v214, 6.28318531) - v214;
      }

      if (*v10.i64 >= 1.57079633)
      {
        v15 = v217;
        *v10.i64 = *v217.i64 - *v10.i64;
      }

      else
      {
        v15 = v217;
        if (*v10.i64 < -1.57079633)
        {
          *v10.i64 = -3.14159265 - *v10.i64;
        }
      }

      v11.i64[0] = *(a2 + 32);
      v213 = *v10.i64;
      if (fabs(*v11.i64) <= *v15.i64)
      {
        v216 = v11;
      }

      else
      {
        v22.f64[0] = NAN;
        v22.f64[1] = NAN;
        v215 = *vbslq_s8(vnegq_f64(v22), v15, v11).i64;
        *v23.i64 = fmod(*v11.i64 + v215, 6.28318531) - v215;
        v216 = v23;
      }

      v24 = sub_10024B964(a1);
      v212 = v12 * 0.0174532925;
      v25 = v13 * 0.0174532925;
      if ((*(a2 + 124) & 0xFFFFFFFD) == 1)
      {
        *&__p = 0.0;
        v219 = 0;
        v220 = 0;
        v26 = *(a1 + 248);
        if (v26)
        {
          v27.f64[0] = NAN;
          v27.f64[1] = NAN;
          v205 = vnegq_f64(v27);
          v209 = *vbslq_s8(v205, v217, v216).i64;
          v207 = 0;
          v28 = fmod(*v216.i64 + v209, 6.28318531) - v209;
          if (fabs(*v216.i64) <= *v217.i64)
          {
            v29 = *v216.i64;
          }

          else
          {
            v29 = v28;
          }

          v191 = 0.0;
          v194 = 25000000.0;
          __asm { FMOV            V0.2D, #-1.0 }

          v210 = _Q0;
          v187 = -1.57079633;
          v185 = -3.14159265;
          v189 = 1.0;
          do
          {
            if ((v26[107] & 0xFFFFFFFB) != 0)
            {
              v34 = v26[8];
              if (v34)
              {
                if (*(*(v26[4] + 8 * ((v34 + v26[7] - 1) / 0x1AuLL)) + 152 * ((v34 + v26[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v238 = off_1024DE5F8;
                  *v239 = v210;
                  v240 = xmmword_101C75BF0;
                  v241 = xmmword_101C75BF0;
                  v242 = v210;
                  v243 = v210;
                  v244 = 0xBFF0000000000000;
                  v245 = 0;
                  v246 = 0;
                  v35 = sub_10002980C((v26 + 25), &v223);
                  v37 = sub_10002A8E4((v26 + 25), v36, &v238);
                  v38 = v26[8] + v26[7] - 1;
                  *v40.i64 = sub_10020CECC(*(v26[4] + 8 * (v38 / 0x1A)) + 152 * (v38 % 0x1A) + 16, v39);
                  if (v35 && (v37 & 1) != 0)
                  {
                    v42 = *v40.i64;
                    v43 = *&v240;
                    v41.i64[0] = *&v239[16];
                    if (fabs(*&v239[16]) > *v217.i64)
                    {
                      v197 = *vbslq_s8(v205, v217, v41).i64;
                      *v41.i64 = fmod(*&v239[16] + v197, 6.28318531) - v197;
                    }

                    if (*v41.i64 >= 1.57079633)
                    {
                      v44 = v217;
                      *v41.i64 = *v217.i64 - *v41.i64;
                    }

                    else
                    {
                      if (*v41.i64 < v187)
                      {
                        *v41.i64 = v185 - *v41.i64;
                      }

                      v44 = v217;
                    }

                    v40.i64[0] = *&v239[24];
                    if (fabs(*&v239[24]) > *v44.i64)
                    {
                      v192 = *vbslq_s8(v205, v44, v40).i64;
                      v198 = v41.i64[0];
                      *v40.i64 = fmod(*&v239[24] + v192, 6.28318531);
                      v44 = v217;
                      v41.i64[0] = v198;
                      *v40.i64 = *v40.i64 - v192;
                    }

                    if (vabdd_f64(*v216.i64, *v40.i64) <= *v44.i64)
                    {
                      v49 = *v216.i64 - *v40.i64;
                    }

                    else
                    {
                      if (fabs(*v40.i64) > *v44.i64)
                      {
                        v193 = *vbslq_s8(v205, v44, v40).i64;
                        v199 = v41.i64[0];
                        *v40.i64 = fmod(*v40.i64 + v193, 6.28318531);
                        v44.i64[0] = v217.i64[0];
                        v41.i64[0] = v199;
                        *v40.i64 = *v40.i64 - v193;
                      }

                      if (vabdd_f64(*v40.i64, v29) <= *v44.i64)
                      {
                        v48 = *v40.i64 - v29;
                      }

                      else
                      {
                        v48 = *v40.i64 - v29 + dbl_101CFC5F0[*v40.i64 - v29 > *v44.i64];
                      }

                      v49 = *v216.i64 - (*v216.i64 + v48);
                    }

                    if (qword_1025D4770 != -1)
                    {
                      v200 = v41.i64[0];
                      sub_100224830();
                      v41.i64[0] = v200;
                    }

                    v50 = v42 * 50.0;
                    v51 = v212 * (v213 - *v41.i64) * (v212 * (v213 - *v41.i64)) + v25 * v49 * (v25 * v49);
                    v52 = sqrt(v51);
                    v53 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v54 = *(a2 + 16);
                      v55 = *(v26 + 212);
                      v56 = *(a2 + 124);
                      v57 = v26[102];
                      v58 = v26[103];
                      *buf = 134219520;
                      *v248 = v54;
                      *&v248[8] = 1024;
                      *&v248[10] = v55;
                      v249 = 2048;
                      v250 = v52;
                      v251 = 2048;
                      v252 = v50;
                      v253 = 1024;
                      *v254 = v56;
                      *&v254[4] = 2048;
                      *&v254[6] = v57;
                      v255 = 2048;
                      v256 = v58;
                      _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "#selection,gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x40u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v66 = *(a2 + 16);
                      v67 = *(v26 + 212);
                      v68 = *(a2 + 124);
                      v69 = v26[102];
                      v70 = v26[103];
                      v224 = 134219520;
                      v225 = v66;
                      v226 = 1024;
                      v227 = v67;
                      v228 = 2048;
                      v229 = v52;
                      v230 = 2048;
                      v231 = v50;
                      v232 = 1024;
                      v233 = v68;
                      v234 = 2048;
                      v235 = v69;
                      v236 = 2048;
                      v237 = v70;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", COERCE_DOUBLE(&v224), 64, v181, v183, LODWORD(v185), v187, v189);
                      v72 = v71;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v71);
                      if (v72 != buf)
                      {
                        free(v72);
                      }
                    }

                    v59 = 5000.0;
                    if (v50 >= 5000.0)
                    {
                      v59 = v50;
                    }

                    if (v52 < v59)
                    {
                      *buf = *(v26 + 212);
                      sub_100D711F0(&__p, __p, buf);
                      v60 = v43 * v43 * 0.5 + *(a2 + 40) * *(a2 + 40) * 0.5;
                      if (v51 < v60 * 9.0 && v51 < v194)
                      {
                        v207 = *(v26 + 212);
                        v191 = exp(v51 * -0.5 / v60);
                        v189 = 1.0 - *(v26 + 102) * v191;
                        v194 = v51;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v45 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v46 = *v7;
                      v47 = *(v26 + 212);
                      *buf = 134218240;
                      *v248 = v46;
                      *&v248[8] = 1024;
                      *&v248[10] = v47;
                      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", buf, 0x12u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v62 = *v7;
                      v63 = *(v26 + 212);
                      v224 = 134218240;
                      v225 = v62;
                      v226 = 1024;
                      v227 = v63;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", COERCE_DOUBLE(&v224), 18);
                      v65 = v64;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v64);
                      if (v65 != buf)
                      {
                        free(v65);
                      }
                    }

                    v24 = 0;
                  }
                }
              }
            }

            v26 = *v26;
          }

          while (v26);
          v146 = *(a1 + 248);
          v147 = v191;
          v148 = v189;
          if (v146)
          {
            v149 = log(v189);
            v150 = log(v189 + v191);
            do
            {
              if ((v146[107] & 0xFFFFFFFB) != 0)
              {
                v151 = v146[8];
                if (v151)
                {
                  if (*(*(v146[4] + 8 * ((v151 + v146[7] - 1) / 0x1AuLL)) + 152 * ((v151 + v146[7] - 1) % 0x1AuLL) + 148) == 1)
                  {
                    v152 = *(v146 + 212);
                    if (v152 == v207)
                    {
                      *(v146 + 103) = v150 + *(v146 + 103);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v153 = qword_1025D4778;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v154 = *(v146 + 212);
                        v155 = *(a2 + 40);
                        v156 = v146[103];
                        *buf = 67110144;
                        *v248 = v154;
                        *&v248[4] = 2048;
                        *&v248[6] = v147;
                        v249 = 2048;
                        v250 = v148;
                        v251 = 2048;
                        v252 = v155;
                        v253 = 2048;
                        *v254 = v156;
                        _os_log_impl(dword_100000000, v153, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update gaussian aposteriori,hID,%d,gaussianProb,%.9f,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", buf, 0x30u);
                      }

                      if (!sub_10000A100(121, 2))
                      {
                        goto LABEL_194;
                      }

                      sub_101A7B5F4(buf);
                      v157 = *(v146 + 212);
                      v158 = *(a2 + 40);
                      v159 = v146[103];
                      LODWORD(v238) = 67110144;
                      HIDWORD(v238) = v157;
                      *v239 = 2048;
                      *&v239[2] = v147;
                      *&v239[10] = 2048;
                      *&v239[12] = v148;
                      *&v239[20] = 2048;
                      *&v239[22] = v158;
                      *&v239[30] = 2048;
                      *&v240 = v159;
                      LODWORD(v180) = 48;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update gaussian aposteriori,hID,%d,gaussianProb,%.9f,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", &v238, v180, v181, v183, v185);
                      v161 = v160;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v160);
                    }

                    else
                    {
                      v162 = __p;
                      if (__p != v219)
                      {
                        while (*v162 != v152)
                        {
                          if (++v162 == v219)
                          {
                            goto LABEL_188;
                          }
                        }
                      }

                      if (v162 == v219)
                      {
LABEL_188:
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v170 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v171 = *(v146 + 212);
                          v172 = v146[103];
                          *buf = 67109376;
                          *v248 = v171;
                          *&v248[4] = 2048;
                          *&v248[6] = v172;
                          _os_log_impl(dword_100000000, v170, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update hypothesis too far from fix,hID,%d outlier rejection for this fix,loglikelihood,%.5f", buf, 0x12u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v173 = *(v146 + 212);
                          v174 = v146[103];
                          LODWORD(v238) = 67109376;
                          HIDWORD(v238) = v173;
                          *v239 = 2048;
                          *&v239[2] = v174;
                          LODWORD(v180) = 18;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update hypothesis too far from fix,hID,%d outlier rejection for this fix,loglikelihood,%.5f", &v238, v180);
                          v176 = v175;
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v175);
                          if (v176 != buf)
                          {
                            free(v176);
                          }

                          v147 = v191;
                          v148 = v189;
                        }

                        sub_1008F46C8(a1 + 3000);
                        goto LABEL_194;
                      }

                      *(v146 + 103) = v149 + *(v146 + 103);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v163 = qword_1025D4778;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v164 = *(v146 + 212);
                        v165 = *(a2 + 40);
                        v166 = *(v146 + 103);
                        *buf = 67109888;
                        *v248 = v164;
                        *&v248[4] = 2048;
                        *&v248[6] = v148;
                        v249 = 2048;
                        v250 = v165;
                        v251 = 2048;
                        v252 = v166;
                        _os_log_impl(dword_100000000, v163, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update gaussian aposteriori,hID,%d,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", buf, 0x26u);
                      }

                      if (!sub_10000A100(121, 2))
                      {
                        goto LABEL_194;
                      }

                      sub_101A7B5F4(buf);
                      v167 = *(a2 + 40);
                      v168 = v146[103];
                      v238 = __PAIR64__(*(v146 + 212), 67109888);
                      *v239 = 2048;
                      *&v239[2] = v148;
                      *&v239[10] = 2048;
                      *&v239[12] = v167;
                      *&v239[20] = 2048;
                      *&v239[22] = v168;
                      LODWORD(v180) = 38;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update gaussian aposteriori,hID,%d,uniformProb,%.9f,rootS,%.5f,loglikelihood,%.5f", &v238, v180, v181, v183);
                      v161 = v169;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v169);
                    }

                    if (v161 != buf)
                    {
                      free(v161);
                    }

                    v147 = v191;
                    v148 = v189;
                  }
                }
              }

LABEL_194:
              v146 = *v146;
            }

            while (v146);
          }

          if (*&__p != 0.0)
          {
            v219 = __p;
            operator delete(__p);
          }
        }
      }

      else
      {
        v73 = *(a1 + 248);
        if (v73)
        {
          v74.f64[0] = NAN;
          v74.f64[1] = NAN;
          v206 = vnegq_f64(v74);
          v211 = *vbslq_s8(v206, v217, v216).i64;
          v75 = fmod(*v216.i64 + v211, 6.28318531) - v211;
          if (fabs(*v216.i64) <= *v217.i64)
          {
            v75 = *v216.i64;
          }

          v186 = v75;
          __asm { FMOV            V0.2D, #-1.0 }

          v208 = _Q0;
          v188 = -1.57079633;
          v184 = -3.14159265;
          v77 = 10000.0;
          v190 = 134218496;
          v182 = 5000.0;
          do
          {
            if ((v73[107] & 0xFFFFFFFB) != 0)
            {
              v78 = v73[8];
              if (v78)
              {
                if (*(*(v73[4] + 8 * ((v78 + v73[7] - 1) / 0x1AuLL)) + 152 * ((v78 + v73[7] - 1) % 0x1AuLL) + 148) == 1)
                {
                  v238 = off_1024DE5F8;
                  *v239 = v208;
                  v240 = xmmword_101C75BF0;
                  v241 = xmmword_101C75BF0;
                  v242 = v208;
                  v243 = v208;
                  v244 = 0xBFF0000000000000;
                  v245 = 0;
                  v246 = 0;
                  v79 = sub_10002980C((v73 + 25), &v223);
                  v81 = sub_10002A8E4((v73 + 25), v80, &v238);
                  v82 = v73[8] + v73[7] - 1;
                  v86 = sub_10020CECC(*(v73[4] + 8 * (v82 / 0x1A)) + 152 * (v82 % 0x1A) + 16, v83) * 50.0;
                  *&__p = v86;
                  if (v79 && (v81 & 1) != 0)
                  {
                    v85.i64[0] = *&v239[16];
                    if (fabs(*&v239[16]) > *v217.i64)
                    {
                      v201 = *vbslq_s8(v206, v217, v85).i64;
                      *v85.i64 = fmod(*&v239[16] + v201, 6.28318531) - v201;
                    }

                    if (*v85.i64 >= 1.57079633)
                    {
                      v87 = v217;
                      *v85.i64 = *v217.i64 - *v85.i64;
                    }

                    else
                    {
                      if (*v85.i64 < v188)
                      {
                        *v85.i64 = v184 - *v85.i64;
                      }

                      v87 = v217;
                    }

                    v84.i64[0] = *&v239[24];
                    if (fabs(*&v239[24]) > *v87.i64)
                    {
                      v195 = *vbslq_s8(v206, v87, v84).i64;
                      v202 = v85.i64[0];
                      *v84.i64 = fmod(*&v239[24] + v195, 6.28318531);
                      v87 = v217;
                      v85.i64[0] = v202;
                      *v84.i64 = *v84.i64 - v195;
                    }

                    if (vabdd_f64(*v216.i64, *v84.i64) <= *v87.i64)
                    {
                      v92 = *v216.i64 - *v84.i64;
                    }

                    else
                    {
                      if (fabs(*v84.i64) > *v87.i64)
                      {
                        v196 = *vbslq_s8(v206, v87, v84).i64;
                        v203 = v85.i64[0];
                        *v84.i64 = fmod(*v84.i64 + v196, 6.28318531);
                        v87.i64[0] = v217.i64[0];
                        v85.i64[0] = v203;
                        *v84.i64 = *v84.i64 - v196;
                      }

                      if (vabdd_f64(*v84.i64, v186) <= *v87.i64)
                      {
                        v91 = *v84.i64 - v186;
                      }

                      else
                      {
                        v91 = *v84.i64 - v186 + dbl_101CFC5F0[*v84.i64 - v186 > *v87.i64];
                      }

                      v92 = *v216.i64 - (*v216.i64 + v91);
                    }

                    if (qword_1025D4770 != -1)
                    {
                      v204 = v85.i64[0];
                      sub_100224830();
                      v85.i64[0] = v204;
                    }

                    v93 = sqrt(v212 * (v213 - *v85.i64) * (v212 * (v213 - *v85.i64)) + v25 * v92 * (v25 * v92));
                    v94 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v95 = *(a2 + 16);
                      v96 = *(v73 + 212);
                      v97 = *(a2 + 124);
                      v98 = v73[102];
                      v99 = v73[103];
                      *buf = 134219520;
                      *v248 = v95;
                      *&v248[8] = 1024;
                      *&v248[10] = v96;
                      v249 = 2048;
                      v250 = v93;
                      v251 = 2048;
                      v252 = v86;
                      v253 = 1024;
                      *v254 = v97;
                      *&v254[4] = 2048;
                      *&v254[6] = v98;
                      v255 = 2048;
                      v256 = v99;
                      _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEBUG, "#selection,non-gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", buf, 0x40u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v134 = *(a2 + 16);
                      v135 = *(v73 + 212);
                      v136 = *(a2 + 124);
                      v137 = v73[102];
                      v138 = v73[103];
                      v224 = 134219520;
                      v225 = v134;
                      v226 = 1024;
                      v227 = v135;
                      v228 = 2048;
                      v229 = v93;
                      v230 = 2048;
                      v231 = v86;
                      v232 = 1024;
                      v233 = v136;
                      v234 = 2048;
                      v235 = v137;
                      v236 = 2048;
                      v237 = v138;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,non-gps Likelihood update apriori,time_mct,%.3f,hID,%d,innov,%.5f,hypMaxInnov,%.5f,type,%d,likelihood,%.9f,logLikelihood,%.5f", COERCE_DOUBLE(&v224), 64, v182, v184, LODWORD(v186), v188, *&v190);
                      v140 = v139;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v139);
                      if (v140 != buf)
                      {
                        free(v140);
                      }
                    }

                    v100 = *(a2 + 40);
                    if ((*(a2 + 124) - 6) >= 3 && (sub_1000291EC((v73 + 1), (a2 + 16)), v86 = *&__p, (*(v73 + 226) - 6) > 2))
                    {
                      p_p = &__p;
                      if (*&__p < v182)
                      {
                        p_p = &unk_101CFC6F0;
                      }
                    }

                    else
                    {
                      p_p = &unk_101CFC6E8;
                      if (v86 >= v77)
                      {
                        p_p = &__p;
                      }
                    }

                    v102 = fabs(v93);
                    if (v102 >= v100)
                    {
                      if (v102 >= *p_p)
                      {
                        v73[103] = 0xC0326BB1BBB55516;
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v126 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v127 = *v7;
                          v128 = *(v73 + 212);
                          v129 = *(v73 + 103);
                          *buf = v190;
                          *v248 = v127;
                          *&v248[8] = 1024;
                          *&v248[10] = v128;
                          v249 = 2048;
                          v250 = v129;
                          _os_log_impl(dword_100000000, v126, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update hypothesis too far from fix,time_mct,%.3f,hID,%d,outlier rejection for this fix,logLikelihood,%.5f", buf, 0x1Cu);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v141 = *v7;
                          v142 = *(v73 + 212);
                          v143 = *(v73 + 103);
                          v224 = v190;
                          v225 = v141;
                          v226 = 1024;
                          v227 = v142;
                          v228 = 2048;
                          v229 = v143;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update hypothesis too far from fix,time_mct,%.3f,hID,%d,outlier rejection for this fix,logLikelihood,%.5f", COERCE_DOUBLE(&v224), 28, v182);
                          v145 = v144;
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v144);
                          if (v145 != buf)
                          {
                            free(v145);
                          }
                        }

                        sub_1008F46C8(a1 + 3000);
                      }

                      else
                      {
                        *(v73 + 103) = *(v73 + 103) + fmin(-log((v100 + v100) * *&v240), -8.0);
                        if (qword_1025D4770 != -1)
                        {
                          sub_100224830();
                        }

                        v117 = qword_1025D4778;
                        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                        {
                          v118 = *v7;
                          v119 = *(v73 + 212);
                          v120 = *(v73 + 103);
                          *buf = v190;
                          *v248 = v118;
                          *&v248[8] = 1024;
                          *&v248[10] = v119;
                          v249 = 2048;
                          v250 = v120;
                          _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update uniform walkout aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", buf, 0x1Cu);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101A7B5F4(buf);
                          v121 = *v7;
                          v122 = *(v73 + 212);
                          v123 = *(v73 + 103);
                          v224 = v190;
                          v225 = v121;
                          v226 = 1024;
                          v227 = v122;
                          v228 = 2048;
                          v229 = v123;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update uniform walkout aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", COERCE_DOUBLE(&v224), 28, v182);
                          v125 = v124;
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v124);
                          if (v125 != buf)
                          {
                            free(v125);
                          }
                        }
                      }
                    }

                    else
                    {
                      v103 = v77;
                      v104 = *&v240;
                      v105 = erf((v100 - v93) / *&v240);
                      v106 = erf((-v100 - v93) / v104);
                      v107 = log(v105 - v106);
                      *(v73 + 103) = *(v73 + 103) + v107 - log((v100 + v100) * v104);
                      if (qword_1025D4770 != -1)
                      {
                        sub_100224830();
                      }

                      v108 = qword_1025D4778;
                      v77 = v103;
                      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                      {
                        v109 = *v7;
                        v110 = *(v73 + 212);
                        v111 = *(v73 + 103);
                        *buf = v190;
                        *v248 = v109;
                        *&v248[8] = 1024;
                        *&v248[10] = v110;
                        v249 = 2048;
                        v250 = v111;
                        _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update uniform aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", buf, 0x1Cu);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101A7B5F4(buf);
                        v112 = *v7;
                        v113 = *(v73 + 212);
                        v114 = *(v73 + 103);
                        v224 = v190;
                        v225 = v112;
                        v226 = 1024;
                        v227 = v113;
                        v228 = 2048;
                        v229 = v114;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update uniform aposteriori,time_mct,%.3f,hID,%d,logLikelihood,%.5f", COERCE_DOUBLE(&v224), 28, v182);
                        v116 = v115;
                        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v115);
                        if (v116 != buf)
                        {
                          free(v116);
                        }

                        v77 = v103;
                      }
                    }
                  }

                  else
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v88 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v89 = *v7;
                      v90 = *(v73 + 212);
                      *buf = 134218240;
                      *v248 = v89;
                      *&v248[8] = 1024;
                      *&v248[10] = v90;
                      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEBUG, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", buf, 0x12u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v130 = *v7;
                      v131 = *(v73 + 212);
                      v224 = 134218240;
                      v225 = v130;
                      v226 = 1024;
                      v227 = v131;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,time_mct,%.3f,Hypothesis %d does not have a valid estimate", COERCE_DOUBLE(&v224), 18);
                      v133 = v132;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v132);
                      if (v133 != buf)
                      {
                        free(v133);
                      }
                    }

                    v24 = 0;
                  }
                }
              }
            }

            v73 = *v73;
          }

          while (v73);
        }
      }

      if (!v24 || !sub_10024B964(a1))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v177 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v177, OS_LOG_TYPE_DEBUG, "#selection,Likelihood update failed. Resetting all likelihoods to be equal", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v238) = 0;
          LODWORD(v180) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,Likelihood update failed. Resetting all likelihoods to be equal", &v238, *&v180);
          v179 = v178;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v178);
          if (v179 != buf)
          {
            free(v179);
          }
        }

        sub_100D713B0(a1);
        return 0;
      }

      return 1;
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "#Error,fusion likelihood update, calc_dNdE failed", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101A7B5F4(buf);
      LOWORD(v238) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion likelihood update, calc_dNdE failed", &v238, 2);
      v19 = v21;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v21);
LABEL_25:
      if (v19 != buf)
      {
        free(v19);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#selection,No valid hypothesis available for likelihood update", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101A7B5F4(buf);
      LOWORD(v238) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#selection,No valid hypothesis available for likelihood update", &v238, 2);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::updateHypothesesLikelihoods(const LCFusionProviderLocation &)", "%s\n", v18);
      goto LABEL_25;
    }
  }

  return result;
}

void sub_100211EB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100211EF8(uint64_t a1)
{
  v3 = (a1 + 248);
  v2 = *(a1 + 248);
  if (v2)
  {
    do
    {
      sub_100207D3C((v2 + 1), (a1 + 200));
      v2 = *v2;
    }

    while (v2);
    v4 = *v3;
    *buf = 0;
    if (v4)
    {
      v5 = v3;
      do
      {
        v6 = sub_10021BE40((v4 + 1));
        v7 = *v5;
        if (v6)
        {
          do
          {
            v7 = *v7;
          }

          while (v7 && sub_10021BE40((v7 + 1)));
          if (buf != v5 && v5 != v7)
          {
            v8 = v5;
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8 != v7);
            if (v9 != v5)
            {
              *v9 = *buf;
              *buf = *v5;
              *v5 = v7;
            }
          }

          if (!v7)
          {
            break;
          }
        }

        v4 = *v7;
        v5 = v7;
      }

      while (*v7);
    }
  }

  else
  {
    *buf = 0;
  }

  v53 = v3;
  sub_10020AB0C(buf);
  v11 = (a1 + 224);
  v12 = *(a1 + 224);
  v13 = (a1 + 232);
  if (v12 != (a1 + 232))
  {
    do
    {
      sub_100207D3C((v12 + 5), (a1 + 200));
      if (v12[12])
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v12[2];
            v16 = *v15 == v12;
            v12 = v15;
          }

          while (!v16);
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v17 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(v12 + 220);
          v19 = sub_1001FD6E4(*(v12 + 8));
          *buf = 67240450;
          *&buf[4] = v18;
          *&buf[8] = 2082;
          *&buf[10] = v19;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#fusion,purging,provider specific hypothesis with empty buffer is erased,hID,%{public}d,type,%{public}s", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v20 = qword_1025D4778;
          v21 = *(v12 + 220);
          v22 = sub_1001FD6E4(*(v12 + 8));
          *v57 = 67240450;
          *&v57[4] = v21;
          *&v57[8] = 2082;
          *&v57[10] = v22;
          LODWORD(v52) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 2, "#fusion,purging,provider specific hypothesis with empty buffer is erased,hID,%{public}d,type,%{public}s", v57, v52);
          v24 = v23;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }

        v15 = sub_10045E8A0((a1 + 224), v12);
        sub_1008572E0((v12 + 5));
        operator delete(v12);
      }

      v12 = v15;
    }

    while (v15 != v13);
  }

  v56 = a1;
  *v57 = 0;
  *buf = a1;
  v25 = *(a1 + 248);
  if (v25)
  {
    v26 = v3;
    do
    {
      v27 = sub_10021274C(buf, (v25 + 1), v10);
      v28 = *v26;
      if (v27)
      {
        do
        {
          v28 = *v28;
        }

        while (v28 && sub_10021274C(buf, (v28 + 1), v10));
        if (v57 != v26 && v26 != v28)
        {
          v29 = v26;
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29 != v28);
          if (v30 != v26)
          {
            *v30 = *v57;
            *v57 = *v26;
            *v26 = v28;
          }
        }

        if (!v28)
        {
          break;
        }
      }

      v25 = *v28;
      v26 = v28;
    }

    while (*v28);
  }

  sub_10020AB0C(v57);
  v32 = *v11;
  if (*v11 != v13)
  {
    do
    {
      if (sub_10021274C(&v56, (v32 + 5), v31))
      {
        v33 = sub_10045E8A0((a1 + 224), v32);
        sub_1008572E0((v32 + 5));
        operator delete(v32);
      }

      else
      {
        v34 = v32[1];
        if (v34)
        {
          do
          {
            v33 = v34;
            v34 = *v34;
          }

          while (v34);
        }

        else
        {
          do
          {
            v33 = v32[2];
            v16 = *v33 == v32;
            v32 = v33;
          }

          while (!v16);
        }
      }

      v32 = v33;
    }

    while (v33 != v13);
  }

  v55 = a1;
  v35 = *(a1 + 248);
  if (v35)
  {
    v36 = 0;
    do
    {
      ++v36;
      v35 = *v35;
    }

    while (v35);
    if ((v36 - 1) >= 0xC)
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v37 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *&buf[4] = v36;
        *&buf[12] = 2050;
        *&buf[14] = 12;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#fusion,purging,maximum number of fused hypotheses reached,number,%{public}zu,max,%{public}zu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *v57 = 134349312;
        *&v57[4] = v36;
        *&v57[12] = 2050;
        *&v57[14] = 12;
        LODWORD(v52) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,purging,maximum number of fused hypotheses reached,number,%{public}zu,max,%{public}zu", v57, v52);
        v51 = v50;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v50);
        if (v51 != buf)
        {
          free(v51);
        }
      }

      v54 = v36 - 12;
      sub_100D6FBB0(&v55, &v54, 0);
      if (v54 >= 1)
      {
        sub_100D6FBB0(&v55, &v54, 4);
        if (v54 >= 1)
        {
          sub_100D6FBB0(&v55, &v54, 3);
          if (v54 >= 1)
          {
            sub_100D6FBB0(&v55, &v54, 1);
            if (v54 >= 1)
            {
              v38 = 13;
              v39 = v53;
              do
              {
                v39 = *v39;
                --v38;
              }

              while (v38 > 1);
              for (; v39; v39 = *v39)
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v40 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v41 = *(v39 + 64);
                  if (v41)
                  {
                    v42 = *(*(*(v39 + 32) + 8 * ((v41 + *(v39 + 56) - 1) / 0x1AuLL)) + 152 * ((v41 + *(v39 + 56) - 1) % 0x1AuLL) + 32);
                  }

                  else
                  {
                    v42 = 0xBFF0000000000000;
                  }

                  v43 = *(v39 + 848);
                  *buf = 67240704;
                  *&buf[4] = v43;
                  *&buf[8] = 2050;
                  *&buf[10] = v42;
                  *&buf[18] = 2050;
                  *&buf[20] = v41;
                  _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#fusion,purging,active fused hypothesis deleted,hID,%{public}d,lastFusedLocation_mct,%{public}.3f,bufferSize,%{public}zu", buf, 0x1Cu);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4770 != -1)
                  {
                    sub_100224830();
                  }

                  v44 = *(v39 + 848);
                  v45 = *(v39 + 64);
                  if (v45)
                  {
                    v46 = *(*(*(v39 + 32) + 8 * ((v45 + *(v39 + 56) - 1) / 0x1AuLL)) + 152 * ((v45 + *(v39 + 56) - 1) % 0x1AuLL) + 32);
                  }

                  else
                  {
                    v46 = 0xBFF0000000000000;
                  }

                  *v57 = 67240704;
                  *&v57[4] = v44;
                  *&v57[8] = 2050;
                  *&v57[10] = v46;
                  *&v57[18] = 2050;
                  *&v57[20] = v45;
                  LODWORD(v52) = 28;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,purging,active fused hypothesis deleted,hID,%{public}d,lastFusedLocation_mct,%{public}.3f,bufferSize,%{public}zu", v57, v52);
                  v48 = v47;
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesPurging()", "%s\n", v47);
                  if (v48 != buf)
                  {
                    free(v48);
                  }
                }
              }

              sub_100D6FEB8(v53, 0, 0);
            }
          }
        }
      }
    }
  }

  return 1;
}

void sub_1002126FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10037EA9C(exception_object);
}

uint64_t sub_10021274C(uint64_t *a1, uint64_t a2, __n128 a3)
{
  if (!*(a2 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a2 + 840);
      *buf = 67240192;
      v50 = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#fusion,purging,hypothesis with empty buffer is erased,hID,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B8F4(a2);
    }

    return 1;
  }

  v4 = *a1;
  a3.n128_u64[0] = *(*a1 + 200);
  v5 = sub_100215A40(a2, a3);
  if (*(a2 + 848) == 1 && v5 > 15.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v20 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a2 + 840);
      v22 = *(a2 + 848);
      v23 = *(a2 + 56);
      *buf = 67241216;
      v50 = v21;
      v51 = 1026;
      *v52 = v22;
      *&v52[4] = 2050;
      *&v52[6] = v23;
      *&v52[14] = 2050;
      *&v52[16] = v5;
      v53 = 2050;
      v54 = 0x402E000000000000;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#fusion,purging,stale tentative hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f", buf, 0x2Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_27;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v35 = *(a2 + 840);
    v36 = *(a2 + 848);
    v37 = *(a2 + 56);
    LODWORD(__p) = 67241216;
    HIDWORD(__p) = v35;
    v43 = 1026;
    *v44 = v36;
    *&v44[4] = 2050;
    *&v44[6] = v37;
    *&v44[14] = 2050;
    *&v44[16] = v5;
    v45 = 2050;
    v46 = 0x402E000000000000;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,purging,stale tentative hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f", &__p, 44);
    v17 = v38;
    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v38);
LABEL_55:
    if (v17 != buf)
    {
      free(v17);
    }

    goto LABEL_27;
  }

  if (v5 <= 30.0)
  {
    return 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v7 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a2 + 840);
    v9 = *(a2 + 848);
    v10 = *(a2 + 56);
    v11 = *(a2 + 844);
    *buf = 67241472;
    v50 = v8;
    v51 = 1026;
    *v52 = v9;
    *&v52[4] = 2050;
    *&v52[6] = v10;
    *&v52[14] = 2050;
    *&v52[16] = v5;
    v53 = 2050;
    v54 = 0x403E000000000000;
    v55 = 1026;
    v56 = v11;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#fusion,purging,stale hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f,numLostDataAssociation,%{public}u", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v12 = *(a2 + 840);
    v13 = *(a2 + 848);
    v14 = *(a2 + 56);
    v15 = *(a2 + 844);
    LODWORD(__p) = 67241472;
    HIDWORD(__p) = v12;
    v43 = 1026;
    *v44 = v13;
    *&v44[4] = 2050;
    *&v44[6] = v14;
    *&v44[14] = 2050;
    *&v44[16] = v5;
    v45 = 2050;
    v46 = 0x403E000000000000;
    v47 = 1026;
    v48 = v15;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,purging,stale hypothesis is erased,hID,%{public}d,State,%{public}d,bufferSize,%{public}zu,age,%{public}.2f,maxAge,%{public}.2f,numLostDataAssociation,%{public}u", &__p, 50);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v16);
    goto LABEL_55;
  }

LABEL_27:
  if (!*(v4 + 1104) || *(a2 + 840) != *(v4 + 1096) || !sub_100125424(v4 + 2424, *(v4 + 200), -1.0) || *(v4 + 200) - *(v4 + 256) >= 900.0)
  {
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v24 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(a2 + 840);
    v26 = *(v4 + 200) - *(v4 + 256);
    sub_1001FCE40(v4 + 2424, &__p);
    v27 = v44[13] >= 0 ? &__p : __p;
    *buf = 67240706;
    v50 = v25;
    v51 = 2050;
    *v52 = v26;
    *&v52[8] = 2082;
    *&v52[10] = v27;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,purging skipped,to avoid losing the selected/yielding hypothesis,hID,%{public}d,elapsed time since last location update_s,%{public}.1f,LatestMotionActivity,%{public}s", buf, 0x1Cu);
    if ((v44[13] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v29 = qword_1025D4778;
    v30 = *(a2 + 840);
    v31 = *(v4 + 200) - *(v4 + 256);
    sub_1001FCE40(v4 + 2424, v40);
    if (v41 >= 0)
    {
      v32 = v40;
    }

    else
    {
      v32 = v40[0];
    }

    LODWORD(__p) = 67240706;
    HIDWORD(__p) = v30;
    v43 = 2050;
    *v44 = v31;
    *&v44[8] = 2082;
    *&v44[10] = v32;
    LODWORD(v39) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 2, "#fusion,purging skipped,to avoid losing the selected/yielding hypothesis,hID,%{public}d,elapsed time since last location update_s,%{public}.1f,LatestMotionActivity,%{public}s", &__p, v39);
    v34 = v33;
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "auto cllcf::CLLCFusion::performHypothesesPurging()::(anonymous class)::operator()(const LCFusionLocationHypothesis &) const", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }

    return 0;
  }

  return result;
}

unint64_t *sub_100212DE4(unint64_t *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a2[4];
    v4 = a2[1];
    if (a2[2] == v4)
    {
      v5 = 0;
      v8 = 0;
      v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v5 = (*(v4 + 8 * (v3 / 0x1A)) + 152 * (v3 % 0x1A));
      v6 = a2[5] + v3;
      v7 = (v4 + 8 * (v6 / 0x1A));
      v8 = (*v7 + 152 * (v6 % 0x1A));
    }

    sub_100207E00(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  }

  return a1;
}

uint64_t *sub_100212E9C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100212F7C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 2880) - 3) >= 2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "#Error,get fused location failed, Fusion is not in the running state", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101A7B5F4(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,get fused location failed, Fusion is not in the running state", v19, 2);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v11);
LABEL_31:
    if (v12 != buf)
    {
      free(v12);
    }

    return 0;
  }

  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  if (!*(a1 + 1284))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#Error,getFusedLocation,fused location type is Unknown", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101A7B5F4(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,getFusedLocation,fused location type is Unknown", v19, 2);
    v12 = v14;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v14);
    goto LABEL_31;
  }

  if (*(a1 + 1200) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Error,getFusedLocation,get fused location: failed, hunc <= 0", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101A7B5F4(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,getFusedLocation,get fused location: failed, hunc <= 0", v19, 2);
    v12 = v16;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v16);
    goto LABEL_31;
  }

  if (sub_10002790C(a1 + 1160, a2))
  {
    *(a2 + 88) = *(a1 + 104);
    *(a2 + 84) = *(a1 + 100);
    *a2 = *(a1 + 16);
    *(a2 + 124) = *(a1 + 140);
    *(a2 + 100) = *(a1 + 116);
    *(a2 + 116) = *(a1 + 132);
    *(a2 + 144) = *(a1 + 160);
    *(a2 + 136) = *(a1 + 152);
    *(a2 + 152) = *(a1 + 168);
    result = 1;
    *(a2 + 132) = 1;
    return result;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v17 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#fusion,getFusedLocation,failed to convert to daemon location", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    v19[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,getFusedLocation,failed to convert to daemon location", v19, 2);
    v12 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::getFusedLocation(CLDaemonLocation &) const", "%s\n", v18);
    goto LABEL_31;
  }

  return result;
}

void sub_100213470(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10021347C(uint64_t a1)
{
  result = *(a1 + 280);
  if (result)
  {
    return (*(*result + 160))();
  }

  return result;
}

uint64_t sub_1002134AC(uint64_t a1)
{
  v1 = *(a1 + 4344);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 128);
  }

  return v1 & 1;
}

uint64_t sub_1002134C0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  result = *(a1 + 4344);
  if (result)
  {
    return sub_10020DB20(result, a2, a3, a4);
  }

  return result;
}

void sub_1002134D0(uint64_t a1, __int128 *a2, uint64_t a3, __n128 a4)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 32))
    {
      goto LABEL_3;
    }

    if (*(a1 + 130) != 1)
    {
      return;
    }

    if ((*(a1 + 152) & 1) != 0 || ((a4.n128_u64[0] = *(a1 + 11704), v14 = vabdd_f64(*(a3 + 32), a4.n128_f64[0]), a4.n128_f64[0] > 0.0) ? (v15 = v14 <= 24.0) : (v15 = 0), v15))
    {
LABEL_3:
      if (*(a1 + 129) == 1)
      {
        sub_1001F348C(&v37);
        sub_10081F970(a2, &v37);
        sub_1001F4008(&buf);
        sub_1008205DC(a3, &buf);
        v7 = sub_101138B44();
        sub_101139530(v7, &v37, &buf, 0);
        sub_1004246B0(&buf);
        sub_100421AA0(&v37);
      }

      if (*(a1 + 130) == 1)
      {
        sub_101015620((a1 + 152), a2, a3, a4);
      }

      if (*(a1 + 32) == 1 && (*(a1 + 13792) & 1) == 0)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10196E618();
        }

        v8 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLVC,handleLocationNotification,Download DEM tiles", &buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196E5D4(&buf);
          LOWORD(v37) = 0;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVC,handleLocationNotification,Download DEM tiles", &v37, 2);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 2, "void CLVisionController::handleLocationNotification(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v20);
          if (v21 != &buf)
          {
            free(v21);
          }
        }

        v9 = a2[7];
        v34 = a2[6];
        v35 = v9;
        v36[0] = a2[8];
        *(v36 + 12) = *(a2 + 140);
        v10 = a2[3];
        v30 = a2[2];
        v31 = v10;
        v11 = a2[5];
        v32 = a2[4];
        v33 = v11;
        v12 = a2[1];
        v28 = *a2;
        v29 = v12;
        v13 = *(a1 + 24);
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v26 = sub_100905DF4;
        v27 = &unk_10246A7A0;
        [v13 downloadIfNeeded:objc_msgSend(&buf signalQuality:"copy") allowCenterOverCellular:0 ringsToDownloadOverCellular:{1, 1}];
        *(a1 + 13792) = 1;
      }
    }

    else if (a4.n128_f64[0] > 0.0)
    {
      if (*(a1 + 129) == 1)
      {
        sub_1001F348C(&v37);
        sub_10081F970(a2, &v37);
        sub_1001F4008(&buf);
        sub_1008205DC(a3, &buf);
        v16 = sub_101138B44();
        sub_101139530(v16, &v37, &buf, 0);
        v17 = sub_101138B44();
        sub_10106A17C(v17);
        sub_1004246B0(&buf);
        sub_100421AA0(&v37);
      }

      sub_10101085C(a1 + 152, a4);
      if (qword_1025D46A0 != -1)
      {
        sub_10196E618();
      }

      v18 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a3 + 32);
        LODWORD(buf) = 134349056;
        *(&buf + 4) = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLVC,handleLocationNotification,manual location fuser reset,machAbsTime,%{public}.3lf", &buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196E5D4(&buf);
        v22 = *(a3 + 32);
        v37 = 134349056;
        v38 = v22;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVC,handleLocationNotification,manual location fuser reset,machAbsTime,%{public}.3lf", &v37, 12);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLVisionController::handleLocationNotification(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v23);
        if (v24 != &buf)
        {
          free(v24);
        }
      }
    }
  }
}

void sub_100213940(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10021394C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 4344);
  if (v3)
  {
    sub_10021395C(v3, a2, a3);
  }
}

void sub_10021395C(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (*(result + 128) == 1)
  {
    if ((*(result + 32) & 1) != 0 || *(result + 130) == 1 && ((*(result + 152) & 1) != 0 || ((v6 = *(result + 11704), v7 = vabdd_f64(*(a3 + 32), v6), v6 > 0.0) ? (v8 = v7 <= 24.0) : (v8 = 0), v8)))
    {
      if (*(result + 129) == 1)
      {
        sub_1001F348C(v10);
        sub_10081F970(a2, v10);
        sub_1001F4008(v9);
        sub_1008205DC(a3, v9);
        v5 = sub_101138B44();
        sub_101139530(v5, v10, v9, 1);
        sub_1004246B0(v9);
        sub_100421AA0(v10);
      }
    }
  }
}

void sub_100213A34(double *a1, uint64_t a2)
{
  v6 = 0;
  v5[0] = a2;
  v5[1] = &v6 + 1;
  v5[2] = &v6;
  sub_10000EC00(__p, "InAWeek");
  sub_100213BCC(v5, @"CLBaroAltCalibrationCountMMForAWeek", @"CLBaroAltCalibrationCountOutdoorContextForAWeek", @"CLBaroAltAppropriateToCalibrateCountForAWeek", @"CLBaroAltCalibrationCountOnlyUsedDEMForAWeek", @"CLBaroAltCalibrationCountUsedDEMandRefPressureForAWeek", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeForAWeek", __p, a1[465], (a1 + 451), a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(__p, "InAMonth");
  sub_100213BCC(v5, @"CLBaroAltCalibrationCountMMForAMonth", @"CLBaroAltCalibrationCountOutdoorContextForAMonth", @"CLBaroAltAppropriateToCalibrateCountForAMonth", @"CLBaroAltCalibrationCountOnlyUsedDEMForAMonth", @"CLBaroAltCalibrationCountUsedDEMandRefPressureForAMonth", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeForAMonth", __p, a1[466], (a1 + 455), a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000EC00(__p, "In3Months");
  sub_100213BCC(v5, @"CLBaroAltCalibrationCountMMFor3Months", @"CLBaroAltCalibrationCountOutdoorContextFor3Months", @"CLBaroAltAppropriateToCalibrateCountFor3Months", @"CLBaroAltCalibrationCountOnlyUsedDEMFor3Months", @"CLBaroAltCalibrationCountUsedDEMandRefPressureFor3Months", @"CLBaroAltCalibrationStartMonitoringCFAbsTimeFor3Months", __p, a1[467], (a1 + 459), a1);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100213BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100213BCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, void ***a8, double a9, uint64_t a10, uint64_t *a11)
{
  v78 = sub_1000081AC();
  if (*a11)
  {
    v15 = sub_100020640(*a11, &v78);
    v16 = sub_100021618(v15, *(a10 + 24), 315360000.0);
  }

  else
  {
    v16 = 0.0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100312410();
  }

  v17 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    if (*(a8 + 23) >= 0)
    {
      v18 = a8;
    }

    else
    {
      v18 = *a8;
    }

    *buf = 136315650;
    *&buf[4] = v18;
    *&buf[12] = 2050;
    *&buf[14] = v16;
    *&buf[22] = 2050;
    v97 = a9;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,uploadToAnalyticsCheck,durationSinceStartMonitoringTimeSec,%{public}.3lf,baroAltCalibrationUploadThreshold,%{public}.3lf", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    if (*(a8 + 23) >= 0)
    {
      v67 = a8;
    }

    else
    {
      v67 = *a8;
    }

    v79 = 136315650;
    v80[0] = v67;
    LOWORD(v80[1]) = 2050;
    *(&v80[1] + 2) = v16;
    WORD1(v80[2]) = 2050;
    *(&v80[2] + 4) = a9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,uploadToAnalyticsCheck,durationSinceStartMonitoringTimeSec,%{public}.3lf,baroAltCalibrationUploadThreshold,%{public}.3lf", &v79, 32);
    v69 = v68;
    sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const std::string &, const double, BarometricAltitudeCalibrationAnalyticsData &, const std::unique_ptr<CLBarometricAltimeterCore> &) const", "%s\n", v68);
    if (v69 != buf)
    {
      free(v69);
    }
  }

  if (fabs(v16) > a9)
  {
    *(v80 + 4) = 0xBFF0000000000000;
    memset(&v80[1] + 4, 0, 60);
    LOBYTE(v79) = 1;
    if (*a11)
    {
      *(v80 + 4) = sub_100020640(*a11, &v78);
      if (SBYTE3(v80[4]) < 0)
      {
        *(&v80[2] + 4) = 19;
        v19 = *(&v80[1] + 4);
        goto LABEL_18;
      }
    }

    else
    {
      *(v80 + 4) = 0;
    }

    v19 = &v80[1] + 4;
    BYTE3(v80[4]) = 19;
LABEL_18:
    strcpy(v19, "com.apple.locationd");
    HIDWORD(v80[4]) = vcvtad_u64_f64(v16);
    *&v80[5] = *a10;
    LODWORD(v80[7]) = *(a10 + 16);
    v20 = (*a1 + 4);
    *(&v80[7] + 4) = vcvt_f32_f64(*v20);
    sub_100226520(v20->f64, &v20->f64[1], &v80[8] + 1);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (*(a8 + 23) >= 0)
      {
        v22 = a8;
      }

      else
      {
        v22 = *a8;
      }

      *buf = 136317443;
      *&buf[4] = v22;
      *&buf[12] = 1024;
      *&buf[14] = HIDWORD(v80[4]);
      *&buf[18] = 1024;
      *&buf[20] = v80[5];
      LOWORD(v97) = 1024;
      *(&v97 + 2) = HIDWORD(v80[5]);
      HIWORD(v97) = 1024;
      *v98 = v80[6];
      *&v98[4] = 1024;
      *&v98[6] = HIDWORD(v80[6]);
      v99 = 1024;
      v100 = v80[7];
      v101 = 2053;
      v102 = *(&v80[7] + 1);
      v103 = 2053;
      v104 = *&v80[8];
      v105 = 1029;
      v106 = HIDWORD(v80[8]);
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#gnssca Submit BaroAltitudeCalibrationInfo session metric to CA,%s,durationSinceStartMonitoringTimeSec,%d,calibrationCountMM,%d,calibrationCountOutdoorContext,%d,appropriateToCalibrateCount,%d,calibrationCountOnlyUsedDEM,%d,calibrationCountUsedDEMandRefPressure,%d,deresFinalLatitude,%{sensitive}.7f,deresFinalLongitude,%{sensitive}.7f,deweightedAreaID,%{sensitive}d", buf, 0x4Au);
    }

    v23 = sub_10000A100(121, 2);
    if (v23)
    {
      sub_101745A7C(buf);
      v70 = *(a8 + 23) >= 0 ? a8 : *a8;
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136317443;
      *(__dst.__r_.__value_.__r.__words + 4) = v70;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = HIDWORD(v80[4]);
      WORD1(__dst.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(__dst.__r_.__value_.__r.__words[2]) = v80[5];
      v82 = 1024;
      v83 = HIDWORD(v80[5]);
      v84 = 1024;
      v85 = v80[6];
      v86 = 1024;
      v87 = HIDWORD(v80[6]);
      v88 = 1024;
      v89 = v80[7];
      v90 = 2053;
      v91 = *(&v80[7] + 1);
      v92 = 2053;
      v93 = *&v80[8];
      v94 = 1029;
      v95 = HIDWORD(v80[8]);
      LODWORD(v77) = 74;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#gnssca Submit BaroAltitudeCalibrationInfo session metric to CA,%s,durationSinceStartMonitoringTimeSec,%d,calibrationCountMM,%d,calibrationCountOutdoorContext,%d,appropriateToCalibrateCount,%d,calibrationCountOnlyUsedDEM,%d,calibrationCountUsedDEMandRefPressure,%d,deresFinalLatitude,%{sensitive}.7f,deresFinalLongitude,%{sensitive}.7f,deweightedAreaID,%{sensitive}d", &__dst, v77);
      v72 = v71;
      v23 = sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CLDaemonStats_Type::BarometricAltitudeCalibrationData &, const std::string &) const", "%s\n", v71);
      if (v72 != buf)
      {
        free(v72);
      }
    }

    memset(&__dst, 0, sizeof(__dst));
    v25 = *(a8 + 23);
    if ((v25 & 0x80) != 0)
    {
      v27 = a8[1];
      if (v27 != 7)
      {
        if (v27 != 8)
        {
          if (v27 != 9)
          {
            goto LABEL_64;
          }

          v26 = *a8;
          goto LABEL_35;
        }

        v33 = **a8;
LABEL_49:
        if (v33 != 0x68746E6F4D416E49)
        {
          goto LABEL_64;
        }

        v31 = "com.apple.locationd.position.BaroAltitudeCalibrationInAMonth";
        v32 = 60;
        goto LABEL_57;
      }

      if (**a8 != 1463905865 || *(*a8 + 3) != 1801807191)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v25 != 7)
      {
        if (v25 != 8)
        {
          v26 = a8;
          if (v25 != 9)
          {
            goto LABEL_64;
          }

LABEL_35:
          v28 = *v26;
          v29 = *(v26 + 8);
          if (v28 != 0x68746E6F4D336E49 || v29 != 115)
          {
            goto LABEL_64;
          }

          v31 = "com.apple.locationd.position.BaroAltitudeCalibrationIn3Months";
          v32 = 61;
          goto LABEL_57;
        }

        v33 = *a8;
        goto LABEL_49;
      }

      if (*a8 != 1463905865 || *(a8 + 3) != 1801807191)
      {
        goto LABEL_64;
      }
    }

    v31 = "com.apple.locationd.position.BaroAltitudeCalibrationInfo";
    v32 = 56;
LABEL_57:
    v23 = sub_100006BE0(&__dst, v31, v32);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
      if (!__dst.__r_.__value_.__l.__size_)
      {
LABEL_63:
        operator delete(p_dst);
        goto LABEL_64;
      }
    }

    else
    {
      if (!*(&__dst.__r_.__value_.__s + 23))
      {
        goto LABEL_64;
      }

      p_dst = &__dst;
    }

    [NSString stringWithUTF8String:p_dst];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1017447D0;
    v97 = COERCE_DOUBLE(&unk_102449CF8);
    *v98 = &v79;
    v23 = AnalyticsSendEventLazy();
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
      goto LABEL_63;
    }

LABEL_64:
    v37 = sub_1000206B4(v23, v24);
    v38 = sub_1004FA94C(v37);
    v40 = sub_1000206B4(v38, v39);
    v41 = sub_1004FA94C(v40);
    v43 = sub_1000206B4(v41, v42);
    v44 = sub_1004FA94C(v43);
    v46 = sub_1000206B4(v44, v45);
    v47 = sub_1004FA94C(v46);
    v49 = sub_1000206B4(v47, v48);
    v50 = sub_1004FA94C(v49);
    v52 = sub_1000206B4(v50, v51);
    v53 = sub_1004FA94C(v52);
    v55 = sub_1000206B4(v53, v54);
    (*(*v55 + 944))(v55);
    *(a10 + 24) = 0;
    v57 = (a10 + 24);
    *a10 = 0;
    *(a10 + 8) = 0;
    *(a10 + 16) = 0;
    v58 = *a11;
    if (*a11)
    {
      v59 = sub_100020640(v58, &v78);
    }

    else
    {
      v59 = 0.0;
    }

    *v57 = v59;
    v60 = sub_1000206B4(v58, v56);
    v61 = sub_100116DD4(v60, a7, (a10 + 24));
    v63 = sub_1000206B4(v61, v62);
    (*(*v63 + 944))(v63);
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v64 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      if (*(a8 + 23) >= 0)
      {
        v65 = a8;
      }

      else
      {
        v65 = *a8;
      }

      v66 = *v57;
      *buf = 136315394;
      *&buf[4] = v65;
      *&buf[12] = 2050;
      *&buf[14] = v66;
      _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_INFO, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,RestoreStartMonitoringCalibrationTimeForAnalytics,%{public}lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101745A7C(buf);
      if (*(a8 + 23) >= 0)
      {
        v73 = a8;
      }

      else
      {
        v73 = *a8;
      }

      v74 = *v57;
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
      *(__dst.__r_.__value_.__r.__words + 4) = v73;
      WORD2(__dst.__r_.__value_.__r.__words[1]) = 2050;
      *(&__dst.__r_.__value_.__r.__words[1] + 6) = v74;
      LODWORD(v77) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,%s,BarometricAltitudeCalibrationAnalyticsData,RestoreStartMonitoringCalibrationTimeForAnalytics,%{public}lf", &__dst, v77);
      v76 = v75;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLBarometricAltimeter::submitCalibrationAnalyticsData(const CLDaemonLocation &)::(anonymous class)::operator()(const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const CFStringRef, const std::string &, const double, BarometricAltitudeCalibrationAnalyticsData &, const std::unique_ptr<CLBarometricAltimeterCore> &) const", "%s\n", v75);
      if (v76 != buf)
      {
        free(v76);
      }
    }

    if (SBYTE3(v80[4]) < 0)
    {
      operator delete(*(&v80[1] + 4));
    }
  }
}

void sub_100214510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100214550(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a2 + 384);
  if (v3 > 0.0 && v3 < 12.0)
  {
    v5 = *a3;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_100214578(double *result, double *a2, uint64_t a3, double *a4, void *a5)
{
  if (*result)
  {
    if (result[269] <= result[255])
    {
      v9 = *(result + 255);
    }

    else
    {
      v9 = *(result + 269);
    }

    v10 = sub_100020640(*result, a2);
    *a4 = sub_100021618(v10, *&v9, -1.0);
    v11 = *result;

    sub_100217A60(*&v11, a5, a3);
  }

  else
  {
    *a4 = -1.0;
    *a5 = 0xBFF0000000000000;
  }
}

double sub_100214630(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  v8 = *(a3 + 316);
  v9 = fabs(v8);
  if ((*(a3 + 312) - 1) > 0xFFFFFFFD || v9 <= 2.22044605e-16)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "BaroAlt,invalid undulation model, use last known best undulation", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016BC030();
    }

    sub_100214CE0(*(a1 + 592), (a1 + 192), (a1 + 200), v5);
    v12 = *(a3 + 376) + *(a1 + 192);
  }

  else
  {
    v12 = *(a3 + 376) + v8;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1016BBF2C();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v14 = *(a2 + 64);
    v15 = *(a3 + 376);
    v16 = *(a3 + 316);
    v17 = *(a3 + 312);
    v18 = *(a1 + 192);
    v19 = *(a1 + 200);
    *buf = 134350593;
    v44 = v14;
    v45 = 2049;
    v46 = v12;
    v47 = 2049;
    v48 = v15;
    v49 = 2050;
    v50 = v16;
    v51 = 1026;
    v52 = v17;
    v53 = 2050;
    v54 = v18;
    v55 = 1026;
    v56 = v19;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "BaroAlt,compute wgs84 altitude for calibration,time,%{public}.lf,groundAltitudeWgs84,%{private}.3lf,groundAltitude,%{private}.3lf,undulationIn,%{public}.3lf,undulationInModel,%{public}d,storedUndulation,%{public}.3lf,storedUndulationModel,%{public}d", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1016BBF2C();
    }

    v21 = *(a2 + 64);
    v22 = *(a3 + 376);
    v23 = *(a3 + 316);
    v24 = *(a3 + 312);
    v25 = *(a1 + 192);
    v26 = *(a1 + 200);
    v29 = 134350593;
    v30 = v21;
    v31 = 2049;
    v32 = v12;
    v33 = 2049;
    v34 = v22;
    v35 = 2050;
    v36 = v23;
    v37 = 1026;
    v38 = v24;
    v39 = 2050;
    v40 = v25;
    v41 = 1026;
    v42 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,compute wgs84 altitude for calibration,time,%{public}.lf,groundAltitudeWgs84,%{private}.3lf,groundAltitude,%{private}.3lf,undulationIn,%{public}.3lf,undulationInModel,%{public}d,storedUndulation,%{public}.3lf,storedUndulationModel,%{public}d", &v29, 64);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "double CLBarometricAltimeterCore::getGroundAltInWgs84(const CLBaroAltEstimatorInput &, const CFAbsoluteTime, const CLDaemonLocationPrivate &)", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  return v12;
}

void sub_100214948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 12);
  if (v5 < -180.0 || (v6 = *(a3 + 4), fabs(v6) > 90.0) || v5 > 180.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a2 + 64);
      v16 = *(a3 + 4);
      v17 = *(a3 + 12);
      *buf = 134349569;
      v32 = v15;
      v33 = 2053;
      v34 = v16;
      v35 = 2053;
      v36 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "BaroAlt,#Warning,time,%{public}lf,invalid location for DMA undulation look up,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v20 = *(a2 + 64);
      v21 = *(a3 + 4);
      v22 = *(a3 + 12);
      v25 = 3.9124e-34;
      v26 = v20;
      v27 = 2053;
      v28 = v21;
      v29 = 2053;
      v30 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "BaroAlt,#Warning,time,%{public}lf,invalid location for DMA undulation look up,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", &v25, 32);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 0, "void CLBarometricAltimeterCore::lookUpDMAUndulationIfNeeded(CLBaroAltEstimatorInput &, const CLDaemonLocation &)", "%s\n", v23);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  else
  {
    v8 = (a1 + 192);
    v9 = (a1 + 200);
    v10 = fabs(*(a1 + 192));
    if ((*(a1 + 200) - 1) > 0xFFFFFFFD || v10 <= 2.22044605e-16)
    {
      v25 = 0.0;
      if (sub_1001D381C(&v25, v6, v5))
      {
        if (qword_1025D4600 != -1)
        {
          sub_1016BBF2C();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 64);
          *buf = 134349312;
          v32 = v13;
          v33 = 2050;
          v34 = v25;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "BaroAlt,time,%{public}lf,no undulation knowledge yet,fall back to DMA altitude,undulation,%{public}lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1016BD410();
        }

        sub_100218038(*(a1 + 592), 1, v25, *(a3 + 76));
        sub_100214CE0(*(a1 + 592), v8, v9, *(a3 + 76));
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1016BBF2C();
        }

        v18 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          v19 = *(a2 + 64);
          *buf = 134349056;
          v32 = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "BaroAlt,#Warning,time,%{public}lf,failed to get DMA altitude", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1016BD308(a2);
        }
      }
    }
  }
}

uint64_t sub_100214CE0(uint64_t result, void *a2, int *a3, double a4)
{
  v4 = *(result + 8);
  if (v4 != -1)
  {
    if (vabdd_f64(*(result + 16), a4) >= 5400.0 || fabs(*result) <= 2.22044605e-16)
    {
      v4 = -1;
    }

    else
    {
      *a2 = *result;
    }
  }

  *a3 = v4;
  return result;
}

uint64_t sub_100214D30(uint64_t a1, int32x2_t *a2, __n128 a3, __n128 a4)
{
  v4 = *(a1 + 2264);
  if (v4 == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 2176);
      v9 = *(a1 + 2184);
      v10 = *(a1 + 2200);
      v11 = *(a1 + 2192);
      v12 = *(a1 + 2208);
      v13 = *(a1 + 2216);
      *buf = 134350336;
      *v52 = v8;
      *&v52[8] = 2050;
      v53 = v9;
      *v54 = 2050;
      *&v54[2] = v10;
      v55 = 2050;
      v56 = v11;
      v57 = 2050;
      v58 = v12;
      v59 = 2050;
      v60 = v13;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "BaroAlt,DriftRate Data,closeLoopError,%{public}lf,durationSinceLastCalibEv,%{public}lf,distanceFromLastCalibEv,%{public}lf,estAltUnc,%{public}lf,closeLoopErrorRpa,%{public}lf,durationSinceLastRpaCalibEv,%{public}lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017492DC((a1 + 2176), a1);
    }

    a2->i32[0] = llround(*(a1 + 2176) * 10.0);
    a2->i32[1] = vcvtad_u64_f64(*(a1 + 2184));
    __asm { FMOV            V2.2D, #10.0 }

    a2[1] = vmovn_s64(vcvtq_u64_f64(vrndaq_f64(vmulq_f64(*(a1 + 2192), _Q2))));
    a2[2].i32[0] = llround(*(a1 + 2208) * 10.0);
    v18 = vcvtad_u64_f64(*(a1 + 2216));
    a2[2].i32[1] = v18;
    if (*(a1 + 3856) <= v18 && v18 >= 5)
    {
      v20 = *a2->i8;
      *(a1 + 3852) = a2[2];
      *(a1 + 3836) = v20;
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 3836);
        v23 = *(a1 + 3840);
        v24 = *(a1 + 3848);
        v25 = *(a1 + 3844);
        v26 = *(a1 + 3852);
        v27 = *(a1 + 3856);
        *buf = 67241472;
        *v52 = v22;
        *&v52[4] = 1026;
        *&v52[6] = v23;
        LOWORD(v53) = 1026;
        *(&v53 + 2) = v24;
        HIWORD(v53) = 1026;
        *v54 = v25;
        *&v54[4] = 1026;
        *&v54[6] = v26;
        v55 = 1026;
        LODWORD(v56) = v27;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "BaroAlt,DriftRate Core Analytics Data,closeLoopError,%{public}d,durationSinceLastCalibEv,%{public}d,distanceFromLastCalibEv,%{public}d,estAltUnc,%{public}d,closeLoopErrorRpa,%{public}d,durationSinceLastRpaCalibEv,%{public}d", buf, 0x26u);
      }

      v28 = sub_10000A100(121, 2);
      if (v28)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v32 = *(a1 + 3836);
        v33 = *(a1 + 3840);
        v34 = *(a1 + 3848);
        v35 = *(a1 + 3844);
        v36 = *(a1 + 3852);
        v37 = *(a1 + 3856);
        v40[0] = 67241472;
        v40[1] = v32;
        v41 = 1026;
        v42 = v33;
        v43 = 1026;
        v44 = v34;
        v45 = 1026;
        v46 = v35;
        v47 = 1026;
        v48 = v36;
        v49 = 1026;
        v50 = v37;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "BaroAlt,DriftRate Core Analytics Data,closeLoopError,%{public}d,durationSinceLastCalibEv,%{public}d,distanceFromLastCalibEv,%{public}d,estAltUnc,%{public}d,closeLoopErrorRpa,%{public}d,durationSinceLastRpaCalibEv,%{public}d", v40, 38);
        v39 = v38;
        v28 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeter::getBarometricAltitudeAWDData(CLDaemonStats_Type::BarometricAltitudeDriftRateInfo &) const", "%s\n", v38);
        if (v39 != buf)
        {
          free(v39);
        }
      }

      v30 = sub_1001EC310(v28, v29);
      sub_100703B94(v30, (a1 + 3836));
    }

    *(a1 + 2264) = 0;
  }

  return v4;
}

__n128 sub_1002150AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *(a2 + 140);
  *(a1 + 216) = *(a2 + 96);
  *(a1 + 220) = v6;
  *(a1 + 224) = *(a2 + 20);
  if (sub_1002151D0(a1, a2))
  {
    if (qword_1025D4740 != -1)
    {
      sub_10197C0B8();
    }

    v7 = qword_1025D4748;
    if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#loiOverride using Loi Location", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197C328();
    }

    *(a1 + 276) = 1;
    sub_1002155A8(a1);
    sub_10092E744(a1, a2, a3);
  }

  else
  {
    *(a1 + 276) = 0;
    sub_1002155A8(a1);
    v9 = *(a2 + 112);
    a3[6] = *(a2 + 96);
    a3[7] = v9;
    a3[8] = *(a2 + 128);
    *(a3 + 140) = *(a2 + 140);
    v10 = *(a2 + 48);
    a3[2] = *(a2 + 32);
    a3[3] = v10;
    v11 = *(a2 + 80);
    a3[4] = *(a2 + 64);
    a3[5] = v11;
    result = *a2;
    v12 = *(a2 + 16);
    *a3 = *a2;
    a3[1] = v12;
  }

  return result;
}

uint64_t sub_1002151D0(uint64_t a1, uint64_t a2)
{
  if (!sub_100072814(a1) || ((v4 = *(a1 + 20), *&v4 > -1) ? (v5 = ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v5 = 1), v5 ? (v6 = (*&v4 - 1) >= 0xFFFFFFFFFFFFFLL) : (v6 = 0), v6))
  {
    if (qword_1025D4740 != -1)
    {
      sub_10197C0B8();
    }

    v9 = qword_1025D4748;
    if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#loiOverride no valid current location.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10197C3FC();
    }

    result = 0;
    *(a1 + 248) = 0;
  }

  else
  {
    *(a1 + 248) = 1;
    *(a1 + 232) = v4;
    v7 = *(a2 + 96);
    if (v7 <= 8 && ((1 << v7) & 0x1D0) != 0)
    {
      *(a1 + 256) = 1;
      if (*(a1 + 156) == 2)
      {
        *(a1 + 252) = 1;
        if (*(a2 + 20) <= v4)
        {
          if (qword_1025D4740 != -1)
          {
            sub_10197C0B8();
          }

          v11 = qword_1025D4748;
          if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
          {
            *v17 = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#loiOverride the spread of the LOI is larger than the location fix.", v17, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10197C5A4();
          }

          result = 0;
          *(a1 + 260) = 0;
        }

        else
        {
          *(a1 + 260) = 1;
          if (sub_10092EC7C(a1, a1, a2))
          {
            if (*(a1 + 208) + 600.0 <= *(a1 + 76) || (*(a1 + 200) & 1) != 0)
            {
              result = 1;
              *(a1 + 272) = 1;
            }

            else
            {
              if (qword_1025D4740 != -1)
              {
                sub_10197C0B8();
              }

              v14 = qword_1025D4748;
              if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
              {
                *v15 = 0;
                _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#loiOverride WiFi is not associated to overide Wifi1 locations.", v15, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_10197C74C();
              }

              result = 0;
              *(a1 + 272) = 0;
            }
          }

          else
          {
            if (qword_1025D4740 != -1)
            {
              sub_10197C0B8();
            }

            v13 = qword_1025D4748;
            if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
            {
              *v16 = 0;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#loiOverride locations are not sufficiently proximate.", v16, 2u);
            }

            result = sub_10000A100(121, 2);
            if (result)
            {
              sub_10197C678();
              return 0;
            }
          }
        }
      }

      else
      {
        if (qword_1025D4740 != -1)
        {
          sub_10197C0B8();
        }

        v10 = qword_1025D4748;
        if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
        {
          *v18 = 0;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#loiOverride location source accuracy is not High to overide location.", v18, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10197C4D0();
        }

        result = 0;
        *(a1 + 252) = 0;
      }
    }

    else
    {
      if (qword_1025D4740 != -1)
      {
        sub_10197C0B8();
      }

      v12 = qword_1025D4748;
      if (os_log_type_enabled(qword_1025D4748, OS_LOG_TYPE_DEBUG))
      {
        *v19 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#loiOverride location is not Wifi1 or Cell.", v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10197C820();
      }

      result = 0;
      *(a1 + 256) = 0;
    }
  }

  return result;
}

__n128 sub_1002155A8(uint64_t a1)
{
  if (arc4random_uniform(0x64u) == 1)
  {
    v9[0] = @"incomingLocationType";
    v10[0] = [NSNumber numberWithUnsignedInt:*(a1 + 216)];
    v9[1] = @"incomingLocationSignalEnvironmentType";
    v10[1] = [NSNumber numberWithUnsignedInt:*(a1 + 220)];
    v9[2] = @"incomingLocationHorizontalAccuracy";
    v10[2] = [NSNumber numberWithDouble:*(a1 + 224)];
    v9[3] = @"loiLocationHorizontalAccuracy";
    v10[3] = [NSNumber numberWithDouble:*(a1 + 232)];
    v9[4] = @"incomingLocationDistanceToLoi";
    v10[4] = [NSNumber numberWithDouble:*(a1 + 240)];
    v9[5] = @"isValidLoi";
    v10[5] = [NSNumber numberWithInt:*(a1 + 248)];
    v9[6] = @"isLoiHighAccuracy";
    v10[6] = [NSNumber numberWithInt:*(a1 + 252)];
    v9[7] = @"isIncomingLocationValidLocationType";
    v10[7] = [NSNumber numberWithInt:*(a1 + 256)];
    v9[8] = @"isIncomingLocationGreaterUncertainty";
    v10[8] = [NSNumber numberWithInt:*(a1 + 260)];
    v9[9] = @"isDistanceLessThanThreshold";
    v10[9] = [NSNumber numberWithInt:*(a1 + 264)];
    v9[10] = @"isHorizontalAccuracyOverlapping";
    v10[10] = [NSNumber numberWithInt:*(a1 + 268)];
    v9[11] = @"isWifiAssociated";
    v10[11] = [NSNumber numberWithInt:*(a1 + 272)];
    v9[12] = @"isOverriding";
    v10[12] = [NSNumber numberWithInt:*(a1 + 276)];
    [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:13];
    AnalyticsSendEvent();
  }

  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 248) = result;
  v3 = (a1 + 248);
  v3[-2].n128_u64[0] = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v3 - 24) = _Q1;
  v3[-1].n128_u64[1] = 0xBFF0000000000000;
  v3[1] = result;
  return result;
}

void sub_1002157CC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8[0] = 67240704;
    v8[1] = v5;
    v9 = 1026;
    v10 = a2;
    v11 = 2050;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#LCStats,ThrPosUnc,fPosUncThr,%{public}d,posUncThr,%{public}d,posUncTime,%{public}0.1f", v8, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0C9F4(a1, a2);
  }

  v7 = sub_1000081AC();
  if (a2 && *(a1 + 16) == 1 && v7 > *(a1 + 24))
  {
    sub_10020F594(a1, v7);
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = v7;
}

void sub_100215910(uint64_t a1, uint64_t a2)
{
  if (sub_100072814(a2))
  {
    sub_10020F8F0(a1, a2);
    sub_1002157CC(a1 + 232, (*(a2 + 20) <= 100.0));
    sub_1002157CC(a1 + 288, (*(a2 + 20) <= 100.0));
    if (*(a1 + 216) == 1 && *(a2 + 20) <= 50.0)
    {

      sub_1010596DC(a1, a2);
    }
  }
}

uint64_t sub_1002159C8(uint64_t a1, double *a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 360);
  v4 = a3[1];
  v7[0] = *a3;
  v7[1] = v4;
  if (!v4)
  {
    return sub_100208A64(a1, a2, &v8, v7, a4);
  }

  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v5 = sub_100208A64(a1, a2, &v8, v7, a4);
  std::__shared_weak_count::__release_weak(v4);
  return v5;
}

double sub_100215A40(uint64_t a1, __n128 a2)
{
  if (*a1 > 0.0)
  {
    return a2.n128_f64[0] - *a1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101B4BD40();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 840);
    *buf = 67240192;
    v12 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#Error,FusedLoc,hID,%{public}d,getHypothesisAge called while MCT not set", buf, 8u);
  }

  v2 = -1.0;
  if (sub_10000A100(121, 0))
  {
    sub_101B4BD54(buf);
    v7 = *(a1 + 840);
    v10[0] = 67240192;
    v10[1] = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,FusedLoc,hID,%{public}d,getHypothesisAge called while MCT not set", v10, 8);
    v9 = v8;
    sub_100152C7C("Generic", 1, 0, 0, "CFTimeInterval cllcf::LCFusionLocationHypothesis::getAge(const CFTimeInterval) const", "%s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  return v2;
}

void sub_100215BD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100215BE4(uint64_t a1)
{
  v1 = (a1 + 248);
  v2 = *(a1 + 248);
  if (!v2)
  {
    return 1;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  v76 = _Q0;
  _Q0.f64[0] = NAN;
  _Q0.f64[1] = NAN;
  v75 = vnegq_f64(_Q0);
LABEL_3:
  if ((v2[107] & 0xFFFFFFFB) == 0)
  {
    goto LABEL_70;
  }

  v9 = *(v2 + 8);
  if (!v9 || *(*(*(v2 + 4) + 8 * ((v9 + *(v2 + 7) - 1) / 0x1AuLL)) + 152 * ((v9 + *(v2 + 7) - 1) % 0x1AuLL) + 148) != 1)
  {
    goto LABEL_70;
  }

  v10 = *v2;
  if (*v2)
  {
    while (1)
    {
      if ((v10[107] & 0xFFFFFFFB) == 0)
      {
        goto LABEL_59;
      }

      v11 = *(v10 + 8);
      if (!v11 || *(*(*(v10 + 4) + 8 * ((v11 + *(v10 + 7) - 1) / 0x1AuLL)) + 152 * ((v11 + *(v10 + 7) - 1) % 0x1AuLL) + 148) != 1)
      {
        goto LABEL_59;
      }

      v12 = v2[71];
      v13 = v10[71];
      v98 = v13;
      v99 = v12;
      if (vabdd_f64(v12, v13) > 0.001)
      {
        if (v13 <= v12)
        {
          v14 = (v10 + 25);
          v15 = &v99;
        }

        else
        {
          v14 = (v2 + 25);
          v15 = &v98;
        }

        sub_10002980C(v14, v15);
      }

      v91 = v76;
      v94[0] = xmmword_101C75BF0;
      v94[1] = xmmword_101C75BF0;
      v94[2] = v76;
      v94[3] = v76;
      v90 = off_1024DE5F8;
      v95 = 0xBFF0000000000000;
      v96 = 0;
      v97 = 0;
      if ((sub_10002A8E4((v2 + 25), v76.f64[0], &v90) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v52 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "#fusion,hypotheses merging, outer loop get filter estimate failed.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          LOWORD(v100) = 0;
          LODWORD(v70) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,hypotheses merging, outer loop get filter estimate failed.", &v100, v70);
          v63 = v62;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v62);
          if (v63 != buf)
          {
            free(v63);
          }
        }

LABEL_70:
        v2 = *v2;
        if (!v2)
        {
          goto LABEL_77;
        }

        goto LABEL_3;
      }

      v79 = off_1024DE5F8;
      v80 = v76;
      v83 = xmmword_101C75BF0;
      v84 = xmmword_101C75BF0;
      v85 = v76;
      v86 = v76;
      v87 = 0xBFF0000000000000;
      v88 = 0;
      v89 = 0;
      if ((sub_10002A8E4((v10 + 25), v76.f64[0], &v79) & 1) == 0)
      {
        break;
      }

      v77 = 0.0;
      v78 = 0.0;
      v16 = &v83 + 1;
      if (*&v84 <= 0.0)
      {
        v16 = v94 + 1;
      }

      if ((sub_100208760((a1 + 2384), &v78, &v77, v81, *v16) & 1) == 0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v25 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "#Error,fusion hypotheses merging, calc_dNdE failed.", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_59;
        }

        sub_101A7B5F4(buf);
        LOWORD(v100) = 0;
        LODWORD(v70) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,fusion hypotheses merging, calc_dNdE failed.", &v100, v70);
        v27 = v26;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v26);
        if (v27 == buf)
        {
          goto LABEL_59;
        }

        goto LABEL_34;
      }

      v18 = v81;
      v19 = v92;
      v20 = v93;
      *v17.i64 = v82 * 0.0174532925;
      v21.i64[1] = 0;
      v22.i64[1] = 0;
      if (fabs(v82 * 0.0174532925) <= 3.14159265)
      {
        v23 = 0x400921FB54442D18uLL;
      }

      else
      {
        v72 = vbslq_s8(v75, 0x400921FB54442D18uLL, v17);
        *v22.i64 = fmod(*v17.i64 + *v72.i64, 6.28318531);
        v23 = 0x400921FB54442D18uLL;
        v21.i64[1] = v72.i64[1];
        *v17.i64 = *v22.i64 - *v72.i64;
      }

      *v22.i64 = v20 * 0.0174532925;
      if (fabs(v20 * 0.0174532925) > *v23.i64)
      {
        v71 = vbslq_s8(v75, v23, v22);
        v73 = v17.i64[0];
        *v22.i64 = fmod(*v22.i64 + *v71.i64, 6.28318531);
        v23 = 0x400921FB54442D18uLL;
        v21.i64[1] = v71.i64[1];
        v17.i64[0] = v73;
        *v22.i64 = *v22.i64 - *v71.i64;
      }

      *v21.i64 = *v17.i64 - *v22.i64;
      if (vabdd_f64(*v17.i64, *v22.i64) > *v23.i64)
      {
        v74 = *vbslq_s8(v75, v23, v21).i64;
        *v21.i64 = fmod(*v21.i64 + v74, 6.28318531) - v74;
      }

      v28 = 1.0 / (*v94 * *v94 * 0.5 + *&v83 * *&v83 * 0.5);
      v29 = (v18 - v19) * 0.0174532925 * v78 * ((v18 - v19) * 0.0174532925 * v78) * v28 + *v21.i64 * 57.2957795 * 0.0174532925 * v77 * (*v21.i64 * 57.2957795 * 0.0174532925 * v77) * v28;
      if (v29 <= 6.18007)
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v30 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v31 = *(v2 + 212);
          v32 = *(v2 + 102);
          v33 = *(v10 + 212);
          v34 = *(v10 + 102);
          *buf = 67241728;
          *&buf[4] = v31;
          v111 = 2050;
          v112 = *&v94[0];
          v113 = 2050;
          v114 = v32;
          v115 = 1026;
          v116 = v33;
          v117 = 2050;
          v118 = v83;
          v119 = 2050;
          v120 = v34;
          v121 = 2050;
          v122 = v29;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "fused hypotheses are merged,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,squaredMD,%{public}.3f", buf, 0x40u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v46 = *(v2 + 212);
          v47 = *(v2 + 102);
          v48 = *(v10 + 212);
          v49 = *(v10 + 102);
          LODWORD(v100) = 67241728;
          HIDWORD(v100) = v46;
          *v101 = 2050;
          *&v101[2] = *&v94[0];
          *&v101[10] = 2050;
          *&v101[12] = v47;
          *&v101[20] = 1026;
          *&v101[22] = v48;
          *&v101[26] = 2050;
          *&v101[28] = v83;
          *&v101[36] = 2050;
          *&v101[38] = v49;
          *&v101[46] = 2050;
          *&v102 = v29;
          LODWORD(v70) = 64;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "fused hypotheses are merged,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,hID,%{public}d,hunc,%{public}.1f,likelihood,%{public}.1f,squaredMD,%{public}.3f", &v100, v70);
          v51 = v50;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v50);
          if (v51 != buf)
          {
            free(v51);
          }
        }

        v35 = *(a1 + 2792);
        if (v35)
        {
          if (v35[1] == 1)
          {
            if (((*v35 & 1) != 0 || *v94 >= *&v83) && (*v35 != 1 || v2[102] <= v10[102]))
            {
LABEL_72:
              v53 = *(v2 + 8) + *(v2 + 7) - 1;
              v54 = *(*(v2 + 4) + 8 * (v53 / 0x1A)) + 152 * (v53 % 0x1A);
              v100 = *v54;
              v55 = *(v54 + 8);
              *v101 = v55;
              if (v55)
              {
                atomic_fetch_add_explicit((v55 + 16), 1uLL, memory_order_relaxed);
              }

              *&v101[8] = off_1024DE5F8;
              v56 = *(v54 + 24);
              v57 = *(v54 + 40);
              v58 = *(v54 + 56);
              v103 = *(v54 + 72);
              v102 = v58;
              *&v101[32] = v57;
              *&v101[16] = v56;
              v59 = *(v54 + 88);
              v60 = *(v54 + 104);
              v61 = *(v54 + 120);
              v107 = *(v54 + 136);
              v106 = v61;
              v105 = v60;
              v104 = v59;
              v108 = 4;
              v108 = *(v54 + 144);
              v109 = *(v54 + 148);
              operator new();
            }
          }

          else if (*v94 >= *&v83)
          {
            goto LABEL_72;
          }
        }

        else if (*v94 >= *&v83)
        {
          goto LABEL_72;
        }

        v36 = *(v10 + 8) + *(v10 + 7) - 1;
        v37 = *(*(v10 + 4) + 8 * (v36 / 0x1A)) + 152 * (v36 % 0x1A);
        v100 = *v37;
        v38 = *(v37 + 8);
        *v101 = v38;
        if (v38)
        {
          atomic_fetch_add_explicit((v38 + 16), 1uLL, memory_order_relaxed);
        }

        *&v101[8] = off_1024DE5F8;
        v39 = *(v37 + 24);
        v40 = *(v37 + 40);
        v41 = *(v37 + 56);
        v103 = *(v37 + 72);
        v102 = v41;
        *&v101[32] = v40;
        *&v101[16] = v39;
        v42 = *(v37 + 88);
        v43 = *(v37 + 104);
        v44 = *(v37 + 120);
        v107 = *(v37 + 136);
        v106 = v44;
        v105 = v43;
        v104 = v42;
        v108 = 4;
        v108 = *(v37 + 144);
        v109 = *(v37 + 148);
        operator new();
      }

LABEL_59:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_70;
      }
    }

    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v24 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,hypotheses merging, inner loop get filter estimate failed.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_59;
    }

    sub_101A7B5F4(buf);
    LOWORD(v100) = 0;
    LODWORD(v70) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,hypotheses merging, inner loop get filter estimate failed.", &v100, v70);
    v27 = v45;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::performHypothesesMerging()", "%s\n", v45);
    if (v27 == buf)
    {
      goto LABEL_59;
    }

LABEL_34:
    free(v27);
    goto LABEL_59;
  }

LABEL_77:
  *buf = 0;
  v64 = *v1;
  if (*v1)
  {
    do
    {
      v65 = sub_10021C0E4((v64 + 8));
      v66 = *v1;
      if (v65)
      {
        do
        {
          v66 = *v66;
        }

        while (v66 && sub_10021C0E4((v66 + 8)));
        if (buf != v1 && v1 != v66)
        {
          v67 = v1;
          do
          {
            v68 = v67;
            v67 = *v67;
          }

          while (v67 != v66);
          if (v68 != v1)
          {
            *v68 = *buf;
            *buf = *v1;
            *v1 = v66;
          }
        }

        if (!v66)
        {
          break;
        }
      }

      v64 = *v66;
      v1 = v66;
    }

    while (*v66);
  }

  sub_10020AB0C(buf);
  return 1;
}

void sub_100216DDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100216E10(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 5);
  v9 = *(a2 + 7);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v9;
  *(a1 + 40) = v8;
  *(a1 + 24) = v7;
  v10 = *(a2 + 11);
  v11 = *(a2 + 13);
  v12 = *(a2 + 15);
  *(a1 + 136) = a2[17];
  *(a1 + 120) = v12;
  *(a1 + 104) = v11;
  *(a1 + 88) = v10;
  *(a1 + 144) = *(a2 + 36);
  *(a1 + 148) = *(a2 + 74);
  return a1;
}

void *sub_100216EAC(uint64_t a1, double a2)
{
  if (qword_1025D4770 != -1)
  {
    sub_10025BA60();
  }

  v4 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    *buf = 136446978;
    v24 = v5;
    v25 = 2050;
    v26 = a2;
    v27 = 2050;
    v28 = v6;
    v29 = 2050;
    v30 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,restart dPos cumsum from mct,%{public}.3f,prev_IntgStartTimeMCT,%{public}.3f,lastIOSampleMCT,%{public}.3f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v10 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v10 = *v10;
    }

    v11 = *(a1 + 8);
    v12 = *(a1 + 16);
    v15 = 136446978;
    v16 = v10;
    v17 = 2050;
    v18 = a2;
    v19 = 2050;
    v20 = v11;
    v21 = 2050;
    v22 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#dPosIntg,id,%{public}s,restart dPos cumsum from mct,%{public}.3f,prev_IntgStartTimeMCT,%{public}.3f,lastIOSampleMCT,%{public}.3f", &v15, 42);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::restart(const CFTimeInterval)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  sub_10020C740(a1, v8);
  result = sub_1001FB750((a1 + 208));
  *(a1 + 8) = a2;
  return result;
}

void sub_1002170B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1002170C4(void *a1@<X1>, void *a2@<X8>)
{
  v3 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  do
  {
    v4 = a1[6] + a1[7];
    v5 = a1[3];
    v6 = a1[4];
    v7 = (v5 + 8 * (v4 / 0x1A));
    if (v6 == v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v7 + 152 * (v4 % 0x1A);
    }

    while (1)
    {
      v9 = v6 == v5 ? 0 : *(v5 + 8 * (a1[6] / 0x1AuLL)) + 152 * (a1[6] % 0x1AuLL);
      if (v9 == v8)
      {
        break;
      }

      v10 = v8;
      if (v8 == *v7)
      {
        v10 = *(v7 - 1) + 3952;
      }

      v11 = *(v10 - 144);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = *(v10 - 152);
          if (v14 && *(v14 + 40) > 0.0 && v3 == *(v14 + 124))
          {
            if ((*(*v14 + 56))(v14) < 900.0)
            {
              sub_1002173E4(v15, a2, (v14 + 124));
              sub_100008080(v13);
              break;
            }

            if (qword_1025D4770 != -1)
            {
              sub_1018B5ED8();
            }

            v16 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v23 = v3;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#TZ,getHypLocRadioTechSet,type,%d,aged out", buf, 8u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018B5F00(buf);
              v21[0] = 67109120;
              v21[1] = v3;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#TZ,getHypLocRadioTechSet,type,%d,aged out", v21);
              v19 = v18;
              sub_100152C7C("Generic", 1, 0, 2, "std::set<cllcf::CLLCFusionTZTrustFromTechCrossCheck::LocationRadioTechnology> cllcf::CLLCFusionTZTrustFromTechCrossCheck::getHypLocRadioTechSet(const LCFusionLocationHypothesis &) const", "%s\n", v18);
              if (v19 != buf)
              {
                free(v19);
              }
            }
          }

          sub_100008080(v13);
        }
      }

      if (v8 == *v7)
      {
        v17 = *--v7;
        v8 = v17 + 3952;
      }

      v8 -= 152;
      v5 = a1[3];
      v6 = a1[4];
    }

    ++v3;
  }

  while (v3 != 14);
}

void sub_1002173B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100008080(v12);
  sub_1003C93BC(a12, *(a12 + 8));
  _Unwind_Resume(a1);
}

void sub_1002173E4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v3 = *a3;
  if (*a3 <= 0xD)
  {
    if (((1 << v3) & 0x60A) != 0)
    {
      v7 = 1;
      v5 = &v7;
      v6 = &v7;
    }

    else if (((1 << v3) & 0x1C0) != 0)
    {
      v9 = 3;
      v5 = &v9;
      v6 = &v9;
    }

    else
    {
      if (((1 << v3) & 0x2810) == 0)
      {
        return;
      }

      v8 = 2;
      v5 = &v8;
      v6 = &v8;
    }

    sub_1003C9410(a2, v5, v6);
  }
}

uint64_t sub_100217474(uint64_t result, int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = 1;
      if (a2 > 3)
      {
        if ((a2 - 4) < 2)
        {
          ++*(v4 + 140);
          return result;
        }
      }

      else
      {
        switch(a2)
        {
          case 1:
            ++*(v4 + 128);
            return result;
          case 2:
            ++*(v4 + 132);
            return result;
          case 3:
            ++*(v4 + 136);
            return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

int32x4_t sub_100217538(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    v7 = (a1 + 56);
    do
    {
      if (v5[1].i32[3] >= v6)
      {
        v7 = v5;
      }

      v5 = v5->i64[v5[1].i32[3] < v6];
    }

    while (v5);
    if (v7 != (a1 + 56) && v6 >= v7[1].i32[3])
    {
      v7[2].i8[0] = 1;
      v8.i64[0] = __PAIR64__(a3, a2);
      v8.i64[1] = __PAIR64__(a4, a5);
      result = vaddq_s32(v7[7], v8);
      v7[7] = result;
    }
  }

  return result;
}

void sub_1002175A8(uint64_t a1, double *a2, uint64_t a3, void *a4, __n128 a5, __n128 a6)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 280);
    v25[0] = 67240448;
    v25[1] = a4;
    v26 = 1026;
    v27 = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WifiZMetrics, update mapmatch state, isApproToCal, %{public}d, isMapMatchActive %{public}d", v25, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1017478A8(a4);
  }

  if (a4)
  {
    if (*(a1 + 280))
    {
      goto LABEL_25;
    }

    *(a1 + 96) = *a2;
    *(a1 + 104) = 1;
    *(a1 + 112) = *a2;
    *(a1 + 120) = 1;
    *(a1 + 280) = 1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    *(a1 + 40) = 0;
    v14 = (v13 - v12) >> 3;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v12);
        v15 = *(a1 + 16);
        v12 = (*(a1 + 8) + 8);
        *(a1 + 8) = v12;
        v14 = (v15 - v12) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 128;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_18:
        v17 = *(a1 + 56);
        v18 = *(a1 + 64);
        *(a1 + 88) = 0;
        v19 = (v18 - v17) >> 3;
        if (v19 >= 3)
        {
          do
          {
            operator delete(*v17);
            v20 = *(a1 + 64);
            v17 = (*(a1 + 56) + 8);
            *(a1 + 56) = v17;
            v19 = (v20 - v17) >> 3;
          }

          while (v19 > 2);
        }

        if (v19 == 1)
        {
          v21 = 128;
          goto LABEL_24;
        }

        if (v19 == 2)
        {
          v21 = 256;
LABEL_24:
          *(a1 + 80) = v21;
        }

LABEL_25:
        v22 = *(a3 + 384);
        v23 = v22 > 0.0 && v22 < 3.0;
        if (v23 && (*(a3 + 312) + 1) >= 2)
        {
          v24 = *(a3 + 316);
          if (fabsf(v24) > 2.2204e-16)
          {
            sub_101743FF4(a1, *a2, *(a3 + 376) + v24);
          }
        }

        *(a1 + 112) = *a2;
        *(a1 + 120) = 1;
        sub_10174405C(a1);
        return;
      }

      v16 = 256;
    }

    *(a1 + 32) = v16;
    goto LABEL_18;
  }

  if (*(a1 + 280))
  {
    *(a1 + 280) = 0;
  }
}

double sub_100217810(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, _BYTE *a10, void *a11, _BYTE *a12, void *a13, double *a14, void *a15, void *a16)
{
  v21 = a14;
  v22 = a11;
  v24 = a9;
  v23 = a10;
  v25 = *a2;
  *(a3 + 64) = *a2;
  v26 = *(a1 + 256);
  v28 = (v26 < 0 || ((v26 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v26 - 1) > 0xFFFFFFFFFFFFELL;
  if (v28 || ((v29 = *(a1 + 248), v29 >= 0) ? (v30 = ((v29 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v30 = 1), v30 ? (v31 = (v29 - 1) > 0xFFFFFFFFFFFFELL) : (v31 = 0), v31))
  {
    v33 = a6;
    Current = CFAbsoluteTimeGetCurrent();
    v23 = a10;
    v22 = a11;
    a6 = v33;
    v24 = a9;
    v21 = a14;
  }

  else
  {
    Current = v25 - *(a1 + 256) + *(a1 + 248);
  }

  *(a3 + 72) = Current;
  *(a3 + 80) = *a6;
  *(a3 + 88) = *a7;
  *(a3 + 96) = *a8;
  *(a3 + 104) = *v24;
  *(a3 + 112) = *a12;
  *(a3 + 120) = *(a5 + 376);
  *(a3 + 136) = *(a4 + 44);
  *(a3 + 168) = *a15;
  *(a3 + 176) = *v23;
  *(a3 + 184) = *v22;
  *(a3 + 256) = *a16;
  *(a3 + 264) = *a13;
  result = *v21;
  *(a3 + 272) = *v21;
  return result;
}

uint64_t sub_100217978(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5, double *a6, double *a7)
{
  v14 = a5;
  sub_100214578(a1, a2, a3, a6, a7);
  result = 0;
  v12 = 368;
  if (*(a1 + 245))
  {
    v12 = 244;
  }

  if (*(a1 + v12) == 1 && *a6 > 300.0 && *a7 > 5000.0)
  {
    result = *a1;
    if (*a1)
    {
      result = sub_100214550(result, a4, &v14);
      if (result)
      {
        if (*(a1 + 2104) <= 0.0)
        {
          return 0;
        }

        else
        {
          result = sub_1002D4484(*a1, (a1 + 1592));
          if (result)
          {
            v13 = *(a1 + 240);
            return v13 < sub_10173FDAC(a1);
          }
        }
      }
    }
  }

  return result;
}

void sub_100217A60(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 516))
  {
    v4 = *(a1 + 432);
    if (v4 >= -180.0 && fabs(*(a1 + 424)) <= 90.0 && v4 <= 180.0)
    {
      v5 = a1 + 420;
LABEL_11:
      sub_1001097CC((a1 + 208), v5, a3);
      *a2 = v7;
      return;
    }
  }

  if (*(a1 + 360))
  {
    v6 = *(a1 + 276);
    if (v6 >= -180.0 && fabs(*(a1 + 268)) <= 90.0 && v6 <= 180.0)
    {
      v5 = a1 + 264;
      goto LABEL_11;
    }
  }
}

uint64_t sub_100217B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, double *a6, uint64_t *a7, uint64_t a8, uint64_t a9, double *a10, double *a11, uint64_t *a12, unsigned int a13)
{
  sub_1002183F8(a1, a2, a8, a9);
  v21.n128_u64[0] = *(a8 + 76);
  v22 = sub_100214630(a1, a2, a9, v21);
  *a10 = v22;
  *(a2 + 160) = v22;
  v23 = *(a9 + 384);
  v24 = v23 > 0.0 && v23 < 12.0;
  if (v24 && *(a2 + 176) == 1)
  {
    v25 = *a10;
    *(a2 + 120) = *a10;
    *a6 = v25 - *(a2 + 168);
    *a7 = *(a9 + 384);
    *(a5 + 64) = *a11;
    *a11 = *(a2 + 64);
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v27 = *(a2 + 64);
      v28 = *(a2 + 72);
      v29 = *a6;
      v30 = *a7;
      v31 = *(a8 + 28);
      v32 = *(a8 + 36);
      v33 = *(a8 + 4);
      v34 = *(a8 + 12);
      v35 = *(a8 + 60);
      v36 = *(a8 + 20);
      v37 = *(a2 + 168);
      v38 = *a12;
      v40 = *(a2 + 256);
      v39 = *(a2 + 264);
      v41 = *(a3 + 8);
      v42 = *(a2 + 96);
      v43 = *(a2 + 104);
      *buf = 134353153;
      v102 = v27;
      v103 = 2050;
      v104 = v28;
      v105 = 2049;
      v106 = v29;
      v107 = 2050;
      v108 = v30;
      v109 = 2049;
      v110 = v31;
      v111 = 2050;
      v112 = v32;
      v113 = 2053;
      v114 = v33;
      v115 = 2053;
      v116 = v34;
      v117 = 2050;
      v118 = v35;
      v119 = 2050;
      v120 = v36;
      v121 = 2049;
      v122 = v37;
      v123 = 2050;
      v124 = v38;
      v125 = 2049;
      v126 = v39;
      v127 = 2050;
      v128 = v40;
      v129 = 2049;
      v130 = v41;
      v131 = 2049;
      v132 = v42;
      v133 = 2049;
      v134 = v43;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "BaroAlt,calibrating,time,%{public}.lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,baseUnc,%{public}.3lf,alt,%{private}.3lf,altUnc,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,horUnc,%{public}.3lf,relAltOdom,%{private}.3lf,fTimeOfLastOdometerData,%{public}.4lf,pressure,%{private}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,fBaroBiasUsingReferencePressure,%{private}.3lf,fReferencePressurePressure,%{private}.3lf,pressureUnc,%{private}.3lf", buf, 0xACu);
    }

    v44 = sub_10000A100(121, 2);
    if (v44)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v48 = *(a2 + 64);
      v49 = *(a2 + 72);
      v50 = *a6;
      v51 = *a7;
      v52 = *(a8 + 28);
      v53 = *(a8 + 36);
      v54 = *(a8 + 4);
      v55 = *(a8 + 12);
      v56 = *(a8 + 60);
      v57 = *(a8 + 20);
      v58 = *(a2 + 168);
      v59 = *a12;
      v61 = *(a2 + 256);
      v60 = *(a2 + 264);
      v62 = *(a3 + 8);
      v63 = *(a2 + 96);
      v64 = *(a2 + 104);
      v67 = 134353153;
      v68 = v48;
      v69 = 2050;
      v70 = v49;
      v71 = 2049;
      v72 = v50;
      v73 = 2050;
      v74 = v51;
      v75 = 2049;
      v76 = v52;
      v77 = 2050;
      v78 = v53;
      v79 = 2053;
      v80 = v54;
      v81 = 2053;
      v82 = v55;
      v83 = 2050;
      v84 = v56;
      v85 = 2050;
      v86 = v57;
      v87 = 2049;
      v88 = v58;
      v89 = 2050;
      v90 = v59;
      v91 = 2049;
      v92 = v60;
      v93 = 2050;
      v94 = v61;
      v95 = 2049;
      v96 = v62;
      v97 = 2049;
      v98 = v63;
      v99 = 2049;
      v100 = v64;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "BaroAlt,calibrating,time,%{public}.lf,cfAbsTime,%{public}.3lf,baseAlt,%{private}.3lf,baseUnc,%{public}.3lf,alt,%{private}.3lf,altUnc,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,course,%{public}.3lf,horUnc,%{public}.3lf,relAltOdom,%{private}.3lf,fTimeOfLastOdometerData,%{public}.4lf,pressure,%{private}.3lf,fTimeOfLastCMAltitudeData,%{public}.3lf,fBaroBiasUsingReferencePressure,%{private}.3lf,fReferencePressurePressure,%{private}.3lf,pressureUnc,%{private}.3lf", &v67, 172);
      v66 = v65;
      v44 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBarometricAltimeterCore::calibrateBaroBiasUsingReferencePressure(CLBaroAltEstimatorInput &, CLBaroAltEstimatorOutput &, std::deque<BaroBiasEstimate> &, BarometricAltitudeComputeAWDData &, double &, double &, CLDaemonLocation &, CLDaemonLocationPrivate &, double &, CFTimeInterval &, const CFTimeInterval &, const int)", "%s\n", v65);
      if (v66 != buf)
      {
        free(v66);
      }
    }

    if (*(a2 + 112) == 1 && sub_1002D4484(v44, a2))
    {
      if (sub_1016B3FF8(a1, a2, a3, a4, a11, a13, a8))
      {
        return 1;
      }
    }

    else
    {
      *(a1 + 144) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1016BBF2C();
      }

      v47 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_INFO, "BaroAlt,newCalibSessionStart,no valid device pressure or ref pressure feature disabled", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016BBF54();
      }
    }
  }

  else
  {
    *(a1 + 144) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_10025BBF4();
    }

    v46 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_INFO, "BaroAlt,newCalibSessionStart,attempt DEM and reference weather calibrations,fail", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016BBE50();
    }
  }

  return 0;
}