double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a2, a3, a5);
  result = *a4;
  v11 = a4[1];
  v12 = a5[1];
  v13 = v11 - v12;
  v14 = *a3;
  v15 = a3[1];
  v16 = v15 - v12;
  v17 = v13 / (*a4 - *a5);
  if (vabdd_f64(*a4, *a5) < 2.22044605e-16)
  {
    v17 = 1.79769313e308;
  }

  v18 = v16 / (*a3 - *a5);
  if (vabdd_f64(v14, *a5) >= 2.22044605e-16)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.79769313e308;
  }

  if (v17 < v19 || v17 == v19 && (result < v14 || result == v14 && v11 < v15))
  {
    *a3 = result;
    a3[1] = a4[1];
    *a4 = v14;
    a4[1] = v15;
    result = *a3;
    v20 = a3[1];
    v21 = a5[1];
    v22 = v20 - v21;
    v23 = *a2;
    v24 = a2[1];
    v25 = v24 - v21;
    v26 = v22 / (*a3 - *a5);
    if (vabdd_f64(*a3, *a5) < 2.22044605e-16)
    {
      v26 = 1.79769313e308;
    }

    v27 = v25 / (*a2 - *a5);
    if (vabdd_f64(v23, *a5) >= 2.22044605e-16)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1.79769313e308;
    }

    if (v26 < v28 || v26 == v28 && (result < v23 || result == v23 && v20 < v24))
    {
      *a2 = result;
      a2[1] = a3[1];
      *a3 = v23;
      a3[1] = v24;
      result = *a2;
      v29 = a2[1];
      v30 = a5[1];
      v31 = v29 - v30;
      v32 = *a1;
      v33 = a1[1];
      v34 = v33 - v30;
      v35 = v31 / (*a2 - *a5);
      if (vabdd_f64(*a2, *a5) < 2.22044605e-16)
      {
        v35 = 1.79769313e308;
      }

      v36 = v34 / (*a1 - *a5);
      if (vabdd_f64(v32, *a5) >= 2.22044605e-16)
      {
        v37 = v36;
      }

      else
      {
        v37 = 1.79769313e308;
      }

      if (v35 < v37 || v35 == v37 && (result < v32 || result == v32 && v29 < v33))
      {
        *a1 = result;
        result = a2[1];
        a1[1] = result;
        *a2 = v32;
        a2[1] = v33;
      }
    }
  }

  return result;
}

double std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a2, a3, a4, a6);
  result = *a5;
  v13 = a5[1];
  v14 = a6[1];
  v15 = v13 - v14;
  v16 = *a4;
  v17 = a4[1];
  v18 = v17 - v14;
  v19 = v15 / (*a5 - *a6);
  if (vabdd_f64(*a5, *a6) < 2.22044605e-16)
  {
    v19 = 1.79769313e308;
  }

  v20 = v18 / (*a4 - *a6);
  if (vabdd_f64(v16, *a6) >= 2.22044605e-16)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.79769313e308;
  }

  if (v19 < v21 || v19 == v21 && (result < v16 || result == v16 && v13 < v17))
  {
    *a4 = result;
    a4[1] = a5[1];
    *a5 = v16;
    a5[1] = v17;
    result = *a4;
    v22 = a4[1];
    v23 = a6[1];
    v24 = v22 - v23;
    v25 = *a3;
    v26 = a3[1];
    v27 = v26 - v23;
    v28 = v24 / (*a4 - *a6);
    if (vabdd_f64(*a4, *a6) < 2.22044605e-16)
    {
      v28 = 1.79769313e308;
    }

    v29 = v27 / (*a3 - *a6);
    if (vabdd_f64(v25, *a6) >= 2.22044605e-16)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.79769313e308;
    }

    if (v28 < v30 || v28 == v30 && (result < v25 || result == v25 && v22 < v26))
    {
      *a3 = result;
      a3[1] = a4[1];
      *a4 = v25;
      a4[1] = v26;
      result = *a3;
      v31 = a3[1];
      v32 = a6[1];
      v33 = v31 - v32;
      v34 = *a2;
      v35 = a2[1];
      v36 = v35 - v32;
      v37 = v33 / (*a3 - *a6);
      if (vabdd_f64(*a3, *a6) < 2.22044605e-16)
      {
        v37 = 1.79769313e308;
      }

      v38 = v36 / (*a2 - *a6);
      if (vabdd_f64(v34, *a6) >= 2.22044605e-16)
      {
        v39 = v38;
      }

      else
      {
        v39 = 1.79769313e308;
      }

      if (v37 < v39 || v37 == v39 && (result < v34 || result == v34 && v31 < v35))
      {
        *a2 = result;
        a2[1] = a3[1];
        *a3 = v34;
        a3[1] = v35;
        result = *a2;
        v40 = a2[1];
        v41 = a6[1];
        v42 = v40 - v41;
        v43 = *a1;
        v44 = a1[1];
        v45 = v44 - v41;
        v46 = v42 / (*a2 - *a6);
        if (vabdd_f64(*a2, *a6) < 2.22044605e-16)
        {
          v46 = 1.79769313e308;
        }

        v47 = v45 / (*a1 - *a6);
        if (vabdd_f64(v43, *a6) >= 2.22044605e-16)
        {
          v48 = v47;
        }

        else
        {
          v48 = 1.79769313e308;
        }

        if (v46 < v48 || v46 == v48 && (result < v43 || result == v43 && v40 < v44))
        {
          *a1 = result;
          result = a2[1];
          a1[1] = result;
          *a2 = v43;
          a2[1] = v44;
        }
      }
    }
  }

  return result;
}

double *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(double *result, double *a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 2;
    if (result + 2 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v3;
        v8 = v7[2];
        v9 = v7[3];
        v10 = a3[1];
        v11 = v9 - v10;
        v12 = *v7;
        v13 = v7[1];
        v14 = v13 - v10;
        v15 = v11 / (v8 - v5);
        if (vabdd_f64(v8, v5) < 2.22044605e-16)
        {
          v15 = 1.79769313e308;
        }

        v16 = v14 / (*v7 - v5);
        if (vabdd_f64(v12, v5) < 2.22044605e-16)
        {
          v16 = 1.79769313e308;
        }

        if (v15 < v16 || v15 == v16 && (v8 < v12 || v8 == v12 && v9 < v13))
        {
          v7[2] = v12;
          v3[1] = v7[1];
          v17 = result;
          if (v7 != result)
          {
            v18 = v4;
            while (1)
            {
              v19 = (result + v18);
              v20 = a3[1];
              v21 = v9 - v20;
              v22 = *(result + v18 - 16);
              v23 = *(result + v18 - 8);
              v24 = v23 - v20;
              v25 = v21 / (v8 - *a3);
              if (vabdd_f64(v8, *a3) < 2.22044605e-16)
              {
                v25 = 1.79769313e308;
              }

              v26 = v24 / (v22 - *a3);
              v27 = vabdd_f64(v22, *a3) >= 2.22044605e-16 ? v26 : 1.79769313e308;
              if (v25 >= v27)
              {
                if (v25 != v27)
                {
                  v17 = (result + v18);
                  goto LABEL_29;
                }

                if (v8 >= v22 && (v8 != v22 || v9 >= v23))
                {
                  break;
                }
              }

              v7 -= 2;
              *v19 = v22;
              v19[1] = v23;
              v18 -= 16;
              if (!v18)
              {
                v17 = result;
                goto LABEL_29;
              }
            }

            v17 = v7;
          }

LABEL_29:
          *v17 = v8;
          v17[1] = v9;
          v5 = *a3;
        }

        v3 = v6 + 2;
        v4 += 16;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(uint64_t result, uint64_t a2, double *a3)
{
  if (result != a2)
  {
    v3 = result + 16;
    if (result + 16 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result;
        result = v3;
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        v8 = a3[1];
        v9 = v7 - v8;
        v10 = *v5;
        v11 = *(v5 + 8);
        v12 = v11 - v8;
        v13 = v9 / (v6 - v4);
        if (vabdd_f64(v6, v4) < 2.22044605e-16)
        {
          v13 = 1.79769313e308;
        }

        v14 = v12 / (*v5 - v4);
        if (vabdd_f64(v10, v4) < 2.22044605e-16)
        {
          v14 = 1.79769313e308;
        }

        if (v13 < v14 || v13 == v14 && (v6 < v10 || v6 == v10 && v7 < v11))
        {
          do
          {
            v15 = v5;
            v16 = v10;
            v17 = *(v5 - 16);
            v5 -= 16;
            v10 = v17;
            v18 = *(v5 + 24);
            *(v5 + 32) = v16;
            *(v5 + 40) = v18;
            v19 = a3[1];
            v20 = v7 - v19;
            v21 = v17 - *a3;
            v22 = *(v5 + 8);
            v23 = v22 - v19;
            v24 = v20 / (v6 - *a3);
            if (vabdd_f64(v6, *a3) < 2.22044605e-16)
            {
              v24 = 1.79769313e308;
            }

            v25 = v23 / v21;
            if (vabdd_f64(v10, *a3) >= 2.22044605e-16)
            {
              v26 = v25;
            }

            else
            {
              v26 = 1.79769313e308;
            }
          }

          while (v24 < v26 || v24 == v26 && (v6 < v10 || v6 == v10 && v7 < v22));
          *v15 = v6;
          v15[1] = v7;
          v4 = *a3;
        }

        v3 = result + 16;
      }

      while (result + 16 != a2);
    }
  }

  return result;
}

double *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,gm::Matrix<double,2,1>*>(double *result, double *a2, double *a3, double *a4)
{
  if (result != a2)
  {
    v6 = a2;
    v7 = result;
    v8 = (a2 - result) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &result[2 * v9];
      do
      {
        result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v7, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    if (v6 != a3)
    {
      v12 = *a4;
      v13 = *v7;
      v14 = v6;
      do
      {
        v15 = *v14;
        v16 = v14[1];
        v17 = a4[1];
        v18 = v16 - v17;
        v19 = v7[1];
        v20 = v19 - v17;
        v21 = v18 / (*v14 - v12);
        if (vabdd_f64(*v14, v12) < 2.22044605e-16)
        {
          v21 = 1.79769313e308;
        }

        v22 = v20 / (v13 - v12);
        if (vabdd_f64(v13, v12) < 2.22044605e-16)
        {
          v22 = 1.79769313e308;
        }

        if (v21 < v22 || v21 == v22 && (v15 < v13 || v15 == v13 && v16 < v19))
        {
          *v14 = v13;
          v14[1] = v7[1];
          *v7 = v15;
          v7[1] = v16;
          result = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(v7, a4, v8, v7);
          v12 = *a4;
          v13 = *v7;
        }

        v14 += 2;
      }

      while (v14 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v23 = 0;
        v25 = *v7;
        v24 = *(v7 + 1);
        v26 = v7;
        do
        {
          v27 = v26;
          v28 = &v26[2 * v23];
          v26 = v28 + 2;
          v29 = 2 * v23;
          v23 = (2 * v23) | 1;
          v30 = v29 + 2;
          if (v30 < v8)
          {
            v32 = v28[4];
            v31 = v28 + 4;
            v33 = v32;
            v35 = *(v31 - 2);
            v34 = *(v31 - 1);
            v36 = a4[1];
            v37 = v34 - v36;
            v38 = v32 - *a4;
            v39 = v31[1];
            v40 = v39 - v36;
            v41 = v37 / (v35 - *a4);
            if (vabdd_f64(v35, *a4) < 2.22044605e-16)
            {
              v41 = 1.79769313e308;
            }

            v42 = v40 / v38;
            if (vabdd_f64(v33, *a4) >= 2.22044605e-16)
            {
              v43 = v42;
            }

            else
            {
              v43 = 1.79769313e308;
            }

            if (v41 < v43 || v41 == v43 && (v35 < v33 || v35 == v33 && v34 < v39))
            {
              v26 = v31;
              v23 = v30;
            }
          }

          *v27 = *v26;
          v27[1] = v26[1];
        }

        while (v23 <= (v8 - 2) / 2);
        if (v26 == v6 - 2)
        {
          *v26 = v25;
          *(v26 + 1) = v24;
        }

        else
        {
          *v26 = *(v6 - 2);
          v26[1] = *(v6 - 1);
          *(v6 - 2) = v25;
          *(v6 - 1) = v24;
          v44 = (v26 - v7 + 16) >> 4;
          v45 = v44 - 2;
          if (v44 >= 2)
          {
            v46 = v45 >> 1;
            v47 = &v7[2 * (v45 >> 1)];
            v48 = *v47;
            v49 = v47[1];
            v50 = a4[1];
            v51 = v49 - v50;
            v52 = *v26;
            v53 = v26[1];
            v54 = v53 - v50;
            v55 = v51 / (*v47 - *a4);
            if (vabdd_f64(*v47, *a4) < 2.22044605e-16)
            {
              v55 = 1.79769313e308;
            }

            v56 = v54 / (*v26 - *a4);
            v57 = vabdd_f64(v52, *a4) >= 2.22044605e-16 ? v56 : 1.79769313e308;
            if (v55 < v57 || v55 == v57 && (v48 < v52 || (v48 == v52 ? (v58 = v49 < v53) : (v58 = 0), v58)))
            {
              *v26 = v48;
              v26[1] = v47[1];
              if (v45 >= 2)
              {
                while (1)
                {
                  v60 = v46 - 1;
                  v46 = (v46 - 1) >> 1;
                  v59 = &v7[2 * v46];
                  v61 = *v59;
                  v62 = a4[1];
                  v63 = v59[1];
                  v64 = v63 - v62;
                  v65 = v53 - v62;
                  v66 = v64 / (*v59 - *a4);
                  if (vabdd_f64(*v59, *a4) < 2.22044605e-16)
                  {
                    v66 = 1.79769313e308;
                  }

                  v67 = v65 / (v52 - *a4);
                  v68 = vabdd_f64(v52, *a4) >= 2.22044605e-16 ? v67 : 1.79769313e308;
                  if (v66 >= v68 && (v66 != v68 || *&v61 >= v52 && (*&v61 != v52 || v63 >= v53)))
                  {
                    break;
                  }

                  *v47 = v61;
                  v47 = &v7[2 * v46];
                  if (v60 <= 1)
                  {
                    goto LABEL_61;
                  }
                }
              }

              v59 = v47;
LABEL_61:
              *v59 = v52;
              v59[1] = v53;
            }
          }
        }

        v6 -= 2;
      }

      while (v8-- > 2);
    }
  }

  return result;
}

double *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  v8 = *(a2 - 2);
  v7 = *(a2 - 1);
  v9 = (v4 - v6) / (*a1 - *a3);
  if (vabdd_f64(*a1, *a3) < 2.22044605e-16)
  {
    v9 = 1.79769313e308;
  }

  if (vabdd_f64(v8, v5) >= 2.22044605e-16)
  {
    v10 = (v7 - v6) / (v8 - *a3);
  }

  else
  {
    v10 = 1.79769313e308;
  }

  if (v9 < v10 || v9 == v10 && (v3 < v8 || v3 == v8 && v4 < v7))
  {
    v12 = a1[2];
    v13 = a1[3];
    i = a1 + 2;
    v14 = (v13 - v6) / (v12 - v5);
    if (vabdd_f64(v12, v5) < 2.22044605e-16)
    {
      v14 = 1.79769313e308;
    }

    if (v9 >= v14)
    {
      v15 = a1 + 5;
      do
      {
        if (v9 == v14)
        {
          if (v3 < v12)
          {
            goto LABEL_34;
          }

          if (v3 == v12 && v4 < v13)
          {
            break;
          }
        }

        i += 2;
        v12 = *(v15 - 1);
        v13 = *v15;
        v14 = (*v15 - v6) / (v12 - v5);
        if (vabdd_f64(v12, v5) < 2.22044605e-16)
        {
          v14 = 1.79769313e308;
        }

        v15 += 2;
      }

      while (v9 >= v14);
      i = v15 - 3;
    }
  }

  else
  {
    for (i = a1 + 2; i < a2; i += 2)
    {
      v18 = *i;
      v17 = i[1];
      v19 = (v17 - v6) / (*i - v5);
      if (vabdd_f64(*i, v5) < 2.22044605e-16)
      {
        v19 = 1.79769313e308;
      }

      if (v9 < v19 || v9 == v19 && (v3 < v18 || v3 == v18 && v4 < v17))
      {
        break;
      }
    }
  }

LABEL_34:
  if (i < a2)
  {
    for (a2 -= 2; ; a2 -= 2)
    {
      v20 = (v7 - v6) / (v8 - v5);
      if (vabdd_f64(v8, v5) < 2.22044605e-16)
      {
        v20 = 1.79769313e308;
      }

      if (v9 >= v20 && (v9 != v20 || v3 >= v8 && (v3 != v8 || v4 >= v7)))
      {
        break;
      }

      v8 = *(a2 - 2);
      v7 = *(a2 - 1);
    }
  }

  if (i < a2)
  {
    v21 = *i;
    v22 = *a2;
    do
    {
      v23 = *(i + 1);
      *i = v22;
      i[1] = a2[1];
      *a2 = v21;
      *(a2 + 1) = v23;
      v24 = *a3;
      v25 = a3[1];
      if (vabdd_f64(v3, *a3) >= 2.22044605e-16)
      {
        v26 = (v4 - v25) / (v3 - *a3);
      }

      else
      {
        v26 = 1.79769313e308;
      }

      v21 = i[2];
      v28 = i[3];
      v27 = i + 2;
      v29 = (v28 - v25) / (v21 - v24);
      if (vabdd_f64(v21, v24) < 2.22044605e-16)
      {
        v29 = 1.79769313e308;
      }

      if (v26 >= v29)
      {
        v30 = i + 5;
        do
        {
          if (v26 == v29)
          {
            if (v3 < v21)
            {
              goto LABEL_52;
            }

            if (v3 == v21 && v4 < v28)
            {
              break;
            }
          }

          v27 += 2;
          v21 = *(v30 - 1);
          v28 = *v30;
          v29 = (*v30 - v25) / (v21 - v24);
          if (vabdd_f64(v21, v24) < 2.22044605e-16)
          {
            v29 = 1.79769313e308;
          }

          v30 += 2;
        }

        while (v26 >= v29);
        i = v30 - 3;
      }

      else
      {
LABEL_52:
        i = v27;
      }

      do
      {
        v22 = *(a2 - 2);
        v32 = *(a2 - 1);
        a2 -= 2;
        v33 = (v32 - v25) / (v22 - v24);
        if (vabdd_f64(v22, v24) < 2.22044605e-16)
        {
          v33 = 1.79769313e308;
        }
      }

      while (v26 < v33 || v26 == v33 && (v3 < v22 || v3 == v22 && v4 < v32));
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

double *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,gm::Matrix<double,2,1> *,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &>(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v6 = a3[1];
  if (vabdd_f64(*a1, *a3) >= 2.22044605e-16)
  {
    v7 = (v4 - v6) / (*a1 - *a3);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  for (i = a1 + 2; ; i += 2)
  {
    v9 = *i;
    v10 = i[1];
    v11 = (v10 - v6) / (*i - v5);
    if (vabdd_f64(*i, v5) < 2.22044605e-16)
    {
      v11 = 1.79769313e308;
    }

    if (v11 >= v7 && (v11 != v7 || v9 >= v3 && (v9 != v3 || v10 >= v4)))
    {
      break;
    }
  }

  if (i - 2 == a1)
  {
    if (i < a2)
    {
      v16 = *(a2 - 2);
      v17 = *(a2 - 1);
      a2 -= 2;
      v18 = (v17 - v6) / (v16 - v5);
      if (vabdd_f64(v16, v5) < 2.22044605e-16)
      {
        v18 = 1.79769313e308;
      }

      while (v18 >= v7)
      {
        if (v18 == v7 && (v16 < v3 || v16 == v3 && v17 < v4) || i >= a2)
        {
          break;
        }

        v16 = *(a2 - 2);
        v17 = *(a2 - 1);
        a2 -= 2;
        v18 = (v17 - v6) / (v16 - v5);
        if (vabdd_f64(v16, v5) < 2.22044605e-16)
        {
          v18 = 1.79769313e308;
        }
      }
    }
  }

  else
  {
    v12 = *(a2 - 2);
    v13 = *(a2 - 1);
    a2 -= 2;
    v14 = (v13 - v6) / (v12 - v5);
    if (vabdd_f64(v12, v5) < 2.22044605e-16)
    {
      v14 = 1.79769313e308;
    }

    while (v14 >= v7)
    {
      if (v14 == v7)
      {
        if (v12 < v3)
        {
          break;
        }

        if (v12 == v3 && v13 < v4)
        {
          break;
        }
      }

      v12 = *(a2 - 2);
      v13 = *(a2 - 1);
      a2 -= 2;
      v14 = (v13 - v6) / (v12 - v5);
      if (vabdd_f64(v12, v5) < 2.22044605e-16)
      {
        v14 = 1.79769313e308;
      }
    }
  }

  v19 = i;
  if (i < a2)
  {
    v20 = *a2;
    v19 = i;
    v21 = a2;
    do
    {
      v22 = *(v19 + 1);
      *v19 = v20;
      v19[1] = v21[1];
      *v21 = v9;
      *(v21 + 1) = v22;
      v23 = *a3;
      v24 = a3[1];
      if (vabdd_f64(v3, *a3) >= 2.22044605e-16)
      {
        v25 = (v4 - v24) / (v3 - *a3);
      }

      else
      {
        v25 = 1.79769313e308;
      }

      do
      {
        v9 = v19[2];
        v26 = v19[3];
        v19 += 2;
        v27 = (v26 - v24) / (v9 - v23);
        if (vabdd_f64(v9, v23) < 2.22044605e-16)
        {
          v27 = 1.79769313e308;
        }
      }

      while (v27 < v25 || v27 == v25 && (v9 < v3 || v9 == v3 && v26 < v4));
      while (1)
      {
        v20 = *(v21 - 2);
        v28 = *(v21 - 1);
        v21 -= 2;
        v29 = (v28 - v24) / (v20 - v23);
        if (vabdd_f64(v20, v23) < 2.22044605e-16)
        {
          v29 = 1.79769313e308;
        }

        if (v29 < v25)
        {
          break;
        }

        if (v29 == v25)
        {
          if (v20 < v3)
          {
            break;
          }

          if (v20 == v3 && v28 < v4)
          {
            break;
          }
        }
      }
    }

    while (v19 < v21);
  }

  if (v19 - 2 != a1)
  {
    *a1 = *(v19 - 2);
    a1[1] = *(v19 - 1);
  }

  *(v19 - 2) = v3;
  *(v19 - 1) = v4;
  return v19 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(double *a1, double *a2, double *a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a2 - 2, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        return 1;
    }

    goto LABEL_20;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 != 2)
  {
LABEL_20:
    v18 = a1 + 4;
    std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*,0>(a1, a1 + 2, a1 + 4, a3);
    v19 = a1 + 6;
    if (a1 + 6 != a2)
    {
      v20 = 0;
      v21 = 0;
      v22 = *a3;
      while (1)
      {
        v23 = *v19;
        v24 = v19[1];
        v25 = a3[1];
        v26 = v24 - v25;
        v27 = *v18;
        v28 = v18[1];
        v29 = v28 - v25;
        v30 = v26 / (*v19 - v22);
        if (vabdd_f64(*v19, v22) < 2.22044605e-16)
        {
          v30 = 1.79769313e308;
        }

        v31 = v29 / (*v18 - v22);
        if (vabdd_f64(v27, v22) < 2.22044605e-16)
        {
          v31 = 1.79769313e308;
        }

        if (v30 < v31 || v30 == v31 && (v23 < v27 || v23 == v27 && v24 < v28))
        {
          *v19 = v27;
          v19[1] = v18[1];
          v32 = v20;
          while (1)
          {
            v33 = (a1 + v32);
            v34 = a3[1];
            v35 = v24 - v34;
            v36 = *(a1 + v32 + 16);
            v37 = *(a1 + v32 + 24);
            v38 = v37 - v34;
            v39 = v35 / (v23 - *a3);
            if (vabdd_f64(v23, *a3) < 2.22044605e-16)
            {
              v39 = 1.79769313e308;
            }

            v40 = v38 / (v36 - *a3);
            v41 = vabdd_f64(v36, *a3) >= 2.22044605e-16 ? v40 : 1.79769313e308;
            if (v39 >= v41)
            {
              if (v39 != v41)
              {
                goto LABEL_44;
              }

              if (v23 >= v36 && (v23 != v36 || v24 >= v37))
              {
                break;
              }
            }

            v18 -= 2;
            v33[4] = v36;
            v33[5] = v37;
            v32 -= 16;
            if (v32 == -32)
            {
              v18 = a1;
              goto LABEL_44;
            }
          }

          v18 = (a1 + v32 + 32);
LABEL_44:
          *v18 = v23;
          v18[1] = v24;
          if (++v21 == 8)
          {
            return v19 + 2 == a2;
          }

          v22 = *a3;
        }

        v18 = v19;
        v20 += 16;
        v19 += 2;
        if (v19 == a2)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  v7 = *(a2 - 2);
  v8 = *(a2 - 1);
  v9 = a3[1];
  v10 = v8 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 - v9;
  v14 = v10 / (v7 - *a3);
  if (vabdd_f64(v7, *a3) < 2.22044605e-16)
  {
    v14 = 1.79769313e308;
  }

  v15 = v13 / (*a1 - *a3);
  if (vabdd_f64(v11, *a3) >= 2.22044605e-16)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.79769313e308;
  }

  if (v14 < v16)
  {
    goto LABEL_14;
  }

  if (v14 != v16)
  {
    return 1;
  }

  if (v7 < v11 || (result = 1, v7 == v11) && v8 < v12)
  {
LABEL_14:
    *a1 = v7;
    a1[1] = *(a2 - 1);
    *(a2 - 2) = v11;
    *(a2 - 1) = v12;
    return 1;
  }

  return result;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,geo::ConvexHull2<double>::getConvexHullPoints(std::vector<gm::Matrix<double,2,1>> const&,std::vector<gm::Matrix<double,2,1>>&)::{lambda(gm::Matrix<double,2,1> const&,gm::Matrix<double,2,1> const&)#1} &,gm::Matrix<double,2,1>*>(uint64_t result, double *a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *a2;
      if (v9 >= a3)
      {
        v14 = a2[1];
      }

      else
      {
        v11 = v8[2];
        v13 = *v8;
        v12 = v8[1];
        v14 = a2[1];
        v15 = v8[3];
        v16 = (v12 - v14) / (*v8 - v10);
        if (vabdd_f64(*v8, v10) < 2.22044605e-16)
        {
          v16 = 1.79769313e308;
        }

        if (vabdd_f64(v11, v10) >= 2.22044605e-16)
        {
          v17 = (v15 - v14) / (v11 - v10);
        }

        else
        {
          v17 = 1.79769313e308;
        }

        if (v16 < v17 || v16 == v17 && (v13 < v11 || v13 == v11 && v12 < v15))
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v18 = *v8;
      v19 = v8[1];
      v20 = v19 - v14;
      v21 = *a4;
      v22 = a4[1];
      v23 = v22 - v14;
      v24 = v20 / (*v8 - v10);
      if (vabdd_f64(*v8, v10) < 2.22044605e-16)
      {
        v24 = 1.79769313e308;
      }

      v25 = v23 / (*a4 - v10);
      v26 = vabdd_f64(v21, v10) >= 2.22044605e-16 ? v25 : 1.79769313e308;
      if (v24 >= v26 && (v24 != v26 || v18 >= v21 && (v18 != v21 || v19 >= v22)))
      {
        *a4 = v18;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v27 = v8;
            v28 = 2 * v7;
            v7 = (2 * v7) | 1;
            v8 = (result + 16 * v7);
            v29 = v28 + 2;
            v30 = *a2;
            v31 = a2[1];
            if (v29 < a3)
            {
              v32 = v8[2];
              v34 = *v8;
              v33 = v8[1];
              v35 = v8[3];
              v36 = (v33 - v31) / (*v8 - v30);
              if (vabdd_f64(*v8, v30) < 2.22044605e-16)
              {
                v36 = 1.79769313e308;
              }

              if (vabdd_f64(v32, v30) >= 2.22044605e-16)
              {
                v37 = (v35 - v31) / (v32 - v30);
              }

              else
              {
                v37 = 1.79769313e308;
              }

              if (v36 < v37 || v36 == v37 && (v34 < v32 || v34 == v32 && v33 < v35))
              {
                v8 += 2;
                v7 = v29;
              }
            }

            v38 = *v8;
            v39 = v8[1];
            v40 = v39 - v31;
            v41 = v22 - v31;
            v42 = v40 / (*v8 - v30);
            if (vabdd_f64(*v8, v30) < 2.22044605e-16)
            {
              v42 = 1.79769313e308;
            }

            v43 = v41 / (v21 - v30);
            v44 = vabdd_f64(v21, v30) >= 2.22044605e-16 ? v43 : 1.79769313e308;
            if (v42 < v44 || v42 == v44 && (v38 < v21 || v38 == v21 && v39 < v22))
            {
              break;
            }

            *v27 = v38;
            v27[1] = v8[1];
            if (v5 < v7)
            {
              goto LABEL_52;
            }
          }

          v8 = v27;
        }

LABEL_52:
        *v8 = v21;
        v8[1] = v22;
      }
    }
  }

  return result;
}

uint64_t md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x1AF456233693CD46 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LayoutContext::get<md::ElevationContext>(*(a2 + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::CameraContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::CameraContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36C30;
  v2 = a1[4];
  if (v2)
  {
    v3 = v2[699];
    v2[699] = 0;
    if (v3)
    {
      std::default_delete<md::SingleCameraContext>::operator()[abi:nn200100](v3);
    }

    v4 = v2[369];
    if (v4)
    {
      v2[370] = v4;
      operator delete(v4);
    }

    MEMORY[0x1B8C62190](v2, 0x1060C4002C2C252);
  }

  return a1;
}

void md::CameraLogic::~CameraLogic(md::CameraLogic *this)
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

BOOL md::SingleCameraContext::isRectVisible(gdc::Camera *a1, __n128 a2, __n128 a3)
{
  v59 = a2;
  v61 = a3;
  v60 = 0;
  v62 = 0;
  if (*(a1 + 3784))
  {
    gdc::CameraView::mercatorCameraView(v23, a1);
  }

  else
  {
    v4 = *(a1 + 24);
    v24 = *(a1 + 8);
    v25 = v4;
    v5 = *(a1 + 56);
    v26 = *(a1 + 40);
    v27 = v5;
    v28 = *(a1 + 9);
    v6 = *(a1 + 6);
    v29 = *(a1 + 5);
    v30 = v6;
    v31 = *(a1 + 7);
    v7 = *(a1 + 344);
    v45 = *(a1 + 328);
    v46 = v7;
    v8 = *(a1 + 312);
    v43 = *(a1 + 296);
    v44 = v8;
    v9 = *(a1 + 280);
    v10 = *(a1 + 16);
    v41 = *(a1 + 264);
    v42 = v9;
    v11 = *(a1 + 45);
    v32 = v10;
    v47 = v11;
    v40 = *(a1 + 248);
    v39 = *(a1 + 232);
    v38 = *(a1 + 216);
    v37 = *(a1 + 200);
    v36 = *(a1 + 184);
    v35 = *(a1 + 168);
    v34 = *(a1 + 152);
    v33 = *(a1 + 136);
    v12 = *(a1 + 24);
    v48 = *(a1 + 23);
    v49 = v12;
    v13 = *(a1 + 26);
    v50 = *(a1 + 25);
    v51 = v13;
    v52 = *(a1 + 27);
    v53 = *(a1 + 112);
    v54 = *(a1 + 57);
    v14 = *(a1 + 30);
    v55 = *(a1 + 29);
    v56 = v14;
    geo::View<double>::View(&v57, a1 + 31, a1 + 69, (a1 + 680), a1 + 476, *(a1 + 239), *(a1 + 117));
    memcpy(v58, a1 + 984, sizeof(v58));
  }

  for (i = 0; i != 192; i += 32)
  {
    v16 = 0;
    v17 = *&v58[i + 16];
    v63 = *&v58[i];
    v64 = v17;
    do
    {
      v18 = &v59 + v16;
      if (*(&v63 + v16) >= 0.0)
      {
        v18 = &v61 + v16;
      }

      *&v65[v16] = *v18;
      v16 += 8;
    }

    while (v16 != 24);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + *&v23[i + 984 + v19] * *&v65[v19];
      v19 += 8;
    }

    while (v19 != 24);
    v21 = *&v58[i + 24] + v20;
    if (v21 < 0.0)
    {
      break;
    }
  }

  return v21 >= 0.0;
}

void md::Logic<md::CameraLogic,md::CameraContext,md::LogicDependencies<gdc::TypeList<md::ElevationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void md::ARCameraRouteLocationProviderLogic::runBeforeLayout(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 128))
  {
    v4 = [*(*a3 + 40) routeInfo];
    v5 = [v4 route];

    md::ARCameraRouteLocationProvider::setRoute(*(a1 + 128), v5);
  }
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6 && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v8 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
    v9 = v7;
    return (*(*v6 + 160))(v6, a2, &v8, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 152))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayout(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 144))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runAfterLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 136))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t md::Logic<md::ARCameraRouteLocationProviderLogic,md::ARCameraRouteLocationProviderContext,md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>>::_runBeforeLayoutAtVariableRate(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a3 + 8) == 0x2A64A6E0A1B666D6)
  {
    v3 = *(a3 + 32);
    if (v3)
    {
      v5 = result;
      v7 = md::LogicDependencies<gdc::TypeList<md::NavigationContext>,gdc::TypeList<>>::resolveDependencies(**(a2 + 8), *(*(a2 + 8) + 8));
      v8 = v6;
      return (*(*v5 + 128))(v5, a2, &v7, v3);
    }
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::ARCameraRouteLocationProviderContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::ARCameraRouteLocationProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36DC8;
  v1 = a1[4];
  if (v1)
  {
    MEMORY[0x1B8C62190](v1, 0xC400A2AC0F1);
  }

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::ARCameraRouteLocationProviderContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A36DC8;
  v2 = a1[4];
  if (v2)
  {
    MEMORY[0x1B8C62190](v2, 0xC400A2AC0F1);
  }

  return a1;
}

