double _ZNSt3__132__partition_with_equals_on_rightB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEERPDoFbRKS8_SB_EEENS_4pairIT0_bEESG_SG_T1_@<D0>(gsl::details *a1@<X0>, gsl::details *a2@<X1>, uint64_t (**a3)(gsl::details *, uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v33 = *a1;
  v34 = *(a1 + 2);
  v32 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
  do
  {
    gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a1);
    v8 = *a3;
    v9 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
  }

  while ((v8(v9, &v32) & 1) != 0);
  v37 = *a1;
  v38 = *(a1 + 2);
  v10 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v37, 1);
  v11 = v33;
  if (v33 != v37)
  {
    goto LABEL_21;
  }

  v12 = *(&v33 + 1);
  if (*(&v33 + 1) != *(&v37 + 1))
  {
    goto LABEL_21;
  }

  v13 = v34;
  if (v34 == v38)
  {
    while (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
    {
      if (*(a1 + 2) < *(a2 + 2))
      {
        v16 = *a3;
        v17 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
        v18 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v17);
        v10 = v16(v18, &v32);
        if ((v10 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_12;
    }

LABEL_21:
    gsl::details::terminate(v10);
  }

  do
  {
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
    v14 = *a3;
    v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
    v10 = v14(v15, &v32);
  }

  while (!v10);
LABEL_12:
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_21;
  }

  v19 = *(a1 + 2);
  v20 = *(a2 + 2);
  while (1)
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      goto LABEL_21;
    }

    if (*(a1 + 2) >= *(a2 + 2))
    {
      break;
    }

    v37 = *a1;
    v38 = *(a1 + 2);
    v35 = *a2;
    v36 = *(a2 + 2);
    v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v37);
    v22 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v35);
    v23 = *v21;
    *v21 = *v22;
    *v22 = v23;
    do
    {
      gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a1);
      v24 = *a3;
      v25 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    }

    while ((v24(v25, &v32) & 1) != 0);
    do
    {
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
      v26 = *a3;
      v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      v10 = v26(v27, &v32);
    }

    while (!v10);
    if (*a1 != *a2)
    {
      goto LABEL_21;
    }
  }

  v37 = *a1;
  v38 = *(a1 + 2);
  v10 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(&v37, 1);
  if (v11 != v37 || v12 != *(&v37 + 1))
  {
    goto LABEL_21;
  }

  if (v13 != v38)
  {
    v29 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v37);
    *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v33) = *v29;
  }

  v30 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v37);
  *v30 = v32;
  result = *&v37;
  *a4 = v37;
  *(a4 + 16) = v38;
  *(a4 + 24) = v19 >= v20;
  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEbT1_SF_T0_(gsl::details *a1, gsl::details *a2, uint64_t (**a3)(gsl::details *, gsl::details *))
{
  v6 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(a2, a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v40 = *a1;
        v41 = *(a1 + 2);
        v38 = *a1;
        v39 = *(a1 + 2);
        v7 = 1;
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v38, 1);
        v17 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
        v18 = *(v17 + 2);
        v36 = *v17;
        v37 = v18;
        _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v40, &v38, &v36, a3);
        return v7;
      case 4:
        v40 = *a1;
        v41 = *(a1 + 2);
        v38 = *a1;
        v39 = *(a1 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v38, 1);
        v36 = *a1;
        v37 = *(a1 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v36, 2);
        v29 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
        v30 = *(v29 + 2);
        v34 = *v29;
        v35 = v30;
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_T0_(&v40, &v38, &v36, &v34, a3);
        break;
      case 5:
        v40 = *a1;
        v41 = *(a1 + 2);
        v38 = *a1;
        v39 = *(a1 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v38, 1);
        v36 = *a1;
        v37 = *(a1 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v36, 2);
        v34 = *a1;
        v35 = *(a1 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v34, 3);
        v8 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
        v9 = *(v8 + 2);
        v32 = *v8;
        v33 = v9;
        _ZNSt3__17__sort5B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEvT1_SF_SF_SF_SF_T0_(&v40, &v38, &v36, &v34, &v32, a3);
        break;
      default:
        goto LABEL_12;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v10 = *a3;
    v11 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
    v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v11);
    v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a1);
    if (v10(v12, v13))
    {
      v40 = *a1;
      v41 = *(a1 + 2);
      v38 = *a2;
      v39 = *(a2 + 2);
      v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
      v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v38);
      v16 = *v14;
      *v14 = *v15;
      *v15 = v16;
    }

    return 1;
  }

LABEL_12:
  v40 = *a1;
  v41 = *(a1 + 2);
  gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v40, 2);
  v38 = *a1;
  v39 = *(a1 + 2);
  v36 = *a1;
  v37 = *(a1 + 2);
  gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v36, 1);
  v34 = v40;
  v35 = v41;
  _ZNSt3__17__sort3B8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EELi0EEEbT1_SF_SF_T0_(&v38, &v36, &v34, a3);
  v38 = v40;
  v39 = v41;
  v19 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v38, 1);
  if (v38 != *a2)
  {
    goto LABEL_23;
  }

  v20 = 0;
  while (1)
  {
    if (*(&v38 + 1) != *(a2 + 1))
    {
      goto LABEL_23;
    }

    if (v39 == *(a2 + 2))
    {
      return 1;
    }

    v21 = *a3;
    v22 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v38);
    v23 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
    if (v21(v22, v23))
    {
      *&v34 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v38);
      v36 = v40;
      v37 = v41;
      v41 = v39;
      v40 = v38;
      do
      {
        v24 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v36);
        v19 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
        *v19 = *v24;
        v40 = v36;
        v41 = v37;
        if (v36 != *a1)
        {
          goto LABEL_23;
        }

        if (v41 == *(a1 + 2))
        {
          break;
        }

        v25 = *a3;
        v26 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(&v36);
        v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v26);
      }

      while ((v25(&v34, v27) & 1) != 0);
      v28 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v40);
      *v28 = v34;
      if (++v20 == 8)
      {
        break;
      }
    }

    v40 = v38;
    v41 = v39;
    v19 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v38);
    if (v38 != *a2)
    {
      goto LABEL_23;
    }
  }

  v19 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v38);
  if (*v19 != *a2 || *(v19 + 1) != *(a2 + 1))
  {
LABEL_23:
    gsl::details::terminate(v19);
  }

  return *(v19 + 2) == *(a2 + 2);
}

gsl::details *gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(gsl::details *result, uint64_t a2)
{
  if (a2)
  {
    if (!*result || (v2 = *(result + 2)) == 0 || (v3 = *(result + 1)) == 0)
    {
LABEL_11:
      gsl::details::terminate(result);
    }

    if (a2 < 1)
    {
      if (-a2 > (v2 - *result) >> 3)
      {
        goto LABEL_11;
      }
    }

    else if (a2 > (v3 - v2) >> 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *(result + 2);
  }

  *(result + 2) = v2 + 8 * a2;
  return result;
}

__n128 _ZNSt3__119__partial_sort_implB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EESE_EET1_SF_SF_T2_OT0_@<Q0>(gsl::details *a1@<X0>, gsl::details *a2@<X1>, __n128 *a3@<X2>, unsigned int (**a4)(gsl::details *, gsl::details *)@<X3>, gsl::details *a5@<X8>)
{
  v6 = *a1;
  if (*a1 != *a2)
  {
    goto LABEL_14;
  }

  v8 = a1;
  v9 = *(a1 + 1);
  if (v9 != *(a2 + 1))
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 2);
  v12 = *(a2 + 2);
  if (v11 == v12)
  {
    result = *a3;
    *a5 = *a3;
    *(a5 + 2) = a3[1].n128_u64[0];
    return result;
  }

  v14 = (v12 - v11) >> 3;
  if (v14 >= 2)
  {
    v15 = (v14 - 2) >> 1;
    do
    {
      *&v33 = v6;
      *(&v33 + 1) = v9;
      v34 = v11;
      *&v31 = v6;
      *(&v31 + 1) = v9;
      v32 = v11;
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v31, v15);
      _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_OT0_NS_15iterator_traitsISF_E15difference_typeESF_(&v33, a4, v14, &v31);
      --v15;
    }

    while (v15 != -1);
  }

  a1 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(a2, v8);
  *a5 = *a2;
  *(a5 + 2) = *(a2 + 2);
  if (*a5 != a3->n128_u64[0])
  {
    goto LABEL_14;
  }

  v16 = a1;
  while (1)
  {
    if (*(a5 + 1) != a3->n128_u64[1])
    {
      goto LABEL_14;
    }

    if (*(a5 + 2) == a3[1].n128_u64[0])
    {
      break;
    }

    v17 = *a4;
    v18 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a5);
    v19 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v8);
    if (v17(v18, v19))
    {
      v33 = *a5;
      v34 = *(a5 + 2);
      v31 = *v8;
      v32 = *(v8 + 2);
      v20 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v33);
      v21 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
      v22 = *v20;
      *v20 = *v21;
      *v21 = v22;
      v33 = *v8;
      v34 = *(v8 + 2);
      v31 = *v8;
      v32 = *(v8 + 2);
      _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_OT0_NS_15iterator_traitsISF_E15difference_typeESF_(&v33, a4, v16, &v31);
    }

    a1 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(a5);
    if (*a5 != a3->n128_u64[0])
    {
      goto LABEL_14;
    }
  }

  v23 = *v8;
  v24 = *(v8 + 1);
  v25 = *(v8 + 2);
  result = *a2;
  v29 = *a2;
  v30 = *(a2 + 2);
  if (v29 != __PAIR128__(v24, v23))
  {
LABEL_14:
    gsl::details::terminate(a1);
  }

  v27 = (v30 - v25) >> 3;
  if (v27 >= 2)
  {
    do
    {
      *&v33 = v23;
      *(&v33 + 1) = v24;
      v34 = v25;
      v31 = v29;
      v32 = v30;
      _ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SE_RT0_NS_15iterator_traitsISE_E15difference_typeE(&v33, &v31, a4, v27);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(&v29);
    }

    while (v27-- > 2);
  }

  return result;
}

uint64_t _ZNSt3__111__sift_downB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_OT0_NS_15iterator_traitsISF_E15difference_typeESF_(void *a1, unsigned int (**a2)(gsl::details *, gsl::details *), uint64_t a3, gsl::details *a4)
{
  result = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-<shazam::xpair_group<shazam::xpair_fields>,0>(a4, a1);
  v9 = a3 - 2;
  if (a3 >= 2)
  {
    v10 = v9 >> 1;
    if ((v9 >> 1) >= result)
    {
      v11 = 2 * result;
      v12 = (2 * result) | 1;
      v31 = *a1;
      v32 = a1[2];
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v31, v12);
      v13 = v11 + 2;
      if (v11 + 2 < a3)
      {
        v14 = *a2;
        v15 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
        v29 = v31;
        v30 = v32;
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v29, 1);
        v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v29);
        if (v14(v15, v16))
        {
          gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v31);
          v12 = v13;
        }
      }

      v17 = *a2;
      v18 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
      v19 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
      result = v17(v18, v19);
      if ((result & 1) == 0)
      {
        v28 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
        do
        {
          v20 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
          *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4) = *v20;
          *a4 = v31;
          *(a4 + 2) = v32;
          if (v10 < v12)
          {
            break;
          }

          v21 = 2 * v12;
          v12 = (2 * v12) | 1;
          v29 = *a1;
          v30 = a1[2];
          gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v29, v12);
          v31 = v29;
          v32 = v30;
          v22 = v21 + 2;
          if (v21 + 2 < a3)
          {
            v23 = *a2;
            v24 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
            v29 = v31;
            v30 = v32;
            gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v29, 1);
            v25 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v29);
            if (v23(v24, v25))
            {
              gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v31);
              v12 = v22;
            }
          }

          v26 = *a2;
          v27 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v31);
        }

        while (!v26(v27, &v28));
        result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4);
        *result = v28;
      }
    }
  }

  return result;
}

gsl::details *_ZNSt3__110__pop_heapB8ne200100INS_17_ClassicAlgPolicyEPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SE_RT0_NS_15iterator_traitsISE_E15difference_typeE(gsl::details *result, gsl::details *a2, unsigned int (**a3)(gsl::details *, gsl::details *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v8 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(result);
    v13 = *v7;
    v14 = *(v7 + 2);
    _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEET1_SF_OT0_NS_15iterator_traitsISF_E15difference_typeE(&v13, a3, a4, &v15);
    v9 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
    if (v15 != *a2)
    {
      goto LABEL_8;
    }

    if (v16 != *(a2 + 2))
    {
      v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v15) = *v10;
      gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v15);
      v9 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      *v9 = v8;
      v13 = *v7;
      v14 = *(v7 + 2);
      v11 = v15;
      v12 = v16;
      if (v15 == *v7)
      {
        return _ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_OT0_NS_15iterator_traitsISF_E15difference_typeE(&v13, &v11, a3, (v16 - *(v7 + 2)) >> 3);
      }

LABEL_8:
      gsl::details::terminate(v9);
    }

    result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v15);
    *result = v8;
  }

  return result;
}

double _ZNSt3__117__floyd_sift_downB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEET1_SF_OT0_NS_15iterator_traitsISF_E15difference_typeE@<D0>(__int128 *a1@<X0>, unsigned int (**a2)(gsl::details *, gsl::details *)@<X1>, uint64_t a3@<X2>, gsl::details *a4@<X8>)
{
  v7 = 0;
  *(a4 + 2) = *(a1 + 2);
  *a4 = *a1;
  v18 = *a1;
  v19 = *(a1 + 2);
  v8 = (a3 - 2) / 2;
  do
  {
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v18, v7 + 1);
    v9 = 2 * v7;
    v7 = (2 * v7) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = *a2;
      v12 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
      v16 = v18;
      v17 = v19;
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v16, 1);
      v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v16);
      if (v11(v12, v13))
      {
        gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v18);
        v7 = v10;
      }
    }

    v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v18);
    *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a4) = *v14;
    result = *&v18;
    *a4 = v18;
    *(a4 + 2) = v19;
  }

  while (v7 <= v8);
  return result;
}

gsl::details *_ZNSt3__19__sift_upB8ne200100INS_17_ClassicAlgPolicyERPDoFbRKN6shazam11xpair_groupIJNS2_12xpair_fieldsEEEES7_EN3gsl7details13span_iteratorIS5_EEEEvT1_SF_OT0_NS_15iterator_traitsISF_E15difference_typeE(gsl::details *result, gsl::details *a2, uint64_t (**a3)(gsl::details *, gsl::details *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v8 = result;
    v9 = (a4 - 2) >> 1;
    v20 = *result;
    v21 = *(result + 2);
    gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v20, v9);
    v10 = *a3;
    v11 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
    v12 = gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator--(a2);
    v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(v12);
    result = v10(v11, v13);
    if (result)
    {
      v19 = *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      do
      {
        v14 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
        *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2) = *v14;
        *a2 = v20;
        *(a2 + 2) = v21;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v17 = *v8;
        v18 = *(v8 + 2);
        gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v17, v9);
        v20 = v17;
        v21 = v18;
        v15 = *a3;
        v16 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v20);
      }

      while ((v15(v16, &v19) & 1) != 0);
      result = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(a2);
      *result = v19;
    }
  }

  return result;
}

gsl::details *gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator-=(gsl::details *result, uint64_t a2)
{
  if (a2)
  {
    if (!*result || (v2 = *(result + 2)) == 0 || (v3 = *(result + 1)) == 0)
    {
LABEL_11:
      gsl::details::terminate(result);
    }

    if (a2 < 1)
    {
      if (-a2 > (v3 - v2) >> 3)
      {
        goto LABEL_11;
      }
    }

    else if (a2 > (v2 - *result) >> 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v2 = *(result + 2);
  }

  *(result + 2) = v2 - 8 * a2;
  return result;
}

void shazam::cull_phase<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(std::vector<shazam::Result> &,shazam::Result,std::vector<shazam::regresspair> &,gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul> const&)::{lambda((AlgoType)1)#1}::operator()<gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul>>(gsl::details **a1, unint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = *a1;
  *(v4 + 32) = a2;
  shazam::shearfactor<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,(void *)0>(&v13, (v4 + 72), (v4 + 56));
  shazam::xpairs_to_regresspairs<shazam::xpair_group<shazam::xpair_fields>>(v13, v14, a1[1], *(*a1 + 18));
  v5 = a1[1];
  v6 = *v5;
  v7 = v5[1];
  v8 = (v7 - *v5) >> 3;
  if (v8 > 0x3E7)
  {
    v9 = 126 - 2 * __clz(v8);
    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,false>(v6, v7, &v15, v10, 1);
  }

  else
  {
    shazam::insertionsort<shazam::regresspair,unsigned long,std::less<shazam::regresspair>>(v6, 0, v8);
  }

  v11 = gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(a1[1]);
  _ZN6shazam5focusILl2ENS_11regresspairEPDoFfRKS1_EZZNS_10cull_phaseIL8AlgoType1ENS_11xpair_groupIJNS_12xpair_fieldsEEEELm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSC_9allocatorISE_EEEESE_RNSD_IS1_NSF_IS1_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEENKUlT_E_clINSN_ISA_Lm18446744073709551615EEEEEDaSS_EUlSS_E_EEvSP_xT1_T2_(v11, v12, 11, shazam::regresspair_y, *a1, a1[2]);
}

float shazam::shearfactor<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,(void *)0>(unint64_t *a1, float *a2, float *a3)
{
  v6 = 0;
  v7 = a1[1];
  v8 = v7 + 8 * *a1;
  v12 = v7;
  v13 = v8;
  v14 = v7;
  while (v14 != v8)
  {
    v6 += *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v12);
    v9 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v12);
    if (v12 != v7 || v13 != v8)
    {
      gsl::details::terminate(v9);
    }
  }

  result = expm1(v6 / (*a1 * 3103.8));
  *a3 = result;
  *a2 = result;
  return result;
}

void shazam::xpairs_to_regresspairs<shazam::xpair_group<shazam::xpair_fields>>(unint64_t a1, uint64_t a2, float **a3, float a4)
{
  std::vector<shazam::spectral_peak_t>::resize(a3, a1);
  v8 = *a3;
  v9 = a3[1] - *a3;
  if (v9)
  {
    v10 = v9 >> 3;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = (a2 + 4);
    do
    {
      LOWORD(v7) = *(v11 - 1);
      v12 = LODWORD(v7);
      *v8 = v12;
      v13 = *v11;
      v11 += 2;
      v7 = v13 + (-a4 * v12);
      v8[1] = v7;
      v8 += 2;
      --v10;
    }

    while (v10);
  }
}

void _ZN6shazam5focusILl2ENS_11regresspairEPDoFfRKS1_EZZNS_10cull_phaseIL8AlgoType1ENS_11xpair_groupIJNS_12xpair_fieldsEEEELm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSC_9allocatorISE_EEEESE_RNSD_IS1_NSF_IS1_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEENKUlT_E_clINSN_ISA_Lm18446744073709551615EEEEEDaSS_EUlSS_E_EEvSP_xT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, float (*a4)(uint64_t), uint64_t a5, unint64_t *a6)
{
  v22[0] = a1;
  v22[1] = a2;
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = a3;
    do
    {
      if (v13 == v10)
      {
LABEL_16:
        gsl::details::terminate(a1);
      }

      v15 = v13;
      a1 = (a4)(a2 + 8 * v13);
      if (v12 >= v10)
      {
LABEL_10:
        v19 = v12;
      }

      else
      {
        v17 = v16 + v14;
        v18 = a2 + 8 * v12;
        do
        {
          if (v10 == v12)
          {
            goto LABEL_16;
          }

          if (a4(v18) >= v17)
          {
            goto LABEL_10;
          }

          v12 = (v12 + 1);
          v18 += 8;
          v11 = v15;
        }

        while (v10 != v12);
        v19 = v10;
        v11 = v15;
      }

      v13 = v15 + 1;
      v12 = (v19 + 1);
    }

    while ((v19 + 1) < v10);
    if (v19 - v15 >= 3)
    {
      v25[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v22, v11, (v19 - v15));
      v25[1] = v20;
      *(a5 + 48) = v25[0];
      shazam::regress<shazam::regresspair,shazam::extractX<shazam::regresspair>,shazam::extractY<shazam::regresspair>>(v25, v23);
      if (v24 == 1)
      {
        v21 = v23[0] + *(a5 + 72);
        *(a5 + 60) = v21;
        *(a5 + 64) = v23[1];
        std::vector<shazam::Result>::push_back[abi:ne200100](a6, a5);
      }
    }
  }
}