void md::ARCameraRouteLocationProviderLogic::didBecomeInactive(md::ARCameraRouteLocationProviderLogic *this)
{
  v1 = *(this + 16);
  if (v1)
  {
    md::ARCameraRouteLocationProvider::setRoute(v1, 0);
  }
}

void md::ARCameraRouteLocationProviderLogic::~ARCameraRouteLocationProviderLogic(md::ARCameraRouteLocationProviderLogic *this)
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

void ___ZN2md16RouteRenderLayer21updateRouteLineMeshesERKNS_13LayoutContextERKNSt3__16vectorINS4_10shared_ptrINS_16RouteLineOverlayEEENS4_9allocatorIS8_EEEEb_block_invoke(_BYTE *result, void **a2)
{
  v2 = *a2;
  v3 = *a2 + 1;
  if (!*a2)
  {
    v3 = 0;
  }

  if ((*(v3 + 48) | 2) == 2)
  {
    v6 = **(result + 4);
    if (v2)
    {
      ++*v2;
    }

    v7 = *(v6 + 504);
    if (v7)
    {
      if ((*v7)-- == 1)
      {
        md::RouteLineSection::~RouteLineSection((v7 + 1));
        v9 = *(v6 + 504);
        v11 = mdm::zone_mallocator::instance(v10);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<geo::fast_shared_ptr<md::RouteLineSection,mdm::allocator>::_fast_shared_ptr_control>(v11, v9);
        *(v6 + 504) = 0;
        v2 = *a2;
      }
    }

    *(v6 + 504) = v2;
    v12 = **(result + 4);
    v13 = *(v12 + 504);
    if (v13)
    {
      v14 = v13 + 8;
    }

    else
    {
      v14 = 0;
    }

    md::RouteLineSection::updateStyleQueryIfNecessary(v14, *(result + 5), *(result + 6), *(v12 + 620), *(v12 + 621), *(v12 + 622), (v12 + 536), (v12 + 568), *(result + 14), result[60], -1, -1);
  }
}

__n128 std::__function::__func<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0,std::allocator<md::RouteRenderLayer::runLayoutLogic(md::LayoutContext const&)::$_0>,void ()(md::StyleManagerEvent)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A36DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ElevationCompressedVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ElevationCompressedVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ElevationCompressedMesh::~ElevationCompressedMesh(ggl::DaVinci::ElevationCompressedMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::ElevationCompressedMesh::~ElevationCompressedMesh(ggl::DaVinci::ElevationCompressedMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

uint64_t **ggl::DaVinci::ElevationCompressedMesh::ElevationCompressedMesh(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v15 = *MEMORY[0x1E69E9840];
  {
    {
      ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::attributesReflection(void)::r = &ggl::DaVinci::elevationCompressedVboReflection;
    }

    ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::typedReflection(void)::r = &ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::attributesReflection(void)::r;
    unk_1EB841D28 = 1;
  }

  a1[1] = a2;
  ggl::RenderDataHolder::RenderDataHolder((a1 + 2));
  a1[7] = &ggl::MeshTyped<ggl::DaVinci::ElevationCompressedVbo>::typedReflection(void)::r;
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[15] = 0;
  a1[17] = 0;
  a1[14] = (a1 + 15);
  *a1 = &unk_1F2A36EB8;
  a1[2] = &unk_1F2A36ED8;
  v8 = a3[1];
  v13 = *a3;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::__assign_with_size[abi:nn200100]<std::shared_ptr<ggl::VertexData> const*,std::shared_ptr<ggl::VertexData> const*>(a1 + 8, &v13, &v15, 1uLL);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[13];
  a1[12] = v10;
  a1[13] = v9;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  *a1 = &unk_1F2A36E38;
  a1[2] = &unk_1F2A36E58;
  return a1;
}

void non-virtual thunk toggl::VertexDataTyped<ggl::DaVinci::ElevationVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::DaVinci::ElevationVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::DaVinci::ElevationMesh::~ElevationMesh(ggl::DaVinci::ElevationMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::DaVinci::ElevationMesh::~ElevationMesh(ggl::DaVinci::ElevationMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::DaVinci::ElevationVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::DaVinci::ElevationVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::DiffuseBuildingPointyRoof::BuildingPipelineSetup::~BuildingPipelineSetup(std::__shared_weak_count *this)
{
  ggl::PipelineSetup::~PipelineSetup(this);

  JUMPOUT(0x1B8C62190);
}

void md::PassList::didPrepareForLayout(md::PassList *this, const md::LayoutContext *a2, id *a3)
{
  v6 = *(*(this + 3) + 128);
  md::LayoutContext::frameState(a2);
  *(*(this + 3) + 128) = (*(v7 + 88) * 1000.0);
  v8 = [a3[13] finalRenderTarget];
  v10 = v8;
  if (v8)
  {
    v11 = *(this + 3);
    v12 = ggl::RenderTarget::width(v8);
    v13 = ggl::RenderTarget::height(v10);
    *(v11 + 40) = v12;
    *(v11 + 44) = v13;
    v14 = *(v10 + 72);
    *(v11 + 48) = *(v10 + 56);
    *(v11 + 64) = v14;
  }

  v15 = *(this + 3) + 136;
  memset(v18, 0, sizeof(v18));
  v20 = 0u;
  v21 = 0u;
  v19 = 1065353216;
  v22 = 1065353216;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v27 = v15;
  v17 = 0;
  memset(v16, 0, 73);
  md::FrameGraphUtils::prepareGraphBuilderForRenderTarget(v16, v18, v10, "renderTarget_colorBuffer", 0xC1B9767C00000018, "renderTarget_depthStencilBuffer", 0xE505BC120000001FLL, v9, "renderTarget_msaaResolveBuffer", 0xF53364270000001ELL);
  (*(*this + 24))(this, a2, a3, v16, v18);
  md::PassList::updateGraphState(this, v18, v6);
  md::FrameGraphBuilder::~FrameGraphBuilder(v18);
}

void sub_1B3142EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  md::FrameGraphBuilder::~FrameGraphBuilder(va);
  _Unwind_Resume(a1);
}

void std::vector<ggl::CopyItem,geo::allocator_adapter<ggl::CopyItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v3 = ggl::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::CopyItem>(v3, v1);
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
  }
}

void std::vector<ggl::Texture2DLoadItem,geo::allocator_adapter<ggl::Texture2DLoadItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(result + 1);
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 80;
        result = std::__function::__value_func<void ()(ggl::Texture2DLoadItem const&)>::~__value_func[abi:nn200100](v3 - 32);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *v2;
    }

    *(v2 + 1) = v1;
    v6 = ggl::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Texture2DLoadItem>(v6, v4);
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }
}

void std::vector<ggl::BufferLoadItem,geo::allocator_adapter<ggl::BufferLoadItem,ggl::zone_mallocator>>::__vdeallocate(ggl::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(result + 1);
    v4 = *result;
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 64;
        result = std::__function::__value_func<void ()(ggl::BufferLoadItem const&)>::~__value_func[abi:nn200100](v3 - 32);
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *v2;
    }

    *(v2 + 1) = v1;
    v6 = ggl::zone_mallocator::instance(result);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::BufferLoadItem>(v6, v4);
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }
}

double std::deque<std::shared_ptr<ggl::QueryItem>>::__move_assign(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 == v5)
  {
    v6 = (a1 + 40);
    v14 = *(a1 + 8);
  }

  else
  {
    v6 = (a1 + 40);
    v7 = *(a1 + 32);
    v8 = &v5[v7 >> 8];
    v9 = *v8;
    v10 = *v8 + 16 * v7;
    v11 = *(v5 + (((*(a1 + 40) + v7) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v7);
    if (v10 != v11)
    {
      do
      {
        v12 = *(v10 + 8);
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          v9 = *v8;
        }

        v10 += 16;
        if (v10 - v9 == 4096)
        {
          v13 = v8[1];
          ++v8;
          v9 = v13;
          v10 = v13;
        }
      }

      while (v10 != v11);
      v5 = *(a1 + 8);
      v4 = *(a1 + 16);
    }

    v14 = v4;
  }

  *v6 = 0;
  v15 = (v14 - v5) >> 3;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = *(a1 + 16);
      v5 = (*(a1 + 8) + 8);
      *(a1 + 8) = v5;
      v15 = (v4 - v5) >> 3;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 128;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_18;
    }

    v16 = 256;
  }

  *(a1 + 32) = v16;
LABEL_18:
  if (*(a1 + 40))
  {
    std::deque<std::shared_ptr<ggl::QueryItem>>::__maybe_remove_front_spare[abi:nn200100](a1, 0);
    v18 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v17 == v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = 32 * (v17 - v18) - 1;
    }

    if ((v19 - (*(a1 + 40) + *(a1 + 32))) >= 0x100)
    {
      operator delete(*(v17 - 8));
      *(a1 + 16) -= 8;
    }
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = *(a1 + 8);
      v4 = *(a1 + 16) - 8;
      *(a1 + 16) = v4;
    }

    *(a1 + 32) = 0;
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  v21 = *(a1 + 8);
  v20 = *(a1 + 16);
  if (v20 != v21)
  {
    *(a1 + 16) = v20 + ((v21 - v20 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  std::__split_buffer<ggl::PendingQuery *>::shrink_to_fit(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void std::deque<std::shared_ptr<ggl::QueryItem>>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void std::deque<ggl::PendingQuery>::__maybe_remove_front_spare[abi:nn200100](uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x80)
  {
    a2 = 1;
  }

  if (v3 > 0xFF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }
}

void std::deque<ggl::PendingQuery>::__maybe_remove_back_spare[abi:nn200100](void *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 16 * (v3 - v4) - 1;
  }

  v6 = v5 - (a1[5] + a1[4]);
  if (v6 < 0x80)
  {
    a2 = 1;
  }

  if (v6 > 0xFF || (a2 & 1) == 0)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::__function::__func<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0,std::allocator<md::PassList::transferItems(md::FrameGraph *,md::FrameGraph *)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A37008;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<md::PassList::rootRenderQueue(void)::$_0,std::allocator<md::PassList::rootRenderQueue(void)::$_0>,void ()(md::FrameGraphPass const&,md::RenderQueueBase &,ggl::RenderTarget *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A36FC0;
  a2[1] = v2;
  return result;
}

id GEOGetVectorKitVKMapViewLog()
{
  if (GEOGetVectorKitVKMapViewLog(void)::onceToken[0] != -1)
  {
    dispatch_once(GEOGetVectorKitVKMapViewLog(void)::onceToken, &__block_literal_global_35133);
  }

  v1 = GEOGetVectorKitVKMapViewLog(void)::log;

  return v1;
}

{
  if (GEOGetVectorKitVKMapViewLog(void)::onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMapViewLog(void)::onceToken, &__block_literal_global_37933);
  }

  v1 = GEOGetVectorKitVKMapViewLog(void)::log;

  return v1;
}

void ___ZL27GEOGetVectorKitVKMapViewLogv_block_invoke_35137()
{
  v0 = os_log_create("com.apple.VectorKit", "VKMapView");
  v1 = GEOGetVectorKitVKMapViewLog(void)::log;
  GEOGetVectorKitVKMapViewLog(void)::log = v0;
}

void md::RouteRenderLayer::createDebugNode(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v16 = 16;
  strcpy(__p, "RouteRenderLayer");
  gdc::DebugTreeNode::DebugTreeNode(a2, __p);
  v4 = *(a1 + 64);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 != v6)
  {
    while (1)
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v11 = 0u;
      *v12 = 0u;
      v13 = 0u;
      memset(v14, 0, sizeof(v14));
      std::string::basic_string[abi:nn200100]<0>(__p, "selected");
      gdc::DebugTreeValue::DebugTreeValue(v24, *(v8 + 620));
      gdc::DebugTreeNode::addProperty(v11, __p, v24);
      if (v26 < 0)
      {
        operator delete(v25);
      }

      if (v16 < 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:nn200100]<0>(__p, "layer");
      gdc::DebugTreeValue::DebugTreeValue(v21, *(v8 + 616));
      gdc::DebugTreeNode::addProperty(v11, __p, v21);
      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v16 < 0)
      {
        operator delete(*__p);
      }

      v9 = *(v8 + 144);
      if (v9)
      {
        v10 = v9;
        objc_msgSend_createDebugNode(v10);
        gdc::DebugTreeNode::addChildNode(v11, __p);
        v27[0] = &v20;
        std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v27);
        v27[0] = &v19;
        std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v27);
        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          operator delete(*__p);
        }
      }

      gdc::DebugTreeNode::addChildNode(a2, v11);
      *__p = &v14[1] + 8;
      std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](__p);
      *__p = v14;
      std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](__p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12[1]);
      }

      if (SHIBYTE(v12[0]) < 0)
      {
        break;
      }

      if (v7)
      {
        goto LABEL_22;
      }

LABEL_23:
      v5 += 2;
      if (v5 == v6)
      {
        return;
      }
    }

    operator delete(v11[0]);
    if (!v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    goto LABEL_23;
  }
}

void sub_1B3143A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a27);
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a27);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v28);
  }

  a27 = v27 + 72;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&a27);
  a27 = v27 + 48;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&a27);
  if (*(v27 + 47) < 0)
  {
    operator delete(*(v27 + 24));
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(a1);
}

mdm::zone_mallocator *ggl::FragmentedPool<ggl::Debug::ExtendedPipelineSetup>::pop(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    v4 = a1[11];
    if (!v4)
    {
      goto LABEL_7;
    }

    v3 = (*(*v4 + 48))(v4);
    v8 = v3;
  }

  else
  {
    v3 = *(v2 - 8);
    v8 = v3;
    a1[1] = v2 - 8;
  }

  std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a1 + 4), &v8);
  v9 = v3;
  v5 = a1[15];
  if (v5)
  {
    (*(*v5 + 48))(v5, &v9);
    return v3;
  }

LABEL_7:
  v7 = std::__throw_bad_function_call[abi:nn200100]();
  return std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v7);
}

void std::vector<ggl::Debug::ExtendedVbo,geo::allocator_adapter<ggl::Debug::ExtendedVbo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedVbo>(uint64_t a1, void *a2)
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

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedPipelineSetup *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::push_back[abi:nn200100](ggl::zone_mallocator *result, void *a2)
{
  v3 = result;
  v5 = *(result + 1);
  v4 = *(result + 2);
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v19[4] = result + 24;
    if (v10)
    {
      v11 = ggl::zone_mallocator::instance(result);
      v12 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v12[8 * v7];
    v14 = &v12[8 * v10];
    *v13 = *a2;
    v6 = v13 + 8;
    v15 = *(v3 + 1) - *v3;
    v16 = &v13[-v15];
    memcpy(&v13[-v15], *v3, v15);
    v17 = *v3;
    *v3 = v16;
    *(v3 + 1) = v6;
    v18 = *(v3 + 2);
    *(v3 + 2) = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 1) = v6;
  return result;
}

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 8 * a2, 0x2004093837F09uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

ggl::zone_mallocator *std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(ggl::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = ggl::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<ggl::Debug::ExtendedMesh *>(v5, v4);
  }

  return a1;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedMesh *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::ExtendedMesh *,geo::allocator_adapter<ggl::Debug::ExtendedMesh *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

ggl::zone_mallocator *std::vector<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator>>::reserve(ggl::zone_mallocator *result)
{
  v3 = *result;
  if (*(result + 2) - *result <= 0x31FuLL)
  {
    v14[9] = v1;
    v14[10] = v2;
    v4 = result;
    v5 = *(result + 1) - v3;
    v14[4] = result + 24;
    v6 = ggl::zone_mallocator::instance(result);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::Debug::ExtendedPipelineSetup *>(v6, 100);
    v8 = &v7[v5];
    v9 = v7 + 800;
    v10 = *(v4 + 1) - *v4;
    v11 = &v7[v5 - v10];
    memcpy(v11, *v4, v10);
    v12 = *v4;
    *v4 = v11;
    *(v4 + 1) = v8;
    v13 = *(v4 + 2);
    *(v4 + 2) = v9;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    return std::__split_buffer<ggl::Debug::ExtendedPipelineSetup *,geo::allocator_adapter<ggl::Debug::ExtendedPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(v14);
  }

  return result;
}

void sub_1B31446B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a10);
  }

  MEMORY[0x1B8C62190](v10, v11, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::destroy_deallocate(void *a1)
{
  std::__destroy_at[abi:nn200100]<std::pair<std::shared_ptr<md::ARWalkingManeuverLabelFeature> const,std::shared_ptr<md::HighPrecisionAltitudeRequest>>,0>(a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_1F2A370A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A370A8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLinePoints(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::ExtendedPipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A370A8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  return a1;
}

void *__Block_byref_object_copy__35151(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void ___ZN2md16RouteRenderLayer34layoutDebugRouteLineSnappingStatusERKNSt3__110shared_ptrINS_16RouteLineOverlayEEERKNS_13LayoutContextEPN3ggl13CommandBufferE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 section];
  v5 = *(*(a1 + 32) + 8);
  v6 = [v3 section];
  v7 = v6;
  v8 = *(v5 + 56);
  if (!v8)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = v8[4];
      if (v6 >= v10)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_7;
      }
    }

    if (v10 >= v6)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = [v3 routeStartIndex];
  v12 = [v4 startPointIndex];
  v13 = [v3 routeEndIndex];
  v14 = v11 - v12;
  v15 = v13 - [v4 startPointIndex];
  v17 = v9[6];
  v16 = v9[7];
  if (v17 >= v16)
  {
    v19 = v9[5];
    v20 = v17 - v19;
    v21 = (v17 - v19) >> 3;
    v22 = v21 + 1;
    if ((v21 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v23 = v16 - v19;
    if (v23 >> 2 > v22)
    {
      v22 = v23 >> 2;
    }

    if (v23 >= 0x7FFFFFFFFFFFFFF8)
    {
      v24 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v24);
    }

    v25 = (8 * v21);
    *v25 = v14;
    v25[1] = v15;
    v18 = 8 * v21 + 8;
    memcpy(0, v19, v20);
    v26 = v9[5];
    v9[5] = 0;
    v9[6] = v18;
    v9[7] = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    *v17 = v14;
    *(v17 + 1) = v15;
    v18 = (v17 + 8);
  }

  v9[6] = v18;

  v27 = [v3 routeEndIndex];
  v28 = [v3 routeStartIndex];
  if ([v4 pointCount])
  {
    v29 = (v27 - v28 + 1);
    if (v29 >= 2)
    {
      v30 = ggl::FragmentedPool<ggl::CommonMesh::Pos4Mesh>::pop(*(**(a1 + 40) + 384));
      ggl::BufferData::resize(**(v30 + 8), 0);
      [v4 vkBounds];
      v31 = 0;
      v73 = 0u;
      v75 = 0;
      v77 = 0;
      v74 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = v33 - v32;
      *&v73 = v35 - v34;
      v76 = v33 - v32;
      v78 = v32;
      v79 = v34;
      v36 = *(a1 + 48) + 808;
      v80 = xmmword_1B33B0740;
      do
      {
        v37 = 0;
        v38 = &v70;
        do
        {
          v39 = 0;
          v40 = 0.0;
          v41 = v36;
          do
          {
            v42 = *v41;
            v41 += 4;
            v40 = v40 + v38[v39++] * v42;
          }

          while (v39 != 4);
          v69[4 * v37++ + v31] = v40;
          v38 += 4;
        }

        while (v37 != 4);
        ++v31;
        v36 += 8;
      }

      while (v31 != 4);
      v43 = [v4 points];
      v44 = [v3 routeStartIndex];
      v45 = [v4 startPointIndex];
      ggl::BufferData::resize(**(v30 + 8), v29);
      ggl::DataAccess<ggl::CommonMesh::BufferPos4>::DataAccess(v67, **(v30 + 8), 0, v29);
      v46 = (v43 + 12 * v44 - 12 * v45);
      v47 = (v68 + 8);
      do
      {
        v48 = *v46;
        v46 = (v46 + 12);
        *(v47 - 1) = v48;
        *v47 = 0x3F80000000000000;
        v47 += 2;
        --v29;
      }

      while (v29);
      v49 = ggl::FragmentedPool<ggl::Debug::BasePipelineSetup>::pop(*(**(a1 + 40) + 368));
      v50 = v49;
      v51 = 0;
      v52 = v69;
      do
      {
        v54 = *v52;
        v53 = *(v52 + 2);
        v52 += 4;
        v64[v51++] = vcvt_hight_f32_f64(vcvt_f32_f64(v54), v53);
      }

      while (v51 != 4);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v62, *(*(v49 + 136) + 16));
      v55 = v63;
      *v63 = v64[0];
      v55[1] = v64[1];
      v55[2] = v65;
      v55[3] = v66;
      ggl::BufferMemory::~BufferMemory(v62);
      ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(v64, **(v50 + 136));
      v56 = *(&v65 + 1);
      ggl::BufferMemory::~BufferMemory(v64);
      if ([v3 isMapMatched] && (objc_msgSend(v3, "isMapMatching") & 1) == 0)
      {
        v62[0] = xmmword_1B33B0710;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (i = 0; i != 16; i += 4)
        {
          *(v56 + i) = *(v64 + i);
        }
      }

      else if ([v3 isMapMatching])
      {
        v62[0] = xmmword_1B33B0AC0;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (j = 0; j != 16; j += 4)
        {
          *(v56 + j) = *(v64 + j);
        }
      }

      else
      {
        v62[0] = xmmword_1B33AFEE0;
        geo::Color<float,4,(geo::ColorSpace)0>::Color<(geo::ColorSpace)2,int,void>(v64, v62);
        for (k = 0; k != 16; k += 4)
        {
          *(v56 + k) = *(v64 + k);
        }
      }

      v60 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(**(a1 + 40) + 376));
      v60[8] = v30;
      v60[4] = v50;
      v60[3] = *(**(a1 + 40) + 360);
      v61 = *(a1 + 56);
      *&v64[0] = v60;
      std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((v61 + 72), v64);
      ggl::BufferMemory::~BufferMemory(v67);
    }
  }
}