uint64_t shazam::insertionsort<shazam::regresspair,unsigned long,std::less<shazam::regresspair>>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a2 + 1;
  if (a2 + 1 < a3)
  {
    v4 = result + 8 * a2 + 4;
    do
    {
      v5 = *(result + 8 * v3);
      if (v3)
      {
        v6 = v4;
        v7 = v3;
        do
        {
          if (*v6 <= *(&v5 + 1))
          {
            break;
          }

          *(v6 + 4) = *(v6 - 4);
          v6 -= 8;
          --v7;
        }

        while (v7);
      }

      else
      {
        v7 = 0;
      }

      *(result + 8 * v7) = v5;
      ++v3;
      v4 += 8;
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,false>(uint64_t result, float *a2, uint64_t a3, uint64_t a4, char a5)
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
        if (*(a2 - 1) >= v9[1])
        {
          return result;
        }

        v47 = *v9;
LABEL_81:
        *v9 = *(a2 - 1);
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
      v48 = v9[3];
      v49 = v9[1];
      v50 = v9[5];
      if (v48 >= v49)
      {
        if (v50 < v48)
        {
          v55 = *(v9 + 1);
          v54 = *(v9 + 2);
          *(v9 + 1) = v54;
          *(v9 + 2) = v55;
          v50 = *(&v55 + 1);
          if (v49 > *(&v54 + 1))
          {
            v56 = *v9;
            *v9 = v54;
            *(v9 + 1) = v56;
          }
        }
      }

      else
      {
        v51 = *v9;
        LODWORD(v52) = HIDWORD(*v9);
        if (v50 < v48)
        {
          *v9 = *(v9 + 2);
          goto LABEL_110;
        }

        *v9 = *(v9 + 1);
        *(v9 + 1) = v51;
        if (v50 < v52)
        {
          *(v9 + 1) = *(v9 + 2);
LABEL_110:
          *(v9 + 2) = v51;
          v50 = v52;
        }
      }

      if (*(a2 - 1) < v50)
      {
        v64 = *(v9 + 2);
        *(v9 + 2) = *(a2 - 1);
        *(a2 - 1) = v64;
        if (v9[5] < v9[3])
        {
          v66 = *(v9 + 1);
          v65 = *(v9 + 2);
          *(v9 + 1) = v65;
          *(v9 + 2) = v66;
          if (v9[1] > *(&v65 + 1))
          {
            v67 = *v9;
            *v9 = v65;
            *(v9 + 1) = v67;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,0>(v9, v9 + 2, v9 + 4, v9 + 6, a2 - 2);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(v9, a2);
      }

      else if (v9 != a2)
      {
        while ((v8 + 8) != a2)
        {
          v57 = *(v8 + 12);
          v58 = *(v8 + 4);
          v63 = (v8 + 8);
          v8 += 8;
          if (v57 < v58)
          {
            v59 = *v63;
            v60 = v8;
            do
            {
              v61 = v60;
              v62 = *(v60 - 8);
              v60 -= 8;
              *v61 = v62;
            }

            while (*(v61 - 3) > v57);
            *v60 = v59;
            *(v60 + 4) = v57;
          }
        }
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,shazam::regresspair *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v15 = v13[1];
      if (v15 >= v9[1])
      {
        if (v14 < v15)
        {
          v19 = *v13;
          *v13 = *(a2 - 1);
          *(a2 - 1) = v19;
          if (v13[1] < v9[1])
          {
            v20 = *v9;
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        v16 = *v9;
        if (v14 < v15)
        {
          *v9 = *(a2 - 1);
          goto LABEL_29;
        }

        *v9 = *v13;
        *v13 = v16;
        if (*(a2 - 1) < *(&v16 + 1))
        {
          *v13 = *(a2 - 1);
LABEL_29:
          *(a2 - 1) = v16;
        }
      }

      v23 = v13 - 2;
      v24 = *(v13 - 1);
      v25 = *(a2 - 3);
      if (v24 >= v9[3])
      {
        if (v25 < v24)
        {
          v27 = *v23;
          *v23 = *(a2 - 2);
          *(a2 - 2) = v27;
          if (*(v13 - 1) < v9[3])
          {
            v28 = *(v9 + 1);
            *(v9 + 1) = *v23;
            *v23 = v28;
          }
        }
      }

      else
      {
        v26 = *(v9 + 1);
        if (v25 < v24)
        {
          *(v9 + 1) = *(a2 - 2);
          goto LABEL_43;
        }

        *(v9 + 1) = *v23;
        *v23 = v26;
        if (*(a2 - 3) < *(&v26 + 1))
        {
          *v23 = *(a2 - 2);
LABEL_43:
          *(a2 - 2) = v26;
        }
      }

      v29 = (v13 + 2);
      v30 = v13[3];
      v31 = *(a2 - 5);
      if (v30 >= v9[5])
      {
        if (v31 < v30)
        {
          v33 = *v29;
          *v29 = *(a2 - 3);
          *(a2 - 3) = v33;
          if (v13[3] < v9[5])
          {
            v34 = *(v9 + 2);
            *(v9 + 2) = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        v32 = *(v9 + 2);
        if (v31 < v30)
        {
          *(v9 + 2) = *(a2 - 3);
          goto LABEL_52;
        }

        *(v9 + 2) = *v29;
        *v29 = v32;
        if (*(a2 - 5) < *(&v32 + 1))
        {
          *v29 = *(a2 - 3);
LABEL_52:
          *(a2 - 3) = v32;
        }
      }

      v35 = v13[1];
      v36 = *(v13 - 1);
      v37 = v13[3];
      if (v35 >= v36)
      {
        v38 = *v13;
        if (v37 < v35)
        {
          v39 = *v29;
          *v13 = *v29;
          *v29 = v38;
          if (v36 <= *(&v39 + 1))
          {
            v38 = v39;
          }

          else
          {
            v38 = *v23;
            *v23 = v39;
            *v13 = v38;
          }
        }
      }

      else
      {
        v38 = *v23;
        if (v37 >= v35)
        {
          *v23 = *v13;
          *v13 = v38;
          if (v37 < *(&v38 + 1))
          {
            v40 = *v29;
            *v13 = *v29;
            *v29 = v38;
            v38 = v40;
          }
        }

        else
        {
          *v23 = *v29;
          *v29 = v38;
          v38 = *v13;
        }
      }

      v41 = *v9;
      *v9 = v38;
      *v13 = v41;
      if (a5)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v17 = v9[1];
    if (v17 < v13[1])
    {
      v18 = *v13;
      if (v14 < v17)
      {
        *v13 = *(a2 - 1);
        goto LABEL_38;
      }

      *v13 = *v9;
      *v9 = v18;
      if (*(a2 - 1) < *(&v18 + 1))
      {
        *v9 = *(a2 - 1);
LABEL_38:
        *(a2 - 1) = v18;
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

    v21 = *v9;
    *v9 = *(a2 - 1);
    *(a2 - 1) = v21;
    if (v9[1] >= v13[1])
    {
      goto LABEL_39;
    }

    v22 = *v13;
    *v13 = *v9;
    *v9 = v22;
    if (a5)
    {
      goto LABEL_64;
    }

LABEL_63:
    if (*(v9 - 1) >= v9[1])
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::regresspair *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_64:
    v42 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::regresspair *,std::__less<void,void> &>(v9, a2);
    if ((v43 & 1) == 0)
    {
      goto LABEL_67;
    }

    v44 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(v9, v42);
    v9 = v42 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(v42 + 2, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v42;
      if (v44)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v44)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,false>(v8, v42, a3, -v11, a5 & 1);
      v9 = v42 + 2;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v45 = v9[3];
  v46 = *(a2 - 1);
  if (v45 < v9[1])
  {
    v47 = *v9;
    if (v46 < v45)
    {
      goto LABEL_81;
    }

    *v9 = *(v9 + 1);
    *(v9 + 1) = v47;
    if (*(a2 - 1) >= *(&v47 + 1))
    {
      return result;
    }

    *(v9 + 1) = *(a2 - 1);
LABEL_82:
    *(a2 - 1) = v47;
    return result;
  }

  if (v46 < v45)
  {
    v53 = *(v9 + 1);
    *(v9 + 1) = *(a2 - 1);
    *(a2 - 1) = v53;
    if (v9[3] < v9[1])
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

float *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,0>(float *result, float *a2, float *a3, float *a4, float *a5)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 >= result[1])
  {
    if (v6 < v5)
    {
      v7 = *a2;
      *a2 = *a3;
      *a3 = v7;
      if (a2[1] >= result[1])
      {
        goto LABEL_7;
      }

      v8 = *result;
      *result = *a2;
      *a2 = v8;
      v6 = a3[1];
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v5)
    {
      *result = *a3;
      *a3 = v7;
LABEL_7:
      v6 = *(&v7 + 1);
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v7;
    v6 = a3[1];
    if (v6 < *(&v7 + 1))
    {
      *a2 = *a3;
      *a3 = v7;
      v6 = *(&v7 + 1);
    }
  }

LABEL_10:
  if (a4[1] < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (a3[1] < a2[1])
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (a2[1] < result[1])
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (a5[1] < a4[1])
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (a4[1] < a3[1])
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (a3[1] < a2[1])
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (a2[1] < result[1])
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

_DWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
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
          v8 = v3;
          while (1)
          {
            *(result + v8 + 8) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 4);
            v8 -= 8;
            if (v9 <= v5)
            {
              v10 = (result + v8 + 8);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v7;
          v10[1] = v5;
        }

        v2 = v4 + 2;
        v3 += 8;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::regresspair *,std::__less<void,void> &>(float *a1, float *a2)
{
  v2 = a1[1];
  if (*(a2 - 1) <= v2)
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = v6[1];
      v6 += 2;
    }

    while (v7 <= v2);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v5 <= v2);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v9 > v2);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v11 = *v4;
    *v4 = *v8;
    *v8 = v11;
    do
    {
      v12 = *(v4 + 12);
      v4 += 8;
    }

    while (v12 <= v2);
    do
    {
      v13 = *(v8 - 1);
      v8 -= 2;
    }

    while (v13 > v2);
  }

  if ((v4 - 8) != a1)
  {
    *a1 = *(v4 - 8);
  }

  *(v4 - 8) = v10;
  *(v4 - 4) = v2;
  return v4;
}

float *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::regresspair *,std::__less<void,void> &>(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 < v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 < v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = v10[3];
        v10 += 2;
      }

      while (v13 < v4);
      do
      {
        v14 = *(v11 - 1);
        v11 -= 2;
      }

      while (v14 >= v4);
    }

    while (v10 < v11);
  }

  if (v10 - 2 != a1)
  {
    *a1 = *(v10 - 1);
  }

  *(v10 - 2) = v3;
  *(v10 - 1) = v4;
  return v10 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(float *a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1[3];
      v5 = *(a2 - 1);
      if (v4 >= a1[1])
      {
        if (v5 < v4)
        {
          v15 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v15;
          if (a1[3] < a1[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 1) >= *(&v3 + 1))
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 1);
LABEL_13:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        return 1;
      }

      goto LABEL_14;
    }

    v10 = a1[3];
    v11 = a1[1];
    v12 = a1[5];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v20 = *(a1 + 1);
        v19 = *(a1 + 2);
        *(a1 + 1) = v19;
        *(a1 + 2) = v20;
        v12 = *(&v20 + 1);
        if (v11 > *(&v19 + 1))
        {
          v21 = *a1;
          *a1 = v19;
          *(a1 + 1) = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = *a1;
    LODWORD(v14) = HIDWORD(*a1);
    if (v12 >= v10)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (*(a2 - 1) < v12)
        {
          v31 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 1);
          *(a2 - 1) = v31;
          if (a1[5] < a1[3])
          {
            v33 = *(a1 + 1);
            v32 = *(a1 + 2);
            *(a1 + 1) = v32;
            *(a1 + 2) = v33;
            if (a1[1] > *(&v32 + 1))
            {
              v34 = *a1;
              *a1 = v32;
              *(a1 + 1) = v34;
            }
          }
        }

        return 1;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v13;
    v12 = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < a1[1])
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1[3];
  v7 = a1[1];
  v8 = a1[5];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = *(a1 + 1);
      v16 = *(a1 + 2);
      *(a1 + 1) = v16;
      *(a1 + 2) = v17;
      if (v7 > *(&v16 + 1))
      {
        v18 = *a1;
        *a1 = v16;
        *(a1 + 1) = v18;
      }
    }
  }

  else
  {
    v9 = *a1;
    if (v8 >= v6)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v9;
      if (v8 >= *(&v9 + 1))
      {
        goto LABEL_34;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v9;
  }

LABEL_34:
  v22 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 4;
  while (1)
  {
    v26 = v22[1];
    if (v26 < v25[1])
    {
      v27 = *v22;
      v28 = v23;
      while (1)
      {
        *(a1 + v28 + 24) = *(a1 + v28 + 16);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(a1 + v28 + 12);
        v28 -= 8;
        if (v29 <= v26)
        {
          v30 = a1 + v28 + 24;
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v27;
      *(v30 + 4) = v26;
      if (++v24 == 8)
      {
        return v22 + 2 == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 += 2;
    if (v22 == a2)
    {
      return 1;
    }
  }
}

float *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,shazam::regresspair *>(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(a1, a4, v8, v11);
        v11 -= 2;
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
        if (v12[1] < a1[1])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(a1, a4, v8, a1);
        }

        v12 += 2;
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
          v17 = &v16[2 * v14];
          v18 = v17 + 2;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v19;
          }

          else
          {
            v20 = v17[3];
            v21 = v17[5];
            v22 = v17 + 4;
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
        v6 -= 2;
        if (v18 == v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(a1, (v18 + 2), a4, ((v18 + 2) - a1) >> 3);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 8 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] < v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 8 * v4;
    v6 = *(a2 - 4);
    if (*(v5 + 4) < v6)
    {
      v9 = *(a2 - 8);
      v7 = a2 - 8;
      v8 = v9;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 8 * v4;
      }

      while (*(v5 + 4) < v6);
      *v7 = v8;
      *(v7 + 4) = v6;
    }
  }

  return result;
}

gsl::details *shazam::regress<shazam::regresspair,shazam::extractX<shazam::regresspair>,shazam::extractY<shazam::regresspair>>@<X0>(gsl::details *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 1);
  v5 = v4 + 8 * *result;
  v16 = v4;
  v17 = v5;
  v18 = v4;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  while (v18 != v5)
  {
    v10 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v16);
    v11 = v10[1];
    v9 = v9 + (*v10 * *v10);
    v8 = v8 + (*v10 * v11);
    v6 = v6 + *v10;
    v7 = v7 + v11;
    result = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v16);
    if (v16 != v4 || v17 != v5)
    {
      gsl::details::terminate(result);
    }
  }

  v13 = *v2;
  v14 = v13 * v9 - v6 * v6;
  if (v14 == 0.0)
  {
    v15 = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = (v13 * v8 - v7 * v6) / v14;
    *(a2 + 8) = (v9 * v7 - v8 * v6) / v14;
    v15 = 1;
  }

  *(a2 + 16) = v15;
  return result;
}

gsl::details *gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(gsl::details *a1, unint64_t a2, gsl::details *this)
{
  v3 = *a1 - a2;
  if (*a1 < a2)
  {
    goto LABEL_6;
  }

  if (this == -1)
  {
    this = (*a1 - a2);
    if (v3 != -1)
    {
      return this;
    }

LABEL_6:
    gsl::details::terminate(a1);
  }

  if (v3 < this)
  {
    goto LABEL_6;
  }

  return this;
}

void std::vector<shazam::Result>::__construct_one_at_end[abi:ne200100]<shazam::Result const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(v3 + 64) = *(a2 + 64);
  *(v3 + 80) = v7;
  *(v3 + 32) = v5;
  *(v3 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(v3 + 128) = *(a2 + 128);
  *(v3 + 144) = v10;
  *(v3 + 96) = v8;
  *(v3 + 112) = v9;
  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((v3 + 160), *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v11 = *(a2 + 160);
    *(v3 + 176) = *(a2 + 176);
    *(v3 + 160) = v11;
  }

  *(a1 + 8) = v3 + 184;
}

uint64_t std::vector<shazam::Result>::__emplace_back_slow_path<shazam::Result const&>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xD37A6F4DE9BD37A7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1642C8590B21642)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xA6F4DE9BD37A6F4ELL * ((a1[2] - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((a1[2] - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v6 = 0x1642C8590B21642;
  }

  else
  {
    v6 = v3;
  }

  v26 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::Result>>(a1, v6);
  }

  v7 = 184 * v2;
  v23 = 0;
  v24 = v7;
  v25 = 184 * v2;
  v8 = *(a2 + 80);
  v10 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v7 + 64) = *(a2 + 64);
  *(v7 + 80) = v8;
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  v11 = *(a2 + 144);
  v13 = *(a2 + 96);
  v12 = *(a2 + 112);
  *(v7 + 128) = *(a2 + 128);
  *(v7 + 144) = v11;
  *(v7 + 96) = v13;
  *(v7 + 112) = v12;
  v14 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v14;
  if (*(a2 + 183) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 160), *(a2 + 160), *(a2 + 168));
    v7 = v24;
    v16 = v25;
  }

  else
  {
    v15 = *(a2 + 160);
    *(184 * v2 + 0xB0) = *(a2 + 176);
    *(184 * v2 + 0xA0) = v15;
    v16 = 184 * v2;
  }

  *&v25 = v16 + 184;
  v17 = a1[1];
  v18 = v7 + *a1 - v17;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::Result>,shazam::Result*>(a1, *a1, v17, v18);
  v19 = *a1;
  *a1 = v18;
  v20 = a1[2];
  v22 = v25;
  *(a1 + 1) = v25;
  *&v25 = v19;
  *(&v25 + 1) = v20;
  v23 = v19;
  v24 = v19;
  std::__split_buffer<shazam::Result>::~__split_buffer(&v23);
  return v22;
}

void sub_230FB5660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<shazam::Result>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::Result>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::Result>,shazam::Result*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v18 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 80);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 80) = v10;
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      v11 = *(v6 + 96);
      v12 = *(v6 + 112);
      v13 = *(v6 + 144);
      *(a4 + 128) = *(v6 + 128);
      *(a4 + 144) = v13;
      *(a4 + 96) = v11;
      *(a4 + 112) = v12;
      v14 = *(v6 + 160);
      *(a4 + 176) = *(v6 + 176);
      *(a4 + 160) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 160) = 0;
      v6 += 184;
      a4 += 184;
    }

    while (v6 != a3);
    v19 = a4;
    v17 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 183) < 0)
      {
        operator delete(*(v5 + 160));
      }

      v5 += 184;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::Result>,shazam::Result*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::Result>,shazam::Result*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<shazam::Result>,shazam::Result*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<shazam::Result>,shazam::Result*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 1) < 0)
    {
      operator delete(*(v1 - 24));
    }

    v1 -= 184;
  }
}

uint64_t std::__split_buffer<shazam::Result>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<shazam::Result>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<shazam::Result>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 184;
      *(a1 + 16) = v2 - 184;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

float shazam::thresholdScore<(AlgoType)1>(int a1, int a2, float a3, float a4)
{
  v4 = &shazam::thresholdCurve;
  if (a2 == 4 && a1 == 4)
  {
    v4 = &shazam::thresholdCurve_4bands;
  }

  v6 = v4[1];
  v9[0] = *v4;
  v9[1] = v6;
  v7 = v4[3];
  v9[2] = v4[2];
  v9[3] = v7;
  return shazam::thresholdLerp(v9, a4) * a3;
}

uint64_t shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v4 > *a2)
  {
    LOBYTE(v4) = *a2;
  }

  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v7 = (*a1 + 8);
    v4 = v4;
    do
    {
      v6 += (*v7 - *(v7 - 1)) >> 3;
      v7 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    v6 = 0;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::vector<float>::reserve(a3, v6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = (*a1 + 24 * i);
      v11 = *v10;
      v12 = v10[1];
      if (*v10 != v12)
      {
        v13 = a3[1];
        do
        {
          v14 = a3[2];
          if (v13 >= v14)
          {
            v15 = (v13 - *a3) >> 2;
            if ((v15 + 1) >> 62)
            {
              std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
            }

            v16 = v14 - *a3;
            v17 = v16 >> 1;
            if (v16 >> 1 <= (v15 + 1))
            {
              v17 = v15 + 1;
            }

            if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v18 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::signature_header_type>>(a3, v18);
            }

            v19 = (4 * v15);
            LOWORD(v8) = *(v11 + 4);
            v20 = LODWORD(v8) * 0.24997;
            *v19 = *v19 & 0xFFFFC000 | v20 & 0x3FFF;
            *(4 * v15) = v20 & 0x3FFF | (*v11 << 14);
            v13 = (4 * v15 + 4);
            v21 = a3[1] - *a3;
            v22 = 4 * v15 - v21;
            memcpy(v19 - v21, *a3, v21);
            v23 = *a3;
            *a3 = v22;
            a3[1] = v13;
            a3[2] = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            LOWORD(v8) = *(v11 + 4);
            v8 = LODWORD(v8) * 0.24997;
            *v13 = *v13 & 0xFFFFC000 | v8 & 0x3FFF;
            *v13++ = v8 & 0x3FFF | (*v11 << 14);
          }

          a3[1] = v13;
          v11 += 8;
        }

        while (v11 != v12);
      }
    }
  }

  v24 = a3[1];
  v25 = 126 - 2 * __clz((v24 - *a3) >> 2);
  if (v24 == *a3)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *,false>(*a3, v24, &v29, v26, 1);
}

void sub_230FB5B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *,false>(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= v62)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            LODWORD(v59) = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        LODWORD(v59) = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= v51)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          LODWORD(v51) = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          LODWORD(v51) = v49;
          LODWORD(v49) = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          LODWORD(v51) = result;
          LODWORD(v49) = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        LODWORD(v49) = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 4) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 4);
                v72 -= 4;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 4);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 4;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *,shazam::peak_tf *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::peak_tf *,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::peak_tf *,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(v41 + 1, a2);
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
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::peak_tf *,std::__less<void,void> &>(unsigned int *a1, int *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unsigned int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::peak_tf *,std::__less<void,void> &>(unsigned int *a1, unsigned int *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(unsigned int *a1, unsigned int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *,shazam::peak_tf *>(unsigned int *a1, unsigned int *a2, int *a3, uint64_t a4)
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
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(a1, a4, v8, v11--);
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
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(a1, a4, v8, a1);
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
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 > v22)
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }

            else
            {
              v18 = v21;
            }
          }

          *v16 = v20;
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
          v25 = (v18 - a1 + 4) >> 2;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::peak_tf *>(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        v11 = v8[1];
        if (*v8 <= v11)
        {
          v10 = v8[1];
        }

        if (*v8 < v11)
        {
          ++v8;
          v7 = v9;
        }
      }

      v12 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = (2 * v7) | 1;
          v8 = (result + 4 * v13);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v13;
          }

          else
          {
            v10 = *v8;
            v14 = v8[1];
            if (*v8 <= v14)
            {
              v10 = v8[1];
            }

            if (*v8 >= v14)
            {
              v7 = v13;
            }

            else
            {
              ++v8;
            }
          }
        }

        while (v10 >= v12);
        *a4 = v12;
      }
    }
  }

  return result;
}