void sub_1B3144E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  ggl::BufferMemory::~BufferMemory(va);

  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::__map_value_compare<GEOComposedRouteSection * {__strong},std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,std::less<GEOComposedRouteSection * {__strong}>,true>,std::allocator<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>>>::__emplace_unique_key_args<GEOComposedRouteSection * {__strong},std::piecewise_construct_t const&,std::tuple<GEOComposedRouteSection * const {__strong}&>,std::tuple<>>(uint64_t **a1, unint64_t a2, id **a3)
{
  v3 = a1[1];
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
      v5 = v3[4];
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
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
  while (2)
  {
    v8 = a2 - 8;
    v9 = a2 - 4;
    v10 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v10;
          v11 = (a2 - v10) >> 3;
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v94 = v10[2];
                v95 = *v10;
                v96 = *v8;
                if (v94 >= *v10)
                {
                  if (v96 >= v94)
                  {
                    return result;
                  }

                  v10[2] = v96;
                  *v8 = v94;
                  v147 = v10[3];
                  v10[3] = *v9;
                  *v9 = v147;
                  v148 = v10[2];
                  v149 = *v10;
                  if (v148 >= *v10)
                  {
                    return result;
                  }

                  *v10 = v148;
                  v10[2] = v149;
                  v97 = v10 + 1;
                  v9 = (v10 + 3);
                }

                else
                {
                  if (v96 >= v94)
                  {
                    v97 = v10 + 3;
                    v160 = v10[3];
                    v161 = v10[1];
                    *v10 = v94;
                    v10[1] = v160;
                    v10[2] = v95;
                    v10[3] = v161;
                    if (*v8 >= v95)
                    {
                      return result;
                    }

                    v10[2] = *v8;
                  }

                  else
                  {
                    v97 = v10 + 1;
                    *v10 = v96;
                  }

                  *v8 = v95;
                }

                v162 = *v97;
                *v97 = *v9;
                *v9 = v162;
                return result;
              case 4:
                v98 = v10[2];
                v99 = *v10;
                v100 = v10[4];
                if (v98 >= *v10)
                {
                  if (v100 < v98)
                  {
                    v150 = v10 + 3;
                    v151 = v10[3];
                    v152 = v10[5];
                    v10[2] = v100;
                    v10[3] = v152;
                    v10[4] = v98;
                    v10[5] = v151;
                    if (v100 < v99)
                    {
                      *v10 = v100;
                      v10[2] = v99;
                      v101 = v10 + 1;
                      goto LABEL_204;
                    }

LABEL_206:
                    if (*v8 < v98)
                    {
                      v10[4] = *v8;
                      *v8 = v98;
                      v166 = v10[5];
                      v10[5] = *v9;
                      *v9 = v166;
                      v167 = v10[4];
                      v168 = v10[2];
                      if (v167 < v168)
                      {
                        v169 = v10[3];
                        v170 = v10[5];
                        v10[2] = v167;
                        v10[3] = v170;
                        v10[4] = v168;
                        v10[5] = v169;
                        v171 = *v10;
                        if (v167 < *v10)
                        {
                          v172 = v10[1];
                          *v10 = v167;
                          v10[1] = v170;
                          v10[2] = v171;
                          v10[3] = v172;
                        }
                      }
                    }

                    return result;
                  }
                }

                else
                {
                  if (v100 < v98)
                  {
                    v101 = v10 + 1;
                    *v10 = v100;
                    goto LABEL_203;
                  }

                  v101 = v10 + 3;
                  v163 = v10[3];
                  v164 = v10[1];
                  *v10 = v98;
                  v10[1] = v163;
                  v10[2] = v99;
                  v10[3] = v164;
                  if (v100 < v99)
                  {
                    v10[2] = v100;
LABEL_203:
                    v10[4] = v99;
                    v150 = v10 + 5;
LABEL_204:
                    v165 = *v101;
                    *v101 = *v150;
                    *v150 = v165;
                    v98 = v10[4];
                    goto LABEL_206;
                  }
                }

                v98 = v100;
                goto LABEL_206;
              case 5:

                return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6, a2 - 2);
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v92 = *v10;
              if (*v8 < *v10)
              {
                *v10 = *v8;
                *v8 = v92;
                v93 = v10[1];
                v10[1] = *v9;
                *v9 = v93;
              }

              return result;
            }
          }

          if (v11 <= 23)
          {
            v102 = (v10 + 2);
            v104 = v10 == a2 || v102 == a2;
            if (a4)
            {
              if (!v104)
              {
                v105 = 0;
                v106 = v10;
                do
                {
                  v107 = *(v106 + 2);
                  v108 = *v106;
                  v106 = v102;
                  if (v107 < v108)
                  {
                    v110 = *v102;
                    v109 = *(v102 + 1);
                    v111 = v105;
                    while (1)
                    {
                      v112 = v10 + v111;
                      v113 = *(v10 + v111 + 4);
                      *(v112 + 2) = v108;
                      *(v112 + 3) = v113;
                      if (!v111)
                      {
                        break;
                      }

                      v108 = *(v112 - 2);
                      v111 -= 8;
                      if (v108 <= v110)
                      {
                        v114 = (v10 + v111 + 8);
                        goto LABEL_137;
                      }
                    }

                    v114 = v10;
LABEL_137:
                    *v114 = v110;
                    v114[1] = v109;
                  }

                  v102 = v106 + 8;
                  v105 += 8;
                }

                while (v106 + 8 != a2);
              }
            }

            else if (!v104)
            {
              v153 = v10 + 3;
              do
              {
                v154 = *(v7 + 8);
                v155 = *v7;
                v7 = v102;
                if (v154 < v155)
                {
                  v156 = *v102;
                  v157 = v153;
                  do
                  {
                    v158 = v157;
                    v159 = *(v157 - 2);
                    v157 -= 2;
                    *(v158 - 1) = v155;
                    *v158 = v159;
                    v155 = *(v158 - 5);
                  }

                  while (v155 > v156);
                  *(v157 - 1) = v156;
                }

                v102 = (v7 + 8);
                v153 += 2;
              }

              while ((v7 + 8) != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v10 != a2)
            {
              v115 = (v11 - 2) >> 1;
              v116 = v115;
              do
              {
                v117 = v116;
                if (v115 >= v116)
                {
                  v118 = (2 * v116) | 1;
                  v119 = &v10[2 * v118];
                  if (2 * v117 + 2 >= v11)
                  {
                    v120 = *v119;
                  }

                  else
                  {
                    v120 = *v119;
                    v121 = v119[2];
                    if (*v119 <= v121)
                    {
                      v120 = v119[2];
                    }

                    if (*v119 < v121)
                    {
                      v119 += 2;
                      v118 = 2 * v117 + 2;
                    }
                  }

                  v122 = &v10[2 * v117];
                  if (v120 >= *v122)
                  {
                    v123 = *v122;
                    v124 = v122[1];
                    do
                    {
                      v125 = v122;
                      v122 = v119;
                      *v125 = v120;
                      v125[1] = v119[1];
                      if (v115 < v118)
                      {
                        break;
                      }

                      v126 = (2 * v118) | 1;
                      v119 = &v10[2 * v126];
                      v118 = 2 * v118 + 2;
                      if (v118 >= v11)
                      {
                        v120 = *v119;
                        v118 = v126;
                      }

                      else
                      {
                        v120 = *v119;
                        result = (v119 + 2);
                        v127 = v119[2];
                        if (*v119 <= v127)
                        {
                          v120 = v119[2];
                        }

                        if (*v119 >= v127)
                        {
                          v118 = v126;
                        }

                        else
                        {
                          v119 += 2;
                        }
                      }
                    }

                    while (v120 >= v123);
                    *v122 = v123;
                    v122[1] = v124;
                  }
                }

                v116 = v117 - 1;
              }

              while (v117);
              do
              {
                v128 = 0;
                v129 = *v10;
                v130 = v10;
                do
                {
                  v131 = &v130[2 * v128];
                  v132 = v131 + 2;
                  v133 = (2 * v128) | 1;
                  v128 = 2 * v128 + 2;
                  if (v128 >= v11)
                  {
                    v134 = *v132;
                    v128 = v133;
                  }

                  else
                  {
                    v136 = v131[4];
                    v135 = v131 + 4;
                    v134 = v136;
                    v137 = *(v135 - 2);
                    v138 = v137 < v136;
                    if (v137 > v136)
                    {
                      v134 = *(v135 - 2);
                    }

                    if (v138)
                    {
                      v132 = v135;
                    }

                    else
                    {
                      v128 = v133;
                    }
                  }

                  *v130 = v134;
                  v130[1] = v132[1];
                  v130 = v132;
                }

                while (v128 <= ((v11 - 2) >> 1));
                if (v132 == (a2 - 8))
                {
                  *v132 = v129;
                }

                else
                {
                  *v132 = *(a2 - 2);
                  v132[1] = *(a2 - 1);
                  *(a2 - 1) = v129;
                  v139 = (v132 - v10 + 8) >> 3;
                  v138 = v139 < 2;
                  v140 = v139 - 2;
                  if (!v138)
                  {
                    v141 = v140 >> 1;
                    v142 = &v10[2 * v141];
                    v143 = *v142;
                    if (*v142 < *v132)
                    {
                      v144 = *v132;
                      v145 = v132[1];
                      do
                      {
                        v146 = v132;
                        v132 = v142;
                        *v146 = v143;
                        v146[1] = v142[1];
                        if (!v141)
                        {
                          break;
                        }

                        v141 = (v141 - 1) >> 1;
                        v142 = &v10[2 * v141];
                        v143 = *v142;
                      }

                      while (*v142 < v144);
                      *v132 = v144;
                      v132[1] = v145;
                    }
                  }
                }

                a2 -= 8;
                v138 = v11-- <= 2;
              }

              while (!v138);
            }

            return result;
          }

          v12 = &v10[2 * (v11 >> 1)];
          v13 = v12;
          v14 = *v8;
          if (v11 >= 0x81)
          {
            v15 = *v12;
            v16 = *v10;
            if (*v12 >= *v10)
            {
              if (v14 >= v15 || (*v12 = v14, *v8 = v15, v22 = (v12 + 1), v21 = v12[1], v12[1] = *v9, *v9 = v21, v23 = *v10, *v12 >= *v10))
              {
LABEL_29:
                v30 = v12 - 2;
                v31 = *(v12 - 2);
                v32 = v10[2];
                v33 = *(a2 - 4);
                if (v31 >= v32)
                {
                  if (v33 >= v31 || (*v30 = v33, *(a2 - 4) = v31, v36 = (v12 - 1), v35 = *(v12 - 1), *(v12 - 1) = *(a2 - 3), *(a2 - 3) = v35, v37 = v10[2], *v30 >= v37))
                  {
LABEL_42:
                    v46 = v12[2];
                    v44 = v12 + 2;
                    v45 = v46;
                    v47 = v10[4];
                    v48 = *(a2 - 6);
                    if (v46 >= v47)
                    {
                      if (v48 < v45)
                      {
                        *v44 = v48;
                        *(a2 - 6) = v45;
                        v51 = (v44 + 1);
                        v50 = v44[1];
                        v44[1] = *(a2 - 5);
                        *(a2 - 5) = v50;
                        v45 = *v44;
                        v52 = v10[4];
                        if (*v44 < v52)
                        {
                          v10[4] = v45;
                          *v44 = v52;
                          v49 = v10 + 5;
LABEL_51:
                          v56 = *v49;
                          *v49 = *v51;
                          *v51 = v56;
                          v45 = *v44;
                        }
                      }
                    }

                    else
                    {
                      if (v48 < v45)
                      {
                        v49 = v10 + 5;
                        v10[4] = v48;
LABEL_50:
                        *(a2 - 6) = v47;
                        v51 = a2 - 20;
                        goto LABEL_51;
                      }

                      v49 = v44 + 1;
                      v53 = v44[1];
                      v54 = v10[5];
                      v10[4] = v45;
                      v10[5] = v53;
                      *v44 = v47;
                      v44[1] = v54;
                      v55 = *(a2 - 6);
                      if (v55 < v47)
                      {
                        *v44 = v55;
                        goto LABEL_50;
                      }

                      v45 = v47;
                    }

                    v57 = *v13;
                    v58 = *v30;
                    if (*v13 >= *v30)
                    {
                      if (v45 >= v57)
                      {
LABEL_62:
                        v66 = *v10;
                        *v10 = v57;
                        v20 = v10 + 1;
                        *v13 = v66;
                        v26 = (v13 + 1);
                        goto LABEL_63;
                      }

                      v61 = v13 + 1;
                      v62 = v13[1];
                      *v13 = v45;
                      v13[1] = v44[1];
                      *v44 = v57;
                      v44[1] = v62;
                      if (v45 >= v58)
                      {
                        v57 = v45;
                        goto LABEL_62;
                      }

                      *v30 = v45;
                      v59 = v30 + 1;
                      *v13 = v58;
                    }

                    else
                    {
                      if (v45 >= v57)
                      {
                        v63 = v13[1];
                        *v13 = v58;
                        v64 = v30[1];
                        *v30 = v57;
                        v30[1] = v63;
                        v13[1] = v64;
                        if (v45 >= v58)
                        {
                          v57 = v58;
                          goto LABEL_62;
                        }

                        *v13 = v45;
                        *v44 = v58;
                        v60 = v44 + 1;
                        v59 = v13 + 1;
                      }

                      else
                      {
                        *v30 = v45;
                        v59 = v30 + 1;
                        *v44 = v58;
                        v60 = v44 + 1;
                      }

                      v61 = v60;
                    }

                    v65 = *v59;
                    *v59 = *v61;
                    *v61 = v65;
                    v57 = *v13;
                    goto LABEL_62;
                  }

                  v10[2] = *v30;
                  *v30 = v37;
                  v34 = v10 + 3;
                }

                else
                {
                  if (v33 >= v31)
                  {
                    v34 = v12 - 1;
                    v40 = *(v12 - 1);
                    v41 = v10[3];
                    v10[2] = v31;
                    v10[3] = v40;
                    *v30 = v32;
                    *(v12 - 1) = v41;
                    v42 = *(a2 - 4);
                    if (v42 >= v32)
                    {
                      goto LABEL_42;
                    }

                    *v30 = v42;
                  }

                  else
                  {
                    v34 = v10 + 3;
                    v10[2] = v33;
                  }

                  *(a2 - 4) = v32;
                  v36 = a2 - 12;
                }

                v43 = *v34;
                *v34 = *v36;
                *v36 = v43;
                goto LABEL_42;
              }

              *v10 = *v12;
              v17 = v10 + 1;
              *v12 = v23;
            }

            else
            {
              if (v14 >= v15)
              {
                v17 = v12 + 1;
                v27 = v12[1];
                v28 = v10[1];
                *v10 = v15;
                v10[1] = v27;
                *v12 = v16;
                v12[1] = v28;
                if (*v8 >= v16)
                {
                  goto LABEL_29;
                }

                *v12 = *v8;
              }

              else
              {
                v17 = v10 + 1;
                *v10 = v14;
              }

              *v8 = v16;
              v22 = a2 - 4;
            }

            v29 = *v17;
            *v17 = *v22;
            *v22 = v29;
            goto LABEL_29;
          }

          v18 = *v10;
          v19 = *v12;
          if (*v10 >= *v12)
          {
            if (v14 < v18)
            {
              *v10 = v14;
              *v8 = v18;
              v24 = v10[1];
              v10[1] = *v9;
              *v9 = v24;
              v25 = *v13;
              if (*v10 < *v13)
              {
                *v13 = *v10;
                *v10 = v25;
                v20 = v13 + 1;
                v26 = (v10 + 1);
LABEL_63:
                v67 = *v20;
                *v20 = *v26;
                *v26 = v67;
              }
            }
          }

          else
          {
            if (v14 < v18)
            {
              v20 = v12 + 1;
              *v13 = v14;
LABEL_37:
              *v8 = v19;
              v26 = a2 - 4;
              goto LABEL_63;
            }

            v20 = v10 + 1;
            v38 = v10[1];
            v39 = v13[1];
            *v13 = v18;
            v13[1] = v38;
            *v10 = v19;
            v10[1] = v39;
            if (*v8 < v19)
            {
              *v10 = *v8;
              goto LABEL_37;
            }
          }

          --a3;
          if ((a4 & 1) != 0 || *(v10 - 2) < *v10)
          {
            break;
          }

          v82 = *v10;
          if (*v8 <= *v10)
          {
            v84 = (v10 + 2);
            do
            {
              v10 = v84;
              if (v84 >= a2)
              {
                break;
              }

              v84 += 8;
            }

            while (*v10 <= v82);
          }

          else
          {
            do
            {
              v83 = v10[2];
              v10 += 2;
            }

            while (v83 <= v82);
          }

          v85 = a2;
          if (v10 < a2)
          {
            v85 = a2;
            do
            {
              v86 = *(v85 - 2);
              v85 -= 8;
            }

            while (v86 > v82);
          }

          if (v10 < v85)
          {
            v87 = *v10;
            v88 = *v85;
            do
            {
              *v10 = v88;
              *v85 = v87;
              v89 = v10[1];
              v10[1] = *(v85 + 1);
              *(v85 + 1) = v89;
              do
              {
                v90 = v10[2];
                v10 += 2;
                v87 = v90;
              }

              while (v90 <= v82);
              do
              {
                v91 = *(v85 - 2);
                v85 -= 8;
                v88 = v91;
              }

              while (v91 > v82);
            }

            while (v10 < v85);
          }

          if (v10 - 2 != v7)
          {
            *v7 = *(v10 - 2);
            *(v7 + 4) = *(v10 - 1);
          }

          a4 = 0;
          *(v10 - 1) = v82;
        }

        v68 = *v10;
        v69 = v10;
        do
        {
          v70 = v69;
          v72 = v69[2];
          v69 += 2;
          v71 = v72;
        }

        while (v72 < v68);
        v73 = a2;
        if (v70 == v10)
        {
          v73 = a2;
          do
          {
            if (v69 >= v73)
            {
              break;
            }

            v75 = *(v73 - 2);
            v73 -= 8;
          }

          while (v75 >= v68);
        }

        else
        {
          do
          {
            v74 = *(v73 - 2);
            v73 -= 8;
          }

          while (v74 >= v68);
        }

        if (v69 >= v73)
        {
          v10 = v69;
        }

        else
        {
          v76 = *v73;
          v10 = v69;
          v77 = v73;
          do
          {
            *v10 = v76;
            *v77 = v71;
            v78 = v10[1];
            v10[1] = *(v77 + 1);
            *(v77 + 1) = v78;
            do
            {
              v79 = v10[2];
              v10 += 2;
              v71 = v79;
            }

            while (v79 < v68);
            do
            {
              v80 = *(v77 - 2);
              v77 -= 8;
              v76 = v80;
            }

            while (v80 >= v68);
          }

          while (v10 < v77);
        }

        if (v10 - 2 != v7)
        {
          *v7 = *(v10 - 2);
          *(v7 + 4) = *(v10 - 1);
        }

        *(v10 - 1) = v68;
        if (v69 >= v73)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,false>(v7, v10 - 8, a3, a4 & 1);
        a4 = 0;
      }

      v81 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(v7, v10 - 2);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(v10, a2);
      if (result)
      {
        break;
      }

      if (!v81)
      {
        goto LABEL_87;
      }
    }

    a2 = (v10 - 2);
    if (!v81)
    {
      continue;
    }

    return result;
  }
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *a3;
  if (*a2 >= *result)
  {
    if (v7 < v5)
    {
      *a2 = v7;
      *a3 = v5;
      v10 = a2 + 1;
      v9 = a2[1];
      a2[1] = a3[1];
      a3[1] = v9;
      v11 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        v8 = result + 1;
        *a2 = v11;
LABEL_10:
        v13 = *v8;
        *v8 = *v10;
        *v10 = v13;
      }
    }
  }

  else
  {
    if (v7 < v5)
    {
      v8 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v10 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v6;
    v8 = a2 + 1;
    v12 = result[1];
    result[1] = a2[1];
    a2[1] = v12;
    v6 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v14 = *a3;
  if (*a4 < *a3)
  {
    *a3 = *a4;
    *a4 = v14;
    v15 = a3[1];
    a3[1] = a4[1];
    a4[1] = v15;
    v16 = *a2;
    if (*a3 < *a2)
    {
      *a2 = *a3;
      *a3 = v16;
      v17 = a2[1];
      a2[1] = a3[1];
      a3[1] = v17;
      v18 = *result;
      if (*a2 < *result)
      {
        *result = *a2;
        *a2 = v18;
        v19 = result[1];
        result[1] = a2[1];
        a2[1] = v19;
      }
    }
  }

  v20 = *a4;
  if (*a5 < *a4)
  {
    *a4 = *a5;
    *a5 = v20;
    v21 = a4[1];
    a4[1] = a5[1];
    a5[1] = v21;
    v22 = *a3;
    if (*a4 < *a3)
    {
      *a3 = *a4;
      *a4 = v22;
      v23 = a3[1];
      a3[1] = a4[1];
      a4[1] = v23;
      v24 = *a2;
      if (*a3 < *a2)
      {
        *a2 = *a3;
        *a3 = v24;
        v25 = a2[1];
        a2[1] = a3[1];
        a3[1] = v25;
        v26 = *result;
        if (*a2 < *result)
        {
          *result = *a2;
          *a2 = v26;
          v27 = result[1];
          result[1] = a2[1];
          a2[1] = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *>(int *a1, int *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a1[2];
      v7 = *a1;
      v8 = *(a2 - 2);
      if (v6 >= *a1)
      {
        if (v8 >= v6)
        {
          return 1;
        }

        a1[2] = v8;
        *(a2 - 2) = v6;
        v20 = a1 + 3;
        v19 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v19;
        v21 = a1[2];
        v22 = *a1;
        if (v21 >= *a1)
        {
          return 1;
        }

        *a1 = v21;
        a1[2] = v22;
        v9 = a1 + 1;
      }

      else
      {
        if (v8 >= v6)
        {
          v9 = a1 + 3;
          v29 = a1[3];
          v30 = a1[1];
          *a1 = v6;
          a1[1] = v29;
          a1[2] = v7;
          a1[3] = v30;
          v31 = *(a2 - 2);
          if (v31 >= v7)
          {
            return 1;
          }

          a1[2] = v31;
        }

        else
        {
          v9 = a1 + 1;
          *a1 = v8;
        }

        *(a2 - 2) = v7;
        v20 = a2 - 1;
      }

      v32 = *v9;
      *v9 = *v20;
      *v20 = v32;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_3 &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
    }

    v15 = a1[2];
    v16 = *a1;
    v17 = a1[4];
    if (v15 >= *a1)
    {
      if (v17 < v15)
      {
        v27 = a1 + 3;
        v26 = a1[3];
        v28 = a1[5];
        a1[2] = v17;
        a1[3] = v28;
        a1[4] = v15;
        a1[5] = v26;
        if (v17 >= v16)
        {
LABEL_51:
          v17 = v15;
          goto LABEL_52;
        }

        *a1 = v17;
        a1[2] = v16;
        v18 = a1 + 1;
LABEL_50:
        v48 = *v18;
        *v18 = *v27;
        *v27 = v48;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17 < v15)
      {
        v18 = a1 + 1;
        *a1 = v17;
LABEL_49:
        a1[4] = v16;
        v27 = a1 + 5;
        v15 = v16;
        goto LABEL_50;
      }

      v18 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v15;
      a1[1] = v46;
      a1[2] = v16;
      a1[3] = v47;
      if (v17 < v16)
      {
        a1[2] = v17;
        goto LABEL_49;
      }
    }

LABEL_52:
    v49 = *(a2 - 2);
    if (v49 < v17)
    {
      a1[4] = v49;
      *(a2 - 2) = v17;
      v50 = a1[5];
      a1[5] = *(a2 - 1);
      *(a2 - 1) = v50;
      v51 = a1[4];
      v52 = a1[2];
      if (v51 < v52)
      {
        v53 = a1[3];
        v54 = a1[5];
        a1[2] = v51;
        a1[3] = v54;
        a1[4] = v52;
        a1[5] = v53;
        v55 = *a1;
        if (v51 < *a1)
        {
          v56 = a1[1];
          *a1 = v51;
          a1[1] = v54;
          a1[2] = v55;
          a1[3] = v56;
        }
      }
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    if (v3 < *a1)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      v5 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 4;
  v11 = a1[4];
  v12 = a1[2];
  v13 = *a1;
  if (v12 < *a1)
  {
    if (v11 >= v12)
    {
      v14 = a1 + 3;
      v33 = a1[3];
      v34 = a1[1];
      *a1 = v12;
      a1[1] = v33;
      a1[2] = v13;
      a1[3] = v34;
      if (v11 >= v13)
      {
        goto LABEL_36;
      }

      a1[2] = v11;
    }

    else
    {
      v14 = a1 + 1;
      *a1 = v11;
    }

    a1[4] = v13;
    v24 = a1 + 5;
    goto LABEL_35;
  }

  if (v11 < v12)
  {
    v24 = a1 + 3;
    v23 = a1[3];
    v25 = a1[5];
    a1[2] = v11;
    a1[3] = v25;
    a1[4] = v12;
    a1[5] = v23;
    if (v11 < v13)
    {
      *a1 = v11;
      a1[2] = v13;
      v14 = a1 + 1;
LABEL_35:
      v35 = *v14;
      *v14 = *v24;
      *v24 = v35;
    }
  }

LABEL_36:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  while (1)
  {
    v39 = *v10;
    if (*v36 < *v10)
    {
      v41 = *v36;
      v40 = v36[1];
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 20);
        v43[6] = v39;
        v43[7] = v44;
        if (v42 == -16)
        {
          break;
        }

        v39 = v43[2];
        v42 -= 8;
        if (v39 <= v41)
        {
          v45 = (a1 + v42 + 24);
          goto LABEL_44;
        }
      }

      v45 = a1;
LABEL_44:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v10 = v36;
    v37 += 8;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<GEOComposedRouteSection * {__strong},std::vector<std::pair<int,int>>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<GEOComposedRouteSection * const {__strong},std::vector<std::pair<int,int>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B3146290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  MEMORY[0x1B8C62190](v14, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F2A372F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A372F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }

  JUMPOUT(0x1B8C62190);
}

void *std::__function::__func<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0,std::allocator<md::RouteRenderLayer::layoutDebugRouteLineSnappingStatus(std::shared_ptr<md::RouteLineOverlay> const&,md::LayoutContext const&,ggl::CommandBuffer *)::$_0>,ggl::Debug::BasePipelineSetup * ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F2A372F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  return a1;
}

void generateSpecularRenderItemsForLandmarkGroup(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18)
{
  v26 = 56;
  if (a17 == 1)
  {
    v26 = 72;
  }

  v27 = (*a2 + v26);
  v28 = *v27;
  v29 = v27[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v194, v28, v29);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = md::LayoutContext::get<md::LightingLogicContext>(*(a6 + 8));
  v178 = v30;
  if (v197 != 1)
  {
    v47 = 0uLL;
    v48 = 0.0;
    v49 = 1.0;
    v50 = 0.065;
    v31.n128_u64[0] = 0x401F800000000000;
    goto LABEL_41;
  }

  v32 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a6 + 16), *(*(a6 + 16) + 8));
  v35 = v194[3];
  if (a12 >= 0x17)
  {
    v36 = 23;
  }

  else
  {
    v36 = a12;
  }

  v37 = *v35;
  v184 = v32;
  if (*v35 && (v33.n128_u32[0] = *v37, LODWORD(v34) = 1.0, LODWORD(v37) = *v37 == 1.0, *(v35 + 10) == 1) && (v33.n128_f32[0] != 0.0 ? (v38 = v33.n128_f32[0] == 1.0) : (v38 = 1), !v38) || (v39 = *(v35 + v37 + 11), v39 == 2))
  {
    v40 = *(v35 + 16);
    if (v40)
    {
      v41 = *(v40 + 72);
      if (v41)
      {
        v42 = *v41 + 120 * *(v41 + v36 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v42, 0x12Fu) != *(v42 + 12))
        {
          goto LABEL_33;
        }
      }

      if (*(v35 + 56))
      {
        v43 = *(v35 + 48);
        v44 = 8 * *(v35 + 56);
        while (1)
        {
          v45 = *(*v43 + 72);
          if (v45)
          {
            v46 = *v45 + 120 * *(v45 + v36 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x12Fu) != *(v46 + 12))
            {
              goto LABEL_33;
            }
          }

          v43 += 8;
          v39 = 1;
          v44 -= 8;
          if (!v44)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v39 = 1;
  }

LABEL_30:
  v51 = *(v35 + 16 * v39 + 16);
  if (!v51)
  {
LABEL_39:
    v54 = a10;
    v55 = a11;
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(&v189, v184, &v194, a12, v33, v34);
    goto LABEL_40;
  }

  v52 = *(v51 + 72);
  if (!v52 || (v53 = *v52 + 120 * *(v52 + v36 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v53, 0x12Fu) == *(v53 + 12)))
  {
    v56 = v35 + 16 * v39;
    if (*(v56 + 56))
    {
      v57 = *(v56 + 48);
      v58 = 8 * *(v56 + 56);
      while (1)
      {
        v59 = *(*v57 + 72);
        if (v59)
        {
          v60 = *v59 + 120 * *(v59 + v36 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v60, 0x12Fu) != *(v60 + 12))
          {
            goto LABEL_33;
          }
        }

        v57 += 8;
        v58 -= 8;
        if (!v58)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

LABEL_33:
  v54 = a10;
  v55 = a11;
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(&v189, v184, &v194, a12, v33, v34);
LABEL_40:
  v185 = v189;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v194[3], 280, v36, 2u, 0);
  v48 = v61;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v194[3], 299, v36, 2u, 0);
  v63 = v62;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v194[3], 311, v36, 2u, 0);
  v65 = v64;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v194[3], 330, v36, 2u, 0);
  v67 = v66;
  v68 = v54;
  v49 = v63 + ((v65 - v63) * v54);
  a10 = v68;
  v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v194[3], 331, v36, 2u, 0);
  v50 = v67;
  v31.n128_f64[0] = v31.n128_f32[0];
  v47 = v185;
  a11 = v55;
LABEL_41:
  v70 = vmulq_n_f32(v47, a13 * a10);
  v180 = v70;
  v69 = vmuls_lane_f32(a9, v70, 3);
  v70.n128_f64[0] = v69;
  if (v69 <= 0.999)
  {
    v71 = 1;
  }

  else
  {
    v71 = a15;
  }

  v177 = v71;
  v72 = *(*a2 + 32);
  v176 = *(*a2 + 40);
  if (v72 != v176)
  {
    v73 = 0;
    v74 = 0;
    v75 = fmaxf(a11, 0.1);
    v76 = fmaxf(a10, 0.1);
    v77 = 1.0 - v49;
    if (v48 >= 0.0001)
    {
      v78 = 1.0;
    }

    else
    {
      v48 = 1.0;
      v78 = 0.0;
    }

    v79 = v50 * 40075017.0 / (v31.n128_f64[0] * (1 << a14));
    v80 = 1.0 - v50;
    do
    {
      if (a16)
      {
        v81 = *(a1 + 40);
        v82 = v81[1];
        if (v82 == *v81)
        {
          v87 = v81[11];
          if (!v87)
          {
            goto LABEL_140;
          }

          v30 = (*(*v87 + 48))(v87);
          v83 = v30;
        }

        else
        {
          v83 = *(v82 - 8);
          v81[1] = v82 - 8;
        }

        v89 = v81[5];
        v88 = v81[6];
        v183 = v73;
        v186 = v83;
        if (v89 >= v88)
        {
          v91 = v81[4];
          v92 = (v89 - v91) >> 3;
          if ((v92 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v93 = v88 - v91;
          v94 = v93 >> 2;
          if (v93 >> 2 <= (v92 + 1))
          {
            v94 = v92 + 1;
          }

          if (v93 >= 0x7FFFFFFFFFFFFFF8)
          {
            v95 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v95 = v94;
          }

          v192 = v81 + 7;
          if (v95)
          {
            v96 = ggl::zone_mallocator::instance(v30);
            v97 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *>(v96, v95);
          }

          else
          {
            v97 = 0;
          }

          v110 = &v97[8 * v95];
          v109 = &v97[8 * v92];
          *v109 = v83;
          v90 = v109 + 1;
          v111 = v81[4];
          v112 = v81[5] - v111;
          v113 = v109 - v112;
          memcpy(v109 - v112, v111, v112);
          v114 = v81[4];
          v81[4] = v113;
          v81[5] = v90;
          v115 = v81[6];
          v81[6] = v110;
          v190 = v114;
          v191 = v115;
          v189.i64[0] = v114;
          v189.i64[1] = v114;
          std::__split_buffer<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedSpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v189);
        }

        else
        {
          *v89 = v83;
          v90 = v89 + 1;
        }

        v81[5] = v90;
        v189.i64[0] = v83;
        v116 = v81[15];
        if (!v116)
        {
          goto LABEL_140;
        }

        (*(*v116 + 48))(v116, &v189);
        v117 = *(v83 + 17);
        *(v117 + 24) = 0;
        v118 = *a4;
        *(v117 + 16) = *a4;
        v119 = *(v83 + 29);
        v120 = a4[1];
        if (v120)
        {
          atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
        }

        v121 = *(v119 + 24);
        *(v119 + 16) = v118;
        *(v119 + 24) = v120;
        if (v121)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v121);
        }

        **(v83 + 21) = *v72;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v83 + 17) + 32));
        v122 = 0;
        v123 = v193;
        *v193 = v76;
        v123->f32[1] = v75;
        v124 = *a2;
        v125 = *a2 + 92;
        do
        {
          v123[2].i32[v122] = *(v125 + v122 * 4);
          ++v122;
        }

        while (v122 != 3);
        for (i = 0; i != 3; ++i)
        {
          v198.f32[i] = *(v124 + i * 4 + 104) - *(v124 + i * 4 + 92);
        }

        v127 = fmaxf(v199, 0.0);
        v123[4] = vmaxnm_f32(v198, 0);
        v123[5].f32[0] = v127;
        ggl::BufferMemory::~BufferMemory(&v189);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v83 + 17) + 48));
        v128 = 0;
        v129 = v193;
        *v193 = v180.n128_u64[0];
        v129[2] = v180.n128_f32[2];
        v129[3] = v69;
        do
        {
          v129[v128 + 92] = *(a8 + v128 * 4);
          ++v128;
        }

        while (v128 != 3);
        v129[89] = 1.0;
        v129[88] = v77;
        v129[64] = v48;
        v129[65] = v78;
        ggl::BufferMemory::~BufferMemory(&v189);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v83 + 17) + 64));
        v130 = v193;
        *v193 = v79;
        v130[1] = v80;
        ggl::BufferMemory::~BufferMemory(&v189);
        v131 = *(v83 + 17);
        *(v131 + 88) = 0;
        v132 = *v178;
        *(v131 + 80) = *v178;
        v133 = *(v83 + 29);
        v134 = *(v178 + 1);
        if (v134)
        {
          atomic_fetch_add_explicit((v134 + 8), 1uLL, memory_order_relaxed);
        }

        v135 = *(v133 + 88);
        *(v133 + 80) = v132;
        *(v133 + 88) = v134;
        if (v135)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v135);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v83 + 17), *(v83 + 29), *a5, a5[1]);
        if (v177)
        {
          v136 = *(a1 + 200);
          v189.i64[0] = *(a1 + 192);
          v189.i64[1] = v136;
          if (!v136)
          {
            v164 = v83;
LABEL_121:
            ggl::PipelineSetup::setState(v164, &v189);
            goto LABEL_122;
          }

          atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
          v137 = v83;
LABEL_118:
          ggl::PipelineSetup::setState(v137, &v189);
          std::__shared_weak_count::__release_shared[abi:nn200100](v136);
        }
      }

      else
      {
        v84 = *(a1 + 16);
        v85 = v84[1];
        if (v85 == *v84)
        {
          v98 = v84[11];
          if (!v98)
          {
            goto LABEL_140;
          }

          v30 = (*(*v98 + 48))(v98);
          v86 = v30;
        }

        else
        {
          v86 = *(v85 - 8);
          v84[1] = v85 - 8;
        }

        v100 = v84[5];
        v99 = v84[6];
        v186 = v74;
        if (v100 >= v99)
        {
          v102 = v84[4];
          v103 = (v100 - v102) >> 3;
          if ((v103 + 1) >> 61)
          {
            goto LABEL_141;
          }

          v104 = v99 - v102;
          v105 = v104 >> 2;
          if (v104 >> 2 <= (v103 + 1))
          {
            v105 = v103 + 1;
          }

          if (v104 >= 0x7FFFFFFFFFFFFFF8)
          {
            v106 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v106 = v105;
          }

          v192 = v84 + 7;
          if (v106)
          {
            v107 = ggl::zone_mallocator::instance(v30);
            v108 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::SpecularLandmark::LandmarkPipelineSetup *>(v107, v106);
          }

          else
          {
            v108 = 0;
          }

          v139 = &v108[8 * v106];
          v138 = &v108[8 * v103];
          *v138 = v86;
          v101 = v138 + 1;
          v140 = v84[4];
          v141 = v84[5] - v140;
          v142 = v138 - v141;
          memcpy(v138 - v141, v140, v141);
          v143 = v84[4];
          v84[4] = v142;
          v84[5] = v101;
          v144 = v84[6];
          v84[6] = v139;
          v190 = v143;
          v191 = v144;
          v189.i64[0] = v143;
          v189.i64[1] = v143;
          std::__split_buffer<ggl::SpecularLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::SpecularLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v189);
        }

        else
        {
          *v100 = v86;
          v101 = v100 + 1;
        }

        v84[5] = v101;
        v189.i64[0] = v86;
        v145 = v84[15];
        if (!v145)
        {
LABEL_140:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_141:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v145 + 48))(v145, &v189);
        v146 = *(v86 + 17);
        *(v146 + 24) = 0;
        v147 = *a4;
        *(v146 + 16) = *a4;
        v148 = *(v86 + 29);
        v149 = a4[1];
        if (v149)
        {
          atomic_fetch_add_explicit((v149 + 8), 1uLL, memory_order_relaxed);
        }

        v150 = *(v148 + 24);
        *(v148 + 16) = v147;
        *(v148 + 24) = v149;
        if (v150)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v150);
        }

        **(v86 + 21) = *v72;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v86 + 17) + 32));
        v151 = 0;
        v152 = v193;
        *v193 = v76;
        v152->f32[1] = v75;
        v153 = *a2;
        v154 = *a2 + 92;
        do
        {
          v152[2].i32[v151] = *(v154 + v151 * 4);
          ++v151;
        }

        while (v151 != 3);
        for (j = 0; j != 3; ++j)
        {
          v198.f32[j] = *(v153 + j * 4 + 104) - *(v153 + j * 4 + 92);
        }

        v156 = fmaxf(v199, 0.0);
        v152[4] = vmaxnm_f32(v198, 0);
        v152[5].f32[0] = v156;
        ggl::BufferMemory::~BufferMemory(&v189);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v86 + 17) + 48));
        v157 = 0;
        v158 = v193;
        *v193 = v180.n128_u64[0];
        v158[2] = v180.n128_f32[2];
        v158[3] = v69;
        do
        {
          v158[v157 + 92] = *(a8 + v157 * 4);
          ++v157;
        }

        while (v157 != 3);
        v158[89] = 1.0;
        v158[88] = v77;
        v158[64] = v48;
        v158[65] = v78;
        ggl::BufferMemory::~BufferMemory(&v189);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v189, *(*(v86 + 17) + 64));
        v159 = v193;
        *v193 = v79;
        v159[1] = v80;
        ggl::BufferMemory::~BufferMemory(&v189);
        v160 = *(v86 + 17);
        *(v160 + 88) = 0;
        v161 = *v178;
        *(v160 + 80) = *v178;
        v162 = *(v86 + 29);
        v163 = *(v178 + 1);
        if (v163)
        {
          atomic_fetch_add_explicit((v163 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = *(v162 + 88);
        *(v162 + 80) = v161;
        *(v162 + 88) = v163;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v30);
        }

        v183 = v86;
        if (v177)
        {
          v136 = *(a1 + 184);
          v189.i64[0] = *(a1 + 176);
          v189.i64[1] = v136;
          if (!v136)
          {
            v164 = v86;
            goto LABEL_121;
          }

          atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
          v137 = v86;
          goto LABEL_118;
        }
      }

LABEL_122:
      v165 = v72[2];
      v166 = v72[3];
      v182 = v72;
      if (v165 != v166)
      {
        if (v183)
        {
          v167 = v183;
        }

        else
        {
          v167 = v186;
        }

        do
        {
          v168 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(a1 + 88));
          v168[3] = a3;
          v168[4] = v167;
          v168[8] = *v165;
          v168[6] = 2;
          ggl::Batcher::clearRanges((a1 + 280));
          v171 = v165[1];
          v170 = v165[2];
          while (v171 != v170)
          {
            std::function<BOOL ()(unsigned long long)>::operator()(*(a18 + 24), *(v171 + 16));
            if (v172)
            {
              ggl::Batcher::addRange(a1 + 280, v171);
            }

            v171 += 24;
          }

          v173 = ggl::Batcher::commit((a1 + 280), 0, v169);
          v174 = *v173;
          v168[11] = *v173;
          v168[12] = (v173[1] - v174) >> 4;
          v189.i64[0] = v168;
          v30 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a7 + 72), &v189);
          v165 += 4;
        }

        while (v165 != v166);
      }

      v73 = v183;
      v72 = v182 + 5;
      v74 = v186;
    }

    while (v182 + 5 != v176);
  }

  if (v197 == 1)
  {
    (*(*v194 + 56))(v194, v31, v70);
  }

  if (v196)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v196);
  }

  if (v195)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v195);
  }
}