void std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<shazam::Result>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,false>(__int128 *result, char *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
  v9 = 0xD37A6F4DE9BD37A7;
LABEL_2:
  v71 = (a2 - 184);
  v10 = result;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = ((a2 - v10) >> 3) * v9;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return;
      }

      if (v14 == 2)
      {
        if (*(a2 - 15) > *(v10 + 31))
        {
          v74 = *v10;
          v79 = v10[1];
          v94 = v10[4];
          v99 = v10[5];
          v84 = v10[2];
          v89 = v10[3];
          v114 = v10[8];
          v119 = v10[9];
          v104 = v10[6];
          v109 = v10[7];
          v35 = *(v10 + 20);
          *&v124 = *(v10 + 21);
          *(&v124 + 7) = *(v10 + 175);
          v36 = *(v10 + 183);
          *(v10 + 21) = 0;
          *(v10 + 22) = 0;
          *(v10 + 20) = 0;
          v37 = *(a2 - 184);
          v10[1] = *(a2 - 168);
          v38 = *(a2 - 136);
          v39 = *(a2 - 104);
          v40 = *(a2 - 152);
          v10[4] = *(a2 - 120);
          v10[5] = v39;
          v10[2] = v40;
          v10[3] = v38;
          v41 = *(a2 - 72);
          v42 = *(a2 - 40);
          v43 = *(a2 - 88);
          v10[8] = *(a2 - 56);
          v10[9] = v42;
          v10[6] = v43;
          v10[7] = v41;
          *v10 = v37;
          v44 = *(a2 - 24);
          *(v10 + 22) = *(a2 - 1);
          v10[10] = v44;
          *(a2 - 88) = v104;
          *(a2 - 72) = v109;
          *(a2 - 56) = v114;
          *(a2 - 40) = v119;
          *(a2 - 152) = v84;
          *(a2 - 136) = v89;
          *(a2 - 120) = v94;
          *(a2 - 104) = v99;
          *(a2 - 184) = v74;
          *(a2 - 168) = v79;
          *(a2 - 3) = v35;
          *(a2 - 2) = v124;
          *(a2 - 9) = *(&v124 + 7);
          *(a2 - 1) = v36;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v45 = (v10 + 184);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v10, (v10 + 184), v10 + 23);
      if (*(a2 - 15) > *(v10 + 123))
      {
        v105 = v10[29];
        v110 = v10[30];
        v115 = v10[31];
        v120 = v10[32];
        v85 = v10[25];
        v90 = v10[26];
        v95 = v10[27];
        v100 = v10[28];
        v75 = v10[23];
        v80 = v10[24];
        v46 = *(v10 + 66);
        *&v125 = *(v10 + 67);
        *(&v125 + 7) = *(v10 + 543);
        v47 = *(v10 + 551);
        *(v10 + 68) = 0;
        v10[33] = 0u;
        v48 = *(a2 - 168);
        v10[23] = *(a2 - 184);
        v10[24] = v48;
        v49 = *(a2 - 136);
        v50 = *(a2 - 104);
        v51 = *(a2 - 152);
        v10[27] = *(a2 - 120);
        v10[28] = v50;
        v10[25] = v51;
        v10[26] = v49;
        v52 = *(a2 - 72);
        v53 = *(a2 - 40);
        v54 = *(a2 - 88);
        v10[31] = *(a2 - 56);
        v10[32] = v53;
        v10[29] = v54;
        v10[30] = v52;
        v55 = *(a2 - 1);
        v10[33] = *(a2 - 24);
        *(v10 + 68) = v55;
        *(a2 - 88) = v105;
        *(a2 - 72) = v110;
        *(a2 - 56) = v115;
        *(a2 - 40) = v120;
        *(a2 - 152) = v85;
        *(a2 - 136) = v90;
        *(a2 - 120) = v95;
        *(a2 - 104) = v100;
        *(a2 - 184) = v75;
        *(a2 - 168) = v80;
        *(a2 - 3) = v46;
        *(a2 - 2) = v125;
        *(a2 - 9) = *(&v125 + 7);
        *(a2 - 1) = v47;
        if (*(v10 + 123) > *(v10 + 77))
        {
          v106 = *(v10 + 280);
          v111 = *(v10 + 296);
          v116 = *(v10 + 312);
          v121 = *(v10 + 328);
          v86 = *(v10 + 216);
          v91 = *(v10 + 232);
          v96 = *(v10 + 248);
          v101 = *(v10 + 264);
          v76 = *v45;
          v81 = *(v10 + 200);
          v56 = *(v10 + 43);
          *&v126 = *(v10 + 44);
          *(&v126 + 7) = *(v10 + 359);
          v57 = *(v10 + 367);
          v58 = v10[30];
          *(v10 + 280) = v10[29];
          *(v10 + 296) = v58;
          v59 = v10[32];
          *(v10 + 312) = v10[31];
          *(v10 + 328) = v59;
          v60 = v10[26];
          *(v10 + 216) = v10[25];
          *(v10 + 232) = v60;
          v61 = v10[28];
          *(v10 + 248) = v10[27];
          *(v10 + 264) = v61;
          v62 = v10[24];
          *v45 = v10[23];
          *(v10 + 200) = v62;
          *(v10 + 344) = v10[33];
          *(v10 + 45) = *(v10 + 68);
          v10[29] = v106;
          v10[30] = v111;
          v10[31] = v116;
          v10[32] = v121;
          v10[25] = v86;
          v10[26] = v91;
          v10[27] = v96;
          v10[28] = v101;
          v10[23] = v76;
          v10[24] = v81;
          *(v10 + 66) = v56;
          *(v10 + 67) = v126;
          *(v10 + 543) = *(&v126 + 7);
          v63 = *(v10 + 77);
          LODWORD(v62) = *(v10 + 31);
          *(v10 + 551) = v57;
          if (v63 > *&v62)
          {
            v77 = *v10;
            v82 = v10[1];
            v97 = v10[4];
            v102 = v10[5];
            v87 = v10[2];
            v92 = v10[3];
            v117 = v10[8];
            v122 = v10[9];
            v107 = v10[6];
            v112 = v10[7];
            *(&v127 + 7) = *(v10 + 175);
            v64 = *(v10 + 20);
            *&v127 = *(v10 + 21);
            v65 = *(v10 + 183);
            v66 = *(v10 + 264);
            v10[4] = *(v10 + 248);
            v10[5] = v66;
            v67 = *(v10 + 232);
            v10[2] = *(v10 + 216);
            v10[3] = v67;
            v68 = *(v10 + 328);
            v10[8] = *(v10 + 312);
            v10[9] = v68;
            v69 = *(v10 + 296);
            v10[6] = *(v10 + 280);
            v10[7] = v69;
            v70 = *(v10 + 200);
            *v10 = *v45;
            v10[1] = v70;
            v10[10] = *(v10 + 344);
            *(v10 + 22) = *(v10 + 45);
            *(v10 + 280) = v107;
            *(v10 + 296) = v112;
            *(v10 + 312) = v117;
            *(v10 + 328) = v122;
            *(v10 + 216) = v87;
            *(v10 + 232) = v92;
            *(v10 + 248) = v97;
            *(v10 + 264) = v102;
            *v45 = v77;
            *(v10 + 200) = v82;
            *(v10 + 43) = v64;
            *(v10 + 44) = v127;
            *(v10 + 359) = *(&v127 + 7);
            *(v10 + 367) = v65;
          }
        }
      }

      return;
    }

    if (v14 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v10, v10 + 184, (v10 + 23), v10 + 552, v71);
      return;
    }