void sub_1B3147284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, __n128 a5, double a6)
{
  if (a4 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, *(*a3 + 24), 303, v9, 2u, 0, a5, a6);
  v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v12)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 500, v9, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v11, v10);
}

void md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(uint64_t a1, char *a2, uint64_t a3, unsigned int a4, __n128 a5, double a6)
{
  if (a4 >= 0x17)
  {
    v9 = 23;
  }

  else
  {
    v9 = a4;
  }

  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<geo::Color<unsigned short,4,(geo::ColorSpace)0>>(&v12, *(*a3 + 24), 162, v9, 2u, 0, a5, a6);
  v11 = vmulq_f32(vcvtq_f32_u32(vmovl_u16(v12)), vdupq_n_s32(0x37800080u));
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(*(*a3 + 24), 496, v9, 2u, 0);
  md::AccessibilityHelper::luminanceAdjustedColor(a1, *a2, &v11, v10);
}

void generateDiffuseRenderItemsForLandmarkGroup(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, char a14, unsigned __int8 a15, char a16, char a17, uint64_t a18)
{
  v26 = 56;
  if (a17 == 1)
  {
    v26 = 72;
  }

  v27 = (*a2 + v26);
  v28 = *v27;
  v29 = v27[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v187, v28, v29);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v30 = md::LayoutContext::get<md::LightingLogicContext>(*(a6 + 8));
  v171 = v30;
  if (v190 != 1)
  {
    v47 = 0uLL;
    v48 = 1.0;
    v49 = 0.065;
    v31.n128_u64[0] = 0x401F800000000000;
    goto LABEL_41;
  }

  v32 = gdc::ServiceLocator::resolve<md::AccessibilityHelper>(**(a6 + 16), *(*(a6 + 16) + 8));
  v35 = v187[3];
  if (a12 >= 0x17)
  {
    v36 = 23;
  }

  else
  {
    v36 = a12;
  }

  v37 = *v35;
  v177 = v32;
  if (*v35 && (v33.n128_u32[0] = *v37, LODWORD(v34) = 1.0, LODWORD(v37) = *v37 == 1.0, *(v35 + 10) == 1) && (v33.n128_f32[0] != 0.0 ? (v38 = v33.n128_f32[0] == 1.0) : (v38 = 1), !v38) || (v39 = *(v35 + v37 + 11), v39 == 2))
  {
    v40 = *(v35 + 16);
    if (v40)
    {
      v41 = *(v40 + 72);
      if (v41)
      {
        v42 = *v41 + 120 * *(v41 + v36 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v42, 0x12Fu) != *(v42 + 12))
        {
          goto LABEL_33;
        }
      }

      if (*(v35 + 56))
      {
        v43 = *(v35 + 48);
        v44 = 8 * *(v35 + 56);
        while (1)
        {
          v45 = *(*v43 + 72);
          if (v45)
          {
            v46 = *v45 + 120 * *(v45 + v36 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v46, 0x12Fu) != *(v46 + 12))
            {
              goto LABEL_33;
            }
          }

          v43 += 8;
          v39 = 1;
          v44 -= 8;
          if (!v44)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v39 = 1;
  }

LABEL_30:
  v50 = *(v35 + 16 * v39 + 16);
  if (!v50)
  {
LABEL_39:
    md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)162,(gss::PropertyID)496>(&v182, v177, &v187, a12, v33, v34);
    goto LABEL_40;
  }

  v51 = *(v50 + 72);
  if (!v51 || (v52 = *v51 + 120 * *(v51 + v36 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v52, 0x12Fu) == *(v52 + 12)))
  {
    v53 = v35 + 16 * v39;
    if (*(v53 + 56))
    {
      v54 = *(v53 + 48);
      v55 = 8 * *(v53 + 56);
      while (1)
      {
        v56 = *(*v54 + 72);
        if (v56)
        {
          v57 = *v56 + 120 * *(v56 + v36 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v57, 0x12Fu) != *(v57 + 12))
          {
            goto LABEL_33;
          }
        }

        v54 += 8;
        v55 -= 8;
        if (!v55)
        {
          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

LABEL_33:
  md::AccessibilityHelper::adjustedColorAtZ<(gss::PropertyID)303,(gss::PropertyID)500>(&v182, v177, &v187, a12, v33, v34);
LABEL_40:
  v178 = v182;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v187[3], 299, v36, 2u, 0);
  v59 = v58;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v187[3], 311, v36, 2u, 0);
  v61 = v60;
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v187[3], 330, v36, 2u, 0);
  v49 = v62;
  v48 = v59 + ((v61 - v59) * a10);
  v30 = gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v187[3], 331, v36, 2u, 0);
  v31.n128_f64[0] = v31.n128_f32[0];
  v47 = v178;
LABEL_41:
  v64 = vmulq_n_f32(v47, a13 * a10);
  v173 = v64;
  v63 = vmuls_lane_f32(a9, v64, 3);
  v64.n128_f64[0] = v63;
  if (v63 <= 0.999)
  {
    v65 = 1;
  }

  else
  {
    v65 = a15;
  }

  v170 = v65;
  v66 = *(*a2 + 32);
  v169 = *(*a2 + 40);
  if (v66 != v169)
  {
    v67 = 0;
    v68 = 0;
    v69 = fmaxf(a11, 0.1);
    v70 = fmaxf(a10, 0.1);
    v71 = 1.0 - v48;
    v72 = v49 * 40075017.0 / (v31.n128_f64[0] * (1 << a14));
    v73 = 1.0 - v49;
    do
    {
      if (a16)
      {
        v74 = *(a1 + 8);
        v75 = v74[1];
        if (v75 == *v74)
        {
          v80 = v74[11];
          if (!v80)
          {
            goto LABEL_137;
          }

          v30 = (*(*v80 + 48))(v80);
          v76 = v30;
        }

        else
        {
          v76 = *(v75 - 8);
          v74[1] = v75 - 8;
        }

        v82 = v74[5];
        v81 = v74[6];
        v179 = v68;
        if (v82 >= v81)
        {
          v84 = v74[4];
          v85 = (v82 - v84) >> 3;
          if ((v85 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v86 = v81 - v84;
          v87 = v86 >> 2;
          if (v86 >> 2 <= (v85 + 1))
          {
            v87 = v85 + 1;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v88 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v88 = v87;
          }

          v185 = v74 + 7;
          if (v88)
          {
            v89 = ggl::zone_mallocator::instance(v30);
            v90 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::DiffuseLandmark::BuildingPipelineSetup *>(v89, v88);
          }

          else
          {
            v90 = 0;
          }

          v103 = &v90[8 * v88];
          v102 = &v90[8 * v85];
          *v102 = v76;
          v83 = v102 + 1;
          v104 = v74[4];
          v105 = v74[5] - v104;
          v106 = v102 - v105;
          memcpy(v102 - v105, v104, v105);
          v107 = v74[4];
          v74[4] = v106;
          v74[5] = v83;
          v108 = v74[6];
          v74[6] = v103;
          v183 = v107;
          v184 = v108;
          v182.i64[0] = v107;
          v182.i64[1] = v107;
          std::__split_buffer<ggl::DiffuseLandmark::BuildingPipelineSetup *,geo::allocator_adapter<ggl::DiffuseLandmark::BuildingPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v182);
        }

        else
        {
          *v82 = v76;
          v83 = v82 + 1;
        }

        v74[5] = v83;
        v182.i64[0] = v76;
        v109 = v74[15];
        if (!v109)
        {
          goto LABEL_137;
        }

        (*(*v109 + 48))(v109, &v182);
        v110 = *(v76 + 17);
        *(v110 + 24) = 0;
        v111 = *a4;
        *(v110 + 16) = *a4;
        v112 = *(v76 + 29);
        v113 = a4[1];
        if (v113)
        {
          atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
        }

        v114 = *(v112 + 24);
        *(v112 + 16) = v111;
        *(v112 + 24) = v113;
        if (v114)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v114);
        }

        **(v76 + 21) = *v66;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v76 + 17) + 32));
        v115 = 0;
        v116 = v186;
        *v186 = v70;
        v116->f32[1] = v69;
        v117 = *a2;
        v118 = *a2 + 92;
        do
        {
          v116[2].i32[v115] = *(v118 + v115 * 4);
          ++v115;
        }

        while (v115 != 3);
        for (i = 0; i != 3; ++i)
        {
          v191.f32[i] = *(v117 + i * 4 + 104) - *(v117 + i * 4 + 92);
        }

        v120 = fmaxf(v192, 0.0);
        v116[4] = vmaxnm_f32(v191, 0);
        v116[5].f32[0] = v120;
        ggl::BufferMemory::~BufferMemory(&v182);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v76 + 17) + 48));
        v121 = 0;
        v122 = v186;
        *v186 = v173.n128_u64[0];
        v122[2] = v173.n128_f32[2];
        v122[3] = v63;
        do
        {
          v122[v121 + 92] = *(a8 + v121 * 4);
          ++v121;
        }

        while (v121 != 3);
        v122[89] = 1.0;
        v122[88] = v71;
        ggl::BufferMemory::~BufferMemory(&v182);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v76 + 17) + 64));
        v123 = v186;
        *v186 = v72;
        v123[1] = v73;
        ggl::BufferMemory::~BufferMemory(&v182);
        v124 = *(v76 + 17);
        *(v124 + 88) = 0;
        v125 = *v171;
        *(v124 + 80) = *v171;
        v126 = *(v76 + 29);
        v127 = *(v171 + 1);
        if (v127)
        {
          atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
        }

        v30 = *(v126 + 88);
        *(v126 + 80) = v125;
        *(v126 + 88) = v127;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v30);
        }

        v176 = v76;
        if (v170)
        {
          v128 = *(a1 + 248);
          v182.i64[0] = *(a1 + 240);
          v182.i64[1] = v128;
          if (!v128)
          {
            v157 = v76;
LABEL_118:
            ggl::PipelineSetup::setState(v157, &v182);
            goto LABEL_119;
          }

          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          v129 = v76;
LABEL_115:
          ggl::PipelineSetup::setState(v129, &v182);
          std::__shared_weak_count::__release_shared[abi:nn200100](v128);
        }
      }

      else
      {
        v77 = *(a1 + 32);
        v78 = v77[1];
        if (v78 == *v77)
        {
          v91 = v77[11];
          if (!v91)
          {
            goto LABEL_137;
          }

          v30 = (*(*v91 + 48))(v91);
          v79 = v30;
        }

        else
        {
          v79 = *(v78 - 8);
          v77[1] = v78 - 8;
        }

        v93 = v77[5];
        v92 = v77[6];
        v176 = v67;
        v179 = v79;
        if (v93 >= v92)
        {
          v95 = v77[4];
          v96 = (v93 - v95) >> 3;
          if ((v96 + 1) >> 61)
          {
            goto LABEL_138;
          }

          v97 = v92 - v95;
          v98 = v97 >> 2;
          if (v97 >> 2 <= (v96 + 1))
          {
            v98 = v96 + 1;
          }

          if (v97 >= 0x7FFFFFFFFFFFFFF8)
          {
            v99 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v99 = v98;
          }

          v185 = v77 + 7;
          if (v99)
          {
            v100 = ggl::zone_mallocator::instance(v30);
            v101 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *>(v100, v99);
          }

          else
          {
            v101 = 0;
          }

          v131 = &v101[8 * v99];
          v130 = &v101[8 * v96];
          *v130 = v79;
          v94 = v130 + 1;
          v132 = v77[4];
          v133 = v77[5] - v132;
          v134 = v130 - v133;
          memcpy(v130 - v133, v132, v133);
          v135 = v77[4];
          v77[4] = v134;
          v77[5] = v94;
          v136 = v77[6];
          v77[6] = v131;
          v183 = v135;
          v184 = v136;
          v182.i64[0] = v135;
          v182.i64[1] = v135;
          std::__split_buffer<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,geo::allocator_adapter<ggl::FoggedDiffuseLandmark::LandmarkPipelineSetup *,ggl::zone_mallocator> &>::~__split_buffer(&v182);
        }

        else
        {
          *v93 = v79;
          v94 = v93 + 1;
        }

        v77[5] = v94;
        v182.i64[0] = v79;
        v137 = v77[15];
        if (!v137)
        {
LABEL_137:
          std::__throw_bad_function_call[abi:nn200100]();
LABEL_138:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        (*(*v137 + 48))(v137, &v182);
        v138 = *(v79 + 17);
        *(v138 + 24) = 0;
        v139 = *a4;
        *(v138 + 16) = *a4;
        v140 = *(v79 + 29);
        v141 = a4[1];
        if (v141)
        {
          atomic_fetch_add_explicit((v141 + 8), 1uLL, memory_order_relaxed);
        }

        v142 = *(v140 + 24);
        *(v140 + 16) = v139;
        *(v140 + 24) = v141;
        if (v142)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v142);
        }

        **(v79 + 21) = *v66;
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v79 + 17) + 32));
        v143 = 0;
        v144 = v186;
        *v186 = v70;
        v144->f32[1] = v69;
        v145 = *a2;
        v146 = *a2 + 92;
        do
        {
          v144[2].i32[v143] = *(v146 + v143 * 4);
          ++v143;
        }

        while (v143 != 3);
        for (j = 0; j != 3; ++j)
        {
          v191.f32[j] = *(v145 + j * 4 + 104) - *(v145 + j * 4 + 92);
        }

        v148 = fmaxf(v192, 0.0);
        v144[4] = vmaxnm_f32(v191, 0);
        v144[5].f32[0] = v148;
        ggl::BufferMemory::~BufferMemory(&v182);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v79 + 17) + 48));
        v149 = 0;
        v150 = v186;
        *v186 = v173.n128_u64[0];
        v150[2] = v173.n128_f32[2];
        v150[3] = v63;
        do
        {
          v150[v149 + 92] = *(a8 + v149 * 4);
          ++v149;
        }

        while (v149 != 3);
        v150[89] = 1.0;
        v150[88] = v71;
        ggl::BufferMemory::~BufferMemory(&v182);
        ggl::DataAccess<ggl::ManeuverPoint::Style>::DataAccess(&v182, *(*(v79 + 17) + 64));
        v151 = v186;
        *v186 = v72;
        v151[1] = v73;
        ggl::BufferMemory::~BufferMemory(&v182);
        v152 = *(v79 + 17);
        *(v152 + 88) = 0;
        v153 = *v171;
        *(v152 + 80) = *v171;
        v154 = *(v79 + 29);
        v155 = *(v171 + 1);
        if (v155)
        {
          atomic_fetch_add_explicit((v155 + 8), 1uLL, memory_order_relaxed);
        }

        v156 = *(v154 + 88);
        *(v154 + 80) = v153;
        *(v154 + 88) = v155;
        if (v156)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v156);
        }

        ggl::ColorGlyphWithNormalHalo::DefaultPipelineSetup::setViewConstantData(*(v79 + 17), *(v79 + 29), *a5, a5[1]);
        if (v170)
        {
          v128 = *(a1 + 264);
          v182.i64[0] = *(a1 + 256);
          v182.i64[1] = v128;
          if (!v128)
          {
            v157 = v79;
            goto LABEL_118;
          }

          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          v129 = v79;
          goto LABEL_115;
        }
      }

LABEL_119:
      v158 = v66[2];
      v159 = v66[3];
      v175 = v66;
      if (v158 != v159)
      {
        if (v176)
        {
          v160 = v176;
        }

        else
        {
          v160 = v179;
        }

        do
        {
          v161 = ggl::FragmentedPool<ggl::RenderItem>::pop(*(a1 + 88));
          v161[3] = a3;
          v161[4] = v160;
          v161[8] = *v158;
          v161[6] = 2;
          ggl::Batcher::clearRanges((a1 + 280));
          v164 = v158[1];
          v163 = v158[2];
          while (v164 != v163)
          {
            std::function<BOOL ()(unsigned long long)>::operator()(*(a18 + 24), *(v164 + 16));
            if (v165)
            {
              ggl::Batcher::addRange(a1 + 280, v164);
            }

            v164 += 24;
          }

          v166 = ggl::Batcher::commit((a1 + 280), 0, v162);
          v167 = *v166;
          v161[11] = *v166;
          v161[12] = (v166[1] - v167) >> 4;
          v182.i64[0] = v161;
          v30 = std::vector<ggl::RenderItem *,geo::allocator_adapter<ggl::RenderItem *,ggl::zone_mallocator>>::push_back[abi:nn200100]((a7 + 72), &v182);
          v158 += 4;
        }

        while (v158 != v159);
      }

      v67 = v176;
      v66 = v175 + 5;
      v68 = v179;
    }

    while (v175 + 5 != v169);
  }

  if (v190 == 1)
  {
    (*(*v187 + 56))(v187, v31, v64);
  }

  if (v189)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v189);
  }

  if (v188)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v188);
  }
}

void sub_1B3147FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a34);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a32);
  }

  _Unwind_Resume(exception_object);
}

void *md::BuildingRenderLayer::layout3DLandmarks(void *a1, uint64_t **a2, uint64_t a3, uint64_t a4, int a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  v9 = gdc::Context::get<md::SkyLogicContext>(v8);
  gdc::Context::context<md::PolygonContext>(v8);
  result = md::LayoutContext::get<md::VenueLogicContext>(v8);
  if (v9)
  {
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    if (a1[55])
    {
      v14 = a1[54];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      a1[54] = 0;
      v16 = a1[53];
      if (v16)
      {
        for (i = 0; i != v16; ++i)
        {
          *(a1[52] + 8 * i) = 0;
        }
      }

      a1[55] = 0;
    }

    if (a5 != 1 || (md::LayoutContext::zoomAtCentrePoint(*(a4 + 8)), (1.0 - fminf(fmaxf((v11 * 2.0) + -31.0, 0.0), 1.0)) >= 0.00000011921))
    {
      md::LayoutContext::get<md::CameraContext>(*(a4 + 8));
      if (*a2 != a2[1])
      {
        v12 = 224;
        if (a5 == 1)
        {
          v12 = 488;
        }

        v13 = *(**a2 + v12 + 8);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        }

        if (a5)
        {
          operator new();
        }

        operator new();
      }
    }

    return std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v19);
  }

  return result;
}

void sub_1B31489C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 256);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 224);
  std::__function::__value_func<BOOL ()(unsigned long long)>::~__value_func[abi:nn200100](v44 - 192);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(&a43);
  _Unwind_Resume(a1);
}

md::LabelPart *md::TransitAccessPointLabelFeature::newGraphicAnnotationPart(uint64_t a1, uint64_t *a2)
{
  v3[9] = *MEMORY[0x1E69E9840];
  if (*(a1 + 720) != *(a1 + 728))
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v3);
  }

  return 0;
}

char *md::TransitAccessPointLabelFeature::newIconPart(uint64_t *a1, uint64_t *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a2[8];
  if (v4 && *(v4 + 72))
  {
    v15 = 0;
    *&__dst = 0;
    v5 = atomic_load((*a2 + 3426));
    geo::codec::featureGetNativeShield(v4, 0, &__dst, &v15, 0);
    v6 = localizedLabel(&v22, v4, __dst, v5 & 1, 0);
    v7 = v15;
    if (v15)
    {
      v8 = a2[2];
      v9 = *(v8 + 296);
      if (!v9)
      {
        v10 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
        v9 = *v10;
        *(v8 + 296) = *v10;
      }

      v18 = v24;
      if (SHIBYTE(v23) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v22, *(&v22 + 1));
      }

      else
      {
        __dst = v22;
        v17 = v23;
      }

      v19 = v7;
      v20 = *(v9 + 72);
      v21 = 2;
      md::LabelStyle::shieldIcon(&v14, a2[2], *a2, a2[1], &__dst, 1, -1);
    }

    if (SHIBYTE(v23) < 0)
    {
      v11 = v22;
      v12 = mdm::zone_mallocator::instance(v6);
      geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v12, v11);
    }
  }

  return md::PointLabelFeature::newIconPart(a1, a2);
}

void sub_1B3148F84(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v30, v28);
  v31 = a11;
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a11);
  }

  if (a18 < 0)
  {
    v32 = mdm::zone_mallocator::instance(v31);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v32, a13);
  }

  if (a28 < 0)
  {
    v33 = mdm::zone_mallocator::instance(v31);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v33, a23);
  }

  _Unwind_Resume(a1);
}

void md::TransitAccessPointLabelFeature::populateStyleQueries(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if ((*(*a1 + 496))(a1) && (*(*a1 + 488))(a1, 0))
  {
    operator new();
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v4 = (*(*a1 + 560))(a1, &v19);
  if (*(a1 + 752) == 1)
  {
    v5 = v20;
    if (v20 >= v21)
    {
      v7 = (v20 - v19) >> 3;
      if ((v7 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v8 = (v21 - v19) >> 2;
      if (v8 <= v7 + 1)
      {
        v8 = v7 + 1;
      }

      if ((v21 - v19) >= 0x7FFFFFFFFFFFFFF8)
      {
        v9 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      v18[4] = v22;
      if (v9)
      {
        v10 = mdm::zone_mallocator::instance(v4);
        v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<GeoCodecsFeatureStylePair>(v10, v9);
      }

      else
      {
        v11 = 0;
      }

      v13 = &v11[8 * v9];
      v12 = &v11[8 * v7];
      *v12 = 0x200010007;
      v6 = v12 + 8;
      v14 = &v12[-(v20 - v19)];
      memcpy(v14, v19, v20 - v19);
      v15 = v19;
      v16 = v21;
      v19 = v14;
      v20 = v6;
      v21 = v13;
      v18[2] = v15;
      v18[3] = v16;
      v18[0] = v15;
      v18[1] = v15;
      std::__split_buffer<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator> &>::~__split_buffer(v18);
    }

    else
    {
      *v20 = 0x200010007;
      v6 = v5 + 8;
    }

    v20 = v6;
  }

  std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,FeatureStyleAttributes const&,0>(v18, *(a1 + 696));
}

void sub_1B3149308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](va1);
  std::unique_ptr<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::reset[abi:nn200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t md::TransitAccessPointLabelFeature::updateDynamicStyling(md::TransitAccessPointLabelFeature *this, md::LabelManager *a2, md::Label *a3)
{
  v5 = (*(**(*(a2 + 21) + 64) + 8))(*(*(a2 + 21) + 64));
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 328);
  if (!v6)
  {
    goto LABEL_11;
  }

  v6 = v6[20];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(this + 89);
  while (1)
  {
    v8 = v6[4];
    if (v8 <= v7)
    {
      break;
    }

LABEL_8:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  if (v8 < v7)
  {
    ++v6;
    goto LABEL_8;
  }

  LODWORD(v6) = 1;
LABEL_11:
  if (*(this + 752) != v6)
  {
    *(this + 752) = v6;
    (*(*this + 552))(this, a2);
  }

  return 0;
}

void md::TransitAccessPointLabelFeature::~TransitAccessPointLabelFeature(md::TransitAccessPointLabelFeature *this)
{
  *this = &unk_1F2A37460;
  std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 720));
  md::PointLabelFeature::~PointLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37460;
  std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((this + 720));

  md::PointLabelFeature::~PointLabelFeature(this);
}

void std::vector<md::TransitAccessPointLabelFeature::AccessPointType,geo::allocator_adapter<md::TransitAccessPointLabelFeature::AccessPointType,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitAccessPointLabelFeature::AccessPointType>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitAccessPointLabelFeature::AccessPointType>(uint64_t a1, void *a2)
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

void non-virtual thunk toggl::VertexDataTyped<ggl::PolygonCommonStroke::DefaultVbo>::~VertexDataTyped(uint64_t a1)
{
  ggl::VertexData::~VertexData((a1 - 200));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::VertexData::~VertexData((a1 - 200));
}

void ggl::VertexDataTyped<ggl::PolygonCommonStroke::DefaultVbo>::~VertexDataTyped(ggl::VertexData *a1)
{
  ggl::VertexData::~VertexData(a1);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::PolygonCommonStroke::MeshMesh::~MeshMesh(ggl::PolygonCommonStroke::MeshMesh *this)
{
  ggl::Mesh::~Mesh((this - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((this - 16));
}

void ggl::PolygonCommonStroke::MeshMesh::~MeshMesh(ggl::PolygonCommonStroke::MeshMesh *this)
{
  ggl::Mesh::~Mesh(this);

  JUMPOUT(0x1B8C62190);
}

void non-virtual thunk toggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::~MeshTyped(uint64_t a1)
{
  ggl::Mesh::~Mesh((a1 - 16));

  JUMPOUT(0x1B8C62190);
}

{
  ggl::Mesh::~Mesh((a1 - 16));
}

void ggl::MeshTyped<ggl::PolygonCommonStroke::DefaultVbo>::~MeshTyped(ggl::Mesh *a1)
{
  ggl::Mesh::~Mesh(a1);

  JUMPOUT(0x1B8C62190);
}

void ***std::unique_ptr<ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>>::~unique_ptr[abi:nn200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v4);
    MEMORY[0x1B8C62190](v2, 0x20C40D2EA512BLL);
  }

  return a1;
}

void std::vector<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,geo::allocator_adapter<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::PolygonShadowedStroke::ShadowPathMesh>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void std::vector<std::unique_ptr<ggl::Glow::MeshMesh>,geo::allocator_adapter<std::unique_ptr<ggl::Glow::MeshMesh>,ggl::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](void ***result)
{
  v1 = *result;
  v2 = **result;
  if (v2)
  {
    v3 = v1[1];
    v4 = **result;
    if (v3 != v2)
    {
      v5 = result;
      do
      {
        v6 = *--v3;
        result = v6;
        *v3 = 0;
        if (v6)
        {
          result = ((*result)[1])(result);
        }
      }

      while (v3 != v2);
      v4 = **v5;
    }

    v1[1] = v2;
    v7 = ggl::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Glow::MeshMesh>>(v7, v4);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<std::unique_ptr<ggl::Glow::MeshMesh>>(uint64_t a1, void *a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  if (a2)
  {
    atomic_fetch_add((a1 + 24), 0xFFFFFFFF);
  }

  malloc_zone_free(*a1, a2);

  geo::read_write_lock::unlock((a1 + 32));
}

void md::CoastlineGroup::addCoastlineFeature(uint64_t a1, uint64_t a2)
{
  v202 = a1;
  v220 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 96);
  if (v2)
  {
    v3 = a2;
    v4 = 0;
    v192 = 0.000011921;
    v191 = 1.1755e-38;
    v206 = 65535.0;
    v190 = a2;
    v189 = v2;
    while (1)
    {
      v217 = 0;
      v5 = geo::codec::multiSectionFeaturePoints(v3, v4, &v217);
      if (v217 >= 2)
      {
        break;
      }

LABEL_92:
      if (++v4 == v2)
      {
        return;
      }
    }

    v6 = v5;
    v204 = v217;
    v7 = *v5;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    v11 = *(v202 + 16);
    v12 = *(*(v11 + 8) - 8);
    v13 = **(v12 + 64);
    v14 = (*(v13 + 6) - *(v13 + 5)) / *(v13 + 1);
    v207 = (v217 - 1);
    v15 = v14 + 4 * (v217 - 1);
    if (v15 >= 0x10000)
    {
      ggl::MeshVendor<ggl::PolygonShadowedStroke::ShadowPathMesh>::_allocateNewMesh(v11);
    }

    v16 = 1.0 / sqrtf(((v9 - v7) * (v9 - v7)) + ((v10 - v8) * (v10 - v8)));
    v17 = v16 * (v10 - v8);
    v18 = -((v9 - v7) * v16);
    v19 = 6 * v207;
    ggl::BufferData::resize(v13, v15);
    v20 = **(v12 + 64);
    ggl::BufferMemory::BufferMemory(&v215);
    ggl::ResourceAccessor::accessIndexData(v218, 0, v20, v14, v15, 1, 0);
    ggl::BufferMemory::operator=(&v215, v218);
    ggl::BufferMemory::~BufferMemory(v218);
    v21 = *(v12 + 96);
    v22 = (*(v21 + 6) - *(v21 + 5)) / *(v21 + 1);
    ggl::BufferData::resize(v21, v22 + v19);
    v203 = v19;
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v213, v21, v22, v22 + v19, 1, 0, 0);
    v23 = v17;
    v24 = v18;
    if (v216)
    {
      v23 = v17;
      v24 = v18;
      if (v214)
      {
        v25 = (v214 + 6);
        v26 = &v6[1];
        v27 = (v216 + 16);
        v28 = v207;
        v29 = v206;
        do
        {
          v30 = *(v26 - 2);
          v31 = *(v26 - 1);
          v32 = *v26;
          v33 = v26[1];
          v26 += 2;
          v34 = 1.0 / sqrtf(((v32 - v30) * (v32 - v30)) + ((v33 - v31) * (v33 - v31)));
          v35 = v34 * (v32 - v30);
          v23 = v34 * (v33 - v31);
          v36 = (v30 * v29);
          v37 = (v31 * v29);
          *(v27 - 8) = v36;
          *(v27 - 7) = v37;
          *(v27 - 4) = v36;
          v38 = (v32 * v29);
          v39 = (v33 * v29);
          *(v27 - 3) = v37;
          *v27 = v38;
          v27[4] = v38;
          v27[1] = v39;
          v27[5] = v39;
          LOWORD(v38) = (v23 * 127.5 + 127.5) | ((v35 * 127.5 + 127.5) << 8);
          *(v27 - 6) = v38;
          *(v27 - 5) = 0;
          *(v27 - 1) = -1;
          *(v27 - 2) = v38;
          v27[2] = v38;
          v27[3] = 0;
          v27[6] = v38;
          v27[7] = -1;
          *(v25 - 3) = v14;
          *(v25 - 2) = v14 + 1;
          *v25 = v14 + 1;
          *(v25 - 1) = v14 + 2;
          v25[1] = v14 + 3;
          v25[2] = v14 + 2;
          v14 += 4;
          v27 += 16;
          v25 += 6;
          v28 = (v28 - 1);
        }

        while (v28);
        v24 = -v35;
      }
    }

    v40 = +[VKPlatform sharedPlatform];
    v41 = [v40 supportsCoastlineGlows];
    v42 = v207;
    v43 = v41;

    if (!v43)
    {
LABEL_91:
      ggl::BufferMemory::~BufferMemory(v213);
      ggl::BufferMemory::~BufferMemory(&v215);
      goto LABEL_92;
    }

    if ((8 * v42) > 0x2000)
    {
      v46 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
      v45 = v4;
    }

    else
    {
      v45 = v4;
      MEMORY[0x1EEE9AC00](v44);
      v46 = &v185 - ((8 * v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v46, 8 * v42);
    }

    v199 = 8 * v42;
    bzero(v46, 8 * v42);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    do
    {
      if (v49)
      {
        v50 = v6[v47];
        v51 = vsub_f32(v50, v6[v47 - 1]);
      }

      else
      {
        v50 = *v6;
        v51 = vsub_f32(v6[1], *v6);
      }

      v49 = (v49 + 1);
      v52 = vsub_f32(v6[v47 + 1], v50);
      v50.i32[0] = v51.i32[1];
      fanSegmentsBetweenSegments(&v46[v47 * 8 + 4], v51, v50, v52.f32[0], v52.f32[1]);
      *&v46[v47 * 8] = v55;
      v48 += v55;
      ++v47;
    }

    while (v42 != v49);
    v56 = 0;
    v194 = (v23 * 127.0);
    v57 = &v6[v42];
    v58 = 1;
    do
    {
      v59 = v6->f32[v56];
      v60 = v57[v56];
      v61 = vabds_f32(v59, v60);
      v62 = v61 <= (fabsf(v60 + v59) * v192) || v61 <= v191;
      if ((v58 & 1) == 0)
      {
        break;
      }

      v58 = 0;
      v56 = 1;
    }

    while (v62);
    v212 = 0.0;
    v63 = &v6[v204];
    if (v62)
    {
      v64 = v6->f32[1];
      v53.f32[0] = v6->f32[0] - v63[-2].f32[0];
      v54.f32[0] = v64 - v63[-2].f32[1];
      fanSegmentsBetweenSegments(&v212, v53, v54, v6[1].f32[0] - v6->f32[0], v6[1].f32[1] - v64);
      v193 = v65;
      v48 += v65;
    }

    else
    {
      v193 = 0;
    }

    GhostPoint = geo::codec::multiSectionFeatureGetGhostPoint(v3, v45, 0);
    v211 = 0.0;
    v201 = GhostPoint;
    if (GhostPoint)
    {
      v68.i32[0] = HIDWORD(GhostPoint->__vftable);
      v69 = v6->f32[0];
      v70 = v6->f32[1];
      v187 = *&GhostPoint->__vftable;
      v67.f32[0] = v69 - v187;
      v186 = v68.f32[0];
      v68.f32[0] = v70 - v68.f32[0];
      fanSegmentsBetweenSegments(&v211, v67, v68, v6[1].f32[0] - v69, v6[1].f32[1] - v70);
      v195 = v71;
      v48 += v71;
    }

    else
    {
      v195 = 0;
    }

    v72 = geo::codec::multiSectionFeatureGetGhostPoint(v3, v45, v42);
    v210 = 0.0;
    v198 = &v6[v42];
    v196 = v63;
    v197 = v72;
    if (v72)
    {
      v75 = v57[1];
      v73.f32[0] = *v57 - v63[-2].f32[0];
      v74.f32[0] = v75 - v63[-2].f32[1];
      fanSegmentsBetweenSegments(&v210, v73, v74, *v72 - *v57, v72[1] - v75);
      v200 = v76;
      v48 += v76;
      v77 = 2;
    }

    else
    {
      v77 = 0;
      v200 = 0;
    }

    v78 = 2;
    if (!v62)
    {
      v78 = 0;
    }

    v79 = v78 + 2 * v42 + 2 * (v201 != 0) + v77 + v48 + 2;
    v80 = *(*(*(v202 + 24) + 8) - 8);
    v81 = **(v80 + 64);
    v82 = (*(v81 + 6) - *(v81 + 5)) / *(v81 + 1);
    v83 = v82 + v79;
    if ((v82 + v79) >= 0x10000)
    {
      ggl::MeshVendor<ggl::Glow::MeshMesh>::_allocateNewMesh(*(v202 + 24));
    }

    v84 = 3 * v48 + v203;
    ggl::BufferData::resize(v81, v83);
    v85 = **(v80 + 64);
    ggl::BufferMemory::BufferMemory(v208);
    ggl::ResourceAccessor::accessIndexData(v218, 0, v85, v82, v83, 1, 0);
    ggl::BufferMemory::operator=(v208, v218);
    ggl::BufferMemory::~BufferMemory(v218);
    v86 = *(v80 + 96);
    v87 = (*(v86 + 6) - *(v86 + 5)) / *(v86 + 1);
    ggl::BufferData::resize(v86, v84 + v87);
    ggl::DataAccess<ggl::DaVinci::TexturedCompressedVbo>::DataAccess(v218, v86, v87, v84 + v87, 1, 0, 0);
    v4 = v45;
    if (!v209 || !v219)
    {
LABEL_88:
      if (v199 > 0x2000)
      {
        free(v46);
      }

      ggl::BufferMemory::~BufferMemory(v218);
      ggl::BufferMemory::~BufferMemory(v208);
      v3 = v190;
      v2 = v189;
      goto LABEL_91;
    }

    v188 = v45;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    *(&v185 + 1) = v24;
    LODWORD(v185) = (v24 * 127.0);
    v91 = (v17 * 127.0);
    v92 = (v18 * 127.0);
    v203 = v82 + 2;
    v204 = v82;
    v205 = v46;
    do
    {
      v93 = (&v88->~__shared_weak_count + 1);
      v94 = v6[v88];
      v95 = vsub_f32(v6[&v88->~__shared_weak_count + 1], v94);
      v96 = sqrtf(vaddv_f32(vmul_f32(v95, v95)));
      v97 = v206;
      if (v96 == 0.0)
      {
        v98 = 1.0;
        v99 = 0.0;
      }

      else
      {
        v99 = fminf(fmaxf(v95.f32[1] / v96, -1.0), 1.0);
        v98 = fminf(fmaxf(-v95.f32[0] / v96, -1.0), 1.0);
      }

      v100 = &v46[8 * v88];
      v101 = v100[1];
      v102 = *v100;
      v103 = v90 + v82;
      v104 = v219;
      if (v102)
      {
        v105 = 0;
        v106 = v203 + v90;
        v107 = (v219 + 2 * v89 + 4);
        do
        {
          *(v107 - 2) = v103;
          *(v107 - 1) = v106 - 1;
          *v107 = v106;
          v107 += 3;
          v89 += 3;
          ++v105;
          ++v106;
        }

        while (v102 > v105);
        v104 = v219;
      }

      v108 = v89;
      v109 = (v97 * v94.f32[0]);
      v110 = vmuls_lane_f32(v97, v94, 1);
      v111 = (v104 + 2 * v108);
      *v111 = v103;
      v111[1] = v103 + v102 + 3;
      v111[2] = v103 + v102 + 2;
      v111[3] = v103;
      v111[4] = v103 + v102 + 1;
      v111[5] = v103 + v102 + 3;
      v112 = v209 + 8 * v90;
      *v112 = v109;
      *(v112 + 2) = v110;
      *(v112 + 4) = v91;
      *(v112 + 5) = v92;
      *(v112 + 6) = 0;
      v113 = v209 + 8 * v90;
      *(v113 + 8) = v109;
      *(v113 + 10) = v110;
      *(v113 + 12) = v91;
      *(v113 + 13) = v92;
      *(v113 + 14) = 127;
      if (v102)
      {
        v114 = 8 * v90;
        v115 = 1;
        v90 += 2;
        do
        {
          v116 = __sincosf_stret(v101 * v115);
          v117 = v209 + v114;
          *(v117 + 16) = v109;
          *(v117 + 18) = v110;
          *(v117 + 20) = (fminf(fmaxf(-((v116.__sinval * v18) - (v116.__cosval * v17)), -1.0), 1.0) * 127.0);
          *(v117 + 21) = (fminf(fmaxf((v116.__sinval * v17) + (v116.__cosval * v18), -1.0), 1.0) * 127.0);
          *(v117 + 22) = 127;
          ++v90;
          ++v115;
          v114 += 8;
        }

        while (v102 >= v115);
      }

      else
      {
        v90 += 2;
      }

      v89 = v108 + 6;
      v92 = (v98 * 127.0);
      v91 = (v99 * 127.0);
      v88 = v93;
      v18 = v98;
      v17 = v99;
      v46 = v205;
      v82 = v204;
    }

    while (v93 != v207);
    v118 = v206;
    v119 = (*v198 * v206);
    v120 = (v198[1] * v206);
    v121 = v209 + 8 * v90;
    *v121 = v119;
    *(v121 + 2) = v120;
    *(v121 + 4) = v91;
    *(v121 + 5) = v92;
    *(v121 + 6) = 0;
    v122 = v209 + 8 * v90;
    LODWORD(v207) = v119;
    *(v122 + 8) = v119;
    *(v122 + 10) = v120;
    *(v122 + 12) = v91;
    *(v122 + 13) = v92;
    *(v122 + 14) = 127;
    v123 = v90 + 2;
    LODWORD(v203) = v120;
    if (v62)
    {
      v124 = v193;
      if (v193)
      {
        v125 = 0;
        v126 = v82 + v90 + 4;
        v127 = (v219 + 2 * v108 + 16);
        v128 = v200;
        do
        {
          *(v127 - 2) = v123 + v82;
          *(v127 - 1) = v126 - 1;
          *v127 = v126;
          v127 += 3;
          v89 += 3;
          ++v125;
          ++v126;
        }

        while (v124 > v125);
      }

      else
      {
        v128 = v200;
      }

      v129 = v209 + 8 * v123;
      v130 = v207;
      *v129 = v207;
      v131 = v203;
      *(v129 + 2) = v203;
      v132 = v194;
      *(v129 + 4) = v194;
      v133 = v185;
      *(v129 + 5) = v185;
      *(v129 + 6) = 0;
      v134 = v209 + 8 * v90;
      *(v134 + 24) = v130;
      *(v134 + 26) = v131;
      *(v134 + 28) = v132;
      *(v134 + 29) = v133;
      *(v134 + 30) = 127;
      v123 = v90 + 4;
      v135 = *(&v185 + 1);
      if (v124)
      {
        v200 = v128;
        v136 = 8 * v90;
        v137 = 1;
        v138 = v207;
        v139 = v203;
        do
        {
          v140 = __sincosf_stret(v212 * v137);
          v141 = v209 + v136;
          *(v141 + 32) = v138;
          *(v141 + 34) = v139;
          *(v141 + 36) = (fminf(fmaxf(-((v140.__sinval * v135) - (v140.__cosval * v23)), -1.0), 1.0) * 127.0);
          *(v141 + 37) = (fminf(fmaxf((v140.__sinval * v23) + (v140.__cosval * v135), -1.0), 1.0) * 127.0);
          *(v141 + 38) = 127;
          ++v123;
          ++v137;
          v136 += 8;
        }

        while (v124 >= v137);
        v4 = v188;
        v118 = v206;
        LOWORD(v120) = v139;
        v128 = v200;
        if (!v201)
        {
LABEL_78:
          v165 = v207;
          if (v197)
          {
            v166 = v198[1];
            v167 = v196[-2].f32[0];
            v168 = v196[-2].f32[1];
            v169 = 0.0;
            if (((vabds_f32(*v198, v167) < 0.0001) & (vabds_f32(v166, v168) < 0.0001)) != 0)
            {
              v170 = 1.0;
            }

            else
            {
              v169 = *v198 - v167;
              v170 = v166 - v168;
            }

            if (v128)
            {
              v171 = 0;
              v172 = v123 + v82 + 2;
              v173 = (v219 + 2 * v89 + 2);
              do
              {
                *(v173 - 1) = v123 + v82;
                *v173 = v172 - 1;
                v173[1] = v172;
                ++v171;
                ++v172;
                v173 += 3;
              }

              while (v128 > v171);
            }

            v174 = 1.0 / sqrtf((v169 * v169) + (v170 * v170));
            v175 = v174 * v170;
            v176 = -(v169 * v174);
            v177 = ((v174 * v170) * 127.0);
            v178 = (v176 * 127.0);
            v179 = v209 + 8 * v123;
            *v179 = v165;
            *(v179 + 2) = v120;
            *(v179 + 4) = v177;
            *(v179 + 5) = v178;
            *(v179 + 6) = 0;
            v180 = v209 + 8 * v123;
            *(v180 + 8) = v165;
            *(v180 + 10) = v120;
            *(v180 + 12) = v177;
            *(v180 + 13) = v178;
            *(v180 + 14) = 127;
            if (v128)
            {
              v181 = 8 * v123;
              v182 = 1;
              do
              {
                v183 = __sincosf_stret(v210 * v182);
                v184 = v209 + v181;
                *(v184 + 16) = v165;
                *(v184 + 18) = v120;
                *(v184 + 20) = (fminf(fmaxf(-((v183.__sinval * v176) - (v183.__cosval * v175)), -1.0), 1.0) * 127.0);
                *(v184 + 21) = (fminf(fmaxf((v183.__sinval * v175) + (v183.__cosval * v176), -1.0), 1.0) * 127.0);
                *(v184 + 22) = 127;
                ++v182;
                v181 += 8;
              }

              while (v128 >= v182);
            }
          }

          goto LABEL_88;
        }
      }

      else
      {
        v4 = v188;
        LOWORD(v120) = v203;
        if (!v201)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v4 = v188;
      v128 = v200;
      if (!v201)
      {
        goto LABEL_78;
      }
    }

    v143 = v6->f32[0];
    v142 = v6->f32[1];
    v144 = v6->f32[0] - v187;
    v145 = v142 - v186;
    if (((vabds_f32(v6->f32[0], v187) < 0.0001) & (vabds_f32(v142, v186) < 0.0001)) != 0)
    {
      v144 = 0.0;
      v145 = 1.0;
    }

    v146 = v195;
    if (v195)
    {
      v147 = 0;
      v148 = v123 + v82 + 2;
      v149 = (v219 + 2 * v89 + 4);
      do
      {
        *(v149 - 2) = v123 + v82;
        *(v149 - 1) = v148 - 1;
        *v149 = v148;
        v149 += 3;
        v89 += 3;
        ++v147;
        ++v148;
      }

      while (v146 > v147);
      v143 = v6->f32[0];
    }

    v150 = 1.0 / sqrtf((v144 * v144) + (v145 * v145));
    v151 = v150 * v145;
    v152 = -(v144 * v150);
    v153 = ((v150 * v145) * 127.0);
    v154 = (v152 * 127.0);
    v155 = (v143 * v118);
    v156 = (v142 * v118);
    v157 = v209 + 8 * v123;
    *v157 = v155;
    *(v157 + 2) = v156;
    *(v157 + 4) = v153;
    *(v157 + 5) = v154;
    *(v157 + 6) = 0;
    v158 = v209 + 8 * v123;
    *(v158 + 8) = v155;
    *(v158 + 10) = v156;
    *(v158 + 12) = v153;
    *(v158 + 13) = v154;
    *(v158 + 14) = 127;
    v159 = v123 + 2;
    if (v146)
    {
      v160 = 8 * v123;
      v161 = 1;
      v162 = v146;
      do
      {
        v163 = __sincosf_stret(v211 * v161);
        v164 = v209 + v160;
        *(v164 + 16) = v155;
        *(v164 + 18) = v156;
        *(v164 + 20) = (fminf(fmaxf(-((v163.__sinval * v152) - (v163.__cosval * v151)), -1.0), 1.0) * 127.0);
        *(v164 + 21) = (fminf(fmaxf((v163.__sinval * v151) + (v163.__cosval * v152), -1.0), 1.0) * 127.0);
        *(v164 + 22) = 127;
        ++v159;
        ++v161;
        v160 += 8;
      }

      while (v162 >= v161);
      v123 = v159;
      v46 = v205;
      v128 = v200;
      v82 = v204;
    }

    else
    {
      v123 += 2;
      v46 = v205;
    }

    LOWORD(v120) = v203;
    goto LABEL_78;
  }
}

void sub_1B314B1A0(_Unwind_Exception *a1)
{
  ggl::BufferMemory::~BufferMemory((v1 - 312));
  ggl::BufferMemory::~BufferMemory((v1 - 264));
  _Unwind_Resume(a1);
}

float fanSegmentsBetweenSegments(float *a1, float32x2_t a2, float32x2_t a3, float32_t a4, float32_t a5)
{
  v6 = 0;
  v24 = 0;
  a2.f32[1] = a4;
  a3.f32[1] = a5;
  __asm { FMOV            V3.2S, #1.0 }

  v12 = vdiv_f32(_D3, vsqrt_f32(vmla_f32(vmul_f32(a2, a2), a3, a3)));
  v13 = vmul_f32(v12, a3);
  v14 = vmul_f32(vrev64_s32(v12), vneg_f32(vrev64_s32(a2)));
  v23 = __PAIR64__(v14.u32[1], v13.u32[0]);
  v19 = v14;
  v20 = v13;
  v21 = vext_s8(v13, v14, 4uLL);
  v22 = 0;
  v15 = 0.0;
  do
  {
    v15 = v15 + (*&v21.i32[v6] * *(&v23 + v6 * 4));
    ++v6;
  }

  while (v6 != 3);
  result = acosf(fminf(fmaxf(v15, -1.0), 1.0));
  v17 = vcvtps_u32_f32(result * 2.8648);
  if (a1 && v17)
  {
    v18 = vmul_f32(v20, v19);
    if (vcgt_f32(vdup_lane_s32(v18, 1), v18).u8[0])
    {
      result = -result;
    }

    result = result / v17;
    *a1 = result;
  }

  return result;
}

mdm::zone_mallocator *md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp<std::string>(mdm::zone_mallocator *__dst, void *__src)
{
  v3 = __dst;
  v4 = *(__src + 23);
  v5 = __src;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = __src[1];
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_25;
    }

    v5 = *__src;
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v8 = mdm::zone_mallocator::instance(__dst);
    v6 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v8, v7);
    *(v3 + 1) = v4;
    *(v3 + 2) = v7 | 0x8000000000000000;
    *v3 = v6;
    goto LABEL_11;
  }

  *(__dst + 23) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_11:
    __dst = memmove(v6, v5, v4);
  }

  *(v6 + v4) = 0;
  v9 = *(__src + 47);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = __src + 3;
    goto LABEL_16;
  }

  v9 = __src[4];
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_25:
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v10 = __src[3];
LABEL_16:
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v13 = mdm::zone_mallocator::instance(__dst);
    v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<char>(v13, v12);
    *(v3 + 5) = v9;
    *(v3 + 6) = v12 | 0x8000000000000000;
    *(v3 + 4) = v11;
  }

  else
  {
    v11 = v3 + 32;
    *(v3 + 55) = v9;
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  memmove(v11, v10, v9);
LABEL_24:
  *(v11 + v9) = 0;
  return v3;
}