LABEL_11:
    if (v13 <= 4415)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,shazam::Result *>(v10, a2, a2, a3, a6);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 184 * (v14 >> 1);
    if (v13 < 0x5C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v16, v10, v71);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v10, v16, v71);
      v17 = v10 + 184;
      v18 = v9;
      v19 = 184 * v15;
      v20 = (result + 184 * v15 - 184);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>((result + 184), v20, a2 - 23);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(result + 23, &v17[v19], (a2 - 552));
      v21 = &v17[v19];
      v9 = v18;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v20, v16, v21);
      v73 = *result;
      v78 = result[1];
      v93 = result[4];
      v98 = result[5];
      v83 = result[2];
      v88 = result[3];
      v113 = result[8];
      v118 = result[9];
      v103 = result[6];
      v108 = result[7];
      v22 = *(result + 20);
      *&v123 = *(result + 21);
      *(&v123 + 7) = *(result + 175);
      v23 = *(result + 183);
      *(result + 21) = 0;
      *(result + 22) = 0;
      *(result + 20) = 0;
      v24 = *(v16 + 1);
      *result = *v16;
      result[1] = v24;
      v25 = *(v16 + 5);
      v27 = *(v16 + 2);
      v26 = *(v16 + 3);
      result[4] = *(v16 + 4);
      result[5] = v25;
      result[2] = v27;
      result[3] = v26;
      v28 = *(v16 + 9);
      v30 = *(v16 + 6);
      v29 = *(v16 + 7);
      result[8] = *(v16 + 8);
      result[9] = v28;
      result[6] = v30;
      result[7] = v29;
      v31 = *(v16 + 10);
      *(result + 22) = *(v16 + 22);
      result[10] = v31;
      *(v16 + 6) = v103;
      *(v16 + 7) = v108;
      *(v16 + 8) = v113;
      *(v16 + 9) = v118;
      *(v16 + 2) = v83;
      *(v16 + 3) = v88;
      *(v16 + 4) = v93;
      *(v16 + 5) = v98;
      *v16 = v73;
      *(v16 + 1) = v78;
      *(v16 + 20) = v22;
      *(v16 + 175) = *(&v123 + 7);
      *(v16 + 21) = v123;
      v16[183] = v23;
    }

    if ((a5 & 1) == 0 && *(result - 15) <= *(result + 31))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Result *,std::greater<void> &>(result, a2);
      goto LABEL_23;
    }

    v32 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Result *,std::greater<void> &>(result, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }

    v34 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(result, v32);
    v10 = (v32 + 184);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>((v32 + 184), a2))
    {
      a4 = -v12;
      a2 = v32;
      if (v34)
      {
        return;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v34)
    {
LABEL_21:
      std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,false>(result, v32, a3, -v12, a5 & 1);
      v10 = (v32 + 184);
LABEL_23:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(v10, (v10 + 184), v71);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 31);
  v4 = *(a3 + 31);
  if (v3 <= *(a1 + 31))
  {
    if (v4 <= v3)
    {
      return 0;
    }

    v77 = a2[6];
    v81 = a2[7];
    v85 = a2[8];
    v89 = a2[9];
    v61 = a2[2];
    v65 = a2[3];
    v69 = a2[4];
    v73 = a2[5];
    v53 = *a2;
    v57 = a2[1];
    v15 = *(a2 + 20);
    *&v93 = *(a2 + 21);
    *(&v93 + 7) = *(a2 + 175);
    v16 = *(a2 + 183);
    *(a2 + 168) = 0uLL;
    *(a2 + 20) = 0;
    v17 = a3[1];
    *a2 = *a3;
    a2[1] = v17;
    v18 = a3[5];
    v20 = a3[2];
    v19 = a3[3];
    a2[4] = a3[4];
    a2[5] = v18;
    a2[2] = v20;
    a2[3] = v19;
    v21 = a3[9];
    v23 = a3[6];
    v22 = a3[7];
    a2[8] = a3[8];
    a2[9] = v21;
    a2[6] = v23;
    a2[7] = v22;
    v24 = *(a3 + 22);
    a2[10] = a3[10];
    *(a2 + 22) = v24;
    a3[6] = v77;
    a3[7] = v81;
    a3[8] = v85;
    a3[9] = v89;
    a3[2] = v61;
    a3[3] = v65;
    a3[4] = v69;
    a3[5] = v73;
    *a3 = v53;
    a3[1] = v57;
    *(a3 + 20) = v15;
    *(a3 + 21) = v93;
    *(a3 + 175) = *(&v93 + 7);
    *(a3 + 183) = v16;
    if (*(a2 + 31) > *(a1 + 31))
    {
      v78 = a1[6];
      v82 = a1[7];
      v86 = a1[8];
      v90 = a1[9];
      v62 = a1[2];
      v66 = a1[3];
      v70 = a1[4];
      v74 = a1[5];
      v54 = *a1;
      v58 = a1[1];
      v25 = *(a1 + 20);
      *&v94 = *(a1 + 21);
      *(&v94 + 7) = *(a1 + 175);
      v26 = *(a1 + 183);
      *(a1 + 168) = 0uLL;
      *(a1 + 20) = 0;
      v27 = a2[1];
      *a1 = *a2;
      a1[1] = v27;
      v28 = a2[5];
      v30 = a2[2];
      v29 = a2[3];
      a1[4] = a2[4];
      a1[5] = v28;
      a1[2] = v30;
      a1[3] = v29;
      v31 = a2[9];
      v33 = a2[6];
      v32 = a2[7];
      a1[8] = a2[8];
      a1[9] = v31;
      a1[6] = v33;
      a1[7] = v32;
      v34 = *(a2 + 22);
      a1[10] = a2[10];
      *(a1 + 22) = v34;
      a2[6] = v78;
      a2[7] = v82;
      a2[8] = v86;
      a2[9] = v90;
      a2[2] = v62;
      a2[3] = v66;
      a2[4] = v70;
      a2[5] = v74;
      *a2 = v54;
      a2[1] = v58;
      *(a2 + 20) = v25;
      *(a2 + 21) = v94;
      *(a2 + 175) = *(&v94 + 7);
      result = 1;
      *(a2 + 183) = v26;
      return result;
    }
  }

  else
  {
    if (v4 > v3)
    {
      v76 = a1[6];
      v80 = a1[7];
      v84 = a1[8];
      v88 = a1[9];
      v60 = a1[2];
      v64 = a1[3];
      v68 = a1[4];
      v72 = a1[5];
      v52 = *a1;
      v56 = a1[1];
      v5 = *(a1 + 20);
      *v92 = *(a1 + 21);
      *&v92[7] = *(a1 + 175);
      v6 = *(a1 + 183);
      *(a1 + 168) = 0uLL;
      *(a1 + 20) = 0;
      v7 = a3[1];
      *a1 = *a3;
      a1[1] = v7;
      v8 = a3[5];
      v10 = a3[2];
      v9 = a3[3];
      a1[4] = a3[4];
      a1[5] = v8;
      a1[2] = v10;
      a1[3] = v9;
      v11 = a3[9];
      v13 = a3[6];
      v12 = a3[7];
      a1[8] = a3[8];
      a1[9] = v11;
      a1[6] = v13;
      a1[7] = v12;
      v14 = *(a3 + 22);
      a1[10] = a3[10];
      *(a1 + 22) = v14;
LABEL_9:
      a3[6] = v76;
      a3[7] = v80;
      a3[8] = v84;
      a3[9] = v88;
      a3[2] = v60;
      a3[3] = v64;
      a3[4] = v68;
      a3[5] = v72;
      *a3 = v52;
      a3[1] = v56;
      *(a3 + 20) = v5;
      *(a3 + 21) = *v92;
      *(a3 + 175) = *&v92[7];
      result = 1;
      *(a3 + 183) = v6;
      return result;
    }

    v79 = a1[6];
    v83 = a1[7];
    v87 = a1[8];
    v91 = a1[9];
    v63 = a1[2];
    v67 = a1[3];
    v71 = a1[4];
    v75 = a1[5];
    v55 = *a1;
    v59 = a1[1];
    v5 = *(a1 + 20);
    *&v95 = *(a1 + 21);
    *(&v95 + 7) = *(a1 + 175);
    v6 = *(a1 + 183);
    *(a1 + 168) = 0uLL;
    *(a1 + 20) = 0;
    v36 = a2[1];
    *a1 = *a2;
    a1[1] = v36;
    v37 = a2[5];
    v39 = a2[2];
    v38 = a2[3];
    a1[4] = a2[4];
    a1[5] = v37;
    a1[2] = v39;
    a1[3] = v38;
    v40 = a2[9];
    v42 = a2[6];
    v41 = a2[7];
    a1[8] = a2[8];
    a1[9] = v40;
    a1[6] = v42;
    a1[7] = v41;
    v43 = a2[10];
    *(a1 + 22) = *(a2 + 22);
    a1[10] = v43;
    a2[6] = v79;
    a2[7] = v83;
    a2[8] = v87;
    a2[9] = v91;
    a2[2] = v63;
    a2[3] = v67;
    a2[4] = v71;
    a2[5] = v75;
    *a2 = v55;
    a2[1] = v59;
    *(a2 + 20) = v5;
    *(a2 + 21) = v95;
    *(a2 + 175) = *(&v95 + 7);
    *(a2 + 183) = v6;
    if (*(a3 + 31) > *(a2 + 31))
    {
      v76 = a2[6];
      v80 = a2[7];
      v84 = a2[8];
      v88 = a2[9];
      v60 = a2[2];
      v64 = a2[3];
      v68 = a2[4];
      v72 = a2[5];
      v52 = *a2;
      v56 = a2[1];
      *v92 = *(a2 + 21);
      *&v92[7] = *(a2 + 175);
      *(a2 + 168) = 0uLL;
      *(a2 + 20) = 0;
      v44 = a3[1];
      *a2 = *a3;
      a2[1] = v44;
      v45 = a3[5];
      v47 = a3[2];
      v46 = a3[3];
      a2[4] = a3[4];
      a2[5] = v45;
      a2[2] = v47;
      a2[3] = v46;
      v48 = a3[9];
      v50 = a3[6];
      v49 = a3[7];
      a2[8] = a3[8];
      a2[9] = v48;
      a2[6] = v50;
      a2[7] = v49;
      v51 = a3[10];
      *(a2 + 22) = *(a3 + 22);
      a2[10] = v51;
      goto LABEL_9;
    }
  }

  return 1;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(a1, a2, a3);
  if (*(a4 + 124) > *(a3 + 124))
  {
    v123 = *(a3 + 96);
    v130 = *(a3 + 112);
    v137 = *(a3 + 128);
    v144 = *(a3 + 144);
    v95 = *(a3 + 32);
    v102 = *(a3 + 48);
    v109 = *(a3 + 64);
    v116 = *(a3 + 80);
    v81 = *a3;
    v88 = *(a3 + 16);
    v11 = *(a3 + 160);
    *&v151 = *(a3 + 168);
    *(&v151 + 7) = *(a3 + 175);
    v12 = *(a3 + 183);
    *(a3 + 176) = 0;
    *(a3 + 168) = 0;
    *(a3 + 160) = 0;
    v13 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v13;
    v14 = *(a4 + 80);
    v16 = *(a4 + 32);
    v15 = *(a4 + 48);
    *(a3 + 64) = *(a4 + 64);
    *(a3 + 80) = v14;
    *(a3 + 32) = v16;
    *(a3 + 48) = v15;
    v17 = *(a4 + 144);
    v19 = *(a4 + 96);
    v18 = *(a4 + 112);
    *(a3 + 128) = *(a4 + 128);
    *(a3 + 144) = v17;
    *(a3 + 96) = v19;
    *(a3 + 112) = v18;
    v20 = *(a4 + 176);
    *(a3 + 160) = *(a4 + 160);
    *(a3 + 176) = v20;
    *(a4 + 96) = v123;
    *(a4 + 112) = v130;
    *(a4 + 128) = v137;
    *(a4 + 144) = v144;
    *(a4 + 32) = v95;
    *(a4 + 48) = v102;
    *(a4 + 64) = v109;
    *(a4 + 80) = v116;
    result = v81;
    *a4 = v81;
    *(a4 + 16) = v88;
    *(a4 + 160) = v11;
    *(a4 + 168) = v151;
    *(a4 + 175) = *(&v151 + 7);
    *(a4 + 183) = v12;
    if (*(a3 + 124) > *(a2 + 124))
    {
      v124 = *(a2 + 96);
      v131 = *(a2 + 112);
      v138 = *(a2 + 128);
      v145 = *(a2 + 144);
      v96 = *(a2 + 32);
      v103 = *(a2 + 48);
      v110 = *(a2 + 64);
      v117 = *(a2 + 80);
      v82 = *a2;
      v89 = *(a2 + 16);
      v21 = *(a2 + 160);
      *&v152 = *(a2 + 168);
      *(&v152 + 7) = *(a2 + 175);
      v22 = *(a2 + 183);
      *(a2 + 176) = 0;
      *(a2 + 168) = 0;
      *(a2 + 160) = 0;
      v23 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v23;
      v24 = *(a3 + 80);
      v26 = *(a3 + 32);
      v25 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 80) = v24;
      *(a2 + 32) = v26;
      *(a2 + 48) = v25;
      v27 = *(a3 + 144);
      v29 = *(a3 + 96);
      v28 = *(a3 + 112);
      *(a2 + 128) = *(a3 + 128);
      *(a2 + 144) = v27;
      *(a2 + 96) = v29;
      *(a2 + 112) = v28;
      v30 = *(a3 + 176);
      *(a2 + 160) = *(a3 + 160);
      *(a2 + 176) = v30;
      *(a3 + 96) = v124;
      *(a3 + 112) = v131;
      *(a3 + 128) = v138;
      *(a3 + 144) = v145;
      *(a3 + 32) = v96;
      *(a3 + 48) = v103;
      *(a3 + 64) = v110;
      *(a3 + 80) = v117;
      result = v82;
      *a3 = v82;
      *(a3 + 16) = v89;
      *(a3 + 160) = v21;
      *(a3 + 168) = v152;
      *(a3 + 175) = *(&v152 + 7);
      *(a3 + 183) = v22;
      if (*(a2 + 124) > *(a1 + 124))
      {
        v125 = *(a1 + 96);
        v132 = *(a1 + 112);
        v139 = *(a1 + 128);
        v146 = *(a1 + 144);
        v97 = *(a1 + 32);
        v104 = *(a1 + 48);
        v111 = *(a1 + 64);
        v118 = *(a1 + 80);
        v83 = *a1;
        v90 = *(a1 + 16);
        v31 = *(a1 + 160);
        *&v153 = *(a1 + 168);
        *(&v153 + 7) = *(a1 + 175);
        v32 = *(a1 + 183);
        *(a1 + 168) = 0;
        *(a1 + 176) = 0;
        *(a1 + 160) = 0;
        v33 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v33;
        v34 = *(a2 + 80);
        v36 = *(a2 + 32);
        v35 = *(a2 + 48);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v34;
        *(a1 + 32) = v36;
        *(a1 + 48) = v35;
        v37 = *(a2 + 144);
        v39 = *(a2 + 96);
        v38 = *(a2 + 112);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v37;
        *(a1 + 96) = v39;
        *(a1 + 112) = v38;
        v40 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v40;
        *(a2 + 96) = v125;
        *(a2 + 112) = v132;
        *(a2 + 128) = v139;
        *(a2 + 144) = v146;
        *(a2 + 32) = v97;
        *(a2 + 48) = v104;
        *(a2 + 64) = v111;
        *(a2 + 80) = v118;
        result = v83;
        *a2 = v83;
        *(a2 + 16) = v90;
        *(a2 + 160) = v31;
        *(a2 + 168) = v153;
        *(a2 + 175) = *(&v153 + 7);
        *(a2 + 183) = v32;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 124);
  if (result.n128_f32[0] > *(a4 + 124))
  {
    v126 = *(a4 + 96);
    v133 = *(a4 + 112);
    v140 = *(a4 + 128);
    v147 = *(a4 + 144);
    v98 = *(a4 + 32);
    v105 = *(a4 + 48);
    v112 = *(a4 + 64);
    v119 = *(a4 + 80);
    v84 = *a4;
    v91 = *(a4 + 16);
    v41 = *(a4 + 160);
    *&v154 = *(a4 + 168);
    *(&v154 + 7) = *(a4 + 175);
    v42 = *(a4 + 183);
    *(a4 + 176) = 0;
    *(a4 + 168) = 0;
    *(a4 + 160) = 0;
    v43 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v43;
    v44 = *(a5 + 80);
    v46 = *(a5 + 32);
    v45 = *(a5 + 48);
    *(a4 + 64) = *(a5 + 64);
    *(a4 + 80) = v44;
    *(a4 + 32) = v46;
    *(a4 + 48) = v45;
    v47 = *(a5 + 144);
    v49 = *(a5 + 96);
    v48 = *(a5 + 112);
    *(a4 + 128) = *(a5 + 128);
    *(a4 + 144) = v47;
    *(a4 + 96) = v49;
    *(a4 + 112) = v48;
    v50 = *(a5 + 176);
    *(a4 + 160) = *(a5 + 160);
    *(a4 + 176) = v50;
    *(a5 + 96) = v126;
    *(a5 + 112) = v133;
    *(a5 + 128) = v140;
    *(a5 + 144) = v147;
    *(a5 + 32) = v98;
    *(a5 + 48) = v105;
    *(a5 + 64) = v112;
    *(a5 + 80) = v119;
    result = v84;
    *a5 = v84;
    *(a5 + 16) = v91;
    *(a5 + 160) = v41;
    *(a5 + 168) = v154;
    *(a5 + 175) = *(&v154 + 7);
    *(a5 + 183) = v42;
    result.n128_u32[0] = *(a4 + 124);
    if (result.n128_f32[0] > *(a3 + 124))
    {
      v127 = *(a3 + 96);
      v134 = *(a3 + 112);
      v141 = *(a3 + 128);
      v148 = *(a3 + 144);
      v99 = *(a3 + 32);
      v106 = *(a3 + 48);
      v113 = *(a3 + 64);
      v120 = *(a3 + 80);
      v85 = *a3;
      v92 = *(a3 + 16);
      v51 = *(a3 + 160);
      *&v155 = *(a3 + 168);
      *(&v155 + 7) = *(a3 + 175);
      v52 = *(a3 + 183);
      *(a3 + 176) = 0;
      *(a3 + 168) = 0;
      *(a3 + 160) = 0;
      v53 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v53;
      v54 = *(a4 + 80);
      v56 = *(a4 + 32);
      v55 = *(a4 + 48);
      *(a3 + 64) = *(a4 + 64);
      *(a3 + 80) = v54;
      *(a3 + 32) = v56;
      *(a3 + 48) = v55;
      v57 = *(a4 + 144);
      v59 = *(a4 + 96);
      v58 = *(a4 + 112);
      *(a3 + 128) = *(a4 + 128);
      *(a3 + 144) = v57;
      *(a3 + 96) = v59;
      *(a3 + 112) = v58;
      v60 = *(a4 + 176);
      *(a3 + 160) = *(a4 + 160);
      *(a3 + 176) = v60;
      *(a4 + 96) = v127;
      *(a4 + 112) = v134;
      *(a4 + 128) = v141;
      *(a4 + 144) = v148;
      *(a4 + 32) = v99;
      *(a4 + 48) = v106;
      *(a4 + 64) = v113;
      *(a4 + 80) = v120;
      result = v85;
      *a4 = v85;
      *(a4 + 16) = v92;
      *(a4 + 160) = v51;
      *(a4 + 168) = v155;
      *(a4 + 175) = *(&v155 + 7);
      *(a4 + 183) = v52;
      result.n128_u32[0] = *(a3 + 124);
      if (result.n128_f32[0] > *(a2 + 124))
      {
        v128 = *(a2 + 96);
        v135 = *(a2 + 112);
        v142 = *(a2 + 128);
        v149 = *(a2 + 144);
        v100 = *(a2 + 32);
        v107 = *(a2 + 48);
        v114 = *(a2 + 64);
        v121 = *(a2 + 80);
        v86 = *a2;
        v93 = *(a2 + 16);
        v61 = *(a2 + 160);
        *&v156 = *(a2 + 168);
        *(&v156 + 7) = *(a2 + 175);
        v62 = *(a2 + 183);
        *(a2 + 176) = 0;
        *(a2 + 168) = 0;
        *(a2 + 160) = 0;
        v63 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v63;
        v64 = *(a3 + 80);
        v66 = *(a3 + 32);
        v65 = *(a3 + 48);
        *(a2 + 64) = *(a3 + 64);
        *(a2 + 80) = v64;
        *(a2 + 32) = v66;
        *(a2 + 48) = v65;
        v67 = *(a3 + 144);
        v69 = *(a3 + 96);
        v68 = *(a3 + 112);
        *(a2 + 128) = *(a3 + 128);
        *(a2 + 144) = v67;
        *(a2 + 96) = v69;
        *(a2 + 112) = v68;
        v70 = *(a3 + 176);
        *(a2 + 160) = *(a3 + 160);
        *(a2 + 176) = v70;
        *(a3 + 96) = v128;
        *(a3 + 112) = v135;
        *(a3 + 128) = v142;
        *(a3 + 144) = v149;
        *(a3 + 32) = v100;
        *(a3 + 48) = v107;
        *(a3 + 64) = v114;
        *(a3 + 80) = v121;
        result = v86;
        *a3 = v86;
        *(a3 + 16) = v93;
        *(a3 + 160) = v61;
        *(a3 + 168) = v156;
        *(a3 + 175) = *(&v156 + 7);
        *(a3 + 183) = v62;
        result.n128_u32[0] = *(a2 + 124);
        if (result.n128_f32[0] > *(a1 + 124))
        {
          v129 = *(a1 + 96);
          v136 = *(a1 + 112);
          v143 = *(a1 + 128);
          v150 = *(a1 + 144);
          v101 = *(a1 + 32);
          v108 = *(a1 + 48);
          v115 = *(a1 + 64);
          v122 = *(a1 + 80);
          v87 = *a1;
          v94 = *(a1 + 16);
          v71 = *(a1 + 160);
          *&v157 = *(a1 + 168);
          *(&v157 + 7) = *(a1 + 175);
          v72 = *(a1 + 183);
          *(a1 + 168) = 0;
          *(a1 + 176) = 0;
          *(a1 + 160) = 0;
          v73 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v73;
          v74 = *(a2 + 80);
          v76 = *(a2 + 32);
          v75 = *(a2 + 48);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 80) = v74;
          *(a1 + 32) = v76;
          *(a1 + 48) = v75;
          v77 = *(a2 + 144);
          v79 = *(a2 + 96);
          v78 = *(a2 + 112);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v77;
          *(a1 + 96) = v79;
          *(a1 + 112) = v78;
          v80 = *(a2 + 176);
          *(a1 + 160) = *(a2 + 160);
          *(a1 + 176) = v80;
          *(a2 + 96) = v129;
          *(a2 + 112) = v136;
          *(a2 + 128) = v143;
          *(a2 + 144) = v150;
          *(a2 + 32) = v101;
          *(a2 + 48) = v108;
          *(a2 + 64) = v115;
          *(a2 + 80) = v122;
          result = v87;
          *a2 = v87;
          *(a2 + 16) = v94;
          *(a2 + 160) = v71;
          *(a2 + 168) = v157;
          *(a2 + 175) = *(&v157 + 7);
          *(a2 + 183) = v72;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(__int128 *a1, char *a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 184;
    if (a1 + 184 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = *(v6 + 77);
        if (v8 > *(v6 + 31))
        {
          v33 = *(v4 + 4);
          v34 = *(v4 + 5);
          *v35 = *(v4 + 6);
          *&v35[12] = *(v4 + 108);
          v29 = *v4;
          v30 = *(v4 + 1);
          v31 = *(v4 + 2);
          v32 = *(v4 + 3);
          v9 = *(v6 + 312);
          v10 = *(v6 + 328);
          v11 = *(v6 + 43);
          *v28 = *(v6 + 44);
          *&v28[7] = *(v6 + 359);
          v12 = *(v6 + 367);
          *(v6 + 44) = 0;
          *(v6 + 45) = 0;
          *(v6 + 43) = 0;
          v13 = v4[183] < 0;
          v14 = v5;
          v26 = v9;
          v27 = v10;
          while (1)
          {
            v15 = v14;
            v16 = a1 + v14;
            v17 = (a1 + v14 + 184);
            v18 = *(v16 + 6);
            v19 = *(v16 + 8);
            v20 = *(v16 + 9);
            v17[7] = *(v16 + 7);
            v17[8] = v19;
            v17[9] = v20;
            v21 = *(v16 + 3);
            *(v16 + 216) = *(v16 + 2);
            *(v16 + 232) = v21;
            v22 = *(v16 + 5);
            *(v16 + 248) = *(v16 + 4);
            v17[5] = v22;
            v17[6] = v18;
            v23 = *(v16 + 1);
            *(v16 + 184) = *v16;
            v24 = (v16 + 344);
            *(v16 + 200) = v23;
            if (v13)
            {
              operator delete(*v24);
            }

            *v24 = *(v16 + 10);
            *(v16 + 45) = *(v16 + 22);
            v16[183] = 0;
            v16[160] = 0;
            if (!v15)
            {
              break;
            }

            v13 = 0;
            v14 = v15 - 184;
            if (v8 <= *(a1 + v15 - 60))
            {
              v25 = (a1 + v15);
              goto LABEL_12;
            }
          }

          v25 = a1;
LABEL_12:
          v25[4] = v33;
          v25[5] = v34;
          v25[6] = *v35;
          *(v25 + 108) = *&v35[12];
          *v25 = v29;
          v25[1] = v30;
          v25[2] = v31;
          v25[3] = v32;
          *(v25 + 31) = v8;
          v25[8] = v26;
          v25[9] = v27;
          *(a1 + v15 + 160) = v11;
          *(v25 + 175) = *&v28[7];
          *(v25 + 21) = *v28;
          *(v25 + 183) = v12;
        }

        v4 = v7 + 184;
        v5 += 184;
        v6 = v7;
      }

      while (v7 + 184 != a2);
    }
  }
}

__int128 *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v3 = (result + 184);
    if ((result + 184) != a2)
    {
      v4 = result + 10;
      do
      {
        v5 = v3;
        v6 = *(result + 77);
        if (v6 > *(result + 31))
        {
          v26 = v3[4];
          v27 = v3[5];
          *v28 = v3[6];
          *&v28[12] = *(v3 + 108);
          v22 = *v3;
          v23 = v3[1];
          v24 = v3[2];
          v25 = v3[3];
          v7 = *(result + 312);
          v8 = *(result + 328);
          v9 = *(result + 43);
          *v21 = *(result + 44);
          *&v21[7] = *(result + 359);
          v10 = *(result + 367);
          result[22] = 0uLL;
          *(result + 43) = 0;
          v11 = *(v3 + 183) < 0;
          v12 = v4;
          v19 = v7;
          v20 = v8;
          do
          {
            v13 = *(v12 - 3);
            *(v12 + 120) = *(v12 - 4);
            *(v12 + 136) = v13;
            v14 = *(v12 - 1);
            *(v12 + 152) = *(v12 - 2);
            *(v12 + 168) = v14;
            v15 = *(v12 - 7);
            *(v12 + 56) = *(v12 - 8);
            *(v12 + 72) = v15;
            v16 = *(v12 - 5);
            *(v12 + 88) = *(v12 - 6);
            *(v12 + 104) = v16;
            v17 = *(v12 - 9);
            *(v12 + 24) = *(v12 - 10);
            *(v12 + 40) = v17;
            if (v11)
            {
              operator delete(*(v12 + 23));
            }

            v11 = 0;
            *(v12 + 184) = *v12;
            *(v12 + 25) = *(v12 + 2);
            *(v12 + 23) = 0;
            *v12 = 0;
            v18 = *(v12 - 55);
            v12 = (v12 - 184);
          }

          while (v6 > v18);
          *(v12 + 88) = v26;
          *(v12 + 104) = v27;
          *(v12 + 120) = *v28;
          *(v12 + 132) = *&v28[12];
          *(v12 + 24) = v22;
          *(v12 + 40) = v23;
          *(v12 + 56) = v24;
          *(v12 + 72) = v25;
          *(v12 + 37) = v6;
          *(v12 + 168) = v20;
          *(v12 + 152) = v19;
          *(v12 + 199) = *&v21[7];
          *(v12 + 23) = v9;
          *(v12 + 24) = *v21;
          *(v12 + 207) = v10;
        }

        v3 = (v5 + 184);
        v4 = (v4 + 184);
        result = v5;
      }

      while ((v5 + 184) != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Result *,std::greater<void> &>(__int128 *a1, unint64_t a2)
{
  v53 = a1[4];
  v54 = a1[5];
  *v55 = a1[6];
  *&v55[12] = *(a1 + 108);
  v49 = *a1;
  v50 = a1[1];
  v51 = a1[2];
  v52 = a1[3];
  v2 = *(a1 + 31);
  v4 = a1 + 10;
  v3 = *(a1 + 20);
  *&v48[7] = *(a1 + 175);
  *v48 = *(a1 + 21);
  v5 = *(a1 + 183);
  *(a1 + 168) = 0uLL;
  *(a1 + 20) = 0;
  v36 = a1[8];
  v37 = a1[9];
  if (v2 <= *(a2 - 60))
  {
    v9 = a1 + 46;
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v10 = v9[31];
      v9 += 46;
    }

    while (v2 <= v10);
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6 + 184;
      v8 = *(v6 + 77);
      v6 = (v6 + 184);
    }

    while (v2 <= v8);
  }

  if (v7 >= a2)
  {
    v11 = a2;
  }

  else
  {
    do
    {
      v11 = a2 - 184;
      v12 = *(a2 - 60);
      a2 -= 184;
    }

    while (v2 > v12);
  }

  while (v7 < v11)
  {
    v38 = *v7;
    v39 = *(v7 + 16);
    v42 = *(v7 + 64);
    v43 = *(v7 + 80);
    v40 = *(v7 + 32);
    v41 = *(v7 + 48);
    v46 = *(v7 + 128);
    v47 = *(v7 + 144);
    v44 = *(v7 + 96);
    v45 = *(v7 + 112);
    v13 = *(v7 + 160);
    *&v56 = *(v7 + 168);
    *(&v56 + 7) = *(v7 + 175);
    v14 = *(v7 + 183);
    *(v7 + 168) = 0;
    *(v7 + 176) = 0;
    *(v7 + 160) = 0;
    v16 = *(v11 + 96);
    v15 = *(v11 + 112);
    v17 = *(v11 + 144);
    *(v7 + 128) = *(v11 + 128);
    *(v7 + 144) = v17;
    *(v7 + 96) = v16;
    *(v7 + 112) = v15;
    v19 = *(v11 + 32);
    v18 = *(v11 + 48);
    v20 = *(v11 + 80);
    *(v7 + 64) = *(v11 + 64);
    *(v7 + 80) = v20;
    *(v7 + 32) = v19;
    *(v7 + 48) = v18;
    v21 = *(v11 + 16);
    *v7 = *v11;
    *(v7 + 16) = v21;
    v22 = *(v11 + 160);
    *(v7 + 176) = *(v11 + 176);
    *(v7 + 160) = v22;
    *(v11 + 64) = v42;
    *(v11 + 80) = v43;
    *(v11 + 32) = v40;
    *(v11 + 48) = v41;
    *(v11 + 128) = v46;
    *(v11 + 144) = v47;
    *(v11 + 96) = v44;
    *(v11 + 112) = v45;
    *v11 = v38;
    *(v11 + 16) = v39;
    *(v11 + 160) = v13;
    *(v11 + 168) = v56;
    *(v11 + 175) = *(&v56 + 7);
    *(v11 + 183) = v14;
    do
    {
      v23 = *(v7 + 308);
      v7 += 184;
    }

    while (v2 <= v23);
    do
    {
      v24 = *(v11 - 60);
      v11 -= 184;
    }

    while (v2 > v24);
  }

  v25 = (v7 - 184);
  if ((v7 - 184) == a1)
  {
    v34 = *(v7 - 1);
    *v25 = v49;
    *(v7 - 168) = v50;
    *(v7 - 152) = v51;
    *(v7 - 136) = v52;
    *(v7 - 76) = *&v55[12];
    *(v7 - 104) = v54;
    *(v7 - 88) = *v55;
    *(v7 - 120) = v53;
    *(v7 - 60) = v2;
    *(v7 - 40) = v37;
    *(v7 - 56) = v36;
    if (v34 < 0)
    {
      operator delete(*(v7 - 24));
    }
  }

  else
  {
    v26 = *(v7 - 168);
    *a1 = *v25;
    a1[1] = v26;
    v27 = *(v7 - 152);
    v28 = *(v7 - 136);
    v29 = *(v7 - 104);
    a1[4] = *(v7 - 120);
    a1[5] = v29;
    a1[2] = v27;
    a1[3] = v28;
    v30 = *(v7 - 88);
    v31 = *(v7 - 72);
    v32 = *(v7 - 40);
    a1[8] = *(v7 - 56);
    a1[9] = v32;
    a1[6] = v30;
    a1[7] = v31;
    if (*(a1 + 183) < 0)
    {
      operator delete(*v4);
    }

    v33 = *(v7 - 24);
    *(v4 + 2) = *(v7 - 8);
    *v4 = v33;
    *(v7 - 1) = 0;
    *(v7 - 24) = 0;
    *v25 = v49;
    *(v7 - 168) = v50;
    *(v7 - 152) = v51;
    *(v7 - 136) = v52;
    *(v7 - 76) = *&v55[12];
    *(v7 - 104) = v54;
    *(v7 - 88) = *v55;
    *(v7 - 120) = v53;
    *(v7 - 60) = v2;
    *(v7 - 40) = v37;
    *(v7 - 56) = v36;
  }

  *(v7 - 24) = v3;
  *(v7 - 9) = *&v48[7];
  *(v7 - 16) = *v48;
  *(v7 - 1) = v5;
  return v7;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,shazam::Result *,std::greater<void> &>(char *a1, unint64_t a2)
{
  v2 = 0;
  v54 = *(a1 + 4);
  v55 = *(a1 + 5);
  *v56 = *(a1 + 6);
  *&v56[12] = *(a1 + 108);
  v50 = *a1;
  v51 = *(a1 + 1);
  v52 = *(a1 + 2);
  v53 = *(a1 + 3);
  v3 = *(a1 + 31);
  v37 = *(a1 + 8);
  v38 = *(a1 + 9);
  v5 = (a1 + 160);
  v4 = *(a1 + 20);
  *&v49[7] = *(a1 + 175);
  *v49 = *(a1 + 21);
  v6 = a1[183];
  *(a1 + 168) = 0uLL;
  *(a1 + 20) = 0;
  do
  {
    v7 = *&a1[v2 + 308];
    v2 += 184;
  }

  while (v7 > v3);
  v8 = &a1[v2];
  if (v2 == 184)
  {
    while (v8 < a2)
    {
      v9 = a2 - 184;
      v11 = *(a2 - 60);
      a2 -= 184;
      if (v11 > v3)
      {
        goto LABEL_9;
      }
    }

    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 184;
      v10 = *(a2 - 60);
      a2 -= 184;
    }

    while (v10 <= v3);
  }

LABEL_9:
  v12 = &a1[v2];
  if (v8 < v9)
  {
    v13 = v9;
    do
    {
      v45 = *(v12 + 6);
      v46 = *(v12 + 7);
      v47 = *(v12 + 8);
      v48 = *(v12 + 9);
      v41 = *(v12 + 2);
      v42 = *(v12 + 3);
      v43 = *(v12 + 4);
      v44 = *(v12 + 5);
      v39 = *v12;
      v40 = *(v12 + 1);
      v14 = *(v12 + 20);
      *&v57 = *(v12 + 21);
      *(&v57 + 7) = *(v12 + 175);
      v15 = v12[183];
      *(v12 + 21) = 0;
      *(v12 + 22) = 0;
      *(v12 + 20) = 0;
      v17 = *(v13 + 96);
      v16 = *(v13 + 112);
      v18 = *(v13 + 144);
      *(v12 + 8) = *(v13 + 128);
      *(v12 + 9) = v18;
      *(v12 + 6) = v17;
      *(v12 + 7) = v16;
      v20 = *(v13 + 32);
      v19 = *(v13 + 48);
      v21 = *(v13 + 80);
      *(v12 + 4) = *(v13 + 64);
      *(v12 + 5) = v21;
      *(v12 + 2) = v20;
      *(v12 + 3) = v19;
      v22 = *(v13 + 16);
      *v12 = *v13;
      *(v12 + 1) = v22;
      v23 = *(v13 + 160);
      *(v12 + 22) = *(v13 + 176);
      *(v12 + 10) = v23;
      *(v13 + 64) = v43;
      *(v13 + 80) = v44;
      *(v13 + 32) = v41;
      *(v13 + 48) = v42;
      *(v13 + 128) = v47;
      *(v13 + 144) = v48;
      *(v13 + 96) = v45;
      *(v13 + 112) = v46;
      *v13 = v39;
      *(v13 + 16) = v40;
      *(v13 + 160) = v14;
      *(v13 + 168) = v57;
      *(v13 + 175) = *(&v57 + 7);
      *(v13 + 183) = v15;
      do
      {
        v24 = *(v12 + 77);
        v12 += 184;
      }

      while (v24 > v3);
      do
      {
        v25 = *(v13 - 60);
        v13 -= 184;
      }

      while (v25 <= v3);
    }

    while (v12 < v13);
  }

  v26 = (v12 - 184);
  if (v12 - 184 == a1)
  {
    v35 = *(v12 - 1);
    *v26 = v50;
    *(v12 - 168) = v51;
    *(v12 - 152) = v52;
    *(v12 - 136) = v53;
    *(v12 - 76) = *&v56[12];
    *(v12 - 104) = v55;
    *(v12 - 88) = *v56;
    *(v12 - 120) = v54;
    *(v12 - 15) = v3;
    *(v12 - 40) = v38;
    *(v12 - 56) = v37;
    if (v35 < 0)
    {
      operator delete(*(v12 - 3));
    }
  }

  else
  {
    v27 = *(v12 - 168);
    *a1 = *v26;
    *(a1 + 1) = v27;
    v28 = *(v12 - 152);
    v29 = *(v12 - 136);
    v30 = *(v12 - 104);
    *(a1 + 4) = *(v12 - 120);
    *(a1 + 5) = v30;
    *(a1 + 2) = v28;
    *(a1 + 3) = v29;
    v31 = *(v12 - 88);
    v32 = *(v12 - 72);
    v33 = *(v12 - 40);
    *(a1 + 8) = *(v12 - 56);
    *(a1 + 9) = v33;
    *(a1 + 6) = v31;
    *(a1 + 7) = v32;
    if (a1[183] < 0)
    {
      operator delete(*v5);
    }

    v34 = *(v12 - 24);
    *(v5 + 2) = *(v12 - 1);
    *v5 = v34;
    *(v12 - 1) = 0;
    *(v12 - 24) = 0;
    *v26 = v50;
    *(v12 - 168) = v51;
    *(v12 - 152) = v52;
    *(v12 - 136) = v53;
    *(v12 - 76) = *&v56[12];
    *(v12 - 104) = v55;
    *(v12 - 88) = *v56;
    *(v12 - 120) = v54;
    *(v12 - 15) = v3;
    *(v12 - 40) = v38;
    *(v12 - 56) = v37;
  }

  *(v12 - 3) = v4;
  *(v12 - 9) = *&v49[7];
  *(v12 - 2) = *v49;
  *(v12 - 1) = v6;
  return v12 - 184;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(uint64_t a1, __int128 *a2)
{
  v4 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(a1, (a1 + 184), (a2 - 184));
        break;
      case 4:
        v32 = (a1 + 184);
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(a1, (a1 + 184), (a1 + 368));
        if (*(a2 - 15) > *(a1 + 492))
        {
          v97 = *(a1 + 464);
          v101 = *(a1 + 480);
          v105 = *(a1 + 496);
          v109 = *(a1 + 512);
          v77 = *(a1 + 400);
          v82 = *(a1 + 416);
          v87 = *(a1 + 432);
          v92 = *(a1 + 448);
          v67 = *(a1 + 368);
          v72 = *(a1 + 384);
          v33 = *(a1 + 528);
          *&v61 = *(a1 + 536);
          *(&v61 + 7) = *(a1 + 543);
          v34 = *(a1 + 551);
          *(a1 + 544) = 0;
          *(a1 + 528) = 0u;
          v35 = *(a2 - 168);
          *(a1 + 368) = *(a2 - 184);
          *(a1 + 384) = v35;
          v36 = *(a2 - 136);
          v37 = *(a2 - 104);
          v38 = *(a2 - 152);
          *(a1 + 432) = *(a2 - 120);
          *(a1 + 448) = v37;
          *(a1 + 400) = v38;
          *(a1 + 416) = v36;
          v39 = *(a2 - 72);
          v40 = *(a2 - 40);
          v41 = *(a2 - 88);
          *(a1 + 496) = *(a2 - 56);
          *(a1 + 512) = v40;
          *(a1 + 464) = v41;
          *(a1 + 480) = v39;
          v42 = *(a2 - 1);
          *(a1 + 528) = *(a2 - 24);
          *(a1 + 544) = v42;
          *(a2 - 88) = v97;
          *(a2 - 72) = v101;
          *(a2 - 56) = v105;
          *(a2 - 40) = v109;
          *(a2 - 152) = v77;
          *(a2 - 136) = v82;
          *(a2 - 120) = v87;
          *(a2 - 104) = v92;
          *(a2 - 184) = v67;
          *(a2 - 168) = v72;
          *(a2 - 3) = v33;
          *(a2 - 2) = v61;
          *(a2 - 9) = *(&v61 + 7);
          *(a2 - 1) = v34;
          if (*(a1 + 492) > *(a1 + 308))
          {
            v98 = *(a1 + 280);
            v102 = *(a1 + 296);
            v106 = *(a1 + 312);
            v110 = *(a1 + 328);
            v78 = *(a1 + 216);
            v83 = *(a1 + 232);
            v88 = *(a1 + 248);
            v93 = *(a1 + 264);
            v68 = *v32;
            v73 = *(a1 + 200);
            v43 = *(a1 + 344);
            *&v62 = *(a1 + 352);
            *(&v62 + 7) = *(a1 + 359);
            v44 = *(a1 + 367);
            v45 = *(a1 + 480);
            *(a1 + 280) = *(a1 + 464);
            *(a1 + 296) = v45;
            v46 = *(a1 + 512);
            *(a1 + 312) = *(a1 + 496);
            *(a1 + 328) = v46;
            v47 = *(a1 + 416);
            *(a1 + 216) = *(a1 + 400);
            *(a1 + 232) = v47;
            v48 = *(a1 + 448);
            *(a1 + 248) = *(a1 + 432);
            *(a1 + 264) = v48;
            v49 = *(a1 + 384);
            *v32 = *(a1 + 368);
            *(a1 + 200) = v49;
            *(a1 + 344) = *(a1 + 528);
            *(a1 + 360) = *(a1 + 544);
            *(a1 + 464) = v98;
            *(a1 + 480) = v102;
            *(a1 + 496) = v106;
            *(a1 + 512) = v110;
            *(a1 + 400) = v78;
            *(a1 + 416) = v83;
            *(a1 + 432) = v88;
            *(a1 + 448) = v93;
            *(a1 + 368) = v68;
            *(a1 + 384) = v73;
            *(a1 + 528) = v43;
            *(a1 + 536) = v62;
            *(a1 + 543) = *(&v62 + 7);
            v50 = *(a1 + 308);
            LODWORD(v49) = *(a1 + 124);
            *(a1 + 551) = v44;
            if (v50 > *&v49)
            {
              v99 = *(a1 + 96);
              v103 = *(a1 + 112);
              v107 = *(a1 + 128);
              v111 = *(a1 + 144);
              v79 = *(a1 + 32);
              v84 = *(a1 + 48);
              v89 = *(a1 + 64);
              v94 = *(a1 + 80);
              v69 = *a1;
              v74 = *(a1 + 16);
              v51 = *(a1 + 160);
              *&v63 = *(a1 + 168);
              *(&v63 + 7) = *(a1 + 175);
              v52 = *(a1 + 183);
              v53 = *(a1 + 296);
              *(a1 + 96) = *(a1 + 280);
              *(a1 + 112) = v53;
              v54 = *(a1 + 328);
              *(a1 + 128) = *(a1 + 312);
              *(a1 + 144) = v54;
              v55 = *(a1 + 232);
              *(a1 + 32) = *(a1 + 216);
              *(a1 + 48) = v55;
              v56 = *(a1 + 264);
              *(a1 + 64) = *(a1 + 248);
              *(a1 + 80) = v56;
              v57 = *(a1 + 200);
              *a1 = *v32;
              *(a1 + 16) = v57;
              *(a1 + 160) = *(a1 + 344);
              *(a1 + 176) = *(a1 + 360);
              *(a1 + 280) = v99;
              *(a1 + 296) = v103;
              *(a1 + 312) = v107;
              *(a1 + 328) = v111;
              *(a1 + 216) = v79;
              *(a1 + 232) = v84;
              *(a1 + 248) = v89;
              *(a1 + 264) = v94;
              *v32 = v69;
              *(a1 + 200) = v74;
              *(a1 + 344) = v51;
              *(a1 + 352) = v63;
              *(a1 + 359) = *(&v63 + 7);
              result = 1;
              *(a1 + 367) = v52;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(a1, a1 + 184, a1 + 368, a1 + 552, a2 - 184);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 15) > *(a1 + 124))
    {
      v95 = *(a1 + 96);
      v100 = *(a1 + 112);
      v104 = *(a1 + 128);
      v108 = *(a1 + 144);
      v75 = *(a1 + 32);
      v80 = *(a1 + 48);
      v85 = *(a1 + 64);
      v90 = *(a1 + 80);
      v65 = *a1;
      v70 = *(a1 + 16);
      v5 = *(a1 + 160);
      *&v59 = *(a1 + 168);
      *(&v59 + 7) = *(a1 + 175);
      v6 = *(a1 + 183);
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      *(a1 + 160) = 0;
      v7 = *(a2 - 168);
      *a1 = *(a2 - 184);
      *(a1 + 16) = v7;
      v8 = *(a2 - 136);
      v9 = *(a2 - 104);
      v10 = *(a2 - 152);
      *(a1 + 64) = *(a2 - 120);
      *(a1 + 80) = v9;
      *(a1 + 32) = v10;
      *(a1 + 48) = v8;
      v11 = *(a2 - 72);
      v12 = *(a2 - 40);
      v13 = *(a2 - 88);
      *(a1 + 128) = *(a2 - 56);
      *(a1 + 144) = v12;
      *(a1 + 96) = v13;
      *(a1 + 112) = v11;
      v14 = *(a2 - 1);
      *(a1 + 160) = *(a2 - 24);
      *(a1 + 176) = v14;
      *(a2 - 88) = v95;
      *(a2 - 72) = v100;
      *(a2 - 56) = v104;
      *(a2 - 40) = v108;
      *(a2 - 152) = v75;
      *(a2 - 136) = v80;
      *(a2 - 120) = v85;
      *(a2 - 104) = v90;
      *(a2 - 184) = v65;
      *(a2 - 168) = v70;
      *(a2 - 3) = v5;
      *(a2 - 2) = v59;
      *(a2 - 9) = *(&v59 + 7);
      result = 1;
      *(a2 - 1) = v6;
      return result;
    }

    return 1;
  }

LABEL_11:
  v16 = (a1 + 368);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,0>(a1, (a1 + 184), (a1 + 368));
  v17 = (a1 + 552);
  if ((a1 + 552) == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(v17 + 31);
    if (v20 > v16[31])
    {
      v86 = v17[4];
      v91 = v17[5];
      *v96 = v17[6];
      *&v96[12] = *(v17 + 108);
      v66 = *v17;
      v71 = v17[1];
      v76 = v17[2];
      v81 = v17[3];
      v60 = v17[8];
      v64 = v17[9];
      *&v58[7] = *(v17 + 175);
      v21 = *(v17 + 20);
      *v58 = *(v17 + 21);
      v22 = *(v17 + 183);
      *(v17 + 21) = 0;
      *(v17 + 22) = 0;
      v23 = v18;
      *(v17 + 20) = 0;
      while (1)
      {
        v24 = a1 + v23;
        v25 = (a1 + v23 + 552);
        v26 = *(a1 + v23 + 480);
        v25[6] = *(a1 + v23 + 464);
        v25[7] = v26;
        v27 = *(a1 + v23 + 512);
        v25[8] = *(a1 + v23 + 496);
        v25[9] = v27;
        v28 = *(a1 + v23 + 416);
        v25[2] = *(a1 + v23 + 400);
        v25[3] = v28;
        v29 = *(a1 + v23 + 448);
        v25[4] = *(a1 + v23 + 432);
        v25[5] = v29;
        v30 = *(a1 + v23 + 384);
        *v25 = *(a1 + v23 + 368);
        v25[1] = v30;
        *(a1 + v23 + 712) = *(a1 + v23 + 528);
        *(v24 + 728) = *(a1 + v23 + 544);
        *(v24 + 551) = 0;
        *(v24 + 528) = 0;
        if (v23 == -368)
        {
          break;
        }

        v23 -= 184;
        if (v20 <= *(v24 + 308))
        {
          v31 = a1 + v23 + 552;
          goto LABEL_19;
        }
      }

      v31 = a1;
LABEL_19:
      *(v31 + 64) = v86;
      *(v31 + 80) = v91;
      *(v31 + 96) = *v96;
      *(v31 + 108) = *&v96[12];
      *v31 = v66;
      *(v31 + 16) = v71;
      *(v31 + 32) = v76;
      *(v31 + 48) = v81;
      *(v31 + 124) = v20;
      *(v31 + 128) = v60;
      *(v31 + 144) = v64;
      *(v24 + 528) = v21;
      *(v31 + 175) = *&v58[7];
      *(v31 + 168) = *v58;
      ++v19;
      *(v31 + 183) = v22;
      if (v19 == 8)
      {
        return (v17 + 184) == a2;
      }
    }

    v16 = v17;
    v18 += 184;
    v17 = (v17 + 184);
    if (v17 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,shazam::Result *>(char *a1, char *a2, __int128 *a3, uint64_t a4, __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0xD37A6F4DE9BD37A7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 185)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = &a1[184 * v11];
      do
      {
        a5 = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(a1, a5, a4, v10, v13);
        v13 = (v13 - 184);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if (*(v14 + 31) > *(a1 + 31))
        {
          v34 = v14[6];
          v35 = v14[7];
          v36 = v14[8];
          v37 = v14[9];
          v30 = v14[2];
          v31 = v14[3];
          v32 = v14[4];
          v33 = v14[5];
          v28 = *v14;
          v29 = v14[1];
          v15 = *(v14 + 20);
          *&v38 = *(v14 + 21);
          *(&v38 + 7) = *(v14 + 175);
          v16 = *(v14 + 183);
          *(v14 + 21) = 0;
          *(v14 + 22) = 0;
          *(v14 + 20) = 0;
          v17 = *(a1 + 1);
          *v14 = *a1;
          v14[1] = v17;
          v18 = *(a1 + 5);
          v20 = *(a1 + 2);
          v19 = *(a1 + 3);
          v14[4] = *(a1 + 4);
          v14[5] = v18;
          v14[2] = v20;
          v14[3] = v19;
          v21 = *(a1 + 9);
          v23 = *(a1 + 6);
          v22 = *(a1 + 7);
          v14[8] = *(a1 + 8);
          v14[9] = v21;
          v14[6] = v23;
          v14[7] = v22;
          v24 = *(a1 + 22);
          v14[10] = *(a1 + 10);
          *(v14 + 22) = v24;
          *(a1 + 6) = v34;
          *(a1 + 7) = v35;
          *(a1 + 8) = v36;
          *(a1 + 9) = v37;
          *(a1 + 2) = v30;
          *(a1 + 3) = v31;
          *(a1 + 4) = v32;
          *(a1 + 5) = v33;
          *a1 = v28;
          *(a1 + 1) = v29;
          *(a1 + 20) = v15;
          *(a1 + 21) = v38;
          *(a1 + 175) = *(&v38 + 7);
          a1[183] = v16;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(a1, v28, a4, v10, a1);
        }

        v14 = (v14 + 184);
      }

      while (v14 != a3);
    }

    if (v9 >= 185)
    {
      v25 = 0xD37A6F4DE9BD37A7 * (v9 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,shazam::Result *>(a1, v7, a4, v25);
        v7 = (v7 - 184);
      }

      while (v25-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    if (v5 >= (0xD37A6F4DE9BD37A7 * ((a5 - a1) >> 3)))
    {
      v6 = (0xA6F4DE9BD37A6F4ELL * ((a5 - a1) >> 3)) | 1;
      v7 = a1 + 184 * v6;
      if ((0xA6F4DE9BD37A6F4ELL * ((a5 - a1) >> 3) + 2) < a4 && *(v7 + 124) > *(v7 + 308))
      {
        v7 += 184;
        v6 = 0xA6F4DE9BD37A6F4ELL * ((a5 - a1) >> 3) + 2;
      }

      result.n128_u32[0] = *(a5 + 31);
      if (*(v7 + 124) <= result.n128_f32[0])
      {
        v28 = a5[4];
        v29 = a5[5];
        *v30 = a5[6];
        *&v30[12] = *(a5 + 108);
        v24 = *a5;
        v25 = a5[1];
        v26 = a5[2];
        v27 = a5[3];
        v21 = a5[8];
        v22 = a5[9];
        *&v23[7] = *(a5 + 175);
        v8 = *(a5 + 20);
        *v23 = *(a5 + 21);
        v9 = *(a5 + 183);
        *(a5 + 168) = 0uLL;
        *(a5 + 20) = 0;
        do
        {
          v10 = a5;
          a5 = v7;
          v11 = *(v7 + 16);
          *v10 = *v7;
          v10[1] = v11;
          v12 = *(v7 + 32);
          v13 = *(v7 + 48);
          v14 = *(v7 + 80);
          v10[4] = *(v7 + 64);
          v10[5] = v14;
          v10[2] = v12;
          v10[3] = v13;
          v15 = *(v7 + 96);
          v16 = *(v7 + 112);
          v17 = *(v7 + 144);
          v10[8] = *(v7 + 128);
          v10[9] = v17;
          v10[6] = v15;
          v10[7] = v16;
          v18 = *(v7 + 160);
          *(v10 + 22) = *(v7 + 176);
          v10[10] = v18;
          *(v7 + 183) = 0;
          *(v7 + 160) = 0;
          if (v5 < v6)
          {
            break;
          }

          v19 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = a1 + 184 * v6;
          v20 = v19 + 2;
          if (v20 < a4 && *(v7 + 124) > *(v7 + 308))
          {
            v7 += 184;
            v6 = v20;
          }
        }

        while (*(v7 + 124) <= result.n128_f32[0]);
        a5[2] = v26;
        a5[3] = v27;
        *a5 = v24;
        a5[1] = v25;
        *(a5 + 108) = *&v30[12];
        a5[5] = v29;
        a5[6] = *v30;
        a5[4] = v28;
        *(a5 + 31) = result.n128_u32[0];
        result = v21;
        a5[8] = v21;
        a5[9] = v22;
        *(a5 + 175) = *&v23[7];
        *(a5 + 20) = v8;
        *(a5 + 21) = *v23;
        *(a5 + 183) = v9;
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void>,shazam::Result *>(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v26 = a1[6];
    v27 = a1[7];
    v28 = a1[8];
    v29 = a1[9];
    v22 = a1[2];
    v23 = a1[3];
    v24 = a1[4];
    v25 = a1[5];
    v20 = *a1;
    v21 = a1[1];
    v7 = *(a1 + 20);
    *v30 = *(a1 + 21);
    *&v30[7] = *(a1 + 175);
    v8 = *(a1 + 183);
    *(a1 + 168) = 0uLL;
    *(a1 + 20) = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(a1, a3, a4);
    v10 = v9;
    v11 = (a2 - 184);
    if (v9 == a2 - 184)
    {
      *(v9 + 96) = v26;
      *(v9 + 112) = v27;
      *(v9 + 128) = v28;
      *(v9 + 144) = v29;
      *(v9 + 32) = v22;
      *(v9 + 48) = v23;
      *(v9 + 64) = v24;
      *(v9 + 80) = v25;
      *v9 = v20;
      *(v9 + 16) = v21;
      if (*(v9 + 183) < 0)
      {
        operator delete(*(v9 + 160));
      }

      *(v10 + 160) = v7;
      *(v10 + 168) = *v30;
      *(v10 + 175) = *&v30[7];
      *(v10 + 183) = v8;
    }

    else
    {
      v12 = *(a2 - 168);
      *v9 = *v11;
      *(v9 + 16) = v12;
      v13 = *(a2 - 152);
      v14 = *(a2 - 136);
      v15 = *(a2 - 104);
      *(v9 + 64) = *(a2 - 120);
      *(v9 + 80) = v15;
      *(v9 + 32) = v13;
      *(v9 + 48) = v14;
      v16 = *(a2 - 88);
      v17 = *(a2 - 72);
      v18 = *(a2 - 40);
      *(v9 + 128) = *(a2 - 56);
      *(v9 + 144) = v18;
      *(v9 + 96) = v16;
      *(v9 + 112) = v17;
      if (*(v9 + 183) < 0)
      {
        operator delete(*(v9 + 160));
      }

      v19 = *(a2 - 24);
      *(v10 + 176) = *(a2 - 8);
      *(v10 + 160) = v19;
      *(a2 - 88) = v26;
      *(a2 - 72) = v27;
      *(a2 - 56) = v28;
      *(a2 - 40) = v29;
      *(a2 - 152) = v22;
      *(a2 - 136) = v23;
      *(a2 - 120) = v24;
      *(a2 - 104) = v25;
      *v11 = v20;
      *(a2 - 168) = v21;
      *(a2 - 24) = v7;
      *(a2 - 16) = *v30;
      *(a2 - 9) = *&v30[7];
      *(a2 - 1) = v8;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(a1, v10 + 184, v20, a3, 0xD37A6F4DE9BD37A7 * ((v10 + 184 - a1) >> 3));
    }
  }
}

void sub_230FB93B0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 184 * v5;
    v8 = v7 + 184;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = *(v7 + 308);
      v10 = *(v7 + 492);
      v11 = v7 + 368;
      if (v9 <= v10)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v11;
        v5 = 2 * v5 + 2;
      }
    }

    v12 = *(v8 + 16);
    *a1 = *v8;
    *(a1 + 16) = v12;
    v13 = *(v8 + 32);
    v14 = *(v8 + 48);
    v15 = *(v8 + 80);
    *(a1 + 64) = *(v8 + 64);
    *(a1 + 80) = v15;
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    v16 = *(v8 + 96);
    v17 = *(v8 + 112);
    v18 = *(v8 + 144);
    *(a1 + 128) = *(v8 + 128);
    *(a1 + 144) = v18;
    *(a1 + 96) = v16;
    *(a1 + 112) = v17;
    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    v19 = *(v8 + 160);
    *(a1 + 176) = *(v8 + 176);
    *(a1 + 160) = v19;
    *(v8 + 183) = 0;
    *(v8 + 160) = 0;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *>(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 >= 2)
  {
    v5 = (a5 - 2) >> 1;
    v6 = a1 + 184 * v5;
    result.n128_u32[0] = *(a2 - 60);
    if (*(v6 + 124) > result.n128_f32[0])
    {
      v7 = a2 - 184;
      v28 = *(a2 - 120);
      v29 = *(a2 - 104);
      *v30 = *(a2 - 88);
      *&v30[12] = *(a2 - 76);
      v24 = *(a2 - 184);
      v25 = *(a2 - 168);
      v26 = *(a2 - 152);
      v27 = *(a2 - 136);
      v8 = *(a2 - 56);
      v9 = *(a2 - 40);
      *&v23[7] = *(a2 - 9);
      v10 = *(a2 - 24);
      *v23 = *(a2 - 16);
      v11 = *(a2 - 1);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      *(a2 - 24) = 0;
      v21 = v8;
      v22 = v9;
      do
      {
        v12 = v7;
        v7 = v6;
        v13 = *(v6 + 16);
        *v12 = *v6;
        *(v12 + 16) = v13;
        v14 = *(v6 + 32);
        v15 = *(v6 + 48);
        v16 = *(v6 + 80);
        *(v12 + 64) = *(v6 + 64);
        *(v12 + 80) = v16;
        *(v12 + 32) = v14;
        *(v12 + 48) = v15;
        v17 = *(v6 + 96);
        v18 = *(v6 + 112);
        v19 = *(v6 + 144);
        *(v12 + 128) = *(v6 + 128);
        *(v12 + 144) = v19;
        *(v12 + 96) = v17;
        *(v12 + 112) = v18;
        v20 = *(v6 + 160);
        *(v12 + 176) = *(v6 + 176);
        *(v12 + 160) = v20;
        *(v6 + 183) = 0;
        *(v6 + 160) = 0;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 184 * v5;
      }

      while (*(v6 + 124) > result.n128_f32[0]);
      *(v7 + 64) = v28;
      *(v7 + 80) = v29;
      *(v7 + 96) = *v30;
      *(v7 + 108) = *&v30[12];
      *v7 = v24;
      *(v7 + 16) = v25;
      *(v7 + 32) = v26;
      *(v7 + 48) = v27;
      *(v7 + 124) = result.n128_u32[0];
      result = v22;
      *(v7 + 128) = v21;
      *(v7 + 144) = v22;
      *(v7 + 175) = *&v23[7];
      *(v7 + 160) = v10;
      *(v7 + 168) = *v23;
      *(v7 + 183) = v11;
    }
  }

  return result;
}

void std::vector<shazam::Result>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xD37A6F4DE9BD37A7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 184 * ((184 * a2 - 184) / 0xB8) + 184;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xD37A6F4DE9BD37A7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x1642C8590B21642)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xD37A6F4DE9BD37A7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0xB21642C8590B21)
    {
      v9 = 0x1642C8590B21642;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::Result>>(a1, v9);
    }

    v16 = 0;
    v17 = 184 * v6;
    v11 = 184 * ((184 * a2 - 184) / 0xB8) + 184;
    bzero((184 * v6), v11);
    v18 = 184 * v6 + v11;
    v12 = *(a1 + 8);
    v13 = 184 * v6 + *a1 - v12;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::Result>,shazam::Result*>(a1, *a1, v12, v13);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = v18;
    *&v18 = v14;
    *(&v18 + 1) = v15;
    v16 = v14;
    v17 = v14;
    std::__split_buffer<shazam::Result>::~__split_buffer(&v16);
  }
}

void sub_230FB97E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<shazam::Result>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<shazam::Result>::__init_with_size[abi:ne200100]<shazam::Result*,shazam::Result*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<shazam::Result>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FB985C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<shazam::Result>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1642C8590B21643)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::Result>>(a1, a2);
  }

  std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<shazam::Result>,shazam::Result*,shazam::Result*,shazam::Result*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v19 = a4;
  v20 = a4;
  v17[0] = a1;
  v17[1] = &v19;
  v17[2] = &v20;
  v18 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 10;
    do
    {
      v7 = *(v6 - 9);
      *v4 = *(v6 - 10);
      *(v4 + 16) = v7;
      v8 = *(v6 - 8);
      v9 = *(v6 - 7);
      v10 = *(v6 - 5);
      *(v4 + 64) = *(v6 - 6);
      *(v4 + 80) = v10;
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      v11 = *(v6 - 4);
      v12 = *(v6 - 3);
      v13 = *(v6 - 1);
      *(v4 + 128) = *(v6 - 2);
      *(v4 + 144) = v13;
      *(v4 + 96) = v11;
      *(v4 + 112) = v12;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 160), *v6, *(v6 + 1));
        v4 = v20;
      }

      else
      {
        v14 = *v6;
        *(v4 + 176) = *(v6 + 2);
        *(v4 + 160) = v14;
      }

      v15 = v6 - 10;
      v4 += 184;
      v20 = v4;
      v6 = (v6 + 184);
    }

    while ((v15 + 184) != a3);
  }

  v18 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::Result>,shazam::Result*>>::~__exception_guard_exceptions[abi:ne200100](v17);
  return v4;
}