void sub_1B314B408(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    v3 = *v1;
    v4 = mdm::zone_mallocator::instance(exception_object);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v4, v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::PhysicalLabelFeature::debugString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  std::ostringstream::basic_ostringstream[abi:nn200100](&v32);
  v42 = 15;
  strcpy(v41, "PhysicalFeature");
  md::LineLabelFeature::debugRoadString(__p, a1, a2, a3, a4, v41);
  if ((v31 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v11 = v31;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, v10, v11);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    v13 = *v41;
    v14 = mdm::zone_mallocator::instance(v12);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v14, v13);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, "Physical Feature Attributes:\n", 29);
  v15 = *(a2 + 464);
  v16 = *(a1 + 192);
  if ((md::LabelLineStore::lineSetIndexForZoom(v16, v15) & 0x80000000) == 0 && *(v16 + 12))
  {
    v17 = *(a1 + 192);
    v18 = md::LabelLineStore::lineSetIndexForZoom(v17, v15);
    v19 = *(*(v17 + 12) + 112 * v18 + 8);
    if (*(*(a1 + 192) + 159))
    {
      v20 = v19 * 0.0000000249532021;
    }

    else
    {
      v20 = *(*(v17 + 12) + 112 * v18 + 8);
    }

    v21 = exp2f(v15);
    v22 = *(a2 + 176);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, " Length:", 8);
    v23 = MEMORY[0x1B8C61C60](&v32, v19);
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, " Pixels=", 8);
    v25 = MEMORY[0x1B8C61C60](v24, v21 * 512.0 * v22 * v20);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v25, "\n", 1);
  }

  if ((v39 & 0x10) != 0)
  {
    v27 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v27 = v35;
    }

    locale = v34[4].__locale_;
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v26 = 0;
      a5[23] = 0;
      goto LABEL_30;
    }

    locale = v34[1].__locale_;
    v27 = v34[3].__locale_;
  }

  v26 = v27 - locale;
  if ((v27 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v26 >= 0x17)
  {
    operator new();
  }

  a5[23] = v26;
  if (v26)
  {
    memmove(a5, locale, v26);
  }

LABEL_30:
  a5[v26] = 0;
  v32 = *MEMORY[0x1E69E54E8];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v33 = MEMORY[0x1E69E5548] + 16;
  if (v37 < 0)
  {
    operator delete(v36);
  }

  v33 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x1B8C620C0](&v40);
}

void sub_1B314B7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a16 = *MEMORY[0x1E69E54E8];
  *(&a16 + *(a16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  a17 = MEMORY[0x1E69E5548] + 16;
  if (a30 < 0)
  {
    operator delete(__p);
  }

  a17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&a18);
  std::ostream::~ostream();
  MEMORY[0x1B8C620C0](&a33);
  _Unwind_Resume(a1);
}

float md::PhysicalLabelFeature::maxZoomRank(uint64_t a1)
{
  result = *(a1 + 460);
  if (result == 254.0)
  {
    return 252.0;
  }

  return result;
}

__int128 *md::PhysicalLabelFeature::labelPoint(md::PhysicalLabelFeature *this, const md::LabelIdentifier *a2)
{
  if (*(this + 58))
  {
    v2 = *a2 == 1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return (this + 480);
  }

  else
  {
    return md::LineLabelFeature::labelPoint(this, a2);
  }
}

__n128 std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_1>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A37B30;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

uint64_t std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = (*(**(a1 + 8) + 680))(*(a1 + 8), 0, *(a1 + 16));
  *(v2 + 38) = result;
  return result;
}

__n128 std::__function::__func<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0,std::allocator<md::PhysicalLabelFeature::updateText(void const*,BOOL)::$_0>,void ()(std::unique_ptr<md::LabelLineSegment> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2A37AE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

double *md::PhysicalLabelFeature::newRootPart(md::LabelFeature *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  md::LineLabelPlacer::positionForIdentifier(&v16, a1 + 192, *(a3 + 48));
  v7 = v16;
  if (v16 && *(a4 + 236) != 0.0 && *(a1 + 48) != *(a1 + 49))
  {
    if ((*(*v16 + 200))(v16))
    {
      v8 = (*(*v7 + 200))(v7);
      md::LabelLineResolvedPosition::ensureValidLinePosition(v8, v9);
      v10 = md::LabelLinePosition::textIndex(v8);
      if (v10 == 255)
      {
        v11 = 0;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = md::LabelStyle::textStyleGroup(a4, 0);
    md::LabelFeature::textDataForZoom(&v14, a1, v11, v13);
    if (v14)
    {
      operator new();
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  return 0;
}

void sub_1B314BE44(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v20 = mdm::zone_mallocator::instance(a1);
  geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<unsigned char>(v20, v18);
  std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

void md::PhysicalLabelFeature::~PhysicalLabelFeature(md::PhysicalLabelFeature *this)
{
  md::PhysicalLabelFeature::~PhysicalLabelFeature(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37800;
  *(this + 55) = &unk_1F2A37AC8;
  *(this + 66) = &unk_1F2A567C0;

  v2 = *(this + 59);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v2);
  }

  md::LineLabelFeature::~LineLabelFeature(this);
}

void md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::debugConsoleString(uint64_t a1@<X0>, gdc::DebugTreeNode *a2@<X8>)
{
  v3[12] = 0;
  (*(*a1 + 56))(v3);
  gdc::DebugTreeNode::toString(a2, v3);
}

void ___ZN2md15NavigationLogic23_updatePolygonSelectionEv_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = a2;
  v3 = [v14 route];

  if (v3)
  {
    v4 = [v14 route];
    v5 = [v4 restrictionZoneInfo];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 zoneIDs];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          if (GEOGetVectorKitRouteLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitRouteLog_onceToken, &__block_literal_global_37_15545);
          }

          v11 = GEOGetVectorKitRouteLog_log;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 identifier];
            *buf = 134217984;
            *&buf[4] = v12;
            _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "Selecting restricted zone polygon: %llx", buf, 0xCu);
          }

          v13 = *(*(a1 + 32) + 8);
          *buf = [v10 identifier];
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long>((v13 + 48), *buf, buf);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v7);
    }
  }
}

uint64_t md::Logic<md::NavigationLogic,md::NavigationContext,md::LogicDependencies<gdc::TypeList<md::StyleLogicContext,md::ElevationContext,md::CameraContext>,gdc::TypeList<md::RouteOverlayContext>>>::_debugConsoleString@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(a3 + 8) == 0x1B8B241A8D896A1DLL && (v4 = *(a3 + 32)) != 0)
  {
    v6 = result;
    v7 = *(a2 + 8);
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0xE42D19AFCA302E68);
    if (v8 && (v9 = v8[5], *(v9 + 8) == 0xE42D19AFCA302E68))
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x8BD499FBD96FBB9ELL);
    if (v11 && (v12 = v11[5], *(v12 + 8) == 0x8BD499FBD96FBB9ELL))
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = 0;
    }

    v14 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x1AF456233693CD46uLL)[5] + 32);
    v15 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100](v7, 0x13043386C0978CC2uLL);
    if (v15 && (v16 = v15[5], *(v16 + 8) == 0x13043386C0978CC2))
    {
      v17 = *(v16 + 32);
    }

    else
    {
      v17 = 0;
    }

    v18[0] = v10;
    v18[1] = v13;
    v18[2] = v14;
    v18[3] = v17;
    return (*(*v6 + 160))(v6, a2, v18, v4);
  }

  else
  {
    a4[23] = 0;
    *a4 = 0;
  }

  return result;
}

uint64_t gdc::ObjectHolder<md::NavigationContext>::extract@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *(result + 32) = 0;
  *a2 = v2;
  return result;
}

void gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(void *a1)
{
  gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(a1);

  JUMPOUT(0x1B8C62190);
}

void *gdc::ManagedObjectHolder<md::NavigationContext>::~ManagedObjectHolder(void *a1)
{
  *a1 = &unk_1F2A37D28;
  v2 = a1[4];
  if (v2)
  {
    std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v2 + 104);

    MEMORY[0x1B8C62190](v2, 0x10A0C4094862C28);
  }

  return a1;
}

void md::NavigationLogic::~NavigationLogic(id *this)
{
  md::NavigationLogic::~NavigationLogic(this);

  JUMPOUT(0x1B8C62190);
}

{
  *this = &unk_1F2A37B78;
  [this[20] destroyAnimationRunner];
  [this[38] stop];
  this[37] = &unk_1F2A37D08;

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table((this + 31));
  this[22] = &unk_1F2A580E8;

  this[19] = &unk_1F2A37CE8;
  *this = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[13]);
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(this[10]);
}

void sub_1B314C644(_Unwind_Exception *a1)
{
  *(v1 + 296) = &unk_1F2A37D08;

  std::__hash_table<md::MuninJunction const*,std::hash<md::MuninJunction const*>,std::equal_to<md::MuninJunction const*>,std::allocator<md::MuninJunction const*>>::~__hash_table(v1 + 248);
  *(v1 + 176) = &unk_1F2A580E8;

  *(v1 + 152) = &unk_1F2A37CE8;
  *v1 = off_1F2A578C0;
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 104));
  std::__tree<geo::Pool<gdc::FallbackNode>::Element *,std::less<geo::Pool<gdc::FallbackNode>::Element *>,std::allocator<geo::Pool<gdc::FallbackNode>::Element *>>::destroy(*(v1 + 80));
  _Unwind_Resume(a1);
}

void geo::_retain_ptr<VKNavigationPuck * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37CE8;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKNavigationPuck * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37CE8;

  return a1;
}

void geo::_retain_ptr<VKPuckAnimator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37D08;

  JUMPOUT(0x1B8C62190);
}

uint64_t geo::_retain_ptr<VKPuckAnimator * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::~_retain_ptr(uint64_t a1)
{
  *a1 = &unk_1F2A37D08;

  return a1;
}

void ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::StyleCameraLighting>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37E40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::Tile::LinearDepth>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::Tile::LinearDepth>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37DE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void ggl::ConstantDataTyped<ggl::DaVinci::Shadow>::~ConstantDataTyped(std::mutex *a1)
{
  ggl::BufferData::~BufferData(a1);

  JUMPOUT(0x1B8C62190);
}

void std::__shared_ptr_emplace<ggl::ConstantDataTyped<ggl::DaVinci::Shadow>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2A37D90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C62190);
}

void md::DaVinciGroundRenderable::~DaVinciGroundRenderable(md::DaVinciGroundRenderable *this)
{
  v2 = 0;
  *this = &unk_1F2A37D50;
  while (1)
  {
    v3 = this + v2;
    v4 = *(this + v2 + 800);
    if (v4)
    {
      *(v3 + 101) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 97);
    if (v5)
    {
      *(this + v2 + 784) = v5;
      operator delete(v5);
    }

    v2 -= 56;
    if (v2 == -224)
    {
      v6 = *(this + 58);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v6);
      }

      v7 = *(this + 56);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }

      v8 = 432;
      while (1)
      {
        v9 = *(this + v8);
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }

        v8 -= 16;
        if (v8 == 400)
        {
          md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);

          JUMPOUT(0x1B8C62190);
        }
      }
    }
  }
}

{
  v2 = 0;
  *this = &unk_1F2A37D50;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 800);
    if (v4)
    {
      *(v3 + 101) = v4;
      operator delete(v4);
    }

    v5 = *(v3 + 97);
    if (v5)
    {
      *(this + v2 + 784) = v5;
      operator delete(v5);
    }

    v2 -= 56;
  }

  while (v2 != -224);
  v6 = *(this + 58);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }

  v7 = *(this + 56);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  for (i = 432; i != 400; i -= 16)
  {
    v9 = *(this + i);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }
  }

  md::MapTileDataRenderable<md::MapTileData>::~MapTileDataRenderable(this);
}

md::LabelPart *md::TransitNodeLabelFeature::newGraphicAnnotationPart(uint64_t a1, uint64_t *a2)
{
  v81 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    v65 = 0;
    v66 = 0;
    std::mutex::lock((a1 + 8));
    v9 = *(a1 + 152);
    if (!v9)
    {
      std::mutex::unlock((a1 + 8));
      v11 = 0;
      goto LABEL_82;
    }

    v10 = (*(*v9 + 16))(v9, &v65);
    std::mutex::unlock((a1 + 8));
    v11 = 0;
    if (v65 && v10)
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v12 = md::TransitNodeLabelFeature::populateAnnotationInfos(v10, &v78);
      if (v78 == v79)
      {
        v11 = 0;
        goto LABEL_81;
      }

      v13 = *(a2[2] + 160);
      if (v13 >= 0)
      {
        v14 = *(a2[2] + 160);
      }

      else
      {
        v14 = -v13;
      }

      v15 = mdm::zone_mallocator::instance(v12);
      v11 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v15, 0x2B8uLL);
      md::StackLabelPart::StackLabelPart(v11, 1, 0, 0, 0);
      (*(*v16 + 176))(v16, 7);
      *(v11 + 630) = 1;
      v77[2] = 0;
      v76 = v77;
      v77[0] = 0;
      v17 = v78;
      v18 = v79;
      if (v78 == v79)
      {
LABEL_78:
        (*(*v11 + 8))(v11);
        v11 = 0;
        goto LABEL_79;
      }

      v19 = 0;
      if (v13 <= 0)
      {
        v20 = 0;
      }

      else
      {
        v20 = v14;
      }

      v61 = v20;
      while (1)
      {
        v64 = 0uLL;
        v21 = *v17;
        if (*v17 == 1)
        {
          break;
        }

        if (v21 != 3)
        {
          if (v21 != 2)
          {
            goto LABEL_37;
          }

          v22 = v17[1];
          if (!v22)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }

        v22 = v17[1];
        if (v22)
        {
          std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v73, "");
          v23 = *(md::LabelStyle::textStyleGroup(a2[2], 0) + 8);
          v69 = v75;
          if (SHIBYTE(v74) < 0)
          {
            inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v73, *(&v73 + 1));
            v70 = v22;
            v71 = v23;
            v72 = 0;
            if (SHIBYTE(v74) < 0)
            {
              v29 = v73;
              v30 = mdm::zone_mallocator::instance(inited);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v30, v29);
            }
          }

          else
          {
            __dst = v73;
            v68 = v74;
            v70 = v22;
            v71 = v23;
            v72 = 0;
          }

          v32 = a2[1];
          v31 = a2[2];
          v33 = *a2;
          v34 = *(v31 + 296);
          if (!v34)
          {
            v35 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
            v34 = *v35;
            *(v31 + 296) = *v35;
          }

          md::LabelStyle::shieldIcon(&v73, v31, v33, v32, &__dst, 0, *(v34 + 93));
        }

LABEL_38:
        if (*(&v64 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v64 + 1));
        }

        v17 += 2;
        if (v17 == v18)
        {
          v36 = 1;
        }

        else
        {
          v36 = v22;
        }

        if (v36)
        {
          if (!v19)
          {
            goto LABEL_78;
          }

LABEL_79:
          std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(v77[0]);
LABEL_81:
          std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v78);
          goto LABEL_82;
        }
      }

      v22 = geo::codec::VectorTile::transitLineForFeatureID(*(v65 + 1288), *(v65 + 1296), v17[1]);
      if (!v22)
      {
        goto LABEL_38;
      }

LABEL_28:
      if (!geo::codec::featureGetNativeShieldCount(v22))
      {
        goto LABEL_37;
      }

      v63 = 0;
      v24 = atomic_load((*a2 + 3426));
      *&__dst = 0;
      geo::codec::featureGetNativeShield(v22, 0, &__dst, &v63, 0);
      v25 = localizedLabel(&v73, v22, __dst, v24 & 1, 0);
      v26 = v63;
      v27 = HIBYTE(v74);
      if (!v63)
      {
        goto LABEL_57;
      }

      v69 = v75;
      if (SHIBYTE(v74) < 0)
      {
        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v73, *(&v73 + 1));
      }

      else
      {
        __dst = v73;
        v68 = v74;
      }

      v70 = v26;
      v71 = 0;
      v72 = 2;
      v37 = *(*(*a2 + 168) + 56);
      (*(*v37 + 24))(v37, v22, &v71, *(a1 + 916));
      v38 = v77[0];
      if (!v77[0])
      {
LABEL_51:
        std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::__emplace_unique_key_args<md::LabelShieldEntry,md::LabelShieldEntry const&>(&v76, &__dst, &__dst);
        v40 = a2[1];
        v39 = a2[2];
        v41 = *a2;
        v42 = *(v39 + 296);
        if (!v42)
        {
          v43 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
          v42 = *v43;
          *(v39 + 296) = *v43;
        }

        md::LabelStyle::shieldIcon(&v62, v39, v41, v40, &__dst, 1, *(v42 + 93));
      }

      while (1)
      {
        if (!md::LabelShieldEntry::operator<(&__dst, (v38 + 4)))
        {
          v25 = md::LabelShieldEntry::operator<((v38 + 4), &__dst);
          if (!v25)
          {
            if (SHIBYTE(v68) < 0)
            {
              v44 = __dst;
              v45 = mdm::zone_mallocator::instance(v25);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v45, v44);
            }

            v27 = HIBYTE(v74);
LABEL_57:
            if (v27 < 0)
            {
              v46 = v73;
              v47 = mdm::zone_mallocator::instance(v25);
              geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v47, v46);
            }

            if (v64)
            {
              if (v19 == v14)
              {
                LOBYTE(v22) = 1;
                v19 = v61;
              }

              else
              {
                v48 = mdm::zone_mallocator::instance(v25);
                v22 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v48, 0x340uLL);
                md::IconLabelPart::IconLabelPart(v22, &v64, 0, 0);
                ((*v22)[7].__shared_owners_)(v22, 10);
                md::CompositeLabelPart::addLabelPart(v11, v22);
                LOBYTE(v22) = 0;
                ++v19;
              }

              goto LABEL_38;
            }

LABEL_37:
            LOBYTE(v22) = 0;
            goto LABEL_38;
          }

          ++v38;
        }

        v38 = *v38;
        if (!v38)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_82:
    v53 = v66;
    if (v66)
    {
      goto LABEL_119;
    }

    return v11;
  }

  v4 = *(a1 + 480);
  v5 = *(v4 + 312);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  *&__dst = a1;
  *(&__dst + 1) = a2;
  v78 = 0;
  v79 = 0;
  v7 = a2[1];
  v8 = *(v7 + 1304);
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 != 3)
      {
        goto LABEL_100;
      }

LABEL_66:
      v5 = *(a1 + 928);
      v6 = *(a1 + 936);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v5;
      v79 = v6;
      v49 = 1;
LABEL_89:
      if (!v5)
      {
        goto LABEL_100;
      }

      goto LABEL_90;
    }

    v51 = *(a1 + 928);
    if (v51)
    {
      v5 = *(v51 + 32);
      v6 = *(v51 + 40);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = a2[1];
        v52 = *(v7 + 1304);
        v78 = v5;
        v79 = v6;
        if (v52 == 3)
        {
          v49 = 0;
          goto LABEL_89;
        }

        goto LABEL_88;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = 0;
    v78 = v5;
    v79 = 0;
LABEL_88:
    v49 = 0;
    *(v7 + 1304) = 1;
    goto LABEL_89;
  }

  if (!*(v7 + 1304))
  {
    v6 = *(v4 + 320);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = a2[1];
      v50 = *(v7 + 1304);
      v78 = v5;
      v79 = v6;
      if (v50 == 3)
      {
        v49 = 0;
        goto LABEL_90;
      }
    }

    else
    {
      v78 = v5;
      v79 = 0;
    }

    v49 = 0;
    *(v7 + 1304) = 1;
LABEL_90:
    v54 = v6;
    while (1)
    {
      v11 = md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(&__dst, &v78);
      v55 = v11 ? 1 : v49;
      if (v55)
      {
        break;
      }

      v56 = v5[4];
      v6 = v5[5];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v56;
      v79 = v6;
      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v54);
      }

      v54 = v6;
      v5 = v56;
      if (!v56)
      {
        goto LABEL_100;
      }
    }

LABEL_108:
    if (!v54)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  if (v8 == 1)
  {
    goto LABEL_66;
  }

LABEL_100:
  v57 = a2[1];
  if (*(v57 + 1304) != 3)
  {
    *(v57 + 1304) = 3;
  }

  v5 = *(a1 + 944);
  if (v5)
  {
    v54 = *(a1 + 952);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = v5;
    v79 = v54;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v6);
    }

    v11 = md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(&__dst, &v78);
    goto LABEL_108;
  }

  v11 = 0;
  v54 = v6;
  if (v6)
  {
LABEL_109:
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_110:
  *(a1 + 928) = v5;
  v58 = *(a1 + 936);
  *(a1 + 936) = v54;
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v58);
  }

  if (!*(a1 + 944))
  {
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a1 + 944) = v5;
    v59 = *(a1 + 952);
    *(a1 + 952) = v54;
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v59);
    }
  }

  if (v54)
  {
    v53 = v54;
LABEL_119:
    std::__shared_weak_count::__release_shared[abi:nn200100](v53);
  }

  return v11;
}

void sub_1B314D764(mdm::zone_mallocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    v34 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v34, a27);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a18);
  }

  std::__tree<md::LabelShieldEntry,std::less<md::LabelShieldEntry>,geo::allocator_adapter<md::LabelShieldEntry,mdm::zone_mallocator>>::destroy(*(v32 - 152));
  std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v32 - 128));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a20);
  }

  _Unwind_Resume(a1);
}

mdm::zone_mallocator *md::TransitNodeLabelFeature::populateAnnotationInfos(mdm::zone_mallocator *result, uint64_t a2)
{
  if (*(result + 274))
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 24;
    do
    {
      if (*(v3 + 275) == v4)
      {
        v6 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v6 >= v7)
        {
          v10 = (v6 - *a2) >> 4;
          v11 = v10 + 1;
          if ((v10 + 1) >> 60)
          {
            goto LABEL_33;
          }

          v12 = v7 - *a2;
          if (v12 >> 3 > v11)
          {
            v11 = v12 >> 3;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF0)
          {
            v13 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v11;
          }

          v43 = v5;
          if (v13)
          {
            v14 = mdm::zone_mallocator::instance(result);
            v15 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(v14, v13);
          }

          else
          {
            v15 = 0;
          }

          v16 = &v15[16 * v10];
          v17 = &v15[16 * v13];
          v18 = *(v3 + 74);
          *v16 = 3;
          *(v16 + 1) = v18;
          v9 = v16 + 16;
          v19 = *(a2 + 8) - *a2;
          v20 = &v16[-v19];
          memcpy(&v16[-v19], *a2, v19);
          v21 = *a2;
          *a2 = v20;
          *(a2 + 8) = v9;
          v22 = *(a2 + 16);
          *(a2 + 16) = v17;
          v41 = v21;
          v42 = v22;
          v39 = v21;
          v40 = v21;
          std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(&v39);
        }

        else
        {
          v8 = *(v3 + 74);
          *v6 = 3;
          *(v6 + 8) = v8;
          v9 = (v6 + 16);
        }

        *(a2 + 8) = v9;
      }

      result = geo::codec::vectorTransitLineForTransitNodeSubtitleIndex(v3, v4);
      if (result)
      {
        v23 = result;
        v25 = *(a2 + 8);
        v24 = *(a2 + 16);
        if (v25 >= v24)
        {
          v27 = (v25 - *a2) >> 4;
          v28 = v27 + 1;
          if ((v27 + 1) >> 60)
          {
LABEL_33:
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v29 = v24 - *a2;
          if (v29 >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          v43 = v5;
          if (v30)
          {
            v31 = mdm::zone_mallocator::instance(result);
            v32 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(v31, v30);
          }

          else
          {
            v32 = 0;
          }

          v33 = &v32[16 * v27];
          v34 = &v32[16 * v30];
          *v33 = 2;
          *(v33 + 1) = v23;
          v26 = v33 + 16;
          v35 = *(a2 + 8) - *a2;
          v36 = &v33[-v35];
          memcpy(&v33[-v35], *a2, v35);
          v37 = *a2;
          *a2 = v36;
          *(a2 + 8) = v26;
          v38 = *(a2 + 16);
          *(a2 + 16) = v34;
          v41 = v37;
          v42 = v38;
          v39 = v37;
          v40 = v37;
          result = std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(&v39);
        }

        else
        {
          *v25 = 2;
          *(v25 + 8) = result;
          v26 = (v25 + 16);
        }

        *(a2 + 8) = v26;
      }

      ++v4;
    }

    while (*(v3 + 274) > v4);
  }

  return result;
}

void std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](mdm::zone_mallocator *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    v2 = mdm::zone_mallocator::instance(result);

    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(v2, v1);
  }
}

void geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(uint64_t a1, void *a2)
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

void *geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<md::TransitNodeLabelFeature::AnnotationInfo>(uint64_t a1, uint64_t a2)
{
  v4 = pthread_rwlock_rdlock((a1 + 32));
  if (v4)
  {
    geo::read_write_lock::logFailure(v4, "read lock", v5);
  }

  v6 = malloc_type_zone_malloc(*a1, 16 * a2, 0x1022040661CCA83uLL);
  atomic_fetch_add((a1 + 24), 1u);
  geo::read_write_lock::unlock((a1 + 32));
  return v6;
}

mdm::zone_mallocator *std::__split_buffer<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator> &>::~__split_buffer(mdm::zone_mallocator *a1)
{
  v3 = *(a1 + 1);
  v2 = *(a1 + 2);
  if (v2 != v3)
  {
    *(a1 + 2) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = mdm::zone_mallocator::instance(a1);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<md::TransitNodeLabelFeature::AnnotationInfo>(v5, v4);
  }

  return a1;
}

md::CompositeLabelPart *md::TransitNodeLabelFeature::newGraphicAnnotationPartForExternalFeature(md::PartCreationContext const&)::$_0::operator()(uint64_t **a1, unsigned __int8 ******a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = mdm::zone_mallocator::instance(a1);
  v4 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v3, 0x2C0uLL);
  v5 = *(*a2 + 24);
  md::StackLabelPart::StackLabelPart(v4, 1, 0, 0, 0);
  *v6 = &unk_1F2A05190;
  *(v6 + 694) = v5;
  *(v6 + 695) = 1;
  md::LabelPart::setContentType(v6, 7);
  v35 = v4;
  *(v4 + 630) = 1;
  v7 = **a2;
  v32 = (*a2)[1];
  if (v7 != v32)
  {
    while (1)
    {
      v8 = *v7;
      v9 = v7[1];
      v34 = v7;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = *v8;
      v10 = v8[1];
      if (*v8 != v10)
      {
        v33 = v9;
        v12 = a1[1];
        do
        {
          v13 = *v11;
          v14 = **v11;
          switch(v14)
          {
            case 3:
              v20 = *(v13 + 6);
              if (v20)
              {
                std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v36, "");
                v21 = *(md::LabelStyle::textStyleGroup(v12[2], 0) + 8);
                v41 = v38;
                if (SHIBYTE(v37) < 0)
                {
                  inited = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external(&__dst, v36, *(&v36 + 1));
                  v42 = v20;
                  v43 = v21;
                  v44 = 0;
                  if (SHIBYTE(v37) < 0)
                  {
                    v23 = v36;
                    v24 = mdm::zone_mallocator::instance(inited);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v24, v23);
                  }
                }

                else
                {
                  __dst = v36;
                  v40 = v37;
                  v42 = v20;
                  v43 = v21;
                  v44 = 0;
                }

                v26 = v12[1];
                v25 = v12[2];
                v27 = *v12;
                v28 = *(v25 + 296);
                if (!v28)
                {
                  v29 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12[2], 0);
                  v28 = *v29;
                  *(v25 + 296) = *v29;
                }

                md::LabelStyle::shieldIcon(&v36, v25, v27, v26, &__dst, 0, *(v28 + 93));
              }

              break;
            case 2:
              *&v36 = *(v13 + 5);
              std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>>::vector[abi:nn200100](&__dst, &v36, 1uLL);
              std::allocate_shared[abi:nn200100]<FeatureStyleAttributes,std::allocator<FeatureStyleAttributes>,std::vector<GeoCodecsFeatureStylePair,geo::allocator_adapter<GeoCodecsFeatureStylePair,geo::mallocator>> &,0>(&v36, &__dst);
            case 1:
              md::LabelShieldEntry::LabelShieldEntry(&__dst, 2, (v13 + 8), *(v13 + 6), v13 + 14);
              v16 = v12[1];
              v15 = v12[2];
              v17 = *v12;
              v18 = *(v15 + 296);
              if (!v18)
              {
                v19 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12[2], 0);
                v18 = *v19;
                *(v15 + 296) = *v19;
              }

              md::LabelStyle::shieldIcon(&v36, v15, v17, v16, &__dst, 0, *(v18 + 93));
          }

          v11 += 2;
        }

        while (v11 != v10);
        v9 = v33;
      }

      if ((v8[1] - *v8) >> 4)
      {
        break;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v9);
      }

      v7 = v34 + 2;
      if (v34 + 2 == v32)
      {
        return v35;
      }
    }

    (*(*v35 + 8))(v35);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    return 0;
  }

  return v35;
}

void sub_1B314E0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
    std::__shared_weak_count::__release_shared[abi:nn200100](v40);
  }

  v43 = *(v41 - 144);
  if (v43)
  {
    *(v41 - 136) = v43;
    free(v43);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t md::TransitNodeLabelFeature::annotationTextIndex(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v72 = *MEMORY[0x1E69E9840];
  if (!(*(*a1 + 64))(a1))
  {
    if ((*(a1 + 917) & 1) == 0)
    {
      *(a1 + 917) = -255;
      v55 = 0;
      v56 = 0;
      std::mutex::lock((a1 + 8));
      v7 = *(a1 + 152);
      if (v7)
      {
        v8 = (*(*v7 + 16))(v7, &v55);
        std::mutex::unlock((a1 + 8));
        if (v55 && v8)
        {
          v69 = 0;
          v70 = 0;
          v71 = 0;
          md::TransitNodeLabelFeature::populateAnnotationInfos(v8, &v69);
          if (v69 != v70)
          {
            v53 = 0;
            __s = 0;
            v51 = 0;
            v52 = 0;
            v9 = atomic_load((*a2 + 3426));
            if (v9)
            {
              geo::codec::transitNodeFeatureGetLocalizedParentheticalLabels(v8, &__s, &v53, &v52, &v51);
            }

            if (__s && (v10 = v53) != 0 && v52)
            {
              v11 = 1;
              v12 = 1;
            }

            else
            {
              geo::codec::transitNodeFeatureGetNativeParentheticalLabels(v8, &__s, &v53, &v52, &v51);
              v10 = v53;
              v12 = __s != 0;
              v11 = v52 != 0;
            }

            if (v12 && v10 && v11)
            {
              v13 = *(a2[2] + 160);
              v50 = v13 < 1;
              if (v13 >= 0)
              {
                v14 = *(a2[2] + 160);
              }

              else
              {
                v14 = -v13;
              }

              std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(&v67, v10);
              v66 = 0;
              v64 = &v65;
              v65 = 0;
              v15 = v69;
              v16 = v70;
              if (v69 != v70)
              {
                v17 = 0;
                v18 = 0;
                v19 = 0;
                while (!v19)
                {
                  if (*v15 != 2 || (v20 = *(v15 + 8)) == 0)
                  {
                    v19 = 0;
                    goto LABEL_61;
                  }

                  v21 = atomic_load((*a2 + 3426));
                  v57[0] = 0;
                  geo::codec::transitLineGetSubtitleNativeLabel(v20, v57);
                  v22 = localizedLabel(&__dst, v20, v57[0], v21 & 1, 0);
                  v23 = HIBYTE(v60);
                  v24 = HIBYTE(v60);
                  if (v60 < 0)
                  {
                    v23 = *(&__dst + 1);
                  }

                  if (v23)
                  {
                    for (i = v65; i; i = *i)
                    {
                      v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&__dst, i + 4);
                      if ((v22 & 0x80) == 0)
                      {
                        v22 = std::operator<=>[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(i + 4, &__dst);
                        if ((v22 & 0x80) == 0)
                        {
                          goto LABEL_40;
                        }

                        ++i;
                      }
                    }

                    if (v18 == v14)
                    {
                      v26 = 0;
                      v19 = v50;
                      v18 = v14;
                      goto LABEL_58;
                    }

                    v27 = std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(&v64, v57, &__dst);
                    if (!*v27)
                    {
                      v28 = v27;
                      v29 = mdm::zone_mallocator::instance(v27);
                      v30 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>>(v29);
                      v31 = v30;
                      *(v30 + 56) = v61;
                      if (SHIBYTE(v60) < 0)
                      {
                        std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__init_copy_ctor_external((v30 + 4), __dst, *(&__dst + 1));
                      }

                      else
                      {
                        *(v30 + 2) = __dst;
                        v30[6] = v60;
                      }

                      v32 = v57[0];
                      *v31 = 0;
                      v31[1] = 0;
                      v31[2] = v32;
                      *v28 = v31;
                      if (*v64)
                      {
                        v64 = *v64;
                        v31 = *v28;
                      }

                      std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(v65, v31);
                      ++v66;
                    }

                    if (v17)
                    {
                      v33 = strlen(__s);
                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, __s, v33);
                    }

                    if (v60 >= 0)
                    {
                      p_dst = &__dst;
                    }

                    else
                    {
                      p_dst = __dst;
                    }

                    if (v60 >= 0)
                    {
                      v35 = HIBYTE(v60);
                    }

                    else
                    {
                      v35 = *(&__dst + 1);
                    }

                    v22 = std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, p_dst, v35);
                    v19 = 0;
                    ++v18;
                    v17 = 1;
                    v24 = HIBYTE(v60);
                  }

                  else
                  {
LABEL_40:
                    v19 = 0;
                  }

                  v26 = 1;
LABEL_58:
                  if (v24 < 0)
                  {
                    v36 = __dst;
                    v37 = mdm::zone_mallocator::instance(v22);
                    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, v36);
                  }

                  if ((v26 & 1) == 0)
                  {
LABEL_62:
                    if ((v17 & 1) != 0 && !v19)
                    {
                      v38 = strlen(v52);
                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(&v67, v52, v38);
                      if (v51)
                      {
                        v39 = v51;
                      }

                      else
                      {
                        v39 = "";
                      }

                      std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::basic_string[abi:nn200100]<0>(v57, v39);
                      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(&__dst, &v67, v57);
                      v40 = md::PointLabelFeature::indexForTextEntry(a1, &__dst);
                      *(a1 + 918) = v40;
                      if (v63 < 0)
                      {
                        v41 = v62;
                        v42 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v42, v41);
                      }

                      if (SHIBYTE(v60) < 0)
                      {
                        v43 = __dst;
                        v44 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v44, v43);
                      }

                      if (v58 < 0)
                      {
                        v45 = v57[0];
                        v46 = mdm::zone_mallocator::instance(v40);
                        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v46, v45);
                      }
                    }

                    break;
                  }

LABEL_61:
                  v15 += 16;
                  if (v15 == v16)
                  {
                    goto LABEL_62;
                  }
                }
              }

              std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(v65);
              if (v68 < 0)
              {
                v48 = v67;
                v49 = mdm::zone_mallocator::instance(v47);
                geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v49, v48);
              }
            }
          }

          std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v69);
        }
      }

      else
      {
        std::mutex::unlock((a1 + 8));
      }

      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v56);
      }
    }

    return *(a1 + 918);
  }

  return md::PointLabelFeature::annotationTextIndex(a1, a2, v3);
}

void sub_1B314E6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char **a33)
{
  std::__tree_node_destructor<geo::allocator_adapter<std::__tree_node<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,void *>,mdm::zone_mallocator>>::operator()[abi:nn200100](0, v33);
  if (a26 < 0)
  {
    v37 = mdm::zone_mallocator::instance(v36);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v37, a21);
  }

  std::__tree<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,std::less<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>,geo::allocator_adapter<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>,mdm::zone_mallocator>>::destroy(a33);
  if (*(v34 - 137) < 0)
  {
    v39 = *(v34 - 160);
    v40 = mdm::zone_mallocator::instance(v38);
    geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v40, v39);
  }

  std::vector<md::TransitNodeLabelFeature::AnnotationInfo,geo::allocator_adapter<md::TransitNodeLabelFeature::AnnotationInfo,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v34 - 128));
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::append(uint64_t *a1, void *__src, size_t __len)
{
  v6 = *(a1 + 23);
  if (v6 < 0)
  {
    v8 = a1[1];
    v7 = (a1[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 22;
    v8 = *(a1 + 23);
  }

  if (v7 - v8 >= __len)
  {
    if (__len)
    {
      v9 = a1;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = *a1;
      }

      memmove(v9 + v8, __src, __len);
      v10 = v8 + __len;
      if (*(a1 + 23) < 0)
      {
        a1[1] = v10;
      }

      else
      {
        *(a1 + 23) = v10 & 0x7F;
      }

      *(v9 + v10) = 0;
    }
  }

  else
  {
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::__grow_by_and_replace(a1, v7, __len - v7 + v8, v8, v8, 0, __len, __src);
  }

  return a1;
}

uint64_t md::TransitNodeLabelFeature::iconColor@<X0>(md::TransitNodeLabelFeature *this@<X0>, const md::LabelIconStyleGroup *a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(*this + 64))(this);
  v7 = *(a2 + 89);
  if (!result || (v7 != 3 ? (v8 = v7 == 0) : (v8 = 1), !v8 || ((*a3 = *(this + 228), a3[4] = 1, v7) ? (v9 = v7 == 3) : (v9 = 1), !v9)))
  {
    if ((v7 & 0xFFFFFFFD) != 0)
    {
      v10 = 0;
      *a3 = 0;
    }

    else
    {
      *a3 = *(a2 + 18);
      v10 = 1;
    }

    a3[4] = v10;
  }

  return result;
}

mdm::zone_mallocator *md::TransitNodeLabelFeature::newMultiPoiIconPart(mdm::zone_mallocator *a1, uint64_t *a2)
{
  v2 = a1;
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = a2[2];
  v4 = *(v3 + 296);
  if (!v4)
  {
    a1 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v4 = *a1;
    *(v3 + 296) = *a1;
  }

  v5 = *(v4 + 68);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  __dst = 0;
  v27 = 0;
  if (v5 == 37)
  {
    if (&v25 == (v2 + 840))
    {
      v10 = 0;
    }

    else
    {
      v8 = *(v2 + 105);
      v9 = *(v2 + 106);
      v10 = v9 - v8;
      if (v9 != v8)
      {
        if ((v10 >> 2) >> 62)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__vallocate[abi:nn200100](&v25, v10 >> 2);
        v11 = __dst;
        a1 = memmove(__dst, v8, v10);
        v10 += v11;
      }

      __dst = v10;
    }
  }

  else
  {
    if (v5 == 49)
    {
      v22 = 0;
    }

    else
    {
      if (v5 != 50)
      {
LABEL_30:
        v14 = 0;
        goto LABEL_31;
      }

      v22 = 1;
    }

    v32[2] = 0;
    v31[7] = v32;
    v32[0] = 0;
    v6 = *(v2 + 93);
    v21 = *(v2 + 94);
    if (v6 == v21)
    {
      v7 = 0;
    }

    else
    {
      do
      {
        if (v22 && *(v6 + 6))
        {
          _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v24);
        }

        if (*v6)
        {
          _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v24);
        }

        if (*(v6 + 9))
        {
          std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(&v25, __dst, (*(v2 + 97) + 4 * *(v6 + 8)), (*(v2 + 97) + 4 * (*(v6 + 8) + *(v6 + 9))), *(v6 + 9));
        }

        v6 += 12;
      }

      while (v6 != v21);
      v7 = v32[0];
    }

    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(v7);
    v10 = __dst;
  }

  if (v25 != v10)
  {
    _ZNSt3__115allocate_sharedB8nn200100I22FeatureStyleAttributesNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v31);
  }

  if (v28 == v29)
  {
    goto LABEL_30;
  }

  v12 = v29 - v28;
  v13 = mdm::zone_mallocator::instance(a1);
  if (v12 == 16)
  {
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x350uLL);
    md::PointIconLabelPart::PointIconLabelPart(v14, v28, *a2, a2[1], a2[2], v5);
  }

  else
  {
    v14 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v13, 0x2F8uLL);
    v16 = md::MultipleIconLabelPart::MultipleIconLabelPart(v14, a2[2], v5);
    *(v14 + 630) = 1;
    v17 = v28;
    v18 = v29;
    while (v17 != v18)
    {
      v19 = mdm::zone_mallocator::instance(v16);
      v20 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v19, 0x340uLL);
      md::IconLabelPart::IconLabelPart(v20, v17, 0, 0);
      (*(*v20 + 176))(v20, 4);
      v16 = md::CompositeLabelPart::addLabelPart(v14, v20);
      v17 += 16;
    }
  }

LABEL_31:
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v25);
  v31[0] = &v28;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v31);
  return v14;
}

void sub_1B314F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&a34);
  *(v47 - 128) = &a38;
  std::vector<std::shared_ptr<md::LabelIcon>,geo::allocator_adapter<std::shared_ptr<md::LabelIcon>,mdm::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100]((v47 - 128));
  _Unwind_Resume(a1);
}

int *std::__unique[abi:nn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v2 = a1 + 1;
    while (v2 != a2)
    {
      v3 = *(v2 - 1);
      v4 = *v2++;
      if (v3 == v4)
      {
        v5 = v2 - 2;
        goto LABEL_7;
      }
    }

    v5 = a2;
LABEL_7:
    if (v5 != a2)
    {
      v6 = v5 + 2;
      if (v5 + 2 != a2)
      {
        v7 = *v5;
        do
        {
          v8 = v7;
          v7 = *v6;
          if (v8 != *v6)
          {
            v5[1] = v7;
            ++v5;
          }

          ++v6;
        }

        while (v6 != a2);
      }

      return v5 + 1;
    }
  }

  return a2;
}

mdm::zone_mallocator *std::vector<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>>(mdm::zone_mallocator *result, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v6 = __src;
  v8 = result;
  v10 = *(result + 1);
  v9 = *(result + 2);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *result;
    v12 = a5 + (&v10[-*result] >> 2);
    if (v12 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = &__dst[-v11] >> 2;
    v45[4] = result + 24;
    if (v14)
    {
      v16 = mdm::zone_mallocator::instance(result);
      v17 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned int>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v15];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v6;
      v6 += 4;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v14];
    memcpy(&v34[4 * a5], __dst, *(v8 + 1) - __dst);
    v39 = *v8;
    v40 = &v34[4 * a5 + *(v8 + 1) - __dst];
    *(v8 + 1) = __dst;
    v41 = (__dst - v39);
    v42 = &v34[-(__dst - v39)];
    memcpy(v42, v39, v41);
    v43 = *v8;
    *v8 = v42;
    *(v8 + 1) = v40;
    v44 = *(v8 + 2);
    *(v8 + 2) = v38;
    v45[2] = v43;
    v45[3] = v44;
    v45[0] = v43;
    v45[1] = v43;
    return std::__split_buffer<unsigned int,geo::allocator_adapter<unsigned int,mdm::zone_mallocator> &>::~__split_buffer(v45);
  }

  v18 = v10 - __dst;
  v19 = (v10 - __dst) >> 2;
  if (v19 >= a5)
  {
    v30 = &__dst[4 * a5];
    v31 = &v10[-4 * a5];
    v32 = *(result + 1);
    while (v31 < v10)
    {
      v33 = *v31;
      v31 += 4;
      *v32++ = v33;
    }

    *(result + 1) = v32;
    if (v10 != v30)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v30);
    }

    v29 = 4 * a5;
    v27 = __dst;
    v28 = v6;
    goto LABEL_29;
  }

  v21 = a4 - &__src[v18];
  if (a4 != &__src[v18])
  {
    result = memmove(*(result + 1), &__src[v18], a4 - &__src[v18]);
  }

  v22 = &v10[v21];
  *(v8 + 1) = &v10[v21];
  if (v19 >= 1)
  {
    v23 = &__dst[4 * a5];
    v24 = &v10[v21];
    if (&v22[-4 * a5] < v10)
    {
      v25 = &__dst[a4];
      v26 = &__dst[a4 + -4 * a5];
      do
      {
        *(v25 - v6) = *(v26 - v6);
        v26 += 4;
        v25 += 4;
      }

      while (v26 - v6 < v10);
      v24 = (v25 - v6);
    }

    *(v8 + 1) = v24;
    if (v22 != v23)
    {
      result = memmove(&__dst[4 * a5], __dst, v22 - v23);
    }

    if (v10 != __dst)
    {
      v27 = __dst;
      v28 = v6;
      v29 = v10 - __dst;
LABEL_29:

      return memmove(v27, v28, v29);
    }
  }

  return result;
}

char *md::TransitNodeLabelFeature::newIconPart(void *a1, uint64_t *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2[2];
  v5 = *(v4 + 296);
  if (!v5)
  {
    v6 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(a2[2], 0);
    v5 = *v6;
    *(v4 + 296) = *v6;
  }

  if (*(v5 + 88) == 6)
  {
    if ((*(*a1 + 64))(a1))
    {
      return 0;
    }

    v10 = mdm::zone_mallocator::instance(0);
    v7 = geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::allocate<unsigned char>(v10, 0x338uLL);
    v11 = *a2[8];
    v13 = a2[1];
    v12 = a2[2];
    v14 = *a2;
    md::ImageLabelPart::ImageLabelPart(v7);
    *v15 = &unk_1F29ED9B8;
    *(v7 + 636) = xmmword_1B33B0720;
    *(v15 + 652) = 1065353216;
    *(v15 + 656) = 0;
    *(v15 + 658) = 0;
    *(v15 + 659) = -1;
    *(v15 + 663) = -1;
    *(v15 + 664) = 0;
    *(v15 + 676) = 256;
    *(v15 + 678) = 1;
    *(v7 + 680) = xmmword_1B33B0720;
    *(v15 + 696) = 1065353216;
    *(v15 + 700) = 0;
    *(v15 + 702) = 0;
    *(v15 + 703) = -1;
    *(v15 + 707) = -1;
    *(v15 + 708) = 0;
    *(v15 + 720) = 256;
    *(v15 + 722) = 1;
    *(v15 + 792) = 0;
    *(v7 + 744) = 0u;
    v16 = v7 + 744;
    *(v7 + 728) = 0u;
    v17 = (v15 + 760);
    *(v15 + 776) = 0;
    *(v7 + 760) = 0u;
    *(v15 + 812) = *(v14 + 176);
    *(v15 + 816) = 1;
    if ((*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64)))
    {
      v18 = *(v13 + 1320);
      if (!v18 || !*v18)
      {
        if (!*(v12 + 37))
        {
          *(v12 + 37) = *md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
        }

        geo::GEOFeature_retain_ptr::GEOFeature_retain_ptr(&v32, v11);
        (*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64));
        operator new();
      }

      v19 = *((*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64)) + 32);
      if (v19)
      {
        (*(*v19 + 8))(&v32);
        v20 = v32;
      }

      else
      {
        v20 = 0uLL;
      }

      v32 = 0uLL;
      v21 = *(v7 + 94);
      *v16 = v20;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
        if (*(&v32 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*(&v32 + 1));
        }

        if (!*v16)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      if (v20)
      {
LABEL_34:
        v22 = (*(**(*(v14 + 168) + 64) + 16))(*(*(v14 + 168) + 64));
        md::LabelExternalObjectsModerator::registerIconForAsynchModeUpdates(v22, v16);
        atomic_store(1u, v7 + 819);
      }
    }

LABEL_35:
    v23 = *(v12 + 37);
    if (!v23)
    {
      v24 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
      v23 = *v24;
      *(v12 + 37) = *v24;
    }

    *(v7 + 143) = *(v23 + 28);
    (*(*v7 + 152))(v7);
    v25 = md::LabelStyle::monitorIconName(v12);
    std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>::operator=(v17, v25);
    v26 = *(v12 + 37);
    if (!v26)
    {
      v27 = md::LabelStyle::prepareStyleGroup<md::LabelIconStyleGroup>(v12, 0);
      v26 = *v27;
      *(v12 + 37) = *v27;
    }

    v7[800] = *(v26 + 92);
    *(v7 + 99) = *(v26 + 56);
    return v7;
  }

  if (*(a1 + 141) == 1)
  {
    memset(v31, 0, sizeof(v31));
    v33 = 0;
    *(&v32 + 1) = 0;
    *&v32 = &v32 + 8;
    v8 = a1[93];
    for (i = a1[94]; v8 != i; v8 += 12)
    {
      v29 = 0;
      v30 = 0;
      if (*v8)
      {
        operator new();
      }

      if (*(v8 + 6))
      {
        operator new();
      }
    }

    if (a1[105] != a1[106])
    {
      operator new();
    }

    std::__tree<unsigned int,std::less<unsigned int>,geo::allocator_adapter<unsigned int,mdm::zone_mallocator>>::destroy(*(&v32 + 1));
    *&v32 = v31;
    std::vector<std::shared_ptr<md::MuninRoadLabel>>::__destroy_vector::operator()[abi:nn200100](&v32);
  }

  return md::PointLabelFeature::newIconPart(a1, a2);
}