std::runtime_error *tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(std::runtime_error *this)
{
  if (LOBYTE(this[2].__vftable) == 1)
  {
    v3 = &this->__vftable;
    std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  else
  {
    std::runtime_error::~runtime_error(this);
  }

  return this;
}

void *shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::~Query(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void shazam::make_query<(AlgoType)12>(float32x2_t *__return_ptr a1@<X8>, shazam::signature_info *this@<X1>, uint64_t a3@<X0>, unsigned int *a4@<X2>, unint64_t a5@<X3>)
{
  v7 = this;
  v81 = *MEMORY[0x277D85DE8];
  if ((shazam::signature_info::getSampleLength(this) * 125.0) > 1792.0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "was ", 4);
    shazam::signature_info::getSampleLength(v7);
    v49 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "sec", 3);
    exception = __cxa_allocate_exception(0x20uLL);
    error_code = shazam::make_error_code(0x130);
    v53 = v52;
    std::stringbuf::str();
    MEMORY[0x231921D10](exception, error_code, v53, v70);
    __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
  }

  shazam::signature_info::getSampleLength(v7);
  shazam::matrix_for<(AlgoType)12>(a4, v70);
  v67 = 0;
  v68 = 0;
  v69 = 0;
  std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v67, a5);
  shazam::algo<(AlgoType)12>::tzones_for (v65);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 5) - *(v7 + 4)) >> 3) >= 3)
  {
    v54 = a1;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    std::vector<shazam::lmfp<(shazam::fp_type)0>>::reserve(&v72, 0x64uLL);
    v11 = *(v7 + 4);
    v10 = *(v7 + 5);
    if (v10 != v11)
    {
      v12 = 0;
      v55 = a3;
      v58 = v7;
      do
      {
        v13 = *(&v70[1] + v12);
        v57 = v12;
        if (v13)
        {
          v14 = *(a3 + 8);
          if (v14)
          {
            v14(&__p, v11 + 24 * v12);
            shazam::chooseAnchors(&__p, *(&v70[1] + v12), v70, &v72);
            if (__p)
            {
              v80 = __p;
              operator delete(__p);
            }
          }

          else
          {
            shazam::chooseAnchors((v11 + 24 * v12), v13, v70, &v72);
          }

          v11 = *(v7 + 4);
          v10 = *(v7 + 5);
          if (v10 != v11)
          {
            v56 = 4 * v12;
            v60 = &v70[3] + 4 * v12;
            v15 = 0;
            do
            {
              v16 = v60[v15];
              if (v60[v15])
              {
                if (v66 == 1)
                {
                  LODWORD(__p) = v56 + v15;
                  if (std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v65, &__p))
                  {
                    v17 = std::__hash_table<std::__hash_value_type<int,shazam::target_zone_2d>,std::__unordered_map_hasher<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,shazam::target_zone_2d>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,shazam::target_zone_2d>>>::find<int>(v65, &__p);
                    if (!v17)
                    {
                      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
                    }

                    v64 = *(v17 + 20);
                  }

                  else
                  {
                    v64 = 0;
                  }

                  v11 = *(v7 + 4);
                  v16 = v60[v15];
                }

                else
                {
                  v64 = 0;
                }

                v59 = v15;
                v63 = (v11 + 24 * v15);
                v18 = *v63;
                bzero(&__p, 0x780uLL);
                v19 = v72;
                v62 = v73;
                if (v72 != v73)
                {
                  if (HIDWORD(v64))
                  {
                    v20 = v64 == 0;
                  }

                  else
                  {
                    v20 = 1;
                  }

                  v21 = v20;
                  v61 = v21;
                  do
                  {
                    v22 = *v19 + 8;
                    if (v61)
                    {
                      v23 = *v19 + 197;
                    }

                    else
                    {
                      v22 = *v19 + v64;
                      v23 = v22 + HIDWORD(v64);
                    }

                    v24 = v63[1];
                    if (v24 == v18)
                    {
                      v18 = v63[1];
                      v31 = v18;
                    }

                    else
                    {
                      v25 = (v24 - v18) >> 3;
                      do
                      {
                        v26 = v25 >> 1;
                        v27 = &v18[8 * (v25 >> 1)];
                        v29 = *v27;
                        v28 = (v27 + 2);
                        v25 += ~(v25 >> 1);
                        if (v29 < v22)
                        {
                          v18 = v28;
                        }

                        else
                        {
                          v25 = v26;
                        }
                      }

                      while (v25);
                      if (v24 == v18)
                      {
                        v31 = v63[1];
                      }

                      else
                      {
                        v30 = (v24 - v18) >> 3;
                        v31 = v18;
                        do
                        {
                          v32 = v30 >> 1;
                          v33 = (v31 + 8 * (v30 >> 1));
                          v35 = *v33;
                          v34 = v33 + 2;
                          v30 += ~(v30 >> 1);
                          if (v35 < v23)
                          {
                            v31 = v34;
                          }

                          else
                          {
                            v30 = v32;
                          }
                        }

                        while (v30);
                      }

                      v24 = v18;
                    }

                    v36 = (v31 - v24) >> 3;
                    gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,0>(&v76, v18, v31);
                    if (v36 <= v16)
                    {
                      v36 = v76;
                      p_p = v77;
                    }

                    else
                    {
                      if (v31 != v24)
                      {
                        memmove(&__p, v18, v31 - v24);
                      }

                      p_p = &__p;
                      v38 = 126 - 2 * __clz(v36);
                      if (v31 == v24)
                      {
                        v39 = 0;
                      }

                      else
                      {
                        v39 = v38;
                      }

                      v40 = std::__introsort<std::_ClassicAlgPolicy,shazam::$_3 &,shazam::spectral_peak_t *,false>(&__p, (&__p + v36), v39, 1);
                      if (v31 - v24 == -8)
                      {
LABEL_79:
                        gsl::details::terminate(v40);
                      }
                    }

                    v41 = *v19;
                    v42 = *(v19 + 2);
                    v43 = 0;
                    v44 = shazam::FreqLogTable::at(*(v19 + 2));
                    v45 = &p_p[v36];
                    v76 = p_p;
                    v77 = v45;
                    v78 = p_p;
                    v46 = 2 * (((v44 + -3.46573591) * 3103.75977) & 0x3FFF);
                    while (v78 != v45)
                    {
                      v47 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v76);
                      v46 = v46 & 0x7FFF | ((((v44 - shazam::FreqLogTable::at(*(v47 + 2))) * 151.569275) & 0x3FF) << 15) | (((sqrtf(((v42 * 7.8125) * 0.015625) * (*v47 - v41)) / 830.36) * 120.0) << 25);
                      v48 = v42 - *(v47 + 2);
                      if (v48 < 0)
                      {
                        v48 = *(v47 + 2) - v42;
                      }

                      if (v48 >= 0x101)
                      {
                        v75 = __PAIR64__(v41, v46);
                        std::vector<shazam::lmfp<(shazam::fp_type)0>>::push_back[abi:ne200100](&v67, &v75);
                        if (v16 == ++v43)
                        {
                          break;
                        }
                      }

                      v40 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v76);
                      if (v76 != p_p || v77 != v45)
                      {
                        goto LABEL_79;
                      }
                    }

                    v19 += 2;
                  }

                  while (v19 != v62);
                  v11 = *(v58 + 4);
                }

                v7 = v58;
                v15 = v59;
                v10 = *(v58 + 5);
              }

              ++v15;
            }

            while (v15 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
          }
        }

        v12 = v57 + 1;
        a3 = v55;
      }

      while (v57 + 1 < 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
    }

    a1 = v54;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }
  }

  std::vector<shazam::lmfp<(shazam::fp_type)0>>::vector[abi:ne200100](&__p, (v68 - v67) >> 3);
  shazam::kvsort<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(&v67);
  shazam::Query<(AlgoType)1,std::vector<shazam::lmfp<(shazam::fp_type)0>>>::Query(a1, v7, &v71, &v67);
  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  if (v66 == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v65);
  }

  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }
}

void sub_230FBA0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51)
{
  if (a39 < 0)
  {
    operator delete(__p);
    if ((v52 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a50);
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v51);
  goto LABEL_6;
}

std::runtime_error *shazam::CPUSearcher::search<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>>(uint64_t *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v132 = *MEMORY[0x277D85DE8];
  *(v131 + 4) = 0u;
  *(&v131[1] + 4) = 0u;
  *(&v131[2] + 4) = 0u;
  v131[3] = 0u;
  memset(&v130[4], 0, 56);
  v126[0] = 0;
  *(v126 + 3) = 0;
  v99 = *(a5 + 24);
  SampleLength = shazam::signature_info::getSampleLength(*a5);
  memset(&__src[3], 0, 256);
  v100 = a6;
  v96 = *(a6 + 28);
  v91 = *(a5 + 48);
  v92 = *(a5 + 40);
  v16 = shazam::signature_info::getSampleLength(*a5);
  std::vector<shazam::Result>::clear[abi:ne200100](a1 + 10);
  v18 = a4[4];
  v95 = a4;
  v19 = a4[5] - v18;
  if (!v18 && v19 >= 2)
  {
    goto LABEL_80;
  }

  v20 = (v19 >> 1);
  v21 = gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>((a5 + 40));
  v22 = *(a5 + 28);
  v23 = *(a5 + 32);
  v120 = a1[3];
  v121 = vshrq_n_u64(*(a1 + 2), 3uLL);
  v122 = 0;
  v123 = shazam::search_fingerprints<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>>(v20, v18, a4 + 7, v21, v24, a4 + 10, &v120, v22, v23);
  v124 = v25;
  begin = shazam::virtual_array<shazam::xpair_group<shazam::xpair_fields>>::~virtual_array(&v120);
  v26 = v123;
  if (v123 >= 0x1FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_80;
  }

  v27 = *(a5 + 8);
  v28 = a1[7];
  v29 = a1[8] - v28;
  if (8 * v123 > v29)
  {
    std::vector<char>::__append((a1 + 7), 8 * v123 - v29);
    v28 = a1[7];
  }

  if (v26 && !v28)
  {
LABEL_80:
    gsl::details::terminate(begin);
  }

  v89 = v26;
  v118 = v26;
  v119 = v28;
  shazam::xpairsort<shazam::xpair_group<shazam::xpair_fields>>(&v123);
  a1[17] = a1[16];
  v117[0] = gsl::make_span<std::vector<unsigned int>>((a2 + 9));
  v117[1] = v30;
  shazam::bin_tracks<shazam::xpair_group<shazam::xpair_fields>>(v117, &v123, a1 + 16);
  v90 = v27;
  v32 = a1[16];
  if (a1[17] - v32 != 16)
  {
    v94 = (a1 + 7);
    v33 = 0;
    v98 = 0;
    v97 = 0;
    while (1)
    {
      *&v103[4] = v131[0];
      *v104 = v131[1];
      *&v104[16] = v131[2];
      *&v104[32] = v131[3];
      *&v106[4] = *v130;
      v107[0] = *&v130[16];
      v31 = *&v130[32];
      v107[1] = *&v130[32];
      *&v102.__vftable = SampleLength;
      v102.__imp_.__imp_ = 0;
      *v103 = v99;
      v105 = 0;
      *v106 = 0;
      *(&v107[1] + 12) = *&v130[44];
      *(&v107[2] + 12) = 0;
      *(&v107[3] + 4) = 0;
      HIDWORD(v107[3]) = v126[0];
      *(&v107[3] + 15) = *(v126 + 3);
      BYTE3(v107[4]) = 0;
      v34 = (v32 + 16 * v33);
      v35 = v34[1];
      ++v33;
      v36 = *(v32 + 16 * v33 + 8) - v35;
      v102.__imp_.__imp_ = v36;
      if (v36 >= 3)
      {
        *(v107 + 12) = *v34;
        *(&v107[1] + 4) = *(*a2 + 8 * *(v107 + 12));
        *(&v107[1] + 12) = (*(a2[3] + 4 * *(v107 + 12)) * 1000.0);
        begin = a1[7];
        v37 = a1[8] - begin;
        if (8 * v36 > v37)
        {
          std::vector<char>::__append(v94, 8 * v36 - v37);
          begin = v94->__begin_;
        }

        if (8 * v36 && !begin)
        {
          goto LABEL_80;
        }

        v118 = (v36 & 0x1FFFFFFFFFFFFFFFLL);
        v119 = begin;
        if (v123 <= v35)
        {
          goto LABEL_80;
        }

        memcpy(begin, (v124 + 8 * v35), 8 * v36);
        v115 = 0;
        v114 = 0;
        v116 = 0;
        v38 = v118;
        if (v118 >= 2)
        {
          v39 = v119;
          v40 = (v119 + 4);
          v41 = 1;
          do
          {
            v42 = *(v39 + 8 * v41);
            v43 = v40;
            v44 = v41;
            v45 = v40;
            do
            {
              v46 = *v45;
              v45 -= 2;
              if (v46 <= SHIDWORD(v42))
              {
                break;
              }

              *(v43 + 1) = *(v43 - 1);
              v43 = v45;
              --v44;
            }

            while (v44);
            *(v39 + 8 * v44) = v42;
            ++v41;
            v40 += 2;
          }

          while (v41 != v38);
        }

        if (*(v100 + 25) == 1)
        {
          *&v109 = a1;
          *(&v109 + 1) = &v114;
          *v110 = &v102;
          _ZN6shazam14focus_multipleILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType12ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(v118, v119, *v103, shazam::lm_diff<shazam::xpair_group<shazam::xpair_fields>>, &v109);
        }

        else
        {
          *&v109 = a1;
          *(&v109 + 1) = &v114;
          *v110 = &v102;
          _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType12ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(v118, v119, *v103, shazam::lm_diff<shazam::xpair_group<shazam::xpair_fields>>, &v109);
        }

        if (v114 == v115)
        {
          if (*(v100 + 20) == 0.0)
          {
            std::vector<shazam::Result>::push_back[abi:ne200100](a1 + 10, &v102);
          }
        }

        else
        {
          v47 = *(&v107[1] + 4) != v96 || v96 == 0;
          v48 = v98;
          if (!v47)
          {
            v48 = 1;
          }

          v98 = v48;
          v49 = *a5;
          if (*(v95 + 24) >= (-85 * ((*(*a5 + 40) - *(*a5 + 32)) >> 3)))
          {
            v50 = (-85 * ((*(*a5 + 40) - *(*a5 + 32)) >> 3));
          }

          else
          {
            v50 = *(v95 + 24);
          }

          v113[0] = v50;
          v113[1] = 3;
          v51 = shazam::signature_info::getSampleLength(v49);
          v52 = shazam::thresholdScore<(AlgoType)12>(v50, *(a2[6] + *(v107 + 12)), 1.0, v51);
          LODWORD(v109) = 0;
          *(&v109 + 1) = 0;
          *v110 = 0;
          *&v110[72] = 0;
          *v111 = 0;
          memset(&v110[8], 0, 60);
          memset(&v111[8], 0, 64);
          v112 = 0u;
          v53 = v115;
          if (v114 == v115)
          {
            v75 = 0.0;
          }

          else
          {
            v54 = (v114 + 80);
            do
            {
              v55 = *(a2[12] + 8 * *(v107 + 12));
              v57 = *(v54 - 6);
              v56 = *(v54 - 5);
              v108 = v56;
              v129 = *(v54 - 2);
              if (*(a5 + 8) <= v56 && *(a5 + 12) >= v56)
              {
                if (*(a5 + 64) == *(a5 + 72))
                {
                  shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>((*a5 + 32), v113, &v127);
                  v59 = *(a5 + 64);
                  if (v59)
                  {
                    *(a5 + 72) = v59;
                    operator delete(v59);
                  }

                  *(a5 + 64) = v127;
                  *(a5 + 80) = v128;
                }

                if (shazam::fit_points(a3, (a5 + 64), (a5 + 8), *(v54 + 6), &v108, &v129, (a1 + 13), 3, v57))
                {
                  *(v54 + 1) = (a1[14] - a1[13]) >> 4;
                  *(v54 - 1) = v108;
                  v60 = v129 * 8.0 + v55;
                  *v54 = v60;
                  if (*(a5 + 64) == *(a5 + 72))
                  {
                    shazam::peaksToTFPeaks<std::vector<std::vector<shazam::spectral_peak_t>>>((*a5 + 32), v113, &v127);
                    v61 = *(a5 + 64);
                    if (v61)
                    {
                      *(a5 + 72) = v61;
                      operator delete(v61);
                    }

                    *(a5 + 64) = v127;
                    *(a5 + 80) = v128;
                  }

                  if (shazam::fit_points(a3, (a5 + 64), (a5 + 8), *(v107 + 12), &v108, &v129, (a1 + 13), 3, v57))
                  {
                    v62 = shazam::score_match(a1 + 13);
                    *(v54 + 10) = LODWORD(v62);
                    *(v54 + 11) = v63;
                    *(v54 + 4) = (a1[14] - a1[13]) >> 4;
                    *(v54 + 4) = v108;
                    v64 = v129;
                    *(v54 - 2) = v129;
                    v65 = v64 * 8.0 + v55;
                    *(v54 + 3) = v65;
                    *(v54 + 3) = v65 + (*(*a5 + 20) - *(a2[15] + *(v54 + 6))) * 8.0;
                    v66 = *(a2[6] + *(v107 + 12)) >= v50 ? v50 : *(a2[6] + *(v107 + 12));
                    *(v54 + 9) = v66;
                    if (v63 > *&v111[28])
                    {
                      v67 = *(v54 - 4);
                      v109 = *(v54 - 5);
                      *v110 = v67;
                      v68 = *(v54 - 3);
                      v69 = *(v54 - 2);
                      v70 = *v54;
                      *&v110[48] = *(v54 - 1);
                      *&v110[64] = v70;
                      *&v110[16] = v68;
                      *&v110[32] = v69;
                      v71 = v54[1];
                      v72 = v54[2];
                      v73 = v54[4];
                      *&v111[32] = v54[3];
                      *&v111[48] = v73;
                      *v111 = v71;
                      *&v111[16] = v72;
                      std::string::operator=(&v111[64], (v54 + 5));
                    }
                  }
                }
              }

              v74 = v54 + 104;
              v54 = (v54 + 184);
            }

            while (v74 != v53);
            v75 = *&v111[28] * 128.0;
          }

          *&v111[28] = v75;
          if (v75 >= (v52 * *(v100 + 20)))
          {
            if (*&v111[56] == 3)
            {
              *&v111[28] = v75 * 1.25;
            }

            std::vector<shazam::Result>::push_back[abi:ne200100](a1 + 10, &v109);
          }

          if (SHIBYTE(v112) < 0)
          {
            operator delete(*&v111[64]);
          }

          ++v97;
        }

        *&v109 = &v114;
        std::vector<shazam::Result>::__destroy_vector::operator()[abi:ne200100](&v109);
        if (SBYTE3(v107[4]) < 0)
        {
          operator delete(*(&v107[2] + 12));
        }
      }

      v32 = a1[16];
      if (v33 >= ((a1[17] - v32) >> 4) - 1)
      {
        goto LABEL_71;
      }
    }
  }

  v97 = 0;
  LOBYTE(v98) = 0;
LABEL_71:
  v76 = a1[10];
  v77 = a1[11];
  v78 = 126 - 2 * __clz(0xD37A6F4DE9BD37A7 * ((v77 - v76) >> 3));
  if (v77 == v76)
  {
    v79 = 0;
  }

  else
  {
    v79 = v78;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,shazam::Result *,false>(v76, v77, &v102, v79, 1, v31);
  v80 = *(v100 + 36);
  v81 = a1[10];
  v82 = a1[11];
  if (v80)
  {
    v83 = v96;
    if (0xD37A6F4DE9BD37A7 * ((v82 - v81) >> 3) > v80)
    {
      std::vector<shazam::Result>::resize(a1 + 10, *(v100 + 36));
      v81 = a1[10];
      v82 = a1[11];
    }
  }

  else
  {
    v83 = v96;
  }

  v102.__vftable = 0;
  v102.__imp_.__imp_ = 0;
  *v103 = 0;
  std::vector<shazam::Result>::__init_with_size[abi:ne200100]<shazam::Result*,shazam::Result*>(&v102, v81, v82, 0xD37A6F4DE9BD37A7 * ((v82 - v81) >> 3));
  v103[16] = 1;
  v85 = *a1;
  v84 = a1[1];
  *&v104[4] = a7;
  *&v104[12] = v84;
  v86 = (**v85)(v85);
  *&v104[20] = (*(*v85 + 24))(v85, a8, v86);
  *&v104[28] = 1;
  *&v104[36] = 12;
  *&v104[44] = v16;
  v105 = (v91 - v92) >> 3;
  *v106 = v90;
  *&v106[8] = v89;
  *&v106[16] = v83;
  *(v107 + 4) = v97;
  BYTE12(v107[0]) = v98;
  memcpy(v107 + 13, __src, 0x103uLL);
  v87 = *(a9 + 24);
  if (!v87)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v87 + 48))(v87, &v102);
  return tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(&v102);
}

void shazam::matrix_for<(AlgoType)12>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  shazam::algo<(AlgoType)12>::matrix_for (a2);
  v4 = *(a1 + 1);
  if ((v4 & 0x100000000) != 0)
  {
    a2[10] = v4;
  }

  v5 = *(a1 + 3);
  if ((v5 & 0x100000000) != 0)
  {
    a2[11] = v5;
  }

  if (*(a1 + 32) == 1)
  {
    a2[1] >>= 1;
  }
}

void _ZN6shazam14focus_multipleILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType12ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, float (*a4)(unint64_t), uint64_t *a5)
{
  v29 = a1;
  v30 = a2;
  if (a1)
  {
    v7 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a3;
    do
    {
      v11 = 8 * v9;
      do
      {
        if (v29 <= v9)
        {
          goto LABEL_23;
        }

        a1 = (a4)(v30 + v11);
        if (v29 <= v8)
        {
          goto LABEL_23;
        }

        v13 = v12 - a4(v30 + 8 * v8);
        if (v13 > v10)
        {
          break;
        }

        ++v9;
        v11 += 8;
      }

      while (v9 < v7);
      if (v9 - v8 >= 3)
      {
        v28[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(&v29, v8, (v9 - v8));
        v28[1] = v14;
        v16 = *a5;
        v15 = a5[1];
        v17 = a5[2];
        v18 = *(v17 + 16);
        v31[0] = *v17;
        v31[1] = v18;
        v19 = *(v17 + 80);
        v21 = *(v17 + 32);
        v20 = *(v17 + 48);
        v31[4] = *(v17 + 64);
        v31[5] = v19;
        v31[2] = v21;
        v31[3] = v20;
        v22 = *(v17 + 144);
        v24 = *(v17 + 96);
        v23 = *(v17 + 112);
        v31[8] = *(v17 + 128);
        v31[9] = v22;
        v31[6] = v24;
        v31[7] = v23;
        if (*(v17 + 183) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v17 + 160), *(v17 + 168));
        }

        else
        {
          v25 = *(v17 + 160);
          __p.__r_.__value_.__r.__words[2] = *(v17 + 176);
          *&__p.__r_.__value_.__l.__data_ = v25;
        }

        shazam::cull_phase<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(v15, v31, v16 + 152, v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v13 > v10)
      {
        if (v29 > v9)
        {
          v26 = 8 * v8;
          do
          {
            a1 = (a4)(v30 + 8 * v9);
            if (v29 <= v8)
            {
              break;
            }

            if ((v27 - a4(v30 + v26)) <= v10)
            {
              goto LABEL_21;
            }

            ++v8;
            v26 += 8;
          }

          while (v29 > v9);
        }

LABEL_23:
        gsl::details::terminate(a1);
      }

LABEL_21:
      ;
    }

    while (v9 < v7);
  }
}

void sub_230FBAE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFfRKS3_EZNS_11CPUSearcher6searchIL8AlgoType12ES3_EEvRKNS_12SongDataBaseERKNS_16CPUOnePtDatabaseERKNS_15CPULMFPDataBaseERKNS_5QueryIXT_ENSt3__16vectorINS_4lmfpIXsr4algoIXT_EEE6fpTypeEEENSL_9allocatorISO_EEEEEERKNS_11QueryConfigEmNSL_6chrono10time_pointINSY_12steady_clockENSY_8durationIxNSL_5ratioILl1ELl1000000000EEEEEEERKNSL_8functionIFvRKNS_14SearchResponseEEEEEUlRKT_E_EEvN3gsl4spanIT0_Lm18446744073709551615EEExT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, float (*a4)(uint64_t), uint64_t *a5)
{
  v31[0] = a1;
  v31[1] = a2;
  if (a1)
  {
    v8 = a1;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = a3;
    do
    {
      if (v11 == v8)
      {
LABEL_19:
        gsl::details::terminate(a1);
      }

      v13 = v11;
      a1 = (a4)(a2 + 8 * v11);
      if (v10 >= v8)
      {
LABEL_10:
        v17 = v10;
      }

      else
      {
        v15 = v14 + v12;
        v16 = a2 + 8 * v10;
        do
        {
          if (v8 == v10)
          {
            goto LABEL_19;
          }

          if (a4(v16) >= v15)
          {
            goto LABEL_10;
          }

          v10 = (v10 + 1);
          v16 += 8;
          v9 = v13;
        }

        while (v8 != v10);
        v17 = v8;
        v9 = v13;
      }

      v11 = v13 + 1;
      v10 = (v17 + 1);
    }

    while ((v17 + 1) < v8);
    if (v17 - v13 >= 3)
    {
      v30[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v31, v9, (v17 - v13));
      v30[1] = v18;
      v20 = *a5;
      v19 = a5[1];
      v21 = a5[2];
      v22 = *(v21 + 16);
      v32[0] = *v21;
      v32[1] = v22;
      v23 = *(v21 + 80);
      v25 = *(v21 + 32);
      v24 = *(v21 + 48);
      v32[4] = *(v21 + 64);
      v32[5] = v23;
      v32[2] = v25;
      v32[3] = v24;
      v26 = *(v21 + 144);
      v28 = *(v21 + 96);
      v27 = *(v21 + 112);
      v32[8] = *(v21 + 128);
      v32[9] = v26;
      v32[6] = v28;
      v32[7] = v27;
      if (*(v21 + 183) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v21 + 160), *(v21 + 168));
      }

      else
      {
        v29 = *(v21 + 160);
        __p.__r_.__value_.__r.__words[2] = *(v21 + 176);
        *&__p.__r_.__value_.__l.__data_ = v29;
      }

      shazam::cull_phase<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(v19, v32, v20 + 152, v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_230FBB014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void shazam::cull_phase<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(uint64_t a1, uint64_t a2, uint64_t a3, gsl::details **a4)
{
  v8 = *a4;
  *(a2 + 24) = *a4;
  v9 = a4[1];
  v12 = shazam::fdelta_compare<shazam::xpair_group<shazam::xpair_fields>>;
  v13[0] = v9;
  *&v14 = v9;
  *(&v14 + 1) = v9 + 8 * v8;
  v15 = v9;
  v13[1] = *(&v14 + 1);
  v13[2] = *(&v14 + 1);
  _ZNSt3__115__sort_dispatchB8ne200100INS_17_ClassicAlgPolicyEN3gsl7details13span_iteratorIN6shazam11xpair_groupIJNS5_12xpair_fieldsEEEEEEPDoFbRKS8_SB_EEEvT0_SE_RT1_(&v14, v13, &v12);
  v10 = *a4;
  v11 = a4[1];
  *&v14 = a2;
  *(&v14 + 1) = a3;
  v15 = a1;
  _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFiRKS3_EZNS_10cull_phaseIL8AlgoType12ES3_Lm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSB_9allocatorISD_EEEESD_RNSC_INS_11regresspairENSE_ISI_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEEUlT_E_EEvSP_xT1_T2_(v10, v11, 21, shazam::f1_diff<shazam::xpair_group<shazam::xpair_fields>>, &v14);
}

void _ZN6shazam5focusILl2ENS_11xpair_groupIJNS_12xpair_fieldsEEEEPDoFiRKS3_EZNS_10cull_phaseIL8AlgoType12ES3_Lm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSB_9allocatorISD_EEEESD_RNSC_INS_11regresspairENSE_ISI_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEEUlT_E_EEvSP_xT1_T2_(gsl::details *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t), float ***a5)
{
  v19[0] = result;
  v19[1] = a2;
  if (result)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v12 == v9)
      {
LABEL_15:
        gsl::details::terminate(result);
      }

      v13 = v12;
      result = a4(a2 + 8 * v12);
      if (v11 >= v9)
      {
LABEL_10:
        v16 = v11;
      }

      else
      {
        v14 = a3 + result;
        v15 = a2 + 8 * v11;
        do
        {
          if (v9 == v11)
          {
            goto LABEL_15;
          }

          result = a4(v15);
          if (v14 <= result)
          {
            goto LABEL_10;
          }

          v11 = (v11 + 1);
          v15 += 8;
          v10 = v13;
        }

        while (v9 != v11);
        v16 = v9;
        v10 = v13;
      }

      v12 = v13 + 1;
      v11 = (v16 + 1);
    }

    while ((v16 + 1) < v9);
    if (v16 - v13 >= 3)
    {
      subspan = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v19, v10, (v16 - v13));
      shazam::cull_phase<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(std::vector<shazam::Result> &,shazam::Result,std::vector<shazam::regresspair> &,gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul> const&)::{lambda((AlgoType)12)#1}::operator()<gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul>>(a5, subspan, v18);
    }
  }
}

void shazam::cull_phase<(AlgoType)12,shazam::xpair_group<shazam::xpair_fields>,2ul,(void *)0>(std::vector<shazam::Result> &,shazam::Result,std::vector<shazam::regresspair> &,gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul> const&)::{lambda((AlgoType)12)#1}::operator()<gsl::span<shazam::xpair_group<shazam::xpair_fields>,18446744073709551615ul>>(float ***a1, unint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v4 = *a1;
  *(v4 + 32) = a2;
  shazam::shearfactor<(AlgoType)1,shazam::xpair_group<shazam::xpair_fields>,(void *)0>(&v13, (v4 + 72), (v4 + 56));
  shazam::xpairs_to_regresspairs<shazam::xpair_group<shazam::xpair_fields>>(v13, v14, a1[1], *(*a1 + 18));
  v5 = a1[1];
  v6 = *v5;
  v7 = v5[1];
  v8 = (v7 - *v5) >> 3;
  if (v8 > 0x3E7)
  {
    v9 = 126 - 2 * __clz(v8);
    if (v7 == v6)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,shazam::regresspair *,false>(v6, v7, &v15, v10, 1);
  }

  else
  {
    shazam::insertionsort<shazam::regresspair,unsigned long,std::less<shazam::regresspair>>(v6, 0, v8);
  }

  v11 = gsl::make_span<std::vector<shazam::lmfp<(shazam::fp_type)0>>>(a1[1]);
  _ZN6shazam5focusILl2ENS_11regresspairEPDoFfRKS1_EZZNS_10cull_phaseIL8AlgoType12ENS_11xpair_groupIJNS_12xpair_fieldsEEEELm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSC_9allocatorISE_EEEESE_RNSD_IS1_NSF_IS1_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEENKUlT_E_clINSN_ISA_Lm18446744073709551615EEEEEDaSS_EUlSS_E_EEvSP_xT1_T2_(v11, v12, 11, shazam::regresspair_y, *a1, a1[2]);
}

void _ZN6shazam5focusILl2ENS_11regresspairEPDoFfRKS1_EZZNS_10cull_phaseIL8AlgoType12ENS_11xpair_groupIJNS_12xpair_fieldsEEEELm2ELPv0EEEvRNSt3__16vectorINS_6ResultENSC_9allocatorISE_EEEESE_RNSD_IS1_NSF_IS1_EEEERKN3gsl4spanIT0_Lm18446744073709551615EEEENKUlT_E_clINSN_ISA_Lm18446744073709551615EEEEEDaSS_EUlSS_E_EEvSP_xT1_T2_(gsl::details *a1, uint64_t a2, uint64_t a3, float (*a4)(uint64_t), uint64_t a5, unint64_t *a6)
{
  v22[0] = a1;
  v22[1] = a2;
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = a3;
    do
    {
      if (v13 == v10)
      {
LABEL_16:
        gsl::details::terminate(a1);
      }

      v15 = v13;
      a1 = (a4)(a2 + 8 * v13);
      if (v12 >= v10)
      {
LABEL_10:
        v19 = v12;
      }

      else
      {
        v17 = v16 + v14;
        v18 = a2 + 8 * v12;
        do
        {
          if (v10 == v12)
          {
            goto LABEL_16;
          }

          if (a4(v18) >= v17)
          {
            goto LABEL_10;
          }

          v12 = (v12 + 1);
          v18 += 8;
          v11 = v15;
        }

        while (v10 != v12);
        v19 = v10;
        v11 = v15;
      }

      v13 = v15 + 1;
      v12 = (v19 + 1);
    }

    while ((v19 + 1) < v10);
    if (v19 - v15 >= 3)
    {
      v25[0] = gsl::span<shazam::regresspair,18446744073709551615ul>::make_subspan(v22, v11, (v19 - v15));
      v25[1] = v20;
      *(a5 + 48) = v25[0];
      shazam::regress<shazam::regresspair,shazam::extractX<shazam::regresspair>,shazam::extractY<shazam::regresspair>>(v25, v23);
      if (v24 == 1)
      {
        v21 = v23[0] + *(a5 + 72);
        *(a5 + 60) = v21;
        *(a5 + 64) = v23[1];
        std::vector<shazam::Result>::push_back[abi:ne200100](a6, a5);
      }
    }
  }
}

float shazam::thresholdScore<(AlgoType)12>(int a1, int a2, float a3, float a4)
{
  v4 = &shazam::thresholdCurve;
  if (a2 == 4 && a1 == 4)
  {
    v4 = &shazam::thresholdCurve_timeskew5;
  }

  v6 = v4[1];
  v9[0] = *v4;
  v9[1] = v6;
  v7 = v4[3];
  v9[2] = v4[2];
  v9[3] = v7;
  return shazam::thresholdLerp(v9, a4) * a3;
}

uint64_t shazam::virtual_array<char>::virtual_array(uint64_t a1, size_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  while (1)
  {
    v4 = mmap(0, a2, 3, 4098, -1, 0);
    if (v4 != -1)
    {
      break;
    }

    v5 = a2 >> 1;
    v6 = a2 > 0x8000001;
    a2 >>= 1;
    if (!v6)
    {
      std::to_string(&v15, v5);
      v7 = std::string::insert(&v15, 0, "Requested ");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v16, "bytes.");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v18 = v9->__r_.__value_.__r.__words[2];
      v17 = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      v12 = *__error();
      std::operator+<char>();
      v13 = std::system_category();
      MEMORY[0x231921D40](exception, v12, v13, &v16);
      __cxa_throw(exception, MEMORY[0x277D82718], MEMORY[0x277D82650]);
    }
  }

  *a1 = v4;
  *(a1 + 8) = a2;
  return a1;
}

void sub_230FBB5CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      if (a28 < 0)
      {
        operator delete(a23);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

unsigned int *shazam::SearchPlan::assertValid(unsigned int *this)
{
  v1 = *this;
  if (*this >= 7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid DB Density range");
    goto LABEL_18;
  }

  v2 = this[7];
  if (v1)
  {
    v3 = v2 == 2;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Invalid DB Density param for ThreePoint");
    goto LABEL_18;
  }

  if (v2 != 1)
  {
    if (v2 == 11)
    {
      if (v1)
      {
LABEL_17:
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Invalid DB Density param for live");
LABEL_18:
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    else if (v2 == 3 && v1)
    {
      goto LABEL_17;
    }

    if (*(this + 8) == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Stopwords only supported on TwoPt algo type");
      goto LABEL_18;
    }
  }

  return this;
}

uint64_t shazam::SearchPlan::SearchPlan(uint64_t a1, int a2, int a3)
{
  *a1 = a3;
  *(a1 + 4) = 1065353216;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 772;
  *(a1 + 28) = a2;
  shazam::SearchPlan::assertValid(a1);
  return a1;
}

void shazam::pairwise::audioscanCompare(_OWORD *a1, uint64_t *a2, __int128 *a3, uint64_t *a4, uint64_t a5, unsigned int *a6, __int128 *a7, __int128 *a8, uint64_t a9)
{
  v36 = *MEMORY[0x277D85DE8];
  shazam::SignatureTracker::SignatureTracker(v33, a1, a2);
  v30 = 0;
  v29 = 0uLL;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v29, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v15 = a1[1];
  v31[0] = *a1;
  v31[1] = v15;
  v31[2] = v29;
  v32 = v30;
  v29 = 0uLL;
  v30 = 0;
  __p[0] = &v29;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](__p);
  v24 = 0;
  v23 = 0uLL;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v23, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v16 = a3[1];
  v25 = *a3;
  v26 = v16;
  v27 = v23;
  v28 = v24;
  v23 = 0uLL;
  v24 = 0;
  __p[0] = &v23;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](__p);
  v17 = a7[1];
  v20 = *a7;
  v21 = v17;
  v22 = *(a7 + 4);
  __p[13] = &unk_2845C5B70;
  v18 = a8[1];
  v34 = *a8;
  v35 = v18;
  shazam::CPUDatabaseBuilder::CPUDatabaseBuilder(__p);
  shazam::CPUDatabaseBuilder::add(__p, v31, 2, 0);
  shazam::CPUDatabaseBuilder::build();
}

void sub_230FBBDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  shazam::StaticCPUSearcherFactory::~StaticCPUSearcherFactory((v42 - 192));
  shazam::CPUDatabases::~CPUDatabases(&a27);
  shazam::CPUDatabases::~CPUDatabases(&a34);
  shazam::CPUDatabaseBuilder::~CPUDatabaseBuilder(&a40);
  a40 = v40;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a40);
  a40 = v41;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a40);
  v44 = STACK[0x250];
  if (STACK[0x250])
  {
    STACK[0x258] = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void shazam::CPUDatabases::~CPUDatabases(shazam::CPUDatabases *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

float shazam::pairwise::attemptToMerge@<S0>(shazam::pairwise *this@<X0>, const TrackingResult *a2@<X1>, const TrackingResult *a3@<X2>, BOOL *a4@<X3>, uint64_t a5@<X8>)
{
  var0 = a2->var0.var0.var0;
  v6 = a2->var0.var1.var0;
  v7 = *this;
  v8 = *(this + 1);
  v9 = *(this + 2);
  v10 = *(this + 3);
  v11 = a2->var1.var0.var0;
  v12 = a2->var1.var1.var0;
  v14 = a2->var0.var0.var0 < *this || v11 < v9;
  v16 = v8 < v6 || v10 < v12;
  if (v14 || v16)
  {
    v18 = v6 < v8 || v12 < v10;
    v19 = v7 < var0 || v9 < v11;
    v20 = v19;
    if (v19 || v18)
    {
      if (v20 & 1 | (v16 || v6 < v7) || v12 < v9)
      {
        v24 = v8 < var0 || v14;
        if (v10 < v11)
        {
          v24 = 1;
        }

        if ((v24 | v18))
        {
          goto LABEL_31;
        }

        v25 = v7 - (var0 + v9) + v11;
        if (v25 < 0)
        {
          v25 = -v25;
        }

        if (v25 > 0xF9)
        {
          goto LABEL_31;
        }

        LOBYTE(a3->var0.var0.var0) = 1;
        *a5 = *&a2->var0.var0.var0;
        *a5 = v7;
        *(a5 + 8) = v9;
      }

      else
      {
        v22 = v7 - (var0 + v9) + v11;
        if (v22 < 0)
        {
          v22 = -v22;
        }

        if (v22 > 0xF9)
        {
          goto LABEL_31;
        }

        LOBYTE(a3->var0.var0.var0) = 1;
        *a5 = a2->var0;
        v23 = a2->var1.var0.var0;
        *(a5 + 4) = v8;
        *(a5 + 8) = v23;
        *(a5 + 12) = v10;
      }

      *&v21 = (a2->var2 + *(this + 4)) * 0.5;
      *(a5 + 16) = v21;
      return *&v21;
    }

    LOBYTE(a3->var0.var0.var0) = 1;
  }

  else
  {
    *a4 = 0;
  }

LABEL_31:
  v21 = *&a2->var0.var0.var0;
  *a5 = *a2;
  return *&v21;
}

void shazam::pairwise::intersectingMerge(TrackingResult *a1, uint64_t *a2)
{
  __src = 0;
  v31 = 0;
  v32 = 0;
  v29 = 1;
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    std::vector<shazam::TrackingResult>::push_back[abi:ne200100](a2, &a1->var0);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    *&v28[1] = *a1;
    do
    {
      v28[0] = 0;
      shazam::pairwise::attemptToMerge((v4 + v5), &v28[1], v28, &v29, &v26);
      *&v28[1] = v26;
      *&v28[17] = v27;
      if (v28[0] == 1)
      {
        if (v6 >= v32)
        {
          v8 = __src;
          v9 = v6 - __src;
          v10 = (v6 - __src) >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
          }

          v12 = v32 - __src;
          if ((v32 - __src) >> 2 > v11)
          {
            v11 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          if (v13)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::spectral_peak_t>>(&__src, v13);
          }

          v14 = v10;
          v15 = (8 * v10);
          v16 = &v15[-v14];
          *v15 = v7;
          v6 = v15 + 1;
          memcpy(v16, v8, v9);
          v17 = __src;
          __src = v16;
          v31 = v6;
          v32 = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v6++ = v7;
        }

        v31 = v6;
        v4 = *a2;
        v3 = a2[1];
      }

      ++v7;
      v5 += 20;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 2));
    v18 = 126 - 2 * __clz((v6 - __src) >> 3);
    if (v6 == __src)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(__src, v6, &v26, v19, 1);
    v20 = __src;
    v21 = v31;
    if (__src != v31)
    {
      v22 = a2[1];
      do
      {
        v23 = *v20++;
        v24 = *a2 + 20 * v23;
        v25 = *(v22 - 20);
        *(v24 + 16) = *(v22 - 4);
        *v24 = v25;
        v22 = a2[1] - 20;
        a2[1] = v22;
      }

      while (v20 != v21);
    }

    if (v29)
    {
      std::vector<shazam::TrackingResult>::push_back[abi:ne200100](a2, &v28[1]);
    }
  }

  if (__src)
  {
    v31 = __src;
    operator delete(__src);
  }
}

void sub_230FBC298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<shazam::TrackingResult>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::TrackingResult>>(a1, v11);
    }

    v12 = 20 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 4);
    *v12 = v13;
    v7 = 20 * v8 + 20;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 4);
    *v5 = v6;
    v7 = v5 + 20;
  }

  *(a1 + 8) = v7;
}

void shazam::pairwise::compare(_OWORD *a1@<X0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t *a4@<X3>, unsigned int a5@<W4>, unsigned int *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10[4] = *MEMORY[0x277D85DE8];
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v10[0] = &unk_2845C5C50;
  v10[1] = a9;
  v10[2] = a5;
  v10[3] = v10;
  shazam::pairwise::audioscanCompare(a1, a2, a3, a4, v10, a6, a7, a8, a10);
}

void sub_230FBC468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)>::~__value_func[abi:ne200100](va);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void shazam::StaticCPUSearcherFactory::~StaticCPUSearcherFactory(shazam::StaticCPUSearcherFactory *this)
{
  *this = &unk_2845C4A50;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  *this = &unk_2845C4A50;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  *this = &unk_2845C4A50;
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x231921F20);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void shazam::CPUDatabaseBuilder::~CPUDatabaseBuilder(shazam::CPUDatabaseBuilder *this)
{
  v5 = (this + 56);
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 6);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

uint64_t *std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FBC644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<shazam::spectral_peak_t>>,std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<shazam::spectral_peak_t*,shazam::spectral_peak_t*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<shazam::spectral_peak_t>>,std::vector<shazam::spectral_peak_t>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *std::vector<shazam::spectral_peak_t>::__init_with_size[abi:ne200100]<shazam::spectral_peak_t*,shazam::spectral_peak_t*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<shazam::spectral_peak_t>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_230FBC778(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<shazam::spectral_peak_t>>,std::vector<shazam::spectral_peak_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<shazam::spectral_peak_t>>,std::vector<shazam::spectral_peak_t>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<shazam::spectral_peak_t>>,std::vector<shazam::spectral_peak_t>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 24);
      v3 -= 24;
      v4 = v5;
      if (v5)
      {
        *(v1 - 16) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<shazam::basic_signature<(shazam::signature_density)24>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 56;
        v7 = (v4 - 24);
        std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void shazam::crop<(shazam::signature_density)24>(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<std::vector<shazam::spectral_peak_t>>::resize(&v16, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 3));
  v8 = *(a1 + 32);
  if (*(a1 + 40) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>::span<18446744073709551615ul,std::vector<shazam::spectral_peak_t>,0>(&v14, (v8 + v9));
      shazam::crop_band<shazam::spectral_peak_t>(v14, *(&v14 + 1), (v16 + v9), a2, a3);
      ++v10;
      v8 = *(a1 + 32);
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - v8) >> 3));
  }

  shazam::cropped_info(a1, a2, a3, &v14);
  DWORD2(v15) = shazam::find_last_peak_tick(&v16);
  v13 = 0;
  v12 = 0uLL;
  std::vector<std::vector<shazam::spectral_peak_t>>::__init_with_size[abi:ne200100]<std::vector<shazam::spectral_peak_t>*,std::vector<shazam::spectral_peak_t>*>(&v12, v16, v17, 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3));
  v11 = v15;
  *a4 = v14;
  *(a4 + 16) = v11;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  v12 = 0uLL;
  v13 = 0;
  v19 = &v12;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v19);
  *&v14 = &v16;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void sub_230FBCA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  a13 = &a17;
  std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t std::vector<shazam::basic_signature<(shazam::signature_density)24>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<shazam::basic_signature<(shazam::signature_density)24>>::__emplace_back_slow_path<shazam::basic_signature<(shazam::signature_density)24>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    result = v3 + 56;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<shazam::basic_signature<(shazam::signature_density)24>>::__emplace_back_slow_path<shazam::basic_signature<(shazam::signature_density)24>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>>(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<shazam::basic_signature<(shazam::signature_density)24>>::~__split_buffer(&v15);
  return v14;
}

void sub_230FBCBE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<shazam::basic_signature<(shazam::signature_density)24>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v13 = (v5 + 32);
      std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v13);
      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<shazam::basic_signature<(shazam::signature_density)24>>,shazam::basic_signature<(shazam::signature_density)24>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 56;
      v4 = (v1 - 24);
      std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **std::__split_buffer<shazam::basic_signature<(shazam::signature_density)24>>::~__split_buffer(void **a1)
{
  std::__split_buffer<shazam::basic_signature<(shazam::signature_density)24>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<shazam::basic_signature<(shazam::signature_density)24>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = (i - 24);
    std::vector<std::vector<shazam::spectral_peak_t>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }
}

void shazam::crop_band<shazam::spectral_peak_t>(uint64_t a1, unint64_t a2, void *a3, int a4, int a5)
{
  v7 = a4 + a5;
  if (__CFADD__(a4, a5))
  {
    v7 = -1;
  }

  v18 = v7;
  v19 = a4;
  LOBYTE(v14) = 0;
  v8 = a2 + 8 * a1;
  v21.n128_u64[0] = a2;
  v21.n128_u64[1] = v8;
  v22 = a2;
  std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,gsl::details::span_iterator<shazam::spectral_peak_t const>,std::chrono::duration<unsigned int,std::ratio<1l,125l>>,std::__identity,void shazam::crop_band<shazam::spectral_peak_t>(gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>,std::vector<shazam::spectral_peak_t> &,std::chrono::duration<unsigned int,std::ratio<1l,125l>>,std::chrono::duration<unsigned int,std::ratio<1l,125l>>)::{lambda(shazam::spectral_peak_t const&,gsl::details::span_iterator<shazam::spectral_peak_t const> const&)#1}>(&v21, &v19, (8 * a1) >> 3, &v16);
  v21 = v16;
  v22 = v17;
  v20[0] = a2;
  v20[1] = v8;
  v20[2] = v8;
  _ZNSt3__113__upper_boundB8ne200100INS_17_ClassicAlgPolicyEZN6shazam9crop_bandINS2_15spectral_peak_tEEEvN3gsl4spanIKT_Lm18446744073709551615EEERNS_6vectorIS7_NS_9allocatorIS7_EEEENS_6chrono8durationIjNS_5ratioILl1ELl125EEEEESJ_EUlRS8_RKT0_E0_NS5_7details13span_iteratorIKS4_EESS_SJ_NS_10__identityEEET1_SU_T2_RKT3_OSL_OT4_(&v21, v20, &v18, &v14);
  if (v14 != *&v16)
  {
    gsl::details::terminate(v9);
  }

  v10 = v15 - v17;
  std::vector<shazam::spectral_peak_t>::resize(a3, (v15 - v17) >> 3);
  v11 = *a3;
  v12 = a3[1];
  if (*a3 != v12)
  {
    v13 = gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v16);
    memcpy(*a3, v13, v10);
    v11 = *a3;
    v12 = a3[1];
  }

  while (v11 != v12)
  {
    *v11 -= v19;
    v11 += 2;
  }
}

__n128 std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,gsl::details::span_iterator<shazam::spectral_peak_t const>,std::chrono::duration<unsigned int,std::ratio<1l,125l>>,std::__identity,void shazam::crop_band<shazam::spectral_peak_t>(gsl::span<shazam::spectral_peak_t const,18446744073709551615ul>,std::vector<shazam::spectral_peak_t> &,std::chrono::duration<unsigned int,std::ratio<1l,125l>>,std::chrono::duration<unsigned int,std::ratio<1l,125l>>)::{lambda(shazam::spectral_peak_t const&,gsl::details::span_iterator<shazam::spectral_peak_t const> const&)#1}>@<Q0>(__n128 *a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = v6 >> 1;
      v12 = *a1;
      v13 = a1[1].n128_u64[0];
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v12, v6 >> 1);
      if (*gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v12) < *a2)
      {
        v9 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v12);
        v10 = v9[1].n128_u64[0];
        *a1 = *v9;
        a1[1].n128_u64[0] = v10;
        v8 = v6 + ~v8;
      }

      v6 = v8;
    }

    while (v8);
  }

  result = *a1;
  *a4 = *a1;
  a4[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

__n128 _ZNSt3__113__upper_boundB8ne200100INS_17_ClassicAlgPolicyEZN6shazam9crop_bandINS2_15spectral_peak_tEEEvN3gsl4spanIKT_Lm18446744073709551615EEERNS_6vectorIS7_NS_9allocatorIS7_EEEENS_6chrono8durationIjNS_5ratioILl1ELl125EEEEESJ_EUlRS8_RKT0_E0_NS5_7details13span_iteratorIKS4_EESS_SJ_NS_10__identityEEET1_SU_T2_RKT3_OSL_OT4_@<Q0>(gsl::details *a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 != *a1 || a2[1] != *(a1 + 1))
  {
    gsl::details::terminate(a1);
  }

  v7 = a2[2] - *(a1 + 2);
  if (v7)
  {
    v9 = v7 >> 3;
    do
    {
      v10 = v9 >> 1;
      v16 = *a1;
      v17 = *(a1 + 2);
      gsl::details::span_iterator<shazam::xpair_group<shazam::xpair_fields>>::operator+=(&v16, v9 >> 1);
      v14 = v16;
      v15 = v17;
      if (*a3 >= *gsl::details::span_iterator<shazam::spectral_peak_compact_t const>::operator*(&v14))
      {
        v11 = gsl::details::span_iterator<shazam::spectral_peak_t const>::operator++(&v14);
        v12 = *(v11 + 2);
        *a1 = *v11;
        *(a1 + 2) = v12;
        v10 = v9 + ~v10;
      }

      v9 = v10;
    }

    while (v10);
  }

  result = *a1;
  *a4 = *a1;
  *(a4 + 16) = *(a1 + 2);
  return result;
}

__n128 std::__function::__func<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::SearchResponse const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2845C5BC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

std::runtime_error *std::__function::__func<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::SearchResponse const&)>::operator()(uint64_t a1, std::runtime_error *a2)
{
  tl::detail::expected_copy_base<std::vector<shazam::Result>,std::system_error,false>::expected_copy_base(&v21, a2);
  if (v22 == 1)
  {
    v3 = v21.__vftable;
    for (i = v21.__imp_.__imp_; v3 != i; v3 = (v3 + 184))
    {
      if (v3[5].what != 1)
      {
        v5 = *(a1 + 16);
        v6 = (*&v3[4].~runtime_error_0 * 0.125);
        v7 = *(a1 + 8);
        v8 = v3[4].~runtime_error;
        v9 = v3[2].~runtime_error_0;
        v10 = *(v5 + 8);
        v11 = *(v5 + 16);
        if (v10 >= v11)
        {
          v13 = *v5;
          v14 = v10 - *v5;
          v15 = v14 >> 4;
          v16 = (v14 >> 4) + 1;
          if (v16 >> 60)
          {
            std::vector<std::vector<shazam::spectral_peak_t>>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v13;
          if (v17 >> 3 > v16)
          {
            v16 = v17 >> 3;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::ancient_dead_sig_point_t>>(*(a1 + 16), v16);
          }

          v18 = (16 * v15);
          *v18 = v6;
          v18[1] = v7;
          v18[2] = v8;
          v18[3] = v9;
          v12 = 16 * v15 + 16;
          memcpy(0, v13, v14);
          v19 = *v5;
          *v5 = 0;
          *(v5 + 8) = v12;
          *(v5 + 16) = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v10 = v6;
          v10[1] = v7;
          v12 = (v10 + 4);
          v10[2] = v8;
          v10[3] = v9;
        }

        *(v5 + 8) = v12;
      }
    }
  }

  return tl::detail::expected_storage_base<std::vector<shazam::Result>,std::system_error,false,false>::~expected_storage_base(&v21);
}

uint64_t std::__function::__func<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0,std::allocator<shazam::pairwise::audioscanCompare(shazam::basic_signature_view<(shazam::signature_density)2147483647>,shazam::basic_signature_view<(shazam::signature_density)2147483647>,std::function<void ()(shazam::TrackingResult const&,shazam::sig_alignment const&)> const&,shazam::sig_chunk_config const&,shazam::QueryConfig const&,shazam::SearchPlan const&,shazam::TrackerConfig const&)::$_0>,void ()(shazam::SearchResponse const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t tl::detail::expected_copy_base<std::vector<shazam::Result>,std::system_error,false>::expected_copy_base(uint64_t a1, std::runtime_error *a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (LOBYTE(a2[2].__vftable) == 1)
  {
    tl::detail::expected_operations_base<std::vector<shazam::Result>,std::system_error>::construct_with<tl::detail::expected_copy_base<std::vector<shazam::Result>,std::system_error,false> const&>(a1, a2);
  }

  else
  {
    std::runtime_error::runtime_error(a1, a2);
    *a1 = MEMORY[0x277D82840] + 16;
    *(a1 + 16) = a2[1];
    *(a1 + 32) = 0;
  }

  return a1;
}

uint64_t *tl::detail::expected_operations_base<std::vector<shazam::Result>,std::system_error>::construct_with<tl::detail::expected_copy_base<std::vector<shazam::Result>,std::system_error,false> const&>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = std::vector<shazam::Result>::__init_with_size[abi:ne200100]<shazam::Result*,shazam::Result*>(a1, *a2, a2[1], 0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 3));
  *(a1 + 32) = 1;
  return result;
}

uint64_t std::__function::__value_func<void ()(shazam::SearchResponse const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<shazam::TrackingResult>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v58 = v9[1];
          v59 = *(a2 - 1);
          if (v58 <= v59)
          {
            v60 = *(a2 - 1);
          }

          else
          {
            v60 = v9[1];
          }

          if (v58 >= v59)
          {
            v58 = *(a2 - 1);
          }

          *(a2 - 1) = v58;
          v9[1] = v60;
          v61 = *(a2 - 1);
          if (v61 <= *v9)
          {
            v62 = *v9;
          }

          else
          {
            v62 = *(a2 - 1);
          }

          if (v61 >= *v9)
          {
            v61 = *v9;
          }

          *(a2 - 1) = v61;
          v64 = *v9;
          v63 = v9[1];
          if (v62 <= v63)
          {
            v64 = v9[1];
          }

          if (v62 < v63)
          {
            v63 = v62;
          }

          *v9 = v64;
          v9[1] = v63;
          return result;
        case 4:
          v88 = v9[1];
          v87 = v9[2];
          if (*v9 <= v87)
          {
            v89 = v9[2];
          }

          else
          {
            v89 = *v9;
          }

          if (*v9 < v87)
          {
            v87 = *v9;
          }

          v9[2] = v87;
          *v9 = v89;
          v90 = *(a2 - 1);
          if (v88 <= v90)
          {
            v91 = *(a2 - 1);
          }

          else
          {
            v91 = v88;
          }

          if (v88 < v90)
          {
            v90 = v88;
          }

          *(a2 - 1) = v90;
          v92 = *v9;
          if (*v9 <= v91)
          {
            v93 = v91;
          }

          else
          {
            v93 = *v9;
          }

          if (*v9 >= v91)
          {
            v92 = v91;
          }

          *v9 = v93;
          v9[1] = v92;
          v94 = v9[2];
          v95 = *(a2 - 1);
          if (v94 <= v95)
          {
            v96 = *(a2 - 1);
          }

          else
          {
            v96 = v9[2];
          }

          if (v94 >= v95)
          {
            v94 = *(a2 - 1);
          }

          *(a2 - 1) = v94;
          v97 = v9[1];
          if (v97 <= v96)
          {
            v98 = v96;
          }

          else
          {
            v98 = v9[1];
          }

          if (v97 >= v96)
          {
            v97 = v96;
          }

          v9[1] = v98;
          v9[2] = v97;
          return result;
        case 5:
          v65 = *v9;
          v66 = v9[1];
          if (*v9 <= v66)
          {
            v67 = v9[1];
          }

          else
          {
            v67 = *v9;
          }

          if (*v9 >= v66)
          {
            v65 = v9[1];
          }

          *v9 = v67;
          v9[1] = v65;
          v68 = v9[3];
          v69 = *(a2 - 1);
          if (v68 <= v69)
          {
            v70 = *(a2 - 1);
          }

          else
          {
            v70 = v9[3];
          }

          if (v68 >= v69)
          {
            v68 = *(a2 - 1);
          }

          *(a2 - 1) = v68;
          v9[3] = v70;
          v71 = *(a2 - 1);
          v72 = v9[2];
          if (v71 <= v72)
          {
            v73 = v9[2];
          }

          else
          {
            v73 = *(a2 - 1);
          }

          if (v71 >= v72)
          {
            v71 = v9[2];
          }

          *(a2 - 1) = v71;
          v75 = v9[2];
          v74 = v9[3];
          v76 = v9[1];
          if (v73 <= v74)
          {
            v75 = v9[3];
          }

          if (v73 < v74)
          {
            v74 = v73;
          }

          v9[2] = v75;
          v9[3] = v74;
          v77 = *(a2 - 1);
          if (v76 <= v77)
          {
            v78 = *(a2 - 1);
          }

          else
          {
            v78 = v76;
          }

          if (v76 < v77)
          {
            v77 = v76;
          }

          *(a2 - 1) = v77;
          v79 = *v9;
          v81 = v9[2];
          v80 = v9[3];
          if (v80 <= *v9)
          {
            v82 = *v9;
          }

          else
          {
            v82 = v9[3];
          }

          if (v80 >= *v9)
          {
            v80 = *v9;
          }

          if (v82 <= v81)
          {
            v79 = v9[2];
          }

          if (v82 < v81)
          {
            v81 = v82;
          }

          if (v80 <= v78)
          {
            v83 = v78;
          }

          else
          {
            v83 = v80;
          }

          if (v80 >= v78)
          {
            v80 = v78;
          }

          if (v83 <= v81)
          {
            v78 = v81;
          }

          *v9 = v79;
          v9[1] = v78;
          if (v83 >= v81)
          {
            v84 = v81;
          }

          else
          {
            v84 = v83;
          }

          v9[2] = v84;
          v9[3] = v80;
          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v85 = *(a2 - 1);
        v86 = *v9;
        if (v85 > *v9)
        {
          *v9 = v85;
          *(a2 - 1) = v86;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,unsigned long *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = *(a2 - 1);
    if (v12 < 0x81)
    {
      v47 = *v9;
      if (*v9 <= v14)
      {
        v48 = *(a2 - 1);
      }

      else
      {
        v48 = *v9;
      }

      if (*v9 >= v14)
      {
        v47 = *(a2 - 1);
      }

      *(a2 - 1) = v47;
      *v9 = v48;
      v49 = *(a2 - 1);
      v50 = v9[v13];
      if (v49 <= v50)
      {
        v51 = v9[v13];
      }

      else
      {
        v51 = *(a2 - 1);
      }

      if (v49 >= v50)
      {
        v49 = v9[v13];
      }

      *(a2 - 1) = v49;
      v52 = *v9;
      v53 = v51 > *v9;
      if (v51 > *v9)
      {
        v52 = v9[v13];
      }

      v9[v13] = v52;
      v54 = *v9;
      if (!v53)
      {
        v54 = v51;
      }

      *v9 = v54;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v15 = &v9[v13];
      v16 = *v15;
      if (*v15 <= v14)
      {
        v17 = *(a2 - 1);
      }

      else
      {
        v17 = *v15;
      }

      if (*v15 >= v14)
      {
        v16 = *(a2 - 1);
      }

      *(a2 - 1) = v16;
      *v15 = v17;
      v18 = *(a2 - 1);
      if (v18 <= *v9)
      {
        v19 = *v9;
      }

      else
      {
        v19 = *(a2 - 1);
      }

      if (v18 >= *v9)
      {
        v18 = *v9;
      }

      *(a2 - 1) = v18;
      v20 = *v15;
      v21 = v19 > *v15;
      if (v19 > *v15)
      {
        v20 = *v9;
      }

      *v9 = v20;
      v23 = *(v15 - 1);
      v22 = *v15;
      if (!v21)
      {
        v22 = v19;
      }

      *v15 = v22;
      v24 = *(a2 - 2);
      if (v23 <= v24)
      {
        v25 = *(a2 - 2);
      }

      else
      {
        v25 = v23;
      }

      if (v23 < v24)
      {
        v24 = v23;
      }

      *(a2 - 2) = v24;
      *(v15 - 1) = v25;
      v26 = *(a2 - 2);
      v27 = v9[1];
      if (v26 <= v27)
      {
        v28 = v9[1];
      }

      else
      {
        v28 = *(a2 - 2);
      }

      if (v26 >= v27)
      {
        v26 = v9[1];
      }

      *(a2 - 2) = v26;
      v29 = *(v15 - 1);
      v30 = v28 > v29;
      if (v28 > v29)
      {
        v29 = v9[1];
      }

      v9[1] = v29;
      v31 = *(v15 - 1);
      if (!v30)
      {
        v31 = v28;
      }

      *(v15 - 1) = v31;
      v32 = v15[1];
      v33 = *(a2 - 3);
      if (v32 <= v33)
      {
        v34 = *(a2 - 3);
      }

      else
      {
        v34 = v15[1];
      }

      if (v32 >= v33)
      {
        v32 = *(a2 - 3);
      }

      *(a2 - 3) = v32;
      v15[1] = v34;
      v35 = *(a2 - 3);
      v36 = v9[2];
      if (v35 <= v36)
      {
        v37 = v9[2];
      }

      else
      {
        v37 = *(a2 - 3);
      }

      if (v35 >= v36)
      {
        v35 = v9[2];
      }

      *(a2 - 3) = v35;
      v38 = v15[1];
      v39 = v37 > v38;
      if (v37 > v38)
      {
        v38 = v9[2];
      }

      v9[2] = v38;
      v41 = *v15;
      v40 = v15[1];
      if (!v39)
      {
        v40 = v37;
      }

      v42 = *(v15 - 1);
      if (v41 <= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = *v15;
      }

      if (v41 < v40)
      {
        v40 = *v15;
      }

      if (v40 <= v42)
      {
        v44 = *(v15 - 1);
      }

      else
      {
        v44 = v40;
      }

      if (v40 >= v42)
      {
        v40 = *(v15 - 1);
      }

      v15[1] = v40;
      if (v42 <= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = v42;
      }

      if (v42 > v43)
      {
        v44 = v43;
      }

      *(v15 - 1) = v45;
      *v15 = v44;
      v46 = *v9;
      *v9 = v44;
      *v15 = v46;
      if (a5)
      {
        goto LABEL_89;
      }
    }

    if (*(v9 - 1) <= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<void> &>(v9, a2);
      v9 = result;
      goto LABEL_94;
    }

LABEL_89:
    v55 = std::__bitset_partition[abi:ne200100]<std::_ClassicAlgPolicy,unsigned long *,std::greater<void> &>(v9, a2);
    if ((v56 & 1) == 0)
    {
      goto LABEL_92;
    }

    v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v9, v55);
    v9 = v55 + 1;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *>(v55 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v55;
      if (v57)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v57)
    {
LABEL_92:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<void> &,unsigned long *,true>(v8, v55, a3, -v11, a5 & 1);
      v9 = v55 + 1;
LABEL_94:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v99 = v9 + 1;
  v101 = v9 == a2 || v99 == a2;
  if (a5)
  {
    if (!v101)
    {
      v102 = 0;
      v103 = v9;
      do
      {
        v105 = *v103;
        v104 = v103[1];
        v103 = v99;
        if (v104 > v105)
        {
          v106 = v102;
          while (1)
          {
            *(v9 + v106 + 8) = v105;
            if (!v106)
            {
              break;
            }

            v105 = *(v9 + v106 - 8);
            v106 -= 8;
            if (v104 <= v105)
            {
              v107 = (v9 + v106 + 8);
              goto LABEL_199;
            }
          }

          v107 = v9;
LABEL_199:
          *v107 = v104;
        }

        v99 = v103 + 1;
        v102 += 8;
      }

      while (v103 + 1 != a2);
    }
  }

  else if (!v101)
  {
    do
    {
      v109 = *v8;
      v108 = v8[1];
      v8 = v99;
      if (v108 > v109)
      {
        do
        {
          *v99 = v109;
          v109 = *(v99 - 2);
          --v99;
        }

        while (v108 > v109);
        *v99 = v108;
      }

      v99 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